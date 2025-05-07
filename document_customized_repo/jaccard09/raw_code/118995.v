module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [9:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [9:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [9:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
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
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_2007_p2;
reg   [6:0] add_ln13_reg_2728;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_2019_p1;
reg   [5:0] trunc_ln13_reg_2791;
wire    ap_CS_fsm_state3;
wire   [3:0] buff_s_out_addr_2_reg_2799;
wire    ap_CS_fsm_state5;
wire   [3:0] buff_s_out_1_addr_2_reg_2804;
wire   [3:0] buff_s_out_2_addr_2_reg_2809;
wire   [3:0] buff_s_out_3_addr_2_reg_2814;
wire   [3:0] buff_s_out_addr_3_reg_2819;
wire   [3:0] buff_s_out_1_addr_3_reg_2824;
wire   [3:0] buff_s_out_2_addr_3_reg_2829;
wire   [3:0] buff_s_out_3_addr_3_reg_2834;
reg   [31:0] buff_s_out_load_reg_2839;
reg   [31:0] buff_s_out_1_load_reg_2844;
reg   [31:0] buff_s_out_2_load_reg_2849;
reg   [31:0] buff_s_out_3_load_reg_2854;
reg   [31:0] buff_s_out_load_1_reg_2859;
reg   [31:0] buff_s_out_1_load_1_reg_2864;
reg   [31:0] buff_s_out_2_load_1_reg_2869;
reg   [31:0] buff_s_out_3_load_1_reg_2874;
wire   [3:0] buff_s_out_addr_4_reg_2879;
wire    ap_CS_fsm_state6;
wire   [3:0] buff_s_out_1_addr_4_reg_2884;
wire   [3:0] buff_s_out_2_addr_4_reg_2889;
wire   [3:0] buff_s_out_3_addr_4_reg_2894;
wire   [3:0] buff_s_out_addr_5_reg_2899;
wire   [3:0] buff_s_out_1_addr_5_reg_2904;
wire   [3:0] buff_s_out_2_addr_5_reg_2909;
wire   [3:0] buff_s_out_3_addr_5_reg_2914;
reg   [31:0] buff_s_out_load_2_reg_2919;
reg   [31:0] buff_s_out_1_load_2_reg_2924;
reg   [31:0] buff_s_out_2_load_2_reg_2929;
reg   [31:0] buff_s_out_3_load_2_reg_2934;
reg   [31:0] buff_s_out_load_3_reg_2939;
reg   [31:0] buff_s_out_1_load_3_reg_2944;
reg   [31:0] buff_s_out_2_load_3_reg_2949;
reg   [31:0] buff_s_out_3_load_3_reg_2954;
wire   [3:0] buff_s_out_addr_6_reg_2999;
wire    ap_CS_fsm_state7;
wire   [3:0] buff_s_out_1_addr_6_reg_3004;
wire   [3:0] buff_s_out_2_addr_6_reg_3009;
wire   [3:0] buff_s_out_3_addr_6_reg_3014;
wire   [3:0] buff_s_out_addr_7_reg_3019;
wire   [3:0] buff_s_out_1_addr_7_reg_3024;
wire   [3:0] buff_s_out_2_addr_7_reg_3029;
wire   [3:0] buff_s_out_3_addr_7_reg_3034;
reg   [31:0] buff_s_out_load_4_reg_3039;
reg   [31:0] buff_s_out_1_load_4_reg_3044;
reg   [31:0] buff_s_out_2_load_4_reg_3049;
reg   [31:0] buff_s_out_3_load_4_reg_3054;
reg   [31:0] buff_s_out_load_5_reg_3059;
reg   [31:0] buff_s_out_1_load_5_reg_3064;
reg   [31:0] buff_s_out_2_load_5_reg_3069;
reg   [31:0] buff_s_out_3_load_5_reg_3074;
reg   [31:0] buff_p_load_reg_3079;
reg   [31:0] buff_p_1_load_reg_3084;
reg   [31:0] buff_p_2_load_reg_3089;
reg   [31:0] buff_p_3_load_reg_3094;
reg   [31:0] buff_p_load_1_reg_3099;
reg   [31:0] buff_p_1_load_1_reg_3104;
reg   [31:0] buff_p_2_load_1_reg_3109;
reg   [31:0] buff_p_3_load_1_reg_3114;
wire   [3:0] buff_s_out_addr_8_reg_3159;
wire    ap_CS_fsm_state8;
wire   [3:0] buff_s_out_1_addr_8_reg_3164;
wire   [3:0] buff_s_out_2_addr_8_reg_3169;
wire   [3:0] buff_s_out_3_addr_8_reg_3174;
wire   [3:0] buff_s_out_addr_9_reg_3179;
wire   [3:0] buff_s_out_1_addr_9_reg_3184;
wire   [3:0] buff_s_out_2_addr_9_reg_3189;
wire   [3:0] buff_s_out_3_addr_9_reg_3194;
reg   [31:0] buff_s_out_load_6_reg_3199;
reg   [31:0] buff_s_out_1_load_6_reg_3204;
reg   [31:0] buff_s_out_2_load_6_reg_3209;
reg   [31:0] buff_s_out_3_load_6_reg_3214;
reg   [31:0] buff_s_out_load_7_reg_3219;
reg   [31:0] buff_s_out_1_load_7_reg_3224;
reg   [31:0] buff_s_out_2_load_7_reg_3229;
reg   [31:0] buff_s_out_3_load_7_reg_3234;
reg   [31:0] buff_p_load_2_reg_3239;
reg   [31:0] buff_p_1_load_2_reg_3244;
reg   [31:0] buff_p_2_load_2_reg_3249;
reg   [31:0] buff_p_3_load_2_reg_3254;
reg   [31:0] buff_p_load_3_reg_3259;
reg   [31:0] buff_p_1_load_3_reg_3264;
reg   [31:0] buff_p_2_load_3_reg_3269;
reg   [31:0] buff_p_3_load_3_reg_3274;
wire   [3:0] buff_s_out_addr_10_reg_3319;
wire    ap_CS_fsm_state9;
wire   [3:0] buff_s_out_1_addr_10_reg_3324;
wire   [3:0] buff_s_out_2_addr_10_reg_3329;
wire   [3:0] buff_s_out_3_addr_10_reg_3334;
wire   [3:0] buff_s_out_addr_11_reg_3339;
wire   [3:0] buff_s_out_1_addr_11_reg_3344;
wire   [3:0] buff_s_out_2_addr_11_reg_3349;
wire   [3:0] buff_s_out_3_addr_11_reg_3354;
reg   [31:0] buff_s_out_load_8_reg_3359;
reg   [31:0] buff_s_out_1_load_8_reg_3364;
reg   [31:0] buff_s_out_2_load_8_reg_3369;
reg   [31:0] buff_s_out_3_load_8_reg_3374;
reg   [31:0] buff_s_out_load_9_reg_3379;
reg   [31:0] buff_s_out_1_load_9_reg_3384;
reg   [31:0] buff_s_out_2_load_9_reg_3389;
reg   [31:0] buff_s_out_3_load_9_reg_3394;
reg   [31:0] buff_p_load_4_reg_3399;
reg   [31:0] buff_p_1_load_4_reg_3404;
reg   [31:0] buff_p_2_load_4_reg_3409;
reg   [31:0] buff_p_3_load_4_reg_3414;
reg   [31:0] buff_p_load_5_reg_3419;
reg   [31:0] buff_p_1_load_5_reg_3424;
reg   [31:0] buff_p_2_load_5_reg_3429;
reg   [31:0] buff_p_3_load_5_reg_3434;
wire   [3:0] buff_s_out_addr_12_reg_3479;
wire    ap_CS_fsm_state10;
wire   [3:0] buff_s_out_1_addr_12_reg_3484;
wire   [3:0] buff_s_out_2_addr_12_reg_3489;
wire   [3:0] buff_s_out_3_addr_12_reg_3494;
wire   [3:0] buff_s_out_addr_13_reg_3499;
wire   [3:0] buff_s_out_1_addr_13_reg_3504;
wire   [3:0] buff_s_out_2_addr_13_reg_3509;
wire   [3:0] buff_s_out_3_addr_13_reg_3514;
reg   [31:0] buff_s_out_load_10_reg_3519;
reg   [31:0] buff_s_out_1_load_10_reg_3524;
reg   [31:0] buff_s_out_2_load_10_reg_3529;
reg   [31:0] buff_s_out_3_load_10_reg_3534;
reg   [31:0] buff_s_out_load_11_reg_3539;
reg   [31:0] buff_s_out_1_load_11_reg_3544;
reg   [31:0] buff_s_out_2_load_11_reg_3549;
reg   [31:0] buff_s_out_3_load_11_reg_3554;
reg   [31:0] buff_p_load_6_reg_3559;
reg   [31:0] buff_p_1_load_6_reg_3564;
reg   [31:0] buff_p_2_load_6_reg_3569;
reg   [31:0] buff_p_3_load_6_reg_3574;
reg   [31:0] buff_p_load_7_reg_3579;
reg   [31:0] buff_p_1_load_7_reg_3584;
reg   [31:0] buff_p_2_load_7_reg_3589;
reg   [31:0] buff_p_3_load_7_reg_3594;
wire   [3:0] buff_s_out_addr_14_reg_3639;
wire    ap_CS_fsm_state11;
wire   [3:0] buff_s_out_1_addr_14_reg_3644;
wire   [3:0] buff_s_out_2_addr_14_reg_3649;
wire   [3:0] buff_s_out_3_addr_14_reg_3654;
wire   [3:0] buff_s_out_addr_15_reg_3659;
wire   [3:0] buff_s_out_1_addr_15_reg_3664;
wire   [3:0] buff_s_out_2_addr_15_reg_3669;
wire   [3:0] buff_s_out_3_addr_15_reg_3674;
reg   [31:0] buff_s_out_load_12_reg_3679;
reg   [31:0] buff_s_out_1_load_12_reg_3684;
reg   [31:0] buff_s_out_2_load_12_reg_3689;
reg   [31:0] buff_s_out_3_load_12_reg_3694;
reg   [31:0] buff_s_out_load_13_reg_3699;
reg   [31:0] buff_s_out_1_load_13_reg_3704;
reg   [31:0] buff_s_out_2_load_13_reg_3709;
reg   [31:0] buff_s_out_3_load_13_reg_3714;
reg   [31:0] buff_p_load_8_reg_3719;
reg   [31:0] buff_p_1_load_8_reg_3724;
reg   [31:0] buff_p_2_load_8_reg_3729;
reg   [31:0] buff_p_3_load_8_reg_3734;
reg   [31:0] buff_p_load_9_reg_3739;
reg   [31:0] buff_p_1_load_9_reg_3744;
reg   [31:0] buff_p_2_load_9_reg_3749;
reg   [31:0] buff_p_3_load_9_reg_3754;
reg   [31:0] buff_s_out_load_14_reg_3799;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_s_out_1_load_14_reg_3804;
reg   [31:0] buff_s_out_2_load_14_reg_3809;
reg   [31:0] buff_s_out_3_load_14_reg_3814;
reg   [31:0] buff_s_out_load_15_reg_3819;
reg   [31:0] buff_s_out_1_load_15_reg_3824;
reg   [31:0] buff_s_out_2_load_15_reg_3829;
reg   [31:0] buff_s_out_3_load_15_reg_3834;
reg   [31:0] buff_p_load_10_reg_3839;
reg   [31:0] buff_p_1_load_10_reg_3844;
reg   [31:0] buff_p_2_load_10_reg_3849;
reg   [31:0] buff_p_3_load_10_reg_3854;
reg   [31:0] buff_p_load_11_reg_3859;
reg   [31:0] buff_p_1_load_11_reg_3864;
reg   [31:0] buff_p_2_load_11_reg_3869;
reg   [31:0] buff_p_3_load_11_reg_3874;
reg   [31:0] buff_p_load_12_reg_3919;
wire    ap_CS_fsm_state13;
reg   [31:0] buff_p_1_load_12_reg_3924;
reg   [31:0] buff_p_2_load_12_reg_3929;
reg   [31:0] buff_p_3_load_12_reg_3934;
reg   [31:0] buff_p_load_13_reg_3939;
reg   [31:0] buff_p_1_load_13_reg_3944;
reg   [31:0] buff_p_2_load_13_reg_3949;
reg   [31:0] buff_p_3_load_13_reg_3954;
reg   [31:0] buff_p_load_14_reg_3999;
wire    ap_CS_fsm_state14;
reg   [31:0] buff_p_1_load_14_reg_4004;
reg   [31:0] buff_p_2_load_14_reg_4009;
reg   [31:0] buff_p_3_load_14_reg_4014;
reg   [31:0] buff_p_load_15_reg_4019;
reg   [31:0] buff_p_1_load_15_reg_4024;
reg   [31:0] buff_p_2_load_15_reg_4029;
reg   [31:0] buff_p_3_load_15_reg_4034;
reg   [9:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [9:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
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
reg   [9:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [9:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
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
reg   [9:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [9:0] buff_A_2_address1;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
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
reg   [9:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [9:0] buff_A_3_address1;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
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
wire   [31:0] buff_p_q0;
wire   [31:0] buff_p_q1;
wire   [31:0] buff_p_1_q0;
wire   [31:0] buff_p_1_q1;
wire   [31:0] buff_p_2_q0;
wire   [31:0] buff_p_2_q1;
wire   [31:0] buff_p_3_q0;
wire   [31:0] buff_p_3_q1;
reg   [3:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [3:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg   [3:0] buff_r_2_address0;
reg    buff_r_2_ce0;
wire   [31:0] buff_r_2_q0;
reg   [3:0] buff_r_3_address0;
reg    buff_r_3_ce0;
wire   [31:0] buff_r_3_q0;
reg   [3:0] buff_s_out_address0;
reg    buff_s_out_ce0;
wire   [31:0] buff_s_out_q0;
wire   [31:0] buff_s_out_q1;
reg   [3:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
wire   [31:0] buff_s_out_1_q0;
wire   [31:0] buff_s_out_1_q1;
reg   [3:0] buff_s_out_2_address0;
reg    buff_s_out_2_ce0;
wire   [31:0] buff_s_out_2_q0;
wire   [31:0] buff_s_out_2_q1;
reg   [3:0] buff_s_out_3_address0;
reg    buff_s_out_3_ce0;
wire   [31:0] buff_s_out_3_q0;
wire   [31:0] buff_s_out_3_q1;
reg   [3:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg    buff_q_out_ce1;
wire   [31:0] buff_q_out_q1;
reg   [3:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg    buff_q_out_1_ce1;
wire   [31:0] buff_q_out_1_q1;
reg   [3:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg    buff_q_out_2_ce1;
wire   [31:0] buff_q_out_2_q1;
reg   [3:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
reg    buff_q_out_3_ce1;
wire   [31:0] buff_q_out_3_q1;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_A_0_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_d0;
wire    grp_bicg_Pipeline_lp1_fu_1745_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1745_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1745_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1745_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1745_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_r_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1745_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_r_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1745_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_r_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1745_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1745_buff_r_3_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_6375_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_6375_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_6274_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_6274_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_6173_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_6173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_6072_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_6072_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5971_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5971_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5870_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5870_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5769_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5769_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5668_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5668_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5567_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5567_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5466_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5466_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5365_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5365_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5264_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5264_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5163_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_5062_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_5062_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4961_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4961_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4860_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4860_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4759_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4759_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4658_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4658_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4557_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4557_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4456_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4456_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4355_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4355_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4254_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4254_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4153_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_4052_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_4052_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3951_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3951_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3850_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3850_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3749_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3749_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3648_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3648_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3547_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3547_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3446_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3446_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3345_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3345_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3244_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3244_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3143_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_3042_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_3042_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2941_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2941_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2840_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2840_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2739_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2739_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2638_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2638_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2537_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2537_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2436_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2436_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2335_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2335_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2234_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2234_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2133_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2133_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_2032_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_2032_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1931_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1931_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1830_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1830_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1729_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1729_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1628_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1628_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1527_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1527_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1426_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1426_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1325_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1325_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1224_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1224_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1123_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1123_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_1022_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_1022_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_921_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_921_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_820_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_820_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_719_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_719_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_618_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_618_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_517_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_517_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_416_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_416_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_315_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_315_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_214_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_214_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add_113_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add_113_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_add12_out;
wire    grp_bicg_Pipeline_lp1_fu_1745_add12_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_ce;
wire    grp_bicg_Pipeline_lp3_fu_1893_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_1893_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_1893_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_1893_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address8;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address9;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address10;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address11;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address12;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address13;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address14;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_address15;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address9;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address10;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address11;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address12;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address13;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address14;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address15;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address3;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address4;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address5;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address6;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address7;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address8;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address9;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address10;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address11;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address12;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address13;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address14;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address15;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address3;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address4;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address5;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address6;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address7;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address8;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address9;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address10;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address11;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address12;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address13;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address14;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address15;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce15;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_ce1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1977_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1977_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1977_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1977_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1977_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1977_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1977_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1977_q_out_write;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_3_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1728_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp1_fu_1745_ap_start_reg;
reg    grp_bicg_Pipeline_lp3_fu_1893_ap_start_reg;
wire    ap_CS_fsm_state15;
reg    grp_bicg_Pipeline_lpwr_fu_1977_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] zext_ln13_fu_2013_p1;
wire   [0:0] icmp_ln13_fu_2001_p2;
wire   [63:0] zext_ln5_fu_2035_p1;
reg   [6:0] i_fu_106;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [3:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [3:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
wire   [1:0] trunc_ln13_1_fu_2023_p1;
reg   [31:0] buff_s_out_d0_local;
reg    buff_s_out_we1_local;
reg   [31:0] buff_s_out_d1_local;
reg    buff_s_out_1_ce1_local;
reg   [3:0] buff_s_out_1_address1_local;
reg    buff_s_out_1_ce0_local;
reg   [3:0] buff_s_out_1_address0_local;
reg    buff_s_out_1_we0_local;
reg   [31:0] buff_s_out_1_d0_local;
reg    buff_s_out_1_we1_local;
reg   [31:0] buff_s_out_1_d1_local;
reg    buff_s_out_2_ce1_local;
reg   [3:0] buff_s_out_2_address1_local;
reg    buff_s_out_2_ce0_local;
reg   [3:0] buff_s_out_2_address0_local;
reg    buff_s_out_2_we0_local;
reg   [31:0] buff_s_out_2_d0_local;
reg    buff_s_out_2_we1_local;
reg   [31:0] buff_s_out_2_d1_local;
reg    buff_s_out_3_ce1_local;
reg   [3:0] buff_s_out_3_address1_local;
reg    buff_s_out_3_ce0_local;
reg   [3:0] buff_s_out_3_address0_local;
reg    buff_s_out_3_we0_local;
reg   [31:0] buff_s_out_3_d0_local;
reg    buff_s_out_3_we1_local;
reg   [31:0] buff_s_out_3_d1_local;
reg    buff_p_2_we0_local;
wire   [31:0] bitcast_ln14_fu_2055_p1;
reg    buff_p_2_ce0_local;
reg   [3:0] buff_p_2_address0_local;
reg    buff_p_2_ce1_local;
reg   [3:0] buff_p_2_address1_local;
reg    buff_r_2_we0_local;
wire   [31:0] bitcast_ln15_fu_2063_p1;
reg    buff_r_2_ce0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg   [3:0] buff_p_1_address0_local;
reg    buff_p_1_ce1_local;
reg   [3:0] buff_p_1_address1_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_p_we0_local;
reg    buff_p_ce0_local;
reg   [3:0] buff_p_address0_local;
reg    buff_p_ce1_local;
reg   [3:0] buff_p_address1_local;
reg    buff_r_we0_local;
reg    buff_r_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_p_3_we0_local;
reg    buff_p_3_ce0_local;
reg   [3:0] buff_p_3_address0_local;
reg    buff_p_3_ce1_local;
reg   [3:0] buff_p_3_address1_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
wire   [3:0] lshr_ln5_fu_2026_p4;
wire   [31:0] grp_fu_4039_p2;
reg   [31:0] grp_fu_4039_p0;
reg   [31:0] grp_fu_4039_p1;
reg    grp_fu_4039_ce;
wire   [31:0] grp_fu_4043_p2;
reg   [31:0] grp_fu_4043_p0;
reg   [31:0] grp_fu_4043_p1;
reg    grp_fu_4043_ce;
wire   [31:0] grp_fu_4047_p2;
reg   [31:0] grp_fu_4047_p0;
reg   [31:0] grp_fu_4047_p1;
reg    grp_fu_4047_ce;
wire   [31:0] grp_fu_4051_p2;
reg   [31:0] grp_fu_4051_p0;
reg   [31:0] grp_fu_4051_p1;
reg    grp_fu_4051_ce;
wire   [31:0] grp_fu_4055_p2;
reg   [31:0] grp_fu_4055_p0;
reg   [31:0] grp_fu_4055_p1;
reg    grp_fu_4055_ce;
wire   [31:0] grp_fu_4059_p2;
reg   [31:0] grp_fu_4059_p0;
reg   [31:0] grp_fu_4059_p1;
reg    grp_fu_4059_ce;
wire   [31:0] grp_fu_4063_p2;
reg   [31:0] grp_fu_4063_p0;
reg   [31:0] grp_fu_4063_p1;
reg    grp_fu_4063_ce;
wire   [31:0] grp_fu_4067_p2;
reg   [31:0] grp_fu_4067_p0;
reg   [31:0] grp_fu_4067_p1;
reg    grp_fu_4067_ce;
wire   [31:0] grp_fu_4071_p2;
reg   [31:0] grp_fu_4071_p0;
reg   [31:0] grp_fu_4071_p1;
reg    grp_fu_4071_ce;
wire   [31:0] grp_fu_4075_p2;
reg   [31:0] grp_fu_4075_p0;
reg   [31:0] grp_fu_4075_p1;
reg    grp_fu_4075_ce;
wire   [31:0] grp_fu_4079_p2;
reg   [31:0] grp_fu_4079_p0;
reg   [31:0] grp_fu_4079_p1;
reg    grp_fu_4079_ce;
wire   [31:0] grp_fu_4083_p2;
reg   [31:0] grp_fu_4083_p0;
reg   [31:0] grp_fu_4083_p1;
reg    grp_fu_4083_ce;
wire   [31:0] grp_fu_4087_p2;
reg   [31:0] grp_fu_4087_p0;
reg   [31:0] grp_fu_4087_p1;
reg    grp_fu_4087_ce;
wire   [31:0] grp_fu_4091_p2;
reg   [31:0] grp_fu_4091_p0;
reg   [31:0] grp_fu_4091_p1;
reg    grp_fu_4091_ce;
wire   [31:0] grp_fu_4095_p2;
reg   [31:0] grp_fu_4095_p0;
reg   [31:0] grp_fu_4095_p1;
reg    grp_fu_4095_ce;
wire   [31:0] grp_fu_4099_p2;
reg   [31:0] grp_fu_4099_p0;
reg   [31:0] grp_fu_4099_p1;
reg    grp_fu_4099_ce;
reg   [22:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 23'd1;
#0 grp_bicg_Pipeline_lprd_2_fu_1728_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1745_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_1893_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1977_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_2055_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_2055_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0_local),.ce0(buff_p_2_ce0_local),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_2055_p1),.q0(buff_p_2_q0),.address1(buff_p_2_address1_local),.ce1(buff_p_2_ce1_local),.q1(buff_p_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0_local),.ce0(buff_p_3_ce0_local),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_2055_p1),.q0(buff_p_3_q0),.address1(buff_p_3_address1_local),.ce1(buff_p_3_ce1_local),.q1(buff_p_3_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_2063_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_2063_p1),.q0(buff_r_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_2063_p1),.q0(buff_r_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_2063_p1),.q0(buff_r_3_q0));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0_local),.d0(buff_s_out_d0_local),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0_local),.d0(buff_s_out_1_d0_local),.q0(buff_s_out_1_q0),.address1(buff_s_out_1_address1_local),.ce1(buff_s_out_1_ce1_local),.we1(buff_s_out_1_we1_local),.d1(buff_s_out_1_d1_local),.q1(buff_s_out_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0_local),.d0(buff_s_out_2_d0_local),.q0(buff_s_out_2_q0),.address1(buff_s_out_2_address1_local),.ce1(buff_s_out_2_ce1_local),.we1(buff_s_out_2_we1_local),.d1(buff_s_out_2_d1_local),.q1(buff_s_out_2_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0_local),.d0(buff_s_out_3_d0_local),.q0(buff_s_out_3_q0),.address1(buff_s_out_3_address1_local),.ce1(buff_s_out_3_ce1_local),.we1(buff_s_out_3_we1_local),.d1(buff_s_out_3_d1_local),.q1(buff_s_out_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_address1),.ce1(buff_q_out_ce1),.q1(buff_q_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.q1(buff_q_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0),.address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_address1),.ce1(buff_q_out_2_ce1),.q1(buff_q_out_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0),.address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_address1),.ce1(buff_q_out_3_ce1),.q1(buff_q_out_3_q1));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1728(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1728_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1728_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1728_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1728_ap_ready),.i(trunc_ln13_reg_2791),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1728_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1728_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1728_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1728_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_d0));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1745(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1745_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1745_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1745_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1745_ap_ready),.buff_s_out_3_load_15(buff_s_out_3_load_15_reg_3834),.buff_s_out_2_load_15(buff_s_out_2_load_15_reg_3829),.buff_s_out_1_load_15(buff_s_out_1_load_15_reg_3824),.buff_s_out_load_15(buff_s_out_load_15_reg_3819),.buff_s_out_3_load_14(buff_s_out_3_load_14_reg_3814),.buff_s_out_2_load_14(buff_s_out_2_load_14_reg_3809),.buff_s_out_1_load_14(buff_s_out_1_load_14_reg_3804),.buff_s_out_load_14(buff_s_out_load_14_reg_3799),.buff_s_out_3_load_13(buff_s_out_3_load_13_reg_3714),.buff_s_out_2_load_13(buff_s_out_2_load_13_reg_3709),.buff_s_out_1_load_13(buff_s_out_1_load_13_reg_3704),.buff_s_out_load_13(buff_s_out_load_13_reg_3699),.buff_s_out_3_load_12(buff_s_out_3_load_12_reg_3694),.buff_s_out_2_load_12(buff_s_out_2_load_12_reg_3689),.buff_s_out_1_load_12(buff_s_out_1_load_12_reg_3684),.buff_s_out_load_12(buff_s_out_load_12_reg_3679),.buff_s_out_3_load_11(buff_s_out_3_load_11_reg_3554),.buff_s_out_2_load_11(buff_s_out_2_load_11_reg_3549),.buff_s_out_1_load_11(buff_s_out_1_load_11_reg_3544),.buff_s_out_load_11(buff_s_out_load_11_reg_3539),.buff_s_out_3_load_10(buff_s_out_3_load_10_reg_3534),.buff_s_out_2_load_10(buff_s_out_2_load_10_reg_3529),.buff_s_out_1_load_10(buff_s_out_1_load_10_reg_3524),.buff_s_out_load_10(buff_s_out_load_10_reg_3519),.buff_s_out_3_load_9(buff_s_out_3_load_9_reg_3394),.buff_s_out_2_load_9(buff_s_out_2_load_9_reg_3389),.buff_s_out_1_load_9(buff_s_out_1_load_9_reg_3384),.buff_s_out_load_9(buff_s_out_load_9_reg_3379),.buff_s_out_3_load_8(buff_s_out_3_load_8_reg_3374),.buff_s_out_2_load_8(buff_s_out_2_load_8_reg_3369),.buff_s_out_1_load_8(buff_s_out_1_load_8_reg_3364),.buff_s_out_load_8(buff_s_out_load_8_reg_3359),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_3234),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_3229),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_3224),.buff_s_out_load_7(buff_s_out_load_7_reg_3219),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_3214),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_3209),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_3204),.buff_s_out_load_6(buff_s_out_load_6_reg_3199),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_3074),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_3069),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_3064),.buff_s_out_load_5(buff_s_out_load_5_reg_3059),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_3054),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_3049),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_3044),.buff_s_out_load_4(buff_s_out_load_4_reg_3039),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_2954),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_2949),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2944),.buff_s_out_load_3(buff_s_out_load_3_reg_2939),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_2934),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_2929),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2924),.buff_s_out_load_2(buff_s_out_load_2_reg_2919),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_2874),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_2869),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2864),.buff_s_out_load_1(buff_s_out_load_1_reg_2859),.buff_s_out_3_load(buff_s_out_3_load_reg_2854),.buff_s_out_2_load(buff_s_out_2_load_reg_2849),.buff_s_out_1_load(buff_s_out_1_load_reg_2844),.buff_s_out_load(buff_s_out_load_reg_2839),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_1745_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.add_6375_out(grp_bicg_Pipeline_lp1_fu_1745_add_6375_out),.add_6375_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_6375_out_ap_vld),.add_6274_out(grp_bicg_Pipeline_lp1_fu_1745_add_6274_out),.add_6274_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_6274_out_ap_vld),.add_6173_out(grp_bicg_Pipeline_lp1_fu_1745_add_6173_out),.add_6173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_6173_out_ap_vld),.add_6072_out(grp_bicg_Pipeline_lp1_fu_1745_add_6072_out),.add_6072_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_6072_out_ap_vld),.add_5971_out(grp_bicg_Pipeline_lp1_fu_1745_add_5971_out),.add_5971_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5971_out_ap_vld),.add_5870_out(grp_bicg_Pipeline_lp1_fu_1745_add_5870_out),.add_5870_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5870_out_ap_vld),.add_5769_out(grp_bicg_Pipeline_lp1_fu_1745_add_5769_out),.add_5769_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5769_out_ap_vld),.add_5668_out(grp_bicg_Pipeline_lp1_fu_1745_add_5668_out),.add_5668_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5668_out_ap_vld),.add_5567_out(grp_bicg_Pipeline_lp1_fu_1745_add_5567_out),.add_5567_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5567_out_ap_vld),.add_5466_out(grp_bicg_Pipeline_lp1_fu_1745_add_5466_out),.add_5466_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5466_out_ap_vld),.add_5365_out(grp_bicg_Pipeline_lp1_fu_1745_add_5365_out),.add_5365_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5365_out_ap_vld),.add_5264_out(grp_bicg_Pipeline_lp1_fu_1745_add_5264_out),.add_5264_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5264_out_ap_vld),.add_5163_out(grp_bicg_Pipeline_lp1_fu_1745_add_5163_out),.add_5163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5163_out_ap_vld),.add_5062_out(grp_bicg_Pipeline_lp1_fu_1745_add_5062_out),.add_5062_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_5062_out_ap_vld),.add_4961_out(grp_bicg_Pipeline_lp1_fu_1745_add_4961_out),.add_4961_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4961_out_ap_vld),.add_4860_out(grp_bicg_Pipeline_lp1_fu_1745_add_4860_out),.add_4860_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4860_out_ap_vld),.add_4759_out(grp_bicg_Pipeline_lp1_fu_1745_add_4759_out),.add_4759_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4759_out_ap_vld),.add_4658_out(grp_bicg_Pipeline_lp1_fu_1745_add_4658_out),.add_4658_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4658_out_ap_vld),.add_4557_out(grp_bicg_Pipeline_lp1_fu_1745_add_4557_out),.add_4557_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4557_out_ap_vld),.add_4456_out(grp_bicg_Pipeline_lp1_fu_1745_add_4456_out),.add_4456_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4456_out_ap_vld),.add_4355_out(grp_bicg_Pipeline_lp1_fu_1745_add_4355_out),.add_4355_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4355_out_ap_vld),.add_4254_out(grp_bicg_Pipeline_lp1_fu_1745_add_4254_out),.add_4254_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4254_out_ap_vld),.add_4153_out(grp_bicg_Pipeline_lp1_fu_1745_add_4153_out),.add_4153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4153_out_ap_vld),.add_4052_out(grp_bicg_Pipeline_lp1_fu_1745_add_4052_out),.add_4052_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_4052_out_ap_vld),.add_3951_out(grp_bicg_Pipeline_lp1_fu_1745_add_3951_out),.add_3951_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3951_out_ap_vld),.add_3850_out(grp_bicg_Pipeline_lp1_fu_1745_add_3850_out),.add_3850_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3850_out_ap_vld),.add_3749_out(grp_bicg_Pipeline_lp1_fu_1745_add_3749_out),.add_3749_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3749_out_ap_vld),.add_3648_out(grp_bicg_Pipeline_lp1_fu_1745_add_3648_out),.add_3648_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3648_out_ap_vld),.add_3547_out(grp_bicg_Pipeline_lp1_fu_1745_add_3547_out),.add_3547_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3547_out_ap_vld),.add_3446_out(grp_bicg_Pipeline_lp1_fu_1745_add_3446_out),.add_3446_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3446_out_ap_vld),.add_3345_out(grp_bicg_Pipeline_lp1_fu_1745_add_3345_out),.add_3345_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3345_out_ap_vld),.add_3244_out(grp_bicg_Pipeline_lp1_fu_1745_add_3244_out),.add_3244_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3244_out_ap_vld),.add_3143_out(grp_bicg_Pipeline_lp1_fu_1745_add_3143_out),.add_3143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3143_out_ap_vld),.add_3042_out(grp_bicg_Pipeline_lp1_fu_1745_add_3042_out),.add_3042_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_3042_out_ap_vld),.add_2941_out(grp_bicg_Pipeline_lp1_fu_1745_add_2941_out),.add_2941_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2941_out_ap_vld),.add_2840_out(grp_bicg_Pipeline_lp1_fu_1745_add_2840_out),.add_2840_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2840_out_ap_vld),.add_2739_out(grp_bicg_Pipeline_lp1_fu_1745_add_2739_out),.add_2739_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2739_out_ap_vld),.add_2638_out(grp_bicg_Pipeline_lp1_fu_1745_add_2638_out),.add_2638_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2638_out_ap_vld),.add_2537_out(grp_bicg_Pipeline_lp1_fu_1745_add_2537_out),.add_2537_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2537_out_ap_vld),.add_2436_out(grp_bicg_Pipeline_lp1_fu_1745_add_2436_out),.add_2436_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2436_out_ap_vld),.add_2335_out(grp_bicg_Pipeline_lp1_fu_1745_add_2335_out),.add_2335_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2335_out_ap_vld),.add_2234_out(grp_bicg_Pipeline_lp1_fu_1745_add_2234_out),.add_2234_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2234_out_ap_vld),.add_2133_out(grp_bicg_Pipeline_lp1_fu_1745_add_2133_out),.add_2133_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2133_out_ap_vld),.add_2032_out(grp_bicg_Pipeline_lp1_fu_1745_add_2032_out),.add_2032_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_2032_out_ap_vld),.add_1931_out(grp_bicg_Pipeline_lp1_fu_1745_add_1931_out),.add_1931_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1931_out_ap_vld),.add_1830_out(grp_bicg_Pipeline_lp1_fu_1745_add_1830_out),.add_1830_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1830_out_ap_vld),.add_1729_out(grp_bicg_Pipeline_lp1_fu_1745_add_1729_out),.add_1729_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1729_out_ap_vld),.add_1628_out(grp_bicg_Pipeline_lp1_fu_1745_add_1628_out),.add_1628_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1628_out_ap_vld),.add_1527_out(grp_bicg_Pipeline_lp1_fu_1745_add_1527_out),.add_1527_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1527_out_ap_vld),.add_1426_out(grp_bicg_Pipeline_lp1_fu_1745_add_1426_out),.add_1426_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1426_out_ap_vld),.add_1325_out(grp_bicg_Pipeline_lp1_fu_1745_add_1325_out),.add_1325_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1325_out_ap_vld),.add_1224_out(grp_bicg_Pipeline_lp1_fu_1745_add_1224_out),.add_1224_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1224_out_ap_vld),.add_1123_out(grp_bicg_Pipeline_lp1_fu_1745_add_1123_out),.add_1123_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1123_out_ap_vld),.add_1022_out(grp_bicg_Pipeline_lp1_fu_1745_add_1022_out),.add_1022_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_1022_out_ap_vld),.add_921_out(grp_bicg_Pipeline_lp1_fu_1745_add_921_out),.add_921_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_921_out_ap_vld),.add_820_out(grp_bicg_Pipeline_lp1_fu_1745_add_820_out),.add_820_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_820_out_ap_vld),.add_719_out(grp_bicg_Pipeline_lp1_fu_1745_add_719_out),.add_719_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_719_out_ap_vld),.add_618_out(grp_bicg_Pipeline_lp1_fu_1745_add_618_out),.add_618_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_618_out_ap_vld),.add_517_out(grp_bicg_Pipeline_lp1_fu_1745_add_517_out),.add_517_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_517_out_ap_vld),.add_416_out(grp_bicg_Pipeline_lp1_fu_1745_add_416_out),.add_416_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_416_out_ap_vld),.add_315_out(grp_bicg_Pipeline_lp1_fu_1745_add_315_out),.add_315_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_315_out_ap_vld),.add_214_out(grp_bicg_Pipeline_lp1_fu_1745_add_214_out),.add_214_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_214_out_ap_vld),.add_113_out(grp_bicg_Pipeline_lp1_fu_1745_add_113_out),.add_113_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add_113_out_ap_vld),.add12_out(grp_bicg_Pipeline_lp1_fu_1745_add12_out),.add12_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1745_add12_out_ap_vld),.grp_fu_4039_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_din0),.grp_fu_4039_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_din1),.grp_fu_4039_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_opcode),.grp_fu_4039_p_dout0(grp_fu_4039_p2),.grp_fu_4039_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_ce),.grp_fu_4043_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_din0),.grp_fu_4043_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_din1),.grp_fu_4043_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_opcode),.grp_fu_4043_p_dout0(grp_fu_4043_p2),.grp_fu_4043_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_ce),.grp_fu_4047_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_din0),.grp_fu_4047_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_din1),.grp_fu_4047_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_opcode),.grp_fu_4047_p_dout0(grp_fu_4047_p2),.grp_fu_4047_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_ce),.grp_fu_4051_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_din0),.grp_fu_4051_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_din1),.grp_fu_4051_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_opcode),.grp_fu_4051_p_dout0(grp_fu_4051_p2),.grp_fu_4051_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_ce),.grp_fu_4055_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_din0),.grp_fu_4055_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_din1),.grp_fu_4055_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_opcode),.grp_fu_4055_p_dout0(grp_fu_4055_p2),.grp_fu_4055_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_ce),.grp_fu_4059_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_din0),.grp_fu_4059_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_din1),.grp_fu_4059_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_opcode),.grp_fu_4059_p_dout0(grp_fu_4059_p2),.grp_fu_4059_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_ce),.grp_fu_4063_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_din0),.grp_fu_4063_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_din1),.grp_fu_4063_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_opcode),.grp_fu_4063_p_dout0(grp_fu_4063_p2),.grp_fu_4063_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_ce),.grp_fu_4067_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_din0),.grp_fu_4067_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_din1),.grp_fu_4067_p_opcode(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_opcode),.grp_fu_4067_p_dout0(grp_fu_4067_p2),.grp_fu_4067_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_ce),.grp_fu_4071_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_din0),.grp_fu_4071_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_din1),.grp_fu_4071_p_dout0(grp_fu_4071_p2),.grp_fu_4071_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_ce),.grp_fu_4075_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_din0),.grp_fu_4075_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_din1),.grp_fu_4075_p_dout0(grp_fu_4075_p2),.grp_fu_4075_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_ce),.grp_fu_4079_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_din0),.grp_fu_4079_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_din1),.grp_fu_4079_p_dout0(grp_fu_4079_p2),.grp_fu_4079_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_ce),.grp_fu_4083_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_din0),.grp_fu_4083_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_din1),.grp_fu_4083_p_dout0(grp_fu_4083_p2),.grp_fu_4083_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_ce),.grp_fu_4087_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_din0),.grp_fu_4087_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_din1),.grp_fu_4087_p_dout0(grp_fu_4087_p2),.grp_fu_4087_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_ce),.grp_fu_4091_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_din0),.grp_fu_4091_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_din1),.grp_fu_4091_p_dout0(grp_fu_4091_p2),.grp_fu_4091_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_ce),.grp_fu_4095_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_din0),.grp_fu_4095_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_din1),.grp_fu_4095_p_dout0(grp_fu_4095_p2),.grp_fu_4095_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_ce),.grp_fu_4099_p_din0(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_din0),.grp_fu_4099_p_din1(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_din1),.grp_fu_4099_p_dout0(grp_fu_4099_p2),.grp_fu_4099_p_ce(grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_ce));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_1893(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_1893_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_1893_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_1893_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_1893_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address9),.buff_A_ce9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address10),.buff_A_ce10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address11),.buff_A_ce11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address12),.buff_A_ce12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address13),.buff_A_ce13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address14),.buff_A_ce14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_address15),.buff_A_ce15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address9),.buff_A_1_ce9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address10),.buff_A_1_ce10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address11),.buff_A_1_ce11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address12),.buff_A_1_ce12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address13),.buff_A_1_ce13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address14),.buff_A_1_ce14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address15),.buff_A_1_ce15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address3),.buff_A_2_ce3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address4),.buff_A_2_ce4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address5),.buff_A_2_ce5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address6),.buff_A_2_ce6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address7),.buff_A_2_ce7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address8),.buff_A_2_ce8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address9),.buff_A_2_ce9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address10),.buff_A_2_ce10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address11),.buff_A_2_ce11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address12),.buff_A_2_ce12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address13),.buff_A_2_ce13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address14),.buff_A_2_ce14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address15),.buff_A_2_ce15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address3),.buff_A_3_ce3(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address4),.buff_A_3_ce4(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address5),.buff_A_3_ce5(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address6),.buff_A_3_ce6(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address7),.buff_A_3_ce7(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address8),.buff_A_3_ce8(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address9),.buff_A_3_ce9(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address10),.buff_A_3_ce10(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address11),.buff_A_3_ce11(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address12),.buff_A_3_ce12(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address13),.buff_A_3_ce13(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address14),.buff_A_3_ce14(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address15),.buff_A_3_ce15(grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_d0),.buff_q_out_3_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_address1),.buff_q_out_3_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_ce1),.buff_q_out_3_q1(buff_q_out_3_q1),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_d0),.buff_q_out_2_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_address1),.buff_q_out_2_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_ce1),.buff_q_out_2_q1(buff_q_out_2_q1),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_d0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_ce1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_d0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_ce1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_3079),.buff_p_1_load(buff_p_1_load_reg_3084),.buff_p_2_load(buff_p_2_load_reg_3089),.buff_p_3_load(buff_p_3_load_reg_3094),.buff_p_load_1(buff_p_load_1_reg_3099),.buff_p_1_load_1(buff_p_1_load_1_reg_3104),.buff_p_2_load_1(buff_p_2_load_1_reg_3109),.buff_p_3_load_1(buff_p_3_load_1_reg_3114),.buff_p_load_2(buff_p_load_2_reg_3239),.buff_p_1_load_2(buff_p_1_load_2_reg_3244),.buff_p_2_load_2(buff_p_2_load_2_reg_3249),.buff_p_3_load_2(buff_p_3_load_2_reg_3254),.buff_p_load_3(buff_p_load_3_reg_3259),.buff_p_1_load_3(buff_p_1_load_3_reg_3264),.buff_p_2_load_3(buff_p_2_load_3_reg_3269),.buff_p_3_load_3(buff_p_3_load_3_reg_3274),.buff_p_load_4(buff_p_load_4_reg_3399),.buff_p_1_load_4(buff_p_1_load_4_reg_3404),.buff_p_2_load_4(buff_p_2_load_4_reg_3409),.buff_p_3_load_4(buff_p_3_load_4_reg_3414),.buff_p_load_5(buff_p_load_5_reg_3419),.buff_p_1_load_5(buff_p_1_load_5_reg_3424),.buff_p_2_load_5(buff_p_2_load_5_reg_3429),.buff_p_3_load_5(buff_p_3_load_5_reg_3434),.buff_p_load_6(buff_p_load_6_reg_3559),.buff_p_1_load_6(buff_p_1_load_6_reg_3564),.buff_p_2_load_6(buff_p_2_load_6_reg_3569),.buff_p_3_load_6(buff_p_3_load_6_reg_3574),.buff_p_load_7(buff_p_load_7_reg_3579),.buff_p_1_load_7(buff_p_1_load_7_reg_3584),.buff_p_2_load_7(buff_p_2_load_7_reg_3589),.buff_p_3_load_7(buff_p_3_load_7_reg_3594),.buff_p_load_8(buff_p_load_8_reg_3719),.buff_p_1_load_8(buff_p_1_load_8_reg_3724),.buff_p_2_load_8(buff_p_2_load_8_reg_3729),.buff_p_3_load_8(buff_p_3_load_8_reg_3734),.buff_p_load_9(buff_p_load_9_reg_3739),.buff_p_1_load_9(buff_p_1_load_9_reg_3744),.buff_p_2_load_9(buff_p_2_load_9_reg_3749),.buff_p_3_load_9(buff_p_3_load_9_reg_3754),.buff_p_load_10(buff_p_load_10_reg_3839),.buff_p_1_load_10(buff_p_1_load_10_reg_3844),.buff_p_2_load_10(buff_p_2_load_10_reg_3849),.buff_p_3_load_10(buff_p_3_load_10_reg_3854),.buff_p_load_11(buff_p_load_11_reg_3859),.buff_p_1_load_11(buff_p_1_load_11_reg_3864),.buff_p_2_load_11(buff_p_2_load_11_reg_3869),.buff_p_3_load_11(buff_p_3_load_11_reg_3874),.buff_p_load_12(buff_p_load_12_reg_3919),.buff_p_1_load_12(buff_p_1_load_12_reg_3924),.buff_p_2_load_12(buff_p_2_load_12_reg_3929),.buff_p_3_load_12(buff_p_3_load_12_reg_3934),.buff_p_load_13(buff_p_load_13_reg_3939),.buff_p_1_load_13(buff_p_1_load_13_reg_3944),.buff_p_2_load_13(buff_p_2_load_13_reg_3949),.buff_p_3_load_13(buff_p_3_load_13_reg_3954),.buff_p_load_14(buff_p_load_14_reg_3999),.buff_p_1_load_14(buff_p_1_load_14_reg_4004),.buff_p_2_load_14(buff_p_2_load_14_reg_4009),.buff_p_3_load_14(buff_p_3_load_14_reg_4014),.buff_p_load_15(buff_p_load_15_reg_4019),.buff_p_1_load_15(buff_p_1_load_15_reg_4024),.buff_p_2_load_15(buff_p_2_load_15_reg_4029),.buff_p_3_load_15(buff_p_3_load_15_reg_4034),.grp_fu_4039_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_din0),.grp_fu_4039_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_din1),.grp_fu_4039_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_opcode),.grp_fu_4039_p_dout0(grp_fu_4039_p2),.grp_fu_4039_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_ce),.grp_fu_4043_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_din0),.grp_fu_4043_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_din1),.grp_fu_4043_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_opcode),.grp_fu_4043_p_dout0(grp_fu_4043_p2),.grp_fu_4043_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_ce),.grp_fu_4047_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_din0),.grp_fu_4047_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_din1),.grp_fu_4047_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_opcode),.grp_fu_4047_p_dout0(grp_fu_4047_p2),.grp_fu_4047_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_ce),.grp_fu_4051_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_din0),.grp_fu_4051_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_din1),.grp_fu_4051_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_opcode),.grp_fu_4051_p_dout0(grp_fu_4051_p2),.grp_fu_4051_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_ce),.grp_fu_4055_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_din0),.grp_fu_4055_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_din1),.grp_fu_4055_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_opcode),.grp_fu_4055_p_dout0(grp_fu_4055_p2),.grp_fu_4055_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_ce),.grp_fu_4059_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_din0),.grp_fu_4059_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_din1),.grp_fu_4059_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_opcode),.grp_fu_4059_p_dout0(grp_fu_4059_p2),.grp_fu_4059_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_ce),.grp_fu_4063_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_din0),.grp_fu_4063_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_din1),.grp_fu_4063_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_opcode),.grp_fu_4063_p_dout0(grp_fu_4063_p2),.grp_fu_4063_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_ce),.grp_fu_4067_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_din0),.grp_fu_4067_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_din1),.grp_fu_4067_p_opcode(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_opcode),.grp_fu_4067_p_dout0(grp_fu_4067_p2),.grp_fu_4067_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_ce),.grp_fu_4071_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_din0),.grp_fu_4071_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_din1),.grp_fu_4071_p_dout0(grp_fu_4071_p2),.grp_fu_4071_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_ce),.grp_fu_4075_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_din0),.grp_fu_4075_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_din1),.grp_fu_4075_p_dout0(grp_fu_4075_p2),.grp_fu_4075_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_ce),.grp_fu_4079_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_din0),.grp_fu_4079_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_din1),.grp_fu_4079_p_dout0(grp_fu_4079_p2),.grp_fu_4079_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_ce),.grp_fu_4083_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_din0),.grp_fu_4083_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_din1),.grp_fu_4083_p_dout0(grp_fu_4083_p2),.grp_fu_4083_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_ce),.grp_fu_4087_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_din0),.grp_fu_4087_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_din1),.grp_fu_4087_p_dout0(grp_fu_4087_p2),.grp_fu_4087_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_ce),.grp_fu_4091_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_din0),.grp_fu_4091_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_din1),.grp_fu_4091_p_dout0(grp_fu_4091_p2),.grp_fu_4091_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_ce),.grp_fu_4095_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_din0),.grp_fu_4095_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_din1),.grp_fu_4095_p_dout0(grp_fu_4095_p2),.grp_fu_4095_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_ce),.grp_fu_4099_p_din0(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_din0),.grp_fu_4099_p_din1(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_din1),.grp_fu_4099_p_dout0(grp_fu_4099_p2),.grp_fu_4099_p_ce(grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1977(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1977_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1977_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1977_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1977_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1977_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1977_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1977_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1977_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U375(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4039_p0),.din1(grp_fu_4039_p1),.ce(grp_fu_4039_ce),.dout(grp_fu_4039_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4043_p0),.din1(grp_fu_4043_p1),.ce(grp_fu_4043_ce),.dout(grp_fu_4043_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4047_p0),.din1(grp_fu_4047_p1),.ce(grp_fu_4047_ce),.dout(grp_fu_4047_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4051_p0),.din1(grp_fu_4051_p1),.ce(grp_fu_4051_ce),.dout(grp_fu_4051_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4055_p0),.din1(grp_fu_4055_p1),.ce(grp_fu_4055_ce),.dout(grp_fu_4055_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4059_p0),.din1(grp_fu_4059_p1),.ce(grp_fu_4059_ce),.dout(grp_fu_4059_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4063_p0),.din1(grp_fu_4063_p1),.ce(grp_fu_4063_ce),.dout(grp_fu_4063_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4067_p0),.din1(grp_fu_4067_p1),.ce(grp_fu_4067_ce),.dout(grp_fu_4067_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4071_p0),.din1(grp_fu_4071_p1),.ce(grp_fu_4071_ce),.dout(grp_fu_4071_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U384(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4075_p0),.din1(grp_fu_4075_p1),.ce(grp_fu_4075_ce),.dout(grp_fu_4075_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U385(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4079_p0),.din1(grp_fu_4079_p1),.ce(grp_fu_4079_ce),.dout(grp_fu_4079_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U386(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4083_p0),.din1(grp_fu_4083_p1),.ce(grp_fu_4083_ce),.dout(grp_fu_4083_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U387(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4087_p0),.din1(grp_fu_4087_p1),.ce(grp_fu_4087_ce),.dout(grp_fu_4087_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U388(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4091_p0),.din1(grp_fu_4091_p1),.ce(grp_fu_4091_ce),.dout(grp_fu_4091_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U389(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4095_p0),.din1(grp_fu_4095_p1),.ce(grp_fu_4095_ce),.dout(grp_fu_4095_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U390(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4099_p0),.din1(grp_fu_4099_p1),.ce(grp_fu_4099_ce),.dout(grp_fu_4099_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1745_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_bicg_Pipeline_lp1_fu_1745_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1745_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1745_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_1893_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_bicg_Pipeline_lp3_fu_1893_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_1893_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_1893_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1728_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_1728_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1728_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1728_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1977_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_bicg_Pipeline_lpwr_fu_1977_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1977_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1977_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_106 <= add_ln13_reg_2728;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2728 <= add_ln13_fu_2007_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_load_10_reg_3844 <= buff_p_1_q0;
        buff_p_1_load_11_reg_3864 <= buff_p_1_q1;
        buff_p_2_load_10_reg_3849 <= buff_p_2_q0;
        buff_p_2_load_11_reg_3869 <= buff_p_2_q1;
        buff_p_3_load_10_reg_3854 <= buff_p_3_q0;
        buff_p_3_load_11_reg_3874 <= buff_p_3_q1;
        buff_p_load_10_reg_3839 <= buff_p_q0;
        buff_p_load_11_reg_3859 <= buff_p_q1;
        buff_s_out_1_load_14_reg_3804 <= buff_s_out_1_q0;
        buff_s_out_1_load_15_reg_3824 <= buff_s_out_1_q1;
        buff_s_out_2_load_14_reg_3809 <= buff_s_out_2_q0;
        buff_s_out_2_load_15_reg_3829 <= buff_s_out_2_q1;
        buff_s_out_3_load_14_reg_3814 <= buff_s_out_3_q0;
        buff_s_out_3_load_15_reg_3834 <= buff_s_out_3_q1;
        buff_s_out_load_14_reg_3799 <= buff_s_out_q0;
        buff_s_out_load_15_reg_3819 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_load_12_reg_3924 <= buff_p_1_q0;
        buff_p_1_load_13_reg_3944 <= buff_p_1_q1;
        buff_p_2_load_12_reg_3929 <= buff_p_2_q0;
        buff_p_2_load_13_reg_3949 <= buff_p_2_q1;
        buff_p_3_load_12_reg_3934 <= buff_p_3_q0;
        buff_p_3_load_13_reg_3954 <= buff_p_3_q1;
        buff_p_load_12_reg_3919 <= buff_p_q0;
        buff_p_load_13_reg_3939 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_load_14_reg_4004 <= buff_p_1_q0;
        buff_p_1_load_15_reg_4024 <= buff_p_1_q1;
        buff_p_2_load_14_reg_4009 <= buff_p_2_q0;
        buff_p_2_load_15_reg_4029 <= buff_p_2_q1;
        buff_p_3_load_14_reg_4014 <= buff_p_3_q0;
        buff_p_3_load_15_reg_4034 <= buff_p_3_q1;
        buff_p_load_14_reg_3999 <= buff_p_q0;
        buff_p_load_15_reg_4019 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_load_1_reg_3104 <= buff_p_1_q0;
        buff_p_1_load_reg_3084 <= buff_p_1_q1;
        buff_p_2_load_1_reg_3109 <= buff_p_2_q0;
        buff_p_2_load_reg_3089 <= buff_p_2_q1;
        buff_p_3_load_1_reg_3114 <= buff_p_3_q0;
        buff_p_3_load_reg_3094 <= buff_p_3_q1;
        buff_p_load_1_reg_3099 <= buff_p_q0;
        buff_p_load_reg_3079 <= buff_p_q1;
        buff_s_out_1_load_4_reg_3044 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_3064 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_3049 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_3069 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_3054 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_3074 <= buff_s_out_3_q1;
        buff_s_out_load_4_reg_3039 <= buff_s_out_q0;
        buff_s_out_load_5_reg_3059 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_load_2_reg_3244 <= buff_p_1_q0;
        buff_p_1_load_3_reg_3264 <= buff_p_1_q1;
        buff_p_2_load_2_reg_3249 <= buff_p_2_q0;
        buff_p_2_load_3_reg_3269 <= buff_p_2_q1;
        buff_p_3_load_2_reg_3254 <= buff_p_3_q0;
        buff_p_3_load_3_reg_3274 <= buff_p_3_q1;
        buff_p_load_2_reg_3239 <= buff_p_q0;
        buff_p_load_3_reg_3259 <= buff_p_q1;
        buff_s_out_1_load_6_reg_3204 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_3224 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_3209 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_3229 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_3214 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_3234 <= buff_s_out_3_q1;
        buff_s_out_load_6_reg_3199 <= buff_s_out_q0;
        buff_s_out_load_7_reg_3219 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_load_4_reg_3404 <= buff_p_1_q0;
        buff_p_1_load_5_reg_3424 <= buff_p_1_q1;
        buff_p_2_load_4_reg_3409 <= buff_p_2_q0;
        buff_p_2_load_5_reg_3429 <= buff_p_2_q1;
        buff_p_3_load_4_reg_3414 <= buff_p_3_q0;
        buff_p_3_load_5_reg_3434 <= buff_p_3_q1;
        buff_p_load_4_reg_3399 <= buff_p_q0;
        buff_p_load_5_reg_3419 <= buff_p_q1;
        buff_s_out_1_load_8_reg_3364 <= buff_s_out_1_q0;
        buff_s_out_1_load_9_reg_3384 <= buff_s_out_1_q1;
        buff_s_out_2_load_8_reg_3369 <= buff_s_out_2_q0;
        buff_s_out_2_load_9_reg_3389 <= buff_s_out_2_q1;
        buff_s_out_3_load_8_reg_3374 <= buff_s_out_3_q0;
        buff_s_out_3_load_9_reg_3394 <= buff_s_out_3_q1;
        buff_s_out_load_8_reg_3359 <= buff_s_out_q0;
        buff_s_out_load_9_reg_3379 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_load_6_reg_3564 <= buff_p_1_q0;
        buff_p_1_load_7_reg_3584 <= buff_p_1_q1;
        buff_p_2_load_6_reg_3569 <= buff_p_2_q0;
        buff_p_2_load_7_reg_3589 <= buff_p_2_q1;
        buff_p_3_load_6_reg_3574 <= buff_p_3_q0;
        buff_p_3_load_7_reg_3594 <= buff_p_3_q1;
        buff_p_load_6_reg_3559 <= buff_p_q0;
        buff_p_load_7_reg_3579 <= buff_p_q1;
        buff_s_out_1_load_10_reg_3524 <= buff_s_out_1_q0;
        buff_s_out_1_load_11_reg_3544 <= buff_s_out_1_q1;
        buff_s_out_2_load_10_reg_3529 <= buff_s_out_2_q0;
        buff_s_out_2_load_11_reg_3549 <= buff_s_out_2_q1;
        buff_s_out_3_load_10_reg_3534 <= buff_s_out_3_q0;
        buff_s_out_3_load_11_reg_3554 <= buff_s_out_3_q1;
        buff_s_out_load_10_reg_3519 <= buff_s_out_q0;
        buff_s_out_load_11_reg_3539 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_load_8_reg_3724 <= buff_p_1_q0;
        buff_p_1_load_9_reg_3744 <= buff_p_1_q1;
        buff_p_2_load_8_reg_3729 <= buff_p_2_q0;
        buff_p_2_load_9_reg_3749 <= buff_p_2_q1;
        buff_p_3_load_8_reg_3734 <= buff_p_3_q0;
        buff_p_3_load_9_reg_3754 <= buff_p_3_q1;
        buff_p_load_8_reg_3719 <= buff_p_q0;
        buff_p_load_9_reg_3739 <= buff_p_q1;
        buff_s_out_1_load_12_reg_3684 <= buff_s_out_1_q0;
        buff_s_out_1_load_13_reg_3704 <= buff_s_out_1_q1;
        buff_s_out_2_load_12_reg_3689 <= buff_s_out_2_q0;
        buff_s_out_2_load_13_reg_3709 <= buff_s_out_2_q1;
        buff_s_out_3_load_12_reg_3694 <= buff_s_out_3_q0;
        buff_s_out_3_load_13_reg_3714 <= buff_s_out_3_q1;
        buff_s_out_load_12_reg_3679 <= buff_s_out_q0;
        buff_s_out_load_13_reg_3699 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_load_1_reg_2864 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2844 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_2869 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_2849 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_2874 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_2854 <= buff_s_out_3_q1;
        buff_s_out_load_1_reg_2859 <= buff_s_out_q0;
        buff_s_out_load_reg_2839 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_2_reg_2924 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2944 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_2929 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_2949 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_2934 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_2954 <= buff_s_out_3_q1;
        buff_s_out_load_2_reg_2919 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2939 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_2791 <= trunc_ln13_fu_2019_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
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
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1977_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1728_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_bicg_Pipeline_lpwr_fu_1977_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_bicg_Pipeline_lpwr_fu_1977_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce10 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce11 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce12 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce13 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce14 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce15 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce9 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce10 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce11 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce12 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce13 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce14 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce15 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce3 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce4 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce5 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce6 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce7 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce8 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce9 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce10 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce11 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce12 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce13 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce14 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce15 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce3 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce4 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce5 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce6 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce7 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce8 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce9 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1745_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce10 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce11 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce12 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce13 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce14 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce15 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce9 = grp_bicg_Pipeline_lp3_fu_1893_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1728_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_address0_local = zext_ln5_fu_2035_p1;
    end else begin
        buff_p_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_address1_local = 64'd0;
    end else begin
        buff_p_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_2_address0_local = zext_ln5_fu_2035_p1;
    end else begin
        buff_p_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_2_address1_local = 64'd0;
    end else begin
        buff_p_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_2_ce1_local = 1'b1;
    end else begin
        buff_p_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_3_address0_local = zext_ln5_fu_2035_p1;
    end else begin
        buff_p_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_3_address1_local = 64'd0;
    end else begin
        buff_p_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_3_ce1_local = 1'b1;
    end else begin
        buff_p_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_address0_local = zext_ln5_fu_2035_p1;
    end else begin
        buff_p_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_address1_local = 64'd0;
    end else begin
        buff_p_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_ce1;
    end else begin
        buff_q_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_ce1;
    end else begin
        buff_q_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_1893_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2023_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_1_ce0;
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
    if (((trunc_ln13_1_fu_2023_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_2_ce0;
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
    if (((trunc_ln13_1_fu_2023_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_3_ce0;
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
    if (((trunc_ln13_1_fu_2023_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_2035_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1745_buff_r_ce0;
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
    if (((trunc_ln13_1_fu_2023_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_14_reg_3644;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_12_reg_3484;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_10_reg_3324;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_8_reg_3164;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_3004;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2884;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2804;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address0_local = 64'd0;
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
        buff_s_out_1_address0_local = zext_ln5_fu_2035_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_15_reg_3664;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_13_reg_3504;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_11_reg_3344;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_9_reg_3184;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_3024;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2904;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2824;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address1_local = 64'd1;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_5769_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_4961_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_4153_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_3345_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_2537_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_1729_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_921_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_113_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_6173_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_5365_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_4557_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_3749_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_2941_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_2133_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_1325_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_517_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2023_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_14_reg_3649;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_12_reg_3489;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_10_reg_3329;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_8_reg_3169;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_3009;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_2889;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_2809;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_address0_local = zext_ln5_fu_2035_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_15_reg_3669;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_13_reg_3509;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_11_reg_3349;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_9_reg_3189;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_3029;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_2909;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_2829;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address1_local = 64'd0;
    end else begin
        buff_s_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_5870_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_5062_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_4254_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_3446_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_2638_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_1830_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_1022_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_214_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_6274_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_5466_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_4658_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_3850_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_3042_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_2234_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_1426_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_618_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2023_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_14_reg_3654;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_12_reg_3494;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_10_reg_3334;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_8_reg_3174;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_3014;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_2894;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_2814;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_address0_local = zext_ln5_fu_2035_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_15_reg_3674;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_13_reg_3514;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_11_reg_3354;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_9_reg_3194;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_3034;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_2914;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_2834;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address1_local = 64'd0;
    end else begin
        buff_s_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_5971_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_5163_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_4355_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_3547_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_2739_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_1931_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_1123_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_315_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_6375_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_5567_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_4759_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_3951_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_3143_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_2335_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_1527_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_719_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2023_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address0_local = buff_s_out_addr_14_reg_3639;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address0_local = buff_s_out_addr_12_reg_3479;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address0_local = buff_s_out_addr_10_reg_3319;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address0_local = buff_s_out_addr_8_reg_3159;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_2999;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2879;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2799;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address0_local = 64'd0;
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
        buff_s_out_address0_local = zext_ln5_fu_2035_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address1_local = buff_s_out_addr_15_reg_3659;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address1_local = buff_s_out_addr_13_reg_3499;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address1_local = buff_s_out_addr_11_reg_3339;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address1_local = buff_s_out_addr_9_reg_3179;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_3019;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2899;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2819;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address1_local = 64'd1;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1977_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_5668_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_4860_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_4052_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_3244_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_2436_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_1628_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add_820_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1745_add12_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_6072_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_5264_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_4456_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_3648_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_2840_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_2032_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_1224_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1745_add_416_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2023_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4039_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4039_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_ce;
    end else begin
        grp_fu_4039_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4039_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4039_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_din0;
    end else begin
        grp_fu_4039_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4039_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4039_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4039_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4039_p_din1;
    end else begin
        grp_fu_4039_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4043_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4043_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_ce;
    end else begin
        grp_fu_4043_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4043_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4043_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_din0;
    end else begin
        grp_fu_4043_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4043_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4043_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4043_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4043_p_din1;
    end else begin
        grp_fu_4043_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4047_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4047_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_ce;
    end else begin
        grp_fu_4047_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4047_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4047_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_din0;
    end else begin
        grp_fu_4047_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4047_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4047_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4047_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4047_p_din1;
    end else begin
        grp_fu_4047_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4051_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4051_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_ce;
    end else begin
        grp_fu_4051_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4051_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4051_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_din0;
    end else begin
        grp_fu_4051_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4051_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4051_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4051_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4051_p_din1;
    end else begin
        grp_fu_4051_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4055_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4055_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_ce;
    end else begin
        grp_fu_4055_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4055_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4055_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_din0;
    end else begin
        grp_fu_4055_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4055_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4055_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4055_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4055_p_din1;
    end else begin
        grp_fu_4055_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4059_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4059_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_ce;
    end else begin
        grp_fu_4059_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4059_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4059_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_din0;
    end else begin
        grp_fu_4059_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4059_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4059_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4059_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4059_p_din1;
    end else begin
        grp_fu_4059_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4063_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4063_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_ce;
    end else begin
        grp_fu_4063_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4063_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4063_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_din0;
    end else begin
        grp_fu_4063_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4063_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4063_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4063_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4063_p_din1;
    end else begin
        grp_fu_4063_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4067_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4067_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_ce;
    end else begin
        grp_fu_4067_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4067_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4067_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_din0;
    end else begin
        grp_fu_4067_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4067_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4067_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4067_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4067_p_din1;
    end else begin
        grp_fu_4067_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4071_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4071_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_ce;
    end else begin
        grp_fu_4071_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4071_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4071_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_din0;
    end else begin
        grp_fu_4071_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4071_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4071_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4071_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4071_p_din1;
    end else begin
        grp_fu_4071_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4075_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4075_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_ce;
    end else begin
        grp_fu_4075_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4075_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4075_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_din0;
    end else begin
        grp_fu_4075_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4075_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4075_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4075_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4075_p_din1;
    end else begin
        grp_fu_4075_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4079_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4079_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_ce;
    end else begin
        grp_fu_4079_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4079_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4079_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_din0;
    end else begin
        grp_fu_4079_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4079_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4079_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4079_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4079_p_din1;
    end else begin
        grp_fu_4079_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4083_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4083_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_ce;
    end else begin
        grp_fu_4083_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4083_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4083_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_din0;
    end else begin
        grp_fu_4083_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4083_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4083_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4083_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4083_p_din1;
    end else begin
        grp_fu_4083_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4087_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4087_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_ce;
    end else begin
        grp_fu_4087_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4087_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4087_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_din0;
    end else begin
        grp_fu_4087_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4087_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4087_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4087_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4087_p_din1;
    end else begin
        grp_fu_4087_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4091_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4091_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_ce;
    end else begin
        grp_fu_4091_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4091_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4091_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_din0;
    end else begin
        grp_fu_4091_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4091_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4091_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4091_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4091_p_din1;
    end else begin
        grp_fu_4091_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4095_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4095_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_ce;
    end else begin
        grp_fu_4095_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4095_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4095_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_din0;
    end else begin
        grp_fu_4095_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4095_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4095_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4095_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4095_p_din1;
    end else begin
        grp_fu_4095_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4099_ce = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4099_ce = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_ce;
    end else begin
        grp_fu_4099_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4099_p0 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4099_p0 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_din0;
    end else begin
        grp_fu_4099_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4099_p1 = grp_bicg_Pipeline_lp3_fu_1893_grp_fu_4099_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4099_p1 = grp_bicg_Pipeline_lp1_fu_1745_grp_fu_4099_p_din1;
    end else begin
        grp_fu_4099_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1977_q_out_write;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1977_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_2001_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_bicg_Pipeline_lprd_2_fu_1728_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1745_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1893_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
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
            if (((1'b1 == ap_CS_fsm_state23) & (grp_bicg_Pipeline_lpwr_fu_1977_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1728_A_3_ce0;
assign add_ln13_fu_2007_p2 = (i_fu_106 + 7'd1);
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_2055_p1 = p_q0;
assign bitcast_ln15_fu_2063_p1 = r_q0;
assign buff_s_out_1_addr_10_reg_3324 = 64'd10;
assign buff_s_out_1_addr_11_reg_3344 = 64'd11;
assign buff_s_out_1_addr_12_reg_3484 = 64'd12;
assign buff_s_out_1_addr_13_reg_3504 = 64'd13;
assign buff_s_out_1_addr_14_reg_3644 = 64'd14;
assign buff_s_out_1_addr_15_reg_3664 = 64'd15;
assign buff_s_out_1_addr_2_reg_2804 = 64'd2;
assign buff_s_out_1_addr_3_reg_2824 = 64'd3;
assign buff_s_out_1_addr_4_reg_2884 = 64'd4;
assign buff_s_out_1_addr_5_reg_2904 = 64'd5;
assign buff_s_out_1_addr_6_reg_3004 = 64'd6;
assign buff_s_out_1_addr_7_reg_3024 = 64'd7;
assign buff_s_out_1_addr_8_reg_3164 = 64'd8;
assign buff_s_out_1_addr_9_reg_3184 = 64'd9;
assign buff_s_out_2_addr_10_reg_3329 = 64'd10;
assign buff_s_out_2_addr_11_reg_3349 = 64'd11;
assign buff_s_out_2_addr_12_reg_3489 = 64'd12;
assign buff_s_out_2_addr_13_reg_3509 = 64'd13;
assign buff_s_out_2_addr_14_reg_3649 = 64'd14;
assign buff_s_out_2_addr_15_reg_3669 = 64'd15;
assign buff_s_out_2_addr_2_reg_2809 = 64'd2;
assign buff_s_out_2_addr_3_reg_2829 = 64'd3;
assign buff_s_out_2_addr_4_reg_2889 = 64'd4;
assign buff_s_out_2_addr_5_reg_2909 = 64'd5;
assign buff_s_out_2_addr_6_reg_3009 = 64'd6;
assign buff_s_out_2_addr_7_reg_3029 = 64'd7;
assign buff_s_out_2_addr_8_reg_3169 = 64'd8;
assign buff_s_out_2_addr_9_reg_3189 = 64'd9;
assign buff_s_out_3_addr_10_reg_3334 = 64'd10;
assign buff_s_out_3_addr_11_reg_3354 = 64'd11;
assign buff_s_out_3_addr_12_reg_3494 = 64'd12;
assign buff_s_out_3_addr_13_reg_3514 = 64'd13;
assign buff_s_out_3_addr_14_reg_3654 = 64'd14;
assign buff_s_out_3_addr_15_reg_3674 = 64'd15;
assign buff_s_out_3_addr_2_reg_2814 = 64'd2;
assign buff_s_out_3_addr_3_reg_2834 = 64'd3;
assign buff_s_out_3_addr_4_reg_2894 = 64'd4;
assign buff_s_out_3_addr_5_reg_2914 = 64'd5;
assign buff_s_out_3_addr_6_reg_3014 = 64'd6;
assign buff_s_out_3_addr_7_reg_3034 = 64'd7;
assign buff_s_out_3_addr_8_reg_3174 = 64'd8;
assign buff_s_out_3_addr_9_reg_3194 = 64'd9;
assign buff_s_out_addr_10_reg_3319 = 64'd10;
assign buff_s_out_addr_11_reg_3339 = 64'd11;
assign buff_s_out_addr_12_reg_3479 = 64'd12;
assign buff_s_out_addr_13_reg_3499 = 64'd13;
assign buff_s_out_addr_14_reg_3639 = 64'd14;
assign buff_s_out_addr_15_reg_3659 = 64'd15;
assign buff_s_out_addr_2_reg_2799 = 64'd2;
assign buff_s_out_addr_3_reg_2819 = 64'd3;
assign buff_s_out_addr_4_reg_2879 = 64'd4;
assign buff_s_out_addr_5_reg_2899 = 64'd5;
assign buff_s_out_addr_6_reg_2999 = 64'd6;
assign buff_s_out_addr_7_reg_3019 = 64'd7;
assign buff_s_out_addr_8_reg_3159 = 64'd8;
assign buff_s_out_addr_9_reg_3179 = 64'd9;
assign grp_bicg_Pipeline_lp1_fu_1745_ap_start = grp_bicg_Pipeline_lp1_fu_1745_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_1893_ap_start = grp_bicg_Pipeline_lp3_fu_1893_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1728_ap_start = grp_bicg_Pipeline_lprd_2_fu_1728_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1977_ap_start = grp_bicg_Pipeline_lpwr_fu_1977_ap_start_reg;
assign icmp_ln13_fu_2001_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_2026_p4 = {{i_fu_106[5:2]}};
assign p_address0 = zext_ln13_fu_2013_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1977_q_out_din;
assign r_address0 = zext_ln13_fu_2013_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1977_s_out_din;
assign trunc_ln13_1_fu_2023_p1 = i_fu_106[1:0];
assign trunc_ln13_fu_2019_p1 = i_fu_106[5:0];
assign zext_ln13_fu_2013_p1 = i_fu_106;
assign zext_ln5_fu_2035_p1 = lshr_ln5_fu_2026_p4;
endmodule 