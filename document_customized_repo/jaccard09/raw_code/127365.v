module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [8:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [8:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [8:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [8:0] A_4_address0;
output   A_4_ce0;
input  [31:0] A_4_q0;
output  [8:0] A_5_address0;
output   A_5_ce0;
input  [31:0] A_5_q0;
output  [8:0] A_6_address0;
output   A_6_ce0;
input  [31:0] A_6_q0;
output  [8:0] A_7_address0;
output   A_7_ce0;
input  [31:0] A_7_q0;
output  [5:0] p_address0;
output   p_ce0;
input  [31:0] p_q0;
output  [5:0] r_address0;
output   r_ce0;
input  [31:0] r_q0;
output  [31:0] s_out_din;
input   s_out_full_n;
output   s_out_write;
output  [31:0] q_out_din;
input   q_out_full_n;
output   q_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_out_write;
reg q_out_write;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_1927_p2;
reg   [6:0] add_ln13_reg_2680;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1939_p1;
reg   [5:0] trunc_ln13_reg_2791;
wire    ap_CS_fsm_state3;
wire   [1:0] trunc_ln13_2_fu_1945_p1;
reg   [1:0] trunc_ln13_2_reg_2799;
wire   [0:0] empty_fu_2017_p2;
reg   [0:0] empty_reg_2805;
wire    ap_CS_fsm_state4;
wire   [2:0] buff_s_out_addr_2_reg_2810;
wire    ap_CS_fsm_state6;
wire   [2:0] buff_s_out_1_addr_2_reg_2815;
wire   [2:0] buff_s_out_2_addr_2_reg_2820;
wire   [2:0] buff_s_out_3_addr_2_reg_2825;
wire   [2:0] buff_s_out_4_addr_2_reg_2830;
wire   [2:0] buff_s_out_5_addr_2_reg_2835;
wire   [2:0] buff_s_out_6_addr_2_reg_2840;
wire   [2:0] buff_s_out_7_addr_2_reg_2845;
wire   [2:0] buff_s_out_addr_3_reg_2850;
wire   [2:0] buff_s_out_1_addr_3_reg_2855;
wire   [2:0] buff_s_out_2_addr_3_reg_2860;
wire   [2:0] buff_s_out_3_addr_3_reg_2865;
wire   [2:0] buff_s_out_4_addr_3_reg_2870;
wire   [2:0] buff_s_out_5_addr_3_reg_2875;
wire   [2:0] buff_s_out_6_addr_3_reg_2880;
wire   [2:0] buff_s_out_7_addr_3_reg_2885;
reg   [31:0] buff_s_out_load_reg_2890;
reg   [31:0] buff_s_out_1_load_reg_2895;
reg   [31:0] buff_s_out_2_load_reg_2900;
reg   [31:0] buff_s_out_3_load_reg_2905;
reg   [31:0] buff_s_out_4_load_reg_2910;
reg   [31:0] buff_s_out_5_load_reg_2915;
reg   [31:0] buff_s_out_6_load_reg_2920;
reg   [31:0] buff_s_out_7_load_reg_2925;
reg   [31:0] buff_s_out_load_1_reg_2930;
reg   [31:0] buff_s_out_1_load_1_reg_2935;
reg   [31:0] buff_s_out_2_load_1_reg_2940;
reg   [31:0] buff_s_out_3_load_1_reg_2945;
reg   [31:0] buff_s_out_4_load_1_reg_2950;
reg   [31:0] buff_s_out_5_load_1_reg_2955;
reg   [31:0] buff_s_out_6_load_1_reg_2960;
reg   [31:0] buff_s_out_7_load_1_reg_2965;
wire   [2:0] buff_s_out_addr_4_reg_2970;
wire    ap_CS_fsm_state7;
wire   [2:0] buff_s_out_1_addr_4_reg_2975;
wire   [2:0] buff_s_out_2_addr_4_reg_2980;
wire   [2:0] buff_s_out_3_addr_4_reg_2985;
wire   [2:0] buff_s_out_4_addr_4_reg_2990;
wire   [2:0] buff_s_out_5_addr_4_reg_2995;
wire   [2:0] buff_s_out_6_addr_4_reg_3000;
wire   [2:0] buff_s_out_7_addr_4_reg_3005;
wire   [2:0] buff_s_out_addr_5_reg_3010;
wire   [2:0] buff_s_out_1_addr_5_reg_3015;
wire   [2:0] buff_s_out_2_addr_5_reg_3020;
wire   [2:0] buff_s_out_3_addr_5_reg_3025;
wire   [2:0] buff_s_out_4_addr_5_reg_3030;
wire   [2:0] buff_s_out_5_addr_5_reg_3035;
wire   [2:0] buff_s_out_6_addr_5_reg_3040;
wire   [2:0] buff_s_out_7_addr_5_reg_3045;
reg   [31:0] buff_s_out_load_2_reg_3050;
reg   [31:0] buff_s_out_1_load_2_reg_3055;
reg   [31:0] buff_s_out_2_load_2_reg_3060;
reg   [31:0] buff_s_out_3_load_2_reg_3065;
reg   [31:0] buff_s_out_4_load_2_reg_3070;
reg   [31:0] buff_s_out_5_load_2_reg_3075;
reg   [31:0] buff_s_out_6_load_2_reg_3080;
reg   [31:0] buff_s_out_7_load_2_reg_3085;
reg   [31:0] buff_s_out_load_3_reg_3090;
reg   [31:0] buff_s_out_1_load_3_reg_3095;
reg   [31:0] buff_s_out_2_load_3_reg_3100;
reg   [31:0] buff_s_out_3_load_3_reg_3105;
reg   [31:0] buff_s_out_4_load_3_reg_3110;
reg   [31:0] buff_s_out_5_load_3_reg_3115;
reg   [31:0] buff_s_out_6_load_3_reg_3120;
reg   [31:0] buff_s_out_7_load_3_reg_3125;
wire   [2:0] buff_s_out_addr_6_reg_3130;
wire    ap_CS_fsm_state8;
wire   [2:0] buff_s_out_1_addr_6_reg_3135;
wire   [2:0] buff_s_out_2_addr_6_reg_3140;
wire   [2:0] buff_s_out_3_addr_6_reg_3145;
wire   [2:0] buff_s_out_4_addr_6_reg_3150;
wire   [2:0] buff_s_out_5_addr_6_reg_3155;
wire   [2:0] buff_s_out_6_addr_6_reg_3160;
wire   [2:0] buff_s_out_7_addr_6_reg_3165;
wire   [2:0] buff_s_out_addr_7_reg_3170;
wire   [2:0] buff_s_out_1_addr_7_reg_3175;
wire   [2:0] buff_s_out_2_addr_7_reg_3180;
wire   [2:0] buff_s_out_3_addr_7_reg_3185;
wire   [2:0] buff_s_out_4_addr_7_reg_3190;
wire   [2:0] buff_s_out_5_addr_7_reg_3195;
wire   [2:0] buff_s_out_6_addr_7_reg_3200;
wire   [2:0] buff_s_out_7_addr_7_reg_3205;
reg   [31:0] buff_s_out_load_4_reg_3210;
reg   [31:0] buff_s_out_1_load_4_reg_3215;
reg   [31:0] buff_s_out_2_load_4_reg_3220;
reg   [31:0] buff_s_out_3_load_4_reg_3225;
reg   [31:0] buff_s_out_4_load_4_reg_3230;
reg   [31:0] buff_s_out_5_load_4_reg_3235;
reg   [31:0] buff_s_out_6_load_4_reg_3240;
reg   [31:0] buff_s_out_7_load_4_reg_3245;
reg   [31:0] buff_s_out_load_5_reg_3250;
reg   [31:0] buff_s_out_1_load_5_reg_3255;
reg   [31:0] buff_s_out_2_load_5_reg_3260;
reg   [31:0] buff_s_out_3_load_5_reg_3265;
reg   [31:0] buff_s_out_4_load_5_reg_3270;
reg   [31:0] buff_s_out_5_load_5_reg_3275;
reg   [31:0] buff_s_out_6_load_5_reg_3280;
reg   [31:0] buff_s_out_7_load_5_reg_3285;
reg   [31:0] buff_s_out_load_6_reg_3290;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_s_out_1_load_6_reg_3295;
reg   [31:0] buff_s_out_2_load_6_reg_3300;
reg   [31:0] buff_s_out_3_load_6_reg_3305;
reg   [31:0] buff_s_out_4_load_6_reg_3310;
reg   [31:0] buff_s_out_5_load_6_reg_3315;
reg   [31:0] buff_s_out_6_load_6_reg_3320;
reg   [31:0] buff_s_out_7_load_6_reg_3325;
reg   [31:0] buff_s_out_load_7_reg_3330;
reg   [31:0] buff_s_out_1_load_7_reg_3335;
reg   [31:0] buff_s_out_2_load_7_reg_3340;
reg   [31:0] buff_s_out_3_load_7_reg_3345;
reg   [31:0] buff_s_out_4_load_7_reg_3350;
reg   [31:0] buff_s_out_5_load_7_reg_3355;
reg   [31:0] buff_s_out_6_load_7_reg_3360;
reg   [31:0] buff_s_out_7_load_7_reg_3365;
reg   [6:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [6:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [6:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg   [6:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg   [6:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg    buff_A_4_ce1;
wire   [31:0] buff_A_4_q1;
reg   [6:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg    buff_A_5_ce1;
wire   [31:0] buff_A_5_q1;
reg   [6:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg    buff_A_6_ce1;
wire   [31:0] buff_A_6_q1;
reg   [6:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg    buff_A_7_ce1;
wire   [31:0] buff_A_7_q1;
reg   [6:0] buff_A_8_address0;
reg    buff_A_8_ce0;
reg    buff_A_8_we0;
wire   [31:0] buff_A_8_q0;
reg    buff_A_8_ce1;
wire   [31:0] buff_A_8_q1;
reg   [6:0] buff_A_9_address0;
reg    buff_A_9_ce0;
reg    buff_A_9_we0;
wire   [31:0] buff_A_9_q0;
reg    buff_A_9_ce1;
wire   [31:0] buff_A_9_q1;
reg   [6:0] buff_A_10_address0;
reg    buff_A_10_ce0;
reg    buff_A_10_we0;
wire   [31:0] buff_A_10_q0;
reg    buff_A_10_ce1;
wire   [31:0] buff_A_10_q1;
reg   [6:0] buff_A_11_address0;
reg    buff_A_11_ce0;
reg    buff_A_11_we0;
wire   [31:0] buff_A_11_q0;
reg    buff_A_11_ce1;
wire   [31:0] buff_A_11_q1;
reg   [6:0] buff_A_12_address0;
reg    buff_A_12_ce0;
reg    buff_A_12_we0;
wire   [31:0] buff_A_12_q0;
reg    buff_A_12_ce1;
wire   [31:0] buff_A_12_q1;
reg   [6:0] buff_A_13_address0;
reg    buff_A_13_ce0;
reg    buff_A_13_we0;
wire   [31:0] buff_A_13_q0;
reg    buff_A_13_ce1;
wire   [31:0] buff_A_13_q1;
reg   [6:0] buff_A_14_address0;
reg    buff_A_14_ce0;
reg    buff_A_14_we0;
wire   [31:0] buff_A_14_q0;
reg    buff_A_14_ce1;
wire   [31:0] buff_A_14_q1;
reg   [6:0] buff_A_15_address0;
reg    buff_A_15_ce0;
reg    buff_A_15_we0;
wire   [31:0] buff_A_15_q0;
reg    buff_A_15_ce1;
wire   [31:0] buff_A_15_q1;
reg   [6:0] buff_A_16_address0;
reg    buff_A_16_ce0;
reg    buff_A_16_we0;
wire   [31:0] buff_A_16_q0;
reg    buff_A_16_ce1;
wire   [31:0] buff_A_16_q1;
reg   [6:0] buff_A_17_address0;
reg    buff_A_17_ce0;
reg    buff_A_17_we0;
wire   [31:0] buff_A_17_q0;
reg    buff_A_17_ce1;
wire   [31:0] buff_A_17_q1;
reg   [6:0] buff_A_18_address0;
reg    buff_A_18_ce0;
reg    buff_A_18_we0;
wire   [31:0] buff_A_18_q0;
reg    buff_A_18_ce1;
wire   [31:0] buff_A_18_q1;
reg   [6:0] buff_A_19_address0;
reg    buff_A_19_ce0;
reg    buff_A_19_we0;
wire   [31:0] buff_A_19_q0;
reg    buff_A_19_ce1;
wire   [31:0] buff_A_19_q1;
reg   [6:0] buff_A_20_address0;
reg    buff_A_20_ce0;
reg    buff_A_20_we0;
wire   [31:0] buff_A_20_q0;
reg    buff_A_20_ce1;
wire   [31:0] buff_A_20_q1;
reg   [6:0] buff_A_21_address0;
reg    buff_A_21_ce0;
reg    buff_A_21_we0;
wire   [31:0] buff_A_21_q0;
reg    buff_A_21_ce1;
wire   [31:0] buff_A_21_q1;
reg   [6:0] buff_A_22_address0;
reg    buff_A_22_ce0;
reg    buff_A_22_we0;
wire   [31:0] buff_A_22_q0;
reg    buff_A_22_ce1;
wire   [31:0] buff_A_22_q1;
reg   [6:0] buff_A_23_address0;
reg    buff_A_23_ce0;
reg    buff_A_23_we0;
wire   [31:0] buff_A_23_q0;
reg    buff_A_23_ce1;
wire   [31:0] buff_A_23_q1;
reg   [6:0] buff_A_24_address0;
reg    buff_A_24_ce0;
reg    buff_A_24_we0;
wire   [31:0] buff_A_24_q0;
reg    buff_A_24_ce1;
wire   [31:0] buff_A_24_q1;
reg   [6:0] buff_A_25_address0;
reg    buff_A_25_ce0;
reg    buff_A_25_we0;
wire   [31:0] buff_A_25_q0;
reg    buff_A_25_ce1;
wire   [31:0] buff_A_25_q1;
reg   [6:0] buff_A_26_address0;
reg    buff_A_26_ce0;
reg    buff_A_26_we0;
wire   [31:0] buff_A_26_q0;
reg    buff_A_26_ce1;
wire   [31:0] buff_A_26_q1;
reg   [6:0] buff_A_27_address0;
reg    buff_A_27_ce0;
reg    buff_A_27_we0;
wire   [31:0] buff_A_27_q0;
reg    buff_A_27_ce1;
wire   [31:0] buff_A_27_q1;
reg   [6:0] buff_A_28_address0;
reg    buff_A_28_ce0;
reg    buff_A_28_we0;
wire   [31:0] buff_A_28_q0;
reg    buff_A_28_ce1;
wire   [31:0] buff_A_28_q1;
reg   [6:0] buff_A_29_address0;
reg    buff_A_29_ce0;
reg    buff_A_29_we0;
wire   [31:0] buff_A_29_q0;
reg    buff_A_29_ce1;
wire   [31:0] buff_A_29_q1;
reg   [6:0] buff_A_30_address0;
reg    buff_A_30_ce0;
reg    buff_A_30_we0;
wire   [31:0] buff_A_30_q0;
reg    buff_A_30_ce1;
wire   [31:0] buff_A_30_q1;
reg   [6:0] buff_A_31_address0;
reg    buff_A_31_ce0;
reg    buff_A_31_we0;
wire   [31:0] buff_A_31_q0;
reg    buff_A_31_ce1;
wire   [31:0] buff_A_31_q1;
reg   [2:0] buff_p_address0;
reg    buff_p_ce0;
wire   [31:0] buff_p_q0;
reg   [2:0] buff_p_1_address0;
reg    buff_p_1_ce0;
wire   [31:0] buff_p_1_q0;
reg   [2:0] buff_p_2_address0;
reg    buff_p_2_ce0;
wire   [31:0] buff_p_2_q0;
reg   [2:0] buff_p_3_address0;
reg    buff_p_3_ce0;
wire   [31:0] buff_p_3_q0;
reg   [2:0] buff_p_4_address0;
reg    buff_p_4_ce0;
wire   [31:0] buff_p_4_q0;
reg   [2:0] buff_p_5_address0;
reg    buff_p_5_ce0;
wire   [31:0] buff_p_5_q0;
reg   [2:0] buff_p_6_address0;
reg    buff_p_6_ce0;
wire   [31:0] buff_p_6_q0;
reg   [2:0] buff_p_7_address0;
reg    buff_p_7_ce0;
wire   [31:0] buff_p_7_q0;
reg   [2:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [2:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg   [2:0] buff_r_2_address0;
reg    buff_r_2_ce0;
wire   [31:0] buff_r_2_q0;
reg   [2:0] buff_r_3_address0;
reg    buff_r_3_ce0;
wire   [31:0] buff_r_3_q0;
reg   [2:0] buff_r_4_address0;
reg    buff_r_4_ce0;
wire   [31:0] buff_r_4_q0;
reg   [2:0] buff_r_5_address0;
reg    buff_r_5_ce0;
wire   [31:0] buff_r_5_q0;
reg   [2:0] buff_r_6_address0;
reg    buff_r_6_ce0;
wire   [31:0] buff_r_6_q0;
reg   [2:0] buff_r_7_address0;
reg    buff_r_7_ce0;
wire   [31:0] buff_r_7_q0;
reg   [2:0] buff_s_out_address0;
reg    buff_s_out_ce0;
wire   [31:0] buff_s_out_q0;
wire   [31:0] buff_s_out_q1;
reg   [2:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
wire   [31:0] buff_s_out_1_q0;
wire   [31:0] buff_s_out_1_q1;
reg   [2:0] buff_s_out_2_address0;
reg    buff_s_out_2_ce0;
wire   [31:0] buff_s_out_2_q0;
wire   [31:0] buff_s_out_2_q1;
reg   [2:0] buff_s_out_3_address0;
reg    buff_s_out_3_ce0;
wire   [31:0] buff_s_out_3_q0;
wire   [31:0] buff_s_out_3_q1;
reg   [2:0] buff_s_out_4_address0;
reg    buff_s_out_4_ce0;
wire   [31:0] buff_s_out_4_q0;
wire   [31:0] buff_s_out_4_q1;
reg   [2:0] buff_s_out_5_address0;
reg    buff_s_out_5_ce0;
wire   [31:0] buff_s_out_5_q0;
wire   [31:0] buff_s_out_5_q1;
reg   [2:0] buff_s_out_6_address0;
reg    buff_s_out_6_ce0;
wire   [31:0] buff_s_out_6_q0;
wire   [31:0] buff_s_out_6_q1;
reg   [2:0] buff_s_out_7_address0;
reg    buff_s_out_7_ce0;
wire   [31:0] buff_s_out_7_q0;
wire   [31:0] buff_s_out_7_q1;
reg   [2:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg   [2:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg   [2:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg   [2:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
reg   [2:0] buff_q_out_4_address0;
reg    buff_q_out_4_ce0;
reg    buff_q_out_4_we0;
reg   [31:0] buff_q_out_4_d0;
wire   [31:0] buff_q_out_4_q0;
reg   [2:0] buff_q_out_5_address0;
reg    buff_q_out_5_ce0;
reg    buff_q_out_5_we0;
reg   [31:0] buff_q_out_5_d0;
wire   [31:0] buff_q_out_5_q0;
reg   [2:0] buff_q_out_6_address0;
reg    buff_q_out_6_ce0;
reg    buff_q_out_6_we0;
reg   [31:0] buff_q_out_6_d0;
wire   [31:0] buff_q_out_6_q0;
reg   [2:0] buff_q_out_7_address0;
reg    buff_q_out_7_ce0;
reg    buff_q_out_7_we0;
reg   [31:0] buff_q_out_7_d0;
wire   [31:0] buff_q_out_7_q0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_0_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1594_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_A_7_ce0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_d0;
wire   [6:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_d0;
wire    grp_bicg_Pipeline_lp1_fu_1649_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1649_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1649_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1649_ap_ready;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_ce1;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_ce0;
wire   [6:0] grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_address1;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1649_buff_r_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1649_buff_r_7_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_63192_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_63192_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_62191_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_62191_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_61190_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_61190_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_60189_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_60189_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_59188_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_59188_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_58187_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_58187_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_57186_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_57186_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_56185_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_56185_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_55184_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_55184_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_54183_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_54183_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_53182_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_53182_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_52181_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_52181_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_51180_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_51180_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_50179_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_50179_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_49178_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_49178_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_48177_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_48177_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_47176_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_47176_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_46175_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_46175_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_45174_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_45174_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_44173_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_44173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_43172_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_43172_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_42171_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_42171_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_41170_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_41170_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_40169_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_40169_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_39168_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_39168_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_38167_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_38167_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_37166_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_37166_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_36165_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_36165_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_35164_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_35164_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_34163_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_34163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_33162_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_33162_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_32161_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_32161_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_31160_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_31160_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_30159_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_30159_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_29158_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_29158_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_28157_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_28157_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_27156_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_27156_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_26155_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_26155_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_25154_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_25154_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_24153_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_24153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_23152_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_23152_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_22151_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_22151_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_21150_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_21150_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_20149_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_20149_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_19148_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_19148_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_18147_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_18147_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_17146_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_17146_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_16145_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_16145_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_15144_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_15144_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_14143_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_14143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_13142_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_13142_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_12141_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_12141_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_11140_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_11140_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_10139_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_10139_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_9138_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_9138_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_8137_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_8137_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_7136_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_7136_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_6135_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_6135_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_5134_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_5134_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_4133_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_4133_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_3132_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_3132_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_2131_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_2131_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7_1130_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7_1130_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_add_7129_out;
wire    grp_bicg_Pipeline_lp1_fu_1649_add_7129_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_ce;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_ready;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_1_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_2_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_3_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_4_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_5_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_6_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_7_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_8_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_9_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_10_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_11_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_12_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_13_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_14_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_15_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_16_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_16_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_17_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_17_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_18_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_18_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_19_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_19_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_20_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_20_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_21_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_21_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_22_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_22_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_23_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_23_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_24_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_24_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_25_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_25_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_26_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_26_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_27_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_27_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_28_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_28_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_29_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_29_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_30_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_30_ce0;
wire   [6:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_31_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_31_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1889_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1889_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1889_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1889_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1889_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1889_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1889_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1889_q_out_write;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_7_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1594_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_bicg_Pipeline_lp1_fu_1649_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg    grp_bicg_Pipeline_lpwr_fu_1889_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln13_fu_1933_p1;
wire   [0:0] icmp_ln13_fu_1921_p2;
wire   [63:0] zext_ln5_fu_1957_p1;
reg   [6:0] i_fu_108;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [2:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [2:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
wire   [2:0] trunc_ln13_1_fu_1942_p1;
reg   [31:0] buff_s_out_d0_local;
reg    buff_s_out_we1_local;
reg   [31:0] buff_s_out_d1_local;
reg    buff_s_out_1_ce1_local;
reg   [2:0] buff_s_out_1_address1_local;
reg    buff_s_out_1_ce0_local;
reg   [2:0] buff_s_out_1_address0_local;
reg    buff_s_out_1_we0_local;
reg   [31:0] buff_s_out_1_d0_local;
reg    buff_s_out_1_we1_local;
reg   [31:0] buff_s_out_1_d1_local;
reg    buff_s_out_2_ce1_local;
reg   [2:0] buff_s_out_2_address1_local;
reg    buff_s_out_2_ce0_local;
reg   [2:0] buff_s_out_2_address0_local;
reg    buff_s_out_2_we0_local;
reg   [31:0] buff_s_out_2_d0_local;
reg    buff_s_out_2_we1_local;
reg   [31:0] buff_s_out_2_d1_local;
reg    buff_s_out_3_ce1_local;
reg   [2:0] buff_s_out_3_address1_local;
reg    buff_s_out_3_ce0_local;
reg   [2:0] buff_s_out_3_address0_local;
reg    buff_s_out_3_we0_local;
reg   [31:0] buff_s_out_3_d0_local;
reg    buff_s_out_3_we1_local;
reg   [31:0] buff_s_out_3_d1_local;
reg    buff_s_out_4_ce1_local;
reg   [2:0] buff_s_out_4_address1_local;
reg    buff_s_out_4_ce0_local;
reg   [2:0] buff_s_out_4_address0_local;
reg    buff_s_out_4_we0_local;
reg   [31:0] buff_s_out_4_d0_local;
reg    buff_s_out_4_we1_local;
reg   [31:0] buff_s_out_4_d1_local;
reg    buff_s_out_5_ce1_local;
reg   [2:0] buff_s_out_5_address1_local;
reg    buff_s_out_5_ce0_local;
reg   [2:0] buff_s_out_5_address0_local;
reg    buff_s_out_5_we0_local;
reg   [31:0] buff_s_out_5_d0_local;
reg    buff_s_out_5_we1_local;
reg   [31:0] buff_s_out_5_d1_local;
reg    buff_s_out_6_ce1_local;
reg   [2:0] buff_s_out_6_address1_local;
reg    buff_s_out_6_ce0_local;
reg   [2:0] buff_s_out_6_address0_local;
reg    buff_s_out_6_we0_local;
reg   [31:0] buff_s_out_6_d0_local;
reg    buff_s_out_6_we1_local;
reg   [31:0] buff_s_out_6_d1_local;
reg    buff_s_out_7_ce1_local;
reg   [2:0] buff_s_out_7_address1_local;
reg    buff_s_out_7_ce0_local;
reg   [2:0] buff_s_out_7_address0_local;
reg    buff_s_out_7_we0_local;
reg   [31:0] buff_s_out_7_d0_local;
reg    buff_s_out_7_we1_local;
reg   [31:0] buff_s_out_7_d1_local;
reg    buff_p_6_we0_local;
wire   [31:0] bitcast_ln14_fu_1993_p1;
reg    buff_p_6_ce0_local;
reg    buff_r_6_we0_local;
wire   [31:0] bitcast_ln15_fu_2005_p1;
reg    buff_r_6_ce0_local;
reg    buff_q_out_6_we0_local;
reg    buff_q_out_6_ce0_local;
reg    buff_p_5_we0_local;
reg    buff_p_5_ce0_local;
reg    buff_r_5_we0_local;
reg    buff_r_5_ce0_local;
reg    buff_q_out_5_we0_local;
reg    buff_q_out_5_ce0_local;
reg    buff_p_4_we0_local;
reg    buff_p_4_ce0_local;
reg    buff_r_4_we0_local;
reg    buff_r_4_ce0_local;
reg    buff_q_out_4_we0_local;
reg    buff_q_out_4_ce0_local;
reg    buff_p_3_we0_local;
reg    buff_p_3_ce0_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
reg    buff_p_2_we0_local;
reg    buff_p_2_ce0_local;
reg    buff_r_2_we0_local;
reg    buff_r_2_ce0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_p_we0_local;
reg    buff_p_ce0_local;
reg    buff_r_we0_local;
reg    buff_r_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_p_7_we0_local;
reg    buff_p_7_ce0_local;
reg    buff_r_7_we0_local;
reg    buff_r_7_ce0_local;
reg    buff_q_out_7_we0_local;
reg    buff_q_out_7_ce0_local;
wire   [2:0] lshr_ln5_1_fu_1948_p4;
wire   [31:0] grp_fu_3370_p2;
reg   [31:0] grp_fu_3370_p0;
reg   [31:0] grp_fu_3370_p1;
reg    grp_fu_3370_ce;
wire   [31:0] grp_fu_3374_p2;
reg   [31:0] grp_fu_3374_p0;
reg   [31:0] grp_fu_3374_p1;
reg    grp_fu_3374_ce;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_bicg_Pipeline_lprd_2_fu_1594_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1649_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1889_ap_start_reg = 1'b0;
#0 i_fu_108 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_8_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_8_address0),.ce0(buff_A_8_ce0),.we0(buff_A_8_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_d0),.q0(buff_A_8_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_address1),.ce1(buff_A_8_ce1),.q1(buff_A_8_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_9_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_9_address0),.ce0(buff_A_9_ce0),.we0(buff_A_9_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_d0),.q0(buff_A_9_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_address1),.ce1(buff_A_9_ce1),.q1(buff_A_9_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_10_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_10_address0),.ce0(buff_A_10_ce0),.we0(buff_A_10_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_d0),.q0(buff_A_10_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_address1),.ce1(buff_A_10_ce1),.q1(buff_A_10_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_11_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_11_address0),.ce0(buff_A_11_ce0),.we0(buff_A_11_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_d0),.q0(buff_A_11_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_address1),.ce1(buff_A_11_ce1),.q1(buff_A_11_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_12_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_12_address0),.ce0(buff_A_12_ce0),.we0(buff_A_12_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_d0),.q0(buff_A_12_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_address1),.ce1(buff_A_12_ce1),.q1(buff_A_12_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_13_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_13_address0),.ce0(buff_A_13_ce0),.we0(buff_A_13_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_d0),.q0(buff_A_13_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_address1),.ce1(buff_A_13_ce1),.q1(buff_A_13_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_14_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_14_address0),.ce0(buff_A_14_ce0),.we0(buff_A_14_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_d0),.q0(buff_A_14_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_address1),.ce1(buff_A_14_ce1),.q1(buff_A_14_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_15_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_15_address0),.ce0(buff_A_15_ce0),.we0(buff_A_15_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_d0),.q0(buff_A_15_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_address1),.ce1(buff_A_15_ce1),.q1(buff_A_15_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_16_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_16_address0),.ce0(buff_A_16_ce0),.we0(buff_A_16_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_d0),.q0(buff_A_16_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_address1),.ce1(buff_A_16_ce1),.q1(buff_A_16_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_17_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_17_address0),.ce0(buff_A_17_ce0),.we0(buff_A_17_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_d0),.q0(buff_A_17_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_address1),.ce1(buff_A_17_ce1),.q1(buff_A_17_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_18_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_18_address0),.ce0(buff_A_18_ce0),.we0(buff_A_18_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_d0),.q0(buff_A_18_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_address1),.ce1(buff_A_18_ce1),.q1(buff_A_18_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_19_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_19_address0),.ce0(buff_A_19_ce0),.we0(buff_A_19_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_d0),.q0(buff_A_19_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_address1),.ce1(buff_A_19_ce1),.q1(buff_A_19_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_20_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_20_address0),.ce0(buff_A_20_ce0),.we0(buff_A_20_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_d0),.q0(buff_A_20_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_address1),.ce1(buff_A_20_ce1),.q1(buff_A_20_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_21_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_21_address0),.ce0(buff_A_21_ce0),.we0(buff_A_21_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_d0),.q0(buff_A_21_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_address1),.ce1(buff_A_21_ce1),.q1(buff_A_21_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_22_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_22_address0),.ce0(buff_A_22_ce0),.we0(buff_A_22_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_d0),.q0(buff_A_22_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_address1),.ce1(buff_A_22_ce1),.q1(buff_A_22_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_23_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_23_address0),.ce0(buff_A_23_ce0),.we0(buff_A_23_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_d0),.q0(buff_A_23_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_address1),.ce1(buff_A_23_ce1),.q1(buff_A_23_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_24_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_24_address0),.ce0(buff_A_24_ce0),.we0(buff_A_24_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_d0),.q0(buff_A_24_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_address1),.ce1(buff_A_24_ce1),.q1(buff_A_24_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_25_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_25_address0),.ce0(buff_A_25_ce0),.we0(buff_A_25_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_d0),.q0(buff_A_25_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_address1),.ce1(buff_A_25_ce1),.q1(buff_A_25_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_26_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_26_address0),.ce0(buff_A_26_ce0),.we0(buff_A_26_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_d0),.q0(buff_A_26_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_address1),.ce1(buff_A_26_ce1),.q1(buff_A_26_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_27_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_27_address0),.ce0(buff_A_27_ce0),.we0(buff_A_27_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_d0),.q0(buff_A_27_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_address1),.ce1(buff_A_27_ce1),.q1(buff_A_27_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_28_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_28_address0),.ce0(buff_A_28_ce0),.we0(buff_A_28_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_d0),.q0(buff_A_28_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_address1),.ce1(buff_A_28_ce1),.q1(buff_A_28_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_29_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_29_address0),.ce0(buff_A_29_ce0),.we0(buff_A_29_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_d0),.q0(buff_A_29_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_address1),.ce1(buff_A_29_ce1),.q1(buff_A_29_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_30_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_30_address0),.ce0(buff_A_30_ce0),.we0(buff_A_30_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_d0),.q0(buff_A_30_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_address1),.ce1(buff_A_30_ce1),.q1(buff_A_30_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 128 ),.AddressWidth( 7 ))
buff_A_31_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_31_address0),.ce0(buff_A_31_ce0),.we0(buff_A_31_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_d0),.q0(buff_A_31_q0),.address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_address1),.ce1(buff_A_31_ce1),.q1(buff_A_31_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_4_address0),.ce0(buff_p_4_ce0),.we0(buff_p_4_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_5_address0),.ce0(buff_p_5_ce0),.we0(buff_p_5_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_6_address0),.ce0(buff_p_6_ce0),.we0(buff_p_6_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_7_address0),.ce0(buff_p_7_ce0),.we0(buff_p_7_we0_local),.d0(bitcast_ln14_fu_1993_p1),.q0(buff_p_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_4_address0),.ce0(buff_r_4_ce0),.we0(buff_r_4_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_5_address0),.ce0(buff_r_5_ce0),.we0(buff_r_5_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_6_address0),.ce0(buff_r_6_ce0),.we0(buff_r_6_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_7_address0),.ce0(buff_r_7_ce0),.we0(buff_r_7_we0_local),.d0(bitcast_ln15_fu_2005_p1),.q0(buff_r_7_q0));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0_local),.d0(buff_s_out_d0_local),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0_local),.d0(buff_s_out_1_d0_local),.q0(buff_s_out_1_q0),.address1(buff_s_out_1_address1_local),.ce1(buff_s_out_1_ce1_local),.we1(buff_s_out_1_we1_local),.d1(buff_s_out_1_d1_local),.q1(buff_s_out_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0_local),.d0(buff_s_out_2_d0_local),.q0(buff_s_out_2_q0),.address1(buff_s_out_2_address1_local),.ce1(buff_s_out_2_ce1_local),.we1(buff_s_out_2_we1_local),.d1(buff_s_out_2_d1_local),.q1(buff_s_out_2_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0_local),.d0(buff_s_out_3_d0_local),.q0(buff_s_out_3_q0),.address1(buff_s_out_3_address1_local),.ce1(buff_s_out_3_ce1_local),.we1(buff_s_out_3_we1_local),.d1(buff_s_out_3_d1_local),.q1(buff_s_out_3_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_4_address0),.ce0(buff_s_out_4_ce0),.we0(buff_s_out_4_we0_local),.d0(buff_s_out_4_d0_local),.q0(buff_s_out_4_q0),.address1(buff_s_out_4_address1_local),.ce1(buff_s_out_4_ce1_local),.we1(buff_s_out_4_we1_local),.d1(buff_s_out_4_d1_local),.q1(buff_s_out_4_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_5_address0),.ce0(buff_s_out_5_ce0),.we0(buff_s_out_5_we0_local),.d0(buff_s_out_5_d0_local),.q0(buff_s_out_5_q0),.address1(buff_s_out_5_address1_local),.ce1(buff_s_out_5_ce1_local),.we1(buff_s_out_5_we1_local),.d1(buff_s_out_5_d1_local),.q1(buff_s_out_5_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_6_address0),.ce0(buff_s_out_6_ce0),.we0(buff_s_out_6_we0_local),.d0(buff_s_out_6_d0_local),.q0(buff_s_out_6_q0),.address1(buff_s_out_6_address1_local),.ce1(buff_s_out_6_ce1_local),.we1(buff_s_out_6_we1_local),.d1(buff_s_out_6_d1_local),.q1(buff_s_out_6_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_7_address0),.ce0(buff_s_out_7_ce0),.we0(buff_s_out_7_we0_local),.d0(buff_s_out_7_d0_local),.q0(buff_s_out_7_q0),.address1(buff_s_out_7_address1_local),.ce1(buff_s_out_7_ce1_local),.we1(buff_s_out_7_we1_local),.d1(buff_s_out_7_d1_local),.q1(buff_s_out_7_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_4_address0),.ce0(buff_q_out_4_ce0),.we0(buff_q_out_4_we0),.d0(buff_q_out_4_d0),.q0(buff_q_out_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_5_address0),.ce0(buff_q_out_5_ce0),.we0(buff_q_out_5_we0),.d0(buff_q_out_5_d0),.q0(buff_q_out_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_6_address0),.ce0(buff_q_out_6_ce0),.we0(buff_q_out_6_we0),.d0(buff_q_out_6_d0),.q0(buff_q_out_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_7_address0),.ce0(buff_q_out_7_ce0),.we0(buff_q_out_7_we0),.d0(buff_q_out_7_d0),.q0(buff_q_out_7_q0));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1594(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1594_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1594_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1594_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1594_ap_ready),.i(trunc_ln13_reg_2791),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_4_address0),.A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_5_address0),.A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_6_address0),.A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1594_A_7_address0),.A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_d0),.buff_A_8_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_ce0),.buff_A_8_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_we0),.buff_A_8_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_d0),.buff_A_9_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_ce0),.buff_A_9_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_we0),.buff_A_9_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_d0),.buff_A_10_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_ce0),.buff_A_10_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_we0),.buff_A_10_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_d0),.buff_A_11_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_ce0),.buff_A_11_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_we0),.buff_A_11_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_d0),.buff_A_12_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_ce0),.buff_A_12_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_we0),.buff_A_12_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_d0),.buff_A_13_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_ce0),.buff_A_13_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_we0),.buff_A_13_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_d0),.buff_A_14_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_ce0),.buff_A_14_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_we0),.buff_A_14_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_d0),.buff_A_15_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_ce0),.buff_A_15_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_we0),.buff_A_15_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_d0),.buff_A_16_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_ce0),.buff_A_16_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_we0),.buff_A_16_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_d0),.buff_A_17_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_ce0),.buff_A_17_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_we0),.buff_A_17_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_d0),.buff_A_18_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_ce0),.buff_A_18_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_we0),.buff_A_18_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_d0),.buff_A_19_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_ce0),.buff_A_19_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_we0),.buff_A_19_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_d0),.buff_A_20_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_ce0),.buff_A_20_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_we0),.buff_A_20_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_d0),.buff_A_21_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_ce0),.buff_A_21_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_we0),.buff_A_21_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_d0),.buff_A_22_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_ce0),.buff_A_22_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_we0),.buff_A_22_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_d0),.buff_A_23_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_ce0),.buff_A_23_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_we0),.buff_A_23_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_d0),.buff_A_24_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_ce0),.buff_A_24_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_we0),.buff_A_24_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_d0),.buff_A_25_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_ce0),.buff_A_25_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_we0),.buff_A_25_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_d0),.buff_A_26_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_ce0),.buff_A_26_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_we0),.buff_A_26_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_d0),.buff_A_27_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_ce0),.buff_A_27_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_we0),.buff_A_27_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_d0),.buff_A_28_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_ce0),.buff_A_28_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_we0),.buff_A_28_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_d0),.buff_A_29_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_ce0),.buff_A_29_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_we0),.buff_A_29_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_d0),.buff_A_30_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_ce0),.buff_A_30_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_we0),.buff_A_30_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_d0),.buff_A_31_address0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_ce0),.buff_A_31_we0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_we0),.buff_A_31_d0(grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_d0),.empty_14(trunc_ln13_2_reg_2799),.empty(empty_reg_2805));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1649(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1649_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1649_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1649_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1649_ap_ready),.buff_s_out_7_load_7(buff_s_out_7_load_7_reg_3365),.buff_s_out_6_load_7(buff_s_out_6_load_7_reg_3360),.buff_s_out_5_load_7(buff_s_out_5_load_7_reg_3355),.buff_s_out_4_load_7(buff_s_out_4_load_7_reg_3350),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_3345),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_3340),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_3335),.buff_s_out_load_7(buff_s_out_load_7_reg_3330),.buff_s_out_7_load_6(buff_s_out_7_load_6_reg_3325),.buff_s_out_6_load_6(buff_s_out_6_load_6_reg_3320),.buff_s_out_5_load_6(buff_s_out_5_load_6_reg_3315),.buff_s_out_4_load_6(buff_s_out_4_load_6_reg_3310),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_3305),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_3300),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_3295),.buff_s_out_load_6(buff_s_out_load_6_reg_3290),.buff_s_out_7_load_5(buff_s_out_7_load_5_reg_3285),.buff_s_out_6_load_5(buff_s_out_6_load_5_reg_3280),.buff_s_out_5_load_5(buff_s_out_5_load_5_reg_3275),.buff_s_out_4_load_5(buff_s_out_4_load_5_reg_3270),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_3265),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_3260),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_3255),.buff_s_out_load_5(buff_s_out_load_5_reg_3250),.buff_s_out_7_load_4(buff_s_out_7_load_4_reg_3245),.buff_s_out_6_load_4(buff_s_out_6_load_4_reg_3240),.buff_s_out_5_load_4(buff_s_out_5_load_4_reg_3235),.buff_s_out_4_load_4(buff_s_out_4_load_4_reg_3230),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_3225),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_3220),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_3215),.buff_s_out_load_4(buff_s_out_load_4_reg_3210),.buff_s_out_7_load_3(buff_s_out_7_load_3_reg_3125),.buff_s_out_6_load_3(buff_s_out_6_load_3_reg_3120),.buff_s_out_5_load_3(buff_s_out_5_load_3_reg_3115),.buff_s_out_4_load_3(buff_s_out_4_load_3_reg_3110),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_3105),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_3100),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_3095),.buff_s_out_load_3(buff_s_out_load_3_reg_3090),.buff_s_out_7_load_2(buff_s_out_7_load_2_reg_3085),.buff_s_out_6_load_2(buff_s_out_6_load_2_reg_3080),.buff_s_out_5_load_2(buff_s_out_5_load_2_reg_3075),.buff_s_out_4_load_2(buff_s_out_4_load_2_reg_3070),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_3065),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_3060),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_3055),.buff_s_out_load_2(buff_s_out_load_2_reg_3050),.buff_s_out_7_load_1(buff_s_out_7_load_1_reg_2965),.buff_s_out_6_load_1(buff_s_out_6_load_1_reg_2960),.buff_s_out_5_load_1(buff_s_out_5_load_1_reg_2955),.buff_s_out_4_load_1(buff_s_out_4_load_1_reg_2950),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_2945),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_2940),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2935),.buff_s_out_load_1(buff_s_out_load_1_reg_2930),.buff_s_out_7_load(buff_s_out_7_load_reg_2925),.buff_s_out_6_load(buff_s_out_6_load_reg_2920),.buff_s_out_5_load(buff_s_out_5_load_reg_2915),.buff_s_out_4_load(buff_s_out_4_load_reg_2910),.buff_s_out_3_load(buff_s_out_3_load_reg_2905),.buff_s_out_2_load(buff_s_out_2_load_reg_2900),.buff_s_out_1_load(buff_s_out_1_load_reg_2895),.buff_s_out_load(buff_s_out_load_reg_2890),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_8_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_8_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_address1),.buff_A_8_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_ce1),.buff_A_8_q1(buff_A_8_q1),.buff_A_9_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_9_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_address1),.buff_A_9_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_ce1),.buff_A_9_q1(buff_A_9_q1),.buff_A_10_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_10_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_address1),.buff_A_10_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_ce1),.buff_A_10_q1(buff_A_10_q1),.buff_A_11_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_11_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_address1),.buff_A_11_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_ce1),.buff_A_11_q1(buff_A_11_q1),.buff_A_12_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_12_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_address1),.buff_A_12_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_ce1),.buff_A_12_q1(buff_A_12_q1),.buff_A_13_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_13_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_address1),.buff_A_13_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_ce1),.buff_A_13_q1(buff_A_13_q1),.buff_A_14_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_14_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_address1),.buff_A_14_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_ce1),.buff_A_14_q1(buff_A_14_q1),.buff_A_15_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_15_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_address1),.buff_A_15_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_ce1),.buff_A_15_q1(buff_A_15_q1),.buff_A_16_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_ce0),.buff_A_16_q0(buff_A_16_q0),.buff_A_16_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_address1),.buff_A_16_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_ce1),.buff_A_16_q1(buff_A_16_q1),.buff_A_17_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_ce0),.buff_A_17_q0(buff_A_17_q0),.buff_A_17_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_address1),.buff_A_17_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_ce1),.buff_A_17_q1(buff_A_17_q1),.buff_A_18_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_ce0),.buff_A_18_q0(buff_A_18_q0),.buff_A_18_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_address1),.buff_A_18_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_ce1),.buff_A_18_q1(buff_A_18_q1),.buff_A_19_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_ce0),.buff_A_19_q0(buff_A_19_q0),.buff_A_19_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_address1),.buff_A_19_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_ce1),.buff_A_19_q1(buff_A_19_q1),.buff_A_20_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_ce0),.buff_A_20_q0(buff_A_20_q0),.buff_A_20_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_address1),.buff_A_20_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_ce1),.buff_A_20_q1(buff_A_20_q1),.buff_A_21_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_ce0),.buff_A_21_q0(buff_A_21_q0),.buff_A_21_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_address1),.buff_A_21_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_ce1),.buff_A_21_q1(buff_A_21_q1),.buff_A_22_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_ce0),.buff_A_22_q0(buff_A_22_q0),.buff_A_22_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_address1),.buff_A_22_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_ce1),.buff_A_22_q1(buff_A_22_q1),.buff_A_23_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_ce0),.buff_A_23_q0(buff_A_23_q0),.buff_A_23_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_address1),.buff_A_23_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_ce1),.buff_A_23_q1(buff_A_23_q1),.buff_A_24_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_ce0),.buff_A_24_q0(buff_A_24_q0),.buff_A_24_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_address1),.buff_A_24_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_ce1),.buff_A_24_q1(buff_A_24_q1),.buff_A_25_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_ce0),.buff_A_25_q0(buff_A_25_q0),.buff_A_25_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_address1),.buff_A_25_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_ce1),.buff_A_25_q1(buff_A_25_q1),.buff_A_26_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_ce0),.buff_A_26_q0(buff_A_26_q0),.buff_A_26_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_address1),.buff_A_26_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_ce1),.buff_A_26_q1(buff_A_26_q1),.buff_A_27_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_ce0),.buff_A_27_q0(buff_A_27_q0),.buff_A_27_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_address1),.buff_A_27_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_ce1),.buff_A_27_q1(buff_A_27_q1),.buff_A_28_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_ce0),.buff_A_28_q0(buff_A_28_q0),.buff_A_28_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_address1),.buff_A_28_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_ce1),.buff_A_28_q1(buff_A_28_q1),.buff_A_29_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_ce0),.buff_A_29_q0(buff_A_29_q0),.buff_A_29_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_address1),.buff_A_29_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_ce1),.buff_A_29_q1(buff_A_29_q1),.buff_A_30_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_ce0),.buff_A_30_q0(buff_A_30_q0),.buff_A_30_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_address1),.buff_A_30_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_ce1),.buff_A_30_q1(buff_A_30_q1),.buff_A_31_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_ce0),.buff_A_31_q0(buff_A_31_q0),.buff_A_31_address1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_address1),.buff_A_31_ce1(grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_ce1),.buff_A_31_q1(buff_A_31_q1),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_r_4_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_4_address0),.buff_r_4_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_4_ce0),.buff_r_4_q0(buff_r_4_q0),.buff_r_5_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_5_address0),.buff_r_5_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_5_ce0),.buff_r_5_q0(buff_r_5_q0),.buff_r_6_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_6_address0),.buff_r_6_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_6_ce0),.buff_r_6_q0(buff_r_6_q0),.buff_r_7_address0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_7_address0),.buff_r_7_ce0(grp_bicg_Pipeline_lp1_fu_1649_buff_r_7_ce0),.buff_r_7_q0(buff_r_7_q0),.add_7_63192_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_63192_out),.add_7_63192_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_63192_out_ap_vld),.add_7_62191_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_62191_out),.add_7_62191_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_62191_out_ap_vld),.add_7_61190_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_61190_out),.add_7_61190_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_61190_out_ap_vld),.add_7_60189_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_60189_out),.add_7_60189_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_60189_out_ap_vld),.add_7_59188_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_59188_out),.add_7_59188_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_59188_out_ap_vld),.add_7_58187_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_58187_out),.add_7_58187_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_58187_out_ap_vld),.add_7_57186_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_57186_out),.add_7_57186_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_57186_out_ap_vld),.add_7_56185_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_56185_out),.add_7_56185_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_56185_out_ap_vld),.add_7_55184_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_55184_out),.add_7_55184_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_55184_out_ap_vld),.add_7_54183_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_54183_out),.add_7_54183_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_54183_out_ap_vld),.add_7_53182_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_53182_out),.add_7_53182_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_53182_out_ap_vld),.add_7_52181_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_52181_out),.add_7_52181_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_52181_out_ap_vld),.add_7_51180_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_51180_out),.add_7_51180_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_51180_out_ap_vld),.add_7_50179_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_50179_out),.add_7_50179_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_50179_out_ap_vld),.add_7_49178_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_49178_out),.add_7_49178_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_49178_out_ap_vld),.add_7_48177_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_48177_out),.add_7_48177_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_48177_out_ap_vld),.add_7_47176_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_47176_out),.add_7_47176_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_47176_out_ap_vld),.add_7_46175_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_46175_out),.add_7_46175_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_46175_out_ap_vld),.add_7_45174_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_45174_out),.add_7_45174_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_45174_out_ap_vld),.add_7_44173_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_44173_out),.add_7_44173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_44173_out_ap_vld),.add_7_43172_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_43172_out),.add_7_43172_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_43172_out_ap_vld),.add_7_42171_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_42171_out),.add_7_42171_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_42171_out_ap_vld),.add_7_41170_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_41170_out),.add_7_41170_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_41170_out_ap_vld),.add_7_40169_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_40169_out),.add_7_40169_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_40169_out_ap_vld),.add_7_39168_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_39168_out),.add_7_39168_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_39168_out_ap_vld),.add_7_38167_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_38167_out),.add_7_38167_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_38167_out_ap_vld),.add_7_37166_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_37166_out),.add_7_37166_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_37166_out_ap_vld),.add_7_36165_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_36165_out),.add_7_36165_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_36165_out_ap_vld),.add_7_35164_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_35164_out),.add_7_35164_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_35164_out_ap_vld),.add_7_34163_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_34163_out),.add_7_34163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_34163_out_ap_vld),.add_7_33162_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_33162_out),.add_7_33162_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_33162_out_ap_vld),.add_7_32161_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_32161_out),.add_7_32161_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_32161_out_ap_vld),.add_7_31160_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_31160_out),.add_7_31160_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_31160_out_ap_vld),.add_7_30159_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_30159_out),.add_7_30159_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_30159_out_ap_vld),.add_7_29158_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_29158_out),.add_7_29158_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_29158_out_ap_vld),.add_7_28157_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_28157_out),.add_7_28157_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_28157_out_ap_vld),.add_7_27156_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_27156_out),.add_7_27156_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_27156_out_ap_vld),.add_7_26155_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_26155_out),.add_7_26155_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_26155_out_ap_vld),.add_7_25154_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_25154_out),.add_7_25154_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_25154_out_ap_vld),.add_7_24153_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_24153_out),.add_7_24153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_24153_out_ap_vld),.add_7_23152_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_23152_out),.add_7_23152_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_23152_out_ap_vld),.add_7_22151_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_22151_out),.add_7_22151_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_22151_out_ap_vld),.add_7_21150_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_21150_out),.add_7_21150_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_21150_out_ap_vld),.add_7_20149_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_20149_out),.add_7_20149_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_20149_out_ap_vld),.add_7_19148_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_19148_out),.add_7_19148_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_19148_out_ap_vld),.add_7_18147_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_18147_out),.add_7_18147_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_18147_out_ap_vld),.add_7_17146_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_17146_out),.add_7_17146_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_17146_out_ap_vld),.add_7_16145_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_16145_out),.add_7_16145_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_16145_out_ap_vld),.add_7_15144_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_15144_out),.add_7_15144_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_15144_out_ap_vld),.add_7_14143_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_14143_out),.add_7_14143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_14143_out_ap_vld),.add_7_13142_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_13142_out),.add_7_13142_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_13142_out_ap_vld),.add_7_12141_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_12141_out),.add_7_12141_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_12141_out_ap_vld),.add_7_11140_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_11140_out),.add_7_11140_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_11140_out_ap_vld),.add_7_10139_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_10139_out),.add_7_10139_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_10139_out_ap_vld),.add_7_9138_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_9138_out),.add_7_9138_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_9138_out_ap_vld),.add_7_8137_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_8137_out),.add_7_8137_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_8137_out_ap_vld),.add_7_7136_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_7136_out),.add_7_7136_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_7136_out_ap_vld),.add_7_6135_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_6135_out),.add_7_6135_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_6135_out_ap_vld),.add_7_5134_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_5134_out),.add_7_5134_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_5134_out_ap_vld),.add_7_4133_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_4133_out),.add_7_4133_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_4133_out_ap_vld),.add_7_3132_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_3132_out),.add_7_3132_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_3132_out_ap_vld),.add_7_2131_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_2131_out),.add_7_2131_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_2131_out_ap_vld),.add_7_1130_out(grp_bicg_Pipeline_lp1_fu_1649_add_7_1130_out),.add_7_1130_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7_1130_out_ap_vld),.add_7129_out(grp_bicg_Pipeline_lp1_fu_1649_add_7129_out),.add_7129_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1649_add_7129_out_ap_vld),.grp_fu_3370_p_din0(grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_din0),.grp_fu_3370_p_din1(grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_din1),.grp_fu_3370_p_opcode(grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_opcode),.grp_fu_3370_p_dout0(grp_fu_3370_p2),.grp_fu_3370_p_ce(grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_ce),.grp_fu_3374_p_din0(grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_din0),.grp_fu_3374_p_din1(grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_din1),.grp_fu_3374_p_dout0(grp_fu_3374_p2),.grp_fu_3374_p_ce(grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_ce));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_1837(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_8_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_9_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_10_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_11_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_12_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_13_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_14_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_15_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_16_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_16_ce0),.buff_A_16_q0(buff_A_16_q0),.buff_A_17_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_17_ce0),.buff_A_17_q0(buff_A_17_q0),.buff_A_18_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_18_ce0),.buff_A_18_q0(buff_A_18_q0),.buff_A_19_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_19_ce0),.buff_A_19_q0(buff_A_19_q0),.buff_A_20_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_20_ce0),.buff_A_20_q0(buff_A_20_q0),.buff_A_21_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_21_ce0),.buff_A_21_q0(buff_A_21_q0),.buff_A_22_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_22_ce0),.buff_A_22_q0(buff_A_22_q0),.buff_A_23_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_23_ce0),.buff_A_23_q0(buff_A_23_q0),.buff_A_24_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_24_ce0),.buff_A_24_q0(buff_A_24_q0),.buff_A_25_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_25_ce0),.buff_A_25_q0(buff_A_25_q0),.buff_A_26_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_26_ce0),.buff_A_26_q0(buff_A_26_q0),.buff_A_27_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_27_ce0),.buff_A_27_q0(buff_A_27_q0),.buff_A_28_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_28_ce0),.buff_A_28_q0(buff_A_28_q0),.buff_A_29_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_29_ce0),.buff_A_29_q0(buff_A_29_q0),.buff_A_30_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_30_ce0),.buff_A_30_q0(buff_A_30_q0),.buff_A_31_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_31_ce0),.buff_A_31_q0(buff_A_31_q0),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_4_address0),.buff_p_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_4_ce0),.buff_p_4_q0(buff_p_4_q0),.buff_p_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_6_address0),.buff_p_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_6_ce0),.buff_p_6_q0(buff_p_6_q0),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_p_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_5_address0),.buff_p_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_5_ce0),.buff_p_5_q0(buff_p_5_q0),.buff_p_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_7_address0),.buff_p_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_7_ce0),.buff_p_7_q0(buff_p_7_q0),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_d0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_d0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_ce0),.buff_q_out_4_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_we0),.buff_q_out_4_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_d0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_ce0),.buff_q_out_5_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_we0),.buff_q_out_5_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_d0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_ce0),.buff_q_out_6_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_we0),.buff_q_out_6_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_d0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_ce0),.buff_q_out_7_we0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_we0),.buff_q_out_7_d0(grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_d0),.buff_q_out_7_q0(buff_q_out_7_q0),.grp_fu_3370_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_din0),.grp_fu_3370_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_din1),.grp_fu_3370_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_opcode),.grp_fu_3370_p_dout0(grp_fu_3370_p2),.grp_fu_3370_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_ce),.grp_fu_3374_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_din0),.grp_fu_3374_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_din1),.grp_fu_3374_p_dout0(grp_fu_3374_p2),.grp_fu_3374_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1889(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1889_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1889_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1889_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1889_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1889_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1889_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1889_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1889_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_4_ce0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_4_ce0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_5_ce0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_5_ce0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_6_ce0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_6_ce0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_7_ce0),.buff_s_out_7_q0(buff_s_out_7_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_7_ce0),.buff_q_out_7_q0(buff_q_out_7_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U318(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3370_p0),.din1(grp_fu_3370_p1),.ce(grp_fu_3370_ce),.dout(grp_fu_3370_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U319(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3374_p0),.din1(grp_fu_3374_p1),.ce(grp_fu_3374_ce),.dout(grp_fu_3374_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1649_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_bicg_Pipeline_lp1_fu_1649_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1649_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1649_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1594_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bicg_Pipeline_lprd_2_fu_1594_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1594_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1594_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1889_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_bicg_Pipeline_lpwr_fu_1889_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1889_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1889_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_108 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_108 <= add_ln13_reg_2680;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2680 <= add_ln13_fu_1927_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_1_reg_2935 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2895 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_2940 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_2900 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_2945 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_2905 <= buff_s_out_3_q1;
        buff_s_out_4_load_1_reg_2950 <= buff_s_out_4_q0;
        buff_s_out_4_load_reg_2910 <= buff_s_out_4_q1;
        buff_s_out_5_load_1_reg_2955 <= buff_s_out_5_q0;
        buff_s_out_5_load_reg_2915 <= buff_s_out_5_q1;
        buff_s_out_6_load_1_reg_2960 <= buff_s_out_6_q0;
        buff_s_out_6_load_reg_2920 <= buff_s_out_6_q1;
        buff_s_out_7_load_1_reg_2965 <= buff_s_out_7_q0;
        buff_s_out_7_load_reg_2925 <= buff_s_out_7_q1;
        buff_s_out_load_1_reg_2930 <= buff_s_out_q0;
        buff_s_out_load_reg_2890 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_2_reg_3055 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_3095 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_3060 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_3100 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_3065 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_3105 <= buff_s_out_3_q1;
        buff_s_out_4_load_2_reg_3070 <= buff_s_out_4_q0;
        buff_s_out_4_load_3_reg_3110 <= buff_s_out_4_q1;
        buff_s_out_5_load_2_reg_3075 <= buff_s_out_5_q0;
        buff_s_out_5_load_3_reg_3115 <= buff_s_out_5_q1;
        buff_s_out_6_load_2_reg_3080 <= buff_s_out_6_q0;
        buff_s_out_6_load_3_reg_3120 <= buff_s_out_6_q1;
        buff_s_out_7_load_2_reg_3085 <= buff_s_out_7_q0;
        buff_s_out_7_load_3_reg_3125 <= buff_s_out_7_q1;
        buff_s_out_load_2_reg_3050 <= buff_s_out_q0;
        buff_s_out_load_3_reg_3090 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_4_reg_3215 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_3255 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_3220 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_3260 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_3225 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_3265 <= buff_s_out_3_q1;
        buff_s_out_4_load_4_reg_3230 <= buff_s_out_4_q0;
        buff_s_out_4_load_5_reg_3270 <= buff_s_out_4_q1;
        buff_s_out_5_load_4_reg_3235 <= buff_s_out_5_q0;
        buff_s_out_5_load_5_reg_3275 <= buff_s_out_5_q1;
        buff_s_out_6_load_4_reg_3240 <= buff_s_out_6_q0;
        buff_s_out_6_load_5_reg_3280 <= buff_s_out_6_q1;
        buff_s_out_7_load_4_reg_3245 <= buff_s_out_7_q0;
        buff_s_out_7_load_5_reg_3285 <= buff_s_out_7_q1;
        buff_s_out_load_4_reg_3210 <= buff_s_out_q0;
        buff_s_out_load_5_reg_3250 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_6_reg_3295 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_3335 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_3300 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_3340 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_3305 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_3345 <= buff_s_out_3_q1;
        buff_s_out_4_load_6_reg_3310 <= buff_s_out_4_q0;
        buff_s_out_4_load_7_reg_3350 <= buff_s_out_4_q1;
        buff_s_out_5_load_6_reg_3315 <= buff_s_out_5_q0;
        buff_s_out_5_load_7_reg_3355 <= buff_s_out_5_q1;
        buff_s_out_6_load_6_reg_3320 <= buff_s_out_6_q0;
        buff_s_out_6_load_7_reg_3360 <= buff_s_out_6_q1;
        buff_s_out_7_load_6_reg_3325 <= buff_s_out_7_q0;
        buff_s_out_7_load_7_reg_3365 <= buff_s_out_7_q1;
        buff_s_out_load_6_reg_3290 <= buff_s_out_q0;
        buff_s_out_load_7_reg_3330 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_reg_2805 <= empty_fu_2017_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_2_reg_2799 <= trunc_ln13_2_fu_1945_p1;
        trunc_ln13_reg_2791 <= trunc_ln13_fu_1939_p1;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1649_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1889_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1594_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_bicg_Pipeline_lpwr_fu_1889_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_1889_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_address0;
    end else begin
        buff_A_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_ce0;
    end else begin
        buff_A_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_10_ce1;
    end else begin
        buff_A_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_10_we0;
    end else begin
        buff_A_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_address0;
    end else begin
        buff_A_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_ce0;
    end else begin
        buff_A_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_11_ce1;
    end else begin
        buff_A_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_11_we0;
    end else begin
        buff_A_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_address0;
    end else begin
        buff_A_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_ce0;
    end else begin
        buff_A_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_12_ce1;
    end else begin
        buff_A_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_12_we0;
    end else begin
        buff_A_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_address0;
    end else begin
        buff_A_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_ce0;
    end else begin
        buff_A_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_13_ce1;
    end else begin
        buff_A_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_13_we0;
    end else begin
        buff_A_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_address0;
    end else begin
        buff_A_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_ce0;
    end else begin
        buff_A_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_14_ce1;
    end else begin
        buff_A_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_14_we0;
    end else begin
        buff_A_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_address0;
    end else begin
        buff_A_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_ce0;
    end else begin
        buff_A_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_15_ce1;
    end else begin
        buff_A_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_15_we0;
    end else begin
        buff_A_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_address0;
    end else begin
        buff_A_16_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_ce0;
    end else begin
        buff_A_16_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_16_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_16_ce1;
    end else begin
        buff_A_16_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_16_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_16_we0;
    end else begin
        buff_A_16_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_address0;
    end else begin
        buff_A_17_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_ce0;
    end else begin
        buff_A_17_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_17_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_17_ce1;
    end else begin
        buff_A_17_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_17_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_17_we0;
    end else begin
        buff_A_17_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_address0;
    end else begin
        buff_A_18_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_ce0;
    end else begin
        buff_A_18_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_18_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_18_ce1;
    end else begin
        buff_A_18_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_18_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_18_we0;
    end else begin
        buff_A_18_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_address0;
    end else begin
        buff_A_19_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_ce0;
    end else begin
        buff_A_19_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_19_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_19_ce1;
    end else begin
        buff_A_19_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_19_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_19_we0;
    end else begin
        buff_A_19_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_address0;
    end else begin
        buff_A_20_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_ce0;
    end else begin
        buff_A_20_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_20_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_20_ce1;
    end else begin
        buff_A_20_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_20_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_20_we0;
    end else begin
        buff_A_20_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_address0;
    end else begin
        buff_A_21_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_ce0;
    end else begin
        buff_A_21_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_21_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_21_ce1;
    end else begin
        buff_A_21_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_21_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_21_we0;
    end else begin
        buff_A_21_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_address0;
    end else begin
        buff_A_22_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_ce0;
    end else begin
        buff_A_22_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_22_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_22_ce1;
    end else begin
        buff_A_22_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_22_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_22_we0;
    end else begin
        buff_A_22_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_address0;
    end else begin
        buff_A_23_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_ce0;
    end else begin
        buff_A_23_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_23_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_23_ce1;
    end else begin
        buff_A_23_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_23_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_23_we0;
    end else begin
        buff_A_23_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_address0;
    end else begin
        buff_A_24_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_ce0;
    end else begin
        buff_A_24_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_24_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_24_ce1;
    end else begin
        buff_A_24_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_24_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_24_we0;
    end else begin
        buff_A_24_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_address0;
    end else begin
        buff_A_25_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_ce0;
    end else begin
        buff_A_25_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_25_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_25_ce1;
    end else begin
        buff_A_25_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_25_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_25_we0;
    end else begin
        buff_A_25_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_address0;
    end else begin
        buff_A_26_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_ce0;
    end else begin
        buff_A_26_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_26_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_26_ce1;
    end else begin
        buff_A_26_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_26_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_26_we0;
    end else begin
        buff_A_26_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_address0;
    end else begin
        buff_A_27_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_ce0;
    end else begin
        buff_A_27_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_27_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_27_ce1;
    end else begin
        buff_A_27_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_27_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_27_we0;
    end else begin
        buff_A_27_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_address0;
    end else begin
        buff_A_28_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_ce0;
    end else begin
        buff_A_28_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_28_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_28_ce1;
    end else begin
        buff_A_28_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_28_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_28_we0;
    end else begin
        buff_A_28_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_address0;
    end else begin
        buff_A_29_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_ce0;
    end else begin
        buff_A_29_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_29_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_29_ce1;
    end else begin
        buff_A_29_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_29_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_29_we0;
    end else begin
        buff_A_29_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_address0;
    end else begin
        buff_A_30_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_ce0;
    end else begin
        buff_A_30_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_30_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_30_ce1;
    end else begin
        buff_A_30_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_30_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_30_we0;
    end else begin
        buff_A_30_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_address0;
    end else begin
        buff_A_31_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_ce0;
    end else begin
        buff_A_31_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_31_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_31_ce1;
    end else begin
        buff_A_31_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_31_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_31_we0;
    end else begin
        buff_A_31_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_address0;
    end else begin
        buff_A_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_ce0;
    end else begin
        buff_A_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_8_ce1;
    end else begin
        buff_A_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_8_we0;
    end else begin
        buff_A_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_address0;
    end else begin
        buff_A_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_ce0;
    end else begin
        buff_A_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_9_ce1;
    end else begin
        buff_A_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_9_we0;
    end else begin
        buff_A_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1649_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1594_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_1_ce0;
    end else begin
        buff_p_1_ce0 = buff_p_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_2_ce0;
    end else begin
        buff_p_2_ce0 = buff_p_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_3_ce0;
    end else begin
        buff_p_3_ce0 = buff_p_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_4_address0;
    end else begin
        buff_p_4_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_4_ce0;
    end else begin
        buff_p_4_ce0 = buff_p_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_4_ce0_local = 1'b1;
    end else begin
        buff_p_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_4_we0_local = 1'b1;
    end else begin
        buff_p_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_5_address0;
    end else begin
        buff_p_5_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_5_ce0;
    end else begin
        buff_p_5_ce0 = buff_p_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_5_ce0_local = 1'b1;
    end else begin
        buff_p_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_5_we0_local = 1'b1;
    end else begin
        buff_p_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_6_address0;
    end else begin
        buff_p_6_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_6_ce0;
    end else begin
        buff_p_6_ce0 = buff_p_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_6_ce0_local = 1'b1;
    end else begin
        buff_p_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_6_we0_local = 1'b1;
    end else begin
        buff_p_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_7_address0;
    end else begin
        buff_p_7_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_7_ce0;
    end else begin
        buff_p_7_ce0 = buff_p_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_7_ce0_local = 1'b1;
    end else begin
        buff_p_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_7_we0_local = 1'b1;
    end else begin
        buff_p_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_p_ce0;
    end else begin
        buff_p_ce0 = buff_p_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_ce0;
    end else begin
        buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_ce0;
    end else begin
        buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_ce0;
    end else begin
        buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_address0;
    end else begin
        buff_q_out_4_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_ce0;
    end else begin
        buff_q_out_4_ce0 = buff_q_out_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_4_ce0_local = 1'b1;
    end else begin
        buff_q_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_d0;
    end else begin
        buff_q_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_4_we0;
    end else begin
        buff_q_out_4_we0 = buff_q_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_4_we0_local = 1'b1;
    end else begin
        buff_q_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_address0;
    end else begin
        buff_q_out_5_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_ce0;
    end else begin
        buff_q_out_5_ce0 = buff_q_out_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_5_ce0_local = 1'b1;
    end else begin
        buff_q_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_d0;
    end else begin
        buff_q_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_5_we0;
    end else begin
        buff_q_out_5_we0 = buff_q_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_5_we0_local = 1'b1;
    end else begin
        buff_q_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_address0;
    end else begin
        buff_q_out_6_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_ce0;
    end else begin
        buff_q_out_6_ce0 = buff_q_out_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_6_ce0_local = 1'b1;
    end else begin
        buff_q_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_d0;
    end else begin
        buff_q_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_6_we0;
    end else begin
        buff_q_out_6_we0 = buff_q_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_6_we0_local = 1'b1;
    end else begin
        buff_q_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_address0;
    end else begin
        buff_q_out_7_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_ce0;
    end else begin
        buff_q_out_7_ce0 = buff_q_out_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_7_ce0_local = 1'b1;
    end else begin
        buff_q_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_d0;
    end else begin
        buff_q_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_7_we0;
    end else begin
        buff_q_out_7_we0 = buff_q_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_7_we0_local = 1'b1;
    end else begin
        buff_q_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_ce0;
    end else begin
        buff_q_out_ce0 = buff_q_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_1_ce0;
    end else begin
        buff_r_1_ce0 = buff_r_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_2_ce0;
    end else begin
        buff_r_2_ce0 = buff_r_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_3_ce0;
    end else begin
        buff_r_3_ce0 = buff_r_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_4_address0;
    end else begin
        buff_r_4_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_4_ce0;
    end else begin
        buff_r_4_ce0 = buff_r_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_4_ce0_local = 1'b1;
    end else begin
        buff_r_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_4_we0_local = 1'b1;
    end else begin
        buff_r_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_5_address0;
    end else begin
        buff_r_5_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_5_ce0;
    end else begin
        buff_r_5_ce0 = buff_r_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_5_ce0_local = 1'b1;
    end else begin
        buff_r_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_5_we0_local = 1'b1;
    end else begin
        buff_r_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_6_address0;
    end else begin
        buff_r_6_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_6_ce0;
    end else begin
        buff_r_6_ce0 = buff_r_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_6_ce0_local = 1'b1;
    end else begin
        buff_r_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_6_we0_local = 1'b1;
    end else begin
        buff_r_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_7_address0;
    end else begin
        buff_r_7_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_7_ce0;
    end else begin
        buff_r_7_ce0 = buff_r_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_7_ce0_local = 1'b1;
    end else begin
        buff_r_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_7_we0_local = 1'b1;
    end else begin
        buff_r_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1957_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1649_buff_r_ce0;
    end else begin
        buff_r_ce0 = buff_r_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1942_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_3135;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2975;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2815;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_3175;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_3015;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2855;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address1_local = 64'd0;
    end else begin
        buff_s_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_49178_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_33162_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_17146_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_1130_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_57186_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_41170_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_25154_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_9138_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1942_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3)) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_3140;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_2980;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_2820;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_3180;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_3020;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_2860;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address1_local = 64'd0;
    end else begin
        buff_s_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_50179_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_34163_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_18147_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_2131_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_58187_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_42171_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_26155_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_10139_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1942_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3)) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_3145;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_2985;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_2825;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_3185;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_3025;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_2865;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address1_local = 64'd0;
    end else begin
        buff_s_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_51180_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_35164_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_19148_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_3132_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_59188_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_43172_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_27156_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_11140_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1942_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3)) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_4_address0;
    end else begin
        buff_s_out_4_address0 = buff_s_out_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_6_reg_3150;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_4_reg_2990;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_2_reg_2830;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_address0_local = 64'd1;
    end else begin
        buff_s_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_7_reg_3190;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_5_reg_3030;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_3_reg_2870;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_4_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_4_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_address1_local = 64'd0;
    end else begin
        buff_s_out_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_4_ce0;
    end else begin
        buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_4_ce1_local = 1'b1;
    end else begin
        buff_s_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_52181_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_36165_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_20149_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_4133_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_d0_local = 32'd0;
    end else begin
        buff_s_out_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_60189_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_44173_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_28157_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_12141_out;
    end else begin
        buff_s_out_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1942_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3)) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_4_we1_local = 1'b1;
    end else begin
        buff_s_out_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_5_address0;
    end else begin
        buff_s_out_5_address0 = buff_s_out_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_6_reg_3155;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_4_reg_2995;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_2_reg_2835;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_address0_local = 64'd1;
    end else begin
        buff_s_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_7_reg_3195;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_5_reg_3035;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_3_reg_2875;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_5_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_5_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_address1_local = 64'd0;
    end else begin
        buff_s_out_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_5_ce0;
    end else begin
        buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_5_ce1_local = 1'b1;
    end else begin
        buff_s_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_53182_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_37166_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_21150_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_5134_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_d0_local = 32'd0;
    end else begin
        buff_s_out_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_61190_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_45174_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_29158_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_13142_out;
    end else begin
        buff_s_out_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1942_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3)) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_5_we1_local = 1'b1;
    end else begin
        buff_s_out_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_6_address0;
    end else begin
        buff_s_out_6_address0 = buff_s_out_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_6_reg_3160;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_4_reg_3000;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_2_reg_2840;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_address0_local = 64'd1;
    end else begin
        buff_s_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_7_reg_3200;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_5_reg_3040;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_3_reg_2880;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_6_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_6_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_address1_local = 64'd0;
    end else begin
        buff_s_out_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_6_ce0;
    end else begin
        buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_6_ce1_local = 1'b1;
    end else begin
        buff_s_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_54183_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_38167_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_22151_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_6135_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_d0_local = 32'd0;
    end else begin
        buff_s_out_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_62191_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_46175_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_30159_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_14143_out;
    end else begin
        buff_s_out_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1942_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3)) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_6_we1_local = 1'b1;
    end else begin
        buff_s_out_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_7_address0;
    end else begin
        buff_s_out_7_address0 = buff_s_out_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_6_reg_3165;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_4_reg_3005;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_2_reg_2845;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_address0_local = 64'd1;
    end else begin
        buff_s_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_7_reg_3205;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_5_reg_3045;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_3_reg_2885;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_7_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_7_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_address1_local = 64'd0;
    end else begin
        buff_s_out_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_7_ce0;
    end else begin
        buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_7_ce1_local = 1'b1;
    end else begin
        buff_s_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_55184_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_39168_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_23152_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_7136_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_d0_local = 32'd0;
    end else begin
        buff_s_out_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_63192_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_47176_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_31160_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_15144_out;
    end else begin
        buff_s_out_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1942_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3)) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_7_we1_local = 1'b1;
    end else begin
        buff_s_out_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_3130;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2970;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2810;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_address0_local = zext_ln5_fu_1957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_3170;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_3010;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2850;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address1_local = 64'd0;
    end else begin
        buff_s_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1889_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_48177_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_32161_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_16145_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1649_add_7129_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_56185_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_40169_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_24153_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1649_add_7_8137_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)) | ((trunc_ln13_1_fu_1942_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3370_ce = grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3370_ce = grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_ce;
    end else begin
        grp_fu_3370_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3370_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3370_p0 = grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_din0;
    end else begin
        grp_fu_3370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3370_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3370_p1 = grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3370_p_din1;
    end else begin
        grp_fu_3370_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3374_ce = grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3374_ce = grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_ce;
    end else begin
        grp_fu_3374_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3374_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3374_p0 = grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_din0;
    end else begin
        grp_fu_3374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3374_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1837_grp_fu_3374_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3374_p1 = grp_bicg_Pipeline_lp1_fu_1649_grp_fu_3374_p_din1;
    end else begin
        grp_fu_3374_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_ce0_local = 1'b1;
    end else begin
        p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1889_q_out_write;
    end else begin
        q_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_ce0_local = 1'b1;
    end else begin
        r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1889_s_out_write;
    end else begin
        s_out_write = 1'b0;
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
            if (((icmp_ln13_fu_1921_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
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
            if (((1'b1 == ap_CS_fsm_state5) & (grp_bicg_Pipeline_lprd_2_fu_1594_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_1649_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
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
            if (((grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_1889_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_3_ce0;
assign A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_4_address0;
assign A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_4_ce0;
assign A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_5_address0;
assign A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_5_ce0;
assign A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_6_address0;
assign A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_6_ce0;
assign A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_7_address0;
assign A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1594_A_7_ce0;
assign add_ln13_fu_1927_p2 = (i_fu_108 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_1993_p1 = p_q0;
assign bitcast_ln15_fu_2005_p1 = r_q0;
assign buff_s_out_1_addr_2_reg_2815 = 64'd2;
assign buff_s_out_1_addr_3_reg_2855 = 64'd3;
assign buff_s_out_1_addr_4_reg_2975 = 64'd4;
assign buff_s_out_1_addr_5_reg_3015 = 64'd5;
assign buff_s_out_1_addr_6_reg_3135 = 64'd6;
assign buff_s_out_1_addr_7_reg_3175 = 64'd7;
assign buff_s_out_2_addr_2_reg_2820 = 64'd2;
assign buff_s_out_2_addr_3_reg_2860 = 64'd3;
assign buff_s_out_2_addr_4_reg_2980 = 64'd4;
assign buff_s_out_2_addr_5_reg_3020 = 64'd5;
assign buff_s_out_2_addr_6_reg_3140 = 64'd6;
assign buff_s_out_2_addr_7_reg_3180 = 64'd7;
assign buff_s_out_3_addr_2_reg_2825 = 64'd2;
assign buff_s_out_3_addr_3_reg_2865 = 64'd3;
assign buff_s_out_3_addr_4_reg_2985 = 64'd4;
assign buff_s_out_3_addr_5_reg_3025 = 64'd5;
assign buff_s_out_3_addr_6_reg_3145 = 64'd6;
assign buff_s_out_3_addr_7_reg_3185 = 64'd7;
assign buff_s_out_4_addr_2_reg_2830 = 64'd2;
assign buff_s_out_4_addr_3_reg_2870 = 64'd3;
assign buff_s_out_4_addr_4_reg_2990 = 64'd4;
assign buff_s_out_4_addr_5_reg_3030 = 64'd5;
assign buff_s_out_4_addr_6_reg_3150 = 64'd6;
assign buff_s_out_4_addr_7_reg_3190 = 64'd7;
assign buff_s_out_5_addr_2_reg_2835 = 64'd2;
assign buff_s_out_5_addr_3_reg_2875 = 64'd3;
assign buff_s_out_5_addr_4_reg_2995 = 64'd4;
assign buff_s_out_5_addr_5_reg_3035 = 64'd5;
assign buff_s_out_5_addr_6_reg_3155 = 64'd6;
assign buff_s_out_5_addr_7_reg_3195 = 64'd7;
assign buff_s_out_6_addr_2_reg_2840 = 64'd2;
assign buff_s_out_6_addr_3_reg_2880 = 64'd3;
assign buff_s_out_6_addr_4_reg_3000 = 64'd4;
assign buff_s_out_6_addr_5_reg_3040 = 64'd5;
assign buff_s_out_6_addr_6_reg_3160 = 64'd6;
assign buff_s_out_6_addr_7_reg_3200 = 64'd7;
assign buff_s_out_7_addr_2_reg_2845 = 64'd2;
assign buff_s_out_7_addr_3_reg_2885 = 64'd3;
assign buff_s_out_7_addr_4_reg_3005 = 64'd4;
assign buff_s_out_7_addr_5_reg_3045 = 64'd5;
assign buff_s_out_7_addr_6_reg_3165 = 64'd6;
assign buff_s_out_7_addr_7_reg_3205 = 64'd7;
assign buff_s_out_addr_2_reg_2810 = 64'd2;
assign buff_s_out_addr_3_reg_2850 = 64'd3;
assign buff_s_out_addr_4_reg_2970 = 64'd4;
assign buff_s_out_addr_5_reg_3010 = 64'd5;
assign buff_s_out_addr_6_reg_3130 = 64'd6;
assign buff_s_out_addr_7_reg_3170 = 64'd7;
assign empty_fu_2017_p2 = ((trunc_ln13_2_reg_2799 == 2'd3) ? 1'b1 : 1'b0);
assign grp_bicg_Pipeline_lp1_fu_1649_ap_start = grp_bicg_Pipeline_lp1_fu_1649_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_1837_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1594_ap_start = grp_bicg_Pipeline_lprd_2_fu_1594_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1889_ap_start = grp_bicg_Pipeline_lpwr_fu_1889_ap_start_reg;
assign icmp_ln13_fu_1921_p2 = ((i_fu_108 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_1948_p4 = {{i_fu_108[5:3]}};
assign p_address0 = zext_ln13_fu_1933_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1889_q_out_din;
assign r_address0 = zext_ln13_fu_1933_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1889_s_out_din;
assign trunc_ln13_1_fu_1942_p1 = i_fu_108[2:0];
assign trunc_ln13_2_fu_1945_p1 = i_fu_108[1:0];
assign trunc_ln13_fu_1939_p1 = i_fu_108[5:0];
assign zext_ln13_fu_1933_p1 = i_fu_108;
assign zext_ln5_fu_1957_p1 = lshr_ln5_1_fu_1948_p4;
endmodule 