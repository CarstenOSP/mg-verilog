module backprop_update_weights_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_q1,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_q1,d_weights1_address0,d_weights1_ce0,d_weights1_q0,d_weights2_address0,d_weights2_ce0,d_weights2_q0,d_weights3_address0,d_weights3_ce0,d_weights3_q0,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_q1,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,d_biases1_address0,d_biases1_ce0,d_biases1_q0,d_biases2_address0,d_biases2_ce0,d_biases2_q0,p_read,p_read1,p_read2,grp_fu_5329_p_din0,grp_fu_5329_p_din1,grp_fu_5329_p_opcode,grp_fu_5329_p_dout0,grp_fu_5329_p_ce,grp_fu_5337_p_din0,grp_fu_5337_p_din1,grp_fu_5337_p_dout0,grp_fu_5337_p_ce,grp_fu_5345_p_din0,grp_fu_5345_p_din1,grp_fu_5345_p_dout0,grp_fu_5345_p_ce,grp_fu_5333_p_din0,grp_fu_5333_p_din1,grp_fu_5333_p_opcode,grp_fu_5333_p_dout0,grp_fu_5333_p_ce,grp_fu_5341_p_din0,grp_fu_5341_p_din1,grp_fu_5341_p_dout0,grp_fu_5341_p_ce,grp_fu_5353_p_din0,grp_fu_5353_p_din1,grp_fu_5353_p_dout0,grp_fu_5353_p_ce); 
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
input  [63:0] weights1_q1;
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
input  [63:0] weights2_q1;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
output  [9:0] d_weights1_address0;
output   d_weights1_ce0;
input  [63:0] d_weights1_q0;
output  [11:0] d_weights2_address0;
output   d_weights2_ce0;
input  [63:0] d_weights2_q0;
output  [7:0] d_weights3_address0;
output   d_weights3_ce0;
input  [63:0] d_weights3_q0;
output  [5:0] biases1_address0;
output   biases1_ce0;
output   biases1_we0;
output  [63:0] biases1_d0;
input  [63:0] biases1_q0;
output  [5:0] biases1_address1;
output   biases1_ce1;
input  [63:0] biases1_q1;
output  [5:0] biases2_address0;
output   biases2_ce0;
output   biases2_we0;
output  [63:0] biases2_d0;
input  [63:0] biases2_q0;
output  [5:0] biases2_address1;
output   biases2_ce1;
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
output  [5:0] d_biases2_address0;
output   d_biases2_ce0;
input  [63:0] d_biases2_q0;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
output  [63:0] grp_fu_5329_p_din0;
output  [63:0] grp_fu_5329_p_din1;
output  [1:0] grp_fu_5329_p_opcode;
input  [63:0] grp_fu_5329_p_dout0;
output   grp_fu_5329_p_ce;
output  [63:0] grp_fu_5337_p_din0;
output  [63:0] grp_fu_5337_p_din1;
input  [63:0] grp_fu_5337_p_dout0;
output   grp_fu_5337_p_ce;
output  [63:0] grp_fu_5345_p_din0;
output  [63:0] grp_fu_5345_p_din1;
input  [63:0] grp_fu_5345_p_dout0;
output   grp_fu_5345_p_ce;
output  [63:0] grp_fu_5333_p_din0;
output  [63:0] grp_fu_5333_p_din1;
output  [1:0] grp_fu_5333_p_opcode;
input  [63:0] grp_fu_5333_p_dout0;
output   grp_fu_5333_p_ce;
output  [63:0] grp_fu_5341_p_din0;
output  [63:0] grp_fu_5341_p_din1;
input  [63:0] grp_fu_5341_p_dout0;
output   grp_fu_5341_p_ce;
output  [63:0] grp_fu_5353_p_din0;
output  [63:0] grp_fu_5353_p_din1;
input  [63:0] grp_fu_5353_p_dout0;
output   grp_fu_5353_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] weights1_address0;
reg weights1_ce0;
reg weights1_we0;
reg[63:0] weights1_d0;
reg weights1_ce1;
reg[11:0] weights2_address0;
reg weights2_ce0;
reg weights2_we0;
reg[63:0] weights2_d0;
reg weights2_ce1;
reg[7:0] weights3_address0;
reg weights3_ce0;
reg weights3_we0;
reg[63:0] weights3_d0;
reg weights3_ce1;
reg[5:0] biases1_address0;
reg biases1_ce0;
reg biases1_we0;
reg[63:0] biases1_d0;
reg biases1_ce1;
reg[5:0] biases2_address0;
reg biases2_ce0;
reg biases2_we0;
reg[63:0] biases2_d0;
reg biases2_ce1;
reg[1:0] biases3_address0;
reg biases3_ce0;
reg biases3_we0;
reg[63:0] biases3_d0;
reg biases3_ce1;
(* fsm_encoding = "none" *) reg   [59:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_210_p2;
reg   [63:0] norm_1_reg_339;
wire    ap_CS_fsm_state59;
wire   [63:0] grp_fu_216_p2;
reg   [63:0] bias_norm_reg_344;
wire   [63:0] grp_fu_222_p2;
reg   [63:0] norm_reg_349;
wire   [63:0] grp_fu_228_p2;
reg   [63:0] bias_norm_3_reg_354;
wire   [63:0] grp_fu_234_p2;
reg   [63:0] norm_3_reg_359;
wire   [63:0] grp_fu_240_p2;
reg   [63:0] bias_norm_4_reg_364;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_ready;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_d_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_d_weights1_ce0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_d0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_norm_2_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_norm_2_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_d_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_d_biases1_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_d0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_bias_norm_1_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_bias_norm_1_out_ap_vld;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_ready;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_d_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_d_weights2_ce0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_d0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_norm_4_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_norm_4_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_d_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_d_biases2_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_d0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_bias_norm_4_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_bias_norm_4_out_ap_vld;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_ready;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_d_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_d_weights3_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_d0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_norm_7_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_norm_7_out_ap_vld;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_d0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_bias_norm_7_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_bias_norm_7_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_ready;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_d0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_ce1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_ready;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_d0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_ready;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_d0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_d0;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_ce1;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start_reg;
wire    ap_CS_fsm_state60;
reg    grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_fu_369_ce;
reg    grp_fu_373_ce;
reg    grp_fu_377_ce;
reg    grp_fu_381_ce;
reg    grp_fu_385_ce;
reg    grp_fu_389_ce;
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
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start_reg = 1'b0;
end
backprop_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_ready),.d_weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_d_weights1_address0),.d_weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_d_weights1_ce0),.d_weights1_q0(d_weights1_q0),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_d0),.weights1_q0(weights1_q0),.norm_2_out(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_norm_2_out),.norm_2_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_norm_2_out_ap_vld),.grp_fu_369_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_din0),.grp_fu_369_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_din1),.grp_fu_369_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_opcode),.grp_fu_369_p_dout0(grp_fu_5329_p_dout0),.grp_fu_369_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_ce),.grp_fu_373_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_din0),.grp_fu_373_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_din1),.grp_fu_373_p_dout0(grp_fu_5337_p_dout0),.grp_fu_373_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop2 grp_update_weights_1_Pipeline_up_weight_loop2_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_ready),.d_biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_d_biases1_address0),.d_biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_d_biases1_ce0),.d_biases1_q0(d_biases1_q0),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_d0),.biases1_q0(biases1_q0),.bias_norm_1_out(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_bias_norm_1_out),.bias_norm_1_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_bias_norm_1_out_ap_vld));
backprop_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_ready),.d_weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_d_weights2_address0),.d_weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_d_weights2_ce0),.d_weights2_q0(d_weights2_q0),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_d0),.weights2_q0(weights2_q0),.norm_4_out(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_norm_4_out),.norm_4_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_norm_4_out_ap_vld),.grp_fu_381_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_din0),.grp_fu_381_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_din1),.grp_fu_381_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_opcode),.grp_fu_381_p_dout0(grp_fu_5333_p_dout0),.grp_fu_381_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_ce),.grp_fu_385_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_din0),.grp_fu_385_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_din1),.grp_fu_385_p_dout0(grp_fu_5341_p_dout0),.grp_fu_385_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop6 grp_update_weights_1_Pipeline_up_weight_loop6_fu_137(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_ready),.d_biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_d_biases2_address0),.d_biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_d_biases2_ce0),.d_biases2_q0(d_biases2_q0),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_d0),.biases2_q0(biases2_q0),.bias_norm_4_out(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_bias_norm_4_out),.bias_norm_4_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_bias_norm_4_out_ap_vld));
backprop_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5 grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_ready),.d_weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_d_weights3_address0),.d_weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_d_weights3_ce0),.d_weights3_q0(d_weights3_q0),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_d0),.weights3_q0(weights3_q0),.norm_7_out(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_norm_7_out),.norm_7_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_norm_7_out_ap_vld));
backprop_update_weights_1_Pipeline_VITIS_LOOP_184_6 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_ready),.p_read(p_read),.p_read1(p_read1),.p_read2(p_read2),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_d0),.biases3_q0(biases3_q0),.bias_norm_7_out(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_bias_norm_7_out),.bias_norm_7_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_bias_norm_7_out_ap_vld),.grp_fu_389_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_din1),.grp_fu_389_p_dout0(grp_fu_5353_p_dout0),.grp_fu_389_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_ready),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_d0),.weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_address1),.weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_ce1),.weights1_q1(weights1_q1),.norm_1(norm_1_reg_339),.grp_fu_377_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_din0),.grp_fu_377_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_din1),.grp_fu_377_p_dout0(grp_fu_5345_p_dout0),.grp_fu_377_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop4 grp_update_weights_1_Pipeline_up_weight_loop4_fu_175(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_ready),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_d0),.biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_address1),.biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_ce1),.biases1_q1(biases1_q1),.bias_norm(bias_norm_reg_344));
backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_ready),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_d0),.weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_address1),.weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_ce1),.weights2_q1(weights2_q1),.norm_5(norm_reg_349));
backprop_update_weights_1_Pipeline_up_weight_loop8 grp_update_weights_1_Pipeline_up_weight_loop8_fu_189(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_ready),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_d0),.biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_address1),.biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_ce1),.biases2_q1(biases2_q1),.bias_norm_3(bias_norm_3_reg_354));
backprop_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7 grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_ready),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_d0),.weights3_address1(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_address1),.weights3_ce1(grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_ce1),.weights3_q1(weights3_q1),.norm_8(norm_3_reg_359));
backprop_update_weights_1_Pipeline_VITIS_LOOP_197_8 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_ready),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_d0),.biases3_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_address1),.biases3_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_ce1),.biases3_q1(biases3_q1),.bias_norm_6(bias_norm_4_reg_364));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U400(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_norm_2_out),.ce(1'b1),.dout(grp_fu_210_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U401(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_bias_norm_1_out),.ce(1'b1),.dout(grp_fu_216_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U402(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_norm_4_out),.ce(1'b1),.dout(grp_fu_222_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U403(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_bias_norm_4_out),.ce(1'b1),.dout(grp_fu_228_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U404(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_norm_7_out),.ce(1'b1),.dout(grp_fu_234_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U405(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_bias_norm_7_out),.ce(1'b1),.dout(grp_fu_240_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        bias_norm_3_reg_354 <= grp_fu_228_p2;
        bias_norm_4_reg_364 <= grp_fu_240_p2;
        bias_norm_reg_344 <= grp_fu_216_p2;
        norm_1_reg_339 <= grp_fu_210_p2;
        norm_3_reg_359 <= grp_fu_234_p2;
        norm_reg_349 <= grp_fu_222_p2;
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
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_address0;
    end else begin
        biases1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_ce0;
    end else begin
        biases1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_ce1;
    end else begin
        biases1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_d0;
    end else begin
        biases1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_biases1_we0;
    end else begin
        biases1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_address0;
    end else begin
        biases2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_ce0;
    end else begin
        biases2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_ce1;
    end else begin
        biases2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_d0;
    end else begin
        biases2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_biases2_we0;
    end else begin
        biases2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_d0;
    end else begin
        biases3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_369_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_ce;
    end else begin
        grp_fu_369_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_373_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_ce;
    end else begin
        grp_fu_373_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_377_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_ce;
    end else begin
        grp_fu_377_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_381_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_ce;
    end else begin
        grp_fu_381_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_385_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_ce;
    end else begin
        grp_fu_385_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_389_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_ce;
    end else begin
        grp_fu_389_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_address0;
    end else begin
        weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_ce0;
    end else begin
        weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_ce1;
    end else begin
        weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_d0;
    end else begin
        weights1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_weights1_we0;
    end else begin
        weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_address0;
    end else begin
        weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_ce0;
    end else begin
        weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_ce1;
    end else begin
        weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_d0;
    end else begin
        weights2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_weights2_we0;
    end else begin
        weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_address0;
    end else begin
        weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_ce0;
    end else begin
        weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_ce1;
    end else begin
        weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_d0;
    end else begin
        weights3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_weights3_we0;
    end else begin
        weights3_we0 = 1'b0;
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
    ap_block_state2_on_subcall_done = ((grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_done == 1'b0));
end
always @ (*) begin
    ap_block_state60_on_subcall_done = ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_done == 1'b0));
end
assign biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_biases1_address1;
assign biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_biases2_address1;
assign biases3_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_biases3_address1;
assign d_biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_d_biases1_address0;
assign d_biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_d_biases1_ce0;
assign d_biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_d_biases2_address0;
assign d_biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_d_biases2_ce0;
assign d_weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_d_weights1_address0;
assign d_weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_d_weights1_ce0;
assign d_weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_d_weights2_address0;
assign d_weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_d_weights2_ce0;
assign d_weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_d_weights3_address0;
assign d_weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_d_weights3_ce0;
assign grp_fu_5329_p_ce = grp_fu_369_ce;
assign grp_fu_5329_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_din0;
assign grp_fu_5329_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_din1;
assign grp_fu_5329_p_opcode = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_369_p_opcode;
assign grp_fu_5333_p_ce = grp_fu_381_ce;
assign grp_fu_5333_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_din0;
assign grp_fu_5333_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_din1;
assign grp_fu_5333_p_opcode = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_381_p_opcode;
assign grp_fu_5337_p_ce = grp_fu_373_ce;
assign grp_fu_5337_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_din0;
assign grp_fu_5337_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_grp_fu_373_p_din1;
assign grp_fu_5341_p_ce = grp_fu_385_ce;
assign grp_fu_5341_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_din0;
assign grp_fu_5341_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_grp_fu_385_p_din1;
assign grp_fu_5345_p_ce = grp_fu_377_ce;
assign grp_fu_5345_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_din0;
assign grp_fu_5345_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_grp_fu_377_p_din1;
assign grp_fu_5353_p_ce = grp_fu_389_ce;
assign grp_fu_5353_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_din0;
assign grp_fu_5353_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_grp_fu_389_p_din1;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_110_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_128_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_155_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_203_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start = grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start = grp_update_weights_1_Pipeline_up_weight_loop2_fu_119_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start = grp_update_weights_1_Pipeline_up_weight_loop4_fu_175_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start = grp_update_weights_1_Pipeline_up_weight_loop6_fu_137_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start = grp_update_weights_1_Pipeline_up_weight_loop8_fu_189_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start = grp_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5_fu_146_ap_start_reg;
assign weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_168_weights1_address1;
assign weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_182_weights2_address1;
assign weights3_address1 = grp_update_weights_1_Pipeline_up_weight_loop10_VITIS_LOOP_193_7_fu_196_weights3_address1;
endmodule 