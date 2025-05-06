
module backprop_update_weights_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,d_weights1_address0,d_weights1_ce0,d_weights1_q0,d_weights1_address1,d_weights1_ce1,d_weights1_q1,d_weights2_address0,d_weights2_ce0,d_weights2_q0,d_weights2_address1,d_weights2_ce1,d_weights2_q1,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_0_address1,d_weights3_0_ce1,d_weights3_0_q1,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_1_address1,d_weights3_1_ce1,d_weights3_1_q1,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_2_address1,d_weights3_2_ce1,d_weights3_2_q1,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_we1,biases1_d1,biases1_q1,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases2_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,d_biases1_address0,d_biases1_ce0,d_biases1_q0,d_biases1_address1,d_biases1_ce1,d_biases1_q1,d_biases2_address0,d_biases2_ce0,d_biases2_q0,d_biases2_address1,d_biases2_ce1,d_biases2_q1,p_read,p_read1,p_read2,grp_fu_2816_p_din0,grp_fu_2816_p_din1,grp_fu_2816_p_opcode,grp_fu_2816_p_dout0,grp_fu_2816_p_ce,grp_fu_2820_p_din0,grp_fu_2820_p_din1,grp_fu_2820_p_opcode,grp_fu_2820_p_dout0,grp_fu_2820_p_ce,grp_fu_2824_p_din0,grp_fu_2824_p_din1,grp_fu_2824_p_dout0,grp_fu_2824_p_ce,grp_fu_2840_p_din0,grp_fu_2840_p_din1,grp_fu_2840_p_dout0,grp_fu_2840_p_ce,grp_fu_2832_p_din0,grp_fu_2832_p_din1,grp_fu_2832_p_dout0,grp_fu_2832_p_ce,grp_fu_2828_p_din0,grp_fu_2828_p_din1,grp_fu_2828_p_dout0,grp_fu_2828_p_ce,grp_fu_2844_p_din0,grp_fu_2844_p_din1,grp_fu_2844_p_dout0,grp_fu_2844_p_ce,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce,grp_fu_2852_p_din0,grp_fu_2852_p_din1,grp_fu_2852_p_dout0,grp_fu_2852_p_ce,grp_fu_2856_p_din0,grp_fu_2856_p_din1,grp_fu_2856_p_dout0,grp_fu_2856_p_ce,grp_fu_2860_p_din0,grp_fu_2860_p_din1,grp_fu_2860_p_dout0,grp_fu_2860_p_ce,grp_fu_2864_p_din0,grp_fu_2864_p_din1,grp_fu_2864_p_dout0,grp_fu_2864_p_ce);  
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
output  [9:0] d_weights1_address0;
output   d_weights1_ce0;
input  [63:0] d_weights1_q0;
output  [9:0] d_weights1_address1;
output   d_weights1_ce1;
input  [63:0] d_weights1_q1;
output  [11:0] d_weights2_address0;
output   d_weights2_ce0;
input  [63:0] d_weights2_q0;
output  [11:0] d_weights2_address1;
output   d_weights2_ce1;
input  [63:0] d_weights2_q1;
output  [5:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [5:0] d_weights3_0_address1;
output   d_weights3_0_ce1;
input  [63:0] d_weights3_0_q1;
output  [5:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [5:0] d_weights3_1_address1;
output   d_weights3_1_ce1;
input  [63:0] d_weights3_1_q1;
output  [5:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [5:0] d_weights3_2_address1;
output   d_weights3_2_ce1;
input  [63:0] d_weights3_2_q1;
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
output  [5:0] d_biases1_address0;
output   d_biases1_ce0;
input  [63:0] d_biases1_q0;
output  [5:0] d_biases1_address1;
output   d_biases1_ce1;
input  [63:0] d_biases1_q1;
output  [5:0] d_biases2_address0;
output   d_biases2_ce0;
input  [63:0] d_biases2_q0;
output  [5:0] d_biases2_address1;
output   d_biases2_ce1;
input  [63:0] d_biases2_q1;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
output  [63:0] grp_fu_2816_p_din0;
output  [63:0] grp_fu_2816_p_din1;
output  [1:0] grp_fu_2816_p_opcode;
input  [63:0] grp_fu_2816_p_dout0;
output   grp_fu_2816_p_ce;
output  [63:0] grp_fu_2820_p_din0;
output  [63:0] grp_fu_2820_p_din1;
output  [1:0] grp_fu_2820_p_opcode;
input  [63:0] grp_fu_2820_p_dout0;
output   grp_fu_2820_p_ce;
output  [63:0] grp_fu_2824_p_din0;
output  [63:0] grp_fu_2824_p_din1;
input  [63:0] grp_fu_2824_p_dout0;
output   grp_fu_2824_p_ce;
output  [63:0] grp_fu_2840_p_din0;
output  [63:0] grp_fu_2840_p_din1;
input  [63:0] grp_fu_2840_p_dout0;
output   grp_fu_2840_p_ce;
output  [63:0] grp_fu_2832_p_din0;
output  [63:0] grp_fu_2832_p_din1;
input  [63:0] grp_fu_2832_p_dout0;
output   grp_fu_2832_p_ce;
output  [63:0] grp_fu_2828_p_din0;
output  [63:0] grp_fu_2828_p_din1;
input  [63:0] grp_fu_2828_p_dout0;
output   grp_fu_2828_p_ce;
output  [63:0] grp_fu_2844_p_din0;
output  [63:0] grp_fu_2844_p_din1;
input  [63:0] grp_fu_2844_p_dout0;
output   grp_fu_2844_p_ce;
output  [63:0] grp_fu_2848_p_din0;
output  [63:0] grp_fu_2848_p_din1;
input  [63:0] grp_fu_2848_p_dout0;
output   grp_fu_2848_p_ce;
output  [63:0] grp_fu_2852_p_din0;
output  [63:0] grp_fu_2852_p_din1;
input  [63:0] grp_fu_2852_p_dout0;
output   grp_fu_2852_p_ce;
output  [63:0] grp_fu_2856_p_din0;
output  [63:0] grp_fu_2856_p_din1;
input  [63:0] grp_fu_2856_p_dout0;
output   grp_fu_2856_p_ce;
output  [63:0] grp_fu_2860_p_din0;
output  [63:0] grp_fu_2860_p_din1;
input  [63:0] grp_fu_2860_p_dout0;
output   grp_fu_2860_p_ce;
output  [63:0] grp_fu_2864_p_din0;
output  [63:0] grp_fu_2864_p_din1;
input  [63:0] grp_fu_2864_p_dout0;
output   grp_fu_2864_p_ce;
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
wire   [63:0] grp_fu_218_p2;
reg   [63:0] norm_1_reg_347;
wire    ap_CS_fsm_state59;
wire   [63:0] grp_fu_224_p2;
reg   [63:0] bias_norm_reg_352;
wire   [63:0] grp_fu_230_p2;
reg   [63:0] norm_reg_357;
wire   [63:0] grp_fu_236_p2;
reg   [63:0] bias_norm_58_reg_362;
wire   [63:0] grp_fu_242_p2;
reg   [63:0] norm_152_reg_367;
wire   [63:0] grp_fu_248_p2;
reg   [63:0] bias_norm_1_reg_372;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_ready;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_ce0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_ce1;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_d0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_d1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_norm_2_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_norm_2_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_ce1;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_d1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_bias_norm_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_bias_norm_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_ready;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_ce0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_ce1;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_d0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_d1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_norm_35_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_norm_35_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_ce1;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_d1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_bias_norm_35_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_bias_norm_35_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_ce1;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_d0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_d1;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_ce1;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_ce1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_norm_49_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_norm_49_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_d0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_bias_norm_25_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_bias_norm_25_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_ready;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_d0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_d1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_d1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_ready;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_d0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_d1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_d1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_ready;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_d0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_d1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_d0;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_ce1;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start_reg;
reg   [63:0] norm_49_loc_fu_76;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start_reg;
wire    ap_CS_fsm_state60;
reg    grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_fu_377_ce;
reg    grp_fu_381_ce;
reg    grp_fu_385_ce;
reg    grp_fu_389_ce;
reg    grp_fu_393_ce;
reg    grp_fu_397_ce;
reg    grp_fu_401_ce;
reg    grp_fu_405_ce;
reg    grp_fu_409_ce;
reg    grp_fu_413_ce;
reg    grp_fu_417_ce;
reg    grp_fu_421_ce;
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
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start_reg = 1'b0;
end
backprop_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_ready),.d_weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_address0),.d_weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_ce0),.d_weights1_q0(d_weights1_q0),.d_weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_address1),.d_weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_ce1),.d_weights1_q1(d_weights1_q1),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_address1),.weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_ce1),.weights1_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_we1),.weights1_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_d1),.weights1_q1(weights1_q1),.norm_2_out(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_norm_2_out),.norm_2_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_norm_2_out_ap_vld),.grp_fu_377_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_din0),.grp_fu_377_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_din1),.grp_fu_377_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_opcode),.grp_fu_377_p_dout0(grp_fu_2816_p_dout0),.grp_fu_377_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_ce),.grp_fu_381_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_din0),.grp_fu_381_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_din1),.grp_fu_381_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_opcode),.grp_fu_381_p_dout0(grp_fu_2820_p_dout0),.grp_fu_381_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_ce),.grp_fu_385_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_din0),.grp_fu_385_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_din1),.grp_fu_385_p_dout0(grp_fu_2824_p_dout0),.grp_fu_385_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop2 grp_update_weights_1_Pipeline_up_weight_loop2_fu_123(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_ready),.d_biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_address0),.d_biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_ce0),.d_biases1_q0(d_biases1_q0),.d_biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_address1),.d_biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_ce1),.d_biases1_q1(d_biases1_q1),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_address1),.biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_ce1),.biases1_we1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_we1),.biases1_d1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_d1),.biases1_q1(biases1_q1),.bias_norm_out(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_bias_norm_out),.bias_norm_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_bias_norm_out_ap_vld),.grp_fu_389_p_din0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_din1),.grp_fu_389_p_dout0(grp_fu_2840_p_dout0),.grp_fu_389_p_ce(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_ready),.d_weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_address0),.d_weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_ce0),.d_weights2_q0(d_weights2_q0),.d_weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_address1),.d_weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_ce1),.d_weights2_q1(d_weights2_q1),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_address1),.weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_ce1),.weights2_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_we1),.weights2_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_d1),.weights2_q1(weights2_q1),.norm_35_out(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_norm_35_out),.norm_35_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_norm_35_out_ap_vld),.grp_fu_397_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_din0),.grp_fu_397_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_din1),.grp_fu_397_p_dout0(grp_fu_2828_p_dout0),.grp_fu_397_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop6 grp_update_weights_1_Pipeline_up_weight_loop6_fu_141(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_ready),.d_biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_address0),.d_biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_ce0),.d_biases2_q0(d_biases2_q0),.d_biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_address1),.d_biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_ce1),.d_biases2_q1(d_biases2_q1),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_address1),.biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_ce1),.biases2_we1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_we1),.biases2_d1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_d1),.biases2_q1(biases2_q1),.bias_norm_35_out(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_bias_norm_35_out),.bias_norm_35_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_bias_norm_35_out_ap_vld),.grp_fu_401_p_din0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_din0),.grp_fu_401_p_din1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_din1),.grp_fu_401_p_dout0(grp_fu_2844_p_dout0),.grp_fu_401_p_ce(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop9 grp_update_weights_1_Pipeline_up_weight_loop9_fu_150(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_ready),.d_weights3_0_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_address0),.d_weights3_0_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_ce0),.d_weights3_0_q0(d_weights3_0_q0),.d_weights3_0_address1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_address1),.d_weights3_0_ce1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_ce1),.d_weights3_0_q1(d_weights3_0_q1),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_address1),.weights3_ce1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_ce1),.weights3_we1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_we1),.weights3_d1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_d1),.weights3_q1(weights3_q1),.d_weights3_1_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_address0),.d_weights3_1_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_ce0),.d_weights3_1_q0(d_weights3_1_q0),.d_weights3_1_address1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_address1),.d_weights3_1_ce1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_ce1),.d_weights3_1_q1(d_weights3_1_q1),.d_weights3_2_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_address0),.d_weights3_2_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_ce0),.d_weights3_2_q0(d_weights3_2_q0),.d_weights3_2_address1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_address1),.d_weights3_2_ce1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_ce1),.d_weights3_2_q1(d_weights3_2_q1),.norm_49_out(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_norm_49_out),.norm_49_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_norm_49_out_ap_vld),.grp_fu_405_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_din0),.grp_fu_405_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_din1),.grp_fu_405_p_dout0(grp_fu_2848_p_dout0),.grp_fu_405_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_ce),.grp_fu_409_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_din0),.grp_fu_409_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_din1),.grp_fu_409_p_dout0(grp_fu_2852_p_dout0),.grp_fu_409_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_ce),.grp_fu_413_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_din0),.grp_fu_413_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_din1),.grp_fu_413_p_dout0(grp_fu_2856_p_dout0),.grp_fu_413_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_ce),.grp_fu_417_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_din0),.grp_fu_417_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_din1),.grp_fu_417_p_dout0(grp_fu_2860_p_dout0),.grp_fu_417_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_184_6 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_ready),.p_read(p_read),.p_read1(p_read1),.p_read2(p_read2),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_d0),.biases3_q0(biases3_q0),.bias_norm_25_out(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_bias_norm_25_out),.bias_norm_25_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_bias_norm_25_out_ap_vld),.grp_fu_421_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_din0),.grp_fu_421_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_din1),.grp_fu_421_p_dout0(grp_fu_2864_p_dout0),.grp_fu_421_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_ready),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_address1),.weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_ce1),.weights1_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_we1),.weights1_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_d1),.weights1_q1(weights1_q1),.norm_1(norm_1_reg_347),.grp_fu_393_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_din0),.grp_fu_393_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_din1),.grp_fu_393_p_dout0(grp_fu_2832_p_dout0),.grp_fu_393_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop4 grp_update_weights_1_Pipeline_up_weight_loop4_fu_183(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_ready),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_address1),.biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_ce1),.biases1_we1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_we1),.biases1_d1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_d1),.biases1_q1(biases1_q1),.bias_norm_71(bias_norm_reg_352));
backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_ready),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_address1),.weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_ce1),.weights2_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_we1),.weights2_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_d1),.weights2_q1(weights2_q1),.norm_34(norm_reg_357));
backprop_update_weights_1_Pipeline_up_weight_loop8 grp_update_weights_1_Pipeline_up_weight_loop8_fu_197(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_ready),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_address1),.biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_ce1),.biases2_we1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_we1),.biases2_d1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_d1),.biases2_q1(biases2_q1),.bias_norm_34(bias_norm_58_reg_362));
backprop_update_weights_1_Pipeline_up_weight_loop10 grp_update_weights_1_Pipeline_up_weight_loop10_fu_204(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_ready),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_address1),.weights3_ce1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_ce1),.weights3_we1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_we1),.weights3_d1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_d1),.weights3_q1(weights3_q1),.norm_164(norm_152_reg_367));
backprop_update_weights_1_Pipeline_VITIS_LOOP_197_8 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_ready),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_d0),.biases3_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_address1),.biases3_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_ce1),.biases3_q1(biases3_q1),.bias_norm_68(bias_norm_1_reg_372));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U241(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_norm_2_out),.ce(1'b1),.dout(grp_fu_218_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U242(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_bias_norm_out),.ce(1'b1),.dout(grp_fu_224_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_norm_35_out),.ce(1'b1),.dout(grp_fu_230_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_bias_norm_35_out),.ce(1'b1),.dout(grp_fu_236_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(norm_49_loc_fu_76),.ce(1'b1),.dout(grp_fu_242_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U246(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_bias_norm_25_out),.ce(1'b1),.dout(grp_fu_248_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        bias_norm_1_reg_372 <= grp_fu_248_p2;
        bias_norm_58_reg_362 <= grp_fu_236_p2;
        bias_norm_reg_352 <= grp_fu_224_p2;
        norm_152_reg_367 <= grp_fu_242_p2;
        norm_1_reg_347 <= grp_fu_218_p2;
        norm_reg_357 <= grp_fu_230_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_norm_49_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        norm_49_loc_fu_76 <= grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_norm_49_out;
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
    if ((((1'b0 == ap_block_state60_on_subcall_done) & (1'b1 == ap_CS_fsm_state60)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_address0;
    end else begin
        biases1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_address1;
    end else begin
        biases1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_ce0;
    end else begin
        biases1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_ce1;
    end else begin
        biases1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_d0;
    end else begin
        biases1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_d1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_d1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_d1;
    end else begin
        biases1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_we0;
    end else begin
        biases1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_we1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_biases1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_we1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_biases1_we1;
    end else begin
        biases1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_address0;
    end else begin
        biases2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_address1;
    end else begin
        biases2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_ce0;
    end else begin
        biases2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_ce1;
    end else begin
        biases2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_d0;
    end else begin
        biases2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_d1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_d1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_d1;
    end else begin
        biases2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_we0;
    end else begin
        biases2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_we1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_biases2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_we1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_biases2_we1;
    end else begin
        biases2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_d0;
    end else begin
        biases3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_377_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_ce;
    end else begin
        grp_fu_377_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_381_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_ce;
    end else begin
        grp_fu_381_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_385_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_ce;
    end else begin
        grp_fu_385_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_389_ce = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_ce;
    end else begin
        grp_fu_389_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_393_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_ce;
    end else begin
        grp_fu_393_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_397_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_ce;
    end else begin
        grp_fu_397_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_401_ce = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_ce;
    end else begin
        grp_fu_401_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_405_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_ce;
    end else begin
        grp_fu_405_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_409_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_ce;
    end else begin
        grp_fu_409_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_413_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_ce;
    end else begin
        grp_fu_413_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_417_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_ce;
    end else begin
        grp_fu_417_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_421_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_ce;
    end else begin
        grp_fu_421_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_address0;
    end else begin
        weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_address1;
    end else begin
        weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_ce0;
    end else begin
        weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_ce1;
    end else begin
        weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_d0;
    end else begin
        weights1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_d1;
    end else begin
        weights1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_we0;
    end else begin
        weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_weights1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_weights1_we1;
    end else begin
        weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_address0;
    end else begin
        weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_address1;
    end else begin
        weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_ce0;
    end else begin
        weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_ce1;
    end else begin
        weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_d0;
    end else begin
        weights2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_d1;
    end else begin
        weights2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_we0;
    end else begin
        weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_weights2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_weights2_we1;
    end else begin
        weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_address0;
    end else begin
        weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_address1;
    end else begin
        weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_ce0;
    end else begin
        weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_ce1;
    end else begin
        weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_d0;
    end else begin
        weights3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_d1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_d1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_d1;
    end else begin
        weights3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_we0;
    end else begin
        weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_we1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_weights3_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_we1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_weights3_we1;
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
    ap_block_state2_on_subcall_done = ((grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_done == 1'b0));
end
always @ (*) begin
    ap_block_state60_on_subcall_done = ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_done == 1'b0));
end
assign biases3_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_biases3_address1;
assign d_biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_address0;
assign d_biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_address1;
assign d_biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_ce0;
assign d_biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_d_biases1_ce1;
assign d_biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_address0;
assign d_biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_address1;
assign d_biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_ce0;
assign d_biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_d_biases2_ce1;
assign d_weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_address0;
assign d_weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_address1;
assign d_weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_ce0;
assign d_weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_d_weights1_ce1;
assign d_weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_address0;
assign d_weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_address1;
assign d_weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_ce0;
assign d_weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_d_weights2_ce1;
assign d_weights3_0_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_address0;
assign d_weights3_0_address1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_address1;
assign d_weights3_0_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_ce0;
assign d_weights3_0_ce1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_0_ce1;
assign d_weights3_1_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_address0;
assign d_weights3_1_address1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_address1;
assign d_weights3_1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_ce0;
assign d_weights3_1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_1_ce1;
assign d_weights3_2_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_address0;
assign d_weights3_2_address1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_address1;
assign d_weights3_2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_ce0;
assign d_weights3_2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_d_weights3_2_ce1;
assign grp_fu_2816_p_ce = grp_fu_377_ce;
assign grp_fu_2816_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_din0;
assign grp_fu_2816_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_din1;
assign grp_fu_2816_p_opcode = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_377_p_opcode;
assign grp_fu_2820_p_ce = grp_fu_381_ce;
assign grp_fu_2820_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_din0;
assign grp_fu_2820_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_din1;
assign grp_fu_2820_p_opcode = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_381_p_opcode;
assign grp_fu_2824_p_ce = grp_fu_385_ce;
assign grp_fu_2824_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_din0;
assign grp_fu_2824_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_grp_fu_385_p_din1;
assign grp_fu_2828_p_ce = grp_fu_397_ce;
assign grp_fu_2828_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_din0;
assign grp_fu_2828_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_grp_fu_397_p_din1;
assign grp_fu_2832_p_ce = grp_fu_393_ce;
assign grp_fu_2832_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_din0;
assign grp_fu_2832_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_grp_fu_393_p_din1;
assign grp_fu_2840_p_ce = grp_fu_389_ce;
assign grp_fu_2840_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_din0;
assign grp_fu_2840_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_grp_fu_389_p_din1;
assign grp_fu_2844_p_ce = grp_fu_401_ce;
assign grp_fu_2844_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_din0;
assign grp_fu_2844_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_grp_fu_401_p_din1;
assign grp_fu_2848_p_ce = grp_fu_405_ce;
assign grp_fu_2848_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_din0;
assign grp_fu_2848_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_405_p_din1;
assign grp_fu_2852_p_ce = grp_fu_409_ce;
assign grp_fu_2852_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_din0;
assign grp_fu_2852_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_409_p_din1;
assign grp_fu_2856_p_ce = grp_fu_413_ce;
assign grp_fu_2856_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_din0;
assign grp_fu_2856_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_413_p_din1;
assign grp_fu_2860_p_ce = grp_fu_417_ce;
assign grp_fu_2860_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_din0;
assign grp_fu_2860_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_grp_fu_417_p_din1;
assign grp_fu_2864_p_ce = grp_fu_421_ce;
assign grp_fu_2864_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_din0;
assign grp_fu_2864_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_grp_fu_421_p_din1;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_114_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_176_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_132_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_190_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_163_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_211_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start = grp_update_weights_1_Pipeline_up_weight_loop10_fu_204_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start = grp_update_weights_1_Pipeline_up_weight_loop2_fu_123_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start = grp_update_weights_1_Pipeline_up_weight_loop4_fu_183_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start = grp_update_weights_1_Pipeline_up_weight_loop6_fu_141_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start = grp_update_weights_1_Pipeline_up_weight_loop8_fu_197_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start = grp_update_weights_1_Pipeline_up_weight_loop9_fu_150_ap_start_reg;
endmodule 
