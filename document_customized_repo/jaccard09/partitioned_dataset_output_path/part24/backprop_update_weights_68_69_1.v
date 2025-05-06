
module backprop_update_weights_68_69_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_2_address1,weights1_2_ce1,weights1_2_q1,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_3_address1,weights1_3_ce1,weights1_3_q1,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_q1,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,biases1_0_address0,biases1_0_ce0,biases1_0_we0,biases1_0_d0,biases1_0_q0,biases1_0_address1,biases1_0_ce1,biases1_0_q1,biases1_1_address0,biases1_1_ce0,biases1_1_we0,biases1_1_d0,biases1_1_q0,biases1_1_address1,biases1_1_ce1,biases1_1_q1,biases1_2_address0,biases1_2_ce0,biases1_2_we0,biases1_2_d0,biases1_2_q0,biases1_2_address1,biases1_2_ce1,biases1_2_q1,biases1_3_address0,biases1_3_ce0,biases1_3_we0,biases1_3_d0,biases1_3_q0,biases1_3_address1,biases1_3_ce1,biases1_3_q1,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,biases2_0_address1,biases2_0_ce1,biases2_0_q1,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_1_address1,biases2_1_ce1,biases2_1_q1,biases2_2_address0,biases2_2_ce0,biases2_2_we0,biases2_2_d0,biases2_2_q0,biases2_2_address1,biases2_2_ce1,biases2_2_q1,biases2_3_address0,biases2_3_ce0,biases2_3_we0,biases2_3_d0,biases2_3_q0,biases2_3_address1,biases2_3_ce1,biases2_3_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,d_biases1_0_address0,d_biases1_0_ce0,d_biases1_0_q0,d_biases1_1_address0,d_biases1_1_ce0,d_biases1_1_q0,d_biases1_2_address0,d_biases1_2_ce0,d_biases1_2_q0,d_biases1_3_address0,d_biases1_3_ce0,d_biases1_3_q0,d_biases2_0_address0,d_biases2_0_ce0,d_biases2_0_q0,d_biases2_1_address0,d_biases2_1_ce0,d_biases2_1_q0,d_biases2_2_address0,d_biases2_2_ce0,d_biases2_2_q0,d_biases2_3_address0,d_biases2_3_ce0,d_biases2_3_q0,p_read,p_read1,p_read2,grp_fu_3064_p_din0,grp_fu_3064_p_din1,grp_fu_3064_p_opcode,grp_fu_3064_p_dout0,grp_fu_3064_p_ce,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_opcode,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3128_p_din0,grp_fu_3128_p_din1,grp_fu_3128_p_dout0,grp_fu_3128_p_ce,grp_fu_3068_p_din0,grp_fu_3068_p_din1,grp_fu_3068_p_opcode,grp_fu_3068_p_dout0,grp_fu_3068_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_opcode,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_opcode,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3072_p_din0,grp_fu_3072_p_din1,grp_fu_3072_p_opcode,grp_fu_3072_p_dout0,grp_fu_3072_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce);  
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
output  [7:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [7:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
output  [7:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [7:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
output  [7:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [7:0] weights1_2_address1;
output   weights1_2_ce1;
input  [63:0] weights1_2_q1;
output  [7:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [7:0] weights1_3_address1;
output   weights1_3_ce1;
input  [63:0] weights1_3_q1;
output  [9:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [9:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [9:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [9:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [9:0] weights2_2_address0;
output   weights2_2_ce0;
output   weights2_2_we0;
output  [63:0] weights2_2_d0;
input  [63:0] weights2_2_q0;
output  [9:0] weights2_2_address1;
output   weights2_2_ce1;
input  [63:0] weights2_2_q1;
output  [9:0] weights2_3_address0;
output   weights2_3_ce0;
output   weights2_3_we0;
output  [63:0] weights2_3_d0;
input  [63:0] weights2_3_q0;
output  [9:0] weights2_3_address1;
output   weights2_3_ce1;
input  [63:0] weights2_3_q1;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
input  [63:0] weights3_2_q1;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
input  [63:0] weights3_3_q1;
output  [7:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [7:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [7:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [7:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [9:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [9:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [9:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [9:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [5:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [5:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [5:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [5:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [3:0] biases1_0_address0;
output   biases1_0_ce0;
output   biases1_0_we0;
output  [63:0] biases1_0_d0;
input  [63:0] biases1_0_q0;
output  [3:0] biases1_0_address1;
output   biases1_0_ce1;
input  [63:0] biases1_0_q1;
output  [3:0] biases1_1_address0;
output   biases1_1_ce0;
output   biases1_1_we0;
output  [63:0] biases1_1_d0;
input  [63:0] biases1_1_q0;
output  [3:0] biases1_1_address1;
output   biases1_1_ce1;
input  [63:0] biases1_1_q1;
output  [3:0] biases1_2_address0;
output   biases1_2_ce0;
output   biases1_2_we0;
output  [63:0] biases1_2_d0;
input  [63:0] biases1_2_q0;
output  [3:0] biases1_2_address1;
output   biases1_2_ce1;
input  [63:0] biases1_2_q1;
output  [3:0] biases1_3_address0;
output   biases1_3_ce0;
output   biases1_3_we0;
output  [63:0] biases1_3_d0;
input  [63:0] biases1_3_q0;
output  [3:0] biases1_3_address1;
output   biases1_3_ce1;
input  [63:0] biases1_3_q1;
output  [3:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [3:0] biases2_0_address1;
output   biases2_0_ce1;
input  [63:0] biases2_0_q1;
output  [3:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [3:0] biases2_1_address1;
output   biases2_1_ce1;
input  [63:0] biases2_1_q1;
output  [3:0] biases2_2_address0;
output   biases2_2_ce0;
output   biases2_2_we0;
output  [63:0] biases2_2_d0;
input  [63:0] biases2_2_q0;
output  [3:0] biases2_2_address1;
output   biases2_2_ce1;
input  [63:0] biases2_2_q1;
output  [3:0] biases2_3_address0;
output   biases2_3_ce0;
output   biases2_3_we0;
output  [63:0] biases2_3_d0;
input  [63:0] biases2_3_q0;
output  [3:0] biases2_3_address1;
output   biases2_3_ce1;
input  [63:0] biases2_3_q1;
output  [1:0] biases3_address0;
output   biases3_ce0;
output   biases3_we0;
output  [63:0] biases3_d0;
input  [63:0] biases3_q0;
output  [1:0] biases3_address1;
output   biases3_ce1;
input  [63:0] biases3_q1;
output  [3:0] d_biases1_0_address0;
output   d_biases1_0_ce0;
input  [63:0] d_biases1_0_q0;
output  [3:0] d_biases1_1_address0;
output   d_biases1_1_ce0;
input  [63:0] d_biases1_1_q0;
output  [3:0] d_biases1_2_address0;
output   d_biases1_2_ce0;
input  [63:0] d_biases1_2_q0;
output  [3:0] d_biases1_3_address0;
output   d_biases1_3_ce0;
input  [63:0] d_biases1_3_q0;
output  [3:0] d_biases2_0_address0;
output   d_biases2_0_ce0;
input  [63:0] d_biases2_0_q0;
output  [3:0] d_biases2_1_address0;
output   d_biases2_1_ce0;
input  [63:0] d_biases2_1_q0;
output  [3:0] d_biases2_2_address0;
output   d_biases2_2_ce0;
input  [63:0] d_biases2_2_q0;
output  [3:0] d_biases2_3_address0;
output   d_biases2_3_ce0;
input  [63:0] d_biases2_3_q0;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
output  [63:0] grp_fu_3064_p_din0;
output  [63:0] grp_fu_3064_p_din1;
output  [1:0] grp_fu_3064_p_opcode;
input  [63:0] grp_fu_3064_p_dout0;
output   grp_fu_3064_p_ce;
output  [63:0] grp_fu_3096_p_din0;
output  [63:0] grp_fu_3096_p_din1;
input  [63:0] grp_fu_3096_p_dout0;
output   grp_fu_3096_p_ce;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
output  [1:0] grp_fu_3076_p_opcode;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
output  [63:0] grp_fu_3108_p_din0;
output  [63:0] grp_fu_3108_p_din1;
input  [63:0] grp_fu_3108_p_dout0;
output   grp_fu_3108_p_ce;
output  [63:0] grp_fu_3128_p_din0;
output  [63:0] grp_fu_3128_p_din1;
input  [63:0] grp_fu_3128_p_dout0;
output   grp_fu_3128_p_ce;
output  [63:0] grp_fu_3068_p_din0;
output  [63:0] grp_fu_3068_p_din1;
output  [1:0] grp_fu_3068_p_opcode;
input  [63:0] grp_fu_3068_p_dout0;
output   grp_fu_3068_p_ce;
output  [63:0] grp_fu_3100_p_din0;
output  [63:0] grp_fu_3100_p_din1;
input  [63:0] grp_fu_3100_p_dout0;
output   grp_fu_3100_p_ce;
output  [63:0] grp_fu_3080_p_din0;
output  [63:0] grp_fu_3080_p_din1;
output  [1:0] grp_fu_3080_p_opcode;
input  [63:0] grp_fu_3080_p_dout0;
output   grp_fu_3080_p_ce;
output  [63:0] grp_fu_3112_p_din0;
output  [63:0] grp_fu_3112_p_din1;
input  [63:0] grp_fu_3112_p_dout0;
output   grp_fu_3112_p_ce;
output  [63:0] grp_fu_3084_p_din0;
output  [63:0] grp_fu_3084_p_din1;
output  [1:0] grp_fu_3084_p_opcode;
input  [63:0] grp_fu_3084_p_dout0;
output   grp_fu_3084_p_ce;
output  [63:0] grp_fu_3116_p_din0;
output  [63:0] grp_fu_3116_p_din1;
input  [63:0] grp_fu_3116_p_dout0;
output   grp_fu_3116_p_ce;
output  [63:0] grp_fu_3072_p_din0;
output  [63:0] grp_fu_3072_p_din1;
output  [1:0] grp_fu_3072_p_opcode;
input  [63:0] grp_fu_3072_p_dout0;
output   grp_fu_3072_p_ce;
output  [63:0] grp_fu_3104_p_din0;
output  [63:0] grp_fu_3104_p_din1;
input  [63:0] grp_fu_3104_p_dout0;
output   grp_fu_3104_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] weights1_0_address0;
reg weights1_0_ce0;
reg weights1_0_we0;
reg[63:0] weights1_0_d0;
reg weights1_0_ce1;
reg[7:0] weights1_1_address0;
reg weights1_1_ce0;
reg weights1_1_we0;
reg[63:0] weights1_1_d0;
reg weights1_1_ce1;
reg[7:0] weights1_2_address0;
reg weights1_2_ce0;
reg weights1_2_we0;
reg[63:0] weights1_2_d0;
reg weights1_2_ce1;
reg[7:0] weights1_3_address0;
reg weights1_3_ce0;
reg weights1_3_we0;
reg[63:0] weights1_3_d0;
reg weights1_3_ce1;
reg[9:0] weights2_0_address0;
reg weights2_0_ce0;
reg weights2_0_we0;
reg[63:0] weights2_0_d0;
reg weights2_0_ce1;
reg[9:0] weights2_1_address0;
reg weights2_1_ce0;
reg weights2_1_we0;
reg[63:0] weights2_1_d0;
reg weights2_1_ce1;
reg[9:0] weights2_2_address0;
reg weights2_2_ce0;
reg weights2_2_we0;
reg[63:0] weights2_2_d0;
reg weights2_2_ce1;
reg[9:0] weights2_3_address0;
reg weights2_3_ce0;
reg weights2_3_we0;
reg[63:0] weights2_3_d0;
reg weights2_3_ce1;
reg[5:0] weights3_0_address0;
reg weights3_0_ce0;
reg weights3_0_we0;
reg[63:0] weights3_0_d0;
reg weights3_0_ce1;
reg[5:0] weights3_1_address0;
reg weights3_1_ce0;
reg weights3_1_we0;
reg[63:0] weights3_1_d0;
reg weights3_1_ce1;
reg[5:0] weights3_2_address0;
reg weights3_2_ce0;
reg weights3_2_we0;
reg[63:0] weights3_2_d0;
reg weights3_2_ce1;
reg[5:0] weights3_3_address0;
reg weights3_3_ce0;
reg weights3_3_we0;
reg[63:0] weights3_3_d0;
reg weights3_3_ce1;
reg[3:0] biases1_0_address0;
reg biases1_0_ce0;
reg biases1_0_we0;
reg[63:0] biases1_0_d0;
reg biases1_0_ce1;
reg[3:0] biases1_1_address0;
reg biases1_1_ce0;
reg biases1_1_we0;
reg[63:0] biases1_1_d0;
reg biases1_1_ce1;
reg[3:0] biases1_2_address0;
reg biases1_2_ce0;
reg biases1_2_we0;
reg[63:0] biases1_2_d0;
reg biases1_2_ce1;
reg[3:0] biases1_3_address0;
reg biases1_3_ce0;
reg biases1_3_we0;
reg[63:0] biases1_3_d0;
reg biases1_3_ce1;
reg[3:0] biases2_0_address0;
reg biases2_0_ce0;
reg biases2_0_we0;
reg[63:0] biases2_0_d0;
reg biases2_0_ce1;
reg[3:0] biases2_1_address0;
reg biases2_1_ce0;
reg biases2_1_we0;
reg[63:0] biases2_1_d0;
reg biases2_1_ce1;
reg[3:0] biases2_2_address0;
reg biases2_2_ce0;
reg biases2_2_we0;
reg[63:0] biases2_2_d0;
reg biases2_2_ce1;
reg[3:0] biases2_3_address0;
reg biases2_3_ce0;
reg biases2_3_we0;
reg[63:0] biases2_3_d0;
reg biases2_3_ce1;
reg[1:0] biases3_address0;
reg biases3_ce0;
reg biases3_we0;
reg[63:0] biases3_d0;
reg biases3_ce1;
(* fsm_encoding = "none" *) reg   [59:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_360_p2;
reg   [63:0] norm_1_reg_489;
wire    ap_CS_fsm_state59;
wire   [63:0] grp_fu_366_p2;
reg   [63:0] bias_norm_reg_494;
wire   [63:0] grp_fu_372_p2;
reg   [63:0] norm_reg_499;
wire   [63:0] grp_fu_378_p2;
reg   [63:0] bias_norm_3_reg_504;
wire   [63:0] grp_fu_384_p2;
reg   [63:0] norm_3_reg_509;
wire   [63:0] grp_fu_390_p2;
reg   [63:0] bias_norm_4_reg_514;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_ready;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_0_ce0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_1_ce0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_2_ce0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_3_ce0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_norm_2_out;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_norm_2_out_ap_vld;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_din1;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_opcode;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_ce;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_din1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_ce;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_ready;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_0_ce0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_1_ce0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_2_ce0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_3_ce0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_bias_norm_1_out;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_bias_norm_1_out_ap_vld;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_din1;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_opcode;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_ce;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_din1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_ce;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_ready;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_0_ce0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_1_ce0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_2_ce0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_3_ce0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_norm_4_out;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_norm_4_out_ap_vld;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_din1;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_opcode;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_ce;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_din1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_ce;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_ready;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_0_ce0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_1_ce0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_2_ce0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_3_ce0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_bias_norm_4_out;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_bias_norm_4_out_ap_vld;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_din1;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_opcode;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_ce;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_din1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_ce;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_ready;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_0_ce0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_1_ce0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_2_ce0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_3_ce0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_norm_7_out;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_norm_7_out_ap_vld;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_din1;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_opcode;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_ce;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_din1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_ce;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_ready;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_d0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_bias_norm_7_out;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_bias_norm_7_out_ap_vld;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_din1;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_opcode;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_ce;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_din1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_ce;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_ready;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_ce1;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_ce1;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_ce1;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_d0;
wire   [7:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_ce1;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_din0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_din1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_ce;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_ready;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_ce1;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_ce1;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_ce1;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_ce1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_ready;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_ce1;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_ce1;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_ce1;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_d0;
wire   [9:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_ce1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_ready;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_ce1;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_ce1;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_ce1;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_d0;
wire   [3:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_ce1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_ready;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_ce1;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_ce1;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_ce1;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_address0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_ce0;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_d0;
wire   [5:0] grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_address1;
wire    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_ce1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_done;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_idle;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_ready;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_address0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_ce0;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_we0;
wire   [63:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_d0;
wire   [1:0] grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_address1;
wire    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_ce1;
reg    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start_reg;
wire    ap_CS_fsm_state60;
reg    grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start_reg;
reg    grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_fu_519_ce;
reg    grp_fu_523_ce;
reg    grp_fu_527_ce;
reg    grp_fu_531_ce;
reg    grp_fu_535_ce;
reg    grp_fu_539_ce;
reg    grp_fu_543_ce;
reg    grp_fu_547_ce;
reg    grp_fu_551_ce;
reg    grp_fu_555_ce;
reg    grp_fu_559_ce;
reg    grp_fu_563_ce;
reg    grp_fu_567_ce;
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
#0 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start_reg = 1'b0;
#0 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start_reg = 1'b0;
end
backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_ready),.weights1_3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_address0),.weights1_3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_ce0),.weights1_3_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_we0),.weights1_3_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_d0),.weights1_3_q0(weights1_3_q0),.weights1_2_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_address0),.weights1_2_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_ce0),.weights1_2_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_we0),.weights1_2_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_d0),.weights1_2_q0(weights1_2_q0),.weights1_1_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_address0),.weights1_1_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_ce0),.weights1_1_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_we0),.weights1_1_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_d0),.weights1_1_q0(weights1_1_q0),.weights1_0_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_address0),.weights1_0_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_ce0),.weights1_0_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_we0),.weights1_0_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_d0),.weights1_0_q0(weights1_0_q0),.d_weights1_0_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_0_address0),.d_weights1_0_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_0_ce0),.d_weights1_0_q0(d_weights1_0_q0),.d_weights1_1_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_1_address0),.d_weights1_1_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_1_ce0),.d_weights1_1_q0(d_weights1_1_q0),.d_weights1_2_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_2_address0),.d_weights1_2_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_2_ce0),.d_weights1_2_q0(d_weights1_2_q0),.d_weights1_3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_3_address0),.d_weights1_3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_3_ce0),.d_weights1_3_q0(d_weights1_3_q0),.norm_2_out(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_norm_2_out),.norm_2_out_ap_vld(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_norm_2_out_ap_vld),.grp_fu_519_p_din0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_din0),.grp_fu_519_p_din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_din1),.grp_fu_519_p_opcode(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_opcode),.grp_fu_519_p_dout0(grp_fu_3064_p_dout0),.grp_fu_519_p_ce(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_ce),.grp_fu_523_p_din0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_din0),.grp_fu_523_p_din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_din1),.grp_fu_523_p_dout0(grp_fu_3096_p_dout0),.grp_fu_523_p_ce(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_ce));
backprop_update_weights_68_69_1_Pipeline_up_weight_loop2 grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_ready),.biases1_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_address0),.biases1_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_ce0),.biases1_3_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_we0),.biases1_3_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_d0),.biases1_3_q0(biases1_3_q0),.biases1_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_address0),.biases1_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_ce0),.biases1_2_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_we0),.biases1_2_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_d0),.biases1_2_q0(biases1_2_q0),.biases1_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_address0),.biases1_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_ce0),.biases1_1_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_we0),.biases1_1_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_d0),.biases1_1_q0(biases1_1_q0),.biases1_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_address0),.biases1_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_ce0),.biases1_0_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_we0),.biases1_0_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_d0),.biases1_0_q0(biases1_0_q0),.d_biases1_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_0_address0),.d_biases1_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_0_ce0),.d_biases1_0_q0(d_biases1_0_q0),.d_biases1_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_1_address0),.d_biases1_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_1_ce0),.d_biases1_1_q0(d_biases1_1_q0),.d_biases1_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_2_address0),.d_biases1_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_2_ce0),.d_biases1_2_q0(d_biases1_2_q0),.d_biases1_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_3_address0),.d_biases1_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_3_ce0),.d_biases1_3_q0(d_biases1_3_q0),.bias_norm_1_out(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_bias_norm_1_out),.bias_norm_1_out_ap_vld(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_bias_norm_1_out_ap_vld),.grp_fu_527_p_din0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_din0),.grp_fu_527_p_din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_din1),.grp_fu_527_p_opcode(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_opcode),.grp_fu_527_p_dout0(grp_fu_3076_p_dout0),.grp_fu_527_p_ce(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_ce),.grp_fu_531_p_din0(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_din0),.grp_fu_531_p_din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_din1),.grp_fu_531_p_dout0(grp_fu_3108_p_dout0),.grp_fu_531_p_ce(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_ce));
backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_ready),.weights2_3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_address0),.weights2_3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_ce0),.weights2_3_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_we0),.weights2_3_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_d0),.weights2_3_q0(weights2_3_q0),.weights2_2_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_address0),.weights2_2_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_ce0),.weights2_2_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_we0),.weights2_2_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_d0),.weights2_2_q0(weights2_2_q0),.weights2_1_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_address0),.weights2_1_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_ce0),.weights2_1_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_we0),.weights2_1_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_d0),.weights2_1_q0(weights2_1_q0),.weights2_0_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_address0),.weights2_0_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_ce0),.weights2_0_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_we0),.weights2_0_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_d0),.weights2_0_q0(weights2_0_q0),.d_weights2_0_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_0_address0),.d_weights2_0_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_0_ce0),.d_weights2_0_q0(d_weights2_0_q0),.d_weights2_1_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_1_address0),.d_weights2_1_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_1_ce0),.d_weights2_1_q0(d_weights2_1_q0),.d_weights2_2_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_2_address0),.d_weights2_2_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_2_ce0),.d_weights2_2_q0(d_weights2_2_q0),.d_weights2_3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_3_address0),.d_weights2_3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_3_ce0),.d_weights2_3_q0(d_weights2_3_q0),.norm_4_out(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_norm_4_out),.norm_4_out_ap_vld(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_norm_4_out_ap_vld),.grp_fu_539_p_din0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_din0),.grp_fu_539_p_din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_din1),.grp_fu_539_p_opcode(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_opcode),.grp_fu_539_p_dout0(grp_fu_3068_p_dout0),.grp_fu_539_p_ce(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_ce),.grp_fu_543_p_din0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_din0),.grp_fu_543_p_din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_din1),.grp_fu_543_p_dout0(grp_fu_3100_p_dout0),.grp_fu_543_p_ce(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_ce));
backprop_update_weights_68_69_1_Pipeline_up_weight_loop6 grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_ready),.biases2_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_address0),.biases2_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_ce0),.biases2_3_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_we0),.biases2_3_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_d0),.biases2_3_q0(biases2_3_q0),.biases2_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_address0),.biases2_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_ce0),.biases2_2_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_we0),.biases2_2_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_d0),.biases2_2_q0(biases2_2_q0),.biases2_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_address0),.biases2_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_ce0),.biases2_1_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_we0),.biases2_1_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_d0),.biases2_1_q0(biases2_1_q0),.biases2_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_address0),.biases2_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_ce0),.biases2_0_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_we0),.biases2_0_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_d0),.biases2_0_q0(biases2_0_q0),.d_biases2_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_0_address0),.d_biases2_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_0_ce0),.d_biases2_0_q0(d_biases2_0_q0),.d_biases2_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_1_address0),.d_biases2_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_1_ce0),.d_biases2_1_q0(d_biases2_1_q0),.d_biases2_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_2_address0),.d_biases2_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_2_ce0),.d_biases2_2_q0(d_biases2_2_q0),.d_biases2_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_3_address0),.d_biases2_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_3_ce0),.d_biases2_3_q0(d_biases2_3_q0),.bias_norm_4_out(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_bias_norm_4_out),.bias_norm_4_out_ap_vld(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_bias_norm_4_out_ap_vld),.grp_fu_547_p_din0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_din0),.grp_fu_547_p_din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_din1),.grp_fu_547_p_opcode(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_opcode),.grp_fu_547_p_dout0(grp_fu_3080_p_dout0),.grp_fu_547_p_ce(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_ce),.grp_fu_551_p_din0(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_din0),.grp_fu_551_p_din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_din1),.grp_fu_551_p_dout0(grp_fu_3112_p_dout0),.grp_fu_551_p_ce(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_ce));
backprop_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5 grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_ready),.weights3_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_address0),.weights3_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_ce0),.weights3_3_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_we0),.weights3_3_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_d0),.weights3_3_q0(weights3_3_q0),.weights3_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_address0),.weights3_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_ce0),.weights3_2_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_we0),.weights3_2_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_d0),.weights3_2_q0(weights3_2_q0),.weights3_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_address0),.weights3_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_ce0),.weights3_1_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_we0),.weights3_1_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_d0),.weights3_1_q0(weights3_1_q0),.weights3_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_address0),.weights3_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_ce0),.weights3_0_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_we0),.weights3_0_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_d0),.weights3_0_q0(weights3_0_q0),.d_weights3_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_0_address0),.d_weights3_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_0_ce0),.d_weights3_0_q0(d_weights3_0_q0),.d_weights3_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_1_address0),.d_weights3_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_1_ce0),.d_weights3_1_q0(d_weights3_1_q0),.d_weights3_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_2_address0),.d_weights3_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_2_ce0),.d_weights3_2_q0(d_weights3_2_q0),.d_weights3_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_3_address0),.d_weights3_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_3_ce0),.d_weights3_3_q0(d_weights3_3_q0),.norm_7_out(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_norm_7_out),.norm_7_out_ap_vld(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_norm_7_out_ap_vld),.grp_fu_555_p_din0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_din0),.grp_fu_555_p_din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_din1),.grp_fu_555_p_opcode(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_opcode),.grp_fu_555_p_dout0(grp_fu_3084_p_dout0),.grp_fu_555_p_ce(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_ce),.grp_fu_559_p_din0(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_din0),.grp_fu_559_p_din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_din1),.grp_fu_559_p_dout0(grp_fu_3116_p_dout0),.grp_fu_559_p_ce(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_ce));
backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_ready),.p_read(p_read),.p_read1(p_read1),.p_read2(p_read2),.biases3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_address0),.biases3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_ce0),.biases3_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_we0),.biases3_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_d0),.biases3_q0(biases3_q0),.bias_norm_7_out(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_bias_norm_7_out),.bias_norm_7_out_ap_vld(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_bias_norm_7_out_ap_vld),.grp_fu_563_p_din0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_din0),.grp_fu_563_p_din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_din1),.grp_fu_563_p_opcode(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_opcode),.grp_fu_563_p_dout0(grp_fu_3072_p_dout0),.grp_fu_563_p_ce(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_ce),.grp_fu_567_p_din0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_din0),.grp_fu_567_p_din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_din1),.grp_fu_567_p_dout0(grp_fu_3104_p_dout0),.grp_fu_567_p_ce(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_ce));
backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_ready),.weights1_3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_address0),.weights1_3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_ce0),.weights1_3_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_we0),.weights1_3_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_d0),.weights1_3_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_address1),.weights1_3_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_ce1),.weights1_3_q1(weights1_3_q1),.weights1_2_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_address0),.weights1_2_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_ce0),.weights1_2_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_we0),.weights1_2_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_d0),.weights1_2_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_address1),.weights1_2_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_ce1),.weights1_2_q1(weights1_2_q1),.weights1_1_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_address0),.weights1_1_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_ce0),.weights1_1_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_we0),.weights1_1_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_d0),.weights1_1_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_address1),.weights1_1_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_ce1),.weights1_1_q1(weights1_1_q1),.weights1_0_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_address0),.weights1_0_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_ce0),.weights1_0_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_we0),.weights1_0_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_d0),.weights1_0_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_address1),.weights1_0_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_ce1),.weights1_0_q1(weights1_0_q1),.norm_1(norm_1_reg_489),.grp_fu_535_p_din0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_din0),.grp_fu_535_p_din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_din1),.grp_fu_535_p_dout0(grp_fu_3128_p_dout0),.grp_fu_535_p_ce(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_ce));
backprop_update_weights_68_69_1_Pipeline_up_weight_loop4 grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_ready),.biases1_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_address0),.biases1_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_ce0),.biases1_3_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_we0),.biases1_3_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_d0),.biases1_3_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_address1),.biases1_3_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_ce1),.biases1_3_q1(biases1_3_q1),.biases1_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_address0),.biases1_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_ce0),.biases1_2_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_we0),.biases1_2_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_d0),.biases1_2_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_address1),.biases1_2_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_ce1),.biases1_2_q1(biases1_2_q1),.biases1_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_address0),.biases1_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_ce0),.biases1_1_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_we0),.biases1_1_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_d0),.biases1_1_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_address1),.biases1_1_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_ce1),.biases1_1_q1(biases1_1_q1),.biases1_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_address0),.biases1_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_ce0),.biases1_0_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_we0),.biases1_0_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_d0),.biases1_0_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_address1),.biases1_0_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_ce1),.biases1_0_q1(biases1_0_q1),.bias_norm(bias_norm_reg_494));
backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_ready),.weights2_3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_address0),.weights2_3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_ce0),.weights2_3_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_we0),.weights2_3_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_d0),.weights2_3_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_address1),.weights2_3_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_ce1),.weights2_3_q1(weights2_3_q1),.weights2_2_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_address0),.weights2_2_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_ce0),.weights2_2_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_we0),.weights2_2_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_d0),.weights2_2_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_address1),.weights2_2_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_ce1),.weights2_2_q1(weights2_2_q1),.weights2_1_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_address0),.weights2_1_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_ce0),.weights2_1_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_we0),.weights2_1_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_d0),.weights2_1_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_address1),.weights2_1_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.weights2_0_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_address0),.weights2_0_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_ce0),.weights2_0_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_we0),.weights2_0_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_d0),.weights2_0_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_address1),.weights2_0_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.norm_5(norm_reg_499));
backprop_update_weights_68_69_1_Pipeline_up_weight_loop8 grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_ready),.biases2_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_address0),.biases2_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_ce0),.biases2_3_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_we0),.biases2_3_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_d0),.biases2_3_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_address1),.biases2_3_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_ce1),.biases2_3_q1(biases2_3_q1),.biases2_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_address0),.biases2_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_ce0),.biases2_2_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_we0),.biases2_2_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_d0),.biases2_2_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_address1),.biases2_2_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_ce1),.biases2_2_q1(biases2_2_q1),.biases2_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_address0),.biases2_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_ce0),.biases2_1_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_we0),.biases2_1_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_d0),.biases2_1_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_address1),.biases2_1_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_ce1),.biases2_1_q1(biases2_1_q1),.biases2_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_address0),.biases2_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_ce0),.biases2_0_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_we0),.biases2_0_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_d0),.biases2_0_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_address1),.biases2_0_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_ce1),.biases2_0_q1(biases2_0_q1),.bias_norm_3(bias_norm_3_reg_504));
backprop_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7 grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_ready),.weights3_3_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_address0),.weights3_3_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_ce0),.weights3_3_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_we0),.weights3_3_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_d0),.weights3_3_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_address1),.weights3_3_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_ce1),.weights3_3_q1(weights3_3_q1),.weights3_2_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_address0),.weights3_2_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_ce0),.weights3_2_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_we0),.weights3_2_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_d0),.weights3_2_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_address1),.weights3_2_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_ce1),.weights3_2_q1(weights3_2_q1),.weights3_1_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_address0),.weights3_1_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_ce0),.weights3_1_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_we0),.weights3_1_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_d0),.weights3_1_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_address1),.weights3_1_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.weights3_0_address0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_address0),.weights3_0_ce0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_ce0),.weights3_0_we0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_we0),.weights3_0_d0(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_d0),.weights3_0_address1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_address1),.weights3_0_ce1(grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.norm_8(norm_3_reg_509));
backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8 grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start),.ap_done(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_done),.ap_idle(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_idle),.ap_ready(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_ready),.biases3_address0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_address0),.biases3_ce0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_ce0),.biases3_we0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_we0),.biases3_d0(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_d0),.biases3_address1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_address1),.biases3_ce1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_ce1),.biases3_q1(biases3_q1),.bias_norm_6(bias_norm_4_reg_514));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U899(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_norm_2_out),.ce(1'b1),.dout(grp_fu_360_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U900(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_bias_norm_1_out),.ce(1'b1),.dout(grp_fu_366_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U901(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_norm_4_out),.ce(1'b1),.dout(grp_fu_372_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U902(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_bias_norm_4_out),.ce(1'b1),.dout(grp_fu_378_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U903(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_norm_7_out),.ce(1'b1),.dout(grp_fu_384_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U904(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_bias_norm_7_out),.ce(1'b1),.dout(grp_fu_390_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_ready == 1'b1)) begin
            grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        bias_norm_3_reg_504 <= grp_fu_378_p2;
        bias_norm_4_reg_514 <= grp_fu_390_p2;
        bias_norm_reg_494 <= grp_fu_366_p2;
        norm_1_reg_489 <= grp_fu_360_p2;
        norm_3_reg_509 <= grp_fu_384_p2;
        norm_reg_499 <= grp_fu_372_p2;
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
    if ((((1'b1 == ap_CS_fsm_state60) & (1'b0 == ap_block_state60_on_subcall_done)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state60) & (1'b0 == ap_block_state60_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_address0;
    end else begin
        biases1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_ce0;
    end else begin
        biases1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_0_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_ce1;
    end else begin
        biases1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_0_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_0_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_d0;
    end else begin
        biases1_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_0_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_0_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_0_we0;
    end else begin
        biases1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_address0;
    end else begin
        biases1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_ce0;
    end else begin
        biases1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_1_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_ce1;
    end else begin
        biases1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_1_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_1_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_d0;
    end else begin
        biases1_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_1_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_1_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_1_we0;
    end else begin
        biases1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_address0;
    end else begin
        biases1_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_ce0;
    end else begin
        biases1_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_2_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_ce1;
    end else begin
        biases1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_2_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_2_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_d0;
    end else begin
        biases1_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_2_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_2_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_2_we0;
    end else begin
        biases1_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_address0;
    end else begin
        biases1_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_ce0;
    end else begin
        biases1_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_3_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_ce1;
    end else begin
        biases1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_3_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_3_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_d0;
    end else begin
        biases1_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_3_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_3_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_biases1_3_we0;
    end else begin
        biases1_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_address0;
    end else begin
        biases2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_ce0;
    end else begin
        biases2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_0_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_ce1;
    end else begin
        biases2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_0_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_0_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_d0;
    end else begin
        biases2_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_0_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_0_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_0_we0;
    end else begin
        biases2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_address0;
    end else begin
        biases2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_ce0;
    end else begin
        biases2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_1_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_ce1;
    end else begin
        biases2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_1_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_1_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_d0;
    end else begin
        biases2_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_1_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_1_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_1_we0;
    end else begin
        biases2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_address0;
    end else begin
        biases2_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_ce0;
    end else begin
        biases2_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_2_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_ce1;
    end else begin
        biases2_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_2_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_2_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_d0;
    end else begin
        biases2_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_2_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_2_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_2_we0;
    end else begin
        biases2_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_address0;
    end else begin
        biases2_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_ce0;
    end else begin
        biases2_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_3_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_ce1;
    end else begin
        biases2_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_3_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_3_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_d0;
    end else begin
        biases2_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_3_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_3_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_biases2_3_we0;
    end else begin
        biases2_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_d0;
    end else begin
        biases3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_519_ce = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_ce;
    end else begin
        grp_fu_519_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_523_ce = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_ce;
    end else begin
        grp_fu_523_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_527_ce = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_ce;
    end else begin
        grp_fu_527_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_531_ce = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_ce;
    end else begin
        grp_fu_531_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_535_ce = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_ce;
    end else begin
        grp_fu_535_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_539_ce = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_ce;
    end else begin
        grp_fu_539_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_543_ce = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_ce;
    end else begin
        grp_fu_543_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_547_ce = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_ce;
    end else begin
        grp_fu_547_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_551_ce = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_ce;
    end else begin
        grp_fu_551_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_555_ce = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_ce;
    end else begin
        grp_fu_555_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_559_ce = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_ce;
    end else begin
        grp_fu_559_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_563_ce = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_ce;
    end else begin
        grp_fu_563_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_567_ce = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_ce;
    end else begin
        grp_fu_567_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_0_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_0_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_address0;
    end else begin
        weights1_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_0_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_0_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_ce0;
    end else begin
        weights1_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_0_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_ce1;
    end else begin
        weights1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_0_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_0_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_d0;
    end else begin
        weights1_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_0_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_0_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_0_we0;
    end else begin
        weights1_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_1_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_1_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_address0;
    end else begin
        weights1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_1_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_1_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_ce0;
    end else begin
        weights1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_1_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_ce1;
    end else begin
        weights1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_1_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_1_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_d0;
    end else begin
        weights1_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_1_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_1_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_1_we0;
    end else begin
        weights1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_2_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_2_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_address0;
    end else begin
        weights1_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_2_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_2_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_ce0;
    end else begin
        weights1_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_2_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_ce1;
    end else begin
        weights1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_2_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_2_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_d0;
    end else begin
        weights1_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_2_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_2_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_2_we0;
    end else begin
        weights1_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_address0;
    end else begin
        weights1_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_ce0;
    end else begin
        weights1_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_3_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_ce1;
    end else begin
        weights1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_3_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_3_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_d0;
    end else begin
        weights1_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_3_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_3_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_weights1_3_we0;
    end else begin
        weights1_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_0_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_0_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_address0;
    end else begin
        weights2_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_0_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_0_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_ce0;
    end else begin
        weights2_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_0_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_ce1;
    end else begin
        weights2_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_0_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_0_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_d0;
    end else begin
        weights2_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_0_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_0_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_0_we0;
    end else begin
        weights2_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_1_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_1_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_address0;
    end else begin
        weights2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_1_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_1_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_ce0;
    end else begin
        weights2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_1_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_ce1;
    end else begin
        weights2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_1_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_1_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_d0;
    end else begin
        weights2_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_1_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_1_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_1_we0;
    end else begin
        weights2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_2_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_2_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_address0;
    end else begin
        weights2_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_2_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_2_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_ce0;
    end else begin
        weights2_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_2_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_ce1;
    end else begin
        weights2_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_2_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_2_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_d0;
    end else begin
        weights2_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_2_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_2_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_2_we0;
    end else begin
        weights2_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_address0;
    end else begin
        weights2_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_ce0;
    end else begin
        weights2_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_3_ce1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_ce1;
    end else begin
        weights2_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_3_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_3_d0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_d0;
    end else begin
        weights2_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_3_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_3_we0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_weights2_3_we0;
    end else begin
        weights2_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_address0;
    end else begin
        weights3_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_ce0;
    end else begin
        weights3_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_0_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_ce1;
    end else begin
        weights3_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_0_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_d0;
    end else begin
        weights3_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_0_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_0_we0;
    end else begin
        weights3_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_address0;
    end else begin
        weights3_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_ce0;
    end else begin
        weights3_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_1_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_ce1;
    end else begin
        weights3_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_1_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_d0;
    end else begin
        weights3_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_1_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_1_we0;
    end else begin
        weights3_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_address0;
    end else begin
        weights3_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_ce0;
    end else begin
        weights3_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_2_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_ce1;
    end else begin
        weights3_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_2_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_2_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_d0;
    end else begin
        weights3_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_2_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_2_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_2_we0;
    end else begin
        weights3_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_address0;
    end else begin
        weights3_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_ce0;
    end else begin
        weights3_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_3_ce1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_ce1;
    end else begin
        weights3_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_3_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_3_d0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_d0;
    end else begin
        weights3_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_3_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_3_we0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_weights3_3_we0;
    end else begin
        weights3_3_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
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
            if (((1'b1 == ap_CS_fsm_state60) & (1'b0 == ap_block_state60_on_subcall_done))) begin
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
    ap_block_state2_on_subcall_done = ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_done == 1'b0));
end
always @ (*) begin
    ap_block_state60_on_subcall_done = ((grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_done == 1'b0) | (grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_done == 1'b0));
end
assign biases1_0_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_0_address1;
assign biases1_1_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_1_address1;
assign biases1_2_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_2_address1;
assign biases1_3_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_biases1_3_address1;
assign biases2_0_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_0_address1;
assign biases2_1_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_1_address1;
assign biases2_2_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_2_address1;
assign biases2_3_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_biases2_3_address1;
assign biases3_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_biases3_address1;
assign d_biases1_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_0_address0;
assign d_biases1_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_0_ce0;
assign d_biases1_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_1_address0;
assign d_biases1_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_1_ce0;
assign d_biases1_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_2_address0;
assign d_biases1_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_2_ce0;
assign d_biases1_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_3_address0;
assign d_biases1_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_d_biases1_3_ce0;
assign d_biases2_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_0_address0;
assign d_biases2_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_0_ce0;
assign d_biases2_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_1_address0;
assign d_biases2_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_1_ce0;
assign d_biases2_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_2_address0;
assign d_biases2_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_2_ce0;
assign d_biases2_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_3_address0;
assign d_biases2_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_d_biases2_3_ce0;
assign d_weights1_0_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_0_address0;
assign d_weights1_0_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_0_ce0;
assign d_weights1_1_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_1_address0;
assign d_weights1_1_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_1_ce0;
assign d_weights1_2_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_2_address0;
assign d_weights1_2_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_2_ce0;
assign d_weights1_3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_3_address0;
assign d_weights1_3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_d_weights1_3_ce0;
assign d_weights2_0_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_0_address0;
assign d_weights2_0_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_0_ce0;
assign d_weights2_1_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_1_address0;
assign d_weights2_1_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_1_ce0;
assign d_weights2_2_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_2_address0;
assign d_weights2_2_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_2_ce0;
assign d_weights2_3_address0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_3_address0;
assign d_weights2_3_ce0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_d_weights2_3_ce0;
assign d_weights3_0_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_0_address0;
assign d_weights3_0_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_0_ce0;
assign d_weights3_1_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_1_address0;
assign d_weights3_1_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_1_ce0;
assign d_weights3_2_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_2_address0;
assign d_weights3_2_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_2_ce0;
assign d_weights3_3_address0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_3_address0;
assign d_weights3_3_ce0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_d_weights3_3_ce0;
assign grp_fu_3064_p_ce = grp_fu_519_ce;
assign grp_fu_3064_p_din0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_din0;
assign grp_fu_3064_p_din1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_din1;
assign grp_fu_3064_p_opcode = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_519_p_opcode;
assign grp_fu_3068_p_ce = grp_fu_539_ce;
assign grp_fu_3068_p_din0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_din0;
assign grp_fu_3068_p_din1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_din1;
assign grp_fu_3068_p_opcode = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_539_p_opcode;
assign grp_fu_3072_p_ce = grp_fu_563_ce;
assign grp_fu_3072_p_din0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_din0;
assign grp_fu_3072_p_din1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_din1;
assign grp_fu_3072_p_opcode = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_563_p_opcode;
assign grp_fu_3076_p_ce = grp_fu_527_ce;
assign grp_fu_3076_p_din0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_din0;
assign grp_fu_3076_p_din1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_din1;
assign grp_fu_3076_p_opcode = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_527_p_opcode;
assign grp_fu_3080_p_ce = grp_fu_547_ce;
assign grp_fu_3080_p_din0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_din0;
assign grp_fu_3080_p_din1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_din1;
assign grp_fu_3080_p_opcode = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_547_p_opcode;
assign grp_fu_3084_p_ce = grp_fu_555_ce;
assign grp_fu_3084_p_din0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_din0;
assign grp_fu_3084_p_din1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_din1;
assign grp_fu_3084_p_opcode = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_555_p_opcode;
assign grp_fu_3096_p_ce = grp_fu_523_ce;
assign grp_fu_3096_p_din0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_din0;
assign grp_fu_3096_p_din1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_grp_fu_523_p_din1;
assign grp_fu_3100_p_ce = grp_fu_543_ce;
assign grp_fu_3100_p_din0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_din0;
assign grp_fu_3100_p_din1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_grp_fu_543_p_din1;
assign grp_fu_3104_p_ce = grp_fu_567_ce;
assign grp_fu_3104_p_din0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_din0;
assign grp_fu_3104_p_din1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_grp_fu_567_p_din1;
assign grp_fu_3108_p_ce = grp_fu_531_ce;
assign grp_fu_3108_p_din0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_din0;
assign grp_fu_3108_p_din1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_grp_fu_531_p_din1;
assign grp_fu_3112_p_ce = grp_fu_551_ce;
assign grp_fu_3112_p_din0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_din0;
assign grp_fu_3112_p_din1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_grp_fu_551_p_din1;
assign grp_fu_3116_p_ce = grp_fu_559_ce;
assign grp_fu_3116_p_din0 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_din0;
assign grp_fu_3116_p_din1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_grp_fu_559_p_din1;
assign grp_fu_3128_p_ce = grp_fu_535_ce;
assign grp_fu_3128_p_din0 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_din0;
assign grp_fu_3128_p_din1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_grp_fu_535_p_din1;
assign grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_170_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_212_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_184_6_fu_275_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_197_8_fu_353_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start = grp_update_weights_68_69_1_Pipeline_up_weight_loop2_fu_191_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start = grp_update_weights_68_69_1_Pipeline_up_weight_loop4_fu_301_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start = grp_update_weights_68_69_1_Pipeline_up_weight_loop6_fu_233_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start = grp_update_weights_68_69_1_Pipeline_up_weight_loop8_fu_327_ap_start_reg;
assign grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start = grp_update_weights_68_69_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_254_ap_start_reg;
assign weights1_0_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_0_address1;
assign weights1_1_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_1_address1;
assign weights1_2_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_2_address1;
assign weights1_3_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_288_weights1_3_address1;
assign weights2_0_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_0_address1;
assign weights2_1_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_1_address1;
assign weights2_2_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_2_address1;
assign weights2_3_address1 = grp_update_weights_68_69_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_314_weights2_3_address1;
assign weights3_0_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_0_address1;
assign weights3_1_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_1_address1;
assign weights3_2_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_2_address1;
assign weights3_3_address1 = grp_update_weights_68_69_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_340_weights3_3_address1;
endmodule 
