
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
wire   [6:0] add_ln13_fu_2036_p2;
reg   [6:0] add_ln13_reg_2761;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_2048_p1;
reg   [5:0] trunc_ln13_reg_2824;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln13_2_fu_2055_p1;
reg   [0:0] trunc_ln13_2_reg_2832;
wire   [3:0] buff_s_out_addr_2_reg_2837;
wire    ap_CS_fsm_state5;
wire   [3:0] buff_s_out_1_addr_2_reg_2842;
wire   [3:0] buff_s_out_2_addr_2_reg_2847;
wire   [3:0] buff_s_out_3_addr_2_reg_2852;
wire   [3:0] buff_s_out_addr_3_reg_2857;
wire   [3:0] buff_s_out_1_addr_3_reg_2862;
wire   [3:0] buff_s_out_2_addr_3_reg_2867;
wire   [3:0] buff_s_out_3_addr_3_reg_2872;
reg   [31:0] buff_s_out_load_reg_2877;
reg   [31:0] buff_s_out_1_load_reg_2882;
reg   [31:0] buff_s_out_2_load_reg_2887;
reg   [31:0] buff_s_out_3_load_reg_2892;
reg   [31:0] buff_s_out_load_1_reg_2897;
reg   [31:0] buff_s_out_1_load_1_reg_2902;
reg   [31:0] buff_s_out_2_load_1_reg_2907;
reg   [31:0] buff_s_out_3_load_1_reg_2912;
wire   [3:0] buff_s_out_addr_4_reg_2917;
wire    ap_CS_fsm_state6;
wire   [3:0] buff_s_out_1_addr_4_reg_2922;
wire   [3:0] buff_s_out_2_addr_4_reg_2927;
wire   [3:0] buff_s_out_3_addr_4_reg_2932;
wire   [3:0] buff_s_out_addr_5_reg_2937;
wire   [3:0] buff_s_out_1_addr_5_reg_2942;
wire   [3:0] buff_s_out_2_addr_5_reg_2947;
wire   [3:0] buff_s_out_3_addr_5_reg_2952;
reg   [31:0] buff_s_out_load_2_reg_2957;
reg   [31:0] buff_s_out_1_load_2_reg_2962;
reg   [31:0] buff_s_out_2_load_2_reg_2967;
reg   [31:0] buff_s_out_3_load_2_reg_2972;
reg   [31:0] buff_s_out_load_3_reg_2977;
reg   [31:0] buff_s_out_1_load_3_reg_2982;
reg   [31:0] buff_s_out_2_load_3_reg_2987;
reg   [31:0] buff_s_out_3_load_3_reg_2992;
wire   [3:0] buff_s_out_addr_6_reg_3037;
wire    ap_CS_fsm_state7;
wire   [3:0] buff_s_out_1_addr_6_reg_3042;
wire   [3:0] buff_s_out_2_addr_6_reg_3047;
wire   [3:0] buff_s_out_3_addr_6_reg_3052;
wire   [3:0] buff_s_out_addr_7_reg_3057;
wire   [3:0] buff_s_out_1_addr_7_reg_3062;
wire   [3:0] buff_s_out_2_addr_7_reg_3067;
wire   [3:0] buff_s_out_3_addr_7_reg_3072;
reg   [31:0] buff_s_out_load_4_reg_3077;
reg   [31:0] buff_s_out_1_load_4_reg_3082;
reg   [31:0] buff_s_out_2_load_4_reg_3087;
reg   [31:0] buff_s_out_3_load_4_reg_3092;
reg   [31:0] buff_s_out_load_5_reg_3097;
reg   [31:0] buff_s_out_1_load_5_reg_3102;
reg   [31:0] buff_s_out_2_load_5_reg_3107;
reg   [31:0] buff_s_out_3_load_5_reg_3112;
reg   [31:0] buff_p_load_reg_3157;
reg   [31:0] buff_p_load_1_reg_3162;
reg   [31:0] buff_p_1_load_reg_3167;
reg   [31:0] buff_p_1_load_1_reg_3172;
reg   [31:0] buff_p_2_load_reg_3177;
reg   [31:0] buff_p_2_load_1_reg_3182;
reg   [31:0] buff_p_3_load_reg_3187;
reg   [31:0] buff_p_3_load_1_reg_3192;
wire   [3:0] buff_s_out_addr_8_reg_3197;
wire    ap_CS_fsm_state8;
wire   [3:0] buff_s_out_1_addr_8_reg_3202;
wire   [3:0] buff_s_out_2_addr_8_reg_3207;
wire   [3:0] buff_s_out_3_addr_8_reg_3212;
wire   [3:0] buff_s_out_addr_9_reg_3217;
wire   [3:0] buff_s_out_1_addr_9_reg_3222;
wire   [3:0] buff_s_out_2_addr_9_reg_3227;
wire   [3:0] buff_s_out_3_addr_9_reg_3232;
reg   [31:0] buff_s_out_load_6_reg_3237;
reg   [31:0] buff_s_out_1_load_6_reg_3242;
reg   [31:0] buff_s_out_2_load_6_reg_3247;
reg   [31:0] buff_s_out_3_load_6_reg_3252;
reg   [31:0] buff_s_out_load_7_reg_3257;
reg   [31:0] buff_s_out_1_load_7_reg_3262;
reg   [31:0] buff_s_out_2_load_7_reg_3267;
reg   [31:0] buff_s_out_3_load_7_reg_3272;
reg   [31:0] buff_p_load_2_reg_3317;
reg   [31:0] buff_p_load_3_reg_3322;
reg   [31:0] buff_p_1_load_2_reg_3327;
reg   [31:0] buff_p_1_load_3_reg_3332;
reg   [31:0] buff_p_2_load_2_reg_3337;
reg   [31:0] buff_p_2_load_3_reg_3342;
reg   [31:0] buff_p_3_load_2_reg_3347;
reg   [31:0] buff_p_3_load_3_reg_3352;
wire   [3:0] buff_s_out_addr_10_reg_3357;
wire    ap_CS_fsm_state9;
wire   [3:0] buff_s_out_1_addr_10_reg_3362;
wire   [3:0] buff_s_out_2_addr_10_reg_3367;
wire   [3:0] buff_s_out_3_addr_10_reg_3372;
wire   [3:0] buff_s_out_addr_11_reg_3377;
wire   [3:0] buff_s_out_1_addr_11_reg_3382;
wire   [3:0] buff_s_out_2_addr_11_reg_3387;
wire   [3:0] buff_s_out_3_addr_11_reg_3392;
reg   [31:0] buff_s_out_load_8_reg_3397;
reg   [31:0] buff_s_out_1_load_8_reg_3402;
reg   [31:0] buff_s_out_2_load_8_reg_3407;
reg   [31:0] buff_s_out_3_load_8_reg_3412;
reg   [31:0] buff_s_out_load_9_reg_3417;
reg   [31:0] buff_s_out_1_load_9_reg_3422;
reg   [31:0] buff_s_out_2_load_9_reg_3427;
reg   [31:0] buff_s_out_3_load_9_reg_3432;
reg   [31:0] buff_p_load_4_reg_3477;
reg   [31:0] buff_p_load_5_reg_3482;
reg   [31:0] buff_p_1_load_4_reg_3487;
reg   [31:0] buff_p_1_load_5_reg_3492;
reg   [31:0] buff_p_2_load_4_reg_3497;
reg   [31:0] buff_p_2_load_5_reg_3502;
reg   [31:0] buff_p_3_load_4_reg_3507;
reg   [31:0] buff_p_3_load_5_reg_3512;
wire   [3:0] buff_s_out_addr_12_reg_3517;
wire    ap_CS_fsm_state10;
wire   [3:0] buff_s_out_1_addr_12_reg_3522;
wire   [3:0] buff_s_out_2_addr_12_reg_3527;
wire   [3:0] buff_s_out_3_addr_12_reg_3532;
wire   [3:0] buff_s_out_addr_13_reg_3537;
wire   [3:0] buff_s_out_1_addr_13_reg_3542;
wire   [3:0] buff_s_out_2_addr_13_reg_3547;
wire   [3:0] buff_s_out_3_addr_13_reg_3552;
reg   [31:0] buff_s_out_load_10_reg_3557;
reg   [31:0] buff_s_out_1_load_10_reg_3562;
reg   [31:0] buff_s_out_2_load_10_reg_3567;
reg   [31:0] buff_s_out_3_load_10_reg_3572;
reg   [31:0] buff_s_out_load_11_reg_3577;
reg   [31:0] buff_s_out_1_load_11_reg_3582;
reg   [31:0] buff_s_out_2_load_11_reg_3587;
reg   [31:0] buff_s_out_3_load_11_reg_3592;
reg   [31:0] buff_p_load_6_reg_3637;
reg   [31:0] buff_p_load_7_reg_3642;
reg   [31:0] buff_p_1_load_6_reg_3647;
reg   [31:0] buff_p_1_load_7_reg_3652;
reg   [31:0] buff_p_2_load_6_reg_3657;
reg   [31:0] buff_p_2_load_7_reg_3662;
reg   [31:0] buff_p_3_load_6_reg_3667;
reg   [31:0] buff_p_3_load_7_reg_3672;
wire   [3:0] buff_s_out_addr_14_reg_3677;
wire    ap_CS_fsm_state11;
wire   [3:0] buff_s_out_1_addr_14_reg_3682;
wire   [3:0] buff_s_out_2_addr_14_reg_3687;
wire   [3:0] buff_s_out_3_addr_14_reg_3692;
wire   [3:0] buff_s_out_addr_15_reg_3697;
wire   [3:0] buff_s_out_1_addr_15_reg_3702;
wire   [3:0] buff_s_out_2_addr_15_reg_3707;
wire   [3:0] buff_s_out_3_addr_15_reg_3712;
reg   [31:0] buff_s_out_load_12_reg_3717;
reg   [31:0] buff_s_out_1_load_12_reg_3722;
reg   [31:0] buff_s_out_2_load_12_reg_3727;
reg   [31:0] buff_s_out_3_load_12_reg_3732;
reg   [31:0] buff_s_out_load_13_reg_3737;
reg   [31:0] buff_s_out_1_load_13_reg_3742;
reg   [31:0] buff_s_out_2_load_13_reg_3747;
reg   [31:0] buff_s_out_3_load_13_reg_3752;
reg   [31:0] buff_p_load_8_reg_3797;
reg   [31:0] buff_p_load_9_reg_3802;
reg   [31:0] buff_p_1_load_8_reg_3807;
reg   [31:0] buff_p_1_load_9_reg_3812;
reg   [31:0] buff_p_2_load_8_reg_3817;
reg   [31:0] buff_p_2_load_9_reg_3822;
reg   [31:0] buff_p_3_load_8_reg_3827;
reg   [31:0] buff_p_3_load_9_reg_3832;
reg   [31:0] buff_s_out_load_14_reg_3837;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_s_out_1_load_14_reg_3842;
reg   [31:0] buff_s_out_2_load_14_reg_3847;
reg   [31:0] buff_s_out_3_load_14_reg_3852;
reg   [31:0] buff_s_out_load_15_reg_3857;
reg   [31:0] buff_s_out_1_load_15_reg_3862;
reg   [31:0] buff_s_out_2_load_15_reg_3867;
reg   [31:0] buff_s_out_3_load_15_reg_3872;
reg   [31:0] buff_p_load_10_reg_3917;
reg   [31:0] buff_p_load_11_reg_3922;
reg   [31:0] buff_p_1_load_10_reg_3927;
reg   [31:0] buff_p_1_load_11_reg_3932;
reg   [31:0] buff_p_2_load_10_reg_3937;
reg   [31:0] buff_p_2_load_11_reg_3942;
reg   [31:0] buff_p_3_load_10_reg_3947;
reg   [31:0] buff_p_3_load_11_reg_3952;
wire    ap_CS_fsm_state13;
reg   [31:0] buff_p_load_12_reg_3997;
reg   [31:0] buff_p_load_13_reg_4002;
reg   [31:0] buff_p_1_load_12_reg_4007;
reg   [31:0] buff_p_1_load_13_reg_4012;
reg   [31:0] buff_p_2_load_12_reg_4017;
reg   [31:0] buff_p_2_load_13_reg_4022;
reg   [31:0] buff_p_3_load_12_reg_4027;
reg   [31:0] buff_p_3_load_13_reg_4032;
reg   [31:0] buff_p_load_14_reg_4037;
wire    ap_CS_fsm_state14;
reg   [31:0] buff_p_load_15_reg_4042;
reg   [31:0] buff_p_1_load_14_reg_4047;
reg   [31:0] buff_p_1_load_15_reg_4052;
reg   [31:0] buff_p_2_load_14_reg_4057;
reg   [31:0] buff_p_2_load_15_reg_4062;
reg   [31:0] buff_p_3_load_14_reg_4067;
reg   [31:0] buff_p_3_load_15_reg_4072;
reg   [8:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [8:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [8:0] buff_A_address2;
reg    buff_A_ce2;
wire   [31:0] buff_A_q2;
reg   [8:0] buff_A_address3;
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
reg   [8:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [8:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [8:0] buff_A_1_address2;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg   [8:0] buff_A_1_address3;
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
reg   [8:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [8:0] buff_A_2_address1;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg   [8:0] buff_A_2_address2;
reg    buff_A_2_ce2;
wire   [31:0] buff_A_2_q2;
reg   [8:0] buff_A_2_address3;
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
reg   [8:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [8:0] buff_A_3_address1;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg   [8:0] buff_A_3_address2;
reg    buff_A_3_ce2;
wire   [31:0] buff_A_3_q2;
reg   [8:0] buff_A_3_address3;
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
reg   [8:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg   [8:0] buff_A_4_address1;
reg    buff_A_4_ce1;
wire   [31:0] buff_A_4_q1;
reg   [8:0] buff_A_4_address2;
reg    buff_A_4_ce2;
wire   [31:0] buff_A_4_q2;
reg   [8:0] buff_A_4_address3;
reg    buff_A_4_ce3;
wire   [31:0] buff_A_4_q3;
reg    buff_A_4_ce4;
wire   [31:0] buff_A_4_q4;
reg    buff_A_4_ce5;
wire   [31:0] buff_A_4_q5;
reg    buff_A_4_ce6;
wire   [31:0] buff_A_4_q6;
reg    buff_A_4_ce7;
wire   [31:0] buff_A_4_q7;
reg    buff_A_4_ce8;
wire   [31:0] buff_A_4_q8;
reg    buff_A_4_ce9;
wire   [31:0] buff_A_4_q9;
reg    buff_A_4_ce10;
wire   [31:0] buff_A_4_q10;
reg    buff_A_4_ce11;
wire   [31:0] buff_A_4_q11;
reg    buff_A_4_ce12;
wire   [31:0] buff_A_4_q12;
reg    buff_A_4_ce13;
wire   [31:0] buff_A_4_q13;
reg    buff_A_4_ce14;
wire   [31:0] buff_A_4_q14;
reg    buff_A_4_ce15;
wire   [31:0] buff_A_4_q15;
reg   [8:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg   [8:0] buff_A_5_address1;
reg    buff_A_5_ce1;
wire   [31:0] buff_A_5_q1;
reg   [8:0] buff_A_5_address2;
reg    buff_A_5_ce2;
wire   [31:0] buff_A_5_q2;
reg   [8:0] buff_A_5_address3;
reg    buff_A_5_ce3;
wire   [31:0] buff_A_5_q3;
reg    buff_A_5_ce4;
wire   [31:0] buff_A_5_q4;
reg    buff_A_5_ce5;
wire   [31:0] buff_A_5_q5;
reg    buff_A_5_ce6;
wire   [31:0] buff_A_5_q6;
reg    buff_A_5_ce7;
wire   [31:0] buff_A_5_q7;
reg    buff_A_5_ce8;
wire   [31:0] buff_A_5_q8;
reg    buff_A_5_ce9;
wire   [31:0] buff_A_5_q9;
reg    buff_A_5_ce10;
wire   [31:0] buff_A_5_q10;
reg    buff_A_5_ce11;
wire   [31:0] buff_A_5_q11;
reg    buff_A_5_ce12;
wire   [31:0] buff_A_5_q12;
reg    buff_A_5_ce13;
wire   [31:0] buff_A_5_q13;
reg    buff_A_5_ce14;
wire   [31:0] buff_A_5_q14;
reg    buff_A_5_ce15;
wire   [31:0] buff_A_5_q15;
reg   [8:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg   [8:0] buff_A_6_address1;
reg    buff_A_6_ce1;
wire   [31:0] buff_A_6_q1;
reg   [8:0] buff_A_6_address2;
reg    buff_A_6_ce2;
wire   [31:0] buff_A_6_q2;
reg   [8:0] buff_A_6_address3;
reg    buff_A_6_ce3;
wire   [31:0] buff_A_6_q3;
reg    buff_A_6_ce4;
wire   [31:0] buff_A_6_q4;
reg    buff_A_6_ce5;
wire   [31:0] buff_A_6_q5;
reg    buff_A_6_ce6;
wire   [31:0] buff_A_6_q6;
reg    buff_A_6_ce7;
wire   [31:0] buff_A_6_q7;
reg    buff_A_6_ce8;
wire   [31:0] buff_A_6_q8;
reg    buff_A_6_ce9;
wire   [31:0] buff_A_6_q9;
reg    buff_A_6_ce10;
wire   [31:0] buff_A_6_q10;
reg    buff_A_6_ce11;
wire   [31:0] buff_A_6_q11;
reg    buff_A_6_ce12;
wire   [31:0] buff_A_6_q12;
reg    buff_A_6_ce13;
wire   [31:0] buff_A_6_q13;
reg    buff_A_6_ce14;
wire   [31:0] buff_A_6_q14;
reg    buff_A_6_ce15;
wire   [31:0] buff_A_6_q15;
reg   [8:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg   [8:0] buff_A_7_address1;
reg    buff_A_7_ce1;
wire   [31:0] buff_A_7_q1;
reg   [8:0] buff_A_7_address2;
reg    buff_A_7_ce2;
wire   [31:0] buff_A_7_q2;
reg   [8:0] buff_A_7_address3;
reg    buff_A_7_ce3;
wire   [31:0] buff_A_7_q3;
reg    buff_A_7_ce4;
wire   [31:0] buff_A_7_q4;
reg    buff_A_7_ce5;
wire   [31:0] buff_A_7_q5;
reg    buff_A_7_ce6;
wire   [31:0] buff_A_7_q6;
reg    buff_A_7_ce7;
wire   [31:0] buff_A_7_q7;
reg    buff_A_7_ce8;
wire   [31:0] buff_A_7_q8;
reg    buff_A_7_ce9;
wire   [31:0] buff_A_7_q9;
reg    buff_A_7_ce10;
wire   [31:0] buff_A_7_q10;
reg    buff_A_7_ce11;
wire   [31:0] buff_A_7_q11;
reg    buff_A_7_ce12;
wire   [31:0] buff_A_7_q12;
reg    buff_A_7_ce13;
wire   [31:0] buff_A_7_q13;
reg    buff_A_7_ce14;
wire   [31:0] buff_A_7_q14;
reg    buff_A_7_ce15;
wire   [31:0] buff_A_7_q15;
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
wire    grp_bicg_Pipeline_lprd_2_fu_1744_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1744_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_A_0_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1744_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1744_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1744_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_d0;
wire    grp_bicg_Pipeline_lp1_fu_1766_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1766_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1766_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1766_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce3;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce3;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce3;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce3;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce3;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce3;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce3;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address2;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce2;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address3;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce3;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1766_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_r_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1766_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_r_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1766_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_r_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1766_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1766_buff_r_3_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_63105_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_63105_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_62104_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_62104_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_61103_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_61103_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_60102_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_60102_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_59101_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_59101_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_58100_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_58100_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5799_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5799_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5698_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5698_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5597_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5597_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5496_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5496_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5395_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5395_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5294_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5294_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5193_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5193_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_5092_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_5092_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4991_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4991_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4890_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4890_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4789_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4789_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4688_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4688_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4587_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4587_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4486_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4486_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4385_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4385_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4284_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4284_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4183_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4183_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_4082_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_4082_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3981_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3981_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3880_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3880_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3779_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3779_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3678_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3678_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3577_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3577_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3476_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3476_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3375_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3375_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3274_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3274_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3173_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_3072_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_3072_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2971_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2971_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2870_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2870_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2769_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2769_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2668_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2668_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2567_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2567_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2466_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2466_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2365_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2365_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2264_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2264_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2163_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_2062_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_2062_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1961_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1961_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1860_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1860_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1759_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1759_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1658_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1658_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1557_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1557_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1456_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1456_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1355_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1355_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1254_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1254_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1153_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_1052_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_1052_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_951_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_951_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_850_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_850_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_749_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_749_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_648_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_648_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_547_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_547_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_446_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_446_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_345_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_345_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_244_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_244_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add_143_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add_143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_add42_out;
wire    grp_bicg_Pipeline_lp1_fu_1766_add42_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_ce;
wire    grp_bicg_Pipeline_lp3_fu_1918_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_1918_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_1918_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_1918_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address2;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address3;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address4;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address5;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address6;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address7;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address8;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address9;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address10;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address11;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address12;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address13;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address14;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address15;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce15;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_ce1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_2006_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_2006_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_2006_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_2006_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_2006_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_2006_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_2006_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_2006_q_out_write;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_3_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1744_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp1_fu_1766_ap_start_reg;
reg    grp_bicg_Pipeline_lp3_fu_1918_ap_start_reg;
wire    ap_CS_fsm_state15;
reg    grp_bicg_Pipeline_lpwr_fu_2006_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] zext_ln13_fu_2042_p1;
wire   [0:0] icmp_ln13_fu_2030_p2;
wire   [63:0] zext_ln5_fu_2068_p1;
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
wire   [1:0] trunc_ln13_1_fu_2052_p1;
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
wire   [31:0] bitcast_ln14_fu_2088_p1;
reg    buff_p_2_ce0_local;
reg   [3:0] buff_p_2_address0_local;
reg    buff_p_2_ce1_local;
reg   [3:0] buff_p_2_address1_local;
reg    buff_r_2_we0_local;
wire   [31:0] bitcast_ln15_fu_2096_p1;
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
wire   [3:0] lshr_ln5_1_fu_2059_p4;
wire   [31:0] grp_fu_4077_p2;
reg   [31:0] grp_fu_4077_p0;
reg   [31:0] grp_fu_4077_p1;
reg    grp_fu_4077_ce;
wire   [31:0] grp_fu_4081_p2;
reg   [31:0] grp_fu_4081_p0;
reg   [31:0] grp_fu_4081_p1;
reg    grp_fu_4081_ce;
wire   [31:0] grp_fu_4085_p2;
reg   [31:0] grp_fu_4085_p0;
reg   [31:0] grp_fu_4085_p1;
reg    grp_fu_4085_ce;
wire   [31:0] grp_fu_4089_p2;
reg   [31:0] grp_fu_4089_p0;
reg   [31:0] grp_fu_4089_p1;
reg    grp_fu_4089_ce;
wire   [31:0] grp_fu_4093_p2;
reg   [31:0] grp_fu_4093_p0;
reg   [31:0] grp_fu_4093_p1;
reg    grp_fu_4093_ce;
wire   [31:0] grp_fu_4097_p2;
reg   [31:0] grp_fu_4097_p0;
reg   [31:0] grp_fu_4097_p1;
reg    grp_fu_4097_ce;
wire   [31:0] grp_fu_4101_p2;
reg   [31:0] grp_fu_4101_p0;
reg   [31:0] grp_fu_4101_p1;
reg    grp_fu_4101_ce;
wire   [31:0] grp_fu_4105_p2;
reg   [31:0] grp_fu_4105_p0;
reg   [31:0] grp_fu_4105_p1;
reg    grp_fu_4105_ce;
wire   [31:0] grp_fu_4109_p2;
reg   [31:0] grp_fu_4109_p0;
reg   [31:0] grp_fu_4109_p1;
reg    grp_fu_4109_ce;
wire   [31:0] grp_fu_4113_p2;
reg   [31:0] grp_fu_4113_p0;
reg   [31:0] grp_fu_4113_p1;
reg    grp_fu_4113_ce;
wire   [31:0] grp_fu_4117_p2;
reg   [31:0] grp_fu_4117_p0;
reg   [31:0] grp_fu_4117_p1;
reg    grp_fu_4117_ce;
wire   [31:0] grp_fu_4121_p2;
reg   [31:0] grp_fu_4121_p0;
reg   [31:0] grp_fu_4121_p1;
reg    grp_fu_4121_ce;
wire   [31:0] grp_fu_4125_p2;
reg   [31:0] grp_fu_4125_p0;
reg   [31:0] grp_fu_4125_p1;
reg    grp_fu_4125_ce;
wire   [31:0] grp_fu_4129_p2;
reg   [31:0] grp_fu_4129_p0;
reg   [31:0] grp_fu_4129_p1;
reg    grp_fu_4129_ce;
wire   [31:0] grp_fu_4133_p2;
reg   [31:0] grp_fu_4133_p0;
reg   [31:0] grp_fu_4133_p1;
reg    grp_fu_4133_ce;
wire   [31:0] grp_fu_4137_p2;
reg   [31:0] grp_fu_4137_p0;
reg   [31:0] grp_fu_4137_p1;
reg    grp_fu_4137_ce;
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
#0 grp_bicg_Pipeline_lprd_2_fu_1744_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1766_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_1918_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_2006_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_d0),.q0(buff_A_4_q0),.address1(buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1),.address2(buff_A_4_address2),.ce2(buff_A_4_ce2),.q2(buff_A_4_q2),.address3(buff_A_4_address3),.ce3(buff_A_4_ce3),.q3(buff_A_4_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address4),.ce4(buff_A_4_ce4),.q4(buff_A_4_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address5),.ce5(buff_A_4_ce5),.q5(buff_A_4_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address6),.ce6(buff_A_4_ce6),.q6(buff_A_4_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address7),.ce7(buff_A_4_ce7),.q7(buff_A_4_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address8),.ce8(buff_A_4_ce8),.q8(buff_A_4_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address9),.ce9(buff_A_4_ce9),.q9(buff_A_4_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address10),.ce10(buff_A_4_ce10),.q10(buff_A_4_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address11),.ce11(buff_A_4_ce11),.q11(buff_A_4_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address12),.ce12(buff_A_4_ce12),.q12(buff_A_4_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address13),.ce13(buff_A_4_ce13),.q13(buff_A_4_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address14),.ce14(buff_A_4_ce14),.q14(buff_A_4_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address15),.ce15(buff_A_4_ce15),.q15(buff_A_4_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_d0),.q0(buff_A_5_q0),.address1(buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1),.address2(buff_A_5_address2),.ce2(buff_A_5_ce2),.q2(buff_A_5_q2),.address3(buff_A_5_address3),.ce3(buff_A_5_ce3),.q3(buff_A_5_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address4),.ce4(buff_A_5_ce4),.q4(buff_A_5_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address5),.ce5(buff_A_5_ce5),.q5(buff_A_5_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address6),.ce6(buff_A_5_ce6),.q6(buff_A_5_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address7),.ce7(buff_A_5_ce7),.q7(buff_A_5_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address8),.ce8(buff_A_5_ce8),.q8(buff_A_5_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address9),.ce9(buff_A_5_ce9),.q9(buff_A_5_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address10),.ce10(buff_A_5_ce10),.q10(buff_A_5_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address11),.ce11(buff_A_5_ce11),.q11(buff_A_5_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address12),.ce12(buff_A_5_ce12),.q12(buff_A_5_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address13),.ce13(buff_A_5_ce13),.q13(buff_A_5_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address14),.ce14(buff_A_5_ce14),.q14(buff_A_5_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address15),.ce15(buff_A_5_ce15),.q15(buff_A_5_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_d0),.q0(buff_A_6_q0),.address1(buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1),.address2(buff_A_6_address2),.ce2(buff_A_6_ce2),.q2(buff_A_6_q2),.address3(buff_A_6_address3),.ce3(buff_A_6_ce3),.q3(buff_A_6_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address4),.ce4(buff_A_6_ce4),.q4(buff_A_6_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address5),.ce5(buff_A_6_ce5),.q5(buff_A_6_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address6),.ce6(buff_A_6_ce6),.q6(buff_A_6_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address7),.ce7(buff_A_6_ce7),.q7(buff_A_6_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address8),.ce8(buff_A_6_ce8),.q8(buff_A_6_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address9),.ce9(buff_A_6_ce9),.q9(buff_A_6_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address10),.ce10(buff_A_6_ce10),.q10(buff_A_6_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address11),.ce11(buff_A_6_ce11),.q11(buff_A_6_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address12),.ce12(buff_A_6_ce12),.q12(buff_A_6_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address13),.ce13(buff_A_6_ce13),.q13(buff_A_6_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address14),.ce14(buff_A_6_ce14),.q14(buff_A_6_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address15),.ce15(buff_A_6_ce15),.q15(buff_A_6_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_d0),.q0(buff_A_7_q0),.address1(buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1),.address2(buff_A_7_address2),.ce2(buff_A_7_ce2),.q2(buff_A_7_q2),.address3(buff_A_7_address3),.ce3(buff_A_7_ce3),.q3(buff_A_7_q3),.address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address4),.ce4(buff_A_7_ce4),.q4(buff_A_7_q4),.address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address5),.ce5(buff_A_7_ce5),.q5(buff_A_7_q5),.address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address6),.ce6(buff_A_7_ce6),.q6(buff_A_7_q6),.address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address7),.ce7(buff_A_7_ce7),.q7(buff_A_7_q7),.address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address8),.ce8(buff_A_7_ce8),.q8(buff_A_7_q8),.address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address9),.ce9(buff_A_7_ce9),.q9(buff_A_7_q9),.address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address10),.ce10(buff_A_7_ce10),.q10(buff_A_7_q10),.address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address11),.ce11(buff_A_7_ce11),.q11(buff_A_7_q11),.address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address12),.ce12(buff_A_7_ce12),.q12(buff_A_7_q12),.address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address13),.ce13(buff_A_7_ce13),.q13(buff_A_7_q13),.address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address14),.ce14(buff_A_7_ce14),.q14(buff_A_7_q14),.address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address15),.ce15(buff_A_7_ce15),.q15(buff_A_7_q15));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_2088_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_2088_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0_local),.ce0(buff_p_2_ce0_local),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_2088_p1),.q0(buff_p_2_q0),.address1(buff_p_2_address1_local),.ce1(buff_p_2_ce1_local),.q1(buff_p_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0_local),.ce0(buff_p_3_ce0_local),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_2088_p1),.q0(buff_p_3_q0),.address1(buff_p_3_address1_local),.ce1(buff_p_3_ce1_local),.q1(buff_p_3_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_2096_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_2096_p1),.q0(buff_r_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_2096_p1),.q0(buff_r_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_2096_p1),.q0(buff_r_3_q0));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0_local),.d0(buff_s_out_d0_local),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0_local),.d0(buff_s_out_1_d0_local),.q0(buff_s_out_1_q0),.address1(buff_s_out_1_address1_local),.ce1(buff_s_out_1_ce1_local),.we1(buff_s_out_1_we1_local),.d1(buff_s_out_1_d1_local),.q1(buff_s_out_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0_local),.d0(buff_s_out_2_d0_local),.q0(buff_s_out_2_q0),.address1(buff_s_out_2_address1_local),.ce1(buff_s_out_2_ce1_local),.we1(buff_s_out_2_we1_local),.d1(buff_s_out_2_d1_local),.q1(buff_s_out_2_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0_local),.d0(buff_s_out_3_d0_local),.q0(buff_s_out_3_q0),.address1(buff_s_out_3_address1_local),.ce1(buff_s_out_3_ce1_local),.we1(buff_s_out_3_we1_local),.d1(buff_s_out_3_d1_local),.q1(buff_s_out_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_address1),.ce1(buff_q_out_ce1),.q1(buff_q_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.q1(buff_q_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0),.address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_address1),.ce1(buff_q_out_2_ce1),.q1(buff_q_out_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0),.address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_address1),.ce1(buff_q_out_3_ce1),.q1(buff_q_out_3_q1));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1744(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1744_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1744_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1744_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1744_ap_ready),.i(trunc_ln13_reg_2824),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1744_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1744_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1744_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1744_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_d0),.empty(trunc_ln13_2_reg_2832));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1766(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1766_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1766_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1766_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1766_ap_ready),.buff_s_out_3_load_15(buff_s_out_3_load_15_reg_3872),.buff_s_out_2_load_15(buff_s_out_2_load_15_reg_3867),.buff_s_out_1_load_15(buff_s_out_1_load_15_reg_3862),.buff_s_out_load_15(buff_s_out_load_15_reg_3857),.buff_s_out_3_load_14(buff_s_out_3_load_14_reg_3852),.buff_s_out_2_load_14(buff_s_out_2_load_14_reg_3847),.buff_s_out_1_load_14(buff_s_out_1_load_14_reg_3842),.buff_s_out_load_14(buff_s_out_load_14_reg_3837),.buff_s_out_3_load_13(buff_s_out_3_load_13_reg_3752),.buff_s_out_2_load_13(buff_s_out_2_load_13_reg_3747),.buff_s_out_1_load_13(buff_s_out_1_load_13_reg_3742),.buff_s_out_load_13(buff_s_out_load_13_reg_3737),.buff_s_out_3_load_12(buff_s_out_3_load_12_reg_3732),.buff_s_out_2_load_12(buff_s_out_2_load_12_reg_3727),.buff_s_out_1_load_12(buff_s_out_1_load_12_reg_3722),.buff_s_out_load_12(buff_s_out_load_12_reg_3717),.buff_s_out_3_load_11(buff_s_out_3_load_11_reg_3592),.buff_s_out_2_load_11(buff_s_out_2_load_11_reg_3587),.buff_s_out_1_load_11(buff_s_out_1_load_11_reg_3582),.buff_s_out_load_11(buff_s_out_load_11_reg_3577),.buff_s_out_3_load_10(buff_s_out_3_load_10_reg_3572),.buff_s_out_2_load_10(buff_s_out_2_load_10_reg_3567),.buff_s_out_1_load_10(buff_s_out_1_load_10_reg_3562),.buff_s_out_load_10(buff_s_out_load_10_reg_3557),.buff_s_out_3_load_9(buff_s_out_3_load_9_reg_3432),.buff_s_out_2_load_9(buff_s_out_2_load_9_reg_3427),.buff_s_out_1_load_9(buff_s_out_1_load_9_reg_3422),.buff_s_out_load_9(buff_s_out_load_9_reg_3417),.buff_s_out_3_load_8(buff_s_out_3_load_8_reg_3412),.buff_s_out_2_load_8(buff_s_out_2_load_8_reg_3407),.buff_s_out_1_load_8(buff_s_out_1_load_8_reg_3402),.buff_s_out_load_8(buff_s_out_load_8_reg_3397),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_3272),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_3267),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_3262),.buff_s_out_load_7(buff_s_out_load_7_reg_3257),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_3252),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_3247),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_3242),.buff_s_out_load_6(buff_s_out_load_6_reg_3237),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_3112),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_3107),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_3102),.buff_s_out_load_5(buff_s_out_load_5_reg_3097),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_3092),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_3087),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_3082),.buff_s_out_load_4(buff_s_out_load_4_reg_3077),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_2992),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_2987),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2982),.buff_s_out_load_3(buff_s_out_load_3_reg_2977),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_2972),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_2967),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2962),.buff_s_out_load_2(buff_s_out_load_2_reg_2957),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_2912),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_2907),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2902),.buff_s_out_load_1(buff_s_out_load_1_reg_2897),.buff_s_out_3_load(buff_s_out_3_load_reg_2892),.buff_s_out_2_load(buff_s_out_2_load_reg_2887),.buff_s_out_1_load(buff_s_out_1_load_reg_2882),.buff_s_out_load(buff_s_out_load_reg_2877),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address3),.buff_A_2_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address3),.buff_A_3_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_4_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_4_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address2),.buff_A_4_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce2),.buff_A_4_q2(buff_A_4_q2),.buff_A_4_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address3),.buff_A_4_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce3),.buff_A_4_q3(buff_A_4_q3),.buff_A_5_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_5_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address2),.buff_A_5_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce2),.buff_A_5_q2(buff_A_5_q2),.buff_A_5_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address3),.buff_A_5_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce3),.buff_A_5_q3(buff_A_5_q3),.buff_A_6_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_6_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address2),.buff_A_6_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce2),.buff_A_6_q2(buff_A_6_q2),.buff_A_6_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address3),.buff_A_6_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce3),.buff_A_6_q3(buff_A_6_q3),.buff_A_7_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_7_address2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address2),.buff_A_7_ce2(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce2),.buff_A_7_q2(buff_A_7_q2),.buff_A_7_address3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address3),.buff_A_7_ce3(grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce3),.buff_A_7_q3(buff_A_7_q3),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_1766_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.add_63105_out(grp_bicg_Pipeline_lp1_fu_1766_add_63105_out),.add_63105_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_63105_out_ap_vld),.add_62104_out(grp_bicg_Pipeline_lp1_fu_1766_add_62104_out),.add_62104_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_62104_out_ap_vld),.add_61103_out(grp_bicg_Pipeline_lp1_fu_1766_add_61103_out),.add_61103_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_61103_out_ap_vld),.add_60102_out(grp_bicg_Pipeline_lp1_fu_1766_add_60102_out),.add_60102_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_60102_out_ap_vld),.add_59101_out(grp_bicg_Pipeline_lp1_fu_1766_add_59101_out),.add_59101_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_59101_out_ap_vld),.add_58100_out(grp_bicg_Pipeline_lp1_fu_1766_add_58100_out),.add_58100_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_58100_out_ap_vld),.add_5799_out(grp_bicg_Pipeline_lp1_fu_1766_add_5799_out),.add_5799_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5799_out_ap_vld),.add_5698_out(grp_bicg_Pipeline_lp1_fu_1766_add_5698_out),.add_5698_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5698_out_ap_vld),.add_5597_out(grp_bicg_Pipeline_lp1_fu_1766_add_5597_out),.add_5597_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5597_out_ap_vld),.add_5496_out(grp_bicg_Pipeline_lp1_fu_1766_add_5496_out),.add_5496_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5496_out_ap_vld),.add_5395_out(grp_bicg_Pipeline_lp1_fu_1766_add_5395_out),.add_5395_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5395_out_ap_vld),.add_5294_out(grp_bicg_Pipeline_lp1_fu_1766_add_5294_out),.add_5294_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5294_out_ap_vld),.add_5193_out(grp_bicg_Pipeline_lp1_fu_1766_add_5193_out),.add_5193_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5193_out_ap_vld),.add_5092_out(grp_bicg_Pipeline_lp1_fu_1766_add_5092_out),.add_5092_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_5092_out_ap_vld),.add_4991_out(grp_bicg_Pipeline_lp1_fu_1766_add_4991_out),.add_4991_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4991_out_ap_vld),.add_4890_out(grp_bicg_Pipeline_lp1_fu_1766_add_4890_out),.add_4890_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4890_out_ap_vld),.add_4789_out(grp_bicg_Pipeline_lp1_fu_1766_add_4789_out),.add_4789_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4789_out_ap_vld),.add_4688_out(grp_bicg_Pipeline_lp1_fu_1766_add_4688_out),.add_4688_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4688_out_ap_vld),.add_4587_out(grp_bicg_Pipeline_lp1_fu_1766_add_4587_out),.add_4587_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4587_out_ap_vld),.add_4486_out(grp_bicg_Pipeline_lp1_fu_1766_add_4486_out),.add_4486_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4486_out_ap_vld),.add_4385_out(grp_bicg_Pipeline_lp1_fu_1766_add_4385_out),.add_4385_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4385_out_ap_vld),.add_4284_out(grp_bicg_Pipeline_lp1_fu_1766_add_4284_out),.add_4284_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4284_out_ap_vld),.add_4183_out(grp_bicg_Pipeline_lp1_fu_1766_add_4183_out),.add_4183_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4183_out_ap_vld),.add_4082_out(grp_bicg_Pipeline_lp1_fu_1766_add_4082_out),.add_4082_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_4082_out_ap_vld),.add_3981_out(grp_bicg_Pipeline_lp1_fu_1766_add_3981_out),.add_3981_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3981_out_ap_vld),.add_3880_out(grp_bicg_Pipeline_lp1_fu_1766_add_3880_out),.add_3880_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3880_out_ap_vld),.add_3779_out(grp_bicg_Pipeline_lp1_fu_1766_add_3779_out),.add_3779_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3779_out_ap_vld),.add_3678_out(grp_bicg_Pipeline_lp1_fu_1766_add_3678_out),.add_3678_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3678_out_ap_vld),.add_3577_out(grp_bicg_Pipeline_lp1_fu_1766_add_3577_out),.add_3577_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3577_out_ap_vld),.add_3476_out(grp_bicg_Pipeline_lp1_fu_1766_add_3476_out),.add_3476_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3476_out_ap_vld),.add_3375_out(grp_bicg_Pipeline_lp1_fu_1766_add_3375_out),.add_3375_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3375_out_ap_vld),.add_3274_out(grp_bicg_Pipeline_lp1_fu_1766_add_3274_out),.add_3274_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3274_out_ap_vld),.add_3173_out(grp_bicg_Pipeline_lp1_fu_1766_add_3173_out),.add_3173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3173_out_ap_vld),.add_3072_out(grp_bicg_Pipeline_lp1_fu_1766_add_3072_out),.add_3072_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_3072_out_ap_vld),.add_2971_out(grp_bicg_Pipeline_lp1_fu_1766_add_2971_out),.add_2971_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2971_out_ap_vld),.add_2870_out(grp_bicg_Pipeline_lp1_fu_1766_add_2870_out),.add_2870_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2870_out_ap_vld),.add_2769_out(grp_bicg_Pipeline_lp1_fu_1766_add_2769_out),.add_2769_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2769_out_ap_vld),.add_2668_out(grp_bicg_Pipeline_lp1_fu_1766_add_2668_out),.add_2668_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2668_out_ap_vld),.add_2567_out(grp_bicg_Pipeline_lp1_fu_1766_add_2567_out),.add_2567_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2567_out_ap_vld),.add_2466_out(grp_bicg_Pipeline_lp1_fu_1766_add_2466_out),.add_2466_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2466_out_ap_vld),.add_2365_out(grp_bicg_Pipeline_lp1_fu_1766_add_2365_out),.add_2365_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2365_out_ap_vld),.add_2264_out(grp_bicg_Pipeline_lp1_fu_1766_add_2264_out),.add_2264_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2264_out_ap_vld),.add_2163_out(grp_bicg_Pipeline_lp1_fu_1766_add_2163_out),.add_2163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2163_out_ap_vld),.add_2062_out(grp_bicg_Pipeline_lp1_fu_1766_add_2062_out),.add_2062_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_2062_out_ap_vld),.add_1961_out(grp_bicg_Pipeline_lp1_fu_1766_add_1961_out),.add_1961_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1961_out_ap_vld),.add_1860_out(grp_bicg_Pipeline_lp1_fu_1766_add_1860_out),.add_1860_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1860_out_ap_vld),.add_1759_out(grp_bicg_Pipeline_lp1_fu_1766_add_1759_out),.add_1759_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1759_out_ap_vld),.add_1658_out(grp_bicg_Pipeline_lp1_fu_1766_add_1658_out),.add_1658_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1658_out_ap_vld),.add_1557_out(grp_bicg_Pipeline_lp1_fu_1766_add_1557_out),.add_1557_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1557_out_ap_vld),.add_1456_out(grp_bicg_Pipeline_lp1_fu_1766_add_1456_out),.add_1456_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1456_out_ap_vld),.add_1355_out(grp_bicg_Pipeline_lp1_fu_1766_add_1355_out),.add_1355_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1355_out_ap_vld),.add_1254_out(grp_bicg_Pipeline_lp1_fu_1766_add_1254_out),.add_1254_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1254_out_ap_vld),.add_1153_out(grp_bicg_Pipeline_lp1_fu_1766_add_1153_out),.add_1153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1153_out_ap_vld),.add_1052_out(grp_bicg_Pipeline_lp1_fu_1766_add_1052_out),.add_1052_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_1052_out_ap_vld),.add_951_out(grp_bicg_Pipeline_lp1_fu_1766_add_951_out),.add_951_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_951_out_ap_vld),.add_850_out(grp_bicg_Pipeline_lp1_fu_1766_add_850_out),.add_850_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_850_out_ap_vld),.add_749_out(grp_bicg_Pipeline_lp1_fu_1766_add_749_out),.add_749_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_749_out_ap_vld),.add_648_out(grp_bicg_Pipeline_lp1_fu_1766_add_648_out),.add_648_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_648_out_ap_vld),.add_547_out(grp_bicg_Pipeline_lp1_fu_1766_add_547_out),.add_547_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_547_out_ap_vld),.add_446_out(grp_bicg_Pipeline_lp1_fu_1766_add_446_out),.add_446_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_446_out_ap_vld),.add_345_out(grp_bicg_Pipeline_lp1_fu_1766_add_345_out),.add_345_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_345_out_ap_vld),.add_244_out(grp_bicg_Pipeline_lp1_fu_1766_add_244_out),.add_244_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_244_out_ap_vld),.add_143_out(grp_bicg_Pipeline_lp1_fu_1766_add_143_out),.add_143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add_143_out_ap_vld),.add42_out(grp_bicg_Pipeline_lp1_fu_1766_add42_out),.add42_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1766_add42_out_ap_vld),.grp_fu_4077_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_din0),.grp_fu_4077_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_din1),.grp_fu_4077_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_opcode),.grp_fu_4077_p_dout0(grp_fu_4077_p2),.grp_fu_4077_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_ce),.grp_fu_4081_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_din0),.grp_fu_4081_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_din1),.grp_fu_4081_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_opcode),.grp_fu_4081_p_dout0(grp_fu_4081_p2),.grp_fu_4081_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_ce),.grp_fu_4085_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_din0),.grp_fu_4085_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_din1),.grp_fu_4085_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_opcode),.grp_fu_4085_p_dout0(grp_fu_4085_p2),.grp_fu_4085_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_ce),.grp_fu_4089_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_din0),.grp_fu_4089_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_din1),.grp_fu_4089_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_opcode),.grp_fu_4089_p_dout0(grp_fu_4089_p2),.grp_fu_4089_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_ce),.grp_fu_4093_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_din0),.grp_fu_4093_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_din1),.grp_fu_4093_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_opcode),.grp_fu_4093_p_dout0(grp_fu_4093_p2),.grp_fu_4093_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_ce),.grp_fu_4097_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_din0),.grp_fu_4097_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_din1),.grp_fu_4097_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_opcode),.grp_fu_4097_p_dout0(grp_fu_4097_p2),.grp_fu_4097_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_ce),.grp_fu_4101_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_din0),.grp_fu_4101_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_din1),.grp_fu_4101_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_opcode),.grp_fu_4101_p_dout0(grp_fu_4101_p2),.grp_fu_4101_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_ce),.grp_fu_4105_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_din0),.grp_fu_4105_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_din1),.grp_fu_4105_p_opcode(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_opcode),.grp_fu_4105_p_dout0(grp_fu_4105_p2),.grp_fu_4105_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_ce),.grp_fu_4109_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_din0),.grp_fu_4109_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_din1),.grp_fu_4109_p_dout0(grp_fu_4109_p2),.grp_fu_4109_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_ce),.grp_fu_4113_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_din0),.grp_fu_4113_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_din1),.grp_fu_4113_p_dout0(grp_fu_4113_p2),.grp_fu_4113_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_ce),.grp_fu_4117_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_din0),.grp_fu_4117_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_din1),.grp_fu_4117_p_dout0(grp_fu_4117_p2),.grp_fu_4117_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_ce),.grp_fu_4121_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_din0),.grp_fu_4121_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_din1),.grp_fu_4121_p_dout0(grp_fu_4121_p2),.grp_fu_4121_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_ce),.grp_fu_4125_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_din0),.grp_fu_4125_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_din1),.grp_fu_4125_p_dout0(grp_fu_4125_p2),.grp_fu_4125_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_ce),.grp_fu_4129_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_din0),.grp_fu_4129_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_din1),.grp_fu_4129_p_dout0(grp_fu_4129_p2),.grp_fu_4129_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_ce),.grp_fu_4133_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_din0),.grp_fu_4133_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_din1),.grp_fu_4133_p_dout0(grp_fu_4133_p2),.grp_fu_4133_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_ce),.grp_fu_4137_p_din0(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_din0),.grp_fu_4137_p_din1(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_din1),.grp_fu_4137_p_dout0(grp_fu_4137_p2),.grp_fu_4137_p_ce(grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_ce));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_1918(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_1918_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_1918_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_1918_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_1918_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address9),.buff_A_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address10),.buff_A_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address11),.buff_A_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address12),.buff_A_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address13),.buff_A_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address14),.buff_A_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_address15),.buff_A_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address9),.buff_A_1_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address10),.buff_A_1_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address11),.buff_A_1_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address12),.buff_A_1_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address13),.buff_A_1_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address14),.buff_A_1_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address15),.buff_A_1_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address3),.buff_A_2_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address4),.buff_A_2_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address5),.buff_A_2_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address6),.buff_A_2_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address7),.buff_A_2_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address8),.buff_A_2_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address9),.buff_A_2_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address10),.buff_A_2_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address11),.buff_A_2_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address12),.buff_A_2_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address13),.buff_A_2_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address14),.buff_A_2_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address15),.buff_A_2_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address3),.buff_A_3_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address4),.buff_A_3_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address5),.buff_A_3_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address6),.buff_A_3_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address7),.buff_A_3_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address8),.buff_A_3_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address9),.buff_A_3_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address10),.buff_A_3_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address11),.buff_A_3_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address12),.buff_A_3_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address13),.buff_A_3_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address14),.buff_A_3_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address15),.buff_A_3_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_A_4_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_4_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address2),.buff_A_4_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce2),.buff_A_4_q2(buff_A_4_q2),.buff_A_4_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address3),.buff_A_4_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce3),.buff_A_4_q3(buff_A_4_q3),.buff_A_4_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address4),.buff_A_4_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce4),.buff_A_4_q4(buff_A_4_q4),.buff_A_4_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address5),.buff_A_4_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce5),.buff_A_4_q5(buff_A_4_q5),.buff_A_4_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address6),.buff_A_4_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce6),.buff_A_4_q6(buff_A_4_q6),.buff_A_4_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address7),.buff_A_4_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce7),.buff_A_4_q7(buff_A_4_q7),.buff_A_4_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address8),.buff_A_4_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce8),.buff_A_4_q8(buff_A_4_q8),.buff_A_4_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address9),.buff_A_4_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce9),.buff_A_4_q9(buff_A_4_q9),.buff_A_4_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address10),.buff_A_4_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce10),.buff_A_4_q10(buff_A_4_q10),.buff_A_4_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address11),.buff_A_4_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce11),.buff_A_4_q11(buff_A_4_q11),.buff_A_4_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address12),.buff_A_4_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce12),.buff_A_4_q12(buff_A_4_q12),.buff_A_4_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address13),.buff_A_4_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce13),.buff_A_4_q13(buff_A_4_q13),.buff_A_4_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address14),.buff_A_4_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce14),.buff_A_4_q14(buff_A_4_q14),.buff_A_4_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address15),.buff_A_4_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce15),.buff_A_4_q15(buff_A_4_q15),.buff_A_5_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_5_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address2),.buff_A_5_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce2),.buff_A_5_q2(buff_A_5_q2),.buff_A_5_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address3),.buff_A_5_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce3),.buff_A_5_q3(buff_A_5_q3),.buff_A_5_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address4),.buff_A_5_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce4),.buff_A_5_q4(buff_A_5_q4),.buff_A_5_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address5),.buff_A_5_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce5),.buff_A_5_q5(buff_A_5_q5),.buff_A_5_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address6),.buff_A_5_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce6),.buff_A_5_q6(buff_A_5_q6),.buff_A_5_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address7),.buff_A_5_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce7),.buff_A_5_q7(buff_A_5_q7),.buff_A_5_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address8),.buff_A_5_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce8),.buff_A_5_q8(buff_A_5_q8),.buff_A_5_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address9),.buff_A_5_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce9),.buff_A_5_q9(buff_A_5_q9),.buff_A_5_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address10),.buff_A_5_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce10),.buff_A_5_q10(buff_A_5_q10),.buff_A_5_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address11),.buff_A_5_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce11),.buff_A_5_q11(buff_A_5_q11),.buff_A_5_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address12),.buff_A_5_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce12),.buff_A_5_q12(buff_A_5_q12),.buff_A_5_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address13),.buff_A_5_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce13),.buff_A_5_q13(buff_A_5_q13),.buff_A_5_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address14),.buff_A_5_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce14),.buff_A_5_q14(buff_A_5_q14),.buff_A_5_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address15),.buff_A_5_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce15),.buff_A_5_q15(buff_A_5_q15),.buff_A_6_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_6_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address2),.buff_A_6_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce2),.buff_A_6_q2(buff_A_6_q2),.buff_A_6_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address3),.buff_A_6_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce3),.buff_A_6_q3(buff_A_6_q3),.buff_A_6_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address4),.buff_A_6_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce4),.buff_A_6_q4(buff_A_6_q4),.buff_A_6_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address5),.buff_A_6_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce5),.buff_A_6_q5(buff_A_6_q5),.buff_A_6_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address6),.buff_A_6_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce6),.buff_A_6_q6(buff_A_6_q6),.buff_A_6_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address7),.buff_A_6_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce7),.buff_A_6_q7(buff_A_6_q7),.buff_A_6_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address8),.buff_A_6_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce8),.buff_A_6_q8(buff_A_6_q8),.buff_A_6_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address9),.buff_A_6_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce9),.buff_A_6_q9(buff_A_6_q9),.buff_A_6_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address10),.buff_A_6_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce10),.buff_A_6_q10(buff_A_6_q10),.buff_A_6_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address11),.buff_A_6_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce11),.buff_A_6_q11(buff_A_6_q11),.buff_A_6_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address12),.buff_A_6_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce12),.buff_A_6_q12(buff_A_6_q12),.buff_A_6_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address13),.buff_A_6_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce13),.buff_A_6_q13(buff_A_6_q13),.buff_A_6_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address14),.buff_A_6_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce14),.buff_A_6_q14(buff_A_6_q14),.buff_A_6_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address15),.buff_A_6_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce15),.buff_A_6_q15(buff_A_6_q15),.buff_A_7_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_7_address2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address2),.buff_A_7_ce2(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce2),.buff_A_7_q2(buff_A_7_q2),.buff_A_7_address3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address3),.buff_A_7_ce3(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce3),.buff_A_7_q3(buff_A_7_q3),.buff_A_7_address4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address4),.buff_A_7_ce4(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce4),.buff_A_7_q4(buff_A_7_q4),.buff_A_7_address5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address5),.buff_A_7_ce5(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce5),.buff_A_7_q5(buff_A_7_q5),.buff_A_7_address6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address6),.buff_A_7_ce6(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce6),.buff_A_7_q6(buff_A_7_q6),.buff_A_7_address7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address7),.buff_A_7_ce7(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce7),.buff_A_7_q7(buff_A_7_q7),.buff_A_7_address8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address8),.buff_A_7_ce8(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce8),.buff_A_7_q8(buff_A_7_q8),.buff_A_7_address9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address9),.buff_A_7_ce9(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce9),.buff_A_7_q9(buff_A_7_q9),.buff_A_7_address10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address10),.buff_A_7_ce10(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce10),.buff_A_7_q10(buff_A_7_q10),.buff_A_7_address11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address11),.buff_A_7_ce11(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce11),.buff_A_7_q11(buff_A_7_q11),.buff_A_7_address12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address12),.buff_A_7_ce12(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce12),.buff_A_7_q12(buff_A_7_q12),.buff_A_7_address13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address13),.buff_A_7_ce13(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce13),.buff_A_7_q13(buff_A_7_q13),.buff_A_7_address14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address14),.buff_A_7_ce14(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce14),.buff_A_7_q14(buff_A_7_q14),.buff_A_7_address15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address15),.buff_A_7_ce15(grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce15),.buff_A_7_q15(buff_A_7_q15),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_d0),.buff_q_out_3_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_address1),.buff_q_out_3_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_ce1),.buff_q_out_3_q1(buff_q_out_3_q1),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_d0),.buff_q_out_2_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_address1),.buff_q_out_2_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_ce1),.buff_q_out_2_q1(buff_q_out_2_q1),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_d0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_ce1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_d0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_ce1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_3157),.buff_p_1_load(buff_p_1_load_reg_3167),.buff_p_2_load(buff_p_2_load_reg_3177),.buff_p_3_load(buff_p_3_load_reg_3187),.buff_p_load_1(buff_p_load_1_reg_3162),.buff_p_1_load_1(buff_p_1_load_1_reg_3172),.buff_p_2_load_1(buff_p_2_load_1_reg_3182),.buff_p_3_load_1(buff_p_3_load_1_reg_3192),.buff_p_load_2(buff_p_load_2_reg_3317),.buff_p_1_load_2(buff_p_1_load_2_reg_3327),.buff_p_2_load_2(buff_p_2_load_2_reg_3337),.buff_p_3_load_2(buff_p_3_load_2_reg_3347),.buff_p_load_3(buff_p_load_3_reg_3322),.buff_p_1_load_3(buff_p_1_load_3_reg_3332),.buff_p_2_load_3(buff_p_2_load_3_reg_3342),.buff_p_3_load_3(buff_p_3_load_3_reg_3352),.buff_p_load_4(buff_p_load_4_reg_3477),.buff_p_1_load_4(buff_p_1_load_4_reg_3487),.buff_p_2_load_4(buff_p_2_load_4_reg_3497),.buff_p_3_load_4(buff_p_3_load_4_reg_3507),.buff_p_load_5(buff_p_load_5_reg_3482),.buff_p_1_load_5(buff_p_1_load_5_reg_3492),.buff_p_2_load_5(buff_p_2_load_5_reg_3502),.buff_p_3_load_5(buff_p_3_load_5_reg_3512),.buff_p_load_6(buff_p_load_6_reg_3637),.buff_p_1_load_6(buff_p_1_load_6_reg_3647),.buff_p_2_load_6(buff_p_2_load_6_reg_3657),.buff_p_3_load_6(buff_p_3_load_6_reg_3667),.buff_p_load_7(buff_p_load_7_reg_3642),.buff_p_1_load_7(buff_p_1_load_7_reg_3652),.buff_p_2_load_7(buff_p_2_load_7_reg_3662),.buff_p_3_load_7(buff_p_3_load_7_reg_3672),.buff_p_load_8(buff_p_load_8_reg_3797),.buff_p_1_load_8(buff_p_1_load_8_reg_3807),.buff_p_2_load_8(buff_p_2_load_8_reg_3817),.buff_p_3_load_8(buff_p_3_load_8_reg_3827),.buff_p_load_9(buff_p_load_9_reg_3802),.buff_p_1_load_9(buff_p_1_load_9_reg_3812),.buff_p_2_load_9(buff_p_2_load_9_reg_3822),.buff_p_3_load_9(buff_p_3_load_9_reg_3832),.buff_p_load_10(buff_p_load_10_reg_3917),.buff_p_1_load_10(buff_p_1_load_10_reg_3927),.buff_p_2_load_10(buff_p_2_load_10_reg_3937),.buff_p_3_load_10(buff_p_3_load_10_reg_3947),.buff_p_load_11(buff_p_load_11_reg_3922),.buff_p_1_load_11(buff_p_1_load_11_reg_3932),.buff_p_2_load_11(buff_p_2_load_11_reg_3942),.buff_p_3_load_11(buff_p_3_load_11_reg_3952),.buff_p_load_12(buff_p_load_12_reg_3997),.buff_p_1_load_12(buff_p_1_load_12_reg_4007),.buff_p_2_load_12(buff_p_2_load_12_reg_4017),.buff_p_3_load_12(buff_p_3_load_12_reg_4027),.buff_p_load_13(buff_p_load_13_reg_4002),.buff_p_1_load_13(buff_p_1_load_13_reg_4012),.buff_p_2_load_13(buff_p_2_load_13_reg_4022),.buff_p_3_load_13(buff_p_3_load_13_reg_4032),.buff_p_load_14(buff_p_load_14_reg_4037),.buff_p_1_load_14(buff_p_1_load_14_reg_4047),.buff_p_2_load_14(buff_p_2_load_14_reg_4057),.buff_p_3_load_14(buff_p_3_load_14_reg_4067),.buff_p_load_15(buff_p_load_15_reg_4042),.buff_p_1_load_15(buff_p_1_load_15_reg_4052),.buff_p_2_load_15(buff_p_2_load_15_reg_4062),.buff_p_3_load_15(buff_p_3_load_15_reg_4072),.grp_fu_4077_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_din0),.grp_fu_4077_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_din1),.grp_fu_4077_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_opcode),.grp_fu_4077_p_dout0(grp_fu_4077_p2),.grp_fu_4077_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_ce),.grp_fu_4081_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_din0),.grp_fu_4081_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_din1),.grp_fu_4081_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_opcode),.grp_fu_4081_p_dout0(grp_fu_4081_p2),.grp_fu_4081_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_ce),.grp_fu_4085_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_din0),.grp_fu_4085_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_din1),.grp_fu_4085_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_opcode),.grp_fu_4085_p_dout0(grp_fu_4085_p2),.grp_fu_4085_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_ce),.grp_fu_4089_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_din0),.grp_fu_4089_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_din1),.grp_fu_4089_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_opcode),.grp_fu_4089_p_dout0(grp_fu_4089_p2),.grp_fu_4089_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_ce),.grp_fu_4093_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_din0),.grp_fu_4093_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_din1),.grp_fu_4093_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_opcode),.grp_fu_4093_p_dout0(grp_fu_4093_p2),.grp_fu_4093_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_ce),.grp_fu_4097_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_din0),.grp_fu_4097_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_din1),.grp_fu_4097_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_opcode),.grp_fu_4097_p_dout0(grp_fu_4097_p2),.grp_fu_4097_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_ce),.grp_fu_4101_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_din0),.grp_fu_4101_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_din1),.grp_fu_4101_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_opcode),.grp_fu_4101_p_dout0(grp_fu_4101_p2),.grp_fu_4101_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_ce),.grp_fu_4105_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_din0),.grp_fu_4105_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_din1),.grp_fu_4105_p_opcode(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_opcode),.grp_fu_4105_p_dout0(grp_fu_4105_p2),.grp_fu_4105_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_ce),.grp_fu_4109_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_din0),.grp_fu_4109_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_din1),.grp_fu_4109_p_dout0(grp_fu_4109_p2),.grp_fu_4109_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_ce),.grp_fu_4113_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_din0),.grp_fu_4113_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_din1),.grp_fu_4113_p_dout0(grp_fu_4113_p2),.grp_fu_4113_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_ce),.grp_fu_4117_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_din0),.grp_fu_4117_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_din1),.grp_fu_4117_p_dout0(grp_fu_4117_p2),.grp_fu_4117_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_ce),.grp_fu_4121_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_din0),.grp_fu_4121_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_din1),.grp_fu_4121_p_dout0(grp_fu_4121_p2),.grp_fu_4121_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_ce),.grp_fu_4125_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_din0),.grp_fu_4125_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_din1),.grp_fu_4125_p_dout0(grp_fu_4125_p2),.grp_fu_4125_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_ce),.grp_fu_4129_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_din0),.grp_fu_4129_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_din1),.grp_fu_4129_p_dout0(grp_fu_4129_p2),.grp_fu_4129_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_ce),.grp_fu_4133_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_din0),.grp_fu_4133_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_din1),.grp_fu_4133_p_dout0(grp_fu_4133_p2),.grp_fu_4133_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_ce),.grp_fu_4137_p_din0(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_din0),.grp_fu_4137_p_din1(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_din1),.grp_fu_4137_p_dout0(grp_fu_4137_p2),.grp_fu_4137_p_ce(grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_2006(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_2006_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_2006_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_2006_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_2006_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_2006_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_2006_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_2006_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_2006_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U515(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4077_p0),.din1(grp_fu_4077_p1),.ce(grp_fu_4077_ce),.dout(grp_fu_4077_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U516(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4081_p0),.din1(grp_fu_4081_p1),.ce(grp_fu_4081_ce),.dout(grp_fu_4081_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U517(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4085_p0),.din1(grp_fu_4085_p1),.ce(grp_fu_4085_ce),.dout(grp_fu_4085_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U518(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4089_p0),.din1(grp_fu_4089_p1),.ce(grp_fu_4089_ce),.dout(grp_fu_4089_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U519(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4093_p0),.din1(grp_fu_4093_p1),.ce(grp_fu_4093_ce),.dout(grp_fu_4093_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U520(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4097_p0),.din1(grp_fu_4097_p1),.ce(grp_fu_4097_ce),.dout(grp_fu_4097_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U521(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4101_p0),.din1(grp_fu_4101_p1),.ce(grp_fu_4101_ce),.dout(grp_fu_4101_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U522(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4105_p0),.din1(grp_fu_4105_p1),.ce(grp_fu_4105_ce),.dout(grp_fu_4105_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U523(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4109_p0),.din1(grp_fu_4109_p1),.ce(grp_fu_4109_ce),.dout(grp_fu_4109_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U524(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4113_p0),.din1(grp_fu_4113_p1),.ce(grp_fu_4113_ce),.dout(grp_fu_4113_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U525(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4117_p0),.din1(grp_fu_4117_p1),.ce(grp_fu_4117_ce),.dout(grp_fu_4117_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U526(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4121_p0),.din1(grp_fu_4121_p1),.ce(grp_fu_4121_ce),.dout(grp_fu_4121_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U527(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4125_p0),.din1(grp_fu_4125_p1),.ce(grp_fu_4125_ce),.dout(grp_fu_4125_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U528(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4129_p0),.din1(grp_fu_4129_p1),.ce(grp_fu_4129_ce),.dout(grp_fu_4129_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U529(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4133_p0),.din1(grp_fu_4133_p1),.ce(grp_fu_4133_ce),.dout(grp_fu_4133_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U530(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4137_p0),.din1(grp_fu_4137_p1),.ce(grp_fu_4137_ce),.dout(grp_fu_4137_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1766_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_bicg_Pipeline_lp1_fu_1766_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1766_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1766_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_1918_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_bicg_Pipeline_lp3_fu_1918_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_1918_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_1918_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1744_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_1744_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1744_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1744_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_2006_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_bicg_Pipeline_lpwr_fu_2006_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_2006_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_2006_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_106 <= add_ln13_reg_2761;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2761 <= add_ln13_fu_2036_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_load_10_reg_3927 <= buff_p_1_q0;
        buff_p_1_load_11_reg_3932 <= buff_p_1_q1;
        buff_p_2_load_10_reg_3937 <= buff_p_2_q0;
        buff_p_2_load_11_reg_3942 <= buff_p_2_q1;
        buff_p_3_load_10_reg_3947 <= buff_p_3_q0;
        buff_p_3_load_11_reg_3952 <= buff_p_3_q1;
        buff_p_load_10_reg_3917 <= buff_p_q0;
        buff_p_load_11_reg_3922 <= buff_p_q1;
        buff_s_out_1_load_14_reg_3842 <= buff_s_out_1_q0;
        buff_s_out_1_load_15_reg_3862 <= buff_s_out_1_q1;
        buff_s_out_2_load_14_reg_3847 <= buff_s_out_2_q0;
        buff_s_out_2_load_15_reg_3867 <= buff_s_out_2_q1;
        buff_s_out_3_load_14_reg_3852 <= buff_s_out_3_q0;
        buff_s_out_3_load_15_reg_3872 <= buff_s_out_3_q1;
        buff_s_out_load_14_reg_3837 <= buff_s_out_q0;
        buff_s_out_load_15_reg_3857 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_load_12_reg_4007 <= buff_p_1_q0;
        buff_p_1_load_13_reg_4012 <= buff_p_1_q1;
        buff_p_2_load_12_reg_4017 <= buff_p_2_q0;
        buff_p_2_load_13_reg_4022 <= buff_p_2_q1;
        buff_p_3_load_12_reg_4027 <= buff_p_3_q0;
        buff_p_3_load_13_reg_4032 <= buff_p_3_q1;
        buff_p_load_12_reg_3997 <= buff_p_q0;
        buff_p_load_13_reg_4002 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_load_14_reg_4047 <= buff_p_1_q0;
        buff_p_1_load_15_reg_4052 <= buff_p_1_q1;
        buff_p_2_load_14_reg_4057 <= buff_p_2_q0;
        buff_p_2_load_15_reg_4062 <= buff_p_2_q1;
        buff_p_3_load_14_reg_4067 <= buff_p_3_q0;
        buff_p_3_load_15_reg_4072 <= buff_p_3_q1;
        buff_p_load_14_reg_4037 <= buff_p_q0;
        buff_p_load_15_reg_4042 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_load_1_reg_3172 <= buff_p_1_q0;
        buff_p_1_load_reg_3167 <= buff_p_1_q1;
        buff_p_2_load_1_reg_3182 <= buff_p_2_q0;
        buff_p_2_load_reg_3177 <= buff_p_2_q1;
        buff_p_3_load_1_reg_3192 <= buff_p_3_q0;
        buff_p_3_load_reg_3187 <= buff_p_3_q1;
        buff_p_load_1_reg_3162 <= buff_p_q0;
        buff_p_load_reg_3157 <= buff_p_q1;
        buff_s_out_1_load_4_reg_3082 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_3102 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_3087 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_3107 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_3092 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_3112 <= buff_s_out_3_q1;
        buff_s_out_load_4_reg_3077 <= buff_s_out_q0;
        buff_s_out_load_5_reg_3097 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_load_2_reg_3327 <= buff_p_1_q0;
        buff_p_1_load_3_reg_3332 <= buff_p_1_q1;
        buff_p_2_load_2_reg_3337 <= buff_p_2_q0;
        buff_p_2_load_3_reg_3342 <= buff_p_2_q1;
        buff_p_3_load_2_reg_3347 <= buff_p_3_q0;
        buff_p_3_load_3_reg_3352 <= buff_p_3_q1;
        buff_p_load_2_reg_3317 <= buff_p_q0;
        buff_p_load_3_reg_3322 <= buff_p_q1;
        buff_s_out_1_load_6_reg_3242 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_3262 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_3247 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_3267 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_3252 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_3272 <= buff_s_out_3_q1;
        buff_s_out_load_6_reg_3237 <= buff_s_out_q0;
        buff_s_out_load_7_reg_3257 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_load_4_reg_3487 <= buff_p_1_q0;
        buff_p_1_load_5_reg_3492 <= buff_p_1_q1;
        buff_p_2_load_4_reg_3497 <= buff_p_2_q0;
        buff_p_2_load_5_reg_3502 <= buff_p_2_q1;
        buff_p_3_load_4_reg_3507 <= buff_p_3_q0;
        buff_p_3_load_5_reg_3512 <= buff_p_3_q1;
        buff_p_load_4_reg_3477 <= buff_p_q0;
        buff_p_load_5_reg_3482 <= buff_p_q1;
        buff_s_out_1_load_8_reg_3402 <= buff_s_out_1_q0;
        buff_s_out_1_load_9_reg_3422 <= buff_s_out_1_q1;
        buff_s_out_2_load_8_reg_3407 <= buff_s_out_2_q0;
        buff_s_out_2_load_9_reg_3427 <= buff_s_out_2_q1;
        buff_s_out_3_load_8_reg_3412 <= buff_s_out_3_q0;
        buff_s_out_3_load_9_reg_3432 <= buff_s_out_3_q1;
        buff_s_out_load_8_reg_3397 <= buff_s_out_q0;
        buff_s_out_load_9_reg_3417 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_load_6_reg_3647 <= buff_p_1_q0;
        buff_p_1_load_7_reg_3652 <= buff_p_1_q1;
        buff_p_2_load_6_reg_3657 <= buff_p_2_q0;
        buff_p_2_load_7_reg_3662 <= buff_p_2_q1;
        buff_p_3_load_6_reg_3667 <= buff_p_3_q0;
        buff_p_3_load_7_reg_3672 <= buff_p_3_q1;
        buff_p_load_6_reg_3637 <= buff_p_q0;
        buff_p_load_7_reg_3642 <= buff_p_q1;
        buff_s_out_1_load_10_reg_3562 <= buff_s_out_1_q0;
        buff_s_out_1_load_11_reg_3582 <= buff_s_out_1_q1;
        buff_s_out_2_load_10_reg_3567 <= buff_s_out_2_q0;
        buff_s_out_2_load_11_reg_3587 <= buff_s_out_2_q1;
        buff_s_out_3_load_10_reg_3572 <= buff_s_out_3_q0;
        buff_s_out_3_load_11_reg_3592 <= buff_s_out_3_q1;
        buff_s_out_load_10_reg_3557 <= buff_s_out_q0;
        buff_s_out_load_11_reg_3577 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_load_8_reg_3807 <= buff_p_1_q0;
        buff_p_1_load_9_reg_3812 <= buff_p_1_q1;
        buff_p_2_load_8_reg_3817 <= buff_p_2_q0;
        buff_p_2_load_9_reg_3822 <= buff_p_2_q1;
        buff_p_3_load_8_reg_3827 <= buff_p_3_q0;
        buff_p_3_load_9_reg_3832 <= buff_p_3_q1;
        buff_p_load_8_reg_3797 <= buff_p_q0;
        buff_p_load_9_reg_3802 <= buff_p_q1;
        buff_s_out_1_load_12_reg_3722 <= buff_s_out_1_q0;
        buff_s_out_1_load_13_reg_3742 <= buff_s_out_1_q1;
        buff_s_out_2_load_12_reg_3727 <= buff_s_out_2_q0;
        buff_s_out_2_load_13_reg_3747 <= buff_s_out_2_q1;
        buff_s_out_3_load_12_reg_3732 <= buff_s_out_3_q0;
        buff_s_out_3_load_13_reg_3752 <= buff_s_out_3_q1;
        buff_s_out_load_12_reg_3717 <= buff_s_out_q0;
        buff_s_out_load_13_reg_3737 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_load_1_reg_2902 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2882 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_2907 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_2887 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_2912 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_2892 <= buff_s_out_3_q1;
        buff_s_out_load_1_reg_2897 <= buff_s_out_q0;
        buff_s_out_load_reg_2877 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_2_reg_2962 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2982 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_2967 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_2987 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_2972 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_2992 <= buff_s_out_3_q1;
        buff_s_out_load_2_reg_2957 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2977 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_2_reg_2832 <= trunc_ln13_2_fu_2055_p1;
        trunc_ln13_reg_2824 <= trunc_ln13_fu_2048_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b0)) begin
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
    if ((grp_bicg_Pipeline_lpwr_fu_2006_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1744_ap_done == 1'b0)) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_2006_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_2006_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address2;
    end else begin
        buff_A_1_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_address3;
    end else begin
        buff_A_1_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address2;
    end else begin
        buff_A_2_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_address3;
    end else begin
        buff_A_2_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address2;
    end else begin
        buff_A_3_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_address3;
    end else begin
        buff_A_3_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address1;
    end else begin
        buff_A_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address2;
    end else begin
        buff_A_4_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_address3;
    end else begin
        buff_A_4_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce10;
    end else begin
        buff_A_4_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce11;
    end else begin
        buff_A_4_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce12;
    end else begin
        buff_A_4_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce13;
    end else begin
        buff_A_4_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce14;
    end else begin
        buff_A_4_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce15;
    end else begin
        buff_A_4_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce2;
    end else begin
        buff_A_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_4_ce3;
    end else begin
        buff_A_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce4;
    end else begin
        buff_A_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce5;
    end else begin
        buff_A_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce6;
    end else begin
        buff_A_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce7;
    end else begin
        buff_A_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce8;
    end else begin
        buff_A_4_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_4_ce9;
    end else begin
        buff_A_4_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address1;
    end else begin
        buff_A_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address2;
    end else begin
        buff_A_5_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_address3;
    end else begin
        buff_A_5_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce10;
    end else begin
        buff_A_5_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce11;
    end else begin
        buff_A_5_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce12;
    end else begin
        buff_A_5_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce13;
    end else begin
        buff_A_5_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce14;
    end else begin
        buff_A_5_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce15;
    end else begin
        buff_A_5_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce2;
    end else begin
        buff_A_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_5_ce3;
    end else begin
        buff_A_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce4;
    end else begin
        buff_A_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce5;
    end else begin
        buff_A_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce6;
    end else begin
        buff_A_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce7;
    end else begin
        buff_A_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce8;
    end else begin
        buff_A_5_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_5_ce9;
    end else begin
        buff_A_5_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address1;
    end else begin
        buff_A_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address2;
    end else begin
        buff_A_6_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_address3;
    end else begin
        buff_A_6_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce10;
    end else begin
        buff_A_6_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce11;
    end else begin
        buff_A_6_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce12;
    end else begin
        buff_A_6_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce13;
    end else begin
        buff_A_6_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce14;
    end else begin
        buff_A_6_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce15;
    end else begin
        buff_A_6_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce2;
    end else begin
        buff_A_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_6_ce3;
    end else begin
        buff_A_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce4;
    end else begin
        buff_A_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce5;
    end else begin
        buff_A_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce6;
    end else begin
        buff_A_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce7;
    end else begin
        buff_A_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce8;
    end else begin
        buff_A_6_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_6_ce9;
    end else begin
        buff_A_6_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address1;
    end else begin
        buff_A_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address2;
    end else begin
        buff_A_7_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_address3;
    end else begin
        buff_A_7_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce10;
    end else begin
        buff_A_7_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce11;
    end else begin
        buff_A_7_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce12;
    end else begin
        buff_A_7_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce13;
    end else begin
        buff_A_7_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce14;
    end else begin
        buff_A_7_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce15;
    end else begin
        buff_A_7_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce2;
    end else begin
        buff_A_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_7_ce3;
    end else begin
        buff_A_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce4;
    end else begin
        buff_A_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce5;
    end else begin
        buff_A_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce6;
    end else begin
        buff_A_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce7;
    end else begin
        buff_A_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce8;
    end else begin
        buff_A_7_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_7_ce9;
    end else begin
        buff_A_7_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_address2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_address2;
    end else begin
        buff_A_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_address3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_address3;
    end else begin
        buff_A_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce10 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce11 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce12 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce13 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce14 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce15 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp1_fu_1766_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce9 = grp_bicg_Pipeline_lp3_fu_1918_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1744_buff_A_we0;
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
        buff_p_1_address0_local = zext_ln5_fu_2068_p1;
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
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
        buff_p_2_address0_local = zext_ln5_fu_2068_p1;
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
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_2_ce1_local = 1'b1;
    end else begin
        buff_p_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
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
        buff_p_3_address0_local = zext_ln5_fu_2068_p1;
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
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_3_ce1_local = 1'b1;
    end else begin
        buff_p_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
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
        buff_p_address0_local = zext_ln5_fu_2068_p1;
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
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_ce0;
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
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_ce0;
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
        buff_q_out_2_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_ce1;
    end else begin
        buff_q_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_ce0;
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
        buff_q_out_3_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_ce1;
    end else begin
        buff_q_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_ce0;
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
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_1918_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2052_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_1_ce0;
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
    if (((trunc_ln13_1_fu_2052_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_2_ce0;
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
    if (((trunc_ln13_1_fu_2052_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_3_ce0;
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
    if (((trunc_ln13_1_fu_2052_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_2068_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1766_buff_r_ce0;
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
    if (((trunc_ln13_1_fu_2052_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_14_reg_3682;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_12_reg_3522;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_10_reg_3362;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_8_reg_3202;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_3042;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2922;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2842;
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
        buff_s_out_1_address0_local = zext_ln5_fu_2068_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_15_reg_3702;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_13_reg_3542;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_11_reg_3382;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_9_reg_3222;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_3062;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2942;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2862;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_5799_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_4991_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_4183_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_3375_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_2567_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_1759_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_951_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_143_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_61103_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_5395_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_4587_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_3779_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_2971_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_2163_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_1355_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_547_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2052_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_14_reg_3687;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_12_reg_3527;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_10_reg_3367;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_8_reg_3207;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_3047;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_2927;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_2847;
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
        buff_s_out_2_address0_local = zext_ln5_fu_2068_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_15_reg_3707;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_13_reg_3547;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_11_reg_3387;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_9_reg_3227;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_3067;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_2947;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_2867;
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
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_58100_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_5092_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_4284_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_3476_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_2668_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_1860_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_1052_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_244_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_62104_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_5496_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_4688_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_3880_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_3072_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_2264_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_1456_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_648_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2052_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_14_reg_3692;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_12_reg_3532;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_10_reg_3372;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_8_reg_3212;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_3052;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_2932;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_2852;
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
        buff_s_out_3_address0_local = zext_ln5_fu_2068_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_15_reg_3712;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_13_reg_3552;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_11_reg_3392;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_9_reg_3232;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_3072;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_2952;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_2872;
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
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_59101_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_5193_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_4385_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_3577_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_2769_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_1961_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_1153_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_345_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_63105_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_5597_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_4789_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_3981_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_3173_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_2365_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_1557_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_749_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2052_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address0_local = buff_s_out_addr_14_reg_3677;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address0_local = buff_s_out_addr_12_reg_3517;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address0_local = buff_s_out_addr_10_reg_3357;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address0_local = buff_s_out_addr_8_reg_3197;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_3037;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2917;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2837;
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
        buff_s_out_address0_local = zext_ln5_fu_2068_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address1_local = buff_s_out_addr_15_reg_3697;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address1_local = buff_s_out_addr_13_reg_3537;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address1_local = buff_s_out_addr_11_reg_3377;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address1_local = buff_s_out_addr_9_reg_3217;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_3057;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2937;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2857;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_2006_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_5698_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_4890_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_4082_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_3274_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_2466_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_1658_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add_850_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1766_add42_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_60102_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_5294_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_4486_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_3678_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_2870_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_2062_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_1254_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1766_add_446_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((trunc_ln13_1_fu_2052_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4077_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4077_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_ce;
    end else begin
        grp_fu_4077_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4077_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4077_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_din0;
    end else begin
        grp_fu_4077_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4077_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4077_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4077_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4077_p_din1;
    end else begin
        grp_fu_4077_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4081_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4081_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_ce;
    end else begin
        grp_fu_4081_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4081_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4081_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_din0;
    end else begin
        grp_fu_4081_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4081_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4081_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4081_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4081_p_din1;
    end else begin
        grp_fu_4081_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4085_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4085_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_ce;
    end else begin
        grp_fu_4085_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4085_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4085_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_din0;
    end else begin
        grp_fu_4085_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4085_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4085_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4085_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4085_p_din1;
    end else begin
        grp_fu_4085_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4089_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4089_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_ce;
    end else begin
        grp_fu_4089_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4089_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4089_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_din0;
    end else begin
        grp_fu_4089_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4089_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4089_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4089_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4089_p_din1;
    end else begin
        grp_fu_4089_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4093_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4093_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_ce;
    end else begin
        grp_fu_4093_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4093_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4093_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_din0;
    end else begin
        grp_fu_4093_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4093_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4093_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4093_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4093_p_din1;
    end else begin
        grp_fu_4093_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4097_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4097_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_ce;
    end else begin
        grp_fu_4097_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4097_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4097_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_din0;
    end else begin
        grp_fu_4097_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4097_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4097_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4097_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4097_p_din1;
    end else begin
        grp_fu_4097_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4101_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4101_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_ce;
    end else begin
        grp_fu_4101_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4101_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4101_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_din0;
    end else begin
        grp_fu_4101_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4101_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4101_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4101_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4101_p_din1;
    end else begin
        grp_fu_4101_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4105_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4105_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_ce;
    end else begin
        grp_fu_4105_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4105_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4105_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_din0;
    end else begin
        grp_fu_4105_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4105_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4105_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4105_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4105_p_din1;
    end else begin
        grp_fu_4105_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4109_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4109_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_ce;
    end else begin
        grp_fu_4109_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4109_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4109_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_din0;
    end else begin
        grp_fu_4109_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4109_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4109_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4109_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4109_p_din1;
    end else begin
        grp_fu_4109_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4113_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4113_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_ce;
    end else begin
        grp_fu_4113_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4113_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4113_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_din0;
    end else begin
        grp_fu_4113_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4113_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4113_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4113_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4113_p_din1;
    end else begin
        grp_fu_4113_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4117_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4117_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_ce;
    end else begin
        grp_fu_4117_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4117_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4117_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_din0;
    end else begin
        grp_fu_4117_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4117_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4117_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4117_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4117_p_din1;
    end else begin
        grp_fu_4117_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4121_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4121_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_ce;
    end else begin
        grp_fu_4121_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4121_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4121_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_din0;
    end else begin
        grp_fu_4121_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4121_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4121_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4121_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4121_p_din1;
    end else begin
        grp_fu_4121_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4125_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4125_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_ce;
    end else begin
        grp_fu_4125_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4125_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4125_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_din0;
    end else begin
        grp_fu_4125_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4125_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4125_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4125_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4125_p_din1;
    end else begin
        grp_fu_4125_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4129_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4129_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_ce;
    end else begin
        grp_fu_4129_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4129_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4129_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_din0;
    end else begin
        grp_fu_4129_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4129_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4129_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4129_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4129_p_din1;
    end else begin
        grp_fu_4129_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4133_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4133_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_ce;
    end else begin
        grp_fu_4133_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4133_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4133_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_din0;
    end else begin
        grp_fu_4133_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4133_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4133_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4133_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4133_p_din1;
    end else begin
        grp_fu_4133_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4137_ce = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4137_ce = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_ce;
    end else begin
        grp_fu_4137_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4137_p0 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4137_p0 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_din0;
    end else begin
        grp_fu_4137_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_4137_p1 = grp_bicg_Pipeline_lp3_fu_1918_grp_fu_4137_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_4137_p1 = grp_bicg_Pipeline_lp1_fu_1766_grp_fu_4137_p_din1;
    end else begin
        grp_fu_4137_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_2006_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_2006_s_out_write;
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
            if (((icmp_ln13_fu_2030_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_bicg_Pipeline_lprd_2_fu_1744_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1766_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lp3_fu_1918_ap_done == 1'b1))) begin
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
            if (((grp_bicg_Pipeline_lpwr_fu_2006_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1744_A_3_ce0;
assign add_ln13_fu_2036_p2 = (i_fu_106 + 7'd1);
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
assign bitcast_ln14_fu_2088_p1 = p_q0;
assign bitcast_ln15_fu_2096_p1 = r_q0;
assign buff_s_out_1_addr_10_reg_3362 = 64'd10;
assign buff_s_out_1_addr_11_reg_3382 = 64'd11;
assign buff_s_out_1_addr_12_reg_3522 = 64'd12;
assign buff_s_out_1_addr_13_reg_3542 = 64'd13;
assign buff_s_out_1_addr_14_reg_3682 = 64'd14;
assign buff_s_out_1_addr_15_reg_3702 = 64'd15;
assign buff_s_out_1_addr_2_reg_2842 = 64'd2;
assign buff_s_out_1_addr_3_reg_2862 = 64'd3;
assign buff_s_out_1_addr_4_reg_2922 = 64'd4;
assign buff_s_out_1_addr_5_reg_2942 = 64'd5;
assign buff_s_out_1_addr_6_reg_3042 = 64'd6;
assign buff_s_out_1_addr_7_reg_3062 = 64'd7;
assign buff_s_out_1_addr_8_reg_3202 = 64'd8;
assign buff_s_out_1_addr_9_reg_3222 = 64'd9;
assign buff_s_out_2_addr_10_reg_3367 = 64'd10;
assign buff_s_out_2_addr_11_reg_3387 = 64'd11;
assign buff_s_out_2_addr_12_reg_3527 = 64'd12;
assign buff_s_out_2_addr_13_reg_3547 = 64'd13;
assign buff_s_out_2_addr_14_reg_3687 = 64'd14;
assign buff_s_out_2_addr_15_reg_3707 = 64'd15;
assign buff_s_out_2_addr_2_reg_2847 = 64'd2;
assign buff_s_out_2_addr_3_reg_2867 = 64'd3;
assign buff_s_out_2_addr_4_reg_2927 = 64'd4;
assign buff_s_out_2_addr_5_reg_2947 = 64'd5;
assign buff_s_out_2_addr_6_reg_3047 = 64'd6;
assign buff_s_out_2_addr_7_reg_3067 = 64'd7;
assign buff_s_out_2_addr_8_reg_3207 = 64'd8;
assign buff_s_out_2_addr_9_reg_3227 = 64'd9;
assign buff_s_out_3_addr_10_reg_3372 = 64'd10;
assign buff_s_out_3_addr_11_reg_3392 = 64'd11;
assign buff_s_out_3_addr_12_reg_3532 = 64'd12;
assign buff_s_out_3_addr_13_reg_3552 = 64'd13;
assign buff_s_out_3_addr_14_reg_3692 = 64'd14;
assign buff_s_out_3_addr_15_reg_3712 = 64'd15;
assign buff_s_out_3_addr_2_reg_2852 = 64'd2;
assign buff_s_out_3_addr_3_reg_2872 = 64'd3;
assign buff_s_out_3_addr_4_reg_2932 = 64'd4;
assign buff_s_out_3_addr_5_reg_2952 = 64'd5;
assign buff_s_out_3_addr_6_reg_3052 = 64'd6;
assign buff_s_out_3_addr_7_reg_3072 = 64'd7;
assign buff_s_out_3_addr_8_reg_3212 = 64'd8;
assign buff_s_out_3_addr_9_reg_3232 = 64'd9;
assign buff_s_out_addr_10_reg_3357 = 64'd10;
assign buff_s_out_addr_11_reg_3377 = 64'd11;
assign buff_s_out_addr_12_reg_3517 = 64'd12;
assign buff_s_out_addr_13_reg_3537 = 64'd13;
assign buff_s_out_addr_14_reg_3677 = 64'd14;
assign buff_s_out_addr_15_reg_3697 = 64'd15;
assign buff_s_out_addr_2_reg_2837 = 64'd2;
assign buff_s_out_addr_3_reg_2857 = 64'd3;
assign buff_s_out_addr_4_reg_2917 = 64'd4;
assign buff_s_out_addr_5_reg_2937 = 64'd5;
assign buff_s_out_addr_6_reg_3037 = 64'd6;
assign buff_s_out_addr_7_reg_3057 = 64'd7;
assign buff_s_out_addr_8_reg_3197 = 64'd8;
assign buff_s_out_addr_9_reg_3217 = 64'd9;
assign grp_bicg_Pipeline_lp1_fu_1766_ap_start = grp_bicg_Pipeline_lp1_fu_1766_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_1918_ap_start = grp_bicg_Pipeline_lp3_fu_1918_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1744_ap_start = grp_bicg_Pipeline_lprd_2_fu_1744_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_2006_ap_start = grp_bicg_Pipeline_lpwr_fu_2006_ap_start_reg;
assign icmp_ln13_fu_2030_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_2059_p4 = {{i_fu_106[5:2]}};
assign p_address0 = zext_ln13_fu_2042_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_2006_q_out_din;
assign r_address0 = zext_ln13_fu_2042_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_2006_s_out_din;
assign trunc_ln13_1_fu_2052_p1 = i_fu_106[1:0];
assign trunc_ln13_2_fu_2055_p1 = i_fu_106[0:0];
assign trunc_ln13_fu_2048_p1 = i_fu_106[5:0];
assign zext_ln13_fu_2042_p1 = i_fu_106;
assign zext_ln5_fu_2068_p1 = lshr_ln5_1_fu_2059_p4;
endmodule 
