module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 39'd1;
parameter    ap_ST_fsm_state2 = 39'd2;
parameter    ap_ST_fsm_state3 = 39'd4;
parameter    ap_ST_fsm_state4 = 39'd8;
parameter    ap_ST_fsm_state5 = 39'd16;
parameter    ap_ST_fsm_state6 = 39'd32;
parameter    ap_ST_fsm_state7 = 39'd64;
parameter    ap_ST_fsm_state8 = 39'd128;
parameter    ap_ST_fsm_state9 = 39'd256;
parameter    ap_ST_fsm_state10 = 39'd512;
parameter    ap_ST_fsm_state11 = 39'd1024;
parameter    ap_ST_fsm_state12 = 39'd2048;
parameter    ap_ST_fsm_state13 = 39'd4096;
parameter    ap_ST_fsm_state14 = 39'd8192;
parameter    ap_ST_fsm_state15 = 39'd16384;
parameter    ap_ST_fsm_state16 = 39'd32768;
parameter    ap_ST_fsm_state17 = 39'd65536;
parameter    ap_ST_fsm_state18 = 39'd131072;
parameter    ap_ST_fsm_state19 = 39'd262144;
parameter    ap_ST_fsm_state20 = 39'd524288;
parameter    ap_ST_fsm_state21 = 39'd1048576;
parameter    ap_ST_fsm_state22 = 39'd2097152;
parameter    ap_ST_fsm_state23 = 39'd4194304;
parameter    ap_ST_fsm_state24 = 39'd8388608;
parameter    ap_ST_fsm_state25 = 39'd16777216;
parameter    ap_ST_fsm_state26 = 39'd33554432;
parameter    ap_ST_fsm_state27 = 39'd67108864;
parameter    ap_ST_fsm_state28 = 39'd134217728;
parameter    ap_ST_fsm_state29 = 39'd268435456;
parameter    ap_ST_fsm_state30 = 39'd536870912;
parameter    ap_ST_fsm_state31 = 39'd1073741824;
parameter    ap_ST_fsm_state32 = 39'd2147483648;
parameter    ap_ST_fsm_state33 = 39'd4294967296;
parameter    ap_ST_fsm_state34 = 39'd8589934592;
parameter    ap_ST_fsm_state35 = 39'd17179869184;
parameter    ap_ST_fsm_state36 = 39'd34359738368;
parameter    ap_ST_fsm_state37 = 39'd68719476736;
parameter    ap_ST_fsm_state38 = 39'd137438953472;
parameter    ap_ST_fsm_state39 = 39'd274877906944;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [10:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
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
(* fsm_encoding = "none" *) reg   [38:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_1861_p2;
reg   [6:0] add_ln13_reg_2572;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1873_p1;
reg   [5:0] trunc_ln13_reg_2611;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln13_1_fu_1877_p1;
reg   [0:0] trunc_ln13_1_reg_2616;
wire   [4:0] lshr_ln5_fu_1881_p4;
reg   [4:0] lshr_ln5_reg_2621;
wire   [4:0] buff_s_out_addr_2_reg_2626;
wire    ap_CS_fsm_state5;
wire   [4:0] buff_s_out_1_addr_2_reg_2631;
wire   [4:0] buff_s_out_addr_3_reg_2636;
wire   [4:0] buff_s_out_1_addr_3_reg_2641;
reg   [31:0] buff_s_out_load_reg_2646;
reg   [31:0] buff_s_out_1_load_reg_2651;
reg   [31:0] buff_s_out_load_1_reg_2656;
reg   [31:0] buff_s_out_1_load_1_reg_2661;
wire   [4:0] buff_s_out_addr_4_reg_2666;
wire    ap_CS_fsm_state6;
wire   [4:0] buff_s_out_1_addr_4_reg_2671;
wire   [4:0] buff_s_out_addr_5_reg_2676;
wire   [4:0] buff_s_out_1_addr_5_reg_2681;
reg   [31:0] buff_s_out_load_2_reg_2686;
reg   [31:0] buff_s_out_1_load_2_reg_2691;
reg   [31:0] buff_s_out_load_3_reg_2696;
reg   [31:0] buff_s_out_1_load_3_reg_2701;
wire   [4:0] buff_s_out_addr_6_reg_2706;
wire    ap_CS_fsm_state7;
wire   [4:0] buff_s_out_1_addr_6_reg_2711;
wire   [4:0] buff_s_out_addr_7_reg_2716;
wire   [4:0] buff_s_out_1_addr_7_reg_2721;
reg   [31:0] buff_s_out_load_4_reg_2726;
reg   [31:0] buff_s_out_1_load_4_reg_2731;
reg   [31:0] buff_s_out_load_5_reg_2736;
reg   [31:0] buff_s_out_1_load_5_reg_2741;
wire   [4:0] buff_s_out_addr_8_reg_2746;
wire    ap_CS_fsm_state8;
wire   [4:0] buff_s_out_1_addr_8_reg_2751;
wire   [4:0] buff_s_out_addr_9_reg_2756;
wire   [4:0] buff_s_out_1_addr_9_reg_2761;
reg   [31:0] buff_s_out_load_6_reg_2766;
reg   [31:0] buff_s_out_1_load_6_reg_2771;
reg   [31:0] buff_s_out_load_7_reg_2776;
reg   [31:0] buff_s_out_1_load_7_reg_2781;
wire   [4:0] buff_s_out_addr_10_reg_2786;
wire    ap_CS_fsm_state9;
wire   [4:0] buff_s_out_1_addr_10_reg_2791;
wire   [4:0] buff_s_out_addr_11_reg_2796;
wire   [4:0] buff_s_out_1_addr_11_reg_2801;
reg   [31:0] buff_s_out_load_8_reg_2806;
reg   [31:0] buff_s_out_1_load_8_reg_2811;
reg   [31:0] buff_s_out_load_9_reg_2816;
reg   [31:0] buff_s_out_1_load_9_reg_2821;
wire   [4:0] buff_s_out_addr_12_reg_2826;
wire    ap_CS_fsm_state10;
wire   [4:0] buff_s_out_1_addr_12_reg_2831;
wire   [4:0] buff_s_out_addr_13_reg_2836;
wire   [4:0] buff_s_out_1_addr_13_reg_2841;
reg   [31:0] buff_s_out_load_10_reg_2846;
reg   [31:0] buff_s_out_1_load_10_reg_2851;
reg   [31:0] buff_s_out_load_11_reg_2856;
reg   [31:0] buff_s_out_1_load_11_reg_2861;
wire   [4:0] buff_s_out_addr_14_reg_2866;
wire    ap_CS_fsm_state11;
wire   [4:0] buff_s_out_1_addr_14_reg_2871;
wire   [4:0] buff_s_out_addr_15_reg_2876;
wire   [4:0] buff_s_out_1_addr_15_reg_2881;
reg   [31:0] buff_s_out_load_12_reg_2886;
reg   [31:0] buff_s_out_1_load_12_reg_2891;
reg   [31:0] buff_s_out_load_13_reg_2896;
reg   [31:0] buff_s_out_1_load_13_reg_2901;
wire   [4:0] buff_s_out_addr_16_reg_2906;
wire    ap_CS_fsm_state12;
wire   [4:0] buff_s_out_1_addr_16_reg_2911;
wire   [4:0] buff_s_out_addr_17_reg_2916;
wire   [4:0] buff_s_out_1_addr_17_reg_2921;
reg   [31:0] buff_s_out_load_14_reg_2926;
reg   [31:0] buff_s_out_1_load_14_reg_2931;
reg   [31:0] buff_s_out_load_15_reg_2936;
reg   [31:0] buff_s_out_1_load_15_reg_2941;
wire   [4:0] buff_s_out_addr_18_reg_2946;
wire    ap_CS_fsm_state13;
wire   [4:0] buff_s_out_1_addr_18_reg_2951;
wire   [4:0] buff_s_out_addr_19_reg_2956;
wire   [4:0] buff_s_out_1_addr_19_reg_2961;
reg   [31:0] buff_s_out_load_16_reg_2966;
reg   [31:0] buff_s_out_1_load_16_reg_2971;
reg   [31:0] buff_s_out_load_17_reg_2976;
reg   [31:0] buff_s_out_1_load_17_reg_2981;
wire   [4:0] buff_s_out_addr_20_reg_2986;
wire    ap_CS_fsm_state14;
wire   [4:0] buff_s_out_1_addr_20_reg_2991;
wire   [4:0] buff_s_out_addr_21_reg_2996;
wire   [4:0] buff_s_out_1_addr_21_reg_3001;
reg   [31:0] buff_s_out_load_18_reg_3006;
reg   [31:0] buff_s_out_1_load_18_reg_3011;
reg   [31:0] buff_s_out_load_19_reg_3016;
reg   [31:0] buff_s_out_1_load_19_reg_3021;
wire   [4:0] buff_s_out_addr_22_reg_3026;
wire    ap_CS_fsm_state15;
wire   [4:0] buff_s_out_1_addr_22_reg_3031;
wire   [4:0] buff_s_out_addr_23_reg_3036;
wire   [4:0] buff_s_out_1_addr_23_reg_3041;
reg   [31:0] buff_s_out_load_20_reg_3046;
reg   [31:0] buff_s_out_1_load_20_reg_3051;
reg   [31:0] buff_s_out_load_21_reg_3056;
reg   [31:0] buff_s_out_1_load_21_reg_3061;
wire   [4:0] buff_s_out_addr_24_reg_3066;
wire    ap_CS_fsm_state16;
wire   [4:0] buff_s_out_1_addr_24_reg_3071;
wire   [4:0] buff_s_out_addr_25_reg_3076;
wire   [4:0] buff_s_out_1_addr_25_reg_3081;
reg   [31:0] buff_s_out_load_22_reg_3086;
reg   [31:0] buff_s_out_1_load_22_reg_3091;
reg   [31:0] buff_s_out_load_23_reg_3096;
reg   [31:0] buff_s_out_1_load_23_reg_3101;
wire   [4:0] buff_s_out_addr_26_reg_3106;
wire    ap_CS_fsm_state17;
wire   [4:0] buff_s_out_1_addr_26_reg_3111;
wire   [4:0] buff_s_out_addr_27_reg_3116;
wire   [4:0] buff_s_out_1_addr_27_reg_3121;
reg   [31:0] buff_s_out_load_24_reg_3126;
reg   [31:0] buff_s_out_1_load_24_reg_3131;
reg   [31:0] buff_s_out_load_25_reg_3136;
reg   [31:0] buff_s_out_1_load_25_reg_3141;
wire   [4:0] buff_s_out_addr_28_reg_3146;
wire    ap_CS_fsm_state18;
wire   [4:0] buff_s_out_1_addr_28_reg_3151;
wire   [4:0] buff_s_out_addr_29_reg_3156;
wire   [4:0] buff_s_out_1_addr_29_reg_3161;
reg   [31:0] buff_s_out_load_26_reg_3166;
reg   [31:0] buff_s_out_1_load_26_reg_3171;
reg   [31:0] buff_s_out_load_27_reg_3176;
reg   [31:0] buff_s_out_1_load_27_reg_3181;
wire   [4:0] buff_s_out_addr_30_reg_3186;
wire    ap_CS_fsm_state19;
wire   [4:0] buff_s_out_1_addr_30_reg_3191;
wire   [4:0] buff_s_out_addr_31_reg_3196;
wire   [4:0] buff_s_out_1_addr_31_reg_3201;
reg   [31:0] buff_s_out_load_28_reg_3206;
reg   [31:0] buff_s_out_1_load_28_reg_3211;
reg   [31:0] buff_s_out_load_29_reg_3216;
reg   [31:0] buff_s_out_1_load_29_reg_3221;
reg   [31:0] buff_s_out_load_30_reg_3226;
wire    ap_CS_fsm_state20;
reg   [31:0] buff_s_out_1_load_30_reg_3231;
reg   [31:0] buff_s_out_load_31_reg_3236;
reg   [31:0] buff_s_out_1_load_31_reg_3241;
wire    ap_CS_fsm_state21;
reg   [31:0] buff_p_load_reg_3286;
reg   [31:0] buff_p_load_1_reg_3291;
reg   [31:0] buff_p_1_load_reg_3296;
reg   [31:0] buff_p_1_load_1_reg_3301;
wire    ap_CS_fsm_state22;
reg   [31:0] buff_p_load_2_reg_3326;
reg   [31:0] buff_p_load_3_reg_3331;
reg   [31:0] buff_p_1_load_2_reg_3336;
reg   [31:0] buff_p_1_load_3_reg_3341;
wire    ap_CS_fsm_state23;
reg   [31:0] buff_p_load_4_reg_3366;
reg   [31:0] buff_p_load_5_reg_3371;
reg   [31:0] buff_p_1_load_4_reg_3376;
reg   [31:0] buff_p_1_load_5_reg_3381;
wire    ap_CS_fsm_state24;
reg   [31:0] buff_p_load_6_reg_3406;
reg   [31:0] buff_p_load_7_reg_3411;
reg   [31:0] buff_p_1_load_6_reg_3416;
reg   [31:0] buff_p_1_load_7_reg_3421;
wire    ap_CS_fsm_state25;
reg   [31:0] buff_p_load_8_reg_3446;
reg   [31:0] buff_p_load_9_reg_3451;
reg   [31:0] buff_p_1_load_8_reg_3456;
reg   [31:0] buff_p_1_load_9_reg_3461;
wire    ap_CS_fsm_state26;
reg   [31:0] buff_p_load_10_reg_3486;
reg   [31:0] buff_p_load_11_reg_3491;
reg   [31:0] buff_p_1_load_10_reg_3496;
reg   [31:0] buff_p_1_load_11_reg_3501;
wire    ap_CS_fsm_state27;
reg   [31:0] buff_p_load_12_reg_3526;
reg   [31:0] buff_p_load_13_reg_3531;
reg   [31:0] buff_p_1_load_12_reg_3536;
reg   [31:0] buff_p_1_load_13_reg_3541;
wire    ap_CS_fsm_state28;
reg   [31:0] buff_p_load_14_reg_3566;
reg   [31:0] buff_p_load_15_reg_3571;
reg   [31:0] buff_p_1_load_14_reg_3576;
reg   [31:0] buff_p_1_load_15_reg_3581;
wire    ap_CS_fsm_state29;
reg   [31:0] buff_p_load_16_reg_3606;
reg   [31:0] buff_p_load_17_reg_3611;
reg   [31:0] buff_p_1_load_16_reg_3616;
reg   [31:0] buff_p_1_load_17_reg_3621;
wire    ap_CS_fsm_state30;
reg   [31:0] buff_p_load_18_reg_3646;
reg   [31:0] buff_p_load_19_reg_3651;
reg   [31:0] buff_p_1_load_18_reg_3656;
reg   [31:0] buff_p_1_load_19_reg_3661;
wire    ap_CS_fsm_state31;
reg   [31:0] buff_p_load_20_reg_3686;
reg   [31:0] buff_p_load_21_reg_3691;
reg   [31:0] buff_p_1_load_20_reg_3696;
reg   [31:0] buff_p_1_load_21_reg_3701;
wire    ap_CS_fsm_state32;
reg   [31:0] buff_p_load_22_reg_3726;
reg   [31:0] buff_p_load_23_reg_3731;
reg   [31:0] buff_p_1_load_22_reg_3736;
reg   [31:0] buff_p_1_load_23_reg_3741;
wire    ap_CS_fsm_state33;
reg   [31:0] buff_p_load_24_reg_3766;
reg   [31:0] buff_p_load_25_reg_3771;
reg   [31:0] buff_p_1_load_24_reg_3776;
reg   [31:0] buff_p_1_load_25_reg_3781;
wire    ap_CS_fsm_state34;
reg   [31:0] buff_p_load_26_reg_3806;
reg   [31:0] buff_p_load_27_reg_3811;
reg   [31:0] buff_p_1_load_26_reg_3816;
reg   [31:0] buff_p_1_load_27_reg_3821;
wire    ap_CS_fsm_state35;
reg   [31:0] buff_p_load_28_reg_3846;
reg   [31:0] buff_p_load_29_reg_3851;
reg   [31:0] buff_p_1_load_28_reg_3856;
reg   [31:0] buff_p_1_load_29_reg_3861;
reg   [31:0] buff_p_load_30_reg_3866;
wire    ap_CS_fsm_state36;
reg   [31:0] buff_p_load_31_reg_3871;
reg   [31:0] buff_p_1_load_30_reg_3876;
reg   [31:0] buff_p_1_load_31_reg_3881;
reg   [9:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [9:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [9:0] buff_A_address2;
reg    buff_A_ce2;
wire   [31:0] buff_A_q2;
reg    buff_A_ce3;
wire   [31:0] buff_A_q3;
reg    buff_A_ce4;
wire   [31:0] buff_A_q4;
reg    buff_A_ce5;
wire   [31:0] buff_A_q5;
reg    buff_A_ce6;
wire   [31:0] buff_A_q6;
reg    buff_A_ce7;
wire   [31:0] buff_A_q7;
reg    buff_A_ce8;
wire   [31:0] buff_A_q8;
reg    buff_A_ce9;
wire   [31:0] buff_A_q9;
reg    buff_A_ce10;
wire   [31:0] buff_A_q10;
reg    buff_A_ce11;
wire   [31:0] buff_A_q11;
reg    buff_A_ce12;
wire   [31:0] buff_A_q12;
reg    buff_A_ce13;
wire   [31:0] buff_A_q13;
reg    buff_A_ce14;
wire   [31:0] buff_A_q14;
reg    buff_A_ce15;
wire   [31:0] buff_A_q15;
reg    buff_A_ce16;
wire   [31:0] buff_A_q16;
reg   [9:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [9:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [9:0] buff_A_1_address2;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg    buff_A_1_ce3;
wire   [31:0] buff_A_1_q3;
reg    buff_A_1_ce4;
wire   [31:0] buff_A_1_q4;
reg    buff_A_1_ce5;
wire   [31:0] buff_A_1_q5;
reg    buff_A_1_ce6;
wire   [31:0] buff_A_1_q6;
reg    buff_A_1_ce7;
wire   [31:0] buff_A_1_q7;
reg    buff_A_1_ce8;
wire   [31:0] buff_A_1_q8;
reg    buff_A_1_ce9;
wire   [31:0] buff_A_1_q9;
reg    buff_A_1_ce10;
wire   [31:0] buff_A_1_q10;
reg    buff_A_1_ce11;
wire   [31:0] buff_A_1_q11;
reg    buff_A_1_ce12;
wire   [31:0] buff_A_1_q12;
reg    buff_A_1_ce13;
wire   [31:0] buff_A_1_q13;
reg    buff_A_1_ce14;
wire   [31:0] buff_A_1_q14;
reg    buff_A_1_ce15;
wire   [31:0] buff_A_1_q15;
reg    buff_A_1_ce16;
wire   [31:0] buff_A_1_q16;
reg   [9:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [9:0] buff_A_2_address1;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg   [9:0] buff_A_2_address2;
reg    buff_A_2_ce2;
wire   [31:0] buff_A_2_q2;
reg    buff_A_2_ce3;
wire   [31:0] buff_A_2_q3;
reg    buff_A_2_ce4;
wire   [31:0] buff_A_2_q4;
reg    buff_A_2_ce5;
wire   [31:0] buff_A_2_q5;
reg    buff_A_2_ce6;
wire   [31:0] buff_A_2_q6;
reg    buff_A_2_ce7;
wire   [31:0] buff_A_2_q7;
reg    buff_A_2_ce8;
wire   [31:0] buff_A_2_q8;
reg    buff_A_2_ce9;
wire   [31:0] buff_A_2_q9;
reg    buff_A_2_ce10;
wire   [31:0] buff_A_2_q10;
reg    buff_A_2_ce11;
wire   [31:0] buff_A_2_q11;
reg    buff_A_2_ce12;
wire   [31:0] buff_A_2_q12;
reg    buff_A_2_ce13;
wire   [31:0] buff_A_2_q13;
reg    buff_A_2_ce14;
wire   [31:0] buff_A_2_q14;
reg    buff_A_2_ce15;
wire   [31:0] buff_A_2_q15;
reg    buff_A_2_ce16;
wire   [31:0] buff_A_2_q16;
reg   [9:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [9:0] buff_A_3_address1;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg   [9:0] buff_A_3_address2;
reg    buff_A_3_ce2;
wire   [31:0] buff_A_3_q2;
reg    buff_A_3_ce3;
wire   [31:0] buff_A_3_q3;
reg    buff_A_3_ce4;
wire   [31:0] buff_A_3_q4;
reg    buff_A_3_ce5;
wire   [31:0] buff_A_3_q5;
reg    buff_A_3_ce6;
wire   [31:0] buff_A_3_q6;
reg    buff_A_3_ce7;
wire   [31:0] buff_A_3_q7;
reg    buff_A_3_ce8;
wire   [31:0] buff_A_3_q8;
reg    buff_A_3_ce9;
wire   [31:0] buff_A_3_q9;
reg    buff_A_3_ce10;
wire   [31:0] buff_A_3_q10;
reg    buff_A_3_ce11;
wire   [31:0] buff_A_3_q11;
reg    buff_A_3_ce12;
wire   [31:0] buff_A_3_q12;
reg    buff_A_3_ce13;
wire   [31:0] buff_A_3_q13;
reg    buff_A_3_ce14;
wire   [31:0] buff_A_3_q14;
reg    buff_A_3_ce15;
wire   [31:0] buff_A_3_q15;
reg    buff_A_3_ce16;
wire   [31:0] buff_A_3_q16;
wire   [31:0] buff_p_q0;
wire   [31:0] buff_p_q1;
wire   [31:0] buff_p_1_q0;
wire   [31:0] buff_p_1_q1;
reg   [4:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg    buff_r_ce1;
wire   [31:0] buff_r_q1;
reg   [4:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg    buff_r_1_ce1;
wire   [31:0] buff_r_1_q1;
reg   [4:0] buff_s_out_address0;
reg    buff_s_out_ce0;
wire   [31:0] buff_s_out_q0;
wire   [31:0] buff_s_out_q1;
reg   [4:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
wire   [31:0] buff_s_out_1_q0;
wire   [31:0] buff_s_out_1_q1;
reg   [4:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg    buff_q_out_ce1;
wire   [31:0] buff_q_out_q1;
reg   [4:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg    buff_q_out_1_ce1;
wire   [31:0] buff_q_out_1_q1;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_ap_ready;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1600_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_A_0_ce0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1600_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_d0;
wire    grp_bicg_Pipeline_lp1_fu_1615_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1615_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1615_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1615_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_address2;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce2;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1615_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_r_ce0;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1615_buff_r_address1;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_r_ce1;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_ce0;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_ce1;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_63187_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_63187_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_62186_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_62186_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_61185_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_61185_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_60184_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_60184_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_59183_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_59183_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_58182_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_58182_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_57181_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_57181_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_56180_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_56180_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_55179_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_55179_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_54178_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_54178_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_53177_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_53177_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_52176_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_52176_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_51175_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_51175_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_50174_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_50174_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_49173_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_49173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_48172_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_48172_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_47171_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_47171_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_46170_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_46170_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_45169_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_45169_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_44168_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_44168_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_43167_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_43167_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_42166_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_42166_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_41165_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_41165_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_40164_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_40164_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_39163_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_39163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_38162_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_38162_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_37161_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_37161_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_36160_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_36160_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_35159_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_35159_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_34158_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_34158_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_33157_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_33157_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_32156_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_32156_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_31155_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_31155_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_30154_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_30154_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_29153_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_29153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_28152_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_28152_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_27151_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_27151_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_26150_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_26150_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_25149_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_25149_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_24148_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_24148_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_23147_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_23147_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_22146_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_22146_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_21145_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_21145_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_20144_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_20144_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_19143_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_19143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_18142_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_18142_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_17141_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_17141_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_16140_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_16140_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_15139_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_15139_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_14138_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_14138_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_13137_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_13137_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_12136_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_12136_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_11135_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_11135_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_10134_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_10134_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_9133_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_9133_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_8132_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_8132_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_7131_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_7131_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_6130_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_6130_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_5129_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_5129_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_4128_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_4128_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_3127_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_3127_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_2126_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_2126_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7_1125_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7_1125_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_add_7124_out;
wire    grp_bicg_Pipeline_lp1_fu_1615_add_7124_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_ce;
wire    grp_bicg_Pipeline_lp3_fu_1757_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_1757_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_1757_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_1757_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address8;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address9;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address10;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address11;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address12;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address13;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address14;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address15;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_address16;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce16;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address9;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address10;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address11;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address12;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address13;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address14;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address15;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address16;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce16;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address3;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address4;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address5;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address6;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address7;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address8;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address9;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address10;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address11;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address12;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address13;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address14;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address15;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address16;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce16;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address3;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address4;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address5;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address6;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address7;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address8;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address9;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address10;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address11;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address12;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address13;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address14;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address15;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address16;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce16;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_d0;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_ce1;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_d0;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_ce1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1835_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1835_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1835_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1835_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1835_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1835_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1835_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1835_q_out_write;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_1_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_1_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1600_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp1_fu_1615_ap_start_reg;
reg    grp_bicg_Pipeline_lp3_fu_1757_ap_start_reg;
wire    ap_CS_fsm_state37;
reg    grp_bicg_Pipeline_lpwr_fu_1835_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
wire   [63:0] zext_ln13_fu_1867_p1;
wire   [0:0] icmp_ln13_fu_1855_p2;
wire   [63:0] zext_ln5_fu_1891_p1;
reg   [6:0] i_fu_126;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [4:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [4:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
reg   [31:0] buff_s_out_d0_local;
reg    buff_s_out_we1_local;
reg   [31:0] buff_s_out_d1_local;
reg    buff_s_out_1_ce1_local;
reg   [4:0] buff_s_out_1_address1_local;
reg    buff_s_out_1_ce0_local;
reg   [4:0] buff_s_out_1_address0_local;
reg    buff_s_out_1_we0_local;
reg   [31:0] buff_s_out_1_d0_local;
reg    buff_s_out_1_we1_local;
reg   [31:0] buff_s_out_1_d1_local;
reg    buff_p_we0_local;
wire   [31:0] bitcast_ln14_fu_1903_p1;
reg    buff_p_ce0_local;
reg   [4:0] buff_p_address0_local;
reg    buff_p_ce1_local;
reg   [4:0] buff_p_address1_local;
reg    buff_r_we0_local;
wire   [31:0] bitcast_ln15_fu_1909_p1;
reg    buff_r_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg   [4:0] buff_p_1_address0_local;
reg    buff_p_1_ce1_local;
reg   [4:0] buff_p_1_address1_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
wire   [31:0] grp_fu_3886_p2;
reg   [31:0] grp_fu_3886_p0;
reg   [31:0] grp_fu_3886_p1;
reg    grp_fu_3886_ce;
wire   [31:0] grp_fu_3890_p2;
reg   [31:0] grp_fu_3890_p0;
reg   [31:0] grp_fu_3890_p1;
reg    grp_fu_3890_ce;
wire   [31:0] grp_fu_3894_p2;
reg   [31:0] grp_fu_3894_p0;
reg   [31:0] grp_fu_3894_p1;
reg    grp_fu_3894_ce;
wire   [31:0] grp_fu_3898_p2;
reg   [31:0] grp_fu_3898_p0;
reg   [31:0] grp_fu_3898_p1;
reg    grp_fu_3898_ce;
wire   [31:0] grp_fu_3902_p2;
reg   [31:0] grp_fu_3902_p0;
reg   [31:0] grp_fu_3902_p1;
reg    grp_fu_3902_ce;
wire   [31:0] grp_fu_3906_p2;
reg   [31:0] grp_fu_3906_p0;
reg   [31:0] grp_fu_3906_p1;
reg    grp_fu_3906_ce;
wire   [31:0] grp_fu_3910_p2;
reg   [31:0] grp_fu_3910_p0;
reg   [31:0] grp_fu_3910_p1;
reg    grp_fu_3910_ce;
wire   [31:0] grp_fu_3914_p2;
reg   [31:0] grp_fu_3914_p0;
reg   [31:0] grp_fu_3914_p1;
reg    grp_fu_3914_ce;
wire   [31:0] grp_fu_3918_p2;
reg   [31:0] grp_fu_3918_p0;
reg   [31:0] grp_fu_3918_p1;
reg    grp_fu_3918_ce;
wire   [31:0] grp_fu_3922_p2;
reg   [31:0] grp_fu_3922_p0;
reg   [31:0] grp_fu_3922_p1;
reg    grp_fu_3922_ce;
wire   [31:0] grp_fu_3926_p2;
reg   [31:0] grp_fu_3926_p0;
reg   [31:0] grp_fu_3926_p1;
reg    grp_fu_3926_ce;
wire   [31:0] grp_fu_3930_p2;
reg   [31:0] grp_fu_3930_p0;
reg   [31:0] grp_fu_3930_p1;
reg    grp_fu_3930_ce;
wire   [31:0] grp_fu_3934_p2;
reg   [31:0] grp_fu_3934_p0;
reg   [31:0] grp_fu_3934_p1;
reg    grp_fu_3934_ce;
wire   [31:0] grp_fu_3938_p2;
reg   [31:0] grp_fu_3938_p0;
reg   [31:0] grp_fu_3938_p1;
reg    grp_fu_3938_ce;
wire   [31:0] grp_fu_3942_p2;
reg   [31:0] grp_fu_3942_p0;
reg   [31:0] grp_fu_3942_p1;
reg    grp_fu_3942_ce;
wire   [31:0] grp_fu_3946_p2;
reg   [31:0] grp_fu_3946_p0;
reg   [31:0] grp_fu_3946_p1;
reg    grp_fu_3946_ce;
wire   [31:0] grp_fu_3950_p2;
reg   [31:0] grp_fu_3950_p0;
reg   [31:0] grp_fu_3950_p1;
reg    grp_fu_3950_ce;
wire   [31:0] grp_fu_3954_p2;
reg   [31:0] grp_fu_3954_p0;
reg   [31:0] grp_fu_3954_p1;
reg    grp_fu_3954_ce;
wire   [31:0] grp_fu_3958_p2;
reg   [31:0] grp_fu_3958_p0;
reg   [31:0] grp_fu_3958_p1;
reg    grp_fu_3958_ce;
wire   [31:0] grp_fu_3962_p2;
reg   [31:0] grp_fu_3962_p0;
reg   [31:0] grp_fu_3962_p1;
reg    grp_fu_3962_ce;
wire   [31:0] grp_fu_3966_p2;
reg   [31:0] grp_fu_3966_p0;
reg   [31:0] grp_fu_3966_p1;
reg    grp_fu_3966_ce;
wire   [31:0] grp_fu_3970_p2;
reg   [31:0] grp_fu_3970_p0;
reg   [31:0] grp_fu_3970_p1;
reg    grp_fu_3970_ce;
reg   [38:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
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
reg    ap_ST_fsm_state21_blk;
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
reg    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
reg    ap_ST_fsm_state39_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 39'd1;
#0 grp_bicg_Pipeline_lprd_2_fu_1600_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1615_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_1757_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1835_ap_start_reg = 1'b0;
#0 i_fu_126 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15),.address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address16),.ce16(buff_A_ce16),.q16(buff_A_q16));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15),.address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address16),.ce16(buff_A_1_ce16),.q16(buff_A_1_q16));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15),.address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address16),.ce16(buff_A_2_ce16),.q16(buff_A_2_q16));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15),.address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address16),.ce16(buff_A_3_ce16),.q16(buff_A_3_q16));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1903_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1903_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_r_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1909_p1),.q0(buff_r_q0),.address1(grp_bicg_Pipeline_lp1_fu_1615_buff_r_address1),.ce1(buff_r_ce1),.q1(buff_r_q1));
bicg_buff_r_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1909_p1),.q0(buff_r_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_address1),.ce1(buff_r_1_ce1),.q1(buff_r_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0_local),.d0(buff_s_out_d0_local),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0_local),.d0(buff_s_out_1_d0_local),.q0(buff_s_out_1_q0),.address1(buff_s_out_1_address1_local),.ce1(buff_s_out_1_ce1_local),.we1(buff_s_out_1_we1_local),.d1(buff_s_out_1_d1_local),.q1(buff_s_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_address1),.ce1(buff_q_out_ce1),.q1(buff_q_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.q1(buff_q_out_1_q1));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1600(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1600_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1600_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1600_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1600_ap_ready),.i(trunc_ln13_reg_2611),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1600_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1600_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1600_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1600_A_1_ce0),.A_1_q0(A_1_q0),.lshr_ln5(lshr_ln5_reg_2621),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_d0),.empty(trunc_ln13_1_reg_2616));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1615(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1615_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1615_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1615_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1615_ap_ready),.buff_s_out_1_load_31(buff_s_out_1_load_31_reg_3241),.buff_s_out_load_31(buff_s_out_load_31_reg_3236),.buff_s_out_1_load_30(buff_s_out_1_load_30_reg_3231),.buff_s_out_load_30(buff_s_out_load_30_reg_3226),.buff_s_out_1_load_29(buff_s_out_1_load_29_reg_3221),.buff_s_out_load_29(buff_s_out_load_29_reg_3216),.buff_s_out_1_load_28(buff_s_out_1_load_28_reg_3211),.buff_s_out_load_28(buff_s_out_load_28_reg_3206),.buff_s_out_1_load_27(buff_s_out_1_load_27_reg_3181),.buff_s_out_load_27(buff_s_out_load_27_reg_3176),.buff_s_out_1_load_26(buff_s_out_1_load_26_reg_3171),.buff_s_out_load_26(buff_s_out_load_26_reg_3166),.buff_s_out_1_load_25(buff_s_out_1_load_25_reg_3141),.buff_s_out_load_25(buff_s_out_load_25_reg_3136),.buff_s_out_1_load_24(buff_s_out_1_load_24_reg_3131),.buff_s_out_load_24(buff_s_out_load_24_reg_3126),.buff_s_out_1_load_23(buff_s_out_1_load_23_reg_3101),.buff_s_out_load_23(buff_s_out_load_23_reg_3096),.buff_s_out_1_load_22(buff_s_out_1_load_22_reg_3091),.buff_s_out_load_22(buff_s_out_load_22_reg_3086),.buff_s_out_1_load_21(buff_s_out_1_load_21_reg_3061),.buff_s_out_load_21(buff_s_out_load_21_reg_3056),.buff_s_out_1_load_20(buff_s_out_1_load_20_reg_3051),.buff_s_out_load_20(buff_s_out_load_20_reg_3046),.buff_s_out_1_load_19(buff_s_out_1_load_19_reg_3021),.buff_s_out_load_19(buff_s_out_load_19_reg_3016),.buff_s_out_1_load_18(buff_s_out_1_load_18_reg_3011),.buff_s_out_load_18(buff_s_out_load_18_reg_3006),.buff_s_out_1_load_17(buff_s_out_1_load_17_reg_2981),.buff_s_out_load_17(buff_s_out_load_17_reg_2976),.buff_s_out_1_load_16(buff_s_out_1_load_16_reg_2971),.buff_s_out_load_16(buff_s_out_load_16_reg_2966),.buff_s_out_1_load_15(buff_s_out_1_load_15_reg_2941),.buff_s_out_load_15(buff_s_out_load_15_reg_2936),.buff_s_out_1_load_14(buff_s_out_1_load_14_reg_2931),.buff_s_out_load_14(buff_s_out_load_14_reg_2926),.buff_s_out_1_load_13(buff_s_out_1_load_13_reg_2901),.buff_s_out_load_13(buff_s_out_load_13_reg_2896),.buff_s_out_1_load_12(buff_s_out_1_load_12_reg_2891),.buff_s_out_load_12(buff_s_out_load_12_reg_2886),.buff_s_out_1_load_11(buff_s_out_1_load_11_reg_2861),.buff_s_out_load_11(buff_s_out_load_11_reg_2856),.buff_s_out_1_load_10(buff_s_out_1_load_10_reg_2851),.buff_s_out_load_10(buff_s_out_load_10_reg_2846),.buff_s_out_1_load_9(buff_s_out_1_load_9_reg_2821),.buff_s_out_load_9(buff_s_out_load_9_reg_2816),.buff_s_out_1_load_8(buff_s_out_1_load_8_reg_2811),.buff_s_out_load_8(buff_s_out_load_8_reg_2806),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_2781),.buff_s_out_load_7(buff_s_out_load_7_reg_2776),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_2771),.buff_s_out_load_6(buff_s_out_load_6_reg_2766),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_2741),.buff_s_out_load_5(buff_s_out_load_5_reg_2736),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_2731),.buff_s_out_load_4(buff_s_out_load_4_reg_2726),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2701),.buff_s_out_load_3(buff_s_out_load_3_reg_2696),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2691),.buff_s_out_load_2(buff_s_out_load_2_reg_2686),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2661),.buff_s_out_load_1(buff_s_out_load_1_reg_2656),.buff_s_out_1_load(buff_s_out_1_load_reg_2651),.buff_s_out_load(buff_s_out_load_reg_2646),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1615_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1615_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_address1(grp_bicg_Pipeline_lp1_fu_1615_buff_r_address1),.buff_r_ce1(grp_bicg_Pipeline_lp1_fu_1615_buff_r_ce1),.buff_r_q1(buff_r_q1),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_1_address1(grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_address1),.buff_r_1_ce1(grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_ce1),.buff_r_1_q1(buff_r_1_q1),.add_7_63187_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_63187_out),.add_7_63187_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_63187_out_ap_vld),.add_7_62186_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_62186_out),.add_7_62186_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_62186_out_ap_vld),.add_7_61185_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_61185_out),.add_7_61185_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_61185_out_ap_vld),.add_7_60184_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_60184_out),.add_7_60184_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_60184_out_ap_vld),.add_7_59183_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_59183_out),.add_7_59183_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_59183_out_ap_vld),.add_7_58182_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_58182_out),.add_7_58182_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_58182_out_ap_vld),.add_7_57181_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_57181_out),.add_7_57181_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_57181_out_ap_vld),.add_7_56180_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_56180_out),.add_7_56180_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_56180_out_ap_vld),.add_7_55179_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_55179_out),.add_7_55179_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_55179_out_ap_vld),.add_7_54178_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_54178_out),.add_7_54178_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_54178_out_ap_vld),.add_7_53177_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_53177_out),.add_7_53177_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_53177_out_ap_vld),.add_7_52176_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_52176_out),.add_7_52176_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_52176_out_ap_vld),.add_7_51175_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_51175_out),.add_7_51175_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_51175_out_ap_vld),.add_7_50174_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_50174_out),.add_7_50174_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_50174_out_ap_vld),.add_7_49173_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_49173_out),.add_7_49173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_49173_out_ap_vld),.add_7_48172_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_48172_out),.add_7_48172_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_48172_out_ap_vld),.add_7_47171_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_47171_out),.add_7_47171_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_47171_out_ap_vld),.add_7_46170_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_46170_out),.add_7_46170_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_46170_out_ap_vld),.add_7_45169_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_45169_out),.add_7_45169_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_45169_out_ap_vld),.add_7_44168_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_44168_out),.add_7_44168_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_44168_out_ap_vld),.add_7_43167_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_43167_out),.add_7_43167_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_43167_out_ap_vld),.add_7_42166_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_42166_out),.add_7_42166_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_42166_out_ap_vld),.add_7_41165_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_41165_out),.add_7_41165_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_41165_out_ap_vld),.add_7_40164_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_40164_out),.add_7_40164_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_40164_out_ap_vld),.add_7_39163_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_39163_out),.add_7_39163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_39163_out_ap_vld),.add_7_38162_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_38162_out),.add_7_38162_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_38162_out_ap_vld),.add_7_37161_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_37161_out),.add_7_37161_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_37161_out_ap_vld),.add_7_36160_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_36160_out),.add_7_36160_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_36160_out_ap_vld),.add_7_35159_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_35159_out),.add_7_35159_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_35159_out_ap_vld),.add_7_34158_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_34158_out),.add_7_34158_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_34158_out_ap_vld),.add_7_33157_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_33157_out),.add_7_33157_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_33157_out_ap_vld),.add_7_32156_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_32156_out),.add_7_32156_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_32156_out_ap_vld),.add_7_31155_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_31155_out),.add_7_31155_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_31155_out_ap_vld),.add_7_30154_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_30154_out),.add_7_30154_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_30154_out_ap_vld),.add_7_29153_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_29153_out),.add_7_29153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_29153_out_ap_vld),.add_7_28152_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_28152_out),.add_7_28152_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_28152_out_ap_vld),.add_7_27151_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_27151_out),.add_7_27151_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_27151_out_ap_vld),.add_7_26150_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_26150_out),.add_7_26150_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_26150_out_ap_vld),.add_7_25149_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_25149_out),.add_7_25149_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_25149_out_ap_vld),.add_7_24148_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_24148_out),.add_7_24148_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_24148_out_ap_vld),.add_7_23147_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_23147_out),.add_7_23147_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_23147_out_ap_vld),.add_7_22146_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_22146_out),.add_7_22146_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_22146_out_ap_vld),.add_7_21145_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_21145_out),.add_7_21145_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_21145_out_ap_vld),.add_7_20144_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_20144_out),.add_7_20144_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_20144_out_ap_vld),.add_7_19143_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_19143_out),.add_7_19143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_19143_out_ap_vld),.add_7_18142_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_18142_out),.add_7_18142_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_18142_out_ap_vld),.add_7_17141_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_17141_out),.add_7_17141_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_17141_out_ap_vld),.add_7_16140_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_16140_out),.add_7_16140_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_16140_out_ap_vld),.add_7_15139_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_15139_out),.add_7_15139_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_15139_out_ap_vld),.add_7_14138_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_14138_out),.add_7_14138_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_14138_out_ap_vld),.add_7_13137_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_13137_out),.add_7_13137_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_13137_out_ap_vld),.add_7_12136_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_12136_out),.add_7_12136_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_12136_out_ap_vld),.add_7_11135_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_11135_out),.add_7_11135_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_11135_out_ap_vld),.add_7_10134_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_10134_out),.add_7_10134_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_10134_out_ap_vld),.add_7_9133_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_9133_out),.add_7_9133_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_9133_out_ap_vld),.add_7_8132_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_8132_out),.add_7_8132_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_8132_out_ap_vld),.add_7_7131_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_7131_out),.add_7_7131_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_7131_out_ap_vld),.add_7_6130_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_6130_out),.add_7_6130_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_6130_out_ap_vld),.add_7_5129_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_5129_out),.add_7_5129_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_5129_out_ap_vld),.add_7_4128_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_4128_out),.add_7_4128_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_4128_out_ap_vld),.add_7_3127_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_3127_out),.add_7_3127_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_3127_out_ap_vld),.add_7_2126_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_2126_out),.add_7_2126_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_2126_out_ap_vld),.add_7_1125_out(grp_bicg_Pipeline_lp1_fu_1615_add_7_1125_out),.add_7_1125_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7_1125_out_ap_vld),.add_7124_out(grp_bicg_Pipeline_lp1_fu_1615_add_7124_out),.add_7124_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1615_add_7124_out_ap_vld),.grp_fu_3886_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_din0),.grp_fu_3886_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_din1),.grp_fu_3886_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_opcode),.grp_fu_3886_p_dout0(grp_fu_3886_p2),.grp_fu_3886_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_ce),.grp_fu_3890_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_din0),.grp_fu_3890_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_din1),.grp_fu_3890_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_opcode),.grp_fu_3890_p_dout0(grp_fu_3890_p2),.grp_fu_3890_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_ce),.grp_fu_3894_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_din0),.grp_fu_3894_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_din1),.grp_fu_3894_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_opcode),.grp_fu_3894_p_dout0(grp_fu_3894_p2),.grp_fu_3894_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_ce),.grp_fu_3898_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_din0),.grp_fu_3898_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_din1),.grp_fu_3898_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_opcode),.grp_fu_3898_p_dout0(grp_fu_3898_p2),.grp_fu_3898_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_ce),.grp_fu_3902_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_din0),.grp_fu_3902_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_din1),.grp_fu_3902_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_opcode),.grp_fu_3902_p_dout0(grp_fu_3902_p2),.grp_fu_3902_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_ce),.grp_fu_3906_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_din0),.grp_fu_3906_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_din1),.grp_fu_3906_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_opcode),.grp_fu_3906_p_dout0(grp_fu_3906_p2),.grp_fu_3906_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_ce),.grp_fu_3910_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_din0),.grp_fu_3910_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_din1),.grp_fu_3910_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_opcode),.grp_fu_3910_p_dout0(grp_fu_3910_p2),.grp_fu_3910_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_ce),.grp_fu_3914_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_din0),.grp_fu_3914_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_din1),.grp_fu_3914_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_opcode),.grp_fu_3914_p_dout0(grp_fu_3914_p2),.grp_fu_3914_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_ce),.grp_fu_3918_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_din0),.grp_fu_3918_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_din1),.grp_fu_3918_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_opcode),.grp_fu_3918_p_dout0(grp_fu_3918_p2),.grp_fu_3918_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_ce),.grp_fu_3922_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_din0),.grp_fu_3922_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_din1),.grp_fu_3922_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_opcode),.grp_fu_3922_p_dout0(grp_fu_3922_p2),.grp_fu_3922_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_ce),.grp_fu_3926_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_din0),.grp_fu_3926_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_din1),.grp_fu_3926_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_opcode),.grp_fu_3926_p_dout0(grp_fu_3926_p2),.grp_fu_3926_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_ce),.grp_fu_3930_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_din0),.grp_fu_3930_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_din1),.grp_fu_3930_p_opcode(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_opcode),.grp_fu_3930_p_dout0(grp_fu_3930_p2),.grp_fu_3930_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_ce),.grp_fu_3934_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_din0),.grp_fu_3934_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_din1),.grp_fu_3934_p_dout0(grp_fu_3934_p2),.grp_fu_3934_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_ce),.grp_fu_3938_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_din0),.grp_fu_3938_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_din1),.grp_fu_3938_p_dout0(grp_fu_3938_p2),.grp_fu_3938_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_ce),.grp_fu_3942_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_din0),.grp_fu_3942_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_din1),.grp_fu_3942_p_dout0(grp_fu_3942_p2),.grp_fu_3942_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_ce),.grp_fu_3946_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_din0),.grp_fu_3946_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_din1),.grp_fu_3946_p_dout0(grp_fu_3946_p2),.grp_fu_3946_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_ce),.grp_fu_3950_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_din0),.grp_fu_3950_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_din1),.grp_fu_3950_p_dout0(grp_fu_3950_p2),.grp_fu_3950_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_ce),.grp_fu_3954_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_din0),.grp_fu_3954_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_din1),.grp_fu_3954_p_dout0(grp_fu_3954_p2),.grp_fu_3954_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_ce),.grp_fu_3958_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_din0),.grp_fu_3958_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_din1),.grp_fu_3958_p_dout0(grp_fu_3958_p2),.grp_fu_3958_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_ce),.grp_fu_3962_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_din0),.grp_fu_3962_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_din1),.grp_fu_3962_p_dout0(grp_fu_3962_p2),.grp_fu_3962_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_ce),.grp_fu_3966_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_din0),.grp_fu_3966_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_din1),.grp_fu_3966_p_dout0(grp_fu_3966_p2),.grp_fu_3966_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_ce),.grp_fu_3970_p_din0(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_din0),.grp_fu_3970_p_din1(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_din1),.grp_fu_3970_p_dout0(grp_fu_3970_p2),.grp_fu_3970_p_ce(grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_ce));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_1757(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_1757_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_1757_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_1757_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_1757_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address9),.buff_A_ce9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address10),.buff_A_ce10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address11),.buff_A_ce11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address12),.buff_A_ce12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address13),.buff_A_ce13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address14),.buff_A_ce14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address15),.buff_A_ce15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_address16),.buff_A_ce16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce16),.buff_A_q16(buff_A_q16),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address9),.buff_A_1_ce9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address10),.buff_A_1_ce10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address11),.buff_A_1_ce11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address12),.buff_A_1_ce12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address13),.buff_A_1_ce13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address14),.buff_A_1_ce14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address15),.buff_A_1_ce15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_1_address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address16),.buff_A_1_ce16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce16),.buff_A_1_q16(buff_A_1_q16),.buff_A_2_address0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address3),.buff_A_2_ce3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address4),.buff_A_2_ce4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address5),.buff_A_2_ce5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address6),.buff_A_2_ce6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address7),.buff_A_2_ce7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address8),.buff_A_2_ce8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address9),.buff_A_2_ce9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address10),.buff_A_2_ce10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address11),.buff_A_2_ce11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address12),.buff_A_2_ce12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address13),.buff_A_2_ce13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address14),.buff_A_2_ce14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address15),.buff_A_2_ce15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_2_address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address16),.buff_A_2_ce16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce16),.buff_A_2_q16(buff_A_2_q16),.buff_A_3_address0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address3),.buff_A_3_ce3(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address4),.buff_A_3_ce4(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address5),.buff_A_3_ce5(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address6),.buff_A_3_ce6(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address7),.buff_A_3_ce7(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address8),.buff_A_3_ce8(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address9),.buff_A_3_ce9(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address10),.buff_A_3_ce10(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address11),.buff_A_3_ce11(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address12),.buff_A_3_ce12(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address13),.buff_A_3_ce13(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address14),.buff_A_3_ce14(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address15),.buff_A_3_ce15(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_A_3_address16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address16),.buff_A_3_ce16(grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce16),.buff_A_3_q16(buff_A_3_q16),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_d0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_ce1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_d0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_ce1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_3286),.buff_p_1_load(buff_p_1_load_reg_3296),.buff_p_load_1(buff_p_load_1_reg_3291),.buff_p_1_load_1(buff_p_1_load_1_reg_3301),.buff_p_load_2(buff_p_load_2_reg_3326),.buff_p_1_load_2(buff_p_1_load_2_reg_3336),.buff_p_load_3(buff_p_load_3_reg_3331),.buff_p_1_load_3(buff_p_1_load_3_reg_3341),.buff_p_load_4(buff_p_load_4_reg_3366),.buff_p_1_load_4(buff_p_1_load_4_reg_3376),.buff_p_load_5(buff_p_load_5_reg_3371),.buff_p_1_load_5(buff_p_1_load_5_reg_3381),.buff_p_load_6(buff_p_load_6_reg_3406),.buff_p_1_load_6(buff_p_1_load_6_reg_3416),.buff_p_load_7(buff_p_load_7_reg_3411),.buff_p_1_load_7(buff_p_1_load_7_reg_3421),.buff_p_load_8(buff_p_load_8_reg_3446),.buff_p_1_load_8(buff_p_1_load_8_reg_3456),.buff_p_load_9(buff_p_load_9_reg_3451),.buff_p_1_load_9(buff_p_1_load_9_reg_3461),.buff_p_load_10(buff_p_load_10_reg_3486),.buff_p_1_load_10(buff_p_1_load_10_reg_3496),.buff_p_load_11(buff_p_load_11_reg_3491),.buff_p_1_load_11(buff_p_1_load_11_reg_3501),.buff_p_load_12(buff_p_load_12_reg_3526),.buff_p_1_load_12(buff_p_1_load_12_reg_3536),.buff_p_load_13(buff_p_load_13_reg_3531),.buff_p_1_load_13(buff_p_1_load_13_reg_3541),.buff_p_load_14(buff_p_load_14_reg_3566),.buff_p_1_load_14(buff_p_1_load_14_reg_3576),.buff_p_load_15(buff_p_load_15_reg_3571),.buff_p_1_load_15(buff_p_1_load_15_reg_3581),.buff_p_load_16(buff_p_load_16_reg_3606),.buff_p_1_load_16(buff_p_1_load_16_reg_3616),.buff_p_load_17(buff_p_load_17_reg_3611),.buff_p_1_load_17(buff_p_1_load_17_reg_3621),.buff_p_load_18(buff_p_load_18_reg_3646),.buff_p_1_load_18(buff_p_1_load_18_reg_3656),.buff_p_load_19(buff_p_load_19_reg_3651),.buff_p_1_load_19(buff_p_1_load_19_reg_3661),.buff_p_load_20(buff_p_load_20_reg_3686),.buff_p_1_load_20(buff_p_1_load_20_reg_3696),.buff_p_load_21(buff_p_load_21_reg_3691),.buff_p_1_load_21(buff_p_1_load_21_reg_3701),.buff_p_load_22(buff_p_load_22_reg_3726),.buff_p_1_load_22(buff_p_1_load_22_reg_3736),.buff_p_load_23(buff_p_load_23_reg_3731),.buff_p_1_load_23(buff_p_1_load_23_reg_3741),.buff_p_load_24(buff_p_load_24_reg_3766),.buff_p_1_load_24(buff_p_1_load_24_reg_3776),.buff_p_load_25(buff_p_load_25_reg_3771),.buff_p_1_load_25(buff_p_1_load_25_reg_3781),.buff_p_load_26(buff_p_load_26_reg_3806),.buff_p_1_load_26(buff_p_1_load_26_reg_3816),.buff_p_load_27(buff_p_load_27_reg_3811),.buff_p_1_load_27(buff_p_1_load_27_reg_3821),.buff_p_load_28(buff_p_load_28_reg_3846),.buff_p_1_load_28(buff_p_1_load_28_reg_3856),.buff_p_load_29(buff_p_load_29_reg_3851),.buff_p_1_load_29(buff_p_1_load_29_reg_3861),.buff_p_load_30(buff_p_load_30_reg_3866),.buff_p_1_load_30(buff_p_1_load_30_reg_3876),.buff_p_load_31(buff_p_load_31_reg_3871),.buff_p_1_load_31(buff_p_1_load_31_reg_3881),.grp_fu_3886_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_din0),.grp_fu_3886_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_din1),.grp_fu_3886_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_opcode),.grp_fu_3886_p_dout0(grp_fu_3886_p2),.grp_fu_3886_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_ce),.grp_fu_3890_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_din0),.grp_fu_3890_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_din1),.grp_fu_3890_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_opcode),.grp_fu_3890_p_dout0(grp_fu_3890_p2),.grp_fu_3890_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_ce),.grp_fu_3894_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_din0),.grp_fu_3894_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_din1),.grp_fu_3894_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_opcode),.grp_fu_3894_p_dout0(grp_fu_3894_p2),.grp_fu_3894_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_ce),.grp_fu_3898_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_din0),.grp_fu_3898_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_din1),.grp_fu_3898_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_opcode),.grp_fu_3898_p_dout0(grp_fu_3898_p2),.grp_fu_3898_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_ce),.grp_fu_3902_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_din0),.grp_fu_3902_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_din1),.grp_fu_3902_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_opcode),.grp_fu_3902_p_dout0(grp_fu_3902_p2),.grp_fu_3902_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_ce),.grp_fu_3906_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_din0),.grp_fu_3906_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_din1),.grp_fu_3906_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_opcode),.grp_fu_3906_p_dout0(grp_fu_3906_p2),.grp_fu_3906_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_ce),.grp_fu_3910_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_din0),.grp_fu_3910_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_din1),.grp_fu_3910_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_opcode),.grp_fu_3910_p_dout0(grp_fu_3910_p2),.grp_fu_3910_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_ce),.grp_fu_3914_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_din0),.grp_fu_3914_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_din1),.grp_fu_3914_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_opcode),.grp_fu_3914_p_dout0(grp_fu_3914_p2),.grp_fu_3914_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_ce),.grp_fu_3918_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_din0),.grp_fu_3918_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_din1),.grp_fu_3918_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_opcode),.grp_fu_3918_p_dout0(grp_fu_3918_p2),.grp_fu_3918_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_ce),.grp_fu_3922_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_din0),.grp_fu_3922_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_din1),.grp_fu_3922_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_opcode),.grp_fu_3922_p_dout0(grp_fu_3922_p2),.grp_fu_3922_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_ce),.grp_fu_3926_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_din0),.grp_fu_3926_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_din1),.grp_fu_3926_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_opcode),.grp_fu_3926_p_dout0(grp_fu_3926_p2),.grp_fu_3926_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_ce),.grp_fu_3930_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_din0),.grp_fu_3930_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_din1),.grp_fu_3930_p_opcode(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_opcode),.grp_fu_3930_p_dout0(grp_fu_3930_p2),.grp_fu_3930_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_ce),.grp_fu_3934_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_din0),.grp_fu_3934_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_din1),.grp_fu_3934_p_dout0(grp_fu_3934_p2),.grp_fu_3934_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_ce),.grp_fu_3938_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_din0),.grp_fu_3938_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_din1),.grp_fu_3938_p_dout0(grp_fu_3938_p2),.grp_fu_3938_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_ce),.grp_fu_3942_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_din0),.grp_fu_3942_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_din1),.grp_fu_3942_p_dout0(grp_fu_3942_p2),.grp_fu_3942_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_ce),.grp_fu_3946_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_din0),.grp_fu_3946_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_din1),.grp_fu_3946_p_dout0(grp_fu_3946_p2),.grp_fu_3946_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_ce),.grp_fu_3950_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_din0),.grp_fu_3950_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_din1),.grp_fu_3950_p_dout0(grp_fu_3950_p2),.grp_fu_3950_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_ce),.grp_fu_3954_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_din0),.grp_fu_3954_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_din1),.grp_fu_3954_p_dout0(grp_fu_3954_p2),.grp_fu_3954_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_ce),.grp_fu_3958_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_din0),.grp_fu_3958_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_din1),.grp_fu_3958_p_dout0(grp_fu_3958_p2),.grp_fu_3958_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_ce),.grp_fu_3962_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_din0),.grp_fu_3962_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_din1),.grp_fu_3962_p_dout0(grp_fu_3962_p2),.grp_fu_3962_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_ce),.grp_fu_3966_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_din0),.grp_fu_3966_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_din1),.grp_fu_3966_p_dout0(grp_fu_3966_p2),.grp_fu_3966_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_ce),.grp_fu_3970_p_din0(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_din0),.grp_fu_3970_p_din1(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_din1),.grp_fu_3970_p_dout0(grp_fu_3970_p2),.grp_fu_3970_p_ce(grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1835(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1835_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1835_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1835_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1835_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1835_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1835_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1835_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1835_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U370(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3886_p0),.din1(grp_fu_3886_p1),.ce(grp_fu_3886_ce),.dout(grp_fu_3886_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3890_p0),.din1(grp_fu_3890_p1),.ce(grp_fu_3890_ce),.dout(grp_fu_3890_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3894_p0),.din1(grp_fu_3894_p1),.ce(grp_fu_3894_ce),.dout(grp_fu_3894_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U373(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3898_p0),.din1(grp_fu_3898_p1),.ce(grp_fu_3898_ce),.dout(grp_fu_3898_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U374(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3902_p0),.din1(grp_fu_3902_p1),.ce(grp_fu_3902_ce),.dout(grp_fu_3902_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U375(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3906_p0),.din1(grp_fu_3906_p1),.ce(grp_fu_3906_ce),.dout(grp_fu_3906_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3910_p0),.din1(grp_fu_3910_p1),.ce(grp_fu_3910_ce),.dout(grp_fu_3910_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3914_p0),.din1(grp_fu_3914_p1),.ce(grp_fu_3914_ce),.dout(grp_fu_3914_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3918_p0),.din1(grp_fu_3918_p1),.ce(grp_fu_3918_ce),.dout(grp_fu_3918_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3922_p0),.din1(grp_fu_3922_p1),.ce(grp_fu_3922_ce),.dout(grp_fu_3922_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3926_p0),.din1(grp_fu_3926_p1),.ce(grp_fu_3926_ce),.dout(grp_fu_3926_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3930_p0),.din1(grp_fu_3930_p1),.ce(grp_fu_3930_ce),.dout(grp_fu_3930_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3934_p0),.din1(grp_fu_3934_p1),.ce(grp_fu_3934_ce),.dout(grp_fu_3934_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3938_p0),.din1(grp_fu_3938_p1),.ce(grp_fu_3938_ce),.dout(grp_fu_3938_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U384(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3942_p0),.din1(grp_fu_3942_p1),.ce(grp_fu_3942_ce),.dout(grp_fu_3942_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U385(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3946_p0),.din1(grp_fu_3946_p1),.ce(grp_fu_3946_ce),.dout(grp_fu_3946_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U386(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3950_p0),.din1(grp_fu_3950_p1),.ce(grp_fu_3950_ce),.dout(grp_fu_3950_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U387(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3954_p0),.din1(grp_fu_3954_p1),.ce(grp_fu_3954_ce),.dout(grp_fu_3954_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U388(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3958_p0),.din1(grp_fu_3958_p1),.ce(grp_fu_3958_ce),.dout(grp_fu_3958_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U389(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3962_p0),.din1(grp_fu_3962_p1),.ce(grp_fu_3962_ce),.dout(grp_fu_3962_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U390(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3966_p0),.din1(grp_fu_3966_p1),.ce(grp_fu_3966_ce),.dout(grp_fu_3966_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U391(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3970_p0),.din1(grp_fu_3970_p1),.ce(grp_fu_3970_ce),.dout(grp_fu_3970_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1615_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_bicg_Pipeline_lp1_fu_1615_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1615_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1615_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_1757_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_bicg_Pipeline_lp3_fu_1757_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_1757_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_1757_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1600_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_1600_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1600_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1600_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1835_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_bicg_Pipeline_lpwr_fu_1835_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1835_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1835_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_126 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_126 <= add_ln13_reg_2572;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2572 <= add_ln13_fu_1861_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_p_1_load_10_reg_3496 <= buff_p_1_q0;
        buff_p_1_load_11_reg_3501 <= buff_p_1_q1;
        buff_p_load_10_reg_3486 <= buff_p_q0;
        buff_p_load_11_reg_3491 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_p_1_load_12_reg_3536 <= buff_p_1_q0;
        buff_p_1_load_13_reg_3541 <= buff_p_1_q1;
        buff_p_load_12_reg_3526 <= buff_p_q0;
        buff_p_load_13_reg_3531 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_p_1_load_14_reg_3576 <= buff_p_1_q0;
        buff_p_1_load_15_reg_3581 <= buff_p_1_q1;
        buff_p_load_14_reg_3566 <= buff_p_q0;
        buff_p_load_15_reg_3571 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_p_1_load_16_reg_3616 <= buff_p_1_q0;
        buff_p_1_load_17_reg_3621 <= buff_p_1_q1;
        buff_p_load_16_reg_3606 <= buff_p_q0;
        buff_p_load_17_reg_3611 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_p_1_load_18_reg_3656 <= buff_p_1_q0;
        buff_p_1_load_19_reg_3661 <= buff_p_1_q1;
        buff_p_load_18_reg_3646 <= buff_p_q0;
        buff_p_load_19_reg_3651 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_load_1_reg_3301 <= buff_p_1_q0;
        buff_p_1_load_reg_3296 <= buff_p_1_q1;
        buff_p_load_1_reg_3291 <= buff_p_q0;
        buff_p_load_reg_3286 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_p_1_load_20_reg_3696 <= buff_p_1_q0;
        buff_p_1_load_21_reg_3701 <= buff_p_1_q1;
        buff_p_load_20_reg_3686 <= buff_p_q0;
        buff_p_load_21_reg_3691 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_p_1_load_22_reg_3736 <= buff_p_1_q0;
        buff_p_1_load_23_reg_3741 <= buff_p_1_q1;
        buff_p_load_22_reg_3726 <= buff_p_q0;
        buff_p_load_23_reg_3731 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_p_1_load_24_reg_3776 <= buff_p_1_q0;
        buff_p_1_load_25_reg_3781 <= buff_p_1_q1;
        buff_p_load_24_reg_3766 <= buff_p_q0;
        buff_p_load_25_reg_3771 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_p_1_load_26_reg_3816 <= buff_p_1_q0;
        buff_p_1_load_27_reg_3821 <= buff_p_1_q1;
        buff_p_load_26_reg_3806 <= buff_p_q0;
        buff_p_load_27_reg_3811 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_p_1_load_28_reg_3856 <= buff_p_1_q0;
        buff_p_1_load_29_reg_3861 <= buff_p_1_q1;
        buff_p_load_28_reg_3846 <= buff_p_q0;
        buff_p_load_29_reg_3851 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_p_1_load_2_reg_3336 <= buff_p_1_q0;
        buff_p_1_load_3_reg_3341 <= buff_p_1_q1;
        buff_p_load_2_reg_3326 <= buff_p_q0;
        buff_p_load_3_reg_3331 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_p_1_load_30_reg_3876 <= buff_p_1_q0;
        buff_p_1_load_31_reg_3881 <= buff_p_1_q1;
        buff_p_load_30_reg_3866 <= buff_p_q0;
        buff_p_load_31_reg_3871 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_p_1_load_4_reg_3376 <= buff_p_1_q0;
        buff_p_1_load_5_reg_3381 <= buff_p_1_q1;
        buff_p_load_4_reg_3366 <= buff_p_q0;
        buff_p_load_5_reg_3371 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_p_1_load_6_reg_3416 <= buff_p_1_q0;
        buff_p_1_load_7_reg_3421 <= buff_p_1_q1;
        buff_p_load_6_reg_3406 <= buff_p_q0;
        buff_p_load_7_reg_3411 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_p_1_load_8_reg_3456 <= buff_p_1_q0;
        buff_p_1_load_9_reg_3461 <= buff_p_1_q1;
        buff_p_load_8_reg_3446 <= buff_p_q0;
        buff_p_load_9_reg_3451 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_load_10_reg_2851 <= buff_s_out_1_q0;
        buff_s_out_1_load_11_reg_2861 <= buff_s_out_1_q1;
        buff_s_out_load_10_reg_2846 <= buff_s_out_q0;
        buff_s_out_load_11_reg_2856 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_load_12_reg_2891 <= buff_s_out_1_q0;
        buff_s_out_1_load_13_reg_2901 <= buff_s_out_1_q1;
        buff_s_out_load_12_reg_2886 <= buff_s_out_q0;
        buff_s_out_load_13_reg_2896 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_load_14_reg_2931 <= buff_s_out_1_q0;
        buff_s_out_1_load_15_reg_2941 <= buff_s_out_1_q1;
        buff_s_out_load_14_reg_2926 <= buff_s_out_q0;
        buff_s_out_load_15_reg_2936 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_load_16_reg_2971 <= buff_s_out_1_q0;
        buff_s_out_1_load_17_reg_2981 <= buff_s_out_1_q1;
        buff_s_out_load_16_reg_2966 <= buff_s_out_q0;
        buff_s_out_load_17_reg_2976 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_load_18_reg_3011 <= buff_s_out_1_q0;
        buff_s_out_1_load_19_reg_3021 <= buff_s_out_1_q1;
        buff_s_out_load_18_reg_3006 <= buff_s_out_q0;
        buff_s_out_load_19_reg_3016 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_load_1_reg_2661 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2651 <= buff_s_out_1_q1;
        buff_s_out_load_1_reg_2656 <= buff_s_out_q0;
        buff_s_out_load_reg_2646 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_load_20_reg_3051 <= buff_s_out_1_q0;
        buff_s_out_1_load_21_reg_3061 <= buff_s_out_1_q1;
        buff_s_out_load_20_reg_3046 <= buff_s_out_q0;
        buff_s_out_load_21_reg_3056 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_load_22_reg_3091 <= buff_s_out_1_q0;
        buff_s_out_1_load_23_reg_3101 <= buff_s_out_1_q1;
        buff_s_out_load_22_reg_3086 <= buff_s_out_q0;
        buff_s_out_load_23_reg_3096 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_load_24_reg_3131 <= buff_s_out_1_q0;
        buff_s_out_1_load_25_reg_3141 <= buff_s_out_1_q1;
        buff_s_out_load_24_reg_3126 <= buff_s_out_q0;
        buff_s_out_load_25_reg_3136 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_load_26_reg_3171 <= buff_s_out_1_q0;
        buff_s_out_1_load_27_reg_3181 <= buff_s_out_1_q1;
        buff_s_out_load_26_reg_3166 <= buff_s_out_q0;
        buff_s_out_load_27_reg_3176 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_load_28_reg_3211 <= buff_s_out_1_q0;
        buff_s_out_1_load_29_reg_3221 <= buff_s_out_1_q1;
        buff_s_out_load_28_reg_3206 <= buff_s_out_q0;
        buff_s_out_load_29_reg_3216 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_2_reg_2691 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2701 <= buff_s_out_1_q1;
        buff_s_out_load_2_reg_2686 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2696 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_load_30_reg_3231 <= buff_s_out_1_q0;
        buff_s_out_1_load_31_reg_3241 <= buff_s_out_1_q1;
        buff_s_out_load_30_reg_3226 <= buff_s_out_q0;
        buff_s_out_load_31_reg_3236 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_4_reg_2731 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_2741 <= buff_s_out_1_q1;
        buff_s_out_load_4_reg_2726 <= buff_s_out_q0;
        buff_s_out_load_5_reg_2736 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_6_reg_2771 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_2781 <= buff_s_out_1_q1;
        buff_s_out_load_6_reg_2766 <= buff_s_out_q0;
        buff_s_out_load_7_reg_2776 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_8_reg_2811 <= buff_s_out_1_q0;
        buff_s_out_1_load_9_reg_2821 <= buff_s_out_1_q1;
        buff_s_out_load_8_reg_2806 <= buff_s_out_q0;
        buff_s_out_load_9_reg_2816 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln5_reg_2621 <= {{i_fu_126[5:1]}};
        trunc_ln13_1_reg_2616 <= trunc_ln13_1_fu_1877_p1;
        trunc_ln13_reg_2611 <= trunc_ln13_fu_1873_p1;
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
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1615_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
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
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1835_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1600_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) & (grp_bicg_Pipeline_lpwr_fu_1835_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state39) & (grp_bicg_Pipeline_lpwr_fu_1835_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_address2;
    end else begin
        buff_A_1_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce10 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce11 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce12 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce13 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce14 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce15 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce16 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce16;
    end else begin
        buff_A_1_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce9 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_address2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_address2;
    end else begin
        buff_A_2_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce10 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce11 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce12 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce13 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce14 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce15 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce16 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce16;
    end else begin
        buff_A_2_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce3 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce4 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce5 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce6 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce7 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce8 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce9 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_address2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_address2;
    end else begin
        buff_A_3_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce10 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce11 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce12 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce13 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce14 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce15 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce16 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce16;
    end else begin
        buff_A_3_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce3 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce4 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce5 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce6 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce7 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce8 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce9 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_address2;
    end else begin
        buff_A_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce10 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce11 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce12 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce13 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce14 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce15 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce16 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce16;
    end else begin
        buff_A_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp1_fu_1615_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce9 = grp_bicg_Pipeline_lp3_fu_1757_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1600_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_p_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_p_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_p_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_p_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_p_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_p_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_p_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_p_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_p_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_p_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_p_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_p_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_p_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_p_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_p_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_address0_local = zext_ln5_fu_1891_p1;
    end else begin
        buff_p_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_p_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_p_1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_p_1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_p_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_p_1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_p_1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_p_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_p_1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_p_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_p_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_p_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_p_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_p_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_p_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_p_1_address1_local = 64'd0;
    end else begin
        buff_p_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp1_fu_1615_ap_done == 1'b1)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp1_fu_1615_ap_done == 1'b1)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_p_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_p_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_p_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_p_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_p_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_p_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_p_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_p_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_p_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_p_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_p_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_p_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_p_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_p_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_p_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_address0_local = zext_ln5_fu_1891_p1;
    end else begin
        buff_p_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_p_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_p_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_p_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_p_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_p_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_p_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_p_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_p_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_p_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_p_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_p_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_p_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_p_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_p_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_p_address1_local = 64'd0;
    end else begin
        buff_p_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp1_fu_1615_ap_done == 1'b1)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp1_fu_1615_ap_done == 1'b1)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1891_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1891_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_1757_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1891_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_ce1 = grp_bicg_Pipeline_lp1_fu_1615_buff_r_1_ce1;
    end else begin
        buff_r_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1615_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1891_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1615_buff_r_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_ce1 = grp_bicg_Pipeline_lp1_fu_1615_buff_r_ce1;
    end else begin
        buff_r_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_30_reg_3191;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_28_reg_3151;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_26_reg_3111;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_24_reg_3071;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_22_reg_3031;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_20_reg_2991;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_18_reg_2951;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_16_reg_2911;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_14_reg_2871;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_12_reg_2831;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_10_reg_2791;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_8_reg_2751;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_2711;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2671;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2631;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_address0_local = zext_ln5_fu_1891_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_31_reg_3201;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_29_reg_3161;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_27_reg_3121;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_25_reg_3081;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_23_reg_3041;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_21_reg_3001;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_19_reg_2961;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_17_reg_2921;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_15_reg_2881;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_13_reg_2841;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_11_reg_2801;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_9_reg_2761;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_2721;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2681;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2641;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address1_local = 64'd0;
    end else begin
        buff_s_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done ==1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_61185_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_57181_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_53177_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_49173_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_45169_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_41165_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_37161_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_33157_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_29153_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_25149_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_21145_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_17141_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_13137_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_9133_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_5129_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_1125_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_63187_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_59183_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_55179_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_51175_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_47171_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_43167_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_39163_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_35159_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_31155_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_27151_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_23147_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_19143_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_15139_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_11135_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_7131_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_3127_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address0_local = buff_s_out_addr_30_reg_3186;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_address0_local = buff_s_out_addr_28_reg_3146;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_address0_local = buff_s_out_addr_26_reg_3106;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address0_local = buff_s_out_addr_24_reg_3066;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address0_local = buff_s_out_addr_22_reg_3026;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address0_local = buff_s_out_addr_20_reg_2986;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address0_local = buff_s_out_addr_18_reg_2946;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address0_local = buff_s_out_addr_16_reg_2906;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address0_local = buff_s_out_addr_14_reg_2866;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address0_local = buff_s_out_addr_12_reg_2826;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address0_local = buff_s_out_addr_10_reg_2786;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address0_local = buff_s_out_addr_8_reg_2746;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_2706;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2666;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2626;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_address0_local = zext_ln5_fu_1891_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address1_local = buff_s_out_addr_31_reg_3196;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_address1_local = buff_s_out_addr_29_reg_3156;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_address1_local = buff_s_out_addr_27_reg_3116;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address1_local = buff_s_out_addr_25_reg_3076;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address1_local = buff_s_out_addr_23_reg_3036;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address1_local = buff_s_out_addr_21_reg_2996;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address1_local = buff_s_out_addr_19_reg_2956;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address1_local = buff_s_out_addr_17_reg_2916;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address1_local = buff_s_out_addr_15_reg_2876;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address1_local = buff_s_out_addr_13_reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address1_local = buff_s_out_addr_11_reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address1_local = buff_s_out_addr_9_reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2636;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address1_local = 64'd0;
    end else begin
        buff_s_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1835_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done ==1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_60184_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_56180_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_52176_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_48172_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_44168_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_40164_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_36160_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_32156_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_28152_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_24148_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_20144_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_16140_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_12136_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_8132_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_4128_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1615_add_7124_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_62186_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_58182_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_54178_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_50174_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_46170_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_42166_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_38162_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_34158_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_30154_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_26150_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_22146_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_18142_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_14138_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_10134_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_6130_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1615_add_7_2126_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1877_p1 == 1'd0)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3886_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3886_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_ce;
    end else begin
        grp_fu_3886_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3886_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3886_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_din0;
    end else begin
        grp_fu_3886_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3886_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3886_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3886_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3886_p_din1;
    end else begin
        grp_fu_3886_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3890_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3890_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_ce;
    end else begin
        grp_fu_3890_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3890_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3890_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_din0;
    end else begin
        grp_fu_3890_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3890_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3890_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3890_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3890_p_din1;
    end else begin
        grp_fu_3890_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3894_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3894_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_ce;
    end else begin
        grp_fu_3894_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3894_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3894_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_din0;
    end else begin
        grp_fu_3894_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3894_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3894_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3894_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3894_p_din1;
    end else begin
        grp_fu_3894_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3898_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3898_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_ce;
    end else begin
        grp_fu_3898_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3898_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3898_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_din0;
    end else begin
        grp_fu_3898_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3898_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3898_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3898_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3898_p_din1;
    end else begin
        grp_fu_3898_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3902_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3902_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_ce;
    end else begin
        grp_fu_3902_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3902_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3902_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_din0;
    end else begin
        grp_fu_3902_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3902_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3902_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3902_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3902_p_din1;
    end else begin
        grp_fu_3902_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3906_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3906_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_ce;
    end else begin
        grp_fu_3906_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3906_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3906_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_din0;
    end else begin
        grp_fu_3906_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3906_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3906_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3906_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3906_p_din1;
    end else begin
        grp_fu_3906_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3910_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3910_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_ce;
    end else begin
        grp_fu_3910_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3910_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3910_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_din0;
    end else begin
        grp_fu_3910_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3910_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3910_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3910_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3910_p_din1;
    end else begin
        grp_fu_3910_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3914_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3914_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_ce;
    end else begin
        grp_fu_3914_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3914_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3914_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_din0;
    end else begin
        grp_fu_3914_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3914_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3914_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3914_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3914_p_din1;
    end else begin
        grp_fu_3914_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3918_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3918_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_ce;
    end else begin
        grp_fu_3918_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3918_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3918_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_din0;
    end else begin
        grp_fu_3918_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3918_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3918_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3918_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3918_p_din1;
    end else begin
        grp_fu_3918_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3922_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3922_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_ce;
    end else begin
        grp_fu_3922_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3922_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3922_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_din0;
    end else begin
        grp_fu_3922_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3922_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3922_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3922_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3922_p_din1;
    end else begin
        grp_fu_3922_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3926_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3926_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_ce;
    end else begin
        grp_fu_3926_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3926_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3926_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_din0;
    end else begin
        grp_fu_3926_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3926_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3926_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3926_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3926_p_din1;
    end else begin
        grp_fu_3926_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3930_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3930_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_ce;
    end else begin
        grp_fu_3930_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3930_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3930_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_din0;
    end else begin
        grp_fu_3930_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3930_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3930_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3930_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3930_p_din1;
    end else begin
        grp_fu_3930_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3934_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3934_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_ce;
    end else begin
        grp_fu_3934_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3934_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3934_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_din0;
    end else begin
        grp_fu_3934_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3934_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3934_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3934_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3934_p_din1;
    end else begin
        grp_fu_3934_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3938_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3938_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_ce;
    end else begin
        grp_fu_3938_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3938_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3938_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_din0;
    end else begin
        grp_fu_3938_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3938_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3938_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3938_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3938_p_din1;
    end else begin
        grp_fu_3938_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3942_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3942_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_ce;
    end else begin
        grp_fu_3942_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3942_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3942_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_din0;
    end else begin
        grp_fu_3942_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3942_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3942_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3942_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3942_p_din1;
    end else begin
        grp_fu_3942_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3946_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3946_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_ce;
    end else begin
        grp_fu_3946_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3946_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3946_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_din0;
    end else begin
        grp_fu_3946_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3946_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3946_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3946_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3946_p_din1;
    end else begin
        grp_fu_3946_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3950_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3950_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_ce;
    end else begin
        grp_fu_3950_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3950_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3950_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_din0;
    end else begin
        grp_fu_3950_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3950_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3950_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3950_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3950_p_din1;
    end else begin
        grp_fu_3950_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3954_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3954_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_ce;
    end else begin
        grp_fu_3954_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3954_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3954_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_din0;
    end else begin
        grp_fu_3954_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3954_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3954_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3954_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3954_p_din1;
    end else begin
        grp_fu_3954_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3958_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3958_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_ce;
    end else begin
        grp_fu_3958_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3958_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3958_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_din0;
    end else begin
        grp_fu_3958_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3958_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3958_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3958_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3958_p_din1;
    end else begin
        grp_fu_3958_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3962_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3962_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_ce;
    end else begin
        grp_fu_3962_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3962_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3962_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_din0;
    end else begin
        grp_fu_3962_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3962_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3962_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3962_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3962_p_din1;
    end else begin
        grp_fu_3962_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3966_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3966_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_ce;
    end else begin
        grp_fu_3966_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3966_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3966_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_din0;
    end else begin
        grp_fu_3966_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3966_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3966_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3966_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3966_p_din1;
    end else begin
        grp_fu_3966_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3970_ce = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3970_ce = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_ce;
    end else begin
        grp_fu_3970_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3970_p0 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3970_p0 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_din0;
    end else begin
        grp_fu_3970_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3970_p1 = grp_bicg_Pipeline_lp3_fu_1757_grp_fu_3970_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3970_p1 = grp_bicg_Pipeline_lp1_fu_1615_grp_fu_3970_p_din1;
    end else begin
        grp_fu_3970_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1835_q_out_write;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1835_s_out_write;
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
            if (((icmp_ln13_fu_1855_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_bicg_Pipeline_lprd_2_fu_1600_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
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
            if (((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp1_fu_1615_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
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
            if (((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1757_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((1'b1 == ap_CS_fsm_state39) & (grp_bicg_Pipeline_lpwr_fu_1835_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1600_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1600_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1600_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1600_A_1_ce0;
assign add_ln13_fu_1861_p2 = (i_fu_126 + 7'd1);
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_1903_p1 = p_q0;
assign bitcast_ln15_fu_1909_p1 = r_q0;
assign buff_s_out_1_addr_10_reg_2791 = 64'd10;
assign buff_s_out_1_addr_11_reg_2801 = 64'd11;
assign buff_s_out_1_addr_12_reg_2831 = 64'd12;
assign buff_s_out_1_addr_13_reg_2841 = 64'd13;
assign buff_s_out_1_addr_14_reg_2871 = 64'd14;
assign buff_s_out_1_addr_15_reg_2881 = 64'd15;
assign buff_s_out_1_addr_16_reg_2911 = 64'd16;
assign buff_s_out_1_addr_17_reg_2921 = 64'd17;
assign buff_s_out_1_addr_18_reg_2951 = 64'd18;
assign buff_s_out_1_addr_19_reg_2961 = 64'd19;
assign buff_s_out_1_addr_20_reg_2991 = 64'd20;
assign buff_s_out_1_addr_21_reg_3001 = 64'd21;
assign buff_s_out_1_addr_22_reg_3031 = 64'd22;
assign buff_s_out_1_addr_23_reg_3041 = 64'd23;
assign buff_s_out_1_addr_24_reg_3071 = 64'd24;
assign buff_s_out_1_addr_25_reg_3081 = 64'd25;
assign buff_s_out_1_addr_26_reg_3111 = 64'd26;
assign buff_s_out_1_addr_27_reg_3121 = 64'd27;
assign buff_s_out_1_addr_28_reg_3151 = 64'd28;
assign buff_s_out_1_addr_29_reg_3161 = 64'd29;
assign buff_s_out_1_addr_2_reg_2631 = 64'd2;
assign buff_s_out_1_addr_30_reg_3191 = 64'd30;
assign buff_s_out_1_addr_31_reg_3201 = 64'd31;
assign buff_s_out_1_addr_3_reg_2641 = 64'd3;
assign buff_s_out_1_addr_4_reg_2671 = 64'd4;
assign buff_s_out_1_addr_5_reg_2681 = 64'd5;
assign buff_s_out_1_addr_6_reg_2711 = 64'd6;
assign buff_s_out_1_addr_7_reg_2721 = 64'd7;
assign buff_s_out_1_addr_8_reg_2751 = 64'd8;
assign buff_s_out_1_addr_9_reg_2761 = 64'd9;
assign buff_s_out_addr_10_reg_2786 = 64'd10;
assign buff_s_out_addr_11_reg_2796 = 64'd11;
assign buff_s_out_addr_12_reg_2826 = 64'd12;
assign buff_s_out_addr_13_reg_2836 = 64'd13;
assign buff_s_out_addr_14_reg_2866 = 64'd14;
assign buff_s_out_addr_15_reg_2876 = 64'd15;
assign buff_s_out_addr_16_reg_2906 = 64'd16;
assign buff_s_out_addr_17_reg_2916 = 64'd17;
assign buff_s_out_addr_18_reg_2946 = 64'd18;
assign buff_s_out_addr_19_reg_2956 = 64'd19;
assign buff_s_out_addr_20_reg_2986 = 64'd20;
assign buff_s_out_addr_21_reg_2996 = 64'd21;
assign buff_s_out_addr_22_reg_3026 = 64'd22;
assign buff_s_out_addr_23_reg_3036 = 64'd23;
assign buff_s_out_addr_24_reg_3066 = 64'd24;
assign buff_s_out_addr_25_reg_3076 = 64'd25;
assign buff_s_out_addr_26_reg_3106 = 64'd26;
assign buff_s_out_addr_27_reg_3116 = 64'd27;
assign buff_s_out_addr_28_reg_3146 = 64'd28;
assign buff_s_out_addr_29_reg_3156 = 64'd29;
assign buff_s_out_addr_2_reg_2626 = 64'd2;
assign buff_s_out_addr_30_reg_3186 = 64'd30;
assign buff_s_out_addr_31_reg_3196 = 64'd31;
assign buff_s_out_addr_3_reg_2636 = 64'd3;
assign buff_s_out_addr_4_reg_2666 = 64'd4;
assign buff_s_out_addr_5_reg_2676 = 64'd5;
assign buff_s_out_addr_6_reg_2706 = 64'd6;
assign buff_s_out_addr_7_reg_2716 = 64'd7;
assign buff_s_out_addr_8_reg_2746 = 64'd8;
assign buff_s_out_addr_9_reg_2756 = 64'd9;
assign grp_bicg_Pipeline_lp1_fu_1615_ap_start = grp_bicg_Pipeline_lp1_fu_1615_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_1757_ap_start = grp_bicg_Pipeline_lp3_fu_1757_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1600_ap_start = grp_bicg_Pipeline_lprd_2_fu_1600_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1835_ap_start = grp_bicg_Pipeline_lpwr_fu_1835_ap_start_reg;
assign icmp_ln13_fu_1855_p2 = ((i_fu_126 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1881_p4 = {{i_fu_126[5:1]}};
assign p_address0 = zext_ln13_fu_1867_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1835_q_out_din;
assign r_address0 = zext_ln13_fu_1867_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1835_s_out_din;
assign trunc_ln13_1_fu_1877_p1 = i_fu_126[0:0];
assign trunc_ln13_fu_1873_p1 = i_fu_126[5:0];
assign zext_ln13_fu_1867_p1 = i_fu_126;
assign zext_ln5_fu_1891_p1 = lshr_ln5_fu_1881_p4;
endmodule 