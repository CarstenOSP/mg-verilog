module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
parameter    ap_ST_fsm_state1 = 25'd1;
parameter    ap_ST_fsm_state2 = 25'd2;
parameter    ap_ST_fsm_state3 = 25'd4;
parameter    ap_ST_fsm_state4 = 25'd8;
parameter    ap_ST_fsm_state5 = 25'd16;
parameter    ap_ST_fsm_state6 = 25'd32;
parameter    ap_ST_fsm_state7 = 25'd64;
parameter    ap_ST_fsm_state8 = 25'd128;
parameter    ap_ST_fsm_state9 = 25'd256;
parameter    ap_ST_fsm_state10 = 25'd512;
parameter    ap_ST_fsm_state11 = 25'd1024;
parameter    ap_ST_fsm_state12 = 25'd2048;
parameter    ap_ST_fsm_state13 = 25'd4096;
parameter    ap_ST_fsm_state14 = 25'd8192;
parameter    ap_ST_fsm_state15 = 25'd16384;
parameter    ap_ST_fsm_state16 = 25'd32768;
parameter    ap_ST_fsm_state17 = 25'd65536;
parameter    ap_ST_fsm_state18 = 25'd131072;
parameter    ap_ST_fsm_state19 = 25'd262144;
parameter    ap_ST_fsm_state20 = 25'd524288;
parameter    ap_ST_fsm_state21 = 25'd1048576;
parameter    ap_ST_fsm_state22 = 25'd2097152;
parameter    ap_ST_fsm_state23 = 25'd4194304;
parameter    ap_ST_fsm_state24 = 25'd8388608;
parameter    ap_ST_fsm_state25 = 25'd16777216;
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
output  [5:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [31:0] y_out_din;
input   y_out_full_n;
output   y_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_out_write;
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_1920_p2;
reg   [6:0] add_ln11_reg_2628;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1931_p1;
reg   [5:0] trunc_ln11_reg_2678;
wire    ap_CS_fsm_state3;
reg   [31:0] buff_x_load_reg_2686;
wire    ap_CS_fsm_state5;
reg   [31:0] buff_x_1_load_reg_2691;
reg   [31:0] buff_x_2_load_reg_2696;
reg   [31:0] buff_x_3_load_reg_2701;
reg   [31:0] buff_x_load_1_reg_2706;
reg   [31:0] buff_x_1_load_1_reg_2711;
reg   [31:0] buff_x_2_load_1_reg_2716;
reg   [31:0] buff_x_3_load_1_reg_2721;
reg   [31:0] buff_x_load_2_reg_2766;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_x_1_load_2_reg_2771;
reg   [31:0] buff_x_2_load_2_reg_2776;
reg   [31:0] buff_x_3_load_2_reg_2781;
reg   [31:0] buff_x_load_3_reg_2786;
reg   [31:0] buff_x_1_load_3_reg_2791;
reg   [31:0] buff_x_2_load_3_reg_2796;
reg   [31:0] buff_x_3_load_3_reg_2801;
reg   [31:0] buff_x_load_4_reg_2894;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_x_1_load_4_reg_2899;
reg   [31:0] buff_x_2_load_4_reg_2904;
reg   [31:0] buff_x_3_load_4_reg_2909;
reg   [31:0] buff_x_load_5_reg_2914;
reg   [31:0] buff_x_1_load_5_reg_2919;
reg   [31:0] buff_x_2_load_5_reg_2924;
reg   [31:0] buff_x_3_load_5_reg_2929;
wire   [3:0] buff_y_out_addr_3_reg_2974;
wire   [3:0] buff_y_out_1_addr_3_reg_2979;
wire   [3:0] buff_y_out_2_addr_3_reg_2984;
wire   [3:0] buff_y_out_3_addr_3_reg_2989;
wire   [3:0] buff_y_out_addr_4_reg_2994;
wire   [3:0] buff_y_out_1_addr_4_reg_2999;
wire   [3:0] buff_y_out_2_addr_4_reg_3004;
wire   [3:0] buff_y_out_3_addr_4_reg_3009;
reg   [31:0] buff_y_out_load_reg_3014;
reg   [31:0] buff_y_out_1_load_reg_3019;
reg   [31:0] buff_y_out_2_load_reg_3024;
reg   [31:0] buff_y_out_3_load_reg_3029;
reg   [31:0] buff_y_out_load_1_reg_3034;
reg   [31:0] buff_y_out_1_load_1_reg_3039;
reg   [31:0] buff_y_out_2_load_1_reg_3044;
reg   [31:0] buff_y_out_3_load_1_reg_3049;
reg   [31:0] buff_x_load_6_reg_3054;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_x_1_load_6_reg_3059;
reg   [31:0] buff_x_2_load_6_reg_3064;
reg   [31:0] buff_x_3_load_6_reg_3069;
reg   [31:0] buff_x_load_7_reg_3074;
reg   [31:0] buff_x_1_load_7_reg_3079;
reg   [31:0] buff_x_2_load_7_reg_3084;
reg   [31:0] buff_x_3_load_7_reg_3089;
wire   [3:0] buff_y_out_addr_5_reg_3134;
wire   [3:0] buff_y_out_1_addr_5_reg_3139;
wire   [3:0] buff_y_out_2_addr_5_reg_3144;
wire   [3:0] buff_y_out_3_addr_5_reg_3149;
wire   [3:0] buff_y_out_addr_6_reg_3154;
wire   [3:0] buff_y_out_1_addr_6_reg_3159;
wire   [3:0] buff_y_out_2_addr_6_reg_3164;
wire   [3:0] buff_y_out_3_addr_6_reg_3169;
reg   [31:0] buff_y_out_load_2_reg_3174;
reg   [31:0] buff_y_out_1_load_2_reg_3179;
reg   [31:0] buff_y_out_2_load_2_reg_3184;
reg   [31:0] buff_y_out_3_load_2_reg_3189;
reg   [31:0] buff_y_out_load_3_reg_3194;
reg   [31:0] buff_y_out_1_load_3_reg_3199;
reg   [31:0] buff_y_out_2_load_3_reg_3204;
reg   [31:0] buff_y_out_3_load_3_reg_3209;
reg   [31:0] buff_x_load_8_reg_3214;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_x_1_load_8_reg_3219;
reg   [31:0] buff_x_2_load_8_reg_3224;
reg   [31:0] buff_x_3_load_8_reg_3229;
reg   [31:0] buff_x_load_9_reg_3234;
reg   [31:0] buff_x_1_load_9_reg_3239;
reg   [31:0] buff_x_2_load_9_reg_3244;
reg   [31:0] buff_x_3_load_9_reg_3249;
wire   [3:0] buff_y_out_addr_7_reg_3294;
wire   [3:0] buff_y_out_1_addr_7_reg_3299;
wire   [3:0] buff_y_out_2_addr_7_reg_3304;
wire   [3:0] buff_y_out_3_addr_7_reg_3309;
wire   [3:0] buff_y_out_addr_8_reg_3314;
wire   [3:0] buff_y_out_1_addr_8_reg_3319;
wire   [3:0] buff_y_out_2_addr_8_reg_3324;
wire   [3:0] buff_y_out_3_addr_8_reg_3329;
reg   [31:0] buff_y_out_load_4_reg_3334;
reg   [31:0] buff_y_out_1_load_4_reg_3339;
reg   [31:0] buff_y_out_2_load_4_reg_3344;
reg   [31:0] buff_y_out_3_load_4_reg_3349;
reg   [31:0] buff_y_out_load_5_reg_3354;
reg   [31:0] buff_y_out_1_load_5_reg_3359;
reg   [31:0] buff_y_out_2_load_5_reg_3364;
reg   [31:0] buff_y_out_3_load_5_reg_3369;
reg   [31:0] buff_x_load_10_reg_3374;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_x_1_load_10_reg_3379;
reg   [31:0] buff_x_2_load_10_reg_3384;
reg   [31:0] buff_x_3_load_10_reg_3389;
reg   [31:0] buff_x_load_11_reg_3394;
reg   [31:0] buff_x_1_load_11_reg_3399;
reg   [31:0] buff_x_2_load_11_reg_3404;
reg   [31:0] buff_x_3_load_11_reg_3409;
wire   [3:0] buff_y_out_addr_9_reg_3454;
wire   [3:0] buff_y_out_1_addr_9_reg_3459;
wire   [3:0] buff_y_out_2_addr_9_reg_3464;
wire   [3:0] buff_y_out_3_addr_9_reg_3469;
wire   [3:0] buff_y_out_addr_10_reg_3474;
wire   [3:0] buff_y_out_1_addr_10_reg_3479;
wire   [3:0] buff_y_out_2_addr_10_reg_3484;
wire   [3:0] buff_y_out_3_addr_10_reg_3489;
reg   [31:0] buff_y_out_load_6_reg_3494;
reg   [31:0] buff_y_out_1_load_6_reg_3499;
reg   [31:0] buff_y_out_2_load_6_reg_3504;
reg   [31:0] buff_y_out_3_load_6_reg_3509;
reg   [31:0] buff_y_out_load_7_reg_3514;
reg   [31:0] buff_y_out_1_load_7_reg_3519;
reg   [31:0] buff_y_out_2_load_7_reg_3524;
reg   [31:0] buff_y_out_3_load_7_reg_3529;
reg   [31:0] buff_x_load_12_reg_3534;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_x_1_load_12_reg_3539;
reg   [31:0] buff_x_2_load_12_reg_3544;
reg   [31:0] buff_x_3_load_12_reg_3549;
reg   [31:0] buff_x_load_13_reg_3554;
reg   [31:0] buff_x_1_load_13_reg_3559;
reg   [31:0] buff_x_2_load_13_reg_3564;
reg   [31:0] buff_x_3_load_13_reg_3569;
wire   [3:0] buff_y_out_addr_11_reg_3614;
wire   [3:0] buff_y_out_1_addr_11_reg_3619;
wire   [3:0] buff_y_out_2_addr_11_reg_3624;
wire   [3:0] buff_y_out_3_addr_11_reg_3629;
wire   [3:0] buff_y_out_addr_12_reg_3634;
wire   [3:0] buff_y_out_1_addr_12_reg_3639;
wire   [3:0] buff_y_out_2_addr_12_reg_3644;
wire   [3:0] buff_y_out_3_addr_12_reg_3649;
reg   [31:0] buff_y_out_load_8_reg_3654;
reg   [31:0] buff_y_out_1_load_8_reg_3659;
reg   [31:0] buff_y_out_2_load_8_reg_3664;
reg   [31:0] buff_y_out_3_load_8_reg_3669;
reg   [31:0] buff_y_out_load_9_reg_3674;
reg   [31:0] buff_y_out_1_load_9_reg_3679;
reg   [31:0] buff_y_out_2_load_9_reg_3684;
reg   [31:0] buff_y_out_3_load_9_reg_3689;
reg   [31:0] buff_x_load_14_reg_3694;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_x_1_load_14_reg_3699;
reg   [31:0] buff_x_2_load_14_reg_3704;
reg   [31:0] buff_x_3_load_14_reg_3709;
reg   [31:0] buff_x_load_15_reg_3714;
reg   [31:0] buff_x_1_load_15_reg_3719;
reg   [31:0] buff_x_2_load_15_reg_3724;
reg   [31:0] buff_x_3_load_15_reg_3729;
wire   [3:0] buff_y_out_addr_13_reg_3734;
wire   [3:0] buff_y_out_1_addr_13_reg_3739;
wire   [3:0] buff_y_out_2_addr_13_reg_3744;
wire   [3:0] buff_y_out_3_addr_13_reg_3749;
wire   [3:0] buff_y_out_addr_14_reg_3754;
wire   [3:0] buff_y_out_1_addr_14_reg_3759;
wire   [3:0] buff_y_out_2_addr_14_reg_3764;
wire   [3:0] buff_y_out_3_addr_14_reg_3769;
reg   [31:0] buff_y_out_load_10_reg_3774;
reg   [31:0] buff_y_out_1_load_10_reg_3779;
reg   [31:0] buff_y_out_2_load_10_reg_3784;
reg   [31:0] buff_y_out_3_load_10_reg_3789;
reg   [31:0] buff_y_out_load_11_reg_3794;
reg   [31:0] buff_y_out_1_load_11_reg_3799;
reg   [31:0] buff_y_out_2_load_11_reg_3804;
reg   [31:0] buff_y_out_3_load_11_reg_3809;
wire   [3:0] buff_y_out_addr_15_reg_3814;
wire    ap_CS_fsm_state13;
wire   [3:0] buff_y_out_1_addr_15_reg_3819;
wire   [3:0] buff_y_out_2_addr_15_reg_3824;
wire   [3:0] buff_y_out_3_addr_15_reg_3829;
wire   [3:0] buff_y_out_addr_16_reg_3834;
wire   [3:0] buff_y_out_1_addr_16_reg_3839;
wire   [3:0] buff_y_out_2_addr_16_reg_3844;
wire   [3:0] buff_y_out_3_addr_16_reg_3849;
reg   [31:0] buff_y_out_load_12_reg_3854;
reg   [31:0] buff_y_out_1_load_12_reg_3859;
reg   [31:0] buff_y_out_2_load_12_reg_3864;
reg   [31:0] buff_y_out_3_load_12_reg_3869;
reg   [31:0] buff_y_out_load_13_reg_3874;
reg   [31:0] buff_y_out_1_load_13_reg_3879;
reg   [31:0] buff_y_out_2_load_13_reg_3884;
reg   [31:0] buff_y_out_3_load_13_reg_3889;
reg   [31:0] buff_y_out_load_14_reg_3894;
wire    ap_CS_fsm_state14;
reg   [31:0] buff_y_out_1_load_14_reg_3899;
reg   [31:0] buff_y_out_2_load_14_reg_3904;
reg   [31:0] buff_y_out_3_load_14_reg_3909;
reg   [31:0] buff_y_out_load_15_reg_3914;
reg   [31:0] buff_y_out_1_load_15_reg_3919;
reg   [31:0] buff_y_out_2_load_15_reg_3924;
reg   [31:0] buff_y_out_3_load_15_reg_3929;
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
reg   [9:0] buff_A_address3;
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
reg   [9:0] buff_A_1_address2;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg   [9:0] buff_A_1_address3;
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
reg   [9:0] buff_A_2_address2;
reg    buff_A_2_ce2;
wire   [31:0] buff_A_2_q2;
reg   [9:0] buff_A_2_address3;
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
reg   [9:0] buff_A_3_address2;
reg    buff_A_3_ce2;
wire   [31:0] buff_A_3_q2;
reg   [9:0] buff_A_3_address3;
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
wire   [31:0] buff_x_q0;
wire   [31:0] buff_x_q1;
wire   [31:0] buff_x_1_q0;
wire   [31:0] buff_x_1_q1;
wire   [31:0] buff_x_2_q0;
wire   [31:0] buff_x_2_q1;
wire   [31:0] buff_x_3_q0;
wire   [31:0] buff_x_3_q1;
reg   [3:0] buff_y_out_address0;
reg    buff_y_out_ce0;
wire   [31:0] buff_y_out_q0;
wire   [31:0] buff_y_out_q1;
reg   [3:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
wire   [31:0] buff_y_out_1_q0;
wire   [31:0] buff_y_out_1_q1;
reg   [3:0] buff_y_out_2_address0;
reg    buff_y_out_2_ce0;
wire   [31:0] buff_y_out_2_q0;
wire   [31:0] buff_y_out_2_q1;
reg   [3:0] buff_y_out_3_address0;
reg    buff_y_out_3_ce0;
wire   [31:0] buff_y_out_3_q0;
wire   [31:0] buff_y_out_3_q1;
reg   [3:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg    tmp1_ce1;
wire   [31:0] tmp1_q1;
reg   [3:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg    tmp1_1_ce1;
wire   [31:0] tmp1_1_q1;
reg   [3:0] tmp1_2_address0;
reg    tmp1_2_ce0;
reg    tmp1_2_we0;
reg   [31:0] tmp1_2_d0;
wire   [31:0] tmp1_2_q0;
reg    tmp1_2_ce1;
wire   [31:0] tmp1_2_q1;
reg   [3:0] tmp1_3_address0;
reg    tmp1_3_ce0;
reg    tmp1_3_we0;
reg   [31:0] tmp1_3_d0;
wire   [31:0] tmp1_3_q0;
reg    tmp1_3_ce1;
wire   [31:0] tmp1_3_q1;
wire    grp_atax_Pipeline_lprd_2_fu_1647_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1647_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1647_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1647_ap_ready;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_A_0_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_A_3_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_d0;
wire    grp_atax_Pipeline_lp1_fu_1664_ap_start;
wire    grp_atax_Pipeline_lp1_fu_1664_ap_done;
wire    grp_atax_Pipeline_lp1_fu_1664_ap_idle;
wire    grp_atax_Pipeline_lp1_fu_1664_ap_ready;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce1;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address2;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce2;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address3;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce3;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address4;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce4;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address5;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce5;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address6;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce6;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address7;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce7;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address8;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce8;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address9;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce9;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address10;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce10;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address11;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce11;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address12;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce12;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address13;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce13;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address14;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce14;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_address15;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_ce15;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce1;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address2;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce2;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address3;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce3;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address4;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce4;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address5;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce5;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address6;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce6;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address7;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce7;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address8;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce8;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address9;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce9;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address10;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce10;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address11;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce11;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address12;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce12;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address13;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce13;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address14;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce14;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address15;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce15;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce1;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address2;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce2;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address3;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce3;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address4;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce4;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address5;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce5;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address6;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce6;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address7;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce7;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address8;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce8;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address9;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce9;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address10;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce10;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address11;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce11;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address12;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce12;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address13;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce13;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address14;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce14;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address15;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce15;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce1;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address2;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce2;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address3;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce3;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address4;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce4;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address5;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce5;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address6;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce6;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address7;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce7;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address8;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce8;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address9;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce9;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address10;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce10;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address11;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce11;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address12;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce12;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address13;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce13;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address14;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce14;
wire   [9:0] grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address15;
wire    grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce15;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_3_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_3_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_3_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_2_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_2_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_2_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_1_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_1_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_address0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_1664_tmp1_address1;
wire    grp_atax_Pipeline_lp1_fu_1664_tmp1_ce1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_ce;
wire    grp_atax_Pipeline_lp3_fu_1748_ap_start;
wire    grp_atax_Pipeline_lp3_fu_1748_ap_done;
wire    grp_atax_Pipeline_lp3_fu_1748_ap_idle;
wire    grp_atax_Pipeline_lp3_fu_1748_ap_ready;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_address1;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_address2;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_ce2;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_address3;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_ce3;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address2;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce2;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address3;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce3;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address2;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce2;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address3;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce3;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address2;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce2;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address3;
wire    grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce3;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1748_tmp1_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_tmp1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1748_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_tmp1_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1748_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_tmp1_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1748_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1748_tmp1_3_ce0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_6385_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_6385_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_6284_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_6284_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_6183_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_6183_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_6082_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_6082_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5981_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5981_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5880_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5880_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5779_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5779_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5678_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5678_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5577_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5577_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5476_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5476_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5375_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5375_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5274_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5274_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5173_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5173_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_5072_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_5072_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4971_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4971_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4870_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4870_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4769_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4769_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4668_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4668_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4567_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4567_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4466_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4466_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4365_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4365_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4264_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4264_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4163_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4163_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_4062_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_4062_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3961_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3961_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3860_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3860_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3759_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3759_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3658_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3658_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3557_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3557_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3456_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3456_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3355_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3355_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3254_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3254_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3153_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3153_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_3052_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_3052_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2951_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2951_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2850_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2850_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2749_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2749_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2648_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2648_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2547_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2547_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2446_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2446_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2345_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2345_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2244_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2244_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2143_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2143_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_2042_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_2042_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1941_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1941_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1840_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1840_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1739_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1739_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1638_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1638_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1537_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1537_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1436_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1436_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1335_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1335_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1234_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1234_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1133_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1133_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_1032_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_1032_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_931_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_931_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_830_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_830_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_729_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_729_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_628_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_628_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_527_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_527_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_426_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_426_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_325_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_325_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_224_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_224_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add58_123_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add58_123_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_add5822_out;
wire    grp_atax_Pipeline_lp3_fu_1748_add5822_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1896_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_y_out_write;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_1_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_2_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_3_ce0;
reg    grp_atax_Pipeline_lprd_2_fu_1647_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp1_fu_1664_ap_start_reg;
reg    grp_atax_Pipeline_lp3_fu_1748_ap_start_reg;
wire    ap_CS_fsm_state15;
reg    grp_atax_Pipeline_lpwr_1_fu_1896_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire   [63:0] zext_ln11_fu_1926_p1;
wire   [0:0] icmp_ln11_fu_1914_p2;
wire   [63:0] zext_ln5_fu_1947_p1;
reg   [6:0] i_fu_102;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
reg    x_ce0_local;
reg    buff_x_ce1_local;
reg   [3:0] buff_x_address1_local;
reg    buff_x_ce0_local;
reg   [3:0] buff_x_address0_local;
reg    buff_x_we0_local;
wire   [1:0] trunc_ln11_1_fu_1935_p1;
wire   [31:0] bitcast_ln12_fu_1963_p1;
reg    buff_x_1_ce1_local;
reg   [3:0] buff_x_1_address1_local;
reg    buff_x_1_ce0_local;
reg   [3:0] buff_x_1_address0_local;
reg    buff_x_1_we0_local;
reg    buff_x_2_ce1_local;
reg   [3:0] buff_x_2_address1_local;
reg    buff_x_2_ce0_local;
reg   [3:0] buff_x_2_address0_local;
reg    buff_x_2_we0_local;
reg    buff_x_3_ce1_local;
reg   [3:0] buff_x_3_address1_local;
reg    buff_x_3_ce0_local;
reg   [3:0] buff_x_3_address0_local;
reg    buff_x_3_we0_local;
reg    buff_y_out_2_we0_local;
reg   [31:0] buff_y_out_2_d0_local;
reg    buff_y_out_2_ce0_local;
reg   [3:0] buff_y_out_2_address0_local;
reg    buff_y_out_2_ce1_local;
reg   [3:0] buff_y_out_2_address1_local;
reg    buff_y_out_2_we1_local;
reg   [31:0] buff_y_out_2_d1_local;
reg    tmp1_2_we0_local;
reg    tmp1_2_ce0_local;
reg    buff_y_out_1_we0_local;
reg   [31:0] buff_y_out_1_d0_local;
reg    buff_y_out_1_ce0_local;
reg   [3:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_ce1_local;
reg   [3:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_we1_local;
reg   [31:0] buff_y_out_1_d1_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    buff_y_out_we0_local;
reg   [31:0] buff_y_out_d0_local;
reg    buff_y_out_ce0_local;
reg   [3:0] buff_y_out_address0_local;
reg    buff_y_out_ce1_local;
reg   [3:0] buff_y_out_address1_local;
reg    buff_y_out_we1_local;
reg   [31:0] buff_y_out_d1_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    buff_y_out_3_we0_local;
reg   [31:0] buff_y_out_3_d0_local;
reg    buff_y_out_3_ce0_local;
reg   [3:0] buff_y_out_3_address0_local;
reg    buff_y_out_3_ce1_local;
reg   [3:0] buff_y_out_3_address1_local;
reg    buff_y_out_3_we1_local;
reg   [31:0] buff_y_out_3_d1_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
wire   [3:0] lshr_ln5_fu_1938_p4;
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
wire   [31:0] grp_fu_3974_p2;
reg   [31:0] grp_fu_3974_p0;
reg   [31:0] grp_fu_3974_p1;
reg    grp_fu_3974_ce;
wire   [31:0] grp_fu_3978_p2;
reg   [31:0] grp_fu_3978_p0;
reg   [31:0] grp_fu_3978_p1;
reg    grp_fu_3978_ce;
wire   [31:0] grp_fu_3982_p2;
reg   [31:0] grp_fu_3982_p0;
reg   [31:0] grp_fu_3982_p1;
reg    grp_fu_3982_ce;
wire   [31:0] grp_fu_3986_p2;
reg   [31:0] grp_fu_3986_p0;
reg   [31:0] grp_fu_3986_p1;
reg    grp_fu_3986_ce;
wire   [31:0] grp_fu_3990_p2;
reg   [31:0] grp_fu_3990_p0;
reg   [31:0] grp_fu_3990_p1;
reg    grp_fu_3990_ce;
wire   [31:0] grp_fu_3994_p2;
reg   [31:0] grp_fu_3994_p0;
reg   [31:0] grp_fu_3994_p1;
reg    grp_fu_3994_ce;
reg   [24:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
reg    ap_ST_fsm_state25_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 25'd1;
#0 grp_atax_Pipeline_lprd_2_fu_1647_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp1_fu_1664_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_fu_1748_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1896_ap_start_reg = 1'b0;
#0 i_fu_102 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0_local),.ce0(buff_x_ce0_local),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1963_p1),.q0(buff_x_q0),.address1(buff_x_address1_local),.ce1(buff_x_ce1_local),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0_local),.ce0(buff_x_1_ce0_local),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1963_p1),.q0(buff_x_1_q0),.address1(buff_x_1_address1_local),.ce1(buff_x_1_ce1_local),.q1(buff_x_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0_local),.ce0(buff_x_2_ce0_local),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_1963_p1),.q0(buff_x_2_q0),.address1(buff_x_2_address1_local),.ce1(buff_x_2_ce1_local),.q1(buff_x_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0_local),.ce0(buff_x_3_ce0_local),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_1963_p1),.q0(buff_x_3_q0),.address1(buff_x_3_address1_local),.ce1(buff_x_3_ce1_local),.q1(buff_x_3_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0_local),.d0(buff_y_out_d0_local),.q0(buff_y_out_q0),.address1(buff_y_out_address1_local),.ce1(buff_y_out_ce1_local),.we1(buff_y_out_we1_local),.d1(buff_y_out_d1_local),.q1(buff_y_out_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0_local),.d0(buff_y_out_1_d0_local),.q0(buff_y_out_1_q0),.address1(buff_y_out_1_address1_local),.ce1(buff_y_out_1_ce1_local),.we1(buff_y_out_1_we1_local),.d1(buff_y_out_1_d1_local),.q1(buff_y_out_1_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0_local),.d0(buff_y_out_2_d0_local),.q0(buff_y_out_2_q0),.address1(buff_y_out_2_address1_local),.ce1(buff_y_out_2_ce1_local),.we1(buff_y_out_2_we1_local),.d1(buff_y_out_2_d1_local),.q1(buff_y_out_2_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0_local),.d0(buff_y_out_3_d0_local),.q0(buff_y_out_3_q0),.address1(buff_y_out_3_address1_local),.ce1(buff_y_out_3_ce1_local),.we1(buff_y_out_3_we1_local),.d1(buff_y_out_3_d1_local),.q1(buff_y_out_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0),.address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_address1),.ce1(tmp1_ce1),.q1(tmp1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0),.address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_1_address1),.ce1(tmp1_1_ce1),.q1(tmp1_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0),.address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_2_address1),.ce1(tmp1_2_ce1),.q1(tmp1_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0),.address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_3_address1),.ce1(tmp1_3_ce1),.q1(tmp1_3_q1));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1647(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1647_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1647_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1647_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1647_ap_ready),.i(trunc_ln11_reg_2678),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1647_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1647_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1647_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1647_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_1647_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1647_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_1647_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1647_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_d0));
atax_atax_Pipeline_lp1 grp_atax_Pipeline_lp1_fu_1664(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_fu_1664_ap_start),.ap_done(grp_atax_Pipeline_lp1_fu_1664_ap_done),.ap_idle(grp_atax_Pipeline_lp1_fu_1664_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_fu_1664_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_fu_1664_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp1_fu_1664_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp1_fu_1664_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_atax_Pipeline_lp1_fu_1664_buff_A_address3),.buff_A_ce3(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_address4),.buff_A_ce4(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_address5),.buff_A_ce5(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_address6),.buff_A_ce6(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_address7),.buff_A_ce7(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_address8),.buff_A_ce8(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_address9),.buff_A_ce9(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_address10),.buff_A_ce10(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_address11),.buff_A_ce11(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_address12),.buff_A_ce12(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_address13),.buff_A_ce13(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_address14),.buff_A_ce14(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_address15),.buff_A_ce15(grp_atax_Pipeline_lp1_fu_1664_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address3),.buff_A_1_ce3(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address4),.buff_A_1_ce4(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address5),.buff_A_1_ce5(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address6),.buff_A_1_ce6(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address7),.buff_A_1_ce7(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address8),.buff_A_1_ce8(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address9),.buff_A_1_ce9(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address10),.buff_A_1_ce10(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address11),.buff_A_1_ce11(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address12),.buff_A_1_ce12(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address13),.buff_A_1_ce13(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address14),.buff_A_1_ce14(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address15),.buff_A_1_ce15(grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address2),.buff_A_2_ce2(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address3),.buff_A_2_ce3(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address4),.buff_A_2_ce4(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address5),.buff_A_2_ce5(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address6),.buff_A_2_ce6(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address7),.buff_A_2_ce7(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address8),.buff_A_2_ce8(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address9),.buff_A_2_ce9(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address10),.buff_A_2_ce10(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address11),.buff_A_2_ce11(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address12),.buff_A_2_ce12(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address13),.buff_A_2_ce13(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address14),.buff_A_2_ce14(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address15),.buff_A_2_ce15(grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address2),.buff_A_3_ce2(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address3),.buff_A_3_ce3(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address4),.buff_A_3_ce4(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address5),.buff_A_3_ce5(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address6),.buff_A_3_ce6(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address7),.buff_A_3_ce7(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address8),.buff_A_3_ce8(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address9),.buff_A_3_ce9(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address10),.buff_A_3_ce10(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address11),.buff_A_3_ce11(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address12),.buff_A_3_ce12(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address13),.buff_A_3_ce13(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address14),.buff_A_3_ce14(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address15),.buff_A_3_ce15(grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.tmp1_3_address0(grp_atax_Pipeline_lp1_fu_1664_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_fu_1664_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_fu_1664_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_fu_1664_tmp1_3_d0),.tmp1_3_address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_3_address1),.tmp1_3_ce1(grp_atax_Pipeline_lp1_fu_1664_tmp1_3_ce1),.tmp1_3_q1(tmp1_3_q1),.tmp1_2_address0(grp_atax_Pipeline_lp1_fu_1664_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_fu_1664_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_fu_1664_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_fu_1664_tmp1_2_d0),.tmp1_2_address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_2_address1),.tmp1_2_ce1(grp_atax_Pipeline_lp1_fu_1664_tmp1_2_ce1),.tmp1_2_q1(tmp1_2_q1),.tmp1_1_address0(grp_atax_Pipeline_lp1_fu_1664_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_fu_1664_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_fu_1664_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_fu_1664_tmp1_1_d0),.tmp1_1_address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_1_address1),.tmp1_1_ce1(grp_atax_Pipeline_lp1_fu_1664_tmp1_1_ce1),.tmp1_1_q1(tmp1_1_q1),.tmp1_address0(grp_atax_Pipeline_lp1_fu_1664_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_fu_1664_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_fu_1664_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_fu_1664_tmp1_d0),.tmp1_address1(grp_atax_Pipeline_lp1_fu_1664_tmp1_address1),.tmp1_ce1(grp_atax_Pipeline_lp1_fu_1664_tmp1_ce1),.tmp1_q1(tmp1_q1),.buff_x_load(buff_x_load_reg_2686),.buff_x_1_load(buff_x_1_load_reg_2691),.buff_x_2_load(buff_x_2_load_reg_2696),.buff_x_3_load(buff_x_3_load_reg_2701),.buff_x_load_1(buff_x_load_1_reg_2706),.buff_x_1_load_1(buff_x_1_load_1_reg_2711),.buff_x_2_load_1(buff_x_2_load_1_reg_2716),.buff_x_3_load_1(buff_x_3_load_1_reg_2721),.buff_x_load_2(buff_x_load_2_reg_2766),.buff_x_1_load_2(buff_x_1_load_2_reg_2771),.buff_x_2_load_2(buff_x_2_load_2_reg_2776),.buff_x_3_load_2(buff_x_3_load_2_reg_2781),.buff_x_load_3(buff_x_load_3_reg_2786),.buff_x_1_load_3(buff_x_1_load_3_reg_2791),.buff_x_2_load_3(buff_x_2_load_3_reg_2796),.buff_x_3_load_3(buff_x_3_load_3_reg_2801),.buff_x_load_4(buff_x_load_4_reg_2894),.buff_x_1_load_4(buff_x_1_load_4_reg_2899),.buff_x_2_load_4(buff_x_2_load_4_reg_2904),.buff_x_3_load_4(buff_x_3_load_4_reg_2909),.buff_x_load_5(buff_x_load_5_reg_2914),.buff_x_1_load_5(buff_x_1_load_5_reg_2919),.buff_x_2_load_5(buff_x_2_load_5_reg_2924),.buff_x_3_load_5(buff_x_3_load_5_reg_2929),.buff_x_load_6(buff_x_load_6_reg_3054),.buff_x_1_load_6(buff_x_1_load_6_reg_3059),.buff_x_2_load_6(buff_x_2_load_6_reg_3064),.buff_x_3_load_6(buff_x_3_load_6_reg_3069),.buff_x_load_7(buff_x_load_7_reg_3074),.buff_x_1_load_7(buff_x_1_load_7_reg_3079),.buff_x_2_load_7(buff_x_2_load_7_reg_3084),.buff_x_3_load_7(buff_x_3_load_7_reg_3089),.buff_x_load_8(buff_x_load_8_reg_3214),.buff_x_1_load_8(buff_x_1_load_8_reg_3219),.buff_x_2_load_8(buff_x_2_load_8_reg_3224),.buff_x_3_load_8(buff_x_3_load_8_reg_3229),.buff_x_load_9(buff_x_load_9_reg_3234),.buff_x_1_load_9(buff_x_1_load_9_reg_3239),.buff_x_2_load_9(buff_x_2_load_9_reg_3244),.buff_x_3_load_9(buff_x_3_load_9_reg_3249),.buff_x_load_10(buff_x_load_10_reg_3374),.buff_x_1_load_10(buff_x_1_load_10_reg_3379),.buff_x_2_load_10(buff_x_2_load_10_reg_3384),.buff_x_3_load_10(buff_x_3_load_10_reg_3389),.buff_x_load_11(buff_x_load_11_reg_3394),.buff_x_1_load_11(buff_x_1_load_11_reg_3399),.buff_x_2_load_11(buff_x_2_load_11_reg_3404),.buff_x_3_load_11(buff_x_3_load_11_reg_3409),.buff_x_load_12(buff_x_load_12_reg_3534),.buff_x_1_load_12(buff_x_1_load_12_reg_3539),.buff_x_2_load_12(buff_x_2_load_12_reg_3544),.buff_x_3_load_12(buff_x_3_load_12_reg_3549),.buff_x_load_13(buff_x_load_13_reg_3554),.buff_x_1_load_13(buff_x_1_load_13_reg_3559),.buff_x_2_load_13(buff_x_2_load_13_reg_3564),.buff_x_3_load_13(buff_x_3_load_13_reg_3569),.buff_x_load_14(buff_x_load_14_reg_3694),.buff_x_1_load_14(buff_x_1_load_14_reg_3699),.buff_x_2_load_14(buff_x_2_load_14_reg_3704),.buff_x_3_load_14(buff_x_3_load_14_reg_3709),.buff_x_load_15(buff_x_load_15_reg_3714),.buff_x_1_load_15(buff_x_1_load_15_reg_3719),.buff_x_2_load_15(buff_x_2_load_15_reg_3724),.buff_x_3_load_15(buff_x_3_load_15_reg_3729),.grp_fu_3934_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_din0),.grp_fu_3934_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_din1),.grp_fu_3934_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_opcode),.grp_fu_3934_p_dout0(grp_fu_3934_p2),.grp_fu_3934_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_ce),.grp_fu_3938_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_din0),.grp_fu_3938_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_din1),.grp_fu_3938_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_opcode),.grp_fu_3938_p_dout0(grp_fu_3938_p2),.grp_fu_3938_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_ce),.grp_fu_3942_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_din0),.grp_fu_3942_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_din1),.grp_fu_3942_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_opcode),.grp_fu_3942_p_dout0(grp_fu_3942_p2),.grp_fu_3942_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_ce),.grp_fu_3946_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_din0),.grp_fu_3946_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_din1),.grp_fu_3946_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_opcode),.grp_fu_3946_p_dout0(grp_fu_3946_p2),.grp_fu_3946_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_ce),.grp_fu_3950_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_din0),.grp_fu_3950_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_din1),.grp_fu_3950_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_opcode),.grp_fu_3950_p_dout0(grp_fu_3950_p2),.grp_fu_3950_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_ce),.grp_fu_3954_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_din0),.grp_fu_3954_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_din1),.grp_fu_3954_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_opcode),.grp_fu_3954_p_dout0(grp_fu_3954_p2),.grp_fu_3954_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_ce),.grp_fu_3958_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_din0),.grp_fu_3958_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_din1),.grp_fu_3958_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_opcode),.grp_fu_3958_p_dout0(grp_fu_3958_p2),.grp_fu_3958_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_ce),.grp_fu_3962_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_din0),.grp_fu_3962_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_din1),.grp_fu_3962_p_opcode(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_opcode),.grp_fu_3962_p_dout0(grp_fu_3962_p2),.grp_fu_3962_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_ce),.grp_fu_3966_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_din0),.grp_fu_3966_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_din1),.grp_fu_3966_p_dout0(grp_fu_3966_p2),.grp_fu_3966_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_ce),.grp_fu_3970_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_din0),.grp_fu_3970_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_din1),.grp_fu_3970_p_dout0(grp_fu_3970_p2),.grp_fu_3970_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_ce),.grp_fu_3974_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_din0),.grp_fu_3974_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_din1),.grp_fu_3974_p_dout0(grp_fu_3974_p2),.grp_fu_3974_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_ce),.grp_fu_3978_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_din0),.grp_fu_3978_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_din1),.grp_fu_3978_p_dout0(grp_fu_3978_p2),.grp_fu_3978_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_ce),.grp_fu_3982_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_din0),.grp_fu_3982_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_din1),.grp_fu_3982_p_dout0(grp_fu_3982_p2),.grp_fu_3982_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_ce),.grp_fu_3986_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_din0),.grp_fu_3986_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_din1),.grp_fu_3986_p_dout0(grp_fu_3986_p2),.grp_fu_3986_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_ce),.grp_fu_3990_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_din0),.grp_fu_3990_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_din1),.grp_fu_3990_p_dout0(grp_fu_3990_p2),.grp_fu_3990_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_ce),.grp_fu_3994_p_din0(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_din0),.grp_fu_3994_p_din1(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_din1),.grp_fu_3994_p_dout0(grp_fu_3994_p2),.grp_fu_3994_p_ce(grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_ce));
atax_atax_Pipeline_lp3 grp_atax_Pipeline_lp3_fu_1748(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_fu_1748_ap_start),.ap_done(grp_atax_Pipeline_lp3_fu_1748_ap_done),.ap_idle(grp_atax_Pipeline_lp3_fu_1748_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_fu_1748_ap_ready),.buff_y_out_3_load_15(buff_y_out_3_load_15_reg_3929),.buff_y_out_2_load_15(buff_y_out_2_load_15_reg_3924),.buff_y_out_1_load_15(buff_y_out_1_load_15_reg_3919),.buff_y_out_load_15(buff_y_out_load_15_reg_3914),.buff_y_out_3_load_14(buff_y_out_3_load_14_reg_3909),.buff_y_out_2_load_14(buff_y_out_2_load_14_reg_3904),.buff_y_out_1_load_14(buff_y_out_1_load_14_reg_3899),.buff_y_out_load_14(buff_y_out_load_14_reg_3894),.buff_y_out_3_load_13(buff_y_out_3_load_13_reg_3889),.buff_y_out_2_load_13(buff_y_out_2_load_13_reg_3884),.buff_y_out_1_load_13(buff_y_out_1_load_13_reg_3879),.buff_y_out_load_13(buff_y_out_load_13_reg_3874),.buff_y_out_3_load_12(buff_y_out_3_load_12_reg_3869),.buff_y_out_2_load_12(buff_y_out_2_load_12_reg_3864),.buff_y_out_1_load_12(buff_y_out_1_load_12_reg_3859),.buff_y_out_load_12(buff_y_out_load_12_reg_3854),.buff_y_out_3_load_11(buff_y_out_3_load_11_reg_3809),.buff_y_out_2_load_11(buff_y_out_2_load_11_reg_3804),.buff_y_out_1_load_11(buff_y_out_1_load_11_reg_3799),.buff_y_out_load_11(buff_y_out_load_11_reg_3794),.buff_y_out_3_load_10(buff_y_out_3_load_10_reg_3789),.buff_y_out_2_load_10(buff_y_out_2_load_10_reg_3784),.buff_y_out_1_load_10(buff_y_out_1_load_10_reg_3779),.buff_y_out_load_10(buff_y_out_load_10_reg_3774),.buff_y_out_3_load_9(buff_y_out_3_load_9_reg_3689),.buff_y_out_2_load_9(buff_y_out_2_load_9_reg_3684),.buff_y_out_1_load_9(buff_y_out_1_load_9_reg_3679),.buff_y_out_load_9(buff_y_out_load_9_reg_3674),.buff_y_out_3_load_8(buff_y_out_3_load_8_reg_3669),.buff_y_out_2_load_8(buff_y_out_2_load_8_reg_3664),.buff_y_out_1_load_8(buff_y_out_1_load_8_reg_3659),.buff_y_out_load_8(buff_y_out_load_8_reg_3654),.buff_y_out_3_load_7(buff_y_out_3_load_7_reg_3529),.buff_y_out_2_load_7(buff_y_out_2_load_7_reg_3524),.buff_y_out_1_load_7(buff_y_out_1_load_7_reg_3519),.buff_y_out_load_7(buff_y_out_load_7_reg_3514),.buff_y_out_3_load_6(buff_y_out_3_load_6_reg_3509),.buff_y_out_2_load_6(buff_y_out_2_load_6_reg_3504),.buff_y_out_1_load_6(buff_y_out_1_load_6_reg_3499),.buff_y_out_load_6(buff_y_out_load_6_reg_3494),.buff_y_out_3_load_5(buff_y_out_3_load_5_reg_3369),.buff_y_out_2_load_5(buff_y_out_2_load_5_reg_3364),.buff_y_out_1_load_5(buff_y_out_1_load_5_reg_3359),.buff_y_out_load_5(buff_y_out_load_5_reg_3354),.buff_y_out_3_load_4(buff_y_out_3_load_4_reg_3349),.buff_y_out_2_load_4(buff_y_out_2_load_4_reg_3344),.buff_y_out_1_load_4(buff_y_out_1_load_4_reg_3339),.buff_y_out_load_4(buff_y_out_load_4_reg_3334),.buff_y_out_3_load_3(buff_y_out_3_load_3_reg_3209),.buff_y_out_2_load_3(buff_y_out_2_load_3_reg_3204),.buff_y_out_1_load_3(buff_y_out_1_load_3_reg_3199),.buff_y_out_load_3(buff_y_out_load_3_reg_3194),.buff_y_out_3_load_2(buff_y_out_3_load_2_reg_3189),.buff_y_out_2_load_2(buff_y_out_2_load_2_reg_3184),.buff_y_out_1_load_2(buff_y_out_1_load_2_reg_3179),.buff_y_out_load_2(buff_y_out_load_2_reg_3174),.buff_y_out_3_load_1(buff_y_out_3_load_1_reg_3049),.buff_y_out_2_load_1(buff_y_out_2_load_1_reg_3044),.buff_y_out_1_load_1(buff_y_out_1_load_1_reg_3039),.buff_y_out_load_1(buff_y_out_load_1_reg_3034),.buff_y_out_3_load(buff_y_out_3_load_reg_3029),.buff_y_out_2_load(buff_y_out_2_load_reg_3024),.buff_y_out_1_load(buff_y_out_1_load_reg_3019),.buff_y_out_load(buff_y_out_load_reg_3014),.buff_A_address0(grp_atax_Pipeline_lp3_fu_1748_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_fu_1748_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_fu_1748_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_fu_1748_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp3_fu_1748_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp3_fu_1748_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_atax_Pipeline_lp3_fu_1748_buff_A_address3),.buff_A_ce3(grp_atax_Pipeline_lp3_fu_1748_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_1_address0(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address3),.buff_A_1_ce3(grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_2_address0(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address2),.buff_A_2_ce2(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address3),.buff_A_2_ce3(grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_3_address0(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address2),.buff_A_3_ce2(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address3),.buff_A_3_ce3(grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.tmp1_address0(grp_atax_Pipeline_lp3_fu_1748_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_fu_1748_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_fu_1748_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_fu_1748_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_fu_1748_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_fu_1748_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_fu_1748_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_fu_1748_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.add58_6385_out(grp_atax_Pipeline_lp3_fu_1748_add58_6385_out),.add58_6385_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_6385_out_ap_vld),.add58_6284_out(grp_atax_Pipeline_lp3_fu_1748_add58_6284_out),.add58_6284_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_6284_out_ap_vld),.add58_6183_out(grp_atax_Pipeline_lp3_fu_1748_add58_6183_out),.add58_6183_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_6183_out_ap_vld),.add58_6082_out(grp_atax_Pipeline_lp3_fu_1748_add58_6082_out),.add58_6082_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_6082_out_ap_vld),.add58_5981_out(grp_atax_Pipeline_lp3_fu_1748_add58_5981_out),.add58_5981_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5981_out_ap_vld),.add58_5880_out(grp_atax_Pipeline_lp3_fu_1748_add58_5880_out),.add58_5880_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5880_out_ap_vld),.add58_5779_out(grp_atax_Pipeline_lp3_fu_1748_add58_5779_out),.add58_5779_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5779_out_ap_vld),.add58_5678_out(grp_atax_Pipeline_lp3_fu_1748_add58_5678_out),.add58_5678_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5678_out_ap_vld),.add58_5577_out(grp_atax_Pipeline_lp3_fu_1748_add58_5577_out),.add58_5577_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5577_out_ap_vld),.add58_5476_out(grp_atax_Pipeline_lp3_fu_1748_add58_5476_out),.add58_5476_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5476_out_ap_vld),.add58_5375_out(grp_atax_Pipeline_lp3_fu_1748_add58_5375_out),.add58_5375_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5375_out_ap_vld),.add58_5274_out(grp_atax_Pipeline_lp3_fu_1748_add58_5274_out),.add58_5274_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5274_out_ap_vld),.add58_5173_out(grp_atax_Pipeline_lp3_fu_1748_add58_5173_out),.add58_5173_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5173_out_ap_vld),.add58_5072_out(grp_atax_Pipeline_lp3_fu_1748_add58_5072_out),.add58_5072_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_5072_out_ap_vld),.add58_4971_out(grp_atax_Pipeline_lp3_fu_1748_add58_4971_out),.add58_4971_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4971_out_ap_vld),.add58_4870_out(grp_atax_Pipeline_lp3_fu_1748_add58_4870_out),.add58_4870_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4870_out_ap_vld),.add58_4769_out(grp_atax_Pipeline_lp3_fu_1748_add58_4769_out),.add58_4769_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4769_out_ap_vld),.add58_4668_out(grp_atax_Pipeline_lp3_fu_1748_add58_4668_out),.add58_4668_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4668_out_ap_vld),.add58_4567_out(grp_atax_Pipeline_lp3_fu_1748_add58_4567_out),.add58_4567_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4567_out_ap_vld),.add58_4466_out(grp_atax_Pipeline_lp3_fu_1748_add58_4466_out),.add58_4466_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4466_out_ap_vld),.add58_4365_out(grp_atax_Pipeline_lp3_fu_1748_add58_4365_out),.add58_4365_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4365_out_ap_vld),.add58_4264_out(grp_atax_Pipeline_lp3_fu_1748_add58_4264_out),.add58_4264_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4264_out_ap_vld),.add58_4163_out(grp_atax_Pipeline_lp3_fu_1748_add58_4163_out),.add58_4163_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4163_out_ap_vld),.add58_4062_out(grp_atax_Pipeline_lp3_fu_1748_add58_4062_out),.add58_4062_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_4062_out_ap_vld),.add58_3961_out(grp_atax_Pipeline_lp3_fu_1748_add58_3961_out),.add58_3961_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3961_out_ap_vld),.add58_3860_out(grp_atax_Pipeline_lp3_fu_1748_add58_3860_out),.add58_3860_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3860_out_ap_vld),.add58_3759_out(grp_atax_Pipeline_lp3_fu_1748_add58_3759_out),.add58_3759_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3759_out_ap_vld),.add58_3658_out(grp_atax_Pipeline_lp3_fu_1748_add58_3658_out),.add58_3658_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3658_out_ap_vld),.add58_3557_out(grp_atax_Pipeline_lp3_fu_1748_add58_3557_out),.add58_3557_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3557_out_ap_vld),.add58_3456_out(grp_atax_Pipeline_lp3_fu_1748_add58_3456_out),.add58_3456_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3456_out_ap_vld),.add58_3355_out(grp_atax_Pipeline_lp3_fu_1748_add58_3355_out),.add58_3355_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3355_out_ap_vld),.add58_3254_out(grp_atax_Pipeline_lp3_fu_1748_add58_3254_out),.add58_3254_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3254_out_ap_vld),.add58_3153_out(grp_atax_Pipeline_lp3_fu_1748_add58_3153_out),.add58_3153_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3153_out_ap_vld),.add58_3052_out(grp_atax_Pipeline_lp3_fu_1748_add58_3052_out),.add58_3052_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_3052_out_ap_vld),.add58_2951_out(grp_atax_Pipeline_lp3_fu_1748_add58_2951_out),.add58_2951_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2951_out_ap_vld),.add58_2850_out(grp_atax_Pipeline_lp3_fu_1748_add58_2850_out),.add58_2850_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2850_out_ap_vld),.add58_2749_out(grp_atax_Pipeline_lp3_fu_1748_add58_2749_out),.add58_2749_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2749_out_ap_vld),.add58_2648_out(grp_atax_Pipeline_lp3_fu_1748_add58_2648_out),.add58_2648_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2648_out_ap_vld),.add58_2547_out(grp_atax_Pipeline_lp3_fu_1748_add58_2547_out),.add58_2547_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2547_out_ap_vld),.add58_2446_out(grp_atax_Pipeline_lp3_fu_1748_add58_2446_out),.add58_2446_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2446_out_ap_vld),.add58_2345_out(grp_atax_Pipeline_lp3_fu_1748_add58_2345_out),.add58_2345_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2345_out_ap_vld),.add58_2244_out(grp_atax_Pipeline_lp3_fu_1748_add58_2244_out),.add58_2244_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2244_out_ap_vld),.add58_2143_out(grp_atax_Pipeline_lp3_fu_1748_add58_2143_out),.add58_2143_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2143_out_ap_vld),.add58_2042_out(grp_atax_Pipeline_lp3_fu_1748_add58_2042_out),.add58_2042_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_2042_out_ap_vld),.add58_1941_out(grp_atax_Pipeline_lp3_fu_1748_add58_1941_out),.add58_1941_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1941_out_ap_vld),.add58_1840_out(grp_atax_Pipeline_lp3_fu_1748_add58_1840_out),.add58_1840_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1840_out_ap_vld),.add58_1739_out(grp_atax_Pipeline_lp3_fu_1748_add58_1739_out),.add58_1739_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1739_out_ap_vld),.add58_1638_out(grp_atax_Pipeline_lp3_fu_1748_add58_1638_out),.add58_1638_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1638_out_ap_vld),.add58_1537_out(grp_atax_Pipeline_lp3_fu_1748_add58_1537_out),.add58_1537_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1537_out_ap_vld),.add58_1436_out(grp_atax_Pipeline_lp3_fu_1748_add58_1436_out),.add58_1436_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1436_out_ap_vld),.add58_1335_out(grp_atax_Pipeline_lp3_fu_1748_add58_1335_out),.add58_1335_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1335_out_ap_vld),.add58_1234_out(grp_atax_Pipeline_lp3_fu_1748_add58_1234_out),.add58_1234_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1234_out_ap_vld),.add58_1133_out(grp_atax_Pipeline_lp3_fu_1748_add58_1133_out),.add58_1133_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1133_out_ap_vld),.add58_1032_out(grp_atax_Pipeline_lp3_fu_1748_add58_1032_out),.add58_1032_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_1032_out_ap_vld),.add58_931_out(grp_atax_Pipeline_lp3_fu_1748_add58_931_out),.add58_931_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_931_out_ap_vld),.add58_830_out(grp_atax_Pipeline_lp3_fu_1748_add58_830_out),.add58_830_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_830_out_ap_vld),.add58_729_out(grp_atax_Pipeline_lp3_fu_1748_add58_729_out),.add58_729_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_729_out_ap_vld),.add58_628_out(grp_atax_Pipeline_lp3_fu_1748_add58_628_out),.add58_628_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_628_out_ap_vld),.add58_527_out(grp_atax_Pipeline_lp3_fu_1748_add58_527_out),.add58_527_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_527_out_ap_vld),.add58_426_out(grp_atax_Pipeline_lp3_fu_1748_add58_426_out),.add58_426_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_426_out_ap_vld),.add58_325_out(grp_atax_Pipeline_lp3_fu_1748_add58_325_out),.add58_325_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_325_out_ap_vld),.add58_224_out(grp_atax_Pipeline_lp3_fu_1748_add58_224_out),.add58_224_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_224_out_ap_vld),.add58_123_out(grp_atax_Pipeline_lp3_fu_1748_add58_123_out),.add58_123_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add58_123_out_ap_vld),.add5822_out(grp_atax_Pipeline_lp3_fu_1748_add5822_out),.add5822_out_ap_vld(grp_atax_Pipeline_lp3_fu_1748_add5822_out_ap_vld),.grp_fu_3934_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_din0),.grp_fu_3934_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_din1),.grp_fu_3934_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_opcode),.grp_fu_3934_p_dout0(grp_fu_3934_p2),.grp_fu_3934_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_ce),.grp_fu_3938_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_din0),.grp_fu_3938_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_din1),.grp_fu_3938_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_opcode),.grp_fu_3938_p_dout0(grp_fu_3938_p2),.grp_fu_3938_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_ce),.grp_fu_3942_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_din0),.grp_fu_3942_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_din1),.grp_fu_3942_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_opcode),.grp_fu_3942_p_dout0(grp_fu_3942_p2),.grp_fu_3942_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_ce),.grp_fu_3946_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_din0),.grp_fu_3946_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_din1),.grp_fu_3946_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_opcode),.grp_fu_3946_p_dout0(grp_fu_3946_p2),.grp_fu_3946_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_ce),.grp_fu_3950_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_din0),.grp_fu_3950_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_din1),.grp_fu_3950_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_opcode),.grp_fu_3950_p_dout0(grp_fu_3950_p2),.grp_fu_3950_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_ce),.grp_fu_3954_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_din0),.grp_fu_3954_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_din1),.grp_fu_3954_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_opcode),.grp_fu_3954_p_dout0(grp_fu_3954_p2),.grp_fu_3954_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_ce),.grp_fu_3958_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_din0),.grp_fu_3958_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_din1),.grp_fu_3958_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_opcode),.grp_fu_3958_p_dout0(grp_fu_3958_p2),.grp_fu_3958_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_ce),.grp_fu_3962_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_din0),.grp_fu_3962_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_din1),.grp_fu_3962_p_opcode(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_opcode),.grp_fu_3962_p_dout0(grp_fu_3962_p2),.grp_fu_3962_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_ce),.grp_fu_3966_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_din0),.grp_fu_3966_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_din1),.grp_fu_3966_p_dout0(grp_fu_3966_p2),.grp_fu_3966_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_ce),.grp_fu_3970_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_din0),.grp_fu_3970_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_din1),.grp_fu_3970_p_dout0(grp_fu_3970_p2),.grp_fu_3970_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_ce),.grp_fu_3974_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_din0),.grp_fu_3974_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_din1),.grp_fu_3974_p_dout0(grp_fu_3974_p2),.grp_fu_3974_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_ce),.grp_fu_3978_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_din0),.grp_fu_3978_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_din1),.grp_fu_3978_p_dout0(grp_fu_3978_p2),.grp_fu_3978_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_ce),.grp_fu_3982_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_din0),.grp_fu_3982_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_din1),.grp_fu_3982_p_dout0(grp_fu_3982_p2),.grp_fu_3982_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_ce),.grp_fu_3986_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_din0),.grp_fu_3986_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_din1),.grp_fu_3986_p_dout0(grp_fu_3986_p2),.grp_fu_3986_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_ce),.grp_fu_3990_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_din0),.grp_fu_3990_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_din1),.grp_fu_3990_p_dout0(grp_fu_3990_p2),.grp_fu_3990_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_ce),.grp_fu_3994_p_din0(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_din0),.grp_fu_3994_p_din1(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_din1),.grp_fu_3994_p_dout0(grp_fu_3994_p2),.grp_fu_3994_p_ce(grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1896(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1896_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1896_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1896_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1896_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1896_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1896_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3934_p0),.din1(grp_fu_3934_p1),.ce(grp_fu_3934_ce),.dout(grp_fu_3934_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3938_p0),.din1(grp_fu_3938_p1),.ce(grp_fu_3938_ce),.dout(grp_fu_3938_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U373(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3942_p0),.din1(grp_fu_3942_p1),.ce(grp_fu_3942_ce),.dout(grp_fu_3942_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U374(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3946_p0),.din1(grp_fu_3946_p1),.ce(grp_fu_3946_ce),.dout(grp_fu_3946_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U375(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3950_p0),.din1(grp_fu_3950_p1),.ce(grp_fu_3950_ce),.dout(grp_fu_3950_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3954_p0),.din1(grp_fu_3954_p1),.ce(grp_fu_3954_ce),.dout(grp_fu_3954_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3958_p0),.din1(grp_fu_3958_p1),.ce(grp_fu_3958_ce),.dout(grp_fu_3958_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3962_p0),.din1(grp_fu_3962_p1),.ce(grp_fu_3962_ce),.dout(grp_fu_3962_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3966_p0),.din1(grp_fu_3966_p1),.ce(grp_fu_3966_ce),.dout(grp_fu_3966_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3970_p0),.din1(grp_fu_3970_p1),.ce(grp_fu_3970_ce),.dout(grp_fu_3970_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3974_p0),.din1(grp_fu_3974_p1),.ce(grp_fu_3974_ce),.dout(grp_fu_3974_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3978_p0),.din1(grp_fu_3978_p1),.ce(grp_fu_3978_ce),.dout(grp_fu_3978_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3982_p0),.din1(grp_fu_3982_p1),.ce(grp_fu_3982_ce),.dout(grp_fu_3982_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U384(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3986_p0),.din1(grp_fu_3986_p1),.ce(grp_fu_3986_ce),.dout(grp_fu_3986_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U385(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3990_p0),.din1(grp_fu_3990_p1),.ce(grp_fu_3990_ce),.dout(grp_fu_3990_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U386(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3994_p0),.din1(grp_fu_3994_p1),.ce(grp_fu_3994_ce),.dout(grp_fu_3994_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_fu_1664_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_atax_Pipeline_lp1_fu_1664_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_fu_1664_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_fu_1664_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_fu_1748_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_atax_Pipeline_lp3_fu_1748_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_fu_1748_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_fu_1748_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1647_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lprd_2_fu_1647_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1647_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1647_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1896_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_atax_Pipeline_lpwr_1_fu_1896_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1896_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1896_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_102 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_102 <= add_ln11_reg_2628;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_2628 <= add_ln11_fu_1920_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_1_load_10_reg_3379 <= buff_x_1_q0;
        buff_x_1_load_11_reg_3399 <= buff_x_1_q1;
        buff_x_2_load_10_reg_3384 <= buff_x_2_q0;
        buff_x_2_load_11_reg_3404 <= buff_x_2_q1;
        buff_x_3_load_10_reg_3389 <= buff_x_3_q0;
        buff_x_3_load_11_reg_3409 <= buff_x_3_q1;
        buff_x_load_10_reg_3374 <= buff_x_q0;
        buff_x_load_11_reg_3394 <= buff_x_q1;
        buff_y_out_1_load_6_reg_3499 <= buff_y_out_1_q0;
        buff_y_out_1_load_7_reg_3519 <= buff_y_out_1_q1;
        buff_y_out_2_load_6_reg_3504 <= buff_y_out_2_q0;
        buff_y_out_2_load_7_reg_3524 <= buff_y_out_2_q1;
        buff_y_out_3_load_6_reg_3509 <= buff_y_out_3_q0;
        buff_y_out_3_load_7_reg_3529 <= buff_y_out_3_q1;
        buff_y_out_load_6_reg_3494 <= buff_y_out_q0;
        buff_y_out_load_7_reg_3514 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_1_load_12_reg_3539 <= buff_x_1_q0;
        buff_x_1_load_13_reg_3559 <= buff_x_1_q1;
        buff_x_2_load_12_reg_3544 <= buff_x_2_q0;
        buff_x_2_load_13_reg_3564 <= buff_x_2_q1;
        buff_x_3_load_12_reg_3549 <= buff_x_3_q0;
        buff_x_3_load_13_reg_3569 <= buff_x_3_q1;
        buff_x_load_12_reg_3534 <= buff_x_q0;
        buff_x_load_13_reg_3554 <= buff_x_q1;
        buff_y_out_1_load_8_reg_3659 <= buff_y_out_1_q0;
        buff_y_out_1_load_9_reg_3679 <= buff_y_out_1_q1;
        buff_y_out_2_load_8_reg_3664 <= buff_y_out_2_q0;
        buff_y_out_2_load_9_reg_3684 <= buff_y_out_2_q1;
        buff_y_out_3_load_8_reg_3669 <= buff_y_out_3_q0;
        buff_y_out_3_load_9_reg_3689 <= buff_y_out_3_q1;
        buff_y_out_load_8_reg_3654 <= buff_y_out_q0;
        buff_y_out_load_9_reg_3674 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_x_1_load_14_reg_3699 <= buff_x_1_q0;
        buff_x_1_load_15_reg_3719 <= buff_x_1_q1;
        buff_x_2_load_14_reg_3704 <= buff_x_2_q0;
        buff_x_2_load_15_reg_3724 <= buff_x_2_q1;
        buff_x_3_load_14_reg_3709 <= buff_x_3_q0;
        buff_x_3_load_15_reg_3729 <= buff_x_3_q1;
        buff_x_load_14_reg_3694 <= buff_x_q0;
        buff_x_load_15_reg_3714 <= buff_x_q1;
        buff_y_out_1_load_10_reg_3779 <= buff_y_out_1_q0;
        buff_y_out_1_load_11_reg_3799 <= buff_y_out_1_q1;
        buff_y_out_2_load_10_reg_3784 <= buff_y_out_2_q0;
        buff_y_out_2_load_11_reg_3804 <= buff_y_out_2_q1;
        buff_y_out_3_load_10_reg_3789 <= buff_y_out_3_q0;
        buff_y_out_3_load_11_reg_3809 <= buff_y_out_3_q1;
        buff_y_out_load_10_reg_3774 <= buff_y_out_q0;
        buff_y_out_load_11_reg_3794 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_load_1_reg_2711 <= buff_x_1_q0;
        buff_x_1_load_reg_2691 <= buff_x_1_q1;
        buff_x_2_load_1_reg_2716 <= buff_x_2_q0;
        buff_x_2_load_reg_2696 <= buff_x_2_q1;
        buff_x_3_load_1_reg_2721 <= buff_x_3_q0;
        buff_x_3_load_reg_2701 <= buff_x_3_q1;
        buff_x_load_1_reg_2706 <= buff_x_q0;
        buff_x_load_reg_2686 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_load_2_reg_2771 <= buff_x_1_q0;
        buff_x_1_load_3_reg_2791 <= buff_x_1_q1;
        buff_x_2_load_2_reg_2776 <= buff_x_2_q0;
        buff_x_2_load_3_reg_2796 <= buff_x_2_q1;
        buff_x_3_load_2_reg_2781 <= buff_x_3_q0;
        buff_x_3_load_3_reg_2801 <= buff_x_3_q1;
        buff_x_load_2_reg_2766 <= buff_x_q0;
        buff_x_load_3_reg_2786 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_load_4_reg_2899 <= buff_x_1_q0;
        buff_x_1_load_5_reg_2919 <= buff_x_1_q1;
        buff_x_2_load_4_reg_2904 <= buff_x_2_q0;
        buff_x_2_load_5_reg_2924 <= buff_x_2_q1;
        buff_x_3_load_4_reg_2909 <= buff_x_3_q0;
        buff_x_3_load_5_reg_2929 <= buff_x_3_q1;
        buff_x_load_4_reg_2894 <= buff_x_q0;
        buff_x_load_5_reg_2914 <= buff_x_q1;
        buff_y_out_1_load_1_reg_3039 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_3019 <= buff_y_out_1_q1;
        buff_y_out_2_load_1_reg_3044 <= buff_y_out_2_q0;
        buff_y_out_2_load_reg_3024 <= buff_y_out_2_q1;
        buff_y_out_3_load_1_reg_3049 <= buff_y_out_3_q0;
        buff_y_out_3_load_reg_3029 <= buff_y_out_3_q1;
        buff_y_out_load_1_reg_3034 <= buff_y_out_q0;
        buff_y_out_load_reg_3014 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_load_6_reg_3059 <= buff_x_1_q0;
        buff_x_1_load_7_reg_3079 <= buff_x_1_q1;
        buff_x_2_load_6_reg_3064 <= buff_x_2_q0;
        buff_x_2_load_7_reg_3084 <= buff_x_2_q1;
        buff_x_3_load_6_reg_3069 <= buff_x_3_q0;
        buff_x_3_load_7_reg_3089 <= buff_x_3_q1;
        buff_x_load_6_reg_3054 <= buff_x_q0;
        buff_x_load_7_reg_3074 <= buff_x_q1;
        buff_y_out_1_load_2_reg_3179 <= buff_y_out_1_q0;
        buff_y_out_1_load_3_reg_3199 <= buff_y_out_1_q1;
        buff_y_out_2_load_2_reg_3184 <= buff_y_out_2_q0;
        buff_y_out_2_load_3_reg_3204 <= buff_y_out_2_q1;
        buff_y_out_3_load_2_reg_3189 <= buff_y_out_3_q0;
        buff_y_out_3_load_3_reg_3209 <= buff_y_out_3_q1;
        buff_y_out_load_2_reg_3174 <= buff_y_out_q0;
        buff_y_out_load_3_reg_3194 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_load_8_reg_3219 <= buff_x_1_q0;
        buff_x_1_load_9_reg_3239 <= buff_x_1_q1;
        buff_x_2_load_8_reg_3224 <= buff_x_2_q0;
        buff_x_2_load_9_reg_3244 <= buff_x_2_q1;
        buff_x_3_load_8_reg_3229 <= buff_x_3_q0;
        buff_x_3_load_9_reg_3249 <= buff_x_3_q1;
        buff_x_load_8_reg_3214 <= buff_x_q0;
        buff_x_load_9_reg_3234 <= buff_x_q1;
        buff_y_out_1_load_4_reg_3339 <= buff_y_out_1_q0;
        buff_y_out_1_load_5_reg_3359 <= buff_y_out_1_q1;
        buff_y_out_2_load_4_reg_3344 <= buff_y_out_2_q0;
        buff_y_out_2_load_5_reg_3364 <= buff_y_out_2_q1;
        buff_y_out_3_load_4_reg_3349 <= buff_y_out_3_q0;
        buff_y_out_3_load_5_reg_3369 <= buff_y_out_3_q1;
        buff_y_out_load_4_reg_3334 <= buff_y_out_q0;
        buff_y_out_load_5_reg_3354 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_load_12_reg_3859 <= buff_y_out_1_q0;
        buff_y_out_1_load_13_reg_3879 <= buff_y_out_1_q1;
        buff_y_out_2_load_12_reg_3864 <= buff_y_out_2_q0;
        buff_y_out_2_load_13_reg_3884 <= buff_y_out_2_q1;
        buff_y_out_3_load_12_reg_3869 <= buff_y_out_3_q0;
        buff_y_out_3_load_13_reg_3889 <= buff_y_out_3_q1;
        buff_y_out_load_12_reg_3854 <= buff_y_out_q0;
        buff_y_out_load_13_reg_3874 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_load_14_reg_3899 <= buff_y_out_1_q0;
        buff_y_out_1_load_15_reg_3919 <= buff_y_out_1_q1;
        buff_y_out_2_load_14_reg_3904 <= buff_y_out_2_q0;
        buff_y_out_2_load_15_reg_3924 <= buff_y_out_2_q1;
        buff_y_out_3_load_14_reg_3909 <= buff_y_out_3_q0;
        buff_y_out_3_load_15_reg_3929 <= buff_y_out_3_q1;
        buff_y_out_load_14_reg_3894 <= buff_y_out_q0;
        buff_y_out_load_15_reg_3914 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_reg_2678 <= trunc_ln11_fu_1931_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_fu_1748_ap_done == 1'b0)) begin
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
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_1896_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lprd_2_fu_1647_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state25) & (grp_atax_Pipeline_lpwr_1_fu_1896_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state25) & (grp_atax_Pipeline_lpwr_1_fu_1896_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address2;
    end else begin
        buff_A_1_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_address3;
    end else begin
        buff_A_1_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce10 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce11 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce12 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce13 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce14 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce15 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_1_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce4 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce5 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce6 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce7 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce8 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce9 = grp_atax_Pipeline_lp1_fu_1664_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address2;
    end else begin
        buff_A_2_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_address3;
    end else begin
        buff_A_2_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce10 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce11 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce12 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce13 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce14 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce15 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_2_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce4 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce5 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce6 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce7 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce8 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce9 = grp_atax_Pipeline_lp1_fu_1664_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address2;
    end else begin
        buff_A_3_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_address3;
    end else begin
        buff_A_3_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce10 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce11 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce12 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce13 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce14 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce15 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_3_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce4 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce5 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce6 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce7 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce8 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce9 = grp_atax_Pipeline_lp1_fu_1664_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_address2;
    end else begin
        buff_A_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_address3;
    end else begin
        buff_A_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_fu_1748_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_fu_1748_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce10 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce11 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce12 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce13 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce14 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce15 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp3_fu_1748_buff_A_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce3 = grp_atax_Pipeline_lp3_fu_1748_buff_A_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce3 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce4 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce5 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce6 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce7 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce8 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce9 = grp_atax_Pipeline_lp1_fu_1664_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1647_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_1_address0_local = zext_ln5_fu_1947_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address0_local = 64'd1;
    end else begin
        buff_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address1_local = 64'd0;
    end else begin
        buff_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_1_ce1_local = 1'b1;
    end else begin
        buff_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_2_address0_local = zext_ln5_fu_1947_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address0_local = 64'd1;
    end else begin
        buff_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address1_local = 64'd0;
    end else begin
        buff_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_2_ce1_local = 1'b1;
    end else begin
        buff_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_3_address0_local = zext_ln5_fu_1947_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address0_local = 64'd1;
    end else begin
        buff_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address1_local = 64'd0;
    end else begin
        buff_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_3_ce1_local = 1'b1;
    end else begin
        buff_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_address0_local = zext_ln5_fu_1947_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address0_local = 64'd1;
    end else begin
        buff_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address1_local = 64'd0;
    end else begin
        buff_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_ce1_local = 1'b1;
    end else begin
        buff_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = buff_y_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_15_reg_3819;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_13_reg_3739;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_11_reg_3619;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_9_reg_3459;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_7_reg_3299;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_5_reg_3139;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_2979;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_address0_local = zext_ln5_fu_1947_p1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_16_reg_3839;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_14_reg_3759;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_12_reg_3639;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_10_reg_3479;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_8_reg_3319;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_6_reg_3159;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_4_reg_2999;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address1_local = 64'd0;
    end else begin
        buff_y_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_5779_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_4971_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_4163_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_3355_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_2547_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_1739_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_931_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_123_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_d0_local = 32'd0;
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_6183_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_5375_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_4567_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_3759_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_2951_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_2143_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_1335_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_527_out;
    end else begin
        buff_y_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln11_1_fu_1935_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = buff_y_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_15_reg_3824;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_13_reg_3744;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_11_reg_3624;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_9_reg_3464;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_7_reg_3304;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_5_reg_3144;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_3_reg_2984;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_address0_local = zext_ln5_fu_1947_p1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_16_reg_3844;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_14_reg_3764;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_12_reg_3644;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_10_reg_3484;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_8_reg_3324;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_6_reg_3164;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_4_reg_3004;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address1_local = 64'd0;
    end else begin
        buff_y_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_5880_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_5072_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_4264_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_3456_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_2648_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_1840_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_1032_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_224_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_d0_local = 32'd0;
    end else begin
        buff_y_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_6284_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_5476_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_4668_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_3860_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_3052_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_2244_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_1436_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_628_out;
    end else begin
        buff_y_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln11_1_fu_1935_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16))) begin
        buff_y_out_2_we1_local = 1'b1;
    end else begin
        buff_y_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = buff_y_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_15_reg_3829;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_13_reg_3749;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_11_reg_3629;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_9_reg_3469;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_7_reg_3309;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_5_reg_3149;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_3_reg_2989;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_address0_local = zext_ln5_fu_1947_p1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_16_reg_3849;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_14_reg_3769;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_12_reg_3649;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_10_reg_3489;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_8_reg_3329;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_6_reg_3169;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_4_reg_3009;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address1_local = 64'd0;
    end else begin
        buff_y_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_5981_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_5173_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_4365_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_3557_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_2749_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_1941_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_1133_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_325_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_d0_local = 32'd0;
    end else begin
        buff_y_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_6385_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_5577_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_4769_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_3961_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_3153_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_2345_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_1537_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_729_out;
    end else begin
        buff_y_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln11_1_fu_1935_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16))) begin
        buff_y_out_3_we1_local = 1'b1;
    end else begin
        buff_y_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = buff_y_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_address0_local = buff_y_out_addr_15_reg_3814;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_address0_local = buff_y_out_addr_13_reg_3734;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_address0_local = buff_y_out_addr_11_reg_3614;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_address0_local = buff_y_out_addr_9_reg_3454;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address0_local = buff_y_out_addr_7_reg_3294;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address0_local = buff_y_out_addr_5_reg_3134;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_2974;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_address0_local = zext_ln5_fu_1947_p1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_address1_local = buff_y_out_addr_16_reg_3834;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_address1_local = buff_y_out_addr_14_reg_3754;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_address1_local = buff_y_out_addr_12_reg_3634;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_address1_local = buff_y_out_addr_10_reg_3474;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address1_local = buff_y_out_addr_8_reg_3314;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address1_local = buff_y_out_addr_6_reg_3154;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address1_local = buff_y_out_addr_4_reg_2994;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address1_local = 64'd0;
    end else begin
        buff_y_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1896_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_5678_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_4870_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_4062_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_3254_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_2446_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_1638_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add58_830_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1748_add5822_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_d0_local = 32'd0;
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_6082_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_5274_out;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_4466_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_3658_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_2850_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_2042_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_1234_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1748_add58_426_out;
    end else begin
        buff_y_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln11_1_fu_1935_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3934_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3934_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_ce;
    end else begin
        grp_fu_3934_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3934_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3934_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_din0;
    end else begin
        grp_fu_3934_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3934_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3934_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3934_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3934_p_din1;
    end else begin
        grp_fu_3934_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3938_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3938_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_ce;
    end else begin
        grp_fu_3938_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3938_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3938_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_din0;
    end else begin
        grp_fu_3938_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3938_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3938_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3938_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3938_p_din1;
    end else begin
        grp_fu_3938_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3942_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3942_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_ce;
    end else begin
        grp_fu_3942_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3942_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3942_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_din0;
    end else begin
        grp_fu_3942_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3942_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3942_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3942_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3942_p_din1;
    end else begin
        grp_fu_3942_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3946_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3946_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_ce;
    end else begin
        grp_fu_3946_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3946_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3946_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_din0;
    end else begin
        grp_fu_3946_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3946_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3946_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3946_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3946_p_din1;
    end else begin
        grp_fu_3946_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3950_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3950_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_ce;
    end else begin
        grp_fu_3950_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3950_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3950_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_din0;
    end else begin
        grp_fu_3950_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3950_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3950_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3950_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3950_p_din1;
    end else begin
        grp_fu_3950_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3954_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3954_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_ce;
    end else begin
        grp_fu_3954_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3954_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3954_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_din0;
    end else begin
        grp_fu_3954_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3954_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3954_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3954_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3954_p_din1;
    end else begin
        grp_fu_3954_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3958_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3958_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_ce;
    end else begin
        grp_fu_3958_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3958_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3958_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_din0;
    end else begin
        grp_fu_3958_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3958_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3958_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3958_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3958_p_din1;
    end else begin
        grp_fu_3958_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3962_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3962_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_ce;
    end else begin
        grp_fu_3962_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3962_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3962_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_din0;
    end else begin
        grp_fu_3962_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3962_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3962_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3962_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3962_p_din1;
    end else begin
        grp_fu_3962_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3966_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3966_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_ce;
    end else begin
        grp_fu_3966_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3966_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3966_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_din0;
    end else begin
        grp_fu_3966_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3966_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3966_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3966_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3966_p_din1;
    end else begin
        grp_fu_3966_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3970_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3970_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_ce;
    end else begin
        grp_fu_3970_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3970_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3970_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_din0;
    end else begin
        grp_fu_3970_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3970_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3970_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3970_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3970_p_din1;
    end else begin
        grp_fu_3970_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3974_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3974_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_ce;
    end else begin
        grp_fu_3974_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3974_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3974_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_din0;
    end else begin
        grp_fu_3974_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3974_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3974_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3974_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3974_p_din1;
    end else begin
        grp_fu_3974_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3978_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3978_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_ce;
    end else begin
        grp_fu_3978_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3978_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3978_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_din0;
    end else begin
        grp_fu_3978_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3978_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3978_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3978_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3978_p_din1;
    end else begin
        grp_fu_3978_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3982_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3982_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_ce;
    end else begin
        grp_fu_3982_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3982_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3982_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_din0;
    end else begin
        grp_fu_3982_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3982_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3982_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3982_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3982_p_din1;
    end else begin
        grp_fu_3982_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3986_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3986_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_ce;
    end else begin
        grp_fu_3986_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3986_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3986_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_din0;
    end else begin
        grp_fu_3986_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3986_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3986_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3986_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3986_p_din1;
    end else begin
        grp_fu_3986_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3990_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3990_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_ce;
    end else begin
        grp_fu_3990_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3990_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3990_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_din0;
    end else begin
        grp_fu_3990_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3990_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3990_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3990_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3990_p_din1;
    end else begin
        grp_fu_3990_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3994_ce = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3994_ce = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_ce;
    end else begin
        grp_fu_3994_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3994_p0 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3994_p0 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_din0;
    end else begin
        grp_fu_3994_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3994_p1 = grp_atax_Pipeline_lp3_fu_1748_grp_fu_3994_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3994_p1 = grp_atax_Pipeline_lp1_fu_1664_grp_fu_3994_p_din1;
    end else begin
        grp_fu_3994_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1947_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_1_ce0;
    end else begin
        tmp1_1_ce0 = tmp1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_ce1 = grp_atax_Pipeline_lp1_fu_1664_tmp1_1_ce1;
    end else begin
        tmp1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_1947_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_2_ce0;
    end else begin
        tmp1_2_ce0 = tmp1_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_ce1 = grp_atax_Pipeline_lp1_fu_1664_tmp1_2_ce1;
    end else begin
        tmp1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_1947_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_3_ce0;
    end else begin
        tmp1_3_ce0 = tmp1_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_ce1 = grp_atax_Pipeline_lp1_fu_1664_tmp1_3_ce1;
    end else begin
        tmp1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1947_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_fu_1748_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_ce0;
    end else begin
        tmp1_ce0 = tmp1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_ce1 = grp_atax_Pipeline_lp1_fu_1664_tmp1_ce1;
    end else begin
        tmp1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_fu_1664_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1935_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x_ce0_local = 1'b1;
    end else begin
        x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1896_y_out_write;
    end else begin
        y_out_write = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1914_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_Pipeline_lprd_2_fu_1647_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_1664_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_atax_Pipeline_lp3_fu_1748_ap_done == 1'b1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((1'b1 == ap_CS_fsm_state25) & (grp_atax_Pipeline_lpwr_1_fu_1896_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1647_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1647_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1647_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1647_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1647_A_3_ce0;
assign add_ln11_fu_1920_p2 = (i_fu_102 + 7'd1);
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln12_fu_1963_p1 = x_q0;
assign buff_y_out_1_addr_10_reg_3479 = 64'd9;
assign buff_y_out_1_addr_11_reg_3619 = 64'd10;
assign buff_y_out_1_addr_12_reg_3639 = 64'd11;
assign buff_y_out_1_addr_13_reg_3739 = 64'd12;
assign buff_y_out_1_addr_14_reg_3759 = 64'd13;
assign buff_y_out_1_addr_15_reg_3819 = 64'd14;
assign buff_y_out_1_addr_16_reg_3839 = 64'd15;
assign buff_y_out_1_addr_3_reg_2979 = 64'd2;
assign buff_y_out_1_addr_4_reg_2999 = 64'd3;
assign buff_y_out_1_addr_5_reg_3139 = 64'd4;
assign buff_y_out_1_addr_6_reg_3159 = 64'd5;
assign buff_y_out_1_addr_7_reg_3299 = 64'd6;
assign buff_y_out_1_addr_8_reg_3319 = 64'd7;
assign buff_y_out_1_addr_9_reg_3459 = 64'd8;
assign buff_y_out_2_addr_10_reg_3484 = 64'd9;
assign buff_y_out_2_addr_11_reg_3624 = 64'd10;
assign buff_y_out_2_addr_12_reg_3644 = 64'd11;
assign buff_y_out_2_addr_13_reg_3744 = 64'd12;
assign buff_y_out_2_addr_14_reg_3764 = 64'd13;
assign buff_y_out_2_addr_15_reg_3824 = 64'd14;
assign buff_y_out_2_addr_16_reg_3844 = 64'd15;
assign buff_y_out_2_addr_3_reg_2984 = 64'd2;
assign buff_y_out_2_addr_4_reg_3004 = 64'd3;
assign buff_y_out_2_addr_5_reg_3144 = 64'd4;
assign buff_y_out_2_addr_6_reg_3164 = 64'd5;
assign buff_y_out_2_addr_7_reg_3304 = 64'd6;
assign buff_y_out_2_addr_8_reg_3324 = 64'd7;
assign buff_y_out_2_addr_9_reg_3464 = 64'd8;
assign buff_y_out_3_addr_10_reg_3489 = 64'd9;
assign buff_y_out_3_addr_11_reg_3629 = 64'd10;
assign buff_y_out_3_addr_12_reg_3649 = 64'd11;
assign buff_y_out_3_addr_13_reg_3749 = 64'd12;
assign buff_y_out_3_addr_14_reg_3769 = 64'd13;
assign buff_y_out_3_addr_15_reg_3829 = 64'd14;
assign buff_y_out_3_addr_16_reg_3849 = 64'd15;
assign buff_y_out_3_addr_3_reg_2989 = 64'd2;
assign buff_y_out_3_addr_4_reg_3009 = 64'd3;
assign buff_y_out_3_addr_5_reg_3149 = 64'd4;
assign buff_y_out_3_addr_6_reg_3169 = 64'd5;
assign buff_y_out_3_addr_7_reg_3309 = 64'd6;
assign buff_y_out_3_addr_8_reg_3329 = 64'd7;
assign buff_y_out_3_addr_9_reg_3469 = 64'd8;
assign buff_y_out_addr_10_reg_3474 = 64'd9;
assign buff_y_out_addr_11_reg_3614 = 64'd10;
assign buff_y_out_addr_12_reg_3634 = 64'd11;
assign buff_y_out_addr_13_reg_3734 = 64'd12;
assign buff_y_out_addr_14_reg_3754 = 64'd13;
assign buff_y_out_addr_15_reg_3814 = 64'd14;
assign buff_y_out_addr_16_reg_3834 = 64'd15;
assign buff_y_out_addr_3_reg_2974 = 64'd2;
assign buff_y_out_addr_4_reg_2994 = 64'd3;
assign buff_y_out_addr_5_reg_3134 = 64'd4;
assign buff_y_out_addr_6_reg_3154 = 64'd5;
assign buff_y_out_addr_7_reg_3294 = 64'd6;
assign buff_y_out_addr_8_reg_3314 = 64'd7;
assign buff_y_out_addr_9_reg_3454 = 64'd8;
assign grp_atax_Pipeline_lp1_fu_1664_ap_start = grp_atax_Pipeline_lp1_fu_1664_ap_start_reg;
assign grp_atax_Pipeline_lp3_fu_1748_ap_start = grp_atax_Pipeline_lp3_fu_1748_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1647_ap_start = grp_atax_Pipeline_lprd_2_fu_1647_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1896_ap_start = grp_atax_Pipeline_lpwr_1_fu_1896_ap_start_reg;
assign icmp_ln11_fu_1914_p2 = ((i_fu_102 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1938_p4 = {{i_fu_102[5:2]}};
assign trunc_ln11_1_fu_1935_p1 = i_fu_102[1:0];
assign trunc_ln11_fu_1931_p1 = i_fu_102[5:0];
assign x_address0 = zext_ln11_fu_1926_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1896_y_out_din;
assign zext_ln11_fu_1926_p1 = i_fu_102;
assign zext_ln5_fu_1947_p1 = lshr_ln5_fu_1938_p4;
endmodule 