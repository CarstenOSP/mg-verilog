
module backprop_update_weights_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_0_address1,d_weights1_0_ce1,d_weights1_0_q1,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_1_address1,d_weights1_1_ce1,d_weights1_1_q1,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_2_address1,d_weights1_2_ce1,d_weights1_2_q1,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_3_address1,d_weights1_3_ce1,d_weights1_3_q1,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_4_address1,d_weights1_4_ce1,d_weights1_4_q1,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_5_address1,d_weights1_5_ce1,d_weights1_5_q1,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_6_address1,d_weights1_6_ce1,d_weights1_6_q1,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_7_address1,d_weights1_7_ce1,d_weights1_7_q1,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_0_address1,d_weights2_0_ce1,d_weights2_0_q1,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_1_address1,d_weights2_1_ce1,d_weights2_1_q1,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_2_address1,d_weights2_2_ce1,d_weights2_2_q1,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_3_address1,d_weights2_3_ce1,d_weights2_3_q1,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_4_address1,d_weights2_4_ce1,d_weights2_4_q1,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_5_address1,d_weights2_5_ce1,d_weights2_5_q1,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_6_address1,d_weights2_6_ce1,d_weights2_6_q1,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_7_address1,d_weights2_7_ce1,d_weights2_7_q1,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_8_address0,d_weights3_8_ce0,d_weights3_8_q0,d_weights3_9_address0,d_weights3_9_ce0,d_weights3_9_q0,d_weights3_10_address0,d_weights3_10_ce0,d_weights3_10_q0,d_weights3_11_address0,d_weights3_11_ce0,d_weights3_11_q0,d_weights3_12_address0,d_weights3_12_ce0,d_weights3_12_q0,d_weights3_13_address0,d_weights3_13_ce0,d_weights3_13_q0,d_weights3_14_address0,d_weights3_14_ce0,d_weights3_14_q0,d_weights3_15_address0,d_weights3_15_ce0,d_weights3_15_q0,d_weights3_16_address0,d_weights3_16_ce0,d_weights3_16_q0,d_weights3_17_address0,d_weights3_17_ce0,d_weights3_17_q0,d_weights3_18_address0,d_weights3_18_ce0,d_weights3_18_q0,d_weights3_19_address0,d_weights3_19_ce0,d_weights3_19_q0,d_weights3_20_address0,d_weights3_20_ce0,d_weights3_20_q0,d_weights3_21_address0,d_weights3_21_ce0,d_weights3_21_q0,d_weights3_22_address0,d_weights3_22_ce0,d_weights3_22_q0,d_weights3_23_address0,d_weights3_23_ce0,d_weights3_23_q0,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_we1,biases1_d1,biases1_q1,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases2_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,d_biases1_0_address0,d_biases1_0_ce0,d_biases1_0_q0,d_biases1_0_address1,d_biases1_0_ce1,d_biases1_0_q1,d_biases1_1_address0,d_biases1_1_ce0,d_biases1_1_q0,d_biases1_1_address1,d_biases1_1_ce1,d_biases1_1_q1,d_biases1_2_address0,d_biases1_2_ce0,d_biases1_2_q0,d_biases1_2_address1,d_biases1_2_ce1,d_biases1_2_q1,d_biases1_3_address0,d_biases1_3_ce0,d_biases1_3_q0,d_biases1_3_address1,d_biases1_3_ce1,d_biases1_3_q1,d_biases1_4_address0,d_biases1_4_ce0,d_biases1_4_q0,d_biases1_4_address1,d_biases1_4_ce1,d_biases1_4_q1,d_biases1_5_address0,d_biases1_5_ce0,d_biases1_5_q0,d_biases1_5_address1,d_biases1_5_ce1,d_biases1_5_q1,d_biases1_6_address0,d_biases1_6_ce0,d_biases1_6_q0,d_biases1_6_address1,d_biases1_6_ce1,d_biases1_6_q1,d_biases1_7_address0,d_biases1_7_ce0,d_biases1_7_q0,d_biases1_7_address1,d_biases1_7_ce1,d_biases1_7_q1,d_biases2_0_address0,d_biases2_0_ce0,d_biases2_0_q0,d_biases2_0_address1,d_biases2_0_ce1,d_biases2_0_q1,d_biases2_1_address0,d_biases2_1_ce0,d_biases2_1_q0,d_biases2_1_address1,d_biases2_1_ce1,d_biases2_1_q1,d_biases2_2_address0,d_biases2_2_ce0,d_biases2_2_q0,d_biases2_2_address1,d_biases2_2_ce1,d_biases2_2_q1,d_biases2_3_address0,d_biases2_3_ce0,d_biases2_3_q0,d_biases2_3_address1,d_biases2_3_ce1,d_biases2_3_q1,d_biases2_4_address0,d_biases2_4_ce0,d_biases2_4_q0,d_biases2_4_address1,d_biases2_4_ce1,d_biases2_4_q1,d_biases2_5_address0,d_biases2_5_ce0,d_biases2_5_q0,d_biases2_5_address1,d_biases2_5_ce1,d_biases2_5_q1,d_biases2_6_address0,d_biases2_6_ce0,d_biases2_6_q0,d_biases2_6_address1,d_biases2_6_ce1,d_biases2_6_q1,d_biases2_7_address0,d_biases2_7_ce0,d_biases2_7_q0,d_biases2_7_address1,d_biases2_7_ce1,d_biases2_7_q1,p_read,p_read1,p_read2,grp_fu_3239_p_din0,grp_fu_3239_p_din1,grp_fu_3239_p_opcode,grp_fu_3239_p_dout0,grp_fu_3239_p_ce,grp_fu_3243_p_din0,grp_fu_3243_p_din1,grp_fu_3243_p_opcode,grp_fu_3243_p_dout0,grp_fu_3243_p_ce,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3255_p_din0,grp_fu_3255_p_din1,grp_fu_3255_p_dout0,grp_fu_3255_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3299_p_din0,grp_fu_3299_p_din1,grp_fu_3299_p_dout0,grp_fu_3299_p_ce,grp_fu_3303_p_din0,grp_fu_3303_p_din1,grp_fu_3303_p_dout0,grp_fu_3303_p_ce,grp_fu_3307_p_din0,grp_fu_3307_p_din1,grp_fu_3307_p_dout0,grp_fu_3307_p_ce,grp_fu_3311_p_din0,grp_fu_3311_p_din1,grp_fu_3311_p_dout0,grp_fu_3311_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce,grp_fu_3319_p_din0,grp_fu_3319_p_din1,grp_fu_3319_p_dout0,grp_fu_3319_p_ce,grp_fu_3323_p_din0,grp_fu_3323_p_din1,grp_fu_3323_p_dout0,grp_fu_3323_p_ce,grp_fu_3327_p_din0,grp_fu_3327_p_din1,grp_fu_3327_p_dout0,grp_fu_3327_p_ce,grp_fu_3331_p_din0,grp_fu_3331_p_din1,grp_fu_3331_p_dout0,grp_fu_3331_p_ce,grp_fu_3335_p_din0,grp_fu_3335_p_din1,grp_fu_3335_p_dout0,grp_fu_3335_p_ce,grp_fu_3339_p_din0,grp_fu_3339_p_din1,grp_fu_3339_p_dout0,grp_fu_3339_p_ce,grp_fu_3343_p_din0,grp_fu_3343_p_din1,grp_fu_3343_p_dout0,grp_fu_3343_p_ce,grp_fu_3347_p_din0,grp_fu_3347_p_din1,grp_fu_3347_p_dout0,grp_fu_3347_p_ce,grp_fu_3351_p_din0,grp_fu_3351_p_din1,grp_fu_3351_p_dout0,grp_fu_3351_p_ce,grp_fu_3355_p_din0,grp_fu_3355_p_din1,grp_fu_3355_p_dout0,grp_fu_3355_p_ce,grp_fu_3359_p_din0,grp_fu_3359_p_din1,grp_fu_3359_p_dout0,grp_fu_3359_p_ce,grp_fu_3363_p_din0,grp_fu_3363_p_din1,grp_fu_3363_p_dout0,grp_fu_3363_p_ce,grp_fu_3367_p_din0,grp_fu_3367_p_din1,grp_fu_3367_p_dout0,grp_fu_3367_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce);  
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
output  [6:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [6:0] d_weights1_0_address1;
output   d_weights1_0_ce1;
input  [63:0] d_weights1_0_q1;
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
output  [8:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [8:0] d_weights2_0_address1;
output   d_weights2_0_ce1;
input  [63:0] d_weights2_0_q1;
output  [8:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [8:0] d_weights2_1_address1;
output   d_weights2_1_ce1;
input  [63:0] d_weights2_1_q1;
output  [8:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [8:0] d_weights2_2_address1;
output   d_weights2_2_ce1;
input  [63:0] d_weights2_2_q1;
output  [8:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [8:0] d_weights2_3_address1;
output   d_weights2_3_ce1;
input  [63:0] d_weights2_3_q1;
output  [8:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [8:0] d_weights2_4_address1;
output   d_weights2_4_ce1;
input  [63:0] d_weights2_4_q1;
output  [8:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [8:0] d_weights2_5_address1;
output   d_weights2_5_ce1;
input  [63:0] d_weights2_5_q1;
output  [8:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [8:0] d_weights2_6_address1;
output   d_weights2_6_ce1;
input  [63:0] d_weights2_6_q1;
output  [8:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [8:0] d_weights2_7_address1;
output   d_weights2_7_ce1;
input  [63:0] d_weights2_7_q1;
output  [2:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [2:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [2:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [2:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [2:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [2:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [2:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [2:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [2:0] d_weights3_8_address0;
output   d_weights3_8_ce0;
input  [63:0] d_weights3_8_q0;
output  [2:0] d_weights3_9_address0;
output   d_weights3_9_ce0;
input  [63:0] d_weights3_9_q0;
output  [2:0] d_weights3_10_address0;
output   d_weights3_10_ce0;
input  [63:0] d_weights3_10_q0;
output  [2:0] d_weights3_11_address0;
output   d_weights3_11_ce0;
input  [63:0] d_weights3_11_q0;
output  [2:0] d_weights3_12_address0;
output   d_weights3_12_ce0;
input  [63:0] d_weights3_12_q0;
output  [2:0] d_weights3_13_address0;
output   d_weights3_13_ce0;
input  [63:0] d_weights3_13_q0;
output  [2:0] d_weights3_14_address0;
output   d_weights3_14_ce0;
input  [63:0] d_weights3_14_q0;
output  [2:0] d_weights3_15_address0;
output   d_weights3_15_ce0;
input  [63:0] d_weights3_15_q0;
output  [2:0] d_weights3_16_address0;
output   d_weights3_16_ce0;
input  [63:0] d_weights3_16_q0;
output  [2:0] d_weights3_17_address0;
output   d_weights3_17_ce0;
input  [63:0] d_weights3_17_q0;
output  [2:0] d_weights3_18_address0;
output   d_weights3_18_ce0;
input  [63:0] d_weights3_18_q0;
output  [2:0] d_weights3_19_address0;
output   d_weights3_19_ce0;
input  [63:0] d_weights3_19_q0;
output  [2:0] d_weights3_20_address0;
output   d_weights3_20_ce0;
input  [63:0] d_weights3_20_q0;
output  [2:0] d_weights3_21_address0;
output   d_weights3_21_ce0;
input  [63:0] d_weights3_21_q0;
output  [2:0] d_weights3_22_address0;
output   d_weights3_22_ce0;
input  [63:0] d_weights3_22_q0;
output  [2:0] d_weights3_23_address0;
output   d_weights3_23_ce0;
input  [63:0] d_weights3_23_q0;
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
output  [2:0] d_biases1_0_address0;
output   d_biases1_0_ce0;
input  [63:0] d_biases1_0_q0;
output  [2:0] d_biases1_0_address1;
output   d_biases1_0_ce1;
input  [63:0] d_biases1_0_q1;
output  [2:0] d_biases1_1_address0;
output   d_biases1_1_ce0;
input  [63:0] d_biases1_1_q0;
output  [2:0] d_biases1_1_address1;
output   d_biases1_1_ce1;
input  [63:0] d_biases1_1_q1;
output  [2:0] d_biases1_2_address0;
output   d_biases1_2_ce0;
input  [63:0] d_biases1_2_q0;
output  [2:0] d_biases1_2_address1;
output   d_biases1_2_ce1;
input  [63:0] d_biases1_2_q1;
output  [2:0] d_biases1_3_address0;
output   d_biases1_3_ce0;
input  [63:0] d_biases1_3_q0;
output  [2:0] d_biases1_3_address1;
output   d_biases1_3_ce1;
input  [63:0] d_biases1_3_q1;
output  [2:0] d_biases1_4_address0;
output   d_biases1_4_ce0;
input  [63:0] d_biases1_4_q0;
output  [2:0] d_biases1_4_address1;
output   d_biases1_4_ce1;
input  [63:0] d_biases1_4_q1;
output  [2:0] d_biases1_5_address0;
output   d_biases1_5_ce0;
input  [63:0] d_biases1_5_q0;
output  [2:0] d_biases1_5_address1;
output   d_biases1_5_ce1;
input  [63:0] d_biases1_5_q1;
output  [2:0] d_biases1_6_address0;
output   d_biases1_6_ce0;
input  [63:0] d_biases1_6_q0;
output  [2:0] d_biases1_6_address1;
output   d_biases1_6_ce1;
input  [63:0] d_biases1_6_q1;
output  [2:0] d_biases1_7_address0;
output   d_biases1_7_ce0;
input  [63:0] d_biases1_7_q0;
output  [2:0] d_biases1_7_address1;
output   d_biases1_7_ce1;
input  [63:0] d_biases1_7_q1;
output  [2:0] d_biases2_0_address0;
output   d_biases2_0_ce0;
input  [63:0] d_biases2_0_q0;
output  [2:0] d_biases2_0_address1;
output   d_biases2_0_ce1;
input  [63:0] d_biases2_0_q1;
output  [2:0] d_biases2_1_address0;
output   d_biases2_1_ce0;
input  [63:0] d_biases2_1_q0;
output  [2:0] d_biases2_1_address1;
output   d_biases2_1_ce1;
input  [63:0] d_biases2_1_q1;
output  [2:0] d_biases2_2_address0;
output   d_biases2_2_ce0;
input  [63:0] d_biases2_2_q0;
output  [2:0] d_biases2_2_address1;
output   d_biases2_2_ce1;
input  [63:0] d_biases2_2_q1;
output  [2:0] d_biases2_3_address0;
output   d_biases2_3_ce0;
input  [63:0] d_biases2_3_q0;
output  [2:0] d_biases2_3_address1;
output   d_biases2_3_ce1;
input  [63:0] d_biases2_3_q1;
output  [2:0] d_biases2_4_address0;
output   d_biases2_4_ce0;
input  [63:0] d_biases2_4_q0;
output  [2:0] d_biases2_4_address1;
output   d_biases2_4_ce1;
input  [63:0] d_biases2_4_q1;
output  [2:0] d_biases2_5_address0;
output   d_biases2_5_ce0;
input  [63:0] d_biases2_5_q0;
output  [2:0] d_biases2_5_address1;
output   d_biases2_5_ce1;
input  [63:0] d_biases2_5_q1;
output  [2:0] d_biases2_6_address0;
output   d_biases2_6_ce0;
input  [63:0] d_biases2_6_q0;
output  [2:0] d_biases2_6_address1;
output   d_biases2_6_ce1;
input  [63:0] d_biases2_6_q1;
output  [2:0] d_biases2_7_address0;
output   d_biases2_7_ce0;
input  [63:0] d_biases2_7_q0;
output  [2:0] d_biases2_7_address1;
output   d_biases2_7_ce1;
input  [63:0] d_biases2_7_q1;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
output  [63:0] grp_fu_3239_p_din0;
output  [63:0] grp_fu_3239_p_din1;
output  [1:0] grp_fu_3239_p_opcode;
input  [63:0] grp_fu_3239_p_dout0;
output   grp_fu_3239_p_ce;
output  [63:0] grp_fu_3243_p_din0;
output  [63:0] grp_fu_3243_p_din1;
output  [1:0] grp_fu_3243_p_opcode;
input  [63:0] grp_fu_3243_p_dout0;
output   grp_fu_3243_p_ce;
output  [63:0] grp_fu_3247_p_din0;
output  [63:0] grp_fu_3247_p_din1;
input  [63:0] grp_fu_3247_p_dout0;
output   grp_fu_3247_p_ce;
output  [63:0] grp_fu_3267_p_din0;
output  [63:0] grp_fu_3267_p_din1;
input  [63:0] grp_fu_3267_p_dout0;
output   grp_fu_3267_p_ce;
output  [63:0] grp_fu_3255_p_din0;
output  [63:0] grp_fu_3255_p_din1;
input  [63:0] grp_fu_3255_p_dout0;
output   grp_fu_3255_p_ce;
output  [63:0] grp_fu_3251_p_din0;
output  [63:0] grp_fu_3251_p_din1;
input  [63:0] grp_fu_3251_p_dout0;
output   grp_fu_3251_p_ce;
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
output  [63:0] grp_fu_3291_p_din0;
output  [63:0] grp_fu_3291_p_din1;
input  [63:0] grp_fu_3291_p_dout0;
output   grp_fu_3291_p_ce;
output  [63:0] grp_fu_3295_p_din0;
output  [63:0] grp_fu_3295_p_din1;
input  [63:0] grp_fu_3295_p_dout0;
output   grp_fu_3295_p_ce;
output  [63:0] grp_fu_3299_p_din0;
output  [63:0] grp_fu_3299_p_din1;
input  [63:0] grp_fu_3299_p_dout0;
output   grp_fu_3299_p_ce;
output  [63:0] grp_fu_3303_p_din0;
output  [63:0] grp_fu_3303_p_din1;
input  [63:0] grp_fu_3303_p_dout0;
output   grp_fu_3303_p_ce;
output  [63:0] grp_fu_3307_p_din0;
output  [63:0] grp_fu_3307_p_din1;
input  [63:0] grp_fu_3307_p_dout0;
output   grp_fu_3307_p_ce;
output  [63:0] grp_fu_3311_p_din0;
output  [63:0] grp_fu_3311_p_din1;
input  [63:0] grp_fu_3311_p_dout0;
output   grp_fu_3311_p_ce;
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
output  [63:0] grp_fu_3367_p_din0;
output  [63:0] grp_fu_3367_p_din1;
input  [63:0] grp_fu_3367_p_dout0;
output   grp_fu_3367_p_ce;
output  [63:0] grp_fu_3263_p_din0;
output  [63:0] grp_fu_3263_p_din1;
input  [63:0] grp_fu_3263_p_dout0;
output   grp_fu_3263_p_ce;
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
wire   [63:0] grp_fu_414_p2;
reg   [63:0] norm_1_reg_543;
wire    ap_CS_fsm_state59;
wire   [63:0] grp_fu_420_p2;
reg   [63:0] bias_norm_reg_548;
wire   [63:0] grp_fu_426_p2;
reg   [63:0] norm_reg_553;
wire   [63:0] grp_fu_432_p2;
reg   [63:0] bias_norm_26_reg_558;
wire   [63:0] grp_fu_438_p2;
reg   [63:0] norm_72_reg_563;
wire   [63:0] grp_fu_444_p2;
reg   [63:0] bias_norm_1_reg_568;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_ready;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_ce1;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_d0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_d1;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_ce1;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_ce1;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_ce1;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_ce1;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_ce1;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_ce1;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_ce0;
wire   [6:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_ce1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_norm_2_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_norm_2_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_ready;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_ce1;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_d1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_ce1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_bias_norm_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_bias_norm_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_ready;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_ce1;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_d0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_d1;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_ce1;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_ce1;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_ce1;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_ce1;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_ce1;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_ce1;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_ce0;
wire   [8:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_ce1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_norm_19_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_norm_19_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_ready;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_ce1;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_d1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_ce1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_ce1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_bias_norm_18_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_bias_norm_18_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_ready;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_0_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_0_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_d0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_d1;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_1_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_2_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_3_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_4_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_4_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_5_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_5_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_6_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_6_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_7_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_7_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_8_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_8_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_9_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_9_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_10_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_10_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_11_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_11_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_12_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_12_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_13_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_13_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_14_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_14_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_15_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_15_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_16_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_16_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_17_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_17_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_18_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_18_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_19_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_19_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_20_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_20_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_21_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_21_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_22_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_22_ce0;
wire   [2:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_23_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_23_ce0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_norm_36_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_norm_36_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_d0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_bias_norm_25_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_bias_norm_25_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_ready;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_d0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_d1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_d1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_ready;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_d0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_d1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_d1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_ready;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_d0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_d1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_d0;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_ce1;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start_reg;
reg   [63:0] norm_36_loc_fu_174;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start_reg;
wire    ap_CS_fsm_state60;
reg    grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_fu_573_ce;
reg    grp_fu_577_ce;
reg    grp_fu_581_ce;
reg    grp_fu_585_ce;
reg    grp_fu_589_ce;
reg    grp_fu_593_ce;
reg    grp_fu_597_ce;
reg    grp_fu_601_ce;
reg    grp_fu_605_ce;
reg    grp_fu_609_ce;
reg    grp_fu_613_ce;
reg    grp_fu_617_ce;
reg    grp_fu_621_ce;
reg    grp_fu_625_ce;
reg    grp_fu_629_ce;
reg    grp_fu_633_ce;
reg    grp_fu_637_ce;
reg    grp_fu_641_ce;
reg    grp_fu_645_ce;
reg    grp_fu_649_ce;
reg    grp_fu_653_ce;
reg    grp_fu_657_ce;
reg    grp_fu_661_ce;
reg    grp_fu_665_ce;
reg    grp_fu_669_ce;
reg    grp_fu_673_ce;
reg    grp_fu_677_ce;
reg    grp_fu_681_ce;
reg    grp_fu_685_ce;
reg    grp_fu_689_ce;
reg    grp_fu_693_ce;
reg    grp_fu_697_ce;
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
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start_reg = 1'b0;
end
backprop_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_ready),.d_weights1_0_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_address0),.d_weights1_0_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_ce0),.d_weights1_0_q0(d_weights1_0_q0),.d_weights1_0_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_address1),.d_weights1_0_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_ce1),.d_weights1_0_q1(d_weights1_0_q1),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_address1),.weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_ce1),.weights1_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_we1),.weights1_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_d1),.weights1_q1(weights1_q1),.d_weights1_1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_address0),.d_weights1_1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_ce0),.d_weights1_1_q0(d_weights1_1_q0),.d_weights1_1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_address1),.d_weights1_1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_ce1),.d_weights1_1_q1(d_weights1_1_q1),.d_weights1_2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_address0),.d_weights1_2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_ce0),.d_weights1_2_q0(d_weights1_2_q0),.d_weights1_2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_address1),.d_weights1_2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_ce1),.d_weights1_2_q1(d_weights1_2_q1),.d_weights1_3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_address0),.d_weights1_3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_ce0),.d_weights1_3_q0(d_weights1_3_q0),.d_weights1_3_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_address1),.d_weights1_3_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_ce1),.d_weights1_3_q1(d_weights1_3_q1),.d_weights1_4_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_address0),.d_weights1_4_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_ce0),.d_weights1_4_q0(d_weights1_4_q0),.d_weights1_4_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_address1),.d_weights1_4_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_ce1),.d_weights1_4_q1(d_weights1_4_q1),.d_weights1_5_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_address0),.d_weights1_5_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_ce0),.d_weights1_5_q0(d_weights1_5_q0),.d_weights1_5_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_address1),.d_weights1_5_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_ce1),.d_weights1_5_q1(d_weights1_5_q1),.d_weights1_6_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_address0),.d_weights1_6_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_ce0),.d_weights1_6_q0(d_weights1_6_q0),.d_weights1_6_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_address1),.d_weights1_6_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_ce1),.d_weights1_6_q1(d_weights1_6_q1),.d_weights1_7_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_address0),.d_weights1_7_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_ce0),.d_weights1_7_q0(d_weights1_7_q0),.d_weights1_7_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_address1),.d_weights1_7_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_ce1),.d_weights1_7_q1(d_weights1_7_q1),.norm_2_out(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_norm_2_out),.norm_2_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_norm_2_out_ap_vld),.grp_fu_573_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_din0),.grp_fu_573_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_din1),.grp_fu_573_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_opcode),.grp_fu_573_p_dout0(grp_fu_3239_p_dout0),.grp_fu_573_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_ce),.grp_fu_577_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_din0),.grp_fu_577_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_din1),.grp_fu_577_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_opcode),.grp_fu_577_p_dout0(grp_fu_3243_p_dout0),.grp_fu_577_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_ce),.grp_fu_581_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_din0),.grp_fu_581_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_din1),.grp_fu_581_p_dout0(grp_fu_3247_p_dout0),.grp_fu_581_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop2 grp_update_weights_1_Pipeline_up_weight_loop2_fu_235(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_ready),.d_biases1_0_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_address0),.d_biases1_0_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_ce0),.d_biases1_0_q0(d_biases1_0_q0),.d_biases1_0_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_address1),.d_biases1_0_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_ce1),.d_biases1_0_q1(d_biases1_0_q1),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_address1),.biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_ce1),.biases1_we1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_we1),.biases1_d1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_d1),.biases1_q1(biases1_q1),.d_biases1_1_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_address0),.d_biases1_1_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_ce0),.d_biases1_1_q0(d_biases1_1_q0),.d_biases1_1_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_address1),.d_biases1_1_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_ce1),.d_biases1_1_q1(d_biases1_1_q1),.d_biases1_2_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_address0),.d_biases1_2_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_ce0),.d_biases1_2_q0(d_biases1_2_q0),.d_biases1_2_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_address1),.d_biases1_2_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_ce1),.d_biases1_2_q1(d_biases1_2_q1),.d_biases1_3_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_address0),.d_biases1_3_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_ce0),.d_biases1_3_q0(d_biases1_3_q0),.d_biases1_3_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_address1),.d_biases1_3_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_ce1),.d_biases1_3_q1(d_biases1_3_q1),.d_biases1_4_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_address0),.d_biases1_4_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_ce0),.d_biases1_4_q0(d_biases1_4_q0),.d_biases1_4_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_address1),.d_biases1_4_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_ce1),.d_biases1_4_q1(d_biases1_4_q1),.d_biases1_5_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_address0),.d_biases1_5_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_ce0),.d_biases1_5_q0(d_biases1_5_q0),.d_biases1_5_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_address1),.d_biases1_5_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_ce1),.d_biases1_5_q1(d_biases1_5_q1),.d_biases1_6_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_address0),.d_biases1_6_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_ce0),.d_biases1_6_q0(d_biases1_6_q0),.d_biases1_6_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_address1),.d_biases1_6_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_ce1),.d_biases1_6_q1(d_biases1_6_q1),.d_biases1_7_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_address0),.d_biases1_7_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_ce0),.d_biases1_7_q0(d_biases1_7_q0),.d_biases1_7_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_address1),.d_biases1_7_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_ce1),.d_biases1_7_q1(d_biases1_7_q1),.bias_norm_out(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_bias_norm_out),.bias_norm_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_bias_norm_out_ap_vld),.grp_fu_585_p_din0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_din0),.grp_fu_585_p_din1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_din1),.grp_fu_585_p_dout0(grp_fu_3267_p_dout0),.grp_fu_585_p_ce(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_ready),.d_weights2_0_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_address0),.d_weights2_0_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_ce0),.d_weights2_0_q0(d_weights2_0_q0),.d_weights2_0_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_address1),.d_weights2_0_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_ce1),.d_weights2_0_q1(d_weights2_0_q1),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_address1),.weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_ce1),.weights2_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_we1),.weights2_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_d1),.weights2_q1(weights2_q1),.d_weights2_1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_address0),.d_weights2_1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_ce0),.d_weights2_1_q0(d_weights2_1_q0),.d_weights2_1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_address1),.d_weights2_1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_ce1),.d_weights2_1_q1(d_weights2_1_q1),.d_weights2_2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_address0),.d_weights2_2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_ce0),.d_weights2_2_q0(d_weights2_2_q0),.d_weights2_2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_address1),.d_weights2_2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_ce1),.d_weights2_2_q1(d_weights2_2_q1),.d_weights2_3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_address0),.d_weights2_3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_ce0),.d_weights2_3_q0(d_weights2_3_q0),.d_weights2_3_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_address1),.d_weights2_3_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_ce1),.d_weights2_3_q1(d_weights2_3_q1),.d_weights2_4_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_address0),.d_weights2_4_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_ce0),.d_weights2_4_q0(d_weights2_4_q0),.d_weights2_4_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_address1),.d_weights2_4_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_ce1),.d_weights2_4_q1(d_weights2_4_q1),.d_weights2_5_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_address0),.d_weights2_5_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_ce0),.d_weights2_5_q0(d_weights2_5_q0),.d_weights2_5_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_address1),.d_weights2_5_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_ce1),.d_weights2_5_q1(d_weights2_5_q1),.d_weights2_6_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_address0),.d_weights2_6_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_ce0),.d_weights2_6_q0(d_weights2_6_q0),.d_weights2_6_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_address1),.d_weights2_6_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_ce1),.d_weights2_6_q1(d_weights2_6_q1),.d_weights2_7_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_address0),.d_weights2_7_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_ce0),.d_weights2_7_q0(d_weights2_7_q0),.d_weights2_7_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_address1),.d_weights2_7_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_ce1),.d_weights2_7_q1(d_weights2_7_q1),.norm_19_out(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_norm_19_out),.norm_19_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_norm_19_out_ap_vld),.grp_fu_593_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_din0),.grp_fu_593_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_din1),.grp_fu_593_p_dout0(grp_fu_3251_p_dout0),.grp_fu_593_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop6 grp_update_weights_1_Pipeline_up_weight_loop6_fu_281(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_ready),.d_biases2_0_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_address0),.d_biases2_0_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_ce0),.d_biases2_0_q0(d_biases2_0_q0),.d_biases2_0_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_address1),.d_biases2_0_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_ce1),.d_biases2_0_q1(d_biases2_0_q1),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_address1),.biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_ce1),.biases2_we1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_we1),.biases2_d1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_d1),.biases2_q1(biases2_q1),.d_biases2_1_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_address0),.d_biases2_1_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_ce0),.d_biases2_1_q0(d_biases2_1_q0),.d_biases2_1_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_address1),.d_biases2_1_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_ce1),.d_biases2_1_q1(d_biases2_1_q1),.d_biases2_2_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_address0),.d_biases2_2_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_ce0),.d_biases2_2_q0(d_biases2_2_q0),.d_biases2_2_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_address1),.d_biases2_2_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_ce1),.d_biases2_2_q1(d_biases2_2_q1),.d_biases2_3_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_address0),.d_biases2_3_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_ce0),.d_biases2_3_q0(d_biases2_3_q0),.d_biases2_3_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_address1),.d_biases2_3_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_ce1),.d_biases2_3_q1(d_biases2_3_q1),.d_biases2_4_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_address0),.d_biases2_4_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_ce0),.d_biases2_4_q0(d_biases2_4_q0),.d_biases2_4_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_address1),.d_biases2_4_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_ce1),.d_biases2_4_q1(d_biases2_4_q1),.d_biases2_5_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_address0),.d_biases2_5_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_ce0),.d_biases2_5_q0(d_biases2_5_q0),.d_biases2_5_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_address1),.d_biases2_5_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_ce1),.d_biases2_5_q1(d_biases2_5_q1),.d_biases2_6_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_address0),.d_biases2_6_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_ce0),.d_biases2_6_q0(d_biases2_6_q0),.d_biases2_6_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_address1),.d_biases2_6_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_ce1),.d_biases2_6_q1(d_biases2_6_q1),.d_biases2_7_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_address0),.d_biases2_7_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_ce0),.d_biases2_7_q0(d_biases2_7_q0),.d_biases2_7_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_address1),.d_biases2_7_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_ce1),.d_biases2_7_q1(d_biases2_7_q1),.bias_norm_18_out(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_bias_norm_18_out),.bias_norm_18_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_bias_norm_18_out_ap_vld),.grp_fu_597_p_din0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_din0),.grp_fu_597_p_din1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_din1),.grp_fu_597_p_dout0(grp_fu_3271_p_dout0),.grp_fu_597_p_ce(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop9 grp_update_weights_1_Pipeline_up_weight_loop9_fu_304(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_ready),.d_weights3_0_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_0_address0),.d_weights3_0_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_0_ce0),.d_weights3_0_q0(d_weights3_0_q0),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_address1),.weights3_ce1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_ce1),.weights3_we1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_we1),.weights3_d1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_d1),.weights3_q1(weights3_q1),.d_weights3_1_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_1_address0),.d_weights3_1_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_1_ce0),.d_weights3_1_q0(d_weights3_1_q0),.d_weights3_2_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_2_address0),.d_weights3_2_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_2_ce0),.d_weights3_2_q0(d_weights3_2_q0),.d_weights3_3_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_3_address0),.d_weights3_3_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_3_ce0),.d_weights3_3_q0(d_weights3_3_q0),.d_weights3_4_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_4_address0),.d_weights3_4_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_4_ce0),.d_weights3_4_q0(d_weights3_4_q0),.d_weights3_5_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_5_address0),.d_weights3_5_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_5_ce0),.d_weights3_5_q0(d_weights3_5_q0),.d_weights3_6_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_6_address0),.d_weights3_6_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_6_ce0),.d_weights3_6_q0(d_weights3_6_q0),.d_weights3_7_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_7_address0),.d_weights3_7_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_7_ce0),.d_weights3_7_q0(d_weights3_7_q0),.d_weights3_8_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_8_address0),.d_weights3_8_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_8_ce0),.d_weights3_8_q0(d_weights3_8_q0),.d_weights3_9_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_9_address0),.d_weights3_9_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_9_ce0),.d_weights3_9_q0(d_weights3_9_q0),.d_weights3_10_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_10_address0),.d_weights3_10_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_10_ce0),.d_weights3_10_q0(d_weights3_10_q0),.d_weights3_11_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_11_address0),.d_weights3_11_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_11_ce0),.d_weights3_11_q0(d_weights3_11_q0),.d_weights3_12_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_12_address0),.d_weights3_12_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_12_ce0),.d_weights3_12_q0(d_weights3_12_q0),.d_weights3_13_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_13_address0),.d_weights3_13_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_13_ce0),.d_weights3_13_q0(d_weights3_13_q0),.d_weights3_14_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_14_address0),.d_weights3_14_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_14_ce0),.d_weights3_14_q0(d_weights3_14_q0),.d_weights3_15_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_15_address0),.d_weights3_15_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_15_ce0),.d_weights3_15_q0(d_weights3_15_q0),.d_weights3_16_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_16_address0),.d_weights3_16_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_16_ce0),.d_weights3_16_q0(d_weights3_16_q0),.d_weights3_17_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_17_address0),.d_weights3_17_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_17_ce0),.d_weights3_17_q0(d_weights3_17_q0),.d_weights3_18_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_18_address0),.d_weights3_18_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_18_ce0),.d_weights3_18_q0(d_weights3_18_q0),.d_weights3_19_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_19_address0),.d_weights3_19_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_19_ce0),.d_weights3_19_q0(d_weights3_19_q0),.d_weights3_20_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_20_address0),.d_weights3_20_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_20_ce0),.d_weights3_20_q0(d_weights3_20_q0),.d_weights3_21_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_21_address0),.d_weights3_21_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_21_ce0),.d_weights3_21_q0(d_weights3_21_q0),.d_weights3_22_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_22_address0),.d_weights3_22_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_22_ce0),.d_weights3_22_q0(d_weights3_22_q0),.d_weights3_23_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_23_address0),.d_weights3_23_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_23_ce0),.d_weights3_23_q0(d_weights3_23_q0),.norm_36_out(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_norm_36_out),.norm_36_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_norm_36_out_ap_vld),.grp_fu_601_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_din0),.grp_fu_601_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_din1),.grp_fu_601_p_dout0(grp_fu_3275_p_dout0),.grp_fu_601_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_ce),.grp_fu_605_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_din0),.grp_fu_605_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_din1),.grp_fu_605_p_dout0(grp_fu_3279_p_dout0),.grp_fu_605_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_ce),.grp_fu_609_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_din0),.grp_fu_609_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_din1),.grp_fu_609_p_dout0(grp_fu_3283_p_dout0),.grp_fu_609_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_ce),.grp_fu_613_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_din0),.grp_fu_613_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_din1),.grp_fu_613_p_dout0(grp_fu_3287_p_dout0),.grp_fu_613_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_ce),.grp_fu_617_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_din0),.grp_fu_617_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_din1),.grp_fu_617_p_dout0(grp_fu_3291_p_dout0),.grp_fu_617_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_ce),.grp_fu_621_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_din0),.grp_fu_621_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_din1),.grp_fu_621_p_dout0(grp_fu_3295_p_dout0),.grp_fu_621_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_ce),.grp_fu_625_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_din0),.grp_fu_625_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_din1),.grp_fu_625_p_dout0(grp_fu_3299_p_dout0),.grp_fu_625_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_ce),.grp_fu_629_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_din0),.grp_fu_629_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_din1),.grp_fu_629_p_dout0(grp_fu_3303_p_dout0),.grp_fu_629_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_ce),.grp_fu_633_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_din0),.grp_fu_633_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_din1),.grp_fu_633_p_dout0(grp_fu_3307_p_dout0),.grp_fu_633_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_ce),.grp_fu_637_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_din0),.grp_fu_637_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_din1),.grp_fu_637_p_dout0(grp_fu_3311_p_dout0),.grp_fu_637_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_ce),.grp_fu_641_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_din0),.grp_fu_641_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_din1),.grp_fu_641_p_dout0(grp_fu_3315_p_dout0),.grp_fu_641_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_ce),.grp_fu_645_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_din0),.grp_fu_645_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_din1),.grp_fu_645_p_dout0(grp_fu_3319_p_dout0),.grp_fu_645_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_ce),.grp_fu_649_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_din0),.grp_fu_649_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_din1),.grp_fu_649_p_dout0(grp_fu_3323_p_dout0),.grp_fu_649_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_ce),.grp_fu_653_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_din0),.grp_fu_653_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_din1),.grp_fu_653_p_dout0(grp_fu_3327_p_dout0),.grp_fu_653_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_ce),.grp_fu_657_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_din0),.grp_fu_657_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_din1),.grp_fu_657_p_dout0(grp_fu_3331_p_dout0),.grp_fu_657_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_ce),.grp_fu_661_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_din0),.grp_fu_661_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_din1),.grp_fu_661_p_dout0(grp_fu_3335_p_dout0),.grp_fu_661_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_ce),.grp_fu_665_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_din0),.grp_fu_665_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_din1),.grp_fu_665_p_dout0(grp_fu_3339_p_dout0),.grp_fu_665_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_ce),.grp_fu_669_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_din0),.grp_fu_669_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_din1),.grp_fu_669_p_dout0(grp_fu_3343_p_dout0),.grp_fu_669_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_ce),.grp_fu_673_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_din0),.grp_fu_673_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_din1),.grp_fu_673_p_dout0(grp_fu_3347_p_dout0),.grp_fu_673_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_ce),.grp_fu_677_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_din0),.grp_fu_677_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_din1),.grp_fu_677_p_dout0(grp_fu_3351_p_dout0),.grp_fu_677_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_ce),.grp_fu_681_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_din0),.grp_fu_681_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_din1),.grp_fu_681_p_dout0(grp_fu_3355_p_dout0),.grp_fu_681_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_ce),.grp_fu_685_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_din0),.grp_fu_685_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_din1),.grp_fu_685_p_dout0(grp_fu_3359_p_dout0),.grp_fu_685_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_ce),.grp_fu_689_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_din0),.grp_fu_689_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_din1),.grp_fu_689_p_dout0(grp_fu_3363_p_dout0),.grp_fu_689_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_ce),.grp_fu_693_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_din0),.grp_fu_693_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_din1),.grp_fu_693_p_dout0(grp_fu_3367_p_dout0),.grp_fu_693_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_184_6 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_ready),.p_read(p_read),.p_read1(p_read1),.p_read2(p_read2),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_d0),.biases3_q0(biases3_q0),.bias_norm_25_out(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_bias_norm_25_out),.bias_norm_25_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_bias_norm_25_out_ap_vld),.grp_fu_697_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_din0),.grp_fu_697_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_din1),.grp_fu_697_p_dout0(grp_fu_3263_p_dout0),.grp_fu_697_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_ready),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_address1),.weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_ce1),.weights1_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_we1),.weights1_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_d1),.weights1_q1(weights1_q1),.norm_1(norm_1_reg_543),.grp_fu_589_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_din0),.grp_fu_589_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_din1),.grp_fu_589_p_dout0(grp_fu_3255_p_dout0),.grp_fu_589_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop4 grp_update_weights_1_Pipeline_up_weight_loop4_fu_379(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_ready),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_address1),.biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_ce1),.biases1_we1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_we1),.biases1_d1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_d1),.biases1_q1(biases1_q1),.bias_norm_39(bias_norm_reg_548));
backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_ready),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_address1),.weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_ce1),.weights2_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_we1),.weights2_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_d1),.weights2_q1(weights2_q1),.norm_18(norm_reg_553));
backprop_update_weights_1_Pipeline_up_weight_loop8 grp_update_weights_1_Pipeline_up_weight_loop8_fu_393(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_ready),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_address1),.biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_ce1),.biases2_we1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_we1),.biases2_d1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_d1),.biases2_q1(biases2_q1),.bias_norm_17(bias_norm_26_reg_558));
backprop_update_weights_1_Pipeline_up_weight_loop10 grp_update_weights_1_Pipeline_up_weight_loop10_fu_400(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_ready),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_address1),.weights3_ce1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_ce1),.weights3_we1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_we1),.weights3_d1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_d1),.weights3_q1(weights3_q1),.norm_84(norm_72_reg_563));
backprop_update_weights_1_Pipeline_VITIS_LOOP_197_8 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_ready),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_d0),.biases3_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_address1),.biases3_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_ce1),.biases3_q1(biases3_q1),.bias_norm_36(bias_norm_1_reg_568));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U529(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_norm_2_out),.ce(1'b1),.dout(grp_fu_414_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U530(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_bias_norm_out),.ce(1'b1),.dout(grp_fu_420_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U531(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_norm_19_out),.ce(1'b1),.dout(grp_fu_426_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U532(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_bias_norm_18_out),.ce(1'b1),.dout(grp_fu_432_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U533(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(norm_36_loc_fu_174),.ce(1'b1),.dout(grp_fu_438_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U534(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_bias_norm_25_out),.ce(1'b1),.dout(grp_fu_444_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        bias_norm_1_reg_568 <= grp_fu_444_p2;
        bias_norm_26_reg_558 <= grp_fu_432_p2;
        bias_norm_reg_548 <= grp_fu_420_p2;
        norm_1_reg_543 <= grp_fu_414_p2;
        norm_72_reg_563 <= grp_fu_438_p2;
        norm_reg_553 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_norm_36_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        norm_36_loc_fu_174 <= grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_norm_36_out;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state60) & (1'b0 == ap_block_state60_on_subcall_done)))) begin
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
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_address0;
    end else begin
        biases1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_address1;
    end else begin
        biases1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_ce0;
    end else begin
        biases1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_ce1;
    end else begin
        biases1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_d0;
    end else begin
        biases1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_d1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_d1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_d1;
    end else begin
        biases1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_we0;
    end else begin
        biases1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_we1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_biases1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_we1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_biases1_we1;
    end else begin
        biases1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_address0;
    end else begin
        biases2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_address1;
    end else begin
        biases2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_ce0;
    end else begin
        biases2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_ce1;
    end else begin
        biases2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_d0;
    end else begin
        biases2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_d1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_d1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_d1;
    end else begin
        biases2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_we0;
    end else begin
        biases2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_we1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_biases2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_we1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_biases2_we1;
    end else begin
        biases2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_d0;
    end else begin
        biases3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_573_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_ce;
    end else begin
        grp_fu_573_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_577_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_ce;
    end else begin
        grp_fu_577_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_581_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_ce;
    end else begin
        grp_fu_581_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_585_ce = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_ce;
    end else begin
        grp_fu_585_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_589_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_ce;
    end else begin
        grp_fu_589_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_593_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_ce;
    end else begin
        grp_fu_593_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_597_ce = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_ce;
    end else begin
        grp_fu_597_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_601_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_ce;
    end else begin
        grp_fu_601_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_605_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_ce;
    end else begin
        grp_fu_605_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_609_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_ce;
    end else begin
        grp_fu_609_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_613_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_ce;
    end else begin
        grp_fu_613_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_617_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_ce;
    end else begin
        grp_fu_617_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_621_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_ce;
    end else begin
        grp_fu_621_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_625_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_ce;
    end else begin
        grp_fu_625_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_629_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_ce;
    end else begin
        grp_fu_629_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_633_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_ce;
    end else begin
        grp_fu_633_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_637_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_ce;
    end else begin
        grp_fu_637_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_641_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_ce;
    end else begin
        grp_fu_641_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_645_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_ce;
    end else begin
        grp_fu_645_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_649_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_ce;
    end else begin
        grp_fu_649_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_653_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_ce;
    end else begin
        grp_fu_653_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_657_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_ce;
    end else begin
        grp_fu_657_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_661_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_ce;
    end else begin
        grp_fu_661_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_665_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_ce;
    end else begin
        grp_fu_665_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_669_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_ce;
    end else begin
        grp_fu_669_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_673_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_ce;
    end else begin
        grp_fu_673_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_677_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_ce;
    end else begin
        grp_fu_677_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_681_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_ce;
    end else begin
        grp_fu_681_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_685_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_ce;
    end else begin
        grp_fu_685_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_689_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_ce;
    end else begin
        grp_fu_689_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_693_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_ce;
    end else begin
        grp_fu_693_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_697_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_ce;
    end else begin
        grp_fu_697_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_address0;
    end else begin
        weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_address1;
    end else begin
        weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_ce0;
    end else begin
        weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_ce1;
    end else begin
        weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_d0;
    end else begin
        weights1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_d1;
    end else begin
        weights1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_we0;
    end else begin
        weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_weights1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_weights1_we1;
    end else begin
        weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_address0;
    end else begin
        weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_address1;
    end else begin
        weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_ce0;
    end else begin
        weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_ce1;
    end else begin
        weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_d0;
    end else begin
        weights2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_d1;
    end else begin
        weights2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_we0;
    end else begin
        weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_weights2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_weights2_we1;
    end else begin
        weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_address0;
    end else begin
        weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_address1;
    end else begin
        weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_ce0;
    end else begin
        weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_ce1;
    end else begin
        weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_d0;
    end else begin
        weights3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_d1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_d1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_d1;
    end else begin
        weights3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_we0;
    end else begin
        weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_we1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_weights3_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_we1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_weights3_we1;
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
    ap_block_state2_on_subcall_done = ((grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_done == 1'b0));
end
always @ (*) begin
    ap_block_state60_on_subcall_done = ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_done == 1'b0));
end
assign biases3_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_biases3_address1;
assign d_biases1_0_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_address0;
assign d_biases1_0_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_address1;
assign d_biases1_0_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_ce0;
assign d_biases1_0_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_0_ce1;
assign d_biases1_1_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_address0;
assign d_biases1_1_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_address1;
assign d_biases1_1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_ce0;
assign d_biases1_1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_1_ce1;
assign d_biases1_2_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_address0;
assign d_biases1_2_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_address1;
assign d_biases1_2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_ce0;
assign d_biases1_2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_2_ce1;
assign d_biases1_3_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_address0;
assign d_biases1_3_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_address1;
assign d_biases1_3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_ce0;
assign d_biases1_3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_3_ce1;
assign d_biases1_4_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_address0;
assign d_biases1_4_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_address1;
assign d_biases1_4_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_ce0;
assign d_biases1_4_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_4_ce1;
assign d_biases1_5_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_address0;
assign d_biases1_5_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_address1;
assign d_biases1_5_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_ce0;
assign d_biases1_5_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_5_ce1;
assign d_biases1_6_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_address0;
assign d_biases1_6_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_address1;
assign d_biases1_6_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_ce0;
assign d_biases1_6_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_6_ce1;
assign d_biases1_7_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_address0;
assign d_biases1_7_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_address1;
assign d_biases1_7_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_ce0;
assign d_biases1_7_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_d_biases1_7_ce1;
assign d_biases2_0_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_address0;
assign d_biases2_0_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_address1;
assign d_biases2_0_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_ce0;
assign d_biases2_0_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_0_ce1;
assign d_biases2_1_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_address0;
assign d_biases2_1_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_address1;
assign d_biases2_1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_ce0;
assign d_biases2_1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_1_ce1;
assign d_biases2_2_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_address0;
assign d_biases2_2_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_address1;
assign d_biases2_2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_ce0;
assign d_biases2_2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_2_ce1;
assign d_biases2_3_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_address0;
assign d_biases2_3_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_address1;
assign d_biases2_3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_ce0;
assign d_biases2_3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_3_ce1;
assign d_biases2_4_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_address0;
assign d_biases2_4_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_address1;
assign d_biases2_4_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_ce0;
assign d_biases2_4_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_4_ce1;
assign d_biases2_5_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_address0;
assign d_biases2_5_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_address1;
assign d_biases2_5_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_ce0;
assign d_biases2_5_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_5_ce1;
assign d_biases2_6_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_address0;
assign d_biases2_6_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_address1;
assign d_biases2_6_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_ce0;
assign d_biases2_6_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_6_ce1;
assign d_biases2_7_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_address0;
assign d_biases2_7_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_address1;
assign d_biases2_7_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_ce0;
assign d_biases2_7_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_d_biases2_7_ce1;
assign d_weights1_0_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_address0;
assign d_weights1_0_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_address1;
assign d_weights1_0_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_ce0;
assign d_weights1_0_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_0_ce1;
assign d_weights1_1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_address0;
assign d_weights1_1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_address1;
assign d_weights1_1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_ce0;
assign d_weights1_1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_1_ce1;
assign d_weights1_2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_address0;
assign d_weights1_2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_address1;
assign d_weights1_2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_ce0;
assign d_weights1_2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_2_ce1;
assign d_weights1_3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_address0;
assign d_weights1_3_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_address1;
assign d_weights1_3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_ce0;
assign d_weights1_3_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_3_ce1;
assign d_weights1_4_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_address0;
assign d_weights1_4_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_address1;
assign d_weights1_4_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_ce0;
assign d_weights1_4_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_4_ce1;
assign d_weights1_5_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_address0;
assign d_weights1_5_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_address1;
assign d_weights1_5_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_ce0;
assign d_weights1_5_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_5_ce1;
assign d_weights1_6_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_address0;
assign d_weights1_6_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_address1;
assign d_weights1_6_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_ce0;
assign d_weights1_6_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_6_ce1;
assign d_weights1_7_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_address0;
assign d_weights1_7_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_address1;
assign d_weights1_7_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_ce0;
assign d_weights1_7_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_d_weights1_7_ce1;
assign d_weights2_0_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_address0;
assign d_weights2_0_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_address1;
assign d_weights2_0_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_ce0;
assign d_weights2_0_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_0_ce1;
assign d_weights2_1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_address0;
assign d_weights2_1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_address1;
assign d_weights2_1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_ce0;
assign d_weights2_1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_1_ce1;
assign d_weights2_2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_address0;
assign d_weights2_2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_address1;
assign d_weights2_2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_ce0;
assign d_weights2_2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_2_ce1;
assign d_weights2_3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_address0;
assign d_weights2_3_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_address1;
assign d_weights2_3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_ce0;
assign d_weights2_3_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_3_ce1;
assign d_weights2_4_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_address0;
assign d_weights2_4_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_address1;
assign d_weights2_4_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_ce0;
assign d_weights2_4_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_4_ce1;
assign d_weights2_5_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_address0;
assign d_weights2_5_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_address1;
assign d_weights2_5_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_ce0;
assign d_weights2_5_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_5_ce1;
assign d_weights2_6_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_address0;
assign d_weights2_6_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_address1;
assign d_weights2_6_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_ce0;
assign d_weights2_6_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_6_ce1;
assign d_weights2_7_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_address0;
assign d_weights2_7_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_address1;
assign d_weights2_7_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_ce0;
assign d_weights2_7_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_d_weights2_7_ce1;
assign d_weights3_0_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_0_address0;
assign d_weights3_0_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_0_ce0;
assign d_weights3_10_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_10_address0;
assign d_weights3_10_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_10_ce0;
assign d_weights3_11_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_11_address0;
assign d_weights3_11_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_11_ce0;
assign d_weights3_12_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_12_address0;
assign d_weights3_12_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_12_ce0;
assign d_weights3_13_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_13_address0;
assign d_weights3_13_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_13_ce0;
assign d_weights3_14_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_14_address0;
assign d_weights3_14_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_14_ce0;
assign d_weights3_15_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_15_address0;
assign d_weights3_15_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_15_ce0;
assign d_weights3_16_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_16_address0;
assign d_weights3_16_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_16_ce0;
assign d_weights3_17_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_17_address0;
assign d_weights3_17_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_17_ce0;
assign d_weights3_18_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_18_address0;
assign d_weights3_18_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_18_ce0;
assign d_weights3_19_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_19_address0;
assign d_weights3_19_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_19_ce0;
assign d_weights3_1_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_1_address0;
assign d_weights3_1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_1_ce0;
assign d_weights3_20_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_20_address0;
assign d_weights3_20_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_20_ce0;
assign d_weights3_21_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_21_address0;
assign d_weights3_21_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_21_ce0;
assign d_weights3_22_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_22_address0;
assign d_weights3_22_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_22_ce0;
assign d_weights3_23_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_23_address0;
assign d_weights3_23_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_23_ce0;
assign d_weights3_2_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_2_address0;
assign d_weights3_2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_2_ce0;
assign d_weights3_3_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_3_address0;
assign d_weights3_3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_3_ce0;
assign d_weights3_4_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_4_address0;
assign d_weights3_4_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_4_ce0;
assign d_weights3_5_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_5_address0;
assign d_weights3_5_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_5_ce0;
assign d_weights3_6_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_6_address0;
assign d_weights3_6_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_6_ce0;
assign d_weights3_7_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_7_address0;
assign d_weights3_7_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_7_ce0;
assign d_weights3_8_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_8_address0;
assign d_weights3_8_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_8_ce0;
assign d_weights3_9_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_9_address0;
assign d_weights3_9_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_d_weights3_9_ce0;
assign grp_fu_3239_p_ce = grp_fu_573_ce;
assign grp_fu_3239_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_din0;
assign grp_fu_3239_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_din1;
assign grp_fu_3239_p_opcode = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_573_p_opcode;
assign grp_fu_3243_p_ce = grp_fu_577_ce;
assign grp_fu_3243_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_din0;
assign grp_fu_3243_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_577_p_din1;
assign grp_fu_3243_p_opcode = 2'd0;
assign grp_fu_3247_p_ce = grp_fu_581_ce;
assign grp_fu_3247_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_din0;
assign grp_fu_3247_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_grp_fu_581_p_din1;
assign grp_fu_3251_p_ce = grp_fu_593_ce;
assign grp_fu_3251_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_din0;
assign grp_fu_3251_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_grp_fu_593_p_din1;
assign grp_fu_3255_p_ce = grp_fu_589_ce;
assign grp_fu_3255_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_din0;
assign grp_fu_3255_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_grp_fu_589_p_din1;
assign grp_fu_3263_p_ce = grp_fu_697_ce;
assign grp_fu_3263_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_din0;
assign grp_fu_3263_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_grp_fu_697_p_din1;
assign grp_fu_3267_p_ce = grp_fu_585_ce;
assign grp_fu_3267_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_din0;
assign grp_fu_3267_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_grp_fu_585_p_din1;
assign grp_fu_3271_p_ce = grp_fu_597_ce;
assign grp_fu_3271_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_din0;
assign grp_fu_3271_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_grp_fu_597_p_din1;
assign grp_fu_3275_p_ce = grp_fu_601_ce;
assign grp_fu_3275_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_din0;
assign grp_fu_3275_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_601_p_din1;
assign grp_fu_3279_p_ce = grp_fu_605_ce;
assign grp_fu_3279_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_din0;
assign grp_fu_3279_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_605_p_din1;
assign grp_fu_3283_p_ce = grp_fu_609_ce;
assign grp_fu_3283_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_din0;
assign grp_fu_3283_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_609_p_din1;
assign grp_fu_3287_p_ce = grp_fu_613_ce;
assign grp_fu_3287_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_din0;
assign grp_fu_3287_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_613_p_din1;
assign grp_fu_3291_p_ce = grp_fu_617_ce;
assign grp_fu_3291_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_din0;
assign grp_fu_3291_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_617_p_din1;
assign grp_fu_3295_p_ce = grp_fu_621_ce;
assign grp_fu_3295_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_din0;
assign grp_fu_3295_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_621_p_din1;
assign grp_fu_3299_p_ce = grp_fu_625_ce;
assign grp_fu_3299_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_din0;
assign grp_fu_3299_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_625_p_din1;
assign grp_fu_3303_p_ce = grp_fu_629_ce;
assign grp_fu_3303_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_din0;
assign grp_fu_3303_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_629_p_din1;
assign grp_fu_3307_p_ce = grp_fu_633_ce;
assign grp_fu_3307_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_din0;
assign grp_fu_3307_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_633_p_din1;
assign grp_fu_3311_p_ce = grp_fu_637_ce;
assign grp_fu_3311_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_din0;
assign grp_fu_3311_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_637_p_din1;
assign grp_fu_3315_p_ce = grp_fu_641_ce;
assign grp_fu_3315_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_din0;
assign grp_fu_3315_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_641_p_din1;
assign grp_fu_3319_p_ce = grp_fu_645_ce;
assign grp_fu_3319_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_din0;
assign grp_fu_3319_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_645_p_din1;
assign grp_fu_3323_p_ce = grp_fu_649_ce;
assign grp_fu_3323_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_din0;
assign grp_fu_3323_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_649_p_din1;
assign grp_fu_3327_p_ce = grp_fu_653_ce;
assign grp_fu_3327_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_din0;
assign grp_fu_3327_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_653_p_din1;
assign grp_fu_3331_p_ce = grp_fu_657_ce;
assign grp_fu_3331_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_din0;
assign grp_fu_3331_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_657_p_din1;
assign grp_fu_3335_p_ce = grp_fu_661_ce;
assign grp_fu_3335_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_din0;
assign grp_fu_3335_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_661_p_din1;
assign grp_fu_3339_p_ce = grp_fu_665_ce;
assign grp_fu_3339_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_din0;
assign grp_fu_3339_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_665_p_din1;
assign grp_fu_3343_p_ce = grp_fu_669_ce;
assign grp_fu_3343_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_din0;
assign grp_fu_3343_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_669_p_din1;
assign grp_fu_3347_p_ce = grp_fu_673_ce;
assign grp_fu_3347_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_din0;
assign grp_fu_3347_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_673_p_din1;
assign grp_fu_3351_p_ce = grp_fu_677_ce;
assign grp_fu_3351_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_din0;
assign grp_fu_3351_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_677_p_din1;
assign grp_fu_3355_p_ce = grp_fu_681_ce;
assign grp_fu_3355_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_din0;
assign grp_fu_3355_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_681_p_din1;
assign grp_fu_3359_p_ce = grp_fu_685_ce;
assign grp_fu_3359_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_din0;
assign grp_fu_3359_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_685_p_din1;
assign grp_fu_3363_p_ce = grp_fu_689_ce;
assign grp_fu_3363_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_din0;
assign grp_fu_3363_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_689_p_din1;
assign grp_fu_3367_p_ce = grp_fu_693_ce;
assign grp_fu_3367_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_din0;
assign grp_fu_3367_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_grp_fu_693_p_din1;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_212_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_372_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_258_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_386_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_359_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_407_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start = grp_update_weights_1_Pipeline_up_weight_loop10_fu_400_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start = grp_update_weights_1_Pipeline_up_weight_loop2_fu_235_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start = grp_update_weights_1_Pipeline_up_weight_loop4_fu_379_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start = grp_update_weights_1_Pipeline_up_weight_loop6_fu_281_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start = grp_update_weights_1_Pipeline_up_weight_loop8_fu_393_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start = grp_update_weights_1_Pipeline_up_weight_loop9_fu_304_ap_start_reg;
endmodule 
