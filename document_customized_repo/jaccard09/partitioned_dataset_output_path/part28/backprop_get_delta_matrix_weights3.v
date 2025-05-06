
module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce,grp_fu_4724_p_din0,grp_fu_4724_p_din1,grp_fu_4724_p_dout0,grp_fu_4724_p_ce,grp_fu_4728_p_din0,grp_fu_4728_p_din1,grp_fu_4728_p_dout0,grp_fu_4728_p_ce,grp_fu_4732_p_din0,grp_fu_4732_p_din1,grp_fu_4732_p_dout0,grp_fu_4732_p_ce,grp_fu_4736_p_din0,grp_fu_4736_p_din1,grp_fu_4736_p_dout0,grp_fu_4736_p_ce,grp_fu_4740_p_din0,grp_fu_4740_p_din1,grp_fu_4740_p_dout0,grp_fu_4740_p_ce,grp_fu_4744_p_din0,grp_fu_4744_p_din1,grp_fu_4744_p_dout0,grp_fu_4744_p_ce,grp_fu_4748_p_din0,grp_fu_4748_p_din1,grp_fu_4748_p_dout0,grp_fu_4748_p_ce,grp_fu_4752_p_din0,grp_fu_4752_p_din1,grp_fu_4752_p_dout0,grp_fu_4752_p_ce,grp_fu_4756_p_din0,grp_fu_4756_p_din1,grp_fu_4756_p_dout0,grp_fu_4756_p_ce);  
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [3:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [3:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [3:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [3:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [3:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [3:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [3:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [3:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [3:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [3:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [3:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [3:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [3:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [3:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [3:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [1:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [1:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [1:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [1:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [1:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [1:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [1:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [1:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [1:0] last_activations_8_address0;
output   last_activations_8_ce0;
input  [63:0] last_activations_8_q0;
output  [1:0] last_activations_9_address0;
output   last_activations_9_ce0;
input  [63:0] last_activations_9_q0;
output  [1:0] last_activations_10_address0;
output   last_activations_10_ce0;
input  [63:0] last_activations_10_q0;
output  [1:0] last_activations_11_address0;
output   last_activations_11_ce0;
input  [63:0] last_activations_11_q0;
output  [1:0] last_activations_12_address0;
output   last_activations_12_ce0;
input  [63:0] last_activations_12_q0;
output  [1:0] last_activations_13_address0;
output   last_activations_13_ce0;
input  [63:0] last_activations_13_q0;
output  [1:0] last_activations_14_address0;
output   last_activations_14_ce0;
input  [63:0] last_activations_14_q0;
output  [1:0] last_activations_15_address0;
output   last_activations_15_ce0;
input  [63:0] last_activations_15_q0;
output  [63:0] grp_fu_4692_p_din0;
output  [63:0] grp_fu_4692_p_din1;
input  [63:0] grp_fu_4692_p_dout0;
output   grp_fu_4692_p_ce;
output  [63:0] grp_fu_4696_p_din0;
output  [63:0] grp_fu_4696_p_din1;
input  [63:0] grp_fu_4696_p_dout0;
output   grp_fu_4696_p_ce;
output  [63:0] grp_fu_4700_p_din0;
output  [63:0] grp_fu_4700_p_din1;
input  [63:0] grp_fu_4700_p_dout0;
output   grp_fu_4700_p_ce;
output  [63:0] grp_fu_4704_p_din0;
output  [63:0] grp_fu_4704_p_din1;
input  [63:0] grp_fu_4704_p_dout0;
output   grp_fu_4704_p_ce;
output  [63:0] grp_fu_4708_p_din0;
output  [63:0] grp_fu_4708_p_din1;
input  [63:0] grp_fu_4708_p_dout0;
output   grp_fu_4708_p_ce;
output  [63:0] grp_fu_4712_p_din0;
output  [63:0] grp_fu_4712_p_din1;
input  [63:0] grp_fu_4712_p_dout0;
output   grp_fu_4712_p_ce;
output  [63:0] grp_fu_4716_p_din0;
output  [63:0] grp_fu_4716_p_din1;
input  [63:0] grp_fu_4716_p_dout0;
output   grp_fu_4716_p_ce;
output  [63:0] grp_fu_4720_p_din0;
output  [63:0] grp_fu_4720_p_din1;
input  [63:0] grp_fu_4720_p_dout0;
output   grp_fu_4720_p_ce;
output  [63:0] grp_fu_4724_p_din0;
output  [63:0] grp_fu_4724_p_din1;
input  [63:0] grp_fu_4724_p_dout0;
output   grp_fu_4724_p_ce;
output  [63:0] grp_fu_4728_p_din0;
output  [63:0] grp_fu_4728_p_din1;
input  [63:0] grp_fu_4728_p_dout0;
output   grp_fu_4728_p_ce;
output  [63:0] grp_fu_4732_p_din0;
output  [63:0] grp_fu_4732_p_din1;
input  [63:0] grp_fu_4732_p_dout0;
output   grp_fu_4732_p_ce;
output  [63:0] grp_fu_4736_p_din0;
output  [63:0] grp_fu_4736_p_din1;
input  [63:0] grp_fu_4736_p_dout0;
output   grp_fu_4736_p_ce;
output  [63:0] grp_fu_4740_p_din0;
output  [63:0] grp_fu_4740_p_din1;
input  [63:0] grp_fu_4740_p_dout0;
output   grp_fu_4740_p_ce;
output  [63:0] grp_fu_4744_p_din0;
output  [63:0] grp_fu_4744_p_din1;
input  [63:0] grp_fu_4744_p_dout0;
output   grp_fu_4744_p_ce;
output  [63:0] grp_fu_4748_p_din0;
output  [63:0] grp_fu_4748_p_din1;
input  [63:0] grp_fu_4748_p_dout0;
output   grp_fu_4748_p_ce;
output  [63:0] grp_fu_4752_p_din0;
output  [63:0] grp_fu_4752_p_din1;
input  [63:0] grp_fu_4752_p_dout0;
output   grp_fu_4752_p_ce;
output  [63:0] grp_fu_4756_p_din0;
output  [63:0] grp_fu_4756_p_din1;
input  [63:0] grp_fu_4756_p_dout0;
output   grp_fu_4756_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_2662;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state11;
reg   [63:0] reg_2669;
reg   [63:0] reg_2676;
reg   [63:0] reg_2683;
reg   [63:0] reg_2690;
reg   [63:0] reg_2697;
reg   [63:0] reg_2704;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state12;
reg   [63:0] reg_2711;
reg   [63:0] reg_2718;
reg   [63:0] reg_2725;
reg   [63:0] reg_2732;
reg   [63:0] reg_2740;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state13;
reg   [63:0] reg_2748;
reg   [63:0] reg_2756;
reg   [63:0] reg_2764;
reg   [63:0] reg_2772;
reg   [63:0] reg_2780;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
reg   [63:0] reg_2786;
reg   [63:0] reg_2792;
reg   [63:0] reg_2798;
reg   [63:0] reg_2804;
reg   [63:0] reg_2810;
reg   [63:0] reg_2816;
reg   [63:0] reg_2822;
reg   [63:0] reg_2828;
reg   [63:0] reg_2834;
reg   [63:0] reg_2840;
reg   [63:0] reg_2846;
reg   [63:0] reg_2852;
reg   [63:0] reg_2858;
reg   [63:0] reg_2864;
reg   [63:0] reg_2870;
wire    ap_CS_fsm_state5;
reg   [63:0] last_activations_0_load_1_reg_3071;
reg   [63:0] last_activations_1_load_1_reg_3078;
reg   [63:0] last_activations_2_load_1_reg_3085;
reg   [63:0] last_activations_3_load_1_reg_3092;
reg   [63:0] last_activations_4_load_1_reg_3099;
reg   [63:0] last_activations_5_load_1_reg_3106;
wire    ap_CS_fsm_state6;
reg   [63:0] last_activations_6_load_1_reg_3138;
reg   [63:0] last_activations_7_load_1_reg_3145;
reg   [63:0] last_activations_8_load_1_reg_3152;
reg   [63:0] last_activations_9_load_1_reg_3159;
reg   [63:0] last_activations_10_load_1_reg_3166;
wire    ap_CS_fsm_state7;
reg   [63:0] last_activations_11_load_1_reg_3203;
reg   [63:0] last_activations_12_load_1_reg_3210;
reg   [63:0] last_activations_13_load_1_reg_3217;
reg   [63:0] last_activations_14_load_1_reg_3224;
reg   [63:0] last_activations_15_load_1_reg_3231;
wire    ap_CS_fsm_state8;
reg   [63:0] last_activations_0_load_2_reg_3263;
reg   [63:0] last_activations_1_load_2_reg_3270;
reg   [63:0] last_activations_2_load_2_reg_3277;
reg   [63:0] last_activations_3_load_2_reg_3284;
reg   [63:0] last_activations_4_load_2_reg_3291;
reg   [63:0] last_activations_5_load_2_reg_3298;
reg   [63:0] last_activations_6_load_2_reg_3330;
reg   [63:0] last_activations_7_load_2_reg_3337;
reg   [63:0] last_activations_8_load_2_reg_3344;
reg   [63:0] last_activations_9_load_2_reg_3351;
reg   [63:0] last_activations_10_load_2_reg_3358;
reg   [63:0] last_activations_11_load_2_reg_3395;
reg   [63:0] last_activations_12_load_2_reg_3402;
reg   [63:0] last_activations_13_load_2_reg_3409;
reg   [63:0] last_activations_14_load_2_reg_3416;
reg   [63:0] last_activations_15_load_2_reg_3423;
reg   [63:0] mul_58_2_reg_3480;
wire    ap_CS_fsm_state21;
reg    last_activations_0_ce0_local;
reg   [1:0] last_activations_0_address0_local;
reg    last_activations_1_ce0_local;
reg   [1:0] last_activations_1_address0_local;
reg    last_activations_2_ce0_local;
reg   [1:0] last_activations_2_address0_local;
reg    last_activations_3_ce0_local;
reg   [1:0] last_activations_3_address0_local;
reg    last_activations_4_ce0_local;
reg   [1:0] last_activations_4_address0_local;
reg    last_activations_5_ce0_local;
reg   [1:0] last_activations_5_address0_local;
reg    last_activations_6_ce0_local;
reg   [1:0] last_activations_6_address0_local;
reg    last_activations_7_ce0_local;
reg   [1:0] last_activations_7_address0_local;
reg    last_activations_8_ce0_local;
reg   [1:0] last_activations_8_address0_local;
reg    last_activations_9_ce0_local;
reg   [1:0] last_activations_9_address0_local;
reg    last_activations_10_ce0_local;
reg   [1:0] last_activations_10_address0_local;
reg    last_activations_11_ce0_local;
reg   [1:0] last_activations_11_address0_local;
reg    last_activations_12_ce0_local;
reg   [1:0] last_activations_12_address0_local;
reg    last_activations_13_ce0_local;
reg   [1:0] last_activations_13_address0_local;
reg    last_activations_14_ce0_local;
reg   [1:0] last_activations_14_address0_local;
reg    last_activations_15_ce0_local;
reg   [1:0] last_activations_15_address0_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [3:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [3:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [3:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [3:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [3:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [3:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [3:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [3:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [3:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [3:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [3:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [3:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [3:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [3:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [3:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [3:0] delta_weights3_15_address0_local;
reg   [63:0] grp_fu_2578_p0;
reg   [63:0] grp_fu_2578_p1;
reg   [63:0] grp_fu_2583_p0;
reg   [63:0] grp_fu_2583_p1;
reg   [63:0] grp_fu_2588_p0;
reg   [63:0] grp_fu_2588_p1;
reg   [63:0] grp_fu_2593_p0;
reg   [63:0] grp_fu_2593_p1;
reg   [63:0] grp_fu_2598_p0;
reg   [63:0] grp_fu_2598_p1;
reg   [63:0] grp_fu_2603_p0;
reg   [63:0] grp_fu_2603_p1;
reg   [63:0] grp_fu_2608_p0;
reg   [63:0] grp_fu_2608_p1;
reg   [63:0] grp_fu_2613_p0;
reg   [63:0] grp_fu_2613_p1;
reg   [63:0] grp_fu_2618_p0;
reg   [63:0] grp_fu_2618_p1;
reg   [63:0] grp_fu_2623_p0;
reg   [63:0] grp_fu_2623_p1;
reg   [63:0] grp_fu_2628_p0;
reg   [63:0] grp_fu_2628_p1;
reg   [63:0] grp_fu_2633_p0;
reg   [63:0] grp_fu_2633_p1;
reg   [63:0] grp_fu_2638_p0;
reg   [63:0] grp_fu_2638_p1;
reg   [63:0] grp_fu_2643_p0;
reg   [63:0] grp_fu_2643_p1;
reg   [63:0] grp_fu_2648_p0;
reg   [63:0] grp_fu_2648_p1;
reg   [63:0] grp_fu_2653_p0;
reg   [63:0] grp_fu_2653_p1;
reg   [20:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_0_load_1_reg_3071 <= last_activations_0_q0;
        last_activations_1_load_1_reg_3078 <= last_activations_1_q0;
        last_activations_2_load_1_reg_3085 <= last_activations_2_q0;
        last_activations_3_load_1_reg_3092 <= last_activations_3_q0;
        last_activations_4_load_1_reg_3099 <= last_activations_4_q0;
        last_activations_5_load_1_reg_3106 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_0_load_2_reg_3263 <= last_activations_0_q0;
        last_activations_1_load_2_reg_3270 <= last_activations_1_q0;
        last_activations_2_load_2_reg_3277 <= last_activations_2_q0;
        last_activations_3_load_2_reg_3284 <= last_activations_3_q0;
        last_activations_4_load_2_reg_3291 <= last_activations_4_q0;
        last_activations_5_load_2_reg_3298 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_10_load_1_reg_3166 <= last_activations_10_q0;
        last_activations_6_load_1_reg_3138 <= last_activations_6_q0;
        last_activations_7_load_1_reg_3145 <= last_activations_7_q0;
        last_activations_8_load_1_reg_3152 <= last_activations_8_q0;
        last_activations_9_load_1_reg_3159 <= last_activations_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_10_load_2_reg_3358 <= last_activations_10_q0;
        last_activations_6_load_2_reg_3330 <= last_activations_6_q0;
        last_activations_7_load_2_reg_3337 <= last_activations_7_q0;
        last_activations_8_load_2_reg_3344 <= last_activations_8_q0;
        last_activations_9_load_2_reg_3351 <= last_activations_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_11_load_1_reg_3203 <= last_activations_11_q0;
        last_activations_12_load_1_reg_3210 <= last_activations_12_q0;
        last_activations_13_load_1_reg_3217 <= last_activations_13_q0;
        last_activations_14_load_1_reg_3224 <= last_activations_14_q0;
        last_activations_15_load_1_reg_3231 <= last_activations_15_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_11_load_2_reg_3395 <= last_activations_11_q0;
        last_activations_12_load_2_reg_3402 <= last_activations_12_q0;
        last_activations_13_load_2_reg_3409 <= last_activations_13_q0;
        last_activations_14_load_2_reg_3416 <= last_activations_14_q0;
        last_activations_15_load_2_reg_3423 <= last_activations_15_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_58_2_reg_3480 <= grp_fu_4756_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_2662 <= last_activations_0_q0;
        reg_2669 <= last_activations_1_q0;
        reg_2676 <= last_activations_2_q0;
        reg_2683 <= last_activations_3_q0;
        reg_2690 <= last_activations_4_q0;
        reg_2697 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_2704 <= last_activations_6_q0;
        reg_2711 <= last_activations_7_q0;
        reg_2718 <= last_activations_8_q0;
        reg_2725 <= last_activations_9_q0;
        reg_2732 <= last_activations_10_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_2740 <= last_activations_11_q0;
        reg_2748 <= last_activations_12_q0;
        reg_2756 <= last_activations_13_q0;
        reg_2764 <= last_activations_14_q0;
        reg_2772 <= last_activations_15_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_2780 <= grp_fu_4692_p_dout0;
        reg_2786 <= grp_fu_4696_p_dout0;
        reg_2792 <= grp_fu_4700_p_dout0;
        reg_2798 <= grp_fu_4704_p_dout0;
        reg_2804 <= grp_fu_4708_p_dout0;
        reg_2810 <= grp_fu_4712_p_dout0;
        reg_2816 <= grp_fu_4716_p_dout0;
        reg_2822 <= grp_fu_4720_p_dout0;
        reg_2828 <= grp_fu_4724_p_dout0;
        reg_2834 <= grp_fu_4728_p_dout0;
        reg_2840 <= grp_fu_4732_p_dout0;
        reg_2846 <= grp_fu_4736_p_dout0;
        reg_2852 <= grp_fu_4740_p_dout0;
        reg_2858 <= grp_fu_4744_p_dout0;
        reg_2864 <= grp_fu_4748_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_2870 <= grp_fu_4752_p_dout0;
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
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_0_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address0_local = 64'd0;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_d0_local = mul_58_2_reg_3480;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_d0_local = reg_2780;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_10_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_10_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_10_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_10_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_10_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_10_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_10_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_10_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_10_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_10_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_10_address0_local = 64'd0;
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_10_d0_local = reg_2834;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_10_d0_local = reg_2840;
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_11_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_11_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_11_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_11_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_11_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_11_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_11_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_11_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_11_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_11_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_11_address0_local = 64'd0;
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_11_d0_local = reg_2840;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_11_d0_local = reg_2846;
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_12_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_12_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_12_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_12_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_12_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_12_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_12_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_12_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_12_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_12_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_12_address0_local = 64'd0;
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_12_d0_local = reg_2846;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_12_d0_local = reg_2852;
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_13_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_13_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_13_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_13_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_13_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_13_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_13_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_13_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_13_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_13_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_13_address0_local = 64'd0;
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_13_d0_local = reg_2852;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_13_d0_local = reg_2858;
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_14_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_14_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_14_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_14_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_14_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_14_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_14_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_14_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_14_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_14_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_14_address0_local = 64'd0;
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_14_d0_local = reg_2858;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_14_d0_local = reg_2864;
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_15_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_15_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_15_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_15_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_15_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_15_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_15_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_15_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_15_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_15_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_15_address0_local = 64'd0;
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_15_d0_local = reg_2864;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_15_d0_local = reg_2870;
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address0_local = 64'd0;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_d0_local = reg_2780;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_d0_local = reg_2786;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address0_local = 64'd0;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_d0_local = reg_2786;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_d0_local = reg_2792;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address0_local = 64'd0;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_d0_local = reg_2792;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_d0_local = reg_2798;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_4_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_4_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_4_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_4_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address0_local = 64'd0;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_4_d0_local = reg_2798;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_4_d0_local = reg_2804;
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_5_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_5_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_5_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_5_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address0_local = 64'd0;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_5_d0_local = reg_2804;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_5_d0_local = reg_2810;
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_6_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_6_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_6_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_6_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address0_local = 64'd0;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_6_d0_local = reg_2810;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_6_d0_local = reg_2816;
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_7_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_7_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_7_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_7_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address0_local = 64'd0;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_7_d0_local = reg_2816;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_7_d0_local = reg_2822;
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_8_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_8_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_8_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_8_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_8_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_8_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_8_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_8_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_8_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_8_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_8_address0_local = 64'd0;
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_8_d0_local = reg_2822;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_8_d0_local = reg_2828;
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_9_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_9_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_9_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_9_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_9_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_9_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_9_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_9_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_9_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_9_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_9_address0_local = 64'd0;
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_9_d0_local = reg_2828;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_9_d0_local = reg_2834;
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state21))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2578_p0 = reg_2740;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2578_p0 = last_activations_10_load_2_reg_3358;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2578_p0 = last_activations_5_load_2_reg_3298;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2578_p0 = last_activations_0_load_2_reg_3263;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2578_p0 = last_activations_10_load_1_reg_3166;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2578_p0 = last_activations_5_load_1_reg_3106;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2578_p0 = last_activations_0_load_1_reg_3071;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2578_p0 = reg_2732;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2578_p0 = reg_2697;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2578_p0 = reg_2662;
    end else begin
        grp_fu_2578_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2578_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2578_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2578_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2578_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2583_p0 = last_activations_11_load_2_reg_3395;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2583_p0 = last_activations_5_load_2_reg_3298;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2583_p0 = last_activations_0_load_2_reg_3263;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2583_p0 = last_activations_11_load_1_reg_3203;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2583_p0 = last_activations_5_load_1_reg_3106;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2583_p0 = last_activations_0_load_1_reg_3071;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2583_p0 = reg_2740;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2583_p0 = reg_2697;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2583_p0 = reg_2662;
    end else begin
        grp_fu_2583_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2583_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2583_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2583_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2583_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2588_p0 = last_activations_11_load_2_reg_3395;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2588_p0 = last_activations_6_load_2_reg_3330;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2588_p0 = last_activations_0_load_2_reg_3263;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2588_p0 = last_activations_11_load_1_reg_3203;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2588_p0 = last_activations_6_load_1_reg_3138;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2588_p0 = last_activations_0_load_1_reg_3071;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2588_p0 = reg_2740;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2588_p0 = reg_2704;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2588_p0 = reg_2662;
    end else begin
        grp_fu_2588_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2588_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2588_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2588_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2588_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2593_p0 = reg_2748;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2593_p0 = last_activations_11_load_2_reg_3395;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2593_p0 = last_activations_6_load_2_reg_3330;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2593_p0 = last_activations_1_load_2_reg_3270;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2593_p0 = last_activations_11_load_1_reg_3203;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2593_p0 = last_activations_6_load_1_reg_3138;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2593_p0 = last_activations_1_load_1_reg_3078;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2593_p0 = reg_2740;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2593_p0 = reg_2704;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2593_p0 = reg_2669;
    end else begin
        grp_fu_2593_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2593_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2593_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2593_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2593_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2598_p0 = last_activations_12_load_2_reg_3402;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2598_p0 = last_activations_6_load_2_reg_3330;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2598_p0 = last_activations_1_load_2_reg_3270;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2598_p0 = last_activations_12_load_1_reg_3210;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2598_p0 = last_activations_6_load_1_reg_3138;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2598_p0 = last_activations_1_load_1_reg_3078;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2598_p0 = reg_2748;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2598_p0 = reg_2704;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2598_p0 = reg_2669;
    end else begin
        grp_fu_2598_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2598_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2598_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2598_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2598_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2603_p0 = last_activations_12_load_2_reg_3402;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2603_p0 = last_activations_7_load_2_reg_3337;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2603_p0 = last_activations_1_load_2_reg_3270;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2603_p0 = last_activations_12_load_1_reg_3210;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2603_p0 = last_activations_7_load_1_reg_3145;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2603_p0 = last_activations_1_load_1_reg_3078;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2603_p0 = reg_2748;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2603_p0 = reg_2711;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2603_p0 = reg_2669;
    end else begin
        grp_fu_2603_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2603_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2603_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2603_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2603_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2608_p0 = reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2608_p0 = last_activations_12_load_2_reg_3402;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2608_p0 = last_activations_7_load_2_reg_3337;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2608_p0 = last_activations_2_load_2_reg_3277;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2608_p0 = last_activations_12_load_1_reg_3210;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2608_p0 = last_activations_7_load_1_reg_3145;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2608_p0 = last_activations_2_load_1_reg_3085;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2608_p0 = reg_2748;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2608_p0 = reg_2711;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2608_p0 = reg_2676;
    end else begin
        grp_fu_2608_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2608_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2608_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2608_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2608_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2613_p0 = last_activations_13_load_2_reg_3409;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2613_p0 = last_activations_7_load_2_reg_3337;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2613_p0 = last_activations_2_load_2_reg_3277;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2613_p0 = last_activations_13_load_1_reg_3217;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2613_p0 = last_activations_7_load_1_reg_3145;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2613_p0 = last_activations_2_load_1_reg_3085;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2613_p0 = reg_2756;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2613_p0 = reg_2711;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2613_p0 = reg_2676;
    end else begin
        grp_fu_2613_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2613_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2613_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2613_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2613_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2618_p0 = last_activations_13_load_2_reg_3409;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2618_p0 = last_activations_8_load_2_reg_3344;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2618_p0 = last_activations_2_load_2_reg_3277;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2618_p0 = last_activations_13_load_1_reg_3217;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2618_p0 = last_activations_8_load_1_reg_3152;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2618_p0 = last_activations_2_load_1_reg_3085;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2618_p0 = reg_2756;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2618_p0 = reg_2718;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2618_p0 = reg_2676;
    end else begin
        grp_fu_2618_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2618_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2618_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2618_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2618_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2623_p0 = reg_2764;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2623_p0 = last_activations_13_load_2_reg_3409;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2623_p0 = last_activations_8_load_2_reg_3344;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2623_p0 = last_activations_3_load_2_reg_3284;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2623_p0 = last_activations_13_load_1_reg_3217;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2623_p0 = last_activations_8_load_1_reg_3152;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2623_p0 = last_activations_3_load_1_reg_3092;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2623_p0 = reg_2756;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2623_p0 = reg_2718;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2623_p0 = reg_2683;
    end else begin
        grp_fu_2623_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2623_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2623_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2623_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2623_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2628_p0 = last_activations_14_load_2_reg_3416;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2628_p0 = last_activations_8_load_2_reg_3344;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2628_p0 = last_activations_3_load_2_reg_3284;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2628_p0 = last_activations_14_load_1_reg_3224;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2628_p0 = last_activations_8_load_1_reg_3152;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2628_p0 = last_activations_3_load_1_reg_3092;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2628_p0 = reg_2764;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2628_p0 = reg_2718;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2628_p0 = reg_2683;
    end else begin
        grp_fu_2628_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2628_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2628_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2628_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2628_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2633_p0 = last_activations_14_load_2_reg_3416;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2633_p0 = last_activations_9_load_2_reg_3351;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2633_p0 = last_activations_3_load_2_reg_3284;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2633_p0 = last_activations_14_load_1_reg_3224;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2633_p0 = last_activations_9_load_1_reg_3159;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2633_p0 = last_activations_3_load_1_reg_3092;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2633_p0 = reg_2764;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2633_p0 = reg_2725;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2633_p0 = reg_2683;
    end else begin
        grp_fu_2633_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2633_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2633_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2633_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2633_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2638_p0 = reg_2772;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2638_p0 = last_activations_14_load_2_reg_3416;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2638_p0 = last_activations_9_load_2_reg_3351;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2638_p0 = last_activations_4_load_2_reg_3291;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2638_p0 = last_activations_14_load_1_reg_3224;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2638_p0 = last_activations_9_load_1_reg_3159;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2638_p0 = last_activations_4_load_1_reg_3099;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2638_p0 = reg_2764;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2638_p0 = reg_2725;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2638_p0 = reg_2690;
    end else begin
        grp_fu_2638_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2638_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2638_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2638_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2638_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2643_p0 = last_activations_15_load_2_reg_3423;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2643_p0 = last_activations_9_load_2_reg_3351;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2643_p0 = last_activations_4_load_2_reg_3291;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2643_p0 = last_activations_15_load_1_reg_3231;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2643_p0 = last_activations_9_load_1_reg_3159;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2643_p0 = last_activations_4_load_1_reg_3099;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2643_p0 = reg_2772;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2643_p0 = reg_2725;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2643_p0 = reg_2690;
    end else begin
        grp_fu_2643_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2643_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2643_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2643_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2643_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2648_p0 = last_activations_15_load_2_reg_3423;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2648_p0 = last_activations_10_load_2_reg_3358;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2648_p0 = last_activations_4_load_2_reg_3291;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2648_p0 = last_activations_15_load_1_reg_3231;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2648_p0 = last_activations_10_load_1_reg_3166;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2648_p0 = last_activations_4_load_1_reg_3099;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_2648_p0 = reg_2772;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2648_p0 = reg_2732;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2648_p0 = reg_2690;
    end else begin
        grp_fu_2648_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2648_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2648_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2648_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2648_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2653_p0 = last_activations_15_load_2_reg_3423;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2653_p0 = last_activations_10_load_2_reg_3358;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2653_p0 = last_activations_5_load_2_reg_3298;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2653_p0 = last_activations_15_load_1_reg_3231;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2653_p0 = last_activations_10_load_1_reg_3166;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2653_p0 = last_activations_5_load_1_reg_3106;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2653_p0 = reg_2772;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2653_p0 = reg_2732;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2653_p0 = reg_2697;
    end else begin
        grp_fu_2653_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2653_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2653_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2653_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2653_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_0_address0_local = 64'd0;
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_10_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_10_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_10_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_10_address0_local = 64'd0;
    end else begin
        last_activations_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_10_ce0_local = 1'b1;
    end else begin
        last_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_11_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_11_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_11_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_11_address0_local = 64'd0;
    end else begin
        last_activations_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_11_ce0_local = 1'b1;
    end else begin
        last_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_12_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_12_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_12_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_12_address0_local = 64'd0;
    end else begin
        last_activations_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_12_ce0_local = 1'b1;
    end else begin
        last_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_13_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_13_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_13_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_13_address0_local = 64'd0;
    end else begin
        last_activations_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_13_ce0_local = 1'b1;
    end else begin
        last_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_14_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_14_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_14_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_14_address0_local = 64'd0;
    end else begin
        last_activations_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_14_ce0_local = 1'b1;
    end else begin
        last_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_15_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_15_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_15_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_15_address0_local = 64'd0;
    end else begin
        last_activations_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_15_ce0_local = 1'b1;
    end else begin
        last_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_1_address0_local = 64'd0;
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_2_address0_local = 64'd0;
    end else begin
        last_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_3_address0_local = 64'd0;
    end else begin
        last_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_4_address0_local = 64'd0;
    end else begin
        last_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_5_address0_local = 64'd0;
    end else begin
        last_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_6_address0_local = 64'd0;
    end else begin
        last_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_7_address0_local = 64'd0;
    end else begin
        last_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_8_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_8_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_8_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_8_address0_local = 64'd0;
    end else begin
        last_activations_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_8_ce0_local = 1'b1;
    end else begin
        last_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_9_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_9_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_9_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_9_address0_local = 64'd0;
    end else begin
        last_activations_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_9_ce0_local = 1'b1;
    end else begin
        last_activations_9_ce0_local = 1'b0;
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign grp_fu_4692_p_ce = 1'b1;
assign grp_fu_4692_p_din0 = grp_fu_2578_p0;
assign grp_fu_4692_p_din1 = grp_fu_2578_p1;
assign grp_fu_4696_p_ce = 1'b1;
assign grp_fu_4696_p_din0 = grp_fu_2583_p0;
assign grp_fu_4696_p_din1 = grp_fu_2583_p1;
assign grp_fu_4700_p_ce = 1'b1;
assign grp_fu_4700_p_din0 = grp_fu_2588_p0;
assign grp_fu_4700_p_din1 = grp_fu_2588_p1;
assign grp_fu_4704_p_ce = 1'b1;
assign grp_fu_4704_p_din0 = grp_fu_2593_p0;
assign grp_fu_4704_p_din1 = grp_fu_2593_p1;
assign grp_fu_4708_p_ce = 1'b1;
assign grp_fu_4708_p_din0 = grp_fu_2598_p0;
assign grp_fu_4708_p_din1 = grp_fu_2598_p1;
assign grp_fu_4712_p_ce = 1'b1;
assign grp_fu_4712_p_din0 = grp_fu_2603_p0;
assign grp_fu_4712_p_din1 = grp_fu_2603_p1;
assign grp_fu_4716_p_ce = 1'b1;
assign grp_fu_4716_p_din0 = grp_fu_2608_p0;
assign grp_fu_4716_p_din1 = grp_fu_2608_p1;
assign grp_fu_4720_p_ce = 1'b1;
assign grp_fu_4720_p_din0 = grp_fu_2613_p0;
assign grp_fu_4720_p_din1 = grp_fu_2613_p1;
assign grp_fu_4724_p_ce = 1'b1;
assign grp_fu_4724_p_din0 = grp_fu_2618_p0;
assign grp_fu_4724_p_din1 = grp_fu_2618_p1;
assign grp_fu_4728_p_ce = 1'b1;
assign grp_fu_4728_p_din0 = grp_fu_2623_p0;
assign grp_fu_4728_p_din1 = grp_fu_2623_p1;
assign grp_fu_4732_p_ce = 1'b1;
assign grp_fu_4732_p_din0 = grp_fu_2628_p0;
assign grp_fu_4732_p_din1 = grp_fu_2628_p1;
assign grp_fu_4736_p_ce = 1'b1;
assign grp_fu_4736_p_din0 = grp_fu_2633_p0;
assign grp_fu_4736_p_din1 = grp_fu_2633_p1;
assign grp_fu_4740_p_ce = 1'b1;
assign grp_fu_4740_p_din0 = grp_fu_2638_p0;
assign grp_fu_4740_p_din1 = grp_fu_2638_p1;
assign grp_fu_4744_p_ce = 1'b1;
assign grp_fu_4744_p_din0 = grp_fu_2643_p0;
assign grp_fu_4744_p_din1 = grp_fu_2643_p1;
assign grp_fu_4748_p_ce = 1'b1;
assign grp_fu_4748_p_din0 = grp_fu_2648_p0;
assign grp_fu_4748_p_din1 = grp_fu_2648_p1;
assign grp_fu_4752_p_ce = 1'b1;
assign grp_fu_4752_p_din0 = grp_fu_2653_p0;
assign grp_fu_4752_p_din1 = grp_fu_2653_p1;
assign grp_fu_4756_p_ce = 1'b1;
assign grp_fu_4756_p_din0 = reg_2732;
assign grp_fu_4756_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = last_activations_10_address0_local;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = last_activations_11_address0_local;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = last_activations_12_address0_local;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = last_activations_13_address0_local;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = last_activations_14_address0_local;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = last_activations_15_address0_local;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = last_activations_2_address0_local;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = last_activations_3_address0_local;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = last_activations_4_address0_local;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = last_activations_5_address0_local;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = last_activations_6_address0_local;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = last_activations_7_address0_local;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = last_activations_8_address0_local;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = last_activations_9_address0_local;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
endmodule 
