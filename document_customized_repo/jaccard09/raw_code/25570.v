module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_0_address1,oracle_activations_0_ce1,oracle_activations_0_we1,oracle_activations_0_d1,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_1_address1,oracle_activations_1_ce1,oracle_activations_1_we1,oracle_activations_1_d1,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,grp_fu_2842_p_din0,grp_fu_2842_p_din1,grp_fu_2842_p_opcode,grp_fu_2842_p_dout0,grp_fu_2842_p_ce,grp_fu_2846_p_din0,grp_fu_2846_p_din1,grp_fu_2846_p_opcode,grp_fu_2846_p_dout0,grp_fu_2846_p_ce,grp_fu_2850_p_din0,grp_fu_2850_p_din1,grp_fu_2850_p_opcode,grp_fu_2850_p_dout0,grp_fu_2850_p_ce,grp_fu_2854_p_din0,grp_fu_2854_p_din1,grp_fu_2854_p_opcode,grp_fu_2854_p_dout0,grp_fu_2854_p_ce,grp_fu_2858_p_din0,grp_fu_2858_p_din1,grp_fu_2858_p_opcode,grp_fu_2858_p_dout0,grp_fu_2858_p_ce,grp_fu_2862_p_din0,grp_fu_2862_p_din1,grp_fu_2862_p_opcode,grp_fu_2862_p_dout0,grp_fu_2862_p_ce,grp_fu_2866_p_din0,grp_fu_2866_p_din1,grp_fu_2866_p_opcode,grp_fu_2866_p_dout0,grp_fu_2866_p_ce,grp_fu_2870_p_din0,grp_fu_2870_p_din1,grp_fu_2870_p_opcode,grp_fu_2870_p_dout0,grp_fu_2870_p_ce,grp_fu_2894_p_din0,grp_fu_2894_p_din1,grp_fu_2894_p_dout0,grp_fu_2894_p_ce,grp_fu_2898_p_din0,grp_fu_2898_p_din1,grp_fu_2898_p_dout0,grp_fu_2898_p_ce,grp_fu_2902_p_din0,grp_fu_2902_p_din1,grp_fu_2902_p_dout0,grp_fu_2902_p_ce,grp_fu_2906_p_din0,grp_fu_2906_p_din1,grp_fu_2906_p_dout0,grp_fu_2906_p_ce,grp_fu_2910_p_din0,grp_fu_2910_p_din1,grp_fu_2910_p_dout0,grp_fu_2910_p_ce,grp_fu_2914_p_din0,grp_fu_2914_p_din1,grp_fu_2914_p_dout0,grp_fu_2914_p_ce,grp_fu_2918_p_din0,grp_fu_2918_p_din1,grp_fu_2918_p_dout0,grp_fu_2918_p_ce,grp_fu_2922_p_din0,grp_fu_2922_p_din1,grp_fu_2922_p_dout0,grp_fu_2922_p_ce,grp_fu_2926_p_din0,grp_fu_2926_p_din1,grp_fu_2926_p_dout0,grp_fu_2926_p_ce,grp_fu_2930_p_din0,grp_fu_2930_p_din1,grp_fu_2930_p_dout0,grp_fu_2930_p_ce,grp_fu_2934_p_din0,grp_fu_2934_p_din1,grp_fu_2934_p_dout0,grp_fu_2934_p_ce,grp_fu_2938_p_din0,grp_fu_2938_p_din1,grp_fu_2938_p_dout0,grp_fu_2938_p_ce,grp_fu_2942_p_din0,grp_fu_2942_p_din1,grp_fu_2942_p_dout0,grp_fu_2942_p_ce,grp_fu_2946_p_din0,grp_fu_2946_p_din1,grp_fu_2946_p_dout0,grp_fu_2946_p_ce,grp_fu_2950_p_din0,grp_fu_2950_p_din1,grp_fu_2950_p_dout0,grp_fu_2950_p_ce,grp_fu_2954_p_din0,grp_fu_2954_p_din1,grp_fu_2954_p_dout0,grp_fu_2954_p_ce,grp_fu_2958_p_din0,grp_fu_2958_p_din1,grp_fu_2958_p_dout0,grp_fu_2958_p_ce,grp_fu_2962_p_din0,grp_fu_2962_p_din1,grp_fu_2962_p_dout0,grp_fu_2962_p_ce,grp_fu_2966_p_din0,grp_fu_2966_p_din1,grp_fu_2966_p_dout0,grp_fu_2966_p_ce,grp_fu_2970_p_din0,grp_fu_2970_p_din1,grp_fu_2970_p_dout0,grp_fu_2970_p_ce,grp_fu_2974_p_din0,grp_fu_2974_p_din1,grp_fu_2974_p_dout0,grp_fu_2974_p_ce,grp_fu_2978_p_din0,grp_fu_2978_p_din1,grp_fu_2978_p_dout0,grp_fu_2978_p_ce,grp_fu_2982_p_din0,grp_fu_2982_p_din1,grp_fu_2982_p_dout0,grp_fu_2982_p_ce,grp_fu_2986_p_din0,grp_fu_2986_p_din1,grp_fu_2986_p_dout0,grp_fu_2986_p_ce,grp_fu_2990_p_din0,grp_fu_2990_p_din1,grp_fu_2990_p_dout0,grp_fu_2990_p_ce,grp_fu_2994_p_din0,grp_fu_2994_p_din1,grp_fu_2994_p_dout0,grp_fu_2994_p_ce,grp_fu_2998_p_din0,grp_fu_2998_p_din1,grp_fu_2998_p_dout0,grp_fu_2998_p_ce,grp_fu_3002_p_din0,grp_fu_3002_p_din1,grp_fu_3002_p_dout0,grp_fu_3002_p_ce,grp_fu_3006_p_din0,grp_fu_3006_p_din1,grp_fu_3006_p_dout0,grp_fu_3006_p_ce,grp_fu_3010_p_din0,grp_fu_3010_p_din1,grp_fu_3010_p_dout0,grp_fu_3010_p_ce); 
parameter    ap_ST_fsm_state1 = 72'd1;
parameter    ap_ST_fsm_state2 = 72'd2;
parameter    ap_ST_fsm_state3 = 72'd4;
parameter    ap_ST_fsm_state4 = 72'd8;
parameter    ap_ST_fsm_state5 = 72'd16;
parameter    ap_ST_fsm_state6 = 72'd32;
parameter    ap_ST_fsm_state7 = 72'd64;
parameter    ap_ST_fsm_state8 = 72'd128;
parameter    ap_ST_fsm_state9 = 72'd256;
parameter    ap_ST_fsm_state10 = 72'd512;
parameter    ap_ST_fsm_state11 = 72'd1024;
parameter    ap_ST_fsm_state12 = 72'd2048;
parameter    ap_ST_fsm_state13 = 72'd4096;
parameter    ap_ST_fsm_state14 = 72'd8192;
parameter    ap_ST_fsm_state15 = 72'd16384;
parameter    ap_ST_fsm_state16 = 72'd32768;
parameter    ap_ST_fsm_state17 = 72'd65536;
parameter    ap_ST_fsm_state18 = 72'd131072;
parameter    ap_ST_fsm_state19 = 72'd262144;
parameter    ap_ST_fsm_state20 = 72'd524288;
parameter    ap_ST_fsm_state21 = 72'd1048576;
parameter    ap_ST_fsm_state22 = 72'd2097152;
parameter    ap_ST_fsm_state23 = 72'd4194304;
parameter    ap_ST_fsm_state24 = 72'd8388608;
parameter    ap_ST_fsm_state25 = 72'd16777216;
parameter    ap_ST_fsm_state26 = 72'd33554432;
parameter    ap_ST_fsm_state27 = 72'd67108864;
parameter    ap_ST_fsm_state28 = 72'd134217728;
parameter    ap_ST_fsm_state29 = 72'd268435456;
parameter    ap_ST_fsm_state30 = 72'd536870912;
parameter    ap_ST_fsm_state31 = 72'd1073741824;
parameter    ap_ST_fsm_state32 = 72'd2147483648;
parameter    ap_ST_fsm_state33 = 72'd4294967296;
parameter    ap_ST_fsm_state34 = 72'd8589934592;
parameter    ap_ST_fsm_state35 = 72'd17179869184;
parameter    ap_ST_fsm_state36 = 72'd34359738368;
parameter    ap_ST_fsm_state37 = 72'd68719476736;
parameter    ap_ST_fsm_state38 = 72'd137438953472;
parameter    ap_ST_fsm_state39 = 72'd274877906944;
parameter    ap_ST_fsm_state40 = 72'd549755813888;
parameter    ap_ST_fsm_state41 = 72'd1099511627776;
parameter    ap_ST_fsm_state42 = 72'd2199023255552;
parameter    ap_ST_fsm_state43 = 72'd4398046511104;
parameter    ap_ST_fsm_state44 = 72'd8796093022208;
parameter    ap_ST_fsm_state45 = 72'd17592186044416;
parameter    ap_ST_fsm_state46 = 72'd35184372088832;
parameter    ap_ST_fsm_state47 = 72'd70368744177664;
parameter    ap_ST_fsm_state48 = 72'd140737488355328;
parameter    ap_ST_fsm_state49 = 72'd281474976710656;
parameter    ap_ST_fsm_state50 = 72'd562949953421312;
parameter    ap_ST_fsm_state51 = 72'd1125899906842624;
parameter    ap_ST_fsm_state52 = 72'd2251799813685248;
parameter    ap_ST_fsm_state53 = 72'd4503599627370496;
parameter    ap_ST_fsm_state54 = 72'd9007199254740992;
parameter    ap_ST_fsm_state55 = 72'd18014398509481984;
parameter    ap_ST_fsm_state56 = 72'd36028797018963968;
parameter    ap_ST_fsm_state57 = 72'd72057594037927936;
parameter    ap_ST_fsm_state58 = 72'd144115188075855872;
parameter    ap_ST_fsm_state59 = 72'd288230376151711744;
parameter    ap_ST_fsm_state60 = 72'd576460752303423488;
parameter    ap_ST_fsm_state61 = 72'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 72'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 72'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 72'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 72'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 72'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 72'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 72'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 72'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 72'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 72'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 72'd2361183241434822606848;
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
output  [4:0] oracle_activations_0_address1;
output   oracle_activations_0_ce1;
output   oracle_activations_0_we1;
output  [63:0] oracle_activations_0_d1;
output  [4:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [4:0] oracle_activations_1_address1;
output   oracle_activations_1_ce1;
output   oracle_activations_1_we1;
output  [63:0] oracle_activations_1_d1;
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
output  [0:0] grp_fu_2858_p_opcode;
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
output  [1:0] grp_fu_2870_p_opcode;
input  [63:0] grp_fu_2870_p_dout0;
output   grp_fu_2870_p_ce;
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
(* fsm_encoding = "none" *) reg   [71:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_3372;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state18;
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
reg   [63:0] reg_3376;
reg   [63:0] reg_3380;
reg   [63:0] reg_3384;
reg   [63:0] reg_3388;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state12;
reg   [63:0] reg_3392;
reg   [63:0] reg_3396;
reg   [63:0] reg_3400;
reg   [63:0] reg_3404;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state13;
reg   [63:0] reg_3408;
reg   [63:0] reg_3412;
reg   [63:0] reg_3416;
reg   [63:0] reg_3420;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state14;
reg   [63:0] reg_3424;
reg   [63:0] reg_3428;
reg   [63:0] reg_3432;
reg   [63:0] reg_3436;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state15;
reg   [63:0] reg_3440;
reg   [63:0] reg_3444;
reg   [63:0] reg_3448;
reg   [63:0] reg_3452;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state16;
reg   [63:0] reg_3456;
reg   [63:0] reg_3460;
reg   [63:0] reg_3464;
reg   [63:0] reg_3468;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state17;
reg   [63:0] reg_3472;
reg   [63:0] reg_3476;
reg   [63:0] reg_3480;
reg   [63:0] reg_3484;
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
reg   [63:0] reg_3491;
reg   [63:0] reg_3498;
reg   [63:0] reg_3505;
reg   [63:0] reg_3512;
wire    ap_CS_fsm_state50;
reg   [63:0] reg_3518;
reg   [63:0] reg_3524;
reg   [63:0] reg_3530;
reg   [63:0] reg_3536;
wire    ap_CS_fsm_state51;
reg   [63:0] reg_3542;
reg   [63:0] reg_3548;
reg   [63:0] reg_3554;
reg   [63:0] reg_3560;
wire    ap_CS_fsm_state52;
reg   [63:0] reg_3566;
reg   [63:0] reg_3572;
reg   [63:0] reg_3578;
reg   [63:0] reg_3584;
wire    ap_CS_fsm_state53;
reg   [63:0] reg_3590;
reg   [63:0] reg_3596;
reg   [63:0] reg_3602;
reg   [63:0] reg_3608;
wire    ap_CS_fsm_state54;
reg   [63:0] reg_3614;
reg   [63:0] reg_3620;
reg   [63:0] reg_3626;
reg   [63:0] reg_3632;
wire    ap_CS_fsm_state55;
reg   [63:0] reg_3638;
reg   [63:0] reg_3644;
reg   [63:0] reg_3650;
reg   [63:0] reg_3656;
wire    ap_CS_fsm_state56;
reg   [63:0] reg_3663;
reg   [63:0] reg_3670;
reg   [63:0] reg_3677;
reg   [63:0] reg_3684;
reg   [63:0] reg_3690;
reg   [63:0] reg_3696;
reg   [63:0] reg_3702;
reg   [63:0] reg_3708;
reg   [63:0] reg_3714;
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
reg   [63:0] reg_3822;
reg   [63:0] reg_3828;
reg   [63:0] reg_3834;
reg   [63:0] reg_3840;
reg   [63:0] reg_3846;
reg   [63:0] reg_3852;
reg   [63:0] reg_3858;
reg   [63:0] reg_3864;
reg   [63:0] reg_3870;
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
reg   [63:0] weights3_0_load_73_reg_5148;
wire    ap_CS_fsm_state9;
reg   [63:0] weights3_1_load_74_reg_5153;
reg   [63:0] weights3_0_load_76_reg_5158;
reg   [63:0] weights3_1_load_77_reg_5163;
reg   [63:0] weights3_0_load_79_reg_5188;
wire    ap_CS_fsm_state10;
reg   [63:0] weights3_1_load_80_reg_5193;
reg   [63:0] weights3_0_load_82_reg_5198;
reg   [63:0] weights3_1_load_83_reg_5203;
wire   [63:0] bitcast_ln85_fu_4036_p1;
wire   [63:0] bitcast_ln85_3_fu_4041_p1;
wire   [63:0] bitcast_ln85_6_fu_4046_p1;
wire   [63:0] bitcast_ln85_9_fu_4051_p1;
wire   [63:0] bitcast_ln85_12_fu_4056_p1;
wire   [63:0] bitcast_ln85_15_fu_4061_p1;
wire   [63:0] bitcast_ln85_18_fu_4066_p1;
wire   [63:0] bitcast_ln85_21_fu_4071_p1;
wire   [63:0] bitcast_ln85_24_fu_4076_p1;
wire   [63:0] bitcast_ln85_27_fu_4081_p1;
wire   [63:0] bitcast_ln85_30_fu_4086_p1;
wire   [63:0] bitcast_ln85_33_fu_4091_p1;
wire   [63:0] bitcast_ln85_36_fu_4096_p1;
wire   [63:0] bitcast_ln85_39_fu_4101_p1;
wire   [63:0] bitcast_ln85_42_fu_4106_p1;
wire   [63:0] bitcast_ln85_45_fu_4111_p1;
wire   [63:0] bitcast_ln85_48_fu_4116_p1;
wire   [63:0] bitcast_ln85_51_fu_4121_p1;
wire   [63:0] bitcast_ln85_54_fu_4126_p1;
wire   [63:0] bitcast_ln85_57_fu_4131_p1;
wire   [63:0] bitcast_ln85_60_fu_4136_p1;
wire   [63:0] bitcast_ln85_63_fu_4141_p1;
wire   [63:0] bitcast_ln85_66_fu_4146_p1;
wire   [63:0] bitcast_ln85_69_fu_4151_p1;
wire   [63:0] bitcast_ln85_72_fu_4156_p1;
wire   [63:0] bitcast_ln85_75_fu_4161_p1;
wire   [63:0] bitcast_ln85_78_fu_4166_p1;
wire   [63:0] bitcast_ln85_81_fu_4171_p1;
wire   [63:0] bitcast_ln85_84_fu_4176_p1;
wire   [63:0] bitcast_ln85_87_fu_4180_p1;
wire   [63:0] bitcast_ln85_90_fu_4184_p1;
wire   [63:0] bitcast_ln85_93_fu_4188_p1;
wire   [63:0] bitcast_ln85_96_fu_4192_p1;
wire   [63:0] bitcast_ln85_99_fu_4196_p1;
wire   [63:0] bitcast_ln85_102_fu_4200_p1;
wire   [63:0] bitcast_ln85_105_fu_4204_p1;
wire   [63:0] bitcast_ln85_108_fu_4208_p1;
wire   [63:0] bitcast_ln85_111_fu_4213_p1;
wire   [63:0] bitcast_ln85_114_fu_4218_p1;
wire   [63:0] bitcast_ln85_117_fu_4223_p1;
wire   [63:0] bitcast_ln85_120_fu_4228_p1;
wire   [63:0] bitcast_ln85_123_fu_4233_p1;
wire   [63:0] bitcast_ln85_126_fu_4238_p1;
wire   [63:0] bitcast_ln85_129_fu_4243_p1;
wire   [63:0] bitcast_ln85_132_fu_4248_p1;
wire   [63:0] bitcast_ln85_135_fu_4253_p1;
wire   [63:0] bitcast_ln85_138_fu_4258_p1;
wire   [63:0] bitcast_ln85_141_fu_4263_p1;
wire   [63:0] bitcast_ln85_144_fu_4268_p1;
wire   [63:0] bitcast_ln85_147_fu_4273_p1;
wire   [63:0] bitcast_ln85_150_fu_4278_p1;
wire   [63:0] bitcast_ln85_153_fu_4283_p1;
wire   [63:0] bitcast_ln85_156_fu_4288_p1;
wire   [63:0] bitcast_ln85_159_fu_4293_p1;
wire   [63:0] bitcast_ln85_162_fu_4298_p1;
wire   [63:0] bitcast_ln85_165_fu_4303_p1;
wire   [63:0] bitcast_ln85_168_fu_4308_p1;
wire   [63:0] bitcast_ln85_171_fu_4313_p1;
wire   [63:0] bitcast_ln85_1_fu_4348_p1;
wire   [63:0] bitcast_ln85_4_fu_4353_p1;
wire   [63:0] bitcast_ln85_7_fu_4358_p1;
wire   [63:0] bitcast_ln85_10_fu_4363_p1;
wire   [63:0] bitcast_ln85_13_fu_4368_p1;
wire   [63:0] bitcast_ln85_16_fu_4373_p1;
wire   [63:0] bitcast_ln85_19_fu_4378_p1;
wire   [63:0] bitcast_ln85_22_fu_4383_p1;
wire   [63:0] bitcast_ln85_25_fu_4388_p1;
wire   [63:0] bitcast_ln85_28_fu_4393_p1;
wire   [63:0] bitcast_ln85_31_fu_4398_p1;
wire   [63:0] bitcast_ln85_34_fu_4403_p1;
wire   [63:0] bitcast_ln85_37_fu_4408_p1;
wire   [63:0] bitcast_ln85_40_fu_4413_p1;
wire   [63:0] bitcast_ln85_43_fu_4418_p1;
wire   [63:0] bitcast_ln85_46_fu_4423_p1;
wire   [63:0] bitcast_ln85_49_fu_4428_p1;
wire   [63:0] bitcast_ln85_52_fu_4433_p1;
wire   [63:0] bitcast_ln85_55_fu_4438_p1;
wire   [63:0] bitcast_ln85_58_fu_4443_p1;
wire   [63:0] bitcast_ln85_61_fu_4448_p1;
wire   [63:0] bitcast_ln85_64_fu_4453_p1;
wire   [63:0] bitcast_ln85_67_fu_4458_p1;
wire   [63:0] bitcast_ln85_70_fu_4463_p1;
reg   [63:0] mul8_36_reg_5996;
reg   [63:0] mul8_37_reg_6001;
reg   [63:0] mul8_38_reg_6006;
reg   [63:0] mul8_39_reg_6011;
reg   [63:0] mul8_40_reg_6016;
reg   [63:0] mul8_41_reg_6021;
reg   [63:0] mul8_42_reg_6026;
reg   [63:0] mul8_43_reg_6031;
reg   [63:0] mul8_44_reg_6036;
reg   [63:0] mul8_45_reg_6041;
reg   [63:0] mul8_46_reg_6046;
reg   [63:0] mul8_47_reg_6051;
reg   [63:0] mul8_48_reg_6056;
reg   [63:0] mul8_49_reg_6061;
reg   [63:0] mul8_50_reg_6066;
reg   [63:0] mul8_51_reg_6071;
reg   [63:0] mul8_52_reg_6076;
reg   [63:0] mul8_53_reg_6081;
reg   [63:0] mul8_54_reg_6086;
reg   [63:0] mul8_55_reg_6091;
reg   [63:0] mul8_56_reg_6096;
reg   [63:0] mul8_57_reg_6101;
wire   [63:0] grp_fu_3340_p2;
reg   [63:0] mul8_58_reg_6106;
wire   [63:0] grp_fu_3344_p2;
reg   [63:0] mul8_59_reg_6111;
wire   [63:0] grp_fu_3348_p2;
reg   [63:0] mul8_60_reg_6116;
wire   [63:0] grp_fu_3352_p2;
reg   [63:0] mul8_61_reg_6121;
wire   [63:0] grp_fu_3356_p2;
reg   [63:0] mul8_62_reg_6126;
wire   [63:0] grp_fu_3360_p2;
reg   [63:0] mul8_63_reg_6131;
wire   [63:0] bitcast_ln85_73_fu_4468_p1;
wire   [63:0] bitcast_ln85_76_fu_4473_p1;
wire   [63:0] bitcast_ln85_79_fu_4478_p1;
wire   [63:0] bitcast_ln85_82_fu_4483_p1;
wire   [63:0] bitcast_ln85_85_fu_4488_p1;
wire   [63:0] bitcast_ln85_88_fu_4493_p1;
wire   [63:0] bitcast_ln85_91_fu_4498_p1;
wire   [63:0] bitcast_ln85_94_fu_4503_p1;
wire   [63:0] bitcast_ln85_97_fu_4508_p1;
wire   [63:0] bitcast_ln85_100_fu_4513_p1;
wire   [63:0] bitcast_ln85_103_fu_4518_p1;
wire   [63:0] bitcast_ln85_106_fu_4523_p1;
wire   [63:0] bitcast_ln85_109_fu_4528_p1;
wire   [63:0] bitcast_ln85_112_fu_4533_p1;
wire   [63:0] bitcast_ln85_115_fu_4538_p1;
wire   [63:0] bitcast_ln85_118_fu_4543_p1;
wire   [63:0] bitcast_ln85_121_fu_4548_p1;
wire   [63:0] bitcast_ln85_124_fu_4553_p1;
wire   [63:0] bitcast_ln85_127_fu_4558_p1;
wire   [63:0] bitcast_ln85_130_fu_4563_p1;
wire   [63:0] bitcast_ln85_133_fu_4568_p1;
wire   [63:0] bitcast_ln85_136_fu_4573_p1;
wire   [63:0] bitcast_ln85_139_fu_4578_p1;
wire   [63:0] bitcast_ln85_142_fu_4583_p1;
wire   [63:0] bitcast_ln85_145_fu_4588_p1;
wire   [63:0] bitcast_ln85_148_fu_4593_p1;
wire   [63:0] bitcast_ln85_151_fu_4598_p1;
wire   [63:0] bitcast_ln85_154_fu_4603_p1;
reg   [63:0] add11_36_reg_6416;
reg   [63:0] add11_38_reg_6421;
wire   [63:0] bitcast_ln85_157_fu_4608_p1;
wire   [63:0] bitcast_ln85_160_fu_4613_p1;
wire   [63:0] bitcast_ln85_163_fu_4618_p1;
wire   [63:0] bitcast_ln85_166_fu_4623_p1;
reg   [63:0] add11_32_reg_6486;
reg   [63:0] add11_33_reg_6491;
reg   [63:0] add11_34_reg_6496;
reg   [63:0] add11_35_reg_6501;
wire   [63:0] bitcast_ln85_169_fu_4628_p1;
wire   [63:0] bitcast_ln85_172_fu_4633_p1;
wire   [63:0] bitcast_ln85_175_fu_4638_p1;
wire   [63:0] bitcast_ln85_178_fu_4643_p1;
reg   [63:0] add11_37_reg_6546;
reg   [63:0] add11_39_reg_6551;
wire   [63:0] bitcast_ln85_181_fu_4648_p1;
wire   [63:0] bitcast_ln85_184_fu_4653_p1;
wire   [63:0] bitcast_ln85_187_fu_4658_p1;
wire   [63:0] bitcast_ln85_190_fu_4663_p1;
wire   [63:0] bitcast_ln85_2_fu_4668_p1;
wire   [63:0] bitcast_ln85_5_fu_4673_p1;
wire   [63:0] bitcast_ln85_8_fu_4678_p1;
wire   [63:0] bitcast_ln85_11_fu_4683_p1;
reg   [63:0] add11_40_reg_6628;
reg   [63:0] add11_41_reg_6633;
reg   [63:0] add11_42_reg_6638;
reg   [63:0] add11_43_reg_6643;
wire   [63:0] bitcast_ln85_14_fu_4688_p1;
wire   [63:0] bitcast_ln85_17_fu_4693_p1;
wire   [63:0] bitcast_ln85_20_fu_4698_p1;
wire   [63:0] bitcast_ln85_23_fu_4703_p1;
reg   [63:0] add11_44_reg_6688;
reg   [63:0] add11_45_reg_6693;
reg   [63:0] add11_46_reg_6698;
reg   [63:0] add11_47_reg_6703;
wire   [63:0] bitcast_ln85_26_fu_4708_p1;
wire   [63:0] bitcast_ln85_29_fu_4713_p1;
wire   [63:0] bitcast_ln85_32_fu_4718_p1;
wire   [63:0] bitcast_ln85_35_fu_4723_p1;
reg   [63:0] add11_48_reg_6748;
reg   [63:0] add11_49_reg_6753;
reg   [63:0] add11_50_reg_6758;
reg   [63:0] add11_51_reg_6763;
wire   [63:0] bitcast_ln85_38_fu_4728_p1;
wire   [63:0] bitcast_ln85_41_fu_4733_p1;
wire   [63:0] bitcast_ln85_44_fu_4738_p1;
wire   [63:0] bitcast_ln85_47_fu_4743_p1;
reg   [63:0] add11_52_reg_6808;
reg   [63:0] add11_53_reg_6813;
reg   [63:0] add11_54_reg_6818;
reg   [63:0] add11_55_reg_6823;
wire   [63:0] bitcast_ln85_50_fu_4748_p1;
wire   [63:0] bitcast_ln85_53_fu_4753_p1;
wire   [63:0] bitcast_ln85_56_fu_4758_p1;
wire   [63:0] bitcast_ln85_59_fu_4763_p1;
reg   [63:0] add11_56_reg_6868;
reg   [63:0] add11_57_reg_6873;
reg   [63:0] add11_58_reg_6878;
reg   [63:0] add11_59_reg_6883;
wire   [63:0] bitcast_ln85_62_fu_4768_p1;
wire   [63:0] bitcast_ln85_65_fu_4773_p1;
wire   [63:0] bitcast_ln85_68_fu_4778_p1;
wire   [63:0] bitcast_ln85_71_fu_4783_p1;
reg   [63:0] add11_60_reg_6928;
reg   [63:0] add11_61_reg_6933;
reg   [63:0] add11_62_reg_6938;
reg   [63:0] add11_63_reg_6943;
wire   [63:0] bitcast_ln85_74_fu_4788_p1;
wire   [63:0] bitcast_ln85_77_fu_4793_p1;
wire   [63:0] bitcast_ln85_80_fu_4798_p1;
wire   [63:0] bitcast_ln85_83_fu_4803_p1;
reg   [63:0] add11_32_1_reg_6968;
reg   [63:0] add11_33_1_reg_6978;
reg   [63:0] add11_34_1_reg_6988;
reg   [63:0] add11_35_1_reg_6998;
wire   [63:0] bitcast_ln85_86_fu_4808_p1;
wire   [63:0] bitcast_ln85_89_fu_4813_p1;
wire   [63:0] bitcast_ln85_92_fu_4818_p1;
wire   [63:0] bitcast_ln85_95_fu_4823_p1;
reg   [63:0] add11_36_1_reg_7028;
reg   [63:0] add11_37_1_reg_7038;
reg   [63:0] add11_38_1_reg_7048;
reg   [63:0] add11_39_1_reg_7058;
wire   [63:0] bitcast_ln85_98_fu_4828_p1;
wire   [63:0] bitcast_ln85_101_fu_4833_p1;
wire   [63:0] bitcast_ln85_104_fu_4838_p1;
wire   [63:0] bitcast_ln85_107_fu_4843_p1;
reg   [63:0] add11_40_1_reg_7088;
reg   [63:0] add11_41_1_reg_7098;
reg   [63:0] add11_42_1_reg_7108;
reg   [63:0] add11_43_1_reg_7118;
wire   [63:0] bitcast_ln85_110_fu_4848_p1;
wire   [63:0] bitcast_ln85_113_fu_4853_p1;
wire   [63:0] bitcast_ln85_116_fu_4858_p1;
wire   [63:0] bitcast_ln85_119_fu_4863_p1;
reg   [63:0] add11_44_1_reg_7148;
reg   [63:0] add11_45_1_reg_7158;
reg   [63:0] add11_46_1_reg_7168;
reg   [63:0] add11_47_1_reg_7178;
wire   [63:0] bitcast_ln85_122_fu_4868_p1;
wire   [63:0] bitcast_ln85_125_fu_4873_p1;
wire   [63:0] bitcast_ln85_128_fu_4878_p1;
wire   [63:0] bitcast_ln85_131_fu_4883_p1;
reg   [63:0] add11_48_1_reg_7208;
reg   [63:0] add11_49_1_reg_7218;
reg   [63:0] add11_50_1_reg_7228;
reg   [63:0] add11_51_1_reg_7238;
wire   [63:0] bitcast_ln85_134_fu_4888_p1;
wire   [63:0] bitcast_ln85_137_fu_4893_p1;
wire   [63:0] bitcast_ln85_140_fu_4898_p1;
wire   [63:0] bitcast_ln85_143_fu_4903_p1;
reg   [63:0] add11_52_1_reg_7268;
reg   [63:0] add11_53_1_reg_7278;
reg   [63:0] add11_54_1_reg_7288;
reg   [63:0] add11_55_1_reg_7298;
wire   [63:0] bitcast_ln85_146_fu_4908_p1;
wire   [63:0] bitcast_ln85_149_fu_4913_p1;
wire   [63:0] bitcast_ln85_152_fu_4918_p1;
wire   [63:0] bitcast_ln85_155_fu_4923_p1;
reg   [63:0] add11_56_1_reg_7328;
reg   [63:0] add11_57_1_reg_7338;
reg   [63:0] add11_58_1_reg_7348;
reg   [63:0] add11_59_1_reg_7358;
wire   [63:0] bitcast_ln85_158_fu_4928_p1;
wire   [63:0] bitcast_ln85_161_fu_4933_p1;
wire   [63:0] bitcast_ln85_164_fu_4938_p1;
wire   [63:0] bitcast_ln85_167_fu_4943_p1;
reg   [63:0] add11_60_1_reg_7408;
reg   [63:0] add11_61_1_reg_7418;
reg   [63:0] add11_62_1_reg_7428;
reg   [63:0] add11_63_1_reg_7438;
wire   [63:0] bitcast_ln85_170_fu_4948_p1;
wire   [63:0] bitcast_ln85_173_fu_4953_p1;
wire   [63:0] bitcast_ln85_176_fu_4958_p1;
wire   [63:0] bitcast_ln85_179_fu_4963_p1;
wire   [63:0] bitcast_ln85_182_fu_4968_p1;
wire   [63:0] bitcast_ln85_185_fu_4973_p1;
wire   [63:0] bitcast_ln85_188_fu_4978_p1;
wire   [63:0] bitcast_ln85_191_fu_4983_p1;
wire    ap_CS_fsm_state72;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    dactivations_0_ce1_local;
reg   [4:0] dactivations_0_address1_local;
reg    dactivations_0_ce0_local;
reg   [4:0] dactivations_0_address0_local;
reg    dactivations_1_ce1_local;
reg   [4:0] dactivations_1_address1_local;
reg    dactivations_1_ce0_local;
reg   [4:0] dactivations_1_address0_local;
reg    oracle_activations_0_we1_local;
reg   [63:0] oracle_activations_0_d1_local;
reg    oracle_activations_0_ce1_local;
reg   [4:0] oracle_activations_0_address1_local;
reg    oracle_activations_0_we0_local;
reg   [63:0] oracle_activations_0_d0_local;
reg    oracle_activations_0_ce0_local;
reg   [4:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we1_local;
reg   [63:0] oracle_activations_1_d1_local;
reg    oracle_activations_1_ce1_local;
reg   [4:0] oracle_activations_1_address1_local;
reg    oracle_activations_1_we0_local;
reg   [63:0] oracle_activations_1_d0_local;
reg    oracle_activations_1_ce0_local;
reg   [4:0] oracle_activations_1_address0_local;
reg   [63:0] grp_fu_3176_p0;
reg   [63:0] grp_fu_3176_p1;
reg   [63:0] grp_fu_3181_p0;
reg   [63:0] grp_fu_3181_p1;
reg   [63:0] grp_fu_3186_p0;
reg   [63:0] grp_fu_3186_p1;
reg   [63:0] grp_fu_3191_p0;
reg   [63:0] grp_fu_3191_p1;
reg   [63:0] grp_fu_3196_p0;
reg   [63:0] grp_fu_3201_p0;
reg   [63:0] grp_fu_3206_p0;
reg   [63:0] grp_fu_3211_p0;
reg   [63:0] grp_fu_3216_p0;
reg   [63:0] grp_fu_3216_p1;
reg   [63:0] grp_fu_3221_p0;
reg   [63:0] grp_fu_3221_p1;
reg   [63:0] grp_fu_3226_p0;
reg   [63:0] grp_fu_3226_p1;
reg   [63:0] grp_fu_3231_p0;
reg   [63:0] grp_fu_3231_p1;
reg   [63:0] grp_fu_3236_p0;
reg   [63:0] grp_fu_3236_p1;
reg   [63:0] grp_fu_3240_p0;
reg   [63:0] grp_fu_3240_p1;
reg   [63:0] grp_fu_3244_p0;
reg   [63:0] grp_fu_3244_p1;
reg   [63:0] grp_fu_3248_p0;
reg   [63:0] grp_fu_3248_p1;
wire   [63:0] grp_fu_3340_p0;
wire   [63:0] grp_fu_3344_p0;
wire   [63:0] grp_fu_3348_p0;
wire   [63:0] grp_fu_3352_p0;
wire   [63:0] grp_fu_3356_p0;
wire   [63:0] grp_fu_3360_p0;
reg   [71:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 72'd1;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3340_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3340_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U384(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3344_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3344_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U385(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3348_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3348_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U386(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3352_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3352_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U387(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3356_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3356_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U388(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3360_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3360_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        add11_32_1_reg_6968 <= grp_fu_2842_p_dout0;
        add11_33_1_reg_6978 <= grp_fu_2846_p_dout0;
        add11_34_1_reg_6988 <= grp_fu_2850_p_dout0;
        add11_35_1_reg_6998 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        add11_32_reg_6486 <= grp_fu_2858_p_dout0;
        add11_33_reg_6491 <= grp_fu_2862_p_dout0;
        add11_34_reg_6496 <= grp_fu_2866_p_dout0;
        add11_35_reg_6501 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        add11_36_1_reg_7028 <= grp_fu_2842_p_dout0;
        add11_37_1_reg_7038 <= grp_fu_2846_p_dout0;
        add11_38_1_reg_7048 <= grp_fu_2850_p_dout0;
        add11_39_1_reg_7058 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        add11_36_reg_6416 <= grp_fu_2858_p_dout0;
        add11_38_reg_6421 <= grp_fu_2862_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        add11_37_reg_6546 <= grp_fu_2858_p_dout0;
        add11_39_reg_6551 <= grp_fu_2862_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        add11_40_1_reg_7088 <= grp_fu_2842_p_dout0;
        add11_41_1_reg_7098 <= grp_fu_2846_p_dout0;
        add11_42_1_reg_7108 <= grp_fu_2850_p_dout0;
        add11_43_1_reg_7118 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        add11_40_reg_6628 <= grp_fu_2858_p_dout0;
        add11_41_reg_6633 <= grp_fu_2862_p_dout0;
        add11_42_reg_6638 <= grp_fu_2866_p_dout0;
        add11_43_reg_6643 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        add11_44_1_reg_7148 <= grp_fu_2842_p_dout0;
        add11_45_1_reg_7158 <= grp_fu_2846_p_dout0;
        add11_46_1_reg_7168 <= grp_fu_2850_p_dout0;
        add11_47_1_reg_7178 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        add11_44_reg_6688 <= grp_fu_2858_p_dout0;
        add11_45_reg_6693 <= grp_fu_2862_p_dout0;
        add11_46_reg_6698 <= grp_fu_2866_p_dout0;
        add11_47_reg_6703 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        add11_48_1_reg_7208 <= grp_fu_2842_p_dout0;
        add11_49_1_reg_7218 <= grp_fu_2846_p_dout0;
        add11_50_1_reg_7228 <= grp_fu_2850_p_dout0;
        add11_51_1_reg_7238 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        add11_48_reg_6748 <= grp_fu_2858_p_dout0;
        add11_49_reg_6753 <= grp_fu_2862_p_dout0;
        add11_50_reg_6758 <= grp_fu_2866_p_dout0;
        add11_51_reg_6763 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        add11_52_1_reg_7268 <= grp_fu_2842_p_dout0;
        add11_53_1_reg_7278 <= grp_fu_2846_p_dout0;
        add11_54_1_reg_7288 <= grp_fu_2850_p_dout0;
        add11_55_1_reg_7298 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        add11_52_reg_6808 <= grp_fu_2858_p_dout0;
        add11_53_reg_6813 <= grp_fu_2862_p_dout0;
        add11_54_reg_6818 <= grp_fu_2866_p_dout0;
        add11_55_reg_6823 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        add11_56_1_reg_7328 <= grp_fu_2842_p_dout0;
        add11_57_1_reg_7338 <= grp_fu_2846_p_dout0;
        add11_58_1_reg_7348 <= grp_fu_2850_p_dout0;
        add11_59_1_reg_7358 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        add11_56_reg_6868 <= grp_fu_2858_p_dout0;
        add11_57_reg_6873 <= grp_fu_2862_p_dout0;
        add11_58_reg_6878 <= grp_fu_2866_p_dout0;
        add11_59_reg_6883 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        add11_60_1_reg_7408 <= grp_fu_2842_p_dout0;
        add11_61_1_reg_7418 <= grp_fu_2846_p_dout0;
        add11_62_1_reg_7428 <= grp_fu_2850_p_dout0;
        add11_63_1_reg_7438 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        add11_60_reg_6928 <= grp_fu_2858_p_dout0;
        add11_61_reg_6933 <= grp_fu_2862_p_dout0;
        add11_62_reg_6938 <= grp_fu_2866_p_dout0;
        add11_63_reg_6943 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul8_36_reg_5996 <= grp_fu_2926_p_dout0;
        mul8_37_reg_6001 <= grp_fu_2930_p_dout0;
        mul8_38_reg_6006 <= grp_fu_2934_p_dout0;
        mul8_39_reg_6011 <= grp_fu_2938_p_dout0;
        mul8_40_reg_6016 <= grp_fu_2942_p_dout0;
        mul8_41_reg_6021 <= grp_fu_2946_p_dout0;
        mul8_42_reg_6026 <= grp_fu_2950_p_dout0;
        mul8_43_reg_6031 <= grp_fu_2954_p_dout0;
        mul8_44_reg_6036 <= grp_fu_2958_p_dout0;
        mul8_45_reg_6041 <= grp_fu_2962_p_dout0;
        mul8_46_reg_6046 <= grp_fu_2966_p_dout0;
        mul8_47_reg_6051 <= grp_fu_2970_p_dout0;
        mul8_48_reg_6056 <= grp_fu_2974_p_dout0;
        mul8_49_reg_6061 <= grp_fu_2978_p_dout0;
        mul8_50_reg_6066 <= grp_fu_2982_p_dout0;
        mul8_51_reg_6071 <= grp_fu_2986_p_dout0;
        mul8_52_reg_6076 <= grp_fu_2990_p_dout0;
        mul8_53_reg_6081 <= grp_fu_2994_p_dout0;
        mul8_54_reg_6086 <= grp_fu_2998_p_dout0;
        mul8_55_reg_6091 <= grp_fu_3002_p_dout0;
        mul8_56_reg_6096 <= grp_fu_3006_p_dout0;
        mul8_57_reg_6101 <= grp_fu_3010_p_dout0;
        mul8_58_reg_6106 <= grp_fu_3340_p2;
        mul8_59_reg_6111 <= grp_fu_3344_p2;
        mul8_60_reg_6116 <= grp_fu_3348_p2;
        mul8_61_reg_6121 <= grp_fu_3352_p2;
        mul8_62_reg_6126 <= grp_fu_3356_p2;
        mul8_63_reg_6131 <= grp_fu_3360_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_3372 <= weights3_0_q1;
        reg_3376 <= weights3_1_q1;
        reg_3380 <= weights3_0_q0;
        reg_3384 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_3388 <= weights3_0_q1;
        reg_3392 <= weights3_1_q1;
        reg_3396 <= weights3_0_q0;
        reg_3400 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_3404 <= weights3_0_q1;
        reg_3408 <= weights3_1_q1;
        reg_3412 <= weights3_0_q0;
        reg_3416 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_3420 <= weights3_0_q1;
        reg_3424 <= weights3_1_q1;
        reg_3428 <= weights3_0_q0;
        reg_3432 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_3436 <= weights3_0_q1;
        reg_3440 <= weights3_1_q1;
        reg_3444 <= weights3_0_q0;
        reg_3448 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_3452 <= weights3_0_q1;
        reg_3456 <= weights3_1_q1;
        reg_3460 <= weights3_0_q0;
        reg_3464 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_3468 <= weights3_0_q1;
        reg_3472 <= weights3_1_q1;
        reg_3476 <= weights3_0_q0;
        reg_3480 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3484 <= grp_fu_2894_p_dout0;
        reg_3491 <= grp_fu_2898_p_dout0;
        reg_3498 <= grp_fu_2902_p_dout0;
        reg_3505 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_3512 <= grp_fu_2894_p_dout0;
        reg_3518 <= grp_fu_2898_p_dout0;
        reg_3524 <= grp_fu_2902_p_dout0;
        reg_3530 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_3536 <= grp_fu_2894_p_dout0;
        reg_3542 <= grp_fu_2898_p_dout0;
        reg_3548 <= grp_fu_2902_p_dout0;
        reg_3554 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_3560 <= grp_fu_2894_p_dout0;
        reg_3566 <= grp_fu_2898_p_dout0;
        reg_3572 <= grp_fu_2902_p_dout0;
        reg_3578 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        reg_3584 <= grp_fu_2894_p_dout0;
        reg_3590 <= grp_fu_2898_p_dout0;
        reg_3596 <= grp_fu_2902_p_dout0;
        reg_3602 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_3608 <= grp_fu_2894_p_dout0;
        reg_3614 <= grp_fu_2898_p_dout0;
        reg_3620 <= grp_fu_2902_p_dout0;
        reg_3626 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_3632 <= grp_fu_2894_p_dout0;
        reg_3638 <= grp_fu_2898_p_dout0;
        reg_3644 <= grp_fu_2902_p_dout0;
        reg_3650 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_3656 <= grp_fu_2894_p_dout0;
        reg_3663 <= grp_fu_2898_p_dout0;
        reg_3670 <= grp_fu_2902_p_dout0;
        reg_3677 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_3684 <= grp_fu_2910_p_dout0;
        reg_3690 <= grp_fu_2914_p_dout0;
        reg_3696 <= grp_fu_2918_p_dout0;
        reg_3702 <= grp_fu_2922_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3708 <= grp_fu_2842_p_dout0;
        reg_3714 <= grp_fu_2846_p_dout0;
        reg_3720 <= grp_fu_2850_p_dout0;
        reg_3726 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3732 <= grp_fu_2842_p_dout0;
        reg_3738 <= grp_fu_2846_p_dout0;
        reg_3744 <= grp_fu_2850_p_dout0;
        reg_3750 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        reg_3756 <= grp_fu_2842_p_dout0;
        reg_3762 <= grp_fu_2846_p_dout0;
        reg_3768 <= grp_fu_2850_p_dout0;
        reg_3774 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        reg_3780 <= grp_fu_2842_p_dout0;
        reg_3786 <= grp_fu_2846_p_dout0;
        reg_3792 <= grp_fu_2850_p_dout0;
        reg_3798 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        reg_3804 <= grp_fu_2842_p_dout0;
        reg_3810 <= grp_fu_2846_p_dout0;
        reg_3816 <= grp_fu_2850_p_dout0;
        reg_3822 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        reg_3828 <= grp_fu_2842_p_dout0;
        reg_3834 <= grp_fu_2846_p_dout0;
        reg_3840 <= grp_fu_2850_p_dout0;
        reg_3846 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        reg_3852 <= grp_fu_2842_p_dout0;
        reg_3858 <= grp_fu_2846_p_dout0;
        reg_3864 <= grp_fu_2850_p_dout0;
        reg_3870 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        reg_3876 <= grp_fu_2842_p_dout0;
        reg_3881 <= grp_fu_2846_p_dout0;
        reg_3886 <= grp_fu_2850_p_dout0;
        reg_3891 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state49))) begin
        reg_3896 <= dactivations_0_q1;
        reg_3901 <= dactivations_1_q1;
        reg_3906 <= dactivations_0_q0;
        reg_3911 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        reg_3916 <= dactivations_0_q1;
        reg_3921 <= dactivations_1_q1;
        reg_3926 <= dactivations_0_q0;
        reg_3931 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state58))) begin
        reg_3936 <= dactivations_0_q1;
        reg_3941 <= dactivations_1_q1;
        reg_3946 <= dactivations_0_q0;
        reg_3951 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        reg_3956 <= dactivations_0_q1;
        reg_3961 <= dactivations_1_q1;
        reg_3966 <= dactivations_0_q0;
        reg_3971 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        reg_3976 <= dactivations_0_q1;
        reg_3981 <= dactivations_1_q1;
        reg_3986 <= dactivations_0_q0;
        reg_3991 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        reg_3996 <= dactivations_0_q1;
        reg_4001 <= dactivations_1_q1;
        reg_4006 <= dactivations_0_q0;
        reg_4011 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        reg_4016 <= dactivations_0_q1;
        reg_4021 <= dactivations_1_q1;
        reg_4026 <= dactivations_0_q0;
        reg_4031 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_load_73_reg_5148 <= weights3_0_q1;
        weights3_0_load_76_reg_5158 <= weights3_0_q0;
        weights3_1_load_74_reg_5153 <= weights3_1_q1;
        weights3_1_load_77_reg_5163 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_load_79_reg_5188 <= weights3_0_q1;
        weights3_0_load_82_reg_5198 <= weights3_0_q0;
        weights3_1_load_80_reg_5193 <= weights3_1_q1;
        weights3_1_load_83_reg_5203 <= weights3_1_q0;
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
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state72) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state72)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        dactivations_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        dactivations_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        dactivations_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        dactivations_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        dactivations_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        dactivations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        dactivations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        dactivations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        dactivations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        dactivations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        dactivations_0_address0_local = 64'd1;
    end else begin
        dactivations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        dactivations_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        dactivations_0_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        dactivations_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        dactivations_0_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        dactivations_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations_0_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        dactivations_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        dactivations_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        dactivations_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        dactivations_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        dactivations_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        dactivations_0_address1_local = 64'd0;
    end else begin
        dactivations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        dactivations_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        dactivations_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        dactivations_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        dactivations_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        dactivations_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        dactivations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        dactivations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        dactivations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        dactivations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        dactivations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        dactivations_1_address0_local = 64'd1;
    end else begin
        dactivations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        dactivations_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        dactivations_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        dactivations_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        dactivations_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        dactivations_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        dactivations_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        dactivations_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        dactivations_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        dactivations_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        dactivations_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        dactivations_1_address1_local = 64'd0;
    end else begin
        dactivations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3176_p0 = add11_60_1_reg_7408;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3176_p0 = add11_56_1_reg_7328;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3176_p0 = add11_52_1_reg_7268;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3176_p0 = add11_48_1_reg_7208;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3176_p0 = add11_44_1_reg_7148;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3176_p0 = add11_40_1_reg_7088;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3176_p0 = add11_36_1_reg_7028;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3176_p0 = add11_32_1_reg_6968;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3176_p0 = add11_60_reg_6928;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3176_p0 = add11_56_reg_6868;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3176_p0 = add11_52_reg_6808;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3176_p0 = add11_48_reg_6748;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3176_p0 = add11_44_reg_6688;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3176_p0 = add11_40_reg_6628;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3176_p0 = add11_36_reg_6416;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3176_p0 = add11_32_reg_6486;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3176_p0 = reg_3876;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3176_p0 = reg_3852;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3176_p0 = reg_3828;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3176_p0 = reg_3804;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3176_p0 = reg_3780;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3176_p0 = reg_3756;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3176_p0 = reg_3732;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3176_p0 = reg_3708;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3176_p0 = reg_3656;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3176_p0 = reg_3632;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3176_p0 = reg_3608;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3176_p0 = reg_3584;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3176_p0 = reg_3560;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3176_p0 = reg_3536;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3176_p0 = reg_3512;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3176_p0 = reg_3484;
    end else begin
        grp_fu_3176_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3176_p1 = reg_3684;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3176_p1 = reg_3656;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3176_p1 = reg_3632;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3176_p1 = reg_3608;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3176_p1 = reg_3584;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3176_p1 = reg_3560;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3176_p1 = reg_3536;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3176_p1 = reg_3512;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3176_p1 = reg_3484;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3176_p1 = 64'd0;
    end else begin
        grp_fu_3176_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3181_p0 = add11_61_1_reg_7418;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3181_p0 = add11_57_1_reg_7338;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3181_p0 = add11_53_1_reg_7278;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3181_p0 = add11_49_1_reg_7218;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3181_p0 = add11_45_1_reg_7158;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3181_p0 = add11_41_1_reg_7098;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3181_p0 = add11_37_1_reg_7038;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3181_p0 = add11_33_1_reg_6978;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3181_p0 = add11_61_reg_6933;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3181_p0 = add11_57_reg_6873;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3181_p0 = add11_53_reg_6813;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3181_p0 = add11_49_reg_6753;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3181_p0 = add11_45_reg_6693;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3181_p0 = add11_41_reg_6633;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3181_p0 = add11_37_reg_6546;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3181_p0 = add11_33_reg_6491;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3181_p0 = reg_3881;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3181_p0 = reg_3858;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3181_p0 = reg_3834;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3181_p0 = reg_3810;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3181_p0 = reg_3786;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3181_p0 = reg_3762;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3181_p0 = reg_3738;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3181_p0 = reg_3714;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3181_p0 = reg_3663;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3181_p0 = reg_3638;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3181_p0 = reg_3614;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3181_p0 = reg_3590;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3181_p0 = reg_3566;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3181_p0 = reg_3542;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3181_p0 = reg_3518;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3181_p0 = reg_3491;
    end else begin
        grp_fu_3181_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3181_p1 = reg_3690;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3181_p1 = reg_3663;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3181_p1 = reg_3638;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3181_p1 = reg_3614;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3181_p1 = reg_3590;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3181_p1 = reg_3566;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3181_p1 = reg_3542;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3181_p1 = reg_3518;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3181_p1 = reg_3491;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3181_p1 = 64'd0;
    end else begin
        grp_fu_3181_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3186_p0 = add11_62_1_reg_7428;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3186_p0 = add11_58_1_reg_7348;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3186_p0 = add11_54_1_reg_7288;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3186_p0 = add11_50_1_reg_7228;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3186_p0 = add11_46_1_reg_7168;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3186_p0 = add11_42_1_reg_7108;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3186_p0 = add11_38_1_reg_7048;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3186_p0 = add11_34_1_reg_6988;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3186_p0 = add11_62_reg_6938;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3186_p0 = add11_58_reg_6878;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3186_p0 = add11_54_reg_6818;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3186_p0 = add11_50_reg_6758;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3186_p0 = add11_46_reg_6698;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3186_p0 = add11_42_reg_6638;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3186_p0 = add11_38_reg_6421;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3186_p0 = add11_34_reg_6496;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3186_p0 = reg_3886;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3186_p0 = reg_3864;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3186_p0 = reg_3840;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3186_p0 = reg_3816;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3186_p0 = reg_3792;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3186_p0 = reg_3768;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3186_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3186_p0 = reg_3720;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3186_p0 = reg_3670;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3186_p0 = reg_3644;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3186_p0 = reg_3620;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3186_p0 = reg_3596;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3186_p0 = reg_3572;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3186_p0 = reg_3548;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3186_p0 = reg_3524;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3186_p0 = reg_3498;
    end else begin
        grp_fu_3186_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3186_p1 = reg_3696;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3186_p1 = reg_3670;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3186_p1 = reg_3644;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3186_p1 = reg_3620;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3186_p1 = reg_3596;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3186_p1 = reg_3572;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3186_p1 = reg_3548;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3186_p1 = reg_3524;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3186_p1 = reg_3498;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3186_p1 = 64'd0;
    end else begin
        grp_fu_3186_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3191_p0 = add11_63_1_reg_7438;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3191_p0 = add11_59_1_reg_7358;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3191_p0 = add11_55_1_reg_7298;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3191_p0 = add11_51_1_reg_7238;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3191_p0 = add11_47_1_reg_7178;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3191_p0 = add11_43_1_reg_7118;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3191_p0 = add11_39_1_reg_7058;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3191_p0 = add11_35_1_reg_6998;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3191_p0 = add11_63_reg_6943;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3191_p0 = add11_59_reg_6883;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3191_p0 = add11_55_reg_6823;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3191_p0 = add11_51_reg_6763;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3191_p0 = add11_47_reg_6703;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3191_p0 = add11_43_reg_6643;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3191_p0 = add11_39_reg_6551;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3191_p0 = add11_35_reg_6501;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3191_p0 = reg_3891;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3191_p0 = reg_3870;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3191_p0 = reg_3846;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3191_p0 = reg_3822;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3191_p0 = reg_3798;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3191_p0 = reg_3774;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3191_p0 = reg_3750;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3191_p0 = reg_3726;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3191_p0 = reg_3677;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3191_p0 = reg_3650;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3191_p0 = reg_3626;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3191_p0 = reg_3602;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3191_p0 = reg_3578;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3191_p0 = reg_3554;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3191_p0 = reg_3530;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3191_p0 = reg_3505;
    end else begin
        grp_fu_3191_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3191_p1 = reg_3702;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3191_p1 = reg_3677;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3191_p1 = reg_3650;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3191_p1 = reg_3626;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3191_p1 = reg_3602;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3191_p1 = reg_3578;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3191_p1 = reg_3554;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3191_p1 = reg_3530;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3191_p1 = reg_3505;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3191_p1 = 64'd0;
    end else begin
        grp_fu_3191_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3196_p0 = mul8_60_reg_6116;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3196_p0 = mul8_56_reg_6096;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3196_p0 = mul8_52_reg_6076;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3196_p0 = mul8_48_reg_6056;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3196_p0 = mul8_44_reg_6036;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3196_p0 = mul8_40_reg_6016;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3196_p0 = mul8_37_reg_6001;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3196_p0 = reg_3684;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3196_p0 = mul8_36_reg_5996;
    end else begin
        grp_fu_3196_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3201_p0 = mul8_61_reg_6121;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3201_p0 = mul8_57_reg_6101;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3201_p0 = mul8_53_reg_6081;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3201_p0 = mul8_49_reg_6061;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3201_p0 = mul8_45_reg_6041;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3201_p0 = mul8_41_reg_6021;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3201_p0 = mul8_39_reg_6011;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3201_p0 = reg_3690;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3201_p0 = mul8_38_reg_6006;
    end else begin
        grp_fu_3201_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3206_p0 = mul8_62_reg_6126;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3206_p0 = mul8_58_reg_6106;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3206_p0 = mul8_54_reg_6086;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3206_p0 = mul8_50_reg_6066;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3206_p0 = mul8_46_reg_6046;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3206_p0 = mul8_42_reg_6026;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3206_p0 = reg_3696;
    end else begin
        grp_fu_3206_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3211_p0 = mul8_63_reg_6131;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3211_p0 = mul8_59_reg_6111;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3211_p0 = mul8_55_reg_6091;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3211_p0 = mul8_51_reg_6071;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3211_p0 = mul8_47_reg_6051;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3211_p0 = mul8_43_reg_6031;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3211_p0 = reg_3702;
    end else begin
        grp_fu_3211_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3216_p0 = reg_3852;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3216_p0 = reg_3828;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3216_p0 = reg_3804;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3216_p0 = reg_3780;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3216_p0 = reg_3756;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3216_p0 = reg_3732;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3216_p0 = reg_3708;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3216_p0 = bitcast_ln85_170_fu_4948_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3216_p0 = bitcast_ln85_158_fu_4928_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3216_p0 = bitcast_ln85_146_fu_4908_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3216_p0 = bitcast_ln85_134_fu_4888_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3216_p0 = bitcast_ln85_122_fu_4868_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3216_p0 = bitcast_ln85_110_fu_4848_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3216_p0 = bitcast_ln85_98_fu_4828_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3216_p0 = bitcast_ln85_86_fu_4808_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3216_p0 = bitcast_ln85_74_fu_4788_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3216_p0 = bitcast_ln85_62_fu_4768_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3216_p0 = bitcast_ln85_50_fu_4748_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3216_p0 = bitcast_ln85_38_fu_4728_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3216_p0 = bitcast_ln85_26_fu_4708_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3216_p0 = bitcast_ln85_14_fu_4688_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3216_p0 = bitcast_ln85_2_fu_4668_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3216_p0 = bitcast_ln85_181_fu_4648_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3216_p0 = bitcast_ln85_169_fu_4628_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3216_p0 = bitcast_ln85_157_fu_4608_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3216_p0 = bitcast_ln85_145_fu_4588_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3216_p0 = bitcast_ln85_133_fu_4568_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3216_p0 = bitcast_ln85_121_fu_4548_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3216_p0 = bitcast_ln85_109_fu_4528_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3216_p0 = bitcast_ln85_97_fu_4508_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3216_p0 = bitcast_ln85_85_fu_4488_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3216_p0 = bitcast_ln85_73_fu_4468_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3216_p0 = bitcast_ln85_61_fu_4448_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3216_p0 = bitcast_ln85_49_fu_4428_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3216_p0 = bitcast_ln85_37_fu_4408_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3216_p0 = bitcast_ln85_25_fu_4388_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3216_p0 = bitcast_ln85_13_fu_4368_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3216_p0 = bitcast_ln85_1_fu_4348_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3216_p0 = bitcast_ln85_84_fu_4176_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3216_p0 = bitcast_ln85_72_fu_4156_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3216_p0 = bitcast_ln85_60_fu_4136_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3216_p0 = bitcast_ln85_48_fu_4116_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3216_p0 = bitcast_ln85_36_fu_4096_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3216_p0 = bitcast_ln85_24_fu_4076_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3216_p0 = bitcast_ln85_12_fu_4056_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3216_p0 = bitcast_ln85_fu_4036_p1;
    end else begin
        grp_fu_3216_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3216_p1 = reg_4016;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3216_p1 = reg_3996;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3216_p1 = reg_3976;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3216_p1 = reg_3956;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3216_p1 = reg_3936;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3216_p1 = reg_3916;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3216_p1 = reg_3896;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3216_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3216_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3216_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3216_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3221_p0 = reg_3858;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3221_p0 = reg_3834;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3221_p0 = reg_3810;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3221_p0 = reg_3786;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3221_p0 = reg_3762;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3221_p0 = reg_3738;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3221_p0 = reg_3714;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3221_p0 = bitcast_ln85_173_fu_4953_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3221_p0 = bitcast_ln85_161_fu_4933_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3221_p0 = bitcast_ln85_149_fu_4913_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3221_p0 = bitcast_ln85_137_fu_4893_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3221_p0 = bitcast_ln85_125_fu_4873_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3221_p0 = bitcast_ln85_113_fu_4853_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3221_p0 = bitcast_ln85_101_fu_4833_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3221_p0 = bitcast_ln85_89_fu_4813_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3221_p0 = bitcast_ln85_77_fu_4793_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3221_p0 = bitcast_ln85_65_fu_4773_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3221_p0 = bitcast_ln85_53_fu_4753_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3221_p0 = bitcast_ln85_41_fu_4733_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3221_p0 = bitcast_ln85_29_fu_4713_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3221_p0 = bitcast_ln85_17_fu_4693_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3221_p0 = bitcast_ln85_5_fu_4673_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3221_p0 = bitcast_ln85_184_fu_4653_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3221_p0 = bitcast_ln85_172_fu_4633_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3221_p0 = bitcast_ln85_160_fu_4613_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3221_p0 = bitcast_ln85_148_fu_4593_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3221_p0 = bitcast_ln85_136_fu_4573_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3221_p0 = bitcast_ln85_124_fu_4553_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3221_p0 = bitcast_ln85_112_fu_4533_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3221_p0 = bitcast_ln85_100_fu_4513_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3221_p0 = bitcast_ln85_88_fu_4493_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3221_p0 = bitcast_ln85_76_fu_4473_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3221_p0 = bitcast_ln85_64_fu_4453_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3221_p0 = bitcast_ln85_52_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3221_p0 = bitcast_ln85_40_fu_4413_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3221_p0 = bitcast_ln85_28_fu_4393_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3221_p0 = bitcast_ln85_16_fu_4373_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3221_p0 = bitcast_ln85_4_fu_4353_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3221_p0 = bitcast_ln85_87_fu_4180_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3221_p0 = bitcast_ln85_75_fu_4161_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3221_p0 = bitcast_ln85_63_fu_4141_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3221_p0 = bitcast_ln85_51_fu_4121_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3221_p0 = bitcast_ln85_39_fu_4101_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3221_p0 = bitcast_ln85_27_fu_4081_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3221_p0 = bitcast_ln85_15_fu_4061_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3221_p0 = bitcast_ln85_3_fu_4041_p1;
    end else begin
        grp_fu_3221_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3221_p1 = reg_4021;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3221_p1 = reg_4001;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3221_p1 = reg_3981;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3221_p1 = reg_3961;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3221_p1 = reg_3941;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3221_p1 = reg_3921;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3221_p1 = reg_3901;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3221_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3221_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3221_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3221_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3226_p0 = reg_3864;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3226_p0 = reg_3840;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3226_p0 = reg_3816;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3226_p0 = reg_3792;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3226_p0 = reg_3768;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3226_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3226_p0 = reg_3720;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3226_p0 = bitcast_ln85_176_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3226_p0 = bitcast_ln85_164_fu_4938_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3226_p0 = bitcast_ln85_152_fu_4918_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3226_p0 = bitcast_ln85_140_fu_4898_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3226_p0 = bitcast_ln85_128_fu_4878_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3226_p0 = bitcast_ln85_116_fu_4858_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3226_p0 = bitcast_ln85_104_fu_4838_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3226_p0 = bitcast_ln85_92_fu_4818_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3226_p0 = bitcast_ln85_80_fu_4798_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3226_p0 = bitcast_ln85_68_fu_4778_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3226_p0 = bitcast_ln85_56_fu_4758_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3226_p0 = bitcast_ln85_44_fu_4738_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3226_p0 = bitcast_ln85_32_fu_4718_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3226_p0 = bitcast_ln85_20_fu_4698_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3226_p0 = bitcast_ln85_8_fu_4678_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3226_p0 = bitcast_ln85_187_fu_4658_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3226_p0 = bitcast_ln85_175_fu_4638_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3226_p0 = bitcast_ln85_163_fu_4618_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3226_p0 = bitcast_ln85_151_fu_4598_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3226_p0 = bitcast_ln85_139_fu_4578_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3226_p0 = bitcast_ln85_127_fu_4558_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3226_p0 = bitcast_ln85_115_fu_4538_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3226_p0 = bitcast_ln85_103_fu_4518_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3226_p0 = bitcast_ln85_91_fu_4498_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3226_p0 = bitcast_ln85_79_fu_4478_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3226_p0 = bitcast_ln85_67_fu_4458_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3226_p0 = bitcast_ln85_55_fu_4438_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3226_p0 = bitcast_ln85_43_fu_4418_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3226_p0 = bitcast_ln85_31_fu_4398_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3226_p0 = bitcast_ln85_19_fu_4378_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3226_p0 = bitcast_ln85_7_fu_4358_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3226_p0 = bitcast_ln85_90_fu_4184_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3226_p0 = bitcast_ln85_78_fu_4166_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3226_p0 = bitcast_ln85_66_fu_4146_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3226_p0 = bitcast_ln85_54_fu_4126_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3226_p0 = bitcast_ln85_42_fu_4106_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3226_p0 = bitcast_ln85_30_fu_4086_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3226_p0 = bitcast_ln85_18_fu_4066_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3226_p0 = bitcast_ln85_6_fu_4046_p1;
    end else begin
        grp_fu_3226_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3226_p1 = reg_4026;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3226_p1 = reg_4006;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3226_p1 = reg_3986;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3226_p1 = reg_3966;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3226_p1 = reg_3946;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3226_p1 = reg_3926;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3226_p1 = reg_3906;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3226_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3226_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3226_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3226_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3231_p0 = reg_3870;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3231_p0 = reg_3846;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3231_p0 = reg_3822;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3231_p0 = reg_3798;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3231_p0 = reg_3774;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3231_p0 = reg_3750;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3231_p0 = reg_3726;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3231_p0 = bitcast_ln85_179_fu_4963_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3231_p0 = bitcast_ln85_167_fu_4943_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3231_p0 = bitcast_ln85_155_fu_4923_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3231_p0 = bitcast_ln85_143_fu_4903_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3231_p0 = bitcast_ln85_131_fu_4883_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3231_p0 = bitcast_ln85_119_fu_4863_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3231_p0 = bitcast_ln85_107_fu_4843_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3231_p0 = bitcast_ln85_95_fu_4823_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3231_p0 = bitcast_ln85_83_fu_4803_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3231_p0 = bitcast_ln85_71_fu_4783_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3231_p0 = bitcast_ln85_59_fu_4763_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3231_p0 = bitcast_ln85_47_fu_4743_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3231_p0 = bitcast_ln85_35_fu_4723_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3231_p0 = bitcast_ln85_23_fu_4703_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3231_p0 = bitcast_ln85_11_fu_4683_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3231_p0 = bitcast_ln85_190_fu_4663_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3231_p0 = bitcast_ln85_178_fu_4643_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3231_p0 = bitcast_ln85_166_fu_4623_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3231_p0 = bitcast_ln85_154_fu_4603_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3231_p0 = bitcast_ln85_142_fu_4583_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3231_p0 = bitcast_ln85_130_fu_4563_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3231_p0 = bitcast_ln85_118_fu_4543_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3231_p0 = bitcast_ln85_106_fu_4523_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3231_p0 = bitcast_ln85_94_fu_4503_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3231_p0 = bitcast_ln85_82_fu_4483_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3231_p0 = bitcast_ln85_70_fu_4463_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3231_p0 = bitcast_ln85_58_fu_4443_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3231_p0 = bitcast_ln85_46_fu_4423_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3231_p0 = bitcast_ln85_34_fu_4403_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3231_p0 = bitcast_ln85_22_fu_4383_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3231_p0 = bitcast_ln85_10_fu_4363_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3231_p0 = bitcast_ln85_93_fu_4188_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3231_p0 = bitcast_ln85_81_fu_4171_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3231_p0 = bitcast_ln85_69_fu_4151_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3231_p0 = bitcast_ln85_57_fu_4131_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3231_p0 = bitcast_ln85_45_fu_4111_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3231_p0 = bitcast_ln85_33_fu_4091_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3231_p0 = bitcast_ln85_21_fu_4071_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3231_p0 = bitcast_ln85_9_fu_4051_p1;
    end else begin
        grp_fu_3231_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3231_p1 = reg_4031;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3231_p1 = reg_4011;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3231_p1 = reg_3991;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3231_p1 = reg_3971;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3231_p1 = reg_3951;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3231_p1 = reg_3931;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3231_p1 = reg_3911;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3231_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3231_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3231_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3231_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3236_p0 = bitcast_ln85_182_fu_4968_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3236_p0 = bitcast_ln85_96_fu_4192_p1;
    end else begin
        grp_fu_3236_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3236_p1 = output_differences_0_2_val;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3236_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3236_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3240_p0 = bitcast_ln85_185_fu_4973_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3240_p0 = bitcast_ln85_99_fu_4196_p1;
    end else begin
        grp_fu_3240_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3240_p1 = output_differences_0_2_val;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3240_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3240_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3244_p0 = bitcast_ln85_188_fu_4978_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3244_p0 = bitcast_ln85_102_fu_4200_p1;
    end else begin
        grp_fu_3244_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3244_p1 = output_differences_0_2_val;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3244_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3244_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3248_p0 = bitcast_ln85_191_fu_4983_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3248_p0 = bitcast_ln85_105_fu_4204_p1;
    end else begin
        grp_fu_3248_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3248_p1 = output_differences_0_2_val;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3248_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3248_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        oracle_activations_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        oracle_activations_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        oracle_activations_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        oracle_activations_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        oracle_activations_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        oracle_activations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        oracle_activations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        oracle_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        oracle_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_0_address0_local = 64'd1;
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        oracle_activations_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        oracle_activations_0_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        oracle_activations_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        oracle_activations_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations_0_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        oracle_activations_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations_0_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        oracle_activations_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        oracle_activations_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        oracle_activations_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        oracle_activations_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_0_address1_local = 64'd0;
    end else begin
        oracle_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_0_ce1_local = 1'b1;
    end else begin
        oracle_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_0_d0_local = reg_3498;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_0_d0_local = reg_3670;
    end else begin
        oracle_activations_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_0_d1_local = reg_3484;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_0_d1_local = reg_3656;
    end else begin
        oracle_activations_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_0_we1_local = 1'b1;
    end else begin
        oracle_activations_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        oracle_activations_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        oracle_activations_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        oracle_activations_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        oracle_activations_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        oracle_activations_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        oracle_activations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        oracle_activations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        oracle_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        oracle_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_1_address0_local = 64'd1;
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        oracle_activations_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        oracle_activations_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        oracle_activations_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        oracle_activations_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        oracle_activations_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        oracle_activations_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        oracle_activations_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        oracle_activations_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        oracle_activations_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_1_address1_local = 64'd0;
    end else begin
        oracle_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_1_ce1_local = 1'b1;
    end else begin
        oracle_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_1_d0_local = reg_3505;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_1_d0_local = reg_3677;
    end else begin
        oracle_activations_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_1_d1_local = reg_3491;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_1_d1_local = reg_3663;
    end else begin
        oracle_activations_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state72))) begin
        oracle_activations_1_we1_local = 1'b1;
    end else begin
        oracle_activations_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_0_address0_local = 64'd94;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_0_address0_local = 64'd88;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_0_address0_local = 64'd82;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_0_address0_local = 64'd76;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_0_address0_local = 64'd70;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_0_address0_local = 64'd64;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_0_address0_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address0_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_0_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_0_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_0_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_0_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_0_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_0_address0_local = 64'd95;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_0_address0_local = 64'd89;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_0_address0_local = 64'd83;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_0_address0_local = 64'd77;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_0_address0_local = 64'd71;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_0_address0_local = 64'd65;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_0_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_0_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_0_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_0_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_0_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_0_address0_local = 64'd93;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_0_address0_local = 64'd87;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_0_address0_local = 64'd81;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_0_address0_local = 64'd75;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_0_address0_local = 64'd69;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_0_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_0_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_0_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_0_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_0_address0_local = 64'd3;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_0_address1_local = 64'd91;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_0_address1_local = 64'd85;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_0_address1_local = 64'd79;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_0_address1_local = 64'd73;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_0_address1_local = 64'd67;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_0_address1_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_0_address1_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address1_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_0_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_0_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_0_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_0_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_0_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_0_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_0_address1_local = 64'd1;
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
        weights3_0_address1_local = 64'd2;
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
        weights3_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_0_address1_local = 64'd0;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28)| (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28)| (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_1_address0_local = 64'd95;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_1_address0_local = 64'd89;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_1_address0_local = 64'd83;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_1_address0_local = 64'd77;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_1_address0_local = 64'd71;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_1_address0_local = 64'd65;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_1_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_1_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_1_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_1_address0_local = 64'd93;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_1_address0_local = 64'd87;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_1_address0_local = 64'd81;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_1_address0_local = 64'd75;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_1_address0_local = 64'd69;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_1_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_1_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_1_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_1_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_1_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_1_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_1_address0_local = 64'd94;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_1_address0_local = 64'd88;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_1_address0_local = 64'd82;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_1_address0_local = 64'd76;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_1_address0_local = 64'd70;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_1_address0_local = 64'd64;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_1_address0_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_1_address0_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_1_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_1_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_1_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_1_address0_local = 64'd4;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_1_address1_local = 64'd92;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_1_address1_local = 64'd86;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_1_address1_local = 64'd80;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_1_address1_local = 64'd74;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_1_address1_local = 64'd68;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_1_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_1_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_1_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_1_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_1_address1_local = 64'd2;
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
        weights3_1_address1_local = 64'd0;
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
        weights3_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_1_address1_local = 64'd1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28)| (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28)| (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
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
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln85_100_fu_4513_p1 = reg_3372;
assign bitcast_ln85_101_fu_4833_p1 = reg_3376;
assign bitcast_ln85_102_fu_4200_p1 = weights3_0_load_82_reg_5198;
assign bitcast_ln85_103_fu_4518_p1 = reg_3384;
assign bitcast_ln85_104_fu_4838_p1 = reg_3380;
assign bitcast_ln85_105_fu_4204_p1 = weights3_1_load_83_reg_5203;
assign bitcast_ln85_106_fu_4523_p1 = reg_3380;
assign bitcast_ln85_107_fu_4843_p1 = reg_3384;
assign bitcast_ln85_108_fu_4208_p1 = reg_3372;
assign bitcast_ln85_109_fu_4528_p1 = reg_3376;
assign bitcast_ln85_10_fu_4363_p1 = reg_3380;
assign bitcast_ln85_110_fu_4848_p1 = reg_3372;
assign bitcast_ln85_111_fu_4213_p1 = reg_3376;
assign bitcast_ln85_112_fu_4533_p1 = reg_3372;
assign bitcast_ln85_113_fu_4853_p1 = reg_3376;
assign bitcast_ln85_114_fu_4218_p1 = reg_3380;
assign bitcast_ln85_115_fu_4538_p1 = reg_3384;
assign bitcast_ln85_116_fu_4858_p1 = reg_3380;
assign bitcast_ln85_117_fu_4223_p1 = reg_3384;
assign bitcast_ln85_118_fu_4543_p1 = reg_3380;
assign bitcast_ln85_119_fu_4863_p1 = reg_3384;
assign bitcast_ln85_11_fu_4683_p1 = reg_3384;
assign bitcast_ln85_120_fu_4228_p1 = reg_3388;
assign bitcast_ln85_121_fu_4548_p1 = reg_3376;
assign bitcast_ln85_122_fu_4868_p1 = reg_3372;
assign bitcast_ln85_123_fu_4233_p1 = reg_3392;
assign bitcast_ln85_124_fu_4553_p1 = reg_3372;
assign bitcast_ln85_125_fu_4873_p1 = reg_3376;
assign bitcast_ln85_126_fu_4238_p1 = reg_3396;
assign bitcast_ln85_127_fu_4558_p1 = reg_3384;
assign bitcast_ln85_128_fu_4878_p1 = reg_3380;
assign bitcast_ln85_129_fu_4243_p1 = reg_3400;
assign bitcast_ln85_12_fu_4056_p1 = reg_3388;
assign bitcast_ln85_130_fu_4563_p1 = reg_3380;
assign bitcast_ln85_131_fu_4883_p1 = reg_3384;
assign bitcast_ln85_132_fu_4248_p1 = reg_3404;
assign bitcast_ln85_133_fu_4568_p1 = reg_3376;
assign bitcast_ln85_134_fu_4888_p1 = reg_3372;
assign bitcast_ln85_135_fu_4253_p1 = reg_3408;
assign bitcast_ln85_136_fu_4573_p1 = reg_3372;
assign bitcast_ln85_137_fu_4893_p1 = reg_3376;
assign bitcast_ln85_138_fu_4258_p1 = reg_3412;
assign bitcast_ln85_139_fu_4578_p1 = reg_3384;
assign bitcast_ln85_13_fu_4368_p1 = reg_3376;
assign bitcast_ln85_140_fu_4898_p1 = reg_3380;
assign bitcast_ln85_141_fu_4263_p1 = reg_3416;
assign bitcast_ln85_142_fu_4583_p1 = reg_3380;
assign bitcast_ln85_143_fu_4903_p1 = reg_3384;
assign bitcast_ln85_144_fu_4268_p1 = reg_3420;
assign bitcast_ln85_145_fu_4588_p1 = reg_3376;
assign bitcast_ln85_146_fu_4908_p1 = reg_3372;
assign bitcast_ln85_147_fu_4273_p1 = reg_3424;
assign bitcast_ln85_148_fu_4593_p1 = reg_3372;
assign bitcast_ln85_149_fu_4913_p1 = reg_3376;
assign bitcast_ln85_14_fu_4688_p1 = reg_3372;
assign bitcast_ln85_150_fu_4278_p1 = reg_3428;
assign bitcast_ln85_151_fu_4598_p1 = reg_3384;
assign bitcast_ln85_152_fu_4918_p1 = reg_3380;
assign bitcast_ln85_153_fu_4283_p1 = reg_3432;
assign bitcast_ln85_154_fu_4603_p1 = reg_3380;
assign bitcast_ln85_155_fu_4923_p1 = reg_3384;
assign bitcast_ln85_156_fu_4288_p1 = reg_3436;
assign bitcast_ln85_157_fu_4608_p1 = reg_3376;
assign bitcast_ln85_158_fu_4928_p1 = reg_3372;
assign bitcast_ln85_159_fu_4293_p1 = reg_3440;
assign bitcast_ln85_15_fu_4061_p1 = reg_3392;
assign bitcast_ln85_160_fu_4613_p1 = reg_3372;
assign bitcast_ln85_161_fu_4933_p1 = reg_3376;
assign bitcast_ln85_162_fu_4298_p1 = reg_3444;
assign bitcast_ln85_163_fu_4618_p1 = reg_3384;
assign bitcast_ln85_164_fu_4938_p1 = reg_3380;
assign bitcast_ln85_165_fu_4303_p1 = reg_3448;
assign bitcast_ln85_166_fu_4623_p1 = reg_3380;
assign bitcast_ln85_167_fu_4943_p1 = reg_3384;
assign bitcast_ln85_168_fu_4308_p1 = reg_3452;
assign bitcast_ln85_169_fu_4628_p1 = reg_3376;
assign bitcast_ln85_16_fu_4373_p1 = reg_3372;
assign bitcast_ln85_170_fu_4948_p1 = reg_3372;
assign bitcast_ln85_171_fu_4313_p1 = reg_3456;
assign bitcast_ln85_172_fu_4633_p1 = reg_3372;
assign bitcast_ln85_173_fu_4953_p1 = reg_3376;
assign bitcast_ln85_175_fu_4638_p1 = reg_3384;
assign bitcast_ln85_176_fu_4958_p1 = reg_3380;
assign bitcast_ln85_178_fu_4643_p1 = reg_3380;
assign bitcast_ln85_179_fu_4963_p1 = reg_3384;
assign bitcast_ln85_17_fu_4693_p1 = reg_3376;
assign bitcast_ln85_181_fu_4648_p1 = reg_3376;
assign bitcast_ln85_182_fu_4968_p1 = reg_3372;
assign bitcast_ln85_184_fu_4653_p1 = reg_3372;
assign bitcast_ln85_185_fu_4973_p1 = reg_3376;
assign bitcast_ln85_187_fu_4658_p1 = reg_3384;
assign bitcast_ln85_188_fu_4978_p1 = reg_3380;
assign bitcast_ln85_18_fu_4066_p1 = reg_3396;
assign bitcast_ln85_190_fu_4663_p1 = reg_3380;
assign bitcast_ln85_191_fu_4983_p1 = reg_3384;
assign bitcast_ln85_19_fu_4378_p1 = reg_3384;
assign bitcast_ln85_1_fu_4348_p1 = reg_3376;
assign bitcast_ln85_20_fu_4698_p1 = reg_3380;
assign bitcast_ln85_21_fu_4071_p1 = reg_3400;
assign bitcast_ln85_22_fu_4383_p1 = reg_3380;
assign bitcast_ln85_23_fu_4703_p1 = reg_3384;
assign bitcast_ln85_24_fu_4076_p1 = reg_3404;
assign bitcast_ln85_25_fu_4388_p1 = reg_3376;
assign bitcast_ln85_26_fu_4708_p1 = reg_3372;
assign bitcast_ln85_27_fu_4081_p1 = reg_3408;
assign bitcast_ln85_28_fu_4393_p1 = reg_3372;
assign bitcast_ln85_29_fu_4713_p1 = reg_3376;
assign bitcast_ln85_2_fu_4668_p1 = reg_3372;
assign bitcast_ln85_30_fu_4086_p1 = reg_3412;
assign bitcast_ln85_31_fu_4398_p1 = reg_3384;
assign bitcast_ln85_32_fu_4718_p1 = reg_3380;
assign bitcast_ln85_33_fu_4091_p1 = reg_3416;
assign bitcast_ln85_34_fu_4403_p1 = reg_3380;
assign bitcast_ln85_35_fu_4723_p1 = reg_3384;
assign bitcast_ln85_36_fu_4096_p1 = reg_3420;
assign bitcast_ln85_37_fu_4408_p1 = reg_3376;
assign bitcast_ln85_38_fu_4728_p1 = reg_3372;
assign bitcast_ln85_39_fu_4101_p1 = reg_3424;
assign bitcast_ln85_3_fu_4041_p1 = reg_3376;
assign bitcast_ln85_40_fu_4413_p1 = reg_3372;
assign bitcast_ln85_41_fu_4733_p1 = reg_3376;
assign bitcast_ln85_42_fu_4106_p1 = reg_3428;
assign bitcast_ln85_43_fu_4418_p1 = reg_3384;
assign bitcast_ln85_44_fu_4738_p1 = reg_3380;
assign bitcast_ln85_45_fu_4111_p1 = reg_3432;
assign bitcast_ln85_46_fu_4423_p1 = reg_3380;
assign bitcast_ln85_47_fu_4743_p1 = reg_3384;
assign bitcast_ln85_48_fu_4116_p1 = reg_3436;
assign bitcast_ln85_49_fu_4428_p1 = reg_3376;
assign bitcast_ln85_4_fu_4353_p1 = reg_3372;
assign bitcast_ln85_50_fu_4748_p1 = reg_3372;
assign bitcast_ln85_51_fu_4121_p1 = reg_3440;
assign bitcast_ln85_52_fu_4433_p1 = reg_3372;
assign bitcast_ln85_53_fu_4753_p1 = reg_3376;
assign bitcast_ln85_54_fu_4126_p1 = reg_3444;
assign bitcast_ln85_55_fu_4438_p1 = reg_3384;
assign bitcast_ln85_56_fu_4758_p1 = reg_3380;
assign bitcast_ln85_57_fu_4131_p1 = reg_3448;
assign bitcast_ln85_58_fu_4443_p1 = reg_3380;
assign bitcast_ln85_59_fu_4763_p1 = reg_3384;
assign bitcast_ln85_5_fu_4673_p1 = reg_3376;
assign bitcast_ln85_60_fu_4136_p1 = reg_3452;
assign bitcast_ln85_61_fu_4448_p1 = reg_3376;
assign bitcast_ln85_62_fu_4768_p1 = reg_3372;
assign bitcast_ln85_63_fu_4141_p1 = reg_3456;
assign bitcast_ln85_64_fu_4453_p1 = reg_3372;
assign bitcast_ln85_65_fu_4773_p1 = reg_3376;
assign bitcast_ln85_66_fu_4146_p1 = reg_3460;
assign bitcast_ln85_67_fu_4458_p1 = reg_3384;
assign bitcast_ln85_68_fu_4778_p1 = reg_3380;
assign bitcast_ln85_69_fu_4151_p1 = reg_3464;
assign bitcast_ln85_6_fu_4046_p1 = reg_3380;
assign bitcast_ln85_70_fu_4463_p1 = reg_3380;
assign bitcast_ln85_71_fu_4783_p1 = reg_3384;
assign bitcast_ln85_72_fu_4156_p1 = reg_3468;
assign bitcast_ln85_73_fu_4468_p1 = reg_3376;
assign bitcast_ln85_74_fu_4788_p1 = reg_3372;
assign bitcast_ln85_75_fu_4161_p1 = reg_3472;
assign bitcast_ln85_76_fu_4473_p1 = reg_3372;
assign bitcast_ln85_77_fu_4793_p1 = reg_3376;
assign bitcast_ln85_78_fu_4166_p1 = reg_3476;
assign bitcast_ln85_79_fu_4478_p1 = reg_3384;
assign bitcast_ln85_7_fu_4358_p1 = reg_3384;
assign bitcast_ln85_80_fu_4798_p1 = reg_3380;
assign bitcast_ln85_81_fu_4171_p1 = reg_3480;
assign bitcast_ln85_82_fu_4483_p1 = reg_3380;
assign bitcast_ln85_83_fu_4803_p1 = reg_3384;
assign bitcast_ln85_84_fu_4176_p1 = weights3_0_load_73_reg_5148;
assign bitcast_ln85_85_fu_4488_p1 = reg_3376;
assign bitcast_ln85_86_fu_4808_p1 = reg_3372;
assign bitcast_ln85_87_fu_4180_p1 = weights3_1_load_74_reg_5153;
assign bitcast_ln85_88_fu_4493_p1 = reg_3372;
assign bitcast_ln85_89_fu_4813_p1 = reg_3376;
assign bitcast_ln85_8_fu_4678_p1 = reg_3380;
assign bitcast_ln85_90_fu_4184_p1 = weights3_0_load_76_reg_5158;
assign bitcast_ln85_91_fu_4498_p1 = reg_3384;
assign bitcast_ln85_92_fu_4818_p1 = reg_3380;
assign bitcast_ln85_93_fu_4188_p1 = weights3_1_load_77_reg_5163;
assign bitcast_ln85_94_fu_4503_p1 = reg_3380;
assign bitcast_ln85_95_fu_4823_p1 = reg_3384;
assign bitcast_ln85_96_fu_4192_p1 = weights3_0_load_79_reg_5188;
assign bitcast_ln85_97_fu_4508_p1 = reg_3376;
assign bitcast_ln85_98_fu_4828_p1 = reg_3372;
assign bitcast_ln85_99_fu_4196_p1 = weights3_1_load_80_reg_5193;
assign bitcast_ln85_9_fu_4051_p1 = reg_3384;
assign bitcast_ln85_fu_4036_p1 = reg_3372;
assign dactivations_0_address0 = dactivations_0_address0_local;
assign dactivations_0_address1 = dactivations_0_address1_local;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = dactivations_1_address0_local;
assign dactivations_1_address1 = dactivations_1_address1_local;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign grp_fu_2842_p_ce = 1'b1;
assign grp_fu_2842_p_din0 = grp_fu_3176_p0;
assign grp_fu_2842_p_din1 = grp_fu_3176_p1;
assign grp_fu_2842_p_opcode = 2'd0;
assign grp_fu_2846_p_ce = 1'b1;
assign grp_fu_2846_p_din0 = grp_fu_3181_p0;
assign grp_fu_2846_p_din1 = grp_fu_3181_p1;
assign grp_fu_2846_p_opcode = 2'd0;
assign grp_fu_2850_p_ce = 1'b1;
assign grp_fu_2850_p_din0 = grp_fu_3186_p0;
assign grp_fu_2850_p_din1 = grp_fu_3186_p1;
assign grp_fu_2850_p_opcode = 2'd0;
assign grp_fu_2854_p_ce = 1'b1;
assign grp_fu_2854_p_din0 = grp_fu_3191_p0;
assign grp_fu_2854_p_din1 = grp_fu_3191_p1;
assign grp_fu_2854_p_opcode = 2'd0;
assign grp_fu_2858_p_ce = 1'b1;
assign grp_fu_2858_p_din0 = grp_fu_3196_p0;
assign grp_fu_2858_p_din1 = 64'd0;
assign grp_fu_2858_p_opcode = 2'd0;
assign grp_fu_2862_p_ce = 1'b1;
assign grp_fu_2862_p_din0 = grp_fu_3201_p0;
assign grp_fu_2862_p_din1 = 64'd0;
assign grp_fu_2862_p_opcode = 2'd0;
assign grp_fu_2866_p_ce = 1'b1;
assign grp_fu_2866_p_din0 = grp_fu_3206_p0;
assign grp_fu_2866_p_din1 = 64'd0;
assign grp_fu_2866_p_opcode = 2'd0;
assign grp_fu_2870_p_ce = 1'b1;
assign grp_fu_2870_p_din0 = grp_fu_3211_p0;
assign grp_fu_2870_p_din1 = 64'd0;
assign grp_fu_2870_p_opcode = 2'd0;
assign grp_fu_2894_p_ce = 1'b1;
assign grp_fu_2894_p_din0 = grp_fu_3216_p0;
assign grp_fu_2894_p_din1 = grp_fu_3216_p1;
assign grp_fu_2898_p_ce = 1'b1;
assign grp_fu_2898_p_din0 = grp_fu_3221_p0;
assign grp_fu_2898_p_din1 = grp_fu_3221_p1;
assign grp_fu_2902_p_ce = 1'b1;
assign grp_fu_2902_p_din0 = grp_fu_3226_p0;
assign grp_fu_2902_p_din1 = grp_fu_3226_p1;
assign grp_fu_2906_p_ce = 1'b1;
assign grp_fu_2906_p_din0 = grp_fu_3231_p0;
assign grp_fu_2906_p_din1 = grp_fu_3231_p1;
assign grp_fu_2910_p_ce = 1'b1;
assign grp_fu_2910_p_din0 = grp_fu_3236_p0;
assign grp_fu_2910_p_din1 = grp_fu_3236_p1;
assign grp_fu_2914_p_ce = 1'b1;
assign grp_fu_2914_p_din0 = grp_fu_3240_p0;
assign grp_fu_2914_p_din1 = grp_fu_3240_p1;
assign grp_fu_2918_p_ce = 1'b1;
assign grp_fu_2918_p_din0 = grp_fu_3244_p0;
assign grp_fu_2918_p_din1 = grp_fu_3244_p1;
assign grp_fu_2922_p_ce = 1'b1;
assign grp_fu_2922_p_din0 = grp_fu_3248_p0;
assign grp_fu_2922_p_din1 = grp_fu_3248_p1;
assign grp_fu_2926_p_ce = 1'b1;
assign grp_fu_2926_p_din0 = bitcast_ln85_108_fu_4208_p1;
assign grp_fu_2926_p_din1 = output_differences_0_0_val;
assign grp_fu_2930_p_ce = 1'b1;
assign grp_fu_2930_p_din0 = bitcast_ln85_111_fu_4213_p1;
assign grp_fu_2930_p_din1 = output_differences_0_0_val;
assign grp_fu_2934_p_ce = 1'b1;
assign grp_fu_2934_p_din0 = bitcast_ln85_114_fu_4218_p1;
assign grp_fu_2934_p_din1 = output_differences_0_0_val;
assign grp_fu_2938_p_ce = 1'b1;
assign grp_fu_2938_p_din0 = bitcast_ln85_117_fu_4223_p1;
assign grp_fu_2938_p_din1 = output_differences_0_0_val;
assign grp_fu_2942_p_ce = 1'b1;
assign grp_fu_2942_p_din0 = bitcast_ln85_120_fu_4228_p1;
assign grp_fu_2942_p_din1 = output_differences_0_0_val;
assign grp_fu_2946_p_ce = 1'b1;
assign grp_fu_2946_p_din0 = bitcast_ln85_123_fu_4233_p1;
assign grp_fu_2946_p_din1 = output_differences_0_0_val;
assign grp_fu_2950_p_ce = 1'b1;
assign grp_fu_2950_p_din0 = bitcast_ln85_126_fu_4238_p1;
assign grp_fu_2950_p_din1 = output_differences_0_0_val;
assign grp_fu_2954_p_ce = 1'b1;
assign grp_fu_2954_p_din0 = bitcast_ln85_129_fu_4243_p1;
assign grp_fu_2954_p_din1 = output_differences_0_0_val;
assign grp_fu_2958_p_ce = 1'b1;
assign grp_fu_2958_p_din0 = bitcast_ln85_132_fu_4248_p1;
assign grp_fu_2958_p_din1 = output_differences_0_0_val;
assign grp_fu_2962_p_ce = 1'b1;
assign grp_fu_2962_p_din0 = bitcast_ln85_135_fu_4253_p1;
assign grp_fu_2962_p_din1 = output_differences_0_0_val;
assign grp_fu_2966_p_ce = 1'b1;
assign grp_fu_2966_p_din0 = bitcast_ln85_138_fu_4258_p1;
assign grp_fu_2966_p_din1 = output_differences_0_0_val;
assign grp_fu_2970_p_ce = 1'b1;
assign grp_fu_2970_p_din0 = bitcast_ln85_141_fu_4263_p1;
assign grp_fu_2970_p_din1 = output_differences_0_0_val;
assign grp_fu_2974_p_ce = 1'b1;
assign grp_fu_2974_p_din0 = bitcast_ln85_144_fu_4268_p1;
assign grp_fu_2974_p_din1 = output_differences_0_0_val;
assign grp_fu_2978_p_ce = 1'b1;
assign grp_fu_2978_p_din0 = bitcast_ln85_147_fu_4273_p1;
assign grp_fu_2978_p_din1 = output_differences_0_0_val;
assign grp_fu_2982_p_ce = 1'b1;
assign grp_fu_2982_p_din0 = bitcast_ln85_150_fu_4278_p1;
assign grp_fu_2982_p_din1 = output_differences_0_0_val;
assign grp_fu_2986_p_ce = 1'b1;
assign grp_fu_2986_p_din0 = bitcast_ln85_153_fu_4283_p1;
assign grp_fu_2986_p_din1 = output_differences_0_0_val;
assign grp_fu_2990_p_ce = 1'b1;
assign grp_fu_2990_p_din0 = bitcast_ln85_156_fu_4288_p1;
assign grp_fu_2990_p_din1 = output_differences_0_0_val;
assign grp_fu_2994_p_ce = 1'b1;
assign grp_fu_2994_p_din0 = bitcast_ln85_159_fu_4293_p1;
assign grp_fu_2994_p_din1 = output_differences_0_0_val;
assign grp_fu_2998_p_ce = 1'b1;
assign grp_fu_2998_p_din0 = bitcast_ln85_162_fu_4298_p1;
assign grp_fu_2998_p_din1 = output_differences_0_0_val;
assign grp_fu_3002_p_ce = 1'b1;
assign grp_fu_3002_p_din0 = bitcast_ln85_165_fu_4303_p1;
assign grp_fu_3002_p_din1 = output_differences_0_0_val;
assign grp_fu_3006_p_ce = 1'b1;
assign grp_fu_3006_p_din0 = bitcast_ln85_168_fu_4308_p1;
assign grp_fu_3006_p_din1 = output_differences_0_0_val;
assign grp_fu_3010_p_ce = 1'b1;
assign grp_fu_3010_p_din0 = bitcast_ln85_171_fu_4313_p1;
assign grp_fu_3010_p_din1 = output_differences_0_0_val;
assign grp_fu_3340_p0 = reg_3460;
assign grp_fu_3344_p0 = reg_3464;
assign grp_fu_3348_p0 = reg_3468;
assign grp_fu_3352_p0 = reg_3472;
assign grp_fu_3356_p0 = reg_3476;
assign grp_fu_3360_p0 = reg_3480;
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_address1 = oracle_activations_0_address1_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_ce1 = oracle_activations_0_ce1_local;
assign oracle_activations_0_d0 = oracle_activations_0_d0_local;
assign oracle_activations_0_d1 = oracle_activations_0_d1_local;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_0_we1 = oracle_activations_0_we1_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_address1 = oracle_activations_1_address1_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_ce1 = oracle_activations_1_ce1_local;
assign oracle_activations_1_d0 = oracle_activations_1_d0_local;
assign oracle_activations_1_d1 = oracle_activations_1_d1_local;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_1_we1 = oracle_activations_1_we1_local;
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
endmodule 