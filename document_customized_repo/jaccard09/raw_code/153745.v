module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
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
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_2216_p2;
reg   [6:0] add_ln11_reg_2939;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_2227_p1;
reg   [5:0] trunc_ln11_reg_3029;
wire    ap_CS_fsm_state3;
reg   [31:0] buff_x_load_reg_3037;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_x_1_load_reg_3042;
reg   [31:0] buff_x_2_load_reg_3047;
reg   [31:0] buff_x_3_load_reg_3052;
reg   [31:0] buff_x_4_load_reg_3057;
reg   [31:0] buff_x_5_load_reg_3062;
reg   [31:0] buff_x_6_load_reg_3067;
reg   [31:0] buff_x_7_load_reg_3072;
reg   [31:0] buff_x_load_1_reg_3077;
reg   [31:0] buff_x_1_load_1_reg_3082;
reg   [31:0] buff_x_2_load_1_reg_3087;
reg   [31:0] buff_x_3_load_1_reg_3092;
reg   [31:0] buff_x_4_load_1_reg_3097;
reg   [31:0] buff_x_5_load_1_reg_3102;
reg   [31:0] buff_x_6_load_1_reg_3107;
reg   [31:0] buff_x_7_load_1_reg_3112;
reg   [31:0] buff_x_load_2_reg_3197;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_x_1_load_2_reg_3202;
reg   [31:0] buff_x_2_load_2_reg_3207;
reg   [31:0] buff_x_3_load_2_reg_3212;
reg   [31:0] buff_x_4_load_2_reg_3217;
reg   [31:0] buff_x_5_load_2_reg_3222;
reg   [31:0] buff_x_6_load_2_reg_3227;
reg   [31:0] buff_x_7_load_2_reg_3232;
reg   [31:0] buff_x_load_3_reg_3237;
reg   [31:0] buff_x_1_load_3_reg_3242;
reg   [31:0] buff_x_2_load_3_reg_3247;
reg   [31:0] buff_x_3_load_3_reg_3252;
reg   [31:0] buff_x_4_load_3_reg_3257;
reg   [31:0] buff_x_5_load_3_reg_3262;
reg   [31:0] buff_x_6_load_3_reg_3267;
reg   [31:0] buff_x_7_load_3_reg_3272;
reg   [31:0] buff_x_load_4_reg_3453;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_x_1_load_4_reg_3458;
reg   [31:0] buff_x_2_load_4_reg_3463;
reg   [31:0] buff_x_3_load_4_reg_3468;
reg   [31:0] buff_x_4_load_4_reg_3473;
reg   [31:0] buff_x_5_load_4_reg_3478;
reg   [31:0] buff_x_6_load_4_reg_3483;
reg   [31:0] buff_x_7_load_4_reg_3488;
reg   [31:0] buff_x_load_5_reg_3493;
reg   [31:0] buff_x_1_load_5_reg_3498;
reg   [31:0] buff_x_2_load_5_reg_3503;
reg   [31:0] buff_x_3_load_5_reg_3508;
reg   [31:0] buff_x_4_load_5_reg_3513;
reg   [31:0] buff_x_5_load_5_reg_3518;
reg   [31:0] buff_x_6_load_5_reg_3523;
reg   [31:0] buff_x_7_load_5_reg_3528;
wire   [2:0] buff_y_out_addr_3_reg_3613;
wire   [2:0] buff_y_out_1_addr_3_reg_3618;
wire   [2:0] buff_y_out_2_addr_3_reg_3623;
wire   [2:0] buff_y_out_3_addr_3_reg_3628;
wire   [2:0] buff_y_out_4_addr_3_reg_3633;
wire   [2:0] buff_y_out_5_addr_3_reg_3638;
wire   [2:0] buff_y_out_6_addr_3_reg_3643;
wire   [2:0] buff_y_out_7_addr_3_reg_3648;
wire   [2:0] buff_y_out_addr_4_reg_3653;
wire   [2:0] buff_y_out_1_addr_4_reg_3658;
wire   [2:0] buff_y_out_2_addr_4_reg_3663;
wire   [2:0] buff_y_out_3_addr_4_reg_3668;
wire   [2:0] buff_y_out_4_addr_4_reg_3673;
wire   [2:0] buff_y_out_5_addr_4_reg_3678;
wire   [2:0] buff_y_out_6_addr_4_reg_3683;
wire   [2:0] buff_y_out_7_addr_4_reg_3688;
reg   [31:0] buff_y_out_load_reg_3693;
reg   [31:0] buff_y_out_1_load_reg_3698;
reg   [31:0] buff_y_out_2_load_reg_3703;
reg   [31:0] buff_y_out_3_load_reg_3708;
reg   [31:0] buff_y_out_4_load_reg_3713;
reg   [31:0] buff_y_out_5_load_reg_3718;
reg   [31:0] buff_y_out_6_load_reg_3723;
reg   [31:0] buff_y_out_7_load_reg_3728;
reg   [31:0] buff_y_out_load_1_reg_3733;
reg   [31:0] buff_y_out_1_load_1_reg_3738;
reg   [31:0] buff_y_out_2_load_1_reg_3743;
reg   [31:0] buff_y_out_3_load_1_reg_3748;
reg   [31:0] buff_y_out_4_load_1_reg_3753;
reg   [31:0] buff_y_out_5_load_1_reg_3758;
reg   [31:0] buff_y_out_6_load_1_reg_3763;
reg   [31:0] buff_y_out_7_load_1_reg_3768;
reg   [31:0] buff_x_load_6_reg_3773;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_x_1_load_6_reg_3778;
reg   [31:0] buff_x_2_load_6_reg_3783;
reg   [31:0] buff_x_3_load_6_reg_3788;
reg   [31:0] buff_x_4_load_6_reg_3793;
reg   [31:0] buff_x_5_load_6_reg_3798;
reg   [31:0] buff_x_6_load_6_reg_3803;
reg   [31:0] buff_x_7_load_6_reg_3808;
reg   [31:0] buff_x_load_7_reg_3813;
reg   [31:0] buff_x_1_load_7_reg_3818;
reg   [31:0] buff_x_2_load_7_reg_3823;
reg   [31:0] buff_x_3_load_7_reg_3828;
reg   [31:0] buff_x_4_load_7_reg_3833;
reg   [31:0] buff_x_5_load_7_reg_3838;
reg   [31:0] buff_x_6_load_7_reg_3843;
reg   [31:0] buff_x_7_load_7_reg_3848;
wire   [2:0] buff_y_out_addr_5_reg_3853;
wire   [2:0] buff_y_out_1_addr_5_reg_3858;
wire   [2:0] buff_y_out_2_addr_5_reg_3863;
wire   [2:0] buff_y_out_3_addr_5_reg_3868;
wire   [2:0] buff_y_out_4_addr_5_reg_3873;
wire   [2:0] buff_y_out_5_addr_5_reg_3878;
wire   [2:0] buff_y_out_6_addr_5_reg_3883;
wire   [2:0] buff_y_out_7_addr_5_reg_3888;
wire   [2:0] buff_y_out_addr_6_reg_3893;
wire   [2:0] buff_y_out_1_addr_6_reg_3898;
wire   [2:0] buff_y_out_2_addr_6_reg_3903;
wire   [2:0] buff_y_out_3_addr_6_reg_3908;
wire   [2:0] buff_y_out_4_addr_6_reg_3913;
wire   [2:0] buff_y_out_5_addr_6_reg_3918;
wire   [2:0] buff_y_out_6_addr_6_reg_3923;
wire   [2:0] buff_y_out_7_addr_6_reg_3928;
reg   [31:0] buff_y_out_load_2_reg_3933;
reg   [31:0] buff_y_out_1_load_2_reg_3938;
reg   [31:0] buff_y_out_2_load_2_reg_3943;
reg   [31:0] buff_y_out_3_load_2_reg_3948;
reg   [31:0] buff_y_out_4_load_2_reg_3953;
reg   [31:0] buff_y_out_5_load_2_reg_3958;
reg   [31:0] buff_y_out_6_load_2_reg_3963;
reg   [31:0] buff_y_out_7_load_2_reg_3968;
reg   [31:0] buff_y_out_load_3_reg_3973;
reg   [31:0] buff_y_out_1_load_3_reg_3978;
reg   [31:0] buff_y_out_2_load_3_reg_3983;
reg   [31:0] buff_y_out_3_load_3_reg_3988;
reg   [31:0] buff_y_out_4_load_3_reg_3993;
reg   [31:0] buff_y_out_5_load_3_reg_3998;
reg   [31:0] buff_y_out_6_load_3_reg_4003;
reg   [31:0] buff_y_out_7_load_3_reg_4008;
wire   [2:0] buff_y_out_addr_7_reg_4013;
wire    ap_CS_fsm_state10;
wire   [2:0] buff_y_out_1_addr_7_reg_4018;
wire   [2:0] buff_y_out_2_addr_7_reg_4023;
wire   [2:0] buff_y_out_3_addr_7_reg_4028;
wire   [2:0] buff_y_out_4_addr_7_reg_4033;
wire   [2:0] buff_y_out_5_addr_7_reg_4038;
wire   [2:0] buff_y_out_6_addr_7_reg_4043;
wire   [2:0] buff_y_out_7_addr_7_reg_4048;
wire   [2:0] buff_y_out_addr_8_reg_4053;
wire   [2:0] buff_y_out_1_addr_8_reg_4058;
wire   [2:0] buff_y_out_2_addr_8_reg_4063;
wire   [2:0] buff_y_out_3_addr_8_reg_4068;
wire   [2:0] buff_y_out_4_addr_8_reg_4073;
wire   [2:0] buff_y_out_5_addr_8_reg_4078;
wire   [2:0] buff_y_out_6_addr_8_reg_4083;
wire   [2:0] buff_y_out_7_addr_8_reg_4088;
reg   [31:0] buff_y_out_load_4_reg_4093;
reg   [31:0] buff_y_out_1_load_4_reg_4098;
reg   [31:0] buff_y_out_2_load_4_reg_4103;
reg   [31:0] buff_y_out_3_load_4_reg_4108;
reg   [31:0] buff_y_out_4_load_4_reg_4113;
reg   [31:0] buff_y_out_5_load_4_reg_4118;
reg   [31:0] buff_y_out_6_load_4_reg_4123;
reg   [31:0] buff_y_out_7_load_4_reg_4128;
reg   [31:0] buff_y_out_load_5_reg_4133;
reg   [31:0] buff_y_out_1_load_5_reg_4138;
reg   [31:0] buff_y_out_2_load_5_reg_4143;
reg   [31:0] buff_y_out_3_load_5_reg_4148;
reg   [31:0] buff_y_out_4_load_5_reg_4153;
reg   [31:0] buff_y_out_5_load_5_reg_4158;
reg   [31:0] buff_y_out_6_load_5_reg_4163;
reg   [31:0] buff_y_out_7_load_5_reg_4168;
reg   [31:0] buff_y_out_load_6_reg_4173;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_y_out_1_load_6_reg_4178;
reg   [31:0] buff_y_out_2_load_6_reg_4183;
reg   [31:0] buff_y_out_3_load_6_reg_4188;
reg   [31:0] buff_y_out_4_load_6_reg_4193;
reg   [31:0] buff_y_out_5_load_6_reg_4198;
reg   [31:0] buff_y_out_6_load_6_reg_4203;
reg   [31:0] buff_y_out_7_load_6_reg_4208;
reg   [31:0] buff_y_out_load_7_reg_4213;
reg   [31:0] buff_y_out_1_load_7_reg_4218;
reg   [31:0] buff_y_out_2_load_7_reg_4223;
reg   [31:0] buff_y_out_3_load_7_reg_4228;
reg   [31:0] buff_y_out_4_load_7_reg_4233;
reg   [31:0] buff_y_out_5_load_7_reg_4238;
reg   [31:0] buff_y_out_6_load_7_reg_4243;
reg   [31:0] buff_y_out_7_load_7_reg_4248;
reg   [8:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [8:0] buff_A_address1;
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
reg   [8:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [8:0] buff_A_1_address1;
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
reg   [8:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [8:0] buff_A_2_address1;
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
reg   [8:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [8:0] buff_A_3_address1;
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
reg   [8:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg   [8:0] buff_A_4_address1;
reg    buff_A_4_ce1;
wire   [31:0] buff_A_4_q1;
reg    buff_A_4_ce2;
wire   [31:0] buff_A_4_q2;
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
reg    buff_A_5_ce2;
wire   [31:0] buff_A_5_q2;
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
reg    buff_A_6_ce2;
wire   [31:0] buff_A_6_q2;
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
reg    buff_A_7_ce2;
wire   [31:0] buff_A_7_q2;
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
wire   [31:0] buff_x_q0;
wire   [31:0] buff_x_q1;
wire   [31:0] buff_x_1_q0;
wire   [31:0] buff_x_1_q1;
wire   [31:0] buff_x_2_q0;
wire   [31:0] buff_x_2_q1;
wire   [31:0] buff_x_3_q0;
wire   [31:0] buff_x_3_q1;
wire   [31:0] buff_x_4_q0;
wire   [31:0] buff_x_4_q1;
wire   [31:0] buff_x_5_q0;
wire   [31:0] buff_x_5_q1;
wire   [31:0] buff_x_6_q0;
wire   [31:0] buff_x_6_q1;
wire   [31:0] buff_x_7_q0;
wire   [31:0] buff_x_7_q1;
reg   [2:0] buff_y_out_address0;
reg    buff_y_out_ce0;
wire   [31:0] buff_y_out_q0;
wire   [31:0] buff_y_out_q1;
reg   [2:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
wire   [31:0] buff_y_out_1_q0;
wire   [31:0] buff_y_out_1_q1;
reg   [2:0] buff_y_out_2_address0;
reg    buff_y_out_2_ce0;
wire   [31:0] buff_y_out_2_q0;
wire   [31:0] buff_y_out_2_q1;
reg   [2:0] buff_y_out_3_address0;
reg    buff_y_out_3_ce0;
wire   [31:0] buff_y_out_3_q0;
wire   [31:0] buff_y_out_3_q1;
reg   [2:0] buff_y_out_4_address0;
reg    buff_y_out_4_ce0;
wire   [31:0] buff_y_out_4_q0;
wire   [31:0] buff_y_out_4_q1;
reg   [2:0] buff_y_out_5_address0;
reg    buff_y_out_5_ce0;
wire   [31:0] buff_y_out_5_q0;
wire   [31:0] buff_y_out_5_q1;
reg   [2:0] buff_y_out_6_address0;
reg    buff_y_out_6_ce0;
wire   [31:0] buff_y_out_6_q0;
wire   [31:0] buff_y_out_6_q1;
reg   [2:0] buff_y_out_7_address0;
reg    buff_y_out_7_ce0;
wire   [31:0] buff_y_out_7_q0;
wire   [31:0] buff_y_out_7_q1;
reg   [2:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg    tmp1_ce1;
wire   [31:0] tmp1_q1;
reg   [2:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg    tmp1_1_ce1;
wire   [31:0] tmp1_1_q1;
reg   [2:0] tmp1_2_address0;
reg    tmp1_2_ce0;
reg    tmp1_2_we0;
reg   [31:0] tmp1_2_d0;
wire   [31:0] tmp1_2_q0;
reg    tmp1_2_ce1;
wire   [31:0] tmp1_2_q1;
reg   [2:0] tmp1_3_address0;
reg    tmp1_3_ce0;
reg    tmp1_3_we0;
reg   [31:0] tmp1_3_d0;
wire   [31:0] tmp1_3_q0;
reg    tmp1_3_ce1;
wire   [31:0] tmp1_3_q1;
reg   [2:0] tmp1_4_address0;
reg    tmp1_4_ce0;
reg    tmp1_4_we0;
reg   [31:0] tmp1_4_d0;
wire   [31:0] tmp1_4_q0;
reg    tmp1_4_ce1;
wire   [31:0] tmp1_4_q1;
reg   [2:0] tmp1_5_address0;
reg    tmp1_5_ce0;
reg    tmp1_5_we0;
reg   [31:0] tmp1_5_d0;
wire   [31:0] tmp1_5_q0;
reg    tmp1_5_ce1;
wire   [31:0] tmp1_5_q1;
reg   [2:0] tmp1_6_address0;
reg    tmp1_6_ce0;
reg    tmp1_6_we0;
reg   [31:0] tmp1_6_d0;
wire   [31:0] tmp1_6_q0;
reg    tmp1_6_ce1;
wire   [31:0] tmp1_6_q1;
reg   [2:0] tmp1_7_address0;
reg    tmp1_7_ce0;
reg    tmp1_7_we0;
reg   [31:0] tmp1_7_d0;
wire   [31:0] tmp1_7_q0;
reg    tmp1_7_ce1;
wire   [31:0] tmp1_7_q1;
wire    grp_atax_Pipeline_lprd_2_fu_1895_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1895_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1895_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1895_ap_ready;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_0_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_d0;
wire    grp_atax_Pipeline_lp1_fu_1924_ap_start;
wire    grp_atax_Pipeline_lp1_fu_1924_ap_done;
wire    grp_atax_Pipeline_lp1_fu_1924_ap_idle;
wire    grp_atax_Pipeline_lp1_fu_1924_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address2;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address3;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address4;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address5;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address6;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address7;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address8;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address9;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address10;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address11;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address12;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address13;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address14;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address15;
wire    grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce15;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_7_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_7_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_7_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_7_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_7_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_7_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_6_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_6_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_6_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_6_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_6_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_6_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_5_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_5_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_5_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_5_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_5_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_5_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_4_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_4_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_4_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_4_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_4_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_4_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_3_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_3_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_3_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_2_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_2_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_2_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_1_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_1_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_address0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1924_tmp1_address1;
wire    grp_atax_Pipeline_lp1_fu_1924_tmp1_ce1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_ce;
wire    grp_atax_Pipeline_lp3_fu_2024_ap_start;
wire    grp_atax_Pipeline_lp3_fu_2024_ap_done;
wire    grp_atax_Pipeline_lp3_fu_2024_ap_idle;
wire    grp_atax_Pipeline_lp3_fu_2024_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_1_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_2_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_3_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_4_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_4_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_4_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_5_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_5_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_5_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_6_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_6_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_6_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_7_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_2024_buff_A_7_address1;
wire    grp_atax_Pipeline_lp3_fu_2024_buff_A_7_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_2_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_3_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_4_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_4_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_5_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_5_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_6_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_6_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_2024_tmp1_7_address0;
wire    grp_atax_Pipeline_lp3_fu_2024_tmp1_7_ce0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_6385_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_6385_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_6284_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_6284_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_6183_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_6183_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_6082_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_6082_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5981_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5981_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5880_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5880_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5779_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5779_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5678_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5678_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5577_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5577_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5476_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5476_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5375_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5375_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5274_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5274_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5173_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5173_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_5072_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_5072_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4971_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4971_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4870_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4870_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4769_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4769_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4668_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4668_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4567_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4567_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4466_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4466_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4365_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4365_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4264_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4264_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4163_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4163_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_4062_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_4062_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3961_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3961_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3860_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3860_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3759_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3759_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3658_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3658_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3557_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3557_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3456_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3456_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3355_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3355_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3254_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3254_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3153_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3153_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_3052_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_3052_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2951_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2951_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2850_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2850_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2749_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2749_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2648_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2648_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2547_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2547_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2446_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2446_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2345_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2345_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2244_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2244_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2143_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2143_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_2042_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_2042_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1941_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1941_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1840_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1840_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1739_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1739_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1638_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1638_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1537_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1537_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1436_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1436_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1335_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1335_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1234_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1234_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1133_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1133_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_1032_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_1032_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_931_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_931_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_830_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_830_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_729_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_729_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_628_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_628_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_527_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_527_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_426_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_426_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_325_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_325_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_224_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_224_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add58_123_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add58_123_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_add5822_out;
wire    grp_atax_Pipeline_lp3_fu_2024_add5822_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_din1;
wire    grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_2188_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_y_out_write;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_1_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_2_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_3_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_4_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_5_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_6_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_7_ce0;
reg    grp_atax_Pipeline_lprd_2_fu_1895_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_atax_Pipeline_lp1_fu_1924_ap_start_reg;
reg    grp_atax_Pipeline_lp3_fu_2024_ap_start_reg;
wire    ap_CS_fsm_state12;
reg    grp_atax_Pipeline_lpwr_1_fu_2188_ap_start_reg;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire   [63:0] zext_ln11_fu_2222_p1;
wire   [0:0] icmp_ln11_fu_2210_p2;
wire   [63:0] zext_ln5_fu_2242_p1;
reg   [6:0] i_fu_102;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
reg    x_ce0_local;
reg    buff_x_ce1_local;
reg   [2:0] buff_x_address1_local;
reg    buff_x_ce0_local;
reg   [2:0] buff_x_address0_local;
reg    buff_x_we0_local;
wire   [2:0] trunc_ln11_1_fu_2230_p1;
wire   [31:0] bitcast_ln12_fu_2270_p1;
reg    buff_x_1_ce1_local;
reg   [2:0] buff_x_1_address1_local;
reg    buff_x_1_ce0_local;
reg   [2:0] buff_x_1_address0_local;
reg    buff_x_1_we0_local;
reg    buff_x_2_ce1_local;
reg   [2:0] buff_x_2_address1_local;
reg    buff_x_2_ce0_local;
reg   [2:0] buff_x_2_address0_local;
reg    buff_x_2_we0_local;
reg    buff_x_3_ce1_local;
reg   [2:0] buff_x_3_address1_local;
reg    buff_x_3_ce0_local;
reg   [2:0] buff_x_3_address0_local;
reg    buff_x_3_we0_local;
reg    buff_x_4_ce1_local;
reg   [2:0] buff_x_4_address1_local;
reg    buff_x_4_ce0_local;
reg   [2:0] buff_x_4_address0_local;
reg    buff_x_4_we0_local;
reg    buff_x_5_ce1_local;
reg   [2:0] buff_x_5_address1_local;
reg    buff_x_5_ce0_local;
reg   [2:0] buff_x_5_address0_local;
reg    buff_x_5_we0_local;
reg    buff_x_6_ce1_local;
reg   [2:0] buff_x_6_address1_local;
reg    buff_x_6_ce0_local;
reg   [2:0] buff_x_6_address0_local;
reg    buff_x_6_we0_local;
reg    buff_x_7_ce1_local;
reg   [2:0] buff_x_7_address1_local;
reg    buff_x_7_ce0_local;
reg   [2:0] buff_x_7_address0_local;
reg    buff_x_7_we0_local;
reg    buff_y_out_6_we0_local;
reg   [31:0] buff_y_out_6_d0_local;
reg    buff_y_out_6_ce0_local;
reg   [2:0] buff_y_out_6_address0_local;
reg    buff_y_out_6_ce1_local;
reg   [2:0] buff_y_out_6_address1_local;
reg    buff_y_out_6_we1_local;
reg   [31:0] buff_y_out_6_d1_local;
reg    tmp1_6_we0_local;
reg    tmp1_6_ce0_local;
reg    buff_y_out_5_we0_local;
reg   [31:0] buff_y_out_5_d0_local;
reg    buff_y_out_5_ce0_local;
reg   [2:0] buff_y_out_5_address0_local;
reg    buff_y_out_5_ce1_local;
reg   [2:0] buff_y_out_5_address1_local;
reg    buff_y_out_5_we1_local;
reg   [31:0] buff_y_out_5_d1_local;
reg    tmp1_5_we0_local;
reg    tmp1_5_ce0_local;
reg    buff_y_out_4_we0_local;
reg   [31:0] buff_y_out_4_d0_local;
reg    buff_y_out_4_ce0_local;
reg   [2:0] buff_y_out_4_address0_local;
reg    buff_y_out_4_ce1_local;
reg   [2:0] buff_y_out_4_address1_local;
reg    buff_y_out_4_we1_local;
reg   [31:0] buff_y_out_4_d1_local;
reg    tmp1_4_we0_local;
reg    tmp1_4_ce0_local;
reg    buff_y_out_3_we0_local;
reg   [31:0] buff_y_out_3_d0_local;
reg    buff_y_out_3_ce0_local;
reg   [2:0] buff_y_out_3_address0_local;
reg    buff_y_out_3_ce1_local;
reg   [2:0] buff_y_out_3_address1_local;
reg    buff_y_out_3_we1_local;
reg   [31:0] buff_y_out_3_d1_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
reg    buff_y_out_2_we0_local;
reg   [31:0] buff_y_out_2_d0_local;
reg    buff_y_out_2_ce0_local;
reg   [2:0] buff_y_out_2_address0_local;
reg    buff_y_out_2_ce1_local;
reg   [2:0] buff_y_out_2_address1_local;
reg    buff_y_out_2_we1_local;
reg   [31:0] buff_y_out_2_d1_local;
reg    tmp1_2_we0_local;
reg    tmp1_2_ce0_local;
reg    buff_y_out_1_we0_local;
reg   [31:0] buff_y_out_1_d0_local;
reg    buff_y_out_1_ce0_local;
reg   [2:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_ce1_local;
reg   [2:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_we1_local;
reg   [31:0] buff_y_out_1_d1_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    buff_y_out_we0_local;
reg   [31:0] buff_y_out_d0_local;
reg    buff_y_out_ce0_local;
reg   [2:0] buff_y_out_address0_local;
reg    buff_y_out_ce1_local;
reg   [2:0] buff_y_out_address1_local;
reg    buff_y_out_we1_local;
reg   [31:0] buff_y_out_d1_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    buff_y_out_7_we0_local;
reg   [31:0] buff_y_out_7_d0_local;
reg    buff_y_out_7_ce0_local;
reg   [2:0] buff_y_out_7_address0_local;
reg    buff_y_out_7_ce1_local;
reg   [2:0] buff_y_out_7_address1_local;
reg    buff_y_out_7_we1_local;
reg   [31:0] buff_y_out_7_d1_local;
reg    tmp1_7_we0_local;
reg    tmp1_7_ce0_local;
wire   [2:0] lshr_ln5_fu_2233_p4;
wire   [31:0] grp_fu_4253_p2;
reg   [31:0] grp_fu_4253_p0;
reg   [31:0] grp_fu_4253_p1;
reg    grp_fu_4253_ce;
wire   [31:0] grp_fu_4257_p2;
reg   [31:0] grp_fu_4257_p0;
reg   [31:0] grp_fu_4257_p1;
reg    grp_fu_4257_ce;
wire   [31:0] grp_fu_4261_p2;
reg   [31:0] grp_fu_4261_p0;
reg   [31:0] grp_fu_4261_p1;
reg    grp_fu_4261_ce;
wire   [31:0] grp_fu_4265_p2;
reg   [31:0] grp_fu_4265_p0;
reg   [31:0] grp_fu_4265_p1;
reg    grp_fu_4265_ce;
wire   [31:0] grp_fu_4269_p2;
reg   [31:0] grp_fu_4269_p0;
reg   [31:0] grp_fu_4269_p1;
reg    grp_fu_4269_ce;
wire   [31:0] grp_fu_4273_p2;
reg   [31:0] grp_fu_4273_p0;
reg   [31:0] grp_fu_4273_p1;
reg    grp_fu_4273_ce;
wire   [31:0] grp_fu_4277_p2;
reg   [31:0] grp_fu_4277_p0;
reg   [31:0] grp_fu_4277_p1;
reg    grp_fu_4277_ce;
wire   [31:0] grp_fu_4281_p2;
reg   [31:0] grp_fu_4281_p0;
reg   [31:0] grp_fu_4281_p1;
reg    grp_fu_4281_ce;
wire   [31:0] grp_fu_4285_p2;
reg   [31:0] grp_fu_4285_p0;
reg   [31:0] grp_fu_4285_p1;
reg    grp_fu_4285_ce;
wire   [31:0] grp_fu_4289_p2;
reg   [31:0] grp_fu_4289_p0;
reg   [31:0] grp_fu_4289_p1;
reg    grp_fu_4289_ce;
wire   [31:0] grp_fu_4293_p2;
reg   [31:0] grp_fu_4293_p0;
reg   [31:0] grp_fu_4293_p1;
reg    grp_fu_4293_ce;
wire   [31:0] grp_fu_4297_p2;
reg   [31:0] grp_fu_4297_p0;
reg   [31:0] grp_fu_4297_p1;
reg    grp_fu_4297_ce;
wire   [31:0] grp_fu_4301_p2;
reg   [31:0] grp_fu_4301_p0;
reg   [31:0] grp_fu_4301_p1;
reg    grp_fu_4301_ce;
wire   [31:0] grp_fu_4305_p2;
reg   [31:0] grp_fu_4305_p0;
reg   [31:0] grp_fu_4305_p1;
reg    grp_fu_4305_ce;
wire   [31:0] grp_fu_4309_p2;
reg   [31:0] grp_fu_4309_p0;
reg   [31:0] grp_fu_4309_p1;
reg    grp_fu_4309_ce;
wire   [31:0] grp_fu_4313_p2;
reg   [31:0] grp_fu_4313_p0;
reg   [31:0] grp_fu_4313_p1;
reg    grp_fu_4313_ce;
reg   [17:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_atax_Pipeline_lprd_2_fu_1895_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp1_fu_1924_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_fu_2024_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_2188_ap_start_reg = 1'b0;
#0 i_fu_102 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_d0),.q0(buff_A_4_q0),.address1(buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address2),.ce2(buff_A_4_ce2),.q2(buff_A_4_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address3),.ce3(buff_A_4_ce3),.q3(buff_A_4_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address4),.ce4(buff_A_4_ce4),.q4(buff_A_4_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address5),.ce5(buff_A_4_ce5),.q5(buff_A_4_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address6),.ce6(buff_A_4_ce6),.q6(buff_A_4_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address7),.ce7(buff_A_4_ce7),.q7(buff_A_4_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address8),.ce8(buff_A_4_ce8),.q8(buff_A_4_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address9),.ce9(buff_A_4_ce9),.q9(buff_A_4_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address10),.ce10(buff_A_4_ce10),.q10(buff_A_4_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address11),.ce11(buff_A_4_ce11),.q11(buff_A_4_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address12),.ce12(buff_A_4_ce12),.q12(buff_A_4_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address13),.ce13(buff_A_4_ce13),.q13(buff_A_4_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address14),.ce14(buff_A_4_ce14),.q14(buff_A_4_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address15),.ce15(buff_A_4_ce15),.q15(buff_A_4_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_d0),.q0(buff_A_5_q0),.address1(buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address2),.ce2(buff_A_5_ce2),.q2(buff_A_5_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address3),.ce3(buff_A_5_ce3),.q3(buff_A_5_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address4),.ce4(buff_A_5_ce4),.q4(buff_A_5_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address5),.ce5(buff_A_5_ce5),.q5(buff_A_5_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address6),.ce6(buff_A_5_ce6),.q6(buff_A_5_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address7),.ce7(buff_A_5_ce7),.q7(buff_A_5_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address8),.ce8(buff_A_5_ce8),.q8(buff_A_5_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address9),.ce9(buff_A_5_ce9),.q9(buff_A_5_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address10),.ce10(buff_A_5_ce10),.q10(buff_A_5_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address11),.ce11(buff_A_5_ce11),.q11(buff_A_5_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address12),.ce12(buff_A_5_ce12),.q12(buff_A_5_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address13),.ce13(buff_A_5_ce13),.q13(buff_A_5_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address14),.ce14(buff_A_5_ce14),.q14(buff_A_5_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address15),.ce15(buff_A_5_ce15),.q15(buff_A_5_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_d0),.q0(buff_A_6_q0),.address1(buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address2),.ce2(buff_A_6_ce2),.q2(buff_A_6_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address3),.ce3(buff_A_6_ce3),.q3(buff_A_6_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address4),.ce4(buff_A_6_ce4),.q4(buff_A_6_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address5),.ce5(buff_A_6_ce5),.q5(buff_A_6_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address6),.ce6(buff_A_6_ce6),.q6(buff_A_6_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address7),.ce7(buff_A_6_ce7),.q7(buff_A_6_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address8),.ce8(buff_A_6_ce8),.q8(buff_A_6_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address9),.ce9(buff_A_6_ce9),.q9(buff_A_6_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address10),.ce10(buff_A_6_ce10),.q10(buff_A_6_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address11),.ce11(buff_A_6_ce11),.q11(buff_A_6_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address12),.ce12(buff_A_6_ce12),.q12(buff_A_6_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address13),.ce13(buff_A_6_ce13),.q13(buff_A_6_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address14),.ce14(buff_A_6_ce14),.q14(buff_A_6_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address15),.ce15(buff_A_6_ce15),.q15(buff_A_6_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_d0),.q0(buff_A_7_q0),.address1(buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1),.address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address2),.ce2(buff_A_7_ce2),.q2(buff_A_7_q2),.address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address3),.ce3(buff_A_7_ce3),.q3(buff_A_7_q3),.address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address4),.ce4(buff_A_7_ce4),.q4(buff_A_7_q4),.address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address5),.ce5(buff_A_7_ce5),.q5(buff_A_7_q5),.address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address6),.ce6(buff_A_7_ce6),.q6(buff_A_7_q6),.address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address7),.ce7(buff_A_7_ce7),.q7(buff_A_7_q7),.address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address8),.ce8(buff_A_7_ce8),.q8(buff_A_7_q8),.address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address9),.ce9(buff_A_7_ce9),.q9(buff_A_7_q9),.address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address10),.ce10(buff_A_7_ce10),.q10(buff_A_7_q10),.address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address11),.ce11(buff_A_7_ce11),.q11(buff_A_7_q11),.address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address12),.ce12(buff_A_7_ce12),.q12(buff_A_7_q12),.address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address13),.ce13(buff_A_7_ce13),.q13(buff_A_7_q13),.address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address14),.ce14(buff_A_7_ce14),.q14(buff_A_7_q14),.address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address15),.ce15(buff_A_7_ce15),.q15(buff_A_7_q15));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0_local),.ce0(buff_x_ce0_local),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_q0),.address1(buff_x_address1_local),.ce1(buff_x_ce1_local),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0_local),.ce0(buff_x_1_ce0_local),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_1_q0),.address1(buff_x_1_address1_local),.ce1(buff_x_1_ce1_local),.q1(buff_x_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0_local),.ce0(buff_x_2_ce0_local),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_2_q0),.address1(buff_x_2_address1_local),.ce1(buff_x_2_ce1_local),.q1(buff_x_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0_local),.ce0(buff_x_3_ce0_local),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_3_q0),.address1(buff_x_3_address1_local),.ce1(buff_x_3_ce1_local),.q1(buff_x_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_4_address0_local),.ce0(buff_x_4_ce0_local),.we0(buff_x_4_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_4_q0),.address1(buff_x_4_address1_local),.ce1(buff_x_4_ce1_local),.q1(buff_x_4_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_5_address0_local),.ce0(buff_x_5_ce0_local),.we0(buff_x_5_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_5_q0),.address1(buff_x_5_address1_local),.ce1(buff_x_5_ce1_local),.q1(buff_x_5_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_6_address0_local),.ce0(buff_x_6_ce0_local),.we0(buff_x_6_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_6_q0),.address1(buff_x_6_address1_local),.ce1(buff_x_6_ce1_local),.q1(buff_x_6_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_7_address0_local),.ce0(buff_x_7_ce0_local),.we0(buff_x_7_we0_local),.d0(bitcast_ln12_fu_2270_p1),.q0(buff_x_7_q0),.address1(buff_x_7_address1_local),.ce1(buff_x_7_ce1_local),.q1(buff_x_7_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0_local),.d0(buff_y_out_d0_local),.q0(buff_y_out_q0),.address1(buff_y_out_address1_local),.ce1(buff_y_out_ce1_local),.we1(buff_y_out_we1_local),.d1(buff_y_out_d1_local),.q1(buff_y_out_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0_local),.d0(buff_y_out_1_d0_local),.q0(buff_y_out_1_q0),.address1(buff_y_out_1_address1_local),.ce1(buff_y_out_1_ce1_local),.we1(buff_y_out_1_we1_local),.d1(buff_y_out_1_d1_local),.q1(buff_y_out_1_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0_local),.d0(buff_y_out_2_d0_local),.q0(buff_y_out_2_q0),.address1(buff_y_out_2_address1_local),.ce1(buff_y_out_2_ce1_local),.we1(buff_y_out_2_we1_local),.d1(buff_y_out_2_d1_local),.q1(buff_y_out_2_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0_local),.d0(buff_y_out_3_d0_local),.q0(buff_y_out_3_q0),.address1(buff_y_out_3_address1_local),.ce1(buff_y_out_3_ce1_local),.we1(buff_y_out_3_we1_local),.d1(buff_y_out_3_d1_local),.q1(buff_y_out_3_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_4_address0),.ce0(buff_y_out_4_ce0),.we0(buff_y_out_4_we0_local),.d0(buff_y_out_4_d0_local),.q0(buff_y_out_4_q0),.address1(buff_y_out_4_address1_local),.ce1(buff_y_out_4_ce1_local),.we1(buff_y_out_4_we1_local),.d1(buff_y_out_4_d1_local),.q1(buff_y_out_4_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_5_address0),.ce0(buff_y_out_5_ce0),.we0(buff_y_out_5_we0_local),.d0(buff_y_out_5_d0_local),.q0(buff_y_out_5_q0),.address1(buff_y_out_5_address1_local),.ce1(buff_y_out_5_ce1_local),.we1(buff_y_out_5_we1_local),.d1(buff_y_out_5_d1_local),.q1(buff_y_out_5_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_6_address0),.ce0(buff_y_out_6_ce0),.we0(buff_y_out_6_we0_local),.d0(buff_y_out_6_d0_local),.q0(buff_y_out_6_q0),.address1(buff_y_out_6_address1_local),.ce1(buff_y_out_6_ce1_local),.we1(buff_y_out_6_we1_local),.d1(buff_y_out_6_d1_local),.q1(buff_y_out_6_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_7_address0),.ce0(buff_y_out_7_ce0),.we0(buff_y_out_7_we0_local),.d0(buff_y_out_7_d0_local),.q0(buff_y_out_7_q0),.address1(buff_y_out_7_address1_local),.ce1(buff_y_out_7_ce1_local),.we1(buff_y_out_7_we1_local),.d1(buff_y_out_7_d1_local),.q1(buff_y_out_7_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_address1),.ce1(tmp1_ce1),.q1(tmp1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_1_address1),.ce1(tmp1_1_ce1),.q1(tmp1_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_2_address1),.ce1(tmp1_2_ce1),.q1(tmp1_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_3_address1),.ce1(tmp1_3_ce1),.q1(tmp1_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_4_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_4_address0),.ce0(tmp1_4_ce0),.we0(tmp1_4_we0),.d0(tmp1_4_d0),.q0(tmp1_4_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_4_address1),.ce1(tmp1_4_ce1),.q1(tmp1_4_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_5_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_5_address0),.ce0(tmp1_5_ce0),.we0(tmp1_5_we0),.d0(tmp1_5_d0),.q0(tmp1_5_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_5_address1),.ce1(tmp1_5_ce1),.q1(tmp1_5_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_6_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_6_address0),.ce0(tmp1_6_ce0),.we0(tmp1_6_we0),.d0(tmp1_6_d0),.q0(tmp1_6_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_6_address1),.ce1(tmp1_6_ce1),.q1(tmp1_6_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_7_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_7_address0),.ce0(tmp1_7_ce0),.we0(tmp1_7_we0),.d0(tmp1_7_d0),.q0(tmp1_7_q0),.address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_7_address1),.ce1(tmp1_7_ce1),.q1(tmp1_7_q1));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1895(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1895_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1895_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1895_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1895_ap_ready),.i(trunc_ln11_reg_3029),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_4_address0),.A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_5_address0),.A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_6_address0),.A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_atax_Pipeline_lprd_2_fu_1895_A_7_address0),.A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1895_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_d0),.buff_A_4_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_ce0),.buff_A_4_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_we0),.buff_A_4_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_d0),.buff_A_5_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_ce0),.buff_A_5_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_we0),.buff_A_5_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_d0),.buff_A_6_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_ce0),.buff_A_6_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_we0),.buff_A_6_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_d0),.buff_A_7_address0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_ce0),.buff_A_7_we0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_we0),.buff_A_7_d0(grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_d0));
atax_atax_Pipeline_lp1 grp_atax_Pipeline_lp1_fu_1924(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_fu_1924_ap_start),.ap_done(grp_atax_Pipeline_lp1_fu_1924_ap_done),.ap_idle(grp_atax_Pipeline_lp1_fu_1924_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_fu_1924_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_address3),.buff_A_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_address4),.buff_A_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_address5),.buff_A_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_address6),.buff_A_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_address7),.buff_A_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_address8),.buff_A_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_address9),.buff_A_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_address10),.buff_A_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_address11),.buff_A_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_address12),.buff_A_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_address13),.buff_A_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_address14),.buff_A_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_address15),.buff_A_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address3),.buff_A_1_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address4),.buff_A_1_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address5),.buff_A_1_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address6),.buff_A_1_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address7),.buff_A_1_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address8),.buff_A_1_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address9),.buff_A_1_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address10),.buff_A_1_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address11),.buff_A_1_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address12),.buff_A_1_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address13),.buff_A_1_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address14),.buff_A_1_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address15),.buff_A_1_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address2),.buff_A_2_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address3),.buff_A_2_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address4),.buff_A_2_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address5),.buff_A_2_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address6),.buff_A_2_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address7),.buff_A_2_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address8),.buff_A_2_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address9),.buff_A_2_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address10),.buff_A_2_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address11),.buff_A_2_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address12),.buff_A_2_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address13),.buff_A_2_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address14),.buff_A_2_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address15),.buff_A_2_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address2),.buff_A_3_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address3),.buff_A_3_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address4),.buff_A_3_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address5),.buff_A_3_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address6),.buff_A_3_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address7),.buff_A_3_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address8),.buff_A_3_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address9),.buff_A_3_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address10),.buff_A_3_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address11),.buff_A_3_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address12),.buff_A_3_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address13),.buff_A_3_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address14),.buff_A_3_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address15),.buff_A_3_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_A_4_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_4_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address2),.buff_A_4_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce2),.buff_A_4_q2(buff_A_4_q2),.buff_A_4_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address3),.buff_A_4_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce3),.buff_A_4_q3(buff_A_4_q3),.buff_A_4_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address4),.buff_A_4_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce4),.buff_A_4_q4(buff_A_4_q4),.buff_A_4_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address5),.buff_A_4_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce5),.buff_A_4_q5(buff_A_4_q5),.buff_A_4_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address6),.buff_A_4_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce6),.buff_A_4_q6(buff_A_4_q6),.buff_A_4_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address7),.buff_A_4_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce7),.buff_A_4_q7(buff_A_4_q7),.buff_A_4_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address8),.buff_A_4_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce8),.buff_A_4_q8(buff_A_4_q8),.buff_A_4_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address9),.buff_A_4_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce9),.buff_A_4_q9(buff_A_4_q9),.buff_A_4_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address10),.buff_A_4_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce10),.buff_A_4_q10(buff_A_4_q10),.buff_A_4_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address11),.buff_A_4_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce11),.buff_A_4_q11(buff_A_4_q11),.buff_A_4_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address12),.buff_A_4_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce12),.buff_A_4_q12(buff_A_4_q12),.buff_A_4_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address13),.buff_A_4_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce13),.buff_A_4_q13(buff_A_4_q13),.buff_A_4_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address14),.buff_A_4_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce14),.buff_A_4_q14(buff_A_4_q14),.buff_A_4_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address15),.buff_A_4_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce15),.buff_A_4_q15(buff_A_4_q15),.buff_A_5_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_5_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address2),.buff_A_5_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce2),.buff_A_5_q2(buff_A_5_q2),.buff_A_5_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address3),.buff_A_5_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce3),.buff_A_5_q3(buff_A_5_q3),.buff_A_5_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address4),.buff_A_5_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce4),.buff_A_5_q4(buff_A_5_q4),.buff_A_5_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address5),.buff_A_5_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce5),.buff_A_5_q5(buff_A_5_q5),.buff_A_5_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address6),.buff_A_5_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce6),.buff_A_5_q6(buff_A_5_q6),.buff_A_5_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address7),.buff_A_5_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce7),.buff_A_5_q7(buff_A_5_q7),.buff_A_5_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address8),.buff_A_5_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce8),.buff_A_5_q8(buff_A_5_q8),.buff_A_5_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address9),.buff_A_5_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce9),.buff_A_5_q9(buff_A_5_q9),.buff_A_5_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address10),.buff_A_5_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce10),.buff_A_5_q10(buff_A_5_q10),.buff_A_5_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address11),.buff_A_5_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce11),.buff_A_5_q11(buff_A_5_q11),.buff_A_5_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address12),.buff_A_5_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce12),.buff_A_5_q12(buff_A_5_q12),.buff_A_5_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address13),.buff_A_5_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce13),.buff_A_5_q13(buff_A_5_q13),.buff_A_5_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address14),.buff_A_5_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce14),.buff_A_5_q14(buff_A_5_q14),.buff_A_5_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address15),.buff_A_5_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce15),.buff_A_5_q15(buff_A_5_q15),.buff_A_6_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_6_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address2),.buff_A_6_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce2),.buff_A_6_q2(buff_A_6_q2),.buff_A_6_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address3),.buff_A_6_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce3),.buff_A_6_q3(buff_A_6_q3),.buff_A_6_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address4),.buff_A_6_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce4),.buff_A_6_q4(buff_A_6_q4),.buff_A_6_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address5),.buff_A_6_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce5),.buff_A_6_q5(buff_A_6_q5),.buff_A_6_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address6),.buff_A_6_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce6),.buff_A_6_q6(buff_A_6_q6),.buff_A_6_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address7),.buff_A_6_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce7),.buff_A_6_q7(buff_A_6_q7),.buff_A_6_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address8),.buff_A_6_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce8),.buff_A_6_q8(buff_A_6_q8),.buff_A_6_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address9),.buff_A_6_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce9),.buff_A_6_q9(buff_A_6_q9),.buff_A_6_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address10),.buff_A_6_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce10),.buff_A_6_q10(buff_A_6_q10),.buff_A_6_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address11),.buff_A_6_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce11),.buff_A_6_q11(buff_A_6_q11),.buff_A_6_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address12),.buff_A_6_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce12),.buff_A_6_q12(buff_A_6_q12),.buff_A_6_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address13),.buff_A_6_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce13),.buff_A_6_q13(buff_A_6_q13),.buff_A_6_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address14),.buff_A_6_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce14),.buff_A_6_q14(buff_A_6_q14),.buff_A_6_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address15),.buff_A_6_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce15),.buff_A_6_q15(buff_A_6_q15),.buff_A_7_address0(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_7_address2(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address2),.buff_A_7_ce2(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce2),.buff_A_7_q2(buff_A_7_q2),.buff_A_7_address3(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address3),.buff_A_7_ce3(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce3),.buff_A_7_q3(buff_A_7_q3),.buff_A_7_address4(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address4),.buff_A_7_ce4(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce4),.buff_A_7_q4(buff_A_7_q4),.buff_A_7_address5(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address5),.buff_A_7_ce5(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce5),.buff_A_7_q5(buff_A_7_q5),.buff_A_7_address6(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address6),.buff_A_7_ce6(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce6),.buff_A_7_q6(buff_A_7_q6),.buff_A_7_address7(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address7),.buff_A_7_ce7(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce7),.buff_A_7_q7(buff_A_7_q7),.buff_A_7_address8(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address8),.buff_A_7_ce8(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce8),.buff_A_7_q8(buff_A_7_q8),.buff_A_7_address9(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address9),.buff_A_7_ce9(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce9),.buff_A_7_q9(buff_A_7_q9),.buff_A_7_address10(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address10),.buff_A_7_ce10(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce10),.buff_A_7_q10(buff_A_7_q10),.buff_A_7_address11(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address11),.buff_A_7_ce11(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce11),.buff_A_7_q11(buff_A_7_q11),.buff_A_7_address12(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address12),.buff_A_7_ce12(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce12),.buff_A_7_q12(buff_A_7_q12),.buff_A_7_address13(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address13),.buff_A_7_ce13(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce13),.buff_A_7_q13(buff_A_7_q13),.buff_A_7_address14(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address14),.buff_A_7_ce14(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce14),.buff_A_7_q14(buff_A_7_q14),.buff_A_7_address15(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address15),.buff_A_7_ce15(grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce15),.buff_A_7_q15(buff_A_7_q15),.tmp1_7_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_7_ce0),.tmp1_7_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_7_we0),.tmp1_7_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_7_d0),.tmp1_7_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_7_address1),.tmp1_7_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_7_ce1),.tmp1_7_q1(tmp1_7_q1),.tmp1_6_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_6_ce0),.tmp1_6_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_6_we0),.tmp1_6_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_6_d0),.tmp1_6_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_6_address1),.tmp1_6_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_6_ce1),.tmp1_6_q1(tmp1_6_q1),.tmp1_5_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_5_ce0),.tmp1_5_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_5_we0),.tmp1_5_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_5_d0),.tmp1_5_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_5_address1),.tmp1_5_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_5_ce1),.tmp1_5_q1(tmp1_5_q1),.tmp1_4_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_4_ce0),.tmp1_4_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_4_we0),.tmp1_4_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_4_d0),.tmp1_4_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_4_address1),.tmp1_4_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_4_ce1),.tmp1_4_q1(tmp1_4_q1),.tmp1_3_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_3_d0),.tmp1_3_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_3_address1),.tmp1_3_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_3_ce1),.tmp1_3_q1(tmp1_3_q1),.tmp1_2_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_2_d0),.tmp1_2_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_2_address1),.tmp1_2_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_2_ce1),.tmp1_2_q1(tmp1_2_q1),.tmp1_1_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_1_d0),.tmp1_1_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_1_address1),.tmp1_1_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_1_ce1),.tmp1_1_q1(tmp1_1_q1),.tmp1_address0(grp_atax_Pipeline_lp1_fu_1924_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_fu_1924_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_fu_1924_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_fu_1924_tmp1_d0),.tmp1_address1(grp_atax_Pipeline_lp1_fu_1924_tmp1_address1),.tmp1_ce1(grp_atax_Pipeline_lp1_fu_1924_tmp1_ce1),.tmp1_q1(tmp1_q1),.buff_x_load(buff_x_load_reg_3037),.buff_x_1_load(buff_x_1_load_reg_3042),.buff_x_2_load(buff_x_2_load_reg_3047),.buff_x_3_load(buff_x_3_load_reg_3052),.buff_x_4_load(buff_x_4_load_reg_3057),.buff_x_5_load(buff_x_5_load_reg_3062),.buff_x_6_load(buff_x_6_load_reg_3067),.buff_x_7_load(buff_x_7_load_reg_3072),.buff_x_load_1(buff_x_load_1_reg_3077),.buff_x_1_load_1(buff_x_1_load_1_reg_3082),.buff_x_2_load_1(buff_x_2_load_1_reg_3087),.buff_x_3_load_1(buff_x_3_load_1_reg_3092),.buff_x_4_load_1(buff_x_4_load_1_reg_3097),.buff_x_5_load_1(buff_x_5_load_1_reg_3102),.buff_x_6_load_1(buff_x_6_load_1_reg_3107),.buff_x_7_load_1(buff_x_7_load_1_reg_3112),.buff_x_load_2(buff_x_load_2_reg_3197),.buff_x_1_load_2(buff_x_1_load_2_reg_3202),.buff_x_2_load_2(buff_x_2_load_2_reg_3207),.buff_x_3_load_2(buff_x_3_load_2_reg_3212),.buff_x_4_load_2(buff_x_4_load_2_reg_3217),.buff_x_5_load_2(buff_x_5_load_2_reg_3222),.buff_x_6_load_2(buff_x_6_load_2_reg_3227),.buff_x_7_load_2(buff_x_7_load_2_reg_3232),.buff_x_load_3(buff_x_load_3_reg_3237),.buff_x_1_load_3(buff_x_1_load_3_reg_3242),.buff_x_2_load_3(buff_x_2_load_3_reg_3247),.buff_x_3_load_3(buff_x_3_load_3_reg_3252),.buff_x_4_load_3(buff_x_4_load_3_reg_3257),.buff_x_5_load_3(buff_x_5_load_3_reg_3262),.buff_x_6_load_3(buff_x_6_load_3_reg_3267),.buff_x_7_load_3(buff_x_7_load_3_reg_3272),.buff_x_load_4(buff_x_load_4_reg_3453),.buff_x_1_load_4(buff_x_1_load_4_reg_3458),.buff_x_2_load_4(buff_x_2_load_4_reg_3463),.buff_x_3_load_4(buff_x_3_load_4_reg_3468),.buff_x_4_load_4(buff_x_4_load_4_reg_3473),.buff_x_5_load_4(buff_x_5_load_4_reg_3478),.buff_x_6_load_4(buff_x_6_load_4_reg_3483),.buff_x_7_load_4(buff_x_7_load_4_reg_3488),.buff_x_load_5(buff_x_load_5_reg_3493),.buff_x_1_load_5(buff_x_1_load_5_reg_3498),.buff_x_2_load_5(buff_x_2_load_5_reg_3503),.buff_x_3_load_5(buff_x_3_load_5_reg_3508),.buff_x_4_load_5(buff_x_4_load_5_reg_3513),.buff_x_5_load_5(buff_x_5_load_5_reg_3518),.buff_x_6_load_5(buff_x_6_load_5_reg_3523),.buff_x_7_load_5(buff_x_7_load_5_reg_3528),.buff_x_load_6(buff_x_load_6_reg_3773),.buff_x_1_load_6(buff_x_1_load_6_reg_3778),.buff_x_2_load_6(buff_x_2_load_6_reg_3783),.buff_x_3_load_6(buff_x_3_load_6_reg_3788),.buff_x_4_load_6(buff_x_4_load_6_reg_3793),.buff_x_5_load_6(buff_x_5_load_6_reg_3798),.buff_x_6_load_6(buff_x_6_load_6_reg_3803),.buff_x_7_load_6(buff_x_7_load_6_reg_3808),.buff_x_load_7(buff_x_load_7_reg_3813),.buff_x_1_load_7(buff_x_1_load_7_reg_3818),.buff_x_2_load_7(buff_x_2_load_7_reg_3823),.buff_x_3_load_7(buff_x_3_load_7_reg_3828),.buff_x_4_load_7(buff_x_4_load_7_reg_3833),.buff_x_5_load_7(buff_x_5_load_7_reg_3838),.buff_x_6_load_7(buff_x_6_load_7_reg_3843),.buff_x_7_load_7(buff_x_7_load_7_reg_3848),.grp_fu_4253_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_din0),.grp_fu_4253_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_din1),.grp_fu_4253_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_opcode),.grp_fu_4253_p_dout0(grp_fu_4253_p2),.grp_fu_4253_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_ce),.grp_fu_4257_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_din0),.grp_fu_4257_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_din1),.grp_fu_4257_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_opcode),.grp_fu_4257_p_dout0(grp_fu_4257_p2),.grp_fu_4257_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_ce),.grp_fu_4261_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_din0),.grp_fu_4261_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_din1),.grp_fu_4261_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_opcode),.grp_fu_4261_p_dout0(grp_fu_4261_p2),.grp_fu_4261_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_ce),.grp_fu_4265_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_din0),.grp_fu_4265_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_din1),.grp_fu_4265_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_opcode),.grp_fu_4265_p_dout0(grp_fu_4265_p2),.grp_fu_4265_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_ce),.grp_fu_4269_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_din0),.grp_fu_4269_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_din1),.grp_fu_4269_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_opcode),.grp_fu_4269_p_dout0(grp_fu_4269_p2),.grp_fu_4269_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_ce),.grp_fu_4273_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_din0),.grp_fu_4273_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_din1),.grp_fu_4273_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_opcode),.grp_fu_4273_p_dout0(grp_fu_4273_p2),.grp_fu_4273_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_ce),.grp_fu_4277_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_din0),.grp_fu_4277_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_din1),.grp_fu_4277_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_opcode),.grp_fu_4277_p_dout0(grp_fu_4277_p2),.grp_fu_4277_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_ce),.grp_fu_4281_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_din0),.grp_fu_4281_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_din1),.grp_fu_4281_p_opcode(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_opcode),.grp_fu_4281_p_dout0(grp_fu_4281_p2),.grp_fu_4281_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_ce),.grp_fu_4285_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_din0),.grp_fu_4285_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_din1),.grp_fu_4285_p_dout0(grp_fu_4285_p2),.grp_fu_4285_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_ce),.grp_fu_4289_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_din0),.grp_fu_4289_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_din1),.grp_fu_4289_p_dout0(grp_fu_4289_p2),.grp_fu_4289_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_ce),.grp_fu_4293_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_din0),.grp_fu_4293_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_din1),.grp_fu_4293_p_dout0(grp_fu_4293_p2),.grp_fu_4293_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_ce),.grp_fu_4297_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_din0),.grp_fu_4297_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_din1),.grp_fu_4297_p_dout0(grp_fu_4297_p2),.grp_fu_4297_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_ce),.grp_fu_4301_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_din0),.grp_fu_4301_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_din1),.grp_fu_4301_p_dout0(grp_fu_4301_p2),.grp_fu_4301_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_ce),.grp_fu_4305_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_din0),.grp_fu_4305_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_din1),.grp_fu_4305_p_dout0(grp_fu_4305_p2),.grp_fu_4305_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_ce),.grp_fu_4309_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_din0),.grp_fu_4309_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_din1),.grp_fu_4309_p_dout0(grp_fu_4309_p2),.grp_fu_4309_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_ce),.grp_fu_4313_p_din0(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_din0),.grp_fu_4313_p_din1(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_din1),.grp_fu_4313_p_dout0(grp_fu_4313_p2),.grp_fu_4313_p_ce(grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_ce));
atax_atax_Pipeline_lp3 grp_atax_Pipeline_lp3_fu_2024(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_fu_2024_ap_start),.ap_done(grp_atax_Pipeline_lp3_fu_2024_ap_done),.ap_idle(grp_atax_Pipeline_lp3_fu_2024_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_fu_2024_ap_ready),.buff_y_out_7_load_7(buff_y_out_7_load_7_reg_4248),.buff_y_out_6_load_7(buff_y_out_6_load_7_reg_4243),.buff_y_out_5_load_7(buff_y_out_5_load_7_reg_4238),.buff_y_out_4_load_7(buff_y_out_4_load_7_reg_4233),.buff_y_out_3_load_7(buff_y_out_3_load_7_reg_4228),.buff_y_out_2_load_7(buff_y_out_2_load_7_reg_4223),.buff_y_out_1_load_7(buff_y_out_1_load_7_reg_4218),.buff_y_out_load_7(buff_y_out_load_7_reg_4213),.buff_y_out_7_load_6(buff_y_out_7_load_6_reg_4208),.buff_y_out_6_load_6(buff_y_out_6_load_6_reg_4203),.buff_y_out_5_load_6(buff_y_out_5_load_6_reg_4198),.buff_y_out_4_load_6(buff_y_out_4_load_6_reg_4193),.buff_y_out_3_load_6(buff_y_out_3_load_6_reg_4188),.buff_y_out_2_load_6(buff_y_out_2_load_6_reg_4183),.buff_y_out_1_load_6(buff_y_out_1_load_6_reg_4178),.buff_y_out_load_6(buff_y_out_load_6_reg_4173),.buff_y_out_7_load_5(buff_y_out_7_load_5_reg_4168),.buff_y_out_6_load_5(buff_y_out_6_load_5_reg_4163),.buff_y_out_5_load_5(buff_y_out_5_load_5_reg_4158),.buff_y_out_4_load_5(buff_y_out_4_load_5_reg_4153),.buff_y_out_3_load_5(buff_y_out_3_load_5_reg_4148),.buff_y_out_2_load_5(buff_y_out_2_load_5_reg_4143),.buff_y_out_1_load_5(buff_y_out_1_load_5_reg_4138),.buff_y_out_load_5(buff_y_out_load_5_reg_4133),.buff_y_out_7_load_4(buff_y_out_7_load_4_reg_4128),.buff_y_out_6_load_4(buff_y_out_6_load_4_reg_4123),.buff_y_out_5_load_4(buff_y_out_5_load_4_reg_4118),.buff_y_out_4_load_4(buff_y_out_4_load_4_reg_4113),.buff_y_out_3_load_4(buff_y_out_3_load_4_reg_4108),.buff_y_out_2_load_4(buff_y_out_2_load_4_reg_4103),.buff_y_out_1_load_4(buff_y_out_1_load_4_reg_4098),.buff_y_out_load_4(buff_y_out_load_4_reg_4093),.buff_y_out_7_load_3(buff_y_out_7_load_3_reg_4008),.buff_y_out_6_load_3(buff_y_out_6_load_3_reg_4003),.buff_y_out_5_load_3(buff_y_out_5_load_3_reg_3998),.buff_y_out_4_load_3(buff_y_out_4_load_3_reg_3993),.buff_y_out_3_load_3(buff_y_out_3_load_3_reg_3988),.buff_y_out_2_load_3(buff_y_out_2_load_3_reg_3983),.buff_y_out_1_load_3(buff_y_out_1_load_3_reg_3978),.buff_y_out_load_3(buff_y_out_load_3_reg_3973),.buff_y_out_7_load_2(buff_y_out_7_load_2_reg_3968),.buff_y_out_6_load_2(buff_y_out_6_load_2_reg_3963),.buff_y_out_5_load_2(buff_y_out_5_load_2_reg_3958),.buff_y_out_4_load_2(buff_y_out_4_load_2_reg_3953),.buff_y_out_3_load_2(buff_y_out_3_load_2_reg_3948),.buff_y_out_2_load_2(buff_y_out_2_load_2_reg_3943),.buff_y_out_1_load_2(buff_y_out_1_load_2_reg_3938),.buff_y_out_load_2(buff_y_out_load_2_reg_3933),.buff_y_out_7_load_1(buff_y_out_7_load_1_reg_3768),.buff_y_out_6_load_1(buff_y_out_6_load_1_reg_3763),.buff_y_out_5_load_1(buff_y_out_5_load_1_reg_3758),.buff_y_out_4_load_1(buff_y_out_4_load_1_reg_3753),.buff_y_out_3_load_1(buff_y_out_3_load_1_reg_3748),.buff_y_out_2_load_1(buff_y_out_2_load_1_reg_3743),.buff_y_out_1_load_1(buff_y_out_1_load_1_reg_3738),.buff_y_out_load_1(buff_y_out_load_1_reg_3733),.buff_y_out_7_load(buff_y_out_7_load_reg_3728),.buff_y_out_6_load(buff_y_out_6_load_reg_3723),.buff_y_out_5_load(buff_y_out_5_load_reg_3718),.buff_y_out_4_load(buff_y_out_4_load_reg_3713),.buff_y_out_3_load(buff_y_out_3_load_reg_3708),.buff_y_out_2_load(buff_y_out_2_load_reg_3703),.buff_y_out_1_load(buff_y_out_1_load_reg_3698),.buff_y_out_load(buff_y_out_load_reg_3693),.buff_A_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_atax_Pipeline_lp3_fu_2024_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp3_fu_2024_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp3_fu_2024_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp3_fu_2024_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.tmp1_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.tmp1_4_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_4_ce0),.tmp1_4_q0(tmp1_4_q0),.tmp1_5_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_5_ce0),.tmp1_5_q0(tmp1_5_q0),.tmp1_6_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_6_ce0),.tmp1_6_q0(tmp1_6_q0),.tmp1_7_address0(grp_atax_Pipeline_lp3_fu_2024_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp3_fu_2024_tmp1_7_ce0),.tmp1_7_q0(tmp1_7_q0),.add58_6385_out(grp_atax_Pipeline_lp3_fu_2024_add58_6385_out),.add58_6385_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_6385_out_ap_vld),.add58_6284_out(grp_atax_Pipeline_lp3_fu_2024_add58_6284_out),.add58_6284_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_6284_out_ap_vld),.add58_6183_out(grp_atax_Pipeline_lp3_fu_2024_add58_6183_out),.add58_6183_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_6183_out_ap_vld),.add58_6082_out(grp_atax_Pipeline_lp3_fu_2024_add58_6082_out),.add58_6082_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_6082_out_ap_vld),.add58_5981_out(grp_atax_Pipeline_lp3_fu_2024_add58_5981_out),.add58_5981_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5981_out_ap_vld),.add58_5880_out(grp_atax_Pipeline_lp3_fu_2024_add58_5880_out),.add58_5880_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5880_out_ap_vld),.add58_5779_out(grp_atax_Pipeline_lp3_fu_2024_add58_5779_out),.add58_5779_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5779_out_ap_vld),.add58_5678_out(grp_atax_Pipeline_lp3_fu_2024_add58_5678_out),.add58_5678_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5678_out_ap_vld),.add58_5577_out(grp_atax_Pipeline_lp3_fu_2024_add58_5577_out),.add58_5577_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5577_out_ap_vld),.add58_5476_out(grp_atax_Pipeline_lp3_fu_2024_add58_5476_out),.add58_5476_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5476_out_ap_vld),.add58_5375_out(grp_atax_Pipeline_lp3_fu_2024_add58_5375_out),.add58_5375_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5375_out_ap_vld),.add58_5274_out(grp_atax_Pipeline_lp3_fu_2024_add58_5274_out),.add58_5274_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5274_out_ap_vld),.add58_5173_out(grp_atax_Pipeline_lp3_fu_2024_add58_5173_out),.add58_5173_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5173_out_ap_vld),.add58_5072_out(grp_atax_Pipeline_lp3_fu_2024_add58_5072_out),.add58_5072_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_5072_out_ap_vld),.add58_4971_out(grp_atax_Pipeline_lp3_fu_2024_add58_4971_out),.add58_4971_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4971_out_ap_vld),.add58_4870_out(grp_atax_Pipeline_lp3_fu_2024_add58_4870_out),.add58_4870_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4870_out_ap_vld),.add58_4769_out(grp_atax_Pipeline_lp3_fu_2024_add58_4769_out),.add58_4769_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4769_out_ap_vld),.add58_4668_out(grp_atax_Pipeline_lp3_fu_2024_add58_4668_out),.add58_4668_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4668_out_ap_vld),.add58_4567_out(grp_atax_Pipeline_lp3_fu_2024_add58_4567_out),.add58_4567_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4567_out_ap_vld),.add58_4466_out(grp_atax_Pipeline_lp3_fu_2024_add58_4466_out),.add58_4466_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4466_out_ap_vld),.add58_4365_out(grp_atax_Pipeline_lp3_fu_2024_add58_4365_out),.add58_4365_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4365_out_ap_vld),.add58_4264_out(grp_atax_Pipeline_lp3_fu_2024_add58_4264_out),.add58_4264_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4264_out_ap_vld),.add58_4163_out(grp_atax_Pipeline_lp3_fu_2024_add58_4163_out),.add58_4163_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4163_out_ap_vld),.add58_4062_out(grp_atax_Pipeline_lp3_fu_2024_add58_4062_out),.add58_4062_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_4062_out_ap_vld),.add58_3961_out(grp_atax_Pipeline_lp3_fu_2024_add58_3961_out),.add58_3961_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3961_out_ap_vld),.add58_3860_out(grp_atax_Pipeline_lp3_fu_2024_add58_3860_out),.add58_3860_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3860_out_ap_vld),.add58_3759_out(grp_atax_Pipeline_lp3_fu_2024_add58_3759_out),.add58_3759_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3759_out_ap_vld),.add58_3658_out(grp_atax_Pipeline_lp3_fu_2024_add58_3658_out),.add58_3658_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3658_out_ap_vld),.add58_3557_out(grp_atax_Pipeline_lp3_fu_2024_add58_3557_out),.add58_3557_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3557_out_ap_vld),.add58_3456_out(grp_atax_Pipeline_lp3_fu_2024_add58_3456_out),.add58_3456_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3456_out_ap_vld),.add58_3355_out(grp_atax_Pipeline_lp3_fu_2024_add58_3355_out),.add58_3355_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3355_out_ap_vld),.add58_3254_out(grp_atax_Pipeline_lp3_fu_2024_add58_3254_out),.add58_3254_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3254_out_ap_vld),.add58_3153_out(grp_atax_Pipeline_lp3_fu_2024_add58_3153_out),.add58_3153_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3153_out_ap_vld),.add58_3052_out(grp_atax_Pipeline_lp3_fu_2024_add58_3052_out),.add58_3052_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_3052_out_ap_vld),.add58_2951_out(grp_atax_Pipeline_lp3_fu_2024_add58_2951_out),.add58_2951_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2951_out_ap_vld),.add58_2850_out(grp_atax_Pipeline_lp3_fu_2024_add58_2850_out),.add58_2850_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2850_out_ap_vld),.add58_2749_out(grp_atax_Pipeline_lp3_fu_2024_add58_2749_out),.add58_2749_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2749_out_ap_vld),.add58_2648_out(grp_atax_Pipeline_lp3_fu_2024_add58_2648_out),.add58_2648_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2648_out_ap_vld),.add58_2547_out(grp_atax_Pipeline_lp3_fu_2024_add58_2547_out),.add58_2547_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2547_out_ap_vld),.add58_2446_out(grp_atax_Pipeline_lp3_fu_2024_add58_2446_out),.add58_2446_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2446_out_ap_vld),.add58_2345_out(grp_atax_Pipeline_lp3_fu_2024_add58_2345_out),.add58_2345_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2345_out_ap_vld),.add58_2244_out(grp_atax_Pipeline_lp3_fu_2024_add58_2244_out),.add58_2244_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2244_out_ap_vld),.add58_2143_out(grp_atax_Pipeline_lp3_fu_2024_add58_2143_out),.add58_2143_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2143_out_ap_vld),.add58_2042_out(grp_atax_Pipeline_lp3_fu_2024_add58_2042_out),.add58_2042_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_2042_out_ap_vld),.add58_1941_out(grp_atax_Pipeline_lp3_fu_2024_add58_1941_out),.add58_1941_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1941_out_ap_vld),.add58_1840_out(grp_atax_Pipeline_lp3_fu_2024_add58_1840_out),.add58_1840_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1840_out_ap_vld),.add58_1739_out(grp_atax_Pipeline_lp3_fu_2024_add58_1739_out),.add58_1739_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1739_out_ap_vld),.add58_1638_out(grp_atax_Pipeline_lp3_fu_2024_add58_1638_out),.add58_1638_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1638_out_ap_vld),.add58_1537_out(grp_atax_Pipeline_lp3_fu_2024_add58_1537_out),.add58_1537_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1537_out_ap_vld),.add58_1436_out(grp_atax_Pipeline_lp3_fu_2024_add58_1436_out),.add58_1436_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1436_out_ap_vld),.add58_1335_out(grp_atax_Pipeline_lp3_fu_2024_add58_1335_out),.add58_1335_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1335_out_ap_vld),.add58_1234_out(grp_atax_Pipeline_lp3_fu_2024_add58_1234_out),.add58_1234_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1234_out_ap_vld),.add58_1133_out(grp_atax_Pipeline_lp3_fu_2024_add58_1133_out),.add58_1133_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1133_out_ap_vld),.add58_1032_out(grp_atax_Pipeline_lp3_fu_2024_add58_1032_out),.add58_1032_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_1032_out_ap_vld),.add58_931_out(grp_atax_Pipeline_lp3_fu_2024_add58_931_out),.add58_931_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_931_out_ap_vld),.add58_830_out(grp_atax_Pipeline_lp3_fu_2024_add58_830_out),.add58_830_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_830_out_ap_vld),.add58_729_out(grp_atax_Pipeline_lp3_fu_2024_add58_729_out),.add58_729_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_729_out_ap_vld),.add58_628_out(grp_atax_Pipeline_lp3_fu_2024_add58_628_out),.add58_628_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_628_out_ap_vld),.add58_527_out(grp_atax_Pipeline_lp3_fu_2024_add58_527_out),.add58_527_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_527_out_ap_vld),.add58_426_out(grp_atax_Pipeline_lp3_fu_2024_add58_426_out),.add58_426_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_426_out_ap_vld),.add58_325_out(grp_atax_Pipeline_lp3_fu_2024_add58_325_out),.add58_325_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_325_out_ap_vld),.add58_224_out(grp_atax_Pipeline_lp3_fu_2024_add58_224_out),.add58_224_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_224_out_ap_vld),.add58_123_out(grp_atax_Pipeline_lp3_fu_2024_add58_123_out),.add58_123_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add58_123_out_ap_vld),.add5822_out(grp_atax_Pipeline_lp3_fu_2024_add5822_out),.add5822_out_ap_vld(grp_atax_Pipeline_lp3_fu_2024_add5822_out_ap_vld),.grp_fu_4253_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_din0),.grp_fu_4253_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_din1),.grp_fu_4253_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_opcode),.grp_fu_4253_p_dout0(grp_fu_4253_p2),.grp_fu_4253_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_ce),.grp_fu_4257_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_din0),.grp_fu_4257_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_din1),.grp_fu_4257_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_opcode),.grp_fu_4257_p_dout0(grp_fu_4257_p2),.grp_fu_4257_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_ce),.grp_fu_4261_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_din0),.grp_fu_4261_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_din1),.grp_fu_4261_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_opcode),.grp_fu_4261_p_dout0(grp_fu_4261_p2),.grp_fu_4261_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_ce),.grp_fu_4265_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_din0),.grp_fu_4265_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_din1),.grp_fu_4265_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_opcode),.grp_fu_4265_p_dout0(grp_fu_4265_p2),.grp_fu_4265_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_ce),.grp_fu_4269_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_din0),.grp_fu_4269_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_din1),.grp_fu_4269_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_opcode),.grp_fu_4269_p_dout0(grp_fu_4269_p2),.grp_fu_4269_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_ce),.grp_fu_4273_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_din0),.grp_fu_4273_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_din1),.grp_fu_4273_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_opcode),.grp_fu_4273_p_dout0(grp_fu_4273_p2),.grp_fu_4273_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_ce),.grp_fu_4277_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_din0),.grp_fu_4277_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_din1),.grp_fu_4277_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_opcode),.grp_fu_4277_p_dout0(grp_fu_4277_p2),.grp_fu_4277_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_ce),.grp_fu_4281_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_din0),.grp_fu_4281_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_din1),.grp_fu_4281_p_opcode(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_opcode),.grp_fu_4281_p_dout0(grp_fu_4281_p2),.grp_fu_4281_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_ce),.grp_fu_4285_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_din0),.grp_fu_4285_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_din1),.grp_fu_4285_p_dout0(grp_fu_4285_p2),.grp_fu_4285_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_ce),.grp_fu_4289_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_din0),.grp_fu_4289_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_din1),.grp_fu_4289_p_dout0(grp_fu_4289_p2),.grp_fu_4289_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_ce),.grp_fu_4293_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_din0),.grp_fu_4293_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_din1),.grp_fu_4293_p_dout0(grp_fu_4293_p2),.grp_fu_4293_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_ce),.grp_fu_4297_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_din0),.grp_fu_4297_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_din1),.grp_fu_4297_p_dout0(grp_fu_4297_p2),.grp_fu_4297_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_ce),.grp_fu_4301_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_din0),.grp_fu_4301_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_din1),.grp_fu_4301_p_dout0(grp_fu_4301_p2),.grp_fu_4301_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_ce),.grp_fu_4305_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_din0),.grp_fu_4305_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_din1),.grp_fu_4305_p_dout0(grp_fu_4305_p2),.grp_fu_4305_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_ce),.grp_fu_4309_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_din0),.grp_fu_4309_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_din1),.grp_fu_4309_p_dout0(grp_fu_4309_p2),.grp_fu_4309_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_ce),.grp_fu_4313_p_din0(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_din0),.grp_fu_4313_p_din1(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_din1),.grp_fu_4313_p_dout0(grp_fu_4313_p2),.grp_fu_4313_p_ce(grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_2188(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_2188_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_2188_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_2188_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_2188_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_2188_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_2188_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0),.buff_y_out_4_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_4_ce0),.buff_y_out_4_q0(buff_y_out_4_q0),.buff_y_out_5_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_5_ce0),.buff_y_out_5_q0(buff_y_out_5_q0),.buff_y_out_6_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_6_ce0),.buff_y_out_6_q0(buff_y_out_6_q0),.buff_y_out_7_address0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_7_ce0),.buff_y_out_7_q0(buff_y_out_7_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U530(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4253_p0),.din1(grp_fu_4253_p1),.ce(grp_fu_4253_ce),.dout(grp_fu_4253_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U531(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4257_p0),.din1(grp_fu_4257_p1),.ce(grp_fu_4257_ce),.dout(grp_fu_4257_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U532(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4261_p0),.din1(grp_fu_4261_p1),.ce(grp_fu_4261_ce),.dout(grp_fu_4261_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U533(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4265_p0),.din1(grp_fu_4265_p1),.ce(grp_fu_4265_ce),.dout(grp_fu_4265_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U534(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4269_p0),.din1(grp_fu_4269_p1),.ce(grp_fu_4269_ce),.dout(grp_fu_4269_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U535(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4273_p0),.din1(grp_fu_4273_p1),.ce(grp_fu_4273_ce),.dout(grp_fu_4273_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U536(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4277_p0),.din1(grp_fu_4277_p1),.ce(grp_fu_4277_ce),.dout(grp_fu_4277_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U537(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4281_p0),.din1(grp_fu_4281_p1),.ce(grp_fu_4281_ce),.dout(grp_fu_4281_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U538(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4285_p0),.din1(grp_fu_4285_p1),.ce(grp_fu_4285_ce),.dout(grp_fu_4285_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U539(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4289_p0),.din1(grp_fu_4289_p1),.ce(grp_fu_4289_ce),.dout(grp_fu_4289_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U540(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4293_p0),.din1(grp_fu_4293_p1),.ce(grp_fu_4293_ce),.dout(grp_fu_4293_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U541(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4297_p0),.din1(grp_fu_4297_p1),.ce(grp_fu_4297_ce),.dout(grp_fu_4297_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U542(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4301_p0),.din1(grp_fu_4301_p1),.ce(grp_fu_4301_ce),.dout(grp_fu_4301_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U543(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4305_p0),.din1(grp_fu_4305_p1),.ce(grp_fu_4305_ce),.dout(grp_fu_4305_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U544(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4309_p0),.din1(grp_fu_4309_p1),.ce(grp_fu_4309_ce),.dout(grp_fu_4309_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U545(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4313_p0),.din1(grp_fu_4313_p1),.ce(grp_fu_4313_ce),.dout(grp_fu_4313_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_fu_1924_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_Pipeline_lp1_fu_1924_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_fu_1924_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_fu_1924_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_fu_2024_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_atax_Pipeline_lp3_fu_2024_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_fu_2024_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_fu_2024_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1895_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_atax_Pipeline_lprd_2_fu_1895_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1895_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1895_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_2188_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_atax_Pipeline_lpwr_1_fu_2188_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_2188_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_2188_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_102 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_102 <= add_ln11_reg_2939;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_2939 <= add_ln11_fu_2216_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_load_1_reg_3082 <= buff_x_1_q0;
        buff_x_1_load_reg_3042 <= buff_x_1_q1;
        buff_x_2_load_1_reg_3087 <= buff_x_2_q0;
        buff_x_2_load_reg_3047 <= buff_x_2_q1;
        buff_x_3_load_1_reg_3092 <= buff_x_3_q0;
        buff_x_3_load_reg_3052 <= buff_x_3_q1;
        buff_x_4_load_1_reg_3097 <= buff_x_4_q0;
        buff_x_4_load_reg_3057 <= buff_x_4_q1;
        buff_x_5_load_1_reg_3102 <= buff_x_5_q0;
        buff_x_5_load_reg_3062 <= buff_x_5_q1;
        buff_x_6_load_1_reg_3107 <= buff_x_6_q0;
        buff_x_6_load_reg_3067 <= buff_x_6_q1;
        buff_x_7_load_1_reg_3112 <= buff_x_7_q0;
        buff_x_7_load_reg_3072 <= buff_x_7_q1;
        buff_x_load_1_reg_3077 <= buff_x_q0;
        buff_x_load_reg_3037 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_load_2_reg_3202 <= buff_x_1_q0;
        buff_x_1_load_3_reg_3242 <= buff_x_1_q1;
        buff_x_2_load_2_reg_3207 <= buff_x_2_q0;
        buff_x_2_load_3_reg_3247 <= buff_x_2_q1;
        buff_x_3_load_2_reg_3212 <= buff_x_3_q0;
        buff_x_3_load_3_reg_3252 <= buff_x_3_q1;
        buff_x_4_load_2_reg_3217 <= buff_x_4_q0;
        buff_x_4_load_3_reg_3257 <= buff_x_4_q1;
        buff_x_5_load_2_reg_3222 <= buff_x_5_q0;
        buff_x_5_load_3_reg_3262 <= buff_x_5_q1;
        buff_x_6_load_2_reg_3227 <= buff_x_6_q0;
        buff_x_6_load_3_reg_3267 <= buff_x_6_q1;
        buff_x_7_load_2_reg_3232 <= buff_x_7_q0;
        buff_x_7_load_3_reg_3272 <= buff_x_7_q1;
        buff_x_load_2_reg_3197 <= buff_x_q0;
        buff_x_load_3_reg_3237 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_load_4_reg_3458 <= buff_x_1_q0;
        buff_x_1_load_5_reg_3498 <= buff_x_1_q1;
        buff_x_2_load_4_reg_3463 <= buff_x_2_q0;
        buff_x_2_load_5_reg_3503 <= buff_x_2_q1;
        buff_x_3_load_4_reg_3468 <= buff_x_3_q0;
        buff_x_3_load_5_reg_3508 <= buff_x_3_q1;
        buff_x_4_load_4_reg_3473 <= buff_x_4_q0;
        buff_x_4_load_5_reg_3513 <= buff_x_4_q1;
        buff_x_5_load_4_reg_3478 <= buff_x_5_q0;
        buff_x_5_load_5_reg_3518 <= buff_x_5_q1;
        buff_x_6_load_4_reg_3483 <= buff_x_6_q0;
        buff_x_6_load_5_reg_3523 <= buff_x_6_q1;
        buff_x_7_load_4_reg_3488 <= buff_x_7_q0;
        buff_x_7_load_5_reg_3528 <= buff_x_7_q1;
        buff_x_load_4_reg_3453 <= buff_x_q0;
        buff_x_load_5_reg_3493 <= buff_x_q1;
        buff_y_out_1_load_1_reg_3738 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_3698 <= buff_y_out_1_q1;
        buff_y_out_2_load_1_reg_3743 <= buff_y_out_2_q0;
        buff_y_out_2_load_reg_3703 <= buff_y_out_2_q1;
        buff_y_out_3_load_1_reg_3748 <= buff_y_out_3_q0;
        buff_y_out_3_load_reg_3708 <= buff_y_out_3_q1;
        buff_y_out_4_load_1_reg_3753 <= buff_y_out_4_q0;
        buff_y_out_4_load_reg_3713 <= buff_y_out_4_q1;
        buff_y_out_5_load_1_reg_3758 <= buff_y_out_5_q0;
        buff_y_out_5_load_reg_3718 <= buff_y_out_5_q1;
        buff_y_out_6_load_1_reg_3763 <= buff_y_out_6_q0;
        buff_y_out_6_load_reg_3723 <= buff_y_out_6_q1;
        buff_y_out_7_load_1_reg_3768 <= buff_y_out_7_q0;
        buff_y_out_7_load_reg_3728 <= buff_y_out_7_q1;
        buff_y_out_load_1_reg_3733 <= buff_y_out_q0;
        buff_y_out_load_reg_3693 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_load_6_reg_3778 <= buff_x_1_q0;
        buff_x_1_load_7_reg_3818 <= buff_x_1_q1;
        buff_x_2_load_6_reg_3783 <= buff_x_2_q0;
        buff_x_2_load_7_reg_3823 <= buff_x_2_q1;
        buff_x_3_load_6_reg_3788 <= buff_x_3_q0;
        buff_x_3_load_7_reg_3828 <= buff_x_3_q1;
        buff_x_4_load_6_reg_3793 <= buff_x_4_q0;
        buff_x_4_load_7_reg_3833 <= buff_x_4_q1;
        buff_x_5_load_6_reg_3798 <= buff_x_5_q0;
        buff_x_5_load_7_reg_3838 <= buff_x_5_q1;
        buff_x_6_load_6_reg_3803 <= buff_x_6_q0;
        buff_x_6_load_7_reg_3843 <= buff_x_6_q1;
        buff_x_7_load_6_reg_3808 <= buff_x_7_q0;
        buff_x_7_load_7_reg_3848 <= buff_x_7_q1;
        buff_x_load_6_reg_3773 <= buff_x_q0;
        buff_x_load_7_reg_3813 <= buff_x_q1;
        buff_y_out_1_load_2_reg_3938 <= buff_y_out_1_q0;
        buff_y_out_1_load_3_reg_3978 <= buff_y_out_1_q1;
        buff_y_out_2_load_2_reg_3943 <= buff_y_out_2_q0;
        buff_y_out_2_load_3_reg_3983 <= buff_y_out_2_q1;
        buff_y_out_3_load_2_reg_3948 <= buff_y_out_3_q0;
        buff_y_out_3_load_3_reg_3988 <= buff_y_out_3_q1;
        buff_y_out_4_load_2_reg_3953 <= buff_y_out_4_q0;
        buff_y_out_4_load_3_reg_3993 <= buff_y_out_4_q1;
        buff_y_out_5_load_2_reg_3958 <= buff_y_out_5_q0;
        buff_y_out_5_load_3_reg_3998 <= buff_y_out_5_q1;
        buff_y_out_6_load_2_reg_3963 <= buff_y_out_6_q0;
        buff_y_out_6_load_3_reg_4003 <= buff_y_out_6_q1;
        buff_y_out_7_load_2_reg_3968 <= buff_y_out_7_q0;
        buff_y_out_7_load_3_reg_4008 <= buff_y_out_7_q1;
        buff_y_out_load_2_reg_3933 <= buff_y_out_q0;
        buff_y_out_load_3_reg_3973 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_load_4_reg_4098 <= buff_y_out_1_q0;
        buff_y_out_1_load_5_reg_4138 <= buff_y_out_1_q1;
        buff_y_out_2_load_4_reg_4103 <= buff_y_out_2_q0;
        buff_y_out_2_load_5_reg_4143 <= buff_y_out_2_q1;
        buff_y_out_3_load_4_reg_4108 <= buff_y_out_3_q0;
        buff_y_out_3_load_5_reg_4148 <= buff_y_out_3_q1;
        buff_y_out_4_load_4_reg_4113 <= buff_y_out_4_q0;
        buff_y_out_4_load_5_reg_4153 <= buff_y_out_4_q1;
        buff_y_out_5_load_4_reg_4118 <= buff_y_out_5_q0;
        buff_y_out_5_load_5_reg_4158 <= buff_y_out_5_q1;
        buff_y_out_6_load_4_reg_4123 <= buff_y_out_6_q0;
        buff_y_out_6_load_5_reg_4163 <= buff_y_out_6_q1;
        buff_y_out_7_load_4_reg_4128 <= buff_y_out_7_q0;
        buff_y_out_7_load_5_reg_4168 <= buff_y_out_7_q1;
        buff_y_out_load_4_reg_4093 <= buff_y_out_q0;
        buff_y_out_load_5_reg_4133 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_load_6_reg_4178 <= buff_y_out_1_q0;
        buff_y_out_1_load_7_reg_4218 <= buff_y_out_1_q1;
        buff_y_out_2_load_6_reg_4183 <= buff_y_out_2_q0;
        buff_y_out_2_load_7_reg_4223 <= buff_y_out_2_q1;
        buff_y_out_3_load_6_reg_4188 <= buff_y_out_3_q0;
        buff_y_out_3_load_7_reg_4228 <= buff_y_out_3_q1;
        buff_y_out_4_load_6_reg_4193 <= buff_y_out_4_q0;
        buff_y_out_4_load_7_reg_4233 <= buff_y_out_4_q1;
        buff_y_out_5_load_6_reg_4198 <= buff_y_out_5_q0;
        buff_y_out_5_load_7_reg_4238 <= buff_y_out_5_q1;
        buff_y_out_6_load_6_reg_4203 <= buff_y_out_6_q0;
        buff_y_out_6_load_7_reg_4243 <= buff_y_out_6_q1;
        buff_y_out_7_load_6_reg_4208 <= buff_y_out_7_q0;
        buff_y_out_7_load_7_reg_4248 <= buff_y_out_7_q1;
        buff_y_out_load_6_reg_4173 <= buff_y_out_q0;
        buff_y_out_load_7_reg_4213 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_reg_3029 <= trunc_ln11_fu_2227_p1;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_fu_2024_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_2188_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
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
    if ((grp_atax_Pipeline_lprd_2_fu_1895_ap_done == 1'b0)) begin
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
    if (((grp_atax_Pipeline_lpwr_1_fu_2188_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
    if (((grp_atax_Pipeline_lpwr_1_fu_2188_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_2_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_3_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_4_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_address1;
    end else begin
        buff_A_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce10;
    end else begin
        buff_A_4_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce11;
    end else begin
        buff_A_4_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce12;
    end else begin
        buff_A_4_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce13;
    end else begin
        buff_A_4_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce14;
    end else begin
        buff_A_4_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce15;
    end else begin
        buff_A_4_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce2;
    end else begin
        buff_A_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce3;
    end else begin
        buff_A_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce4;
    end else begin
        buff_A_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce5;
    end else begin
        buff_A_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce6;
    end else begin
        buff_A_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce7;
    end else begin
        buff_A_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce8;
    end else begin
        buff_A_4_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_4_ce9;
    end else begin
        buff_A_4_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_5_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_address1;
    end else begin
        buff_A_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce10;
    end else begin
        buff_A_5_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce11;
    end else begin
        buff_A_5_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce12;
    end else begin
        buff_A_5_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce13;
    end else begin
        buff_A_5_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce14;
    end else begin
        buff_A_5_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce15;
    end else begin
        buff_A_5_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce2;
    end else begin
        buff_A_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce3;
    end else begin
        buff_A_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce4;
    end else begin
        buff_A_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce5;
    end else begin
        buff_A_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce6;
    end else begin
        buff_A_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce7;
    end else begin
        buff_A_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce8;
    end else begin
        buff_A_5_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_5_ce9;
    end else begin
        buff_A_5_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_6_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_address1;
    end else begin
        buff_A_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce10;
    end else begin
        buff_A_6_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce11;
    end else begin
        buff_A_6_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce12;
    end else begin
        buff_A_6_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce13;
    end else begin
        buff_A_6_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce14;
    end else begin
        buff_A_6_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce15;
    end else begin
        buff_A_6_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce2;
    end else begin
        buff_A_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce3;
    end else begin
        buff_A_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce4;
    end else begin
        buff_A_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce5;
    end else begin
        buff_A_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce6;
    end else begin
        buff_A_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce7;
    end else begin
        buff_A_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce8;
    end else begin
        buff_A_6_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_6_ce9;
    end else begin
        buff_A_6_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_7_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_address1;
    end else begin
        buff_A_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce10;
    end else begin
        buff_A_7_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce11;
    end else begin
        buff_A_7_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce12;
    end else begin
        buff_A_7_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce13;
    end else begin
        buff_A_7_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce14;
    end else begin
        buff_A_7_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce15;
    end else begin
        buff_A_7_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce2;
    end else begin
        buff_A_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce3;
    end else begin
        buff_A_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce4;
    end else begin
        buff_A_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce5;
    end else begin
        buff_A_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce6;
    end else begin
        buff_A_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce7;
    end else begin
        buff_A_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce8;
    end else begin
        buff_A_7_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_7_ce9;
    end else begin
        buff_A_7_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_address1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_fu_2024_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_fu_2024_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce10 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce11 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce12 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce13 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce14 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce15 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce3 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce4 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce5 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce6 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce7 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce8 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce9 = grp_atax_Pipeline_lp1_fu_1924_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1895_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_1_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address0_local = 64'd1;
    end else begin
        buff_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address1_local = 64'd0;
    end else begin
        buff_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_1_ce1_local = 1'b1;
    end else begin
        buff_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_2_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address0_local = 64'd1;
    end else begin
        buff_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address1_local = 64'd0;
    end else begin
        buff_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_2_ce1_local = 1'b1;
    end else begin
        buff_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_3_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address0_local = 64'd1;
    end else begin
        buff_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address1_local = 64'd0;
    end else begin
        buff_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_3_ce1_local = 1'b1;
    end else begin
        buff_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_4_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_4_address0_local = 64'd1;
    end else begin
        buff_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_4_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_4_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_4_address1_local = 64'd0;
    end else begin
        buff_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_4_ce0_local = 1'b1;
    end else begin
        buff_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_4_ce1_local = 1'b1;
    end else begin
        buff_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_4_we0_local = 1'b1;
    end else begin
        buff_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_5_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_5_address0_local = 64'd1;
    end else begin
        buff_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_5_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_5_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_5_address1_local = 64'd0;
    end else begin
        buff_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_5_ce0_local = 1'b1;
    end else begin
        buff_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_5_ce1_local = 1'b1;
    end else begin
        buff_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_5_we0_local = 1'b1;
    end else begin
        buff_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_6_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_6_address0_local = 64'd1;
    end else begin
        buff_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_6_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_6_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_6_address1_local = 64'd0;
    end else begin
        buff_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_6_ce0_local = 1'b1;
    end else begin
        buff_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_6_ce1_local = 1'b1;
    end else begin
        buff_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_6_we0_local = 1'b1;
    end else begin
        buff_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_7_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_7_address0_local = 64'd1;
    end else begin
        buff_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_7_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_7_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_7_address1_local = 64'd0;
    end else begin
        buff_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_7_ce0_local = 1'b1;
    end else begin
        buff_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_7_ce1_local = 1'b1;
    end else begin
        buff_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_7_we0_local = 1'b1;
    end else begin
        buff_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_address0_local = zext_ln5_fu_2242_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address0_local = 64'd1;
    end else begin
        buff_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address1_local = 64'd0;
    end else begin
        buff_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_x_ce1_local = 1'b1;
    end else begin
        buff_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = buff_y_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_7_reg_4018;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_5_reg_3858;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_3618;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_8_reg_4058;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_6_reg_3898;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_4_reg_3658;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address1_local = 64'd0;
    end else begin
        buff_y_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_4971_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3355_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_1739_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_123_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_d0_local = 32'd0;
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_5779_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4163_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_2547_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_931_out;
    end else begin
        buff_y_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = buff_y_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_7_reg_4023;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_5_reg_3863;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_3_reg_3623;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_8_reg_4063;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_6_reg_3903;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_4_reg_3663;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address1_local = 64'd0;
    end else begin
        buff_y_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_5072_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3456_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_1840_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_224_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_d0_local = 32'd0;
    end else begin
        buff_y_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_5880_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4264_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_2648_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_1032_out;
    end else begin
        buff_y_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_2_we1_local = 1'b1;
    end else begin
        buff_y_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = buff_y_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_7_reg_4028;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_5_reg_3868;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_3_reg_3628;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_8_reg_4068;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_6_reg_3908;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_4_reg_3668;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address1_local = 64'd0;
    end else begin
        buff_y_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_5173_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3557_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_1941_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_325_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_d0_local = 32'd0;
    end else begin
        buff_y_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_5981_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4365_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_2749_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_1133_out;
    end else begin
        buff_y_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_3_we1_local = 1'b1;
    end else begin
        buff_y_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_4_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_4_address0;
    end else begin
        buff_y_out_4_address0 = buff_y_out_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_7_reg_4033;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_5_reg_3873;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_3_reg_3633;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_4_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_8_reg_4073;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_6_reg_3913;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_4_reg_3673;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_4_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_4_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_4_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_4_address1_local = 64'd0;
    end else begin
        buff_y_out_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_4_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_4_ce0;
    end else begin
        buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_4_ce1_local = 1'b1;
    end else begin
        buff_y_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_5274_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3658_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_2042_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_426_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_4_d0_local = 32'd0;
    end else begin
        buff_y_out_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_6082_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4466_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_2850_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_1234_out;
    end else begin
        buff_y_out_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_4_we0_local = 1'b1;
    end else begin
        buff_y_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_4_we1_local = 1'b1;
    end else begin
        buff_y_out_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_5_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_5_address0;
    end else begin
        buff_y_out_5_address0 = buff_y_out_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_7_reg_4038;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_5_reg_3878;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_3_reg_3638;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_5_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_8_reg_4078;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_6_reg_3918;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_4_reg_3678;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_5_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_5_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_5_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_5_address1_local = 64'd0;
    end else begin
        buff_y_out_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_5_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_5_ce0;
    end else begin
        buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_5_ce1_local = 1'b1;
    end else begin
        buff_y_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_5375_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3759_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_2143_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_527_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_5_d0_local = 32'd0;
    end else begin
        buff_y_out_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_6183_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4567_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_2951_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_1335_out;
    end else begin
        buff_y_out_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_5_we0_local = 1'b1;
    end else begin
        buff_y_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_5_we1_local = 1'b1;
    end else begin
        buff_y_out_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_6_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_6_address0;
    end else begin
        buff_y_out_6_address0 = buff_y_out_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_7_reg_4043;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_5_reg_3883;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_3_reg_3643;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_6_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_8_reg_4083;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_6_reg_3923;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_4_reg_3683;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_6_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_6_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_6_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_6_address1_local = 64'd0;
    end else begin
        buff_y_out_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_6_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_6_ce0;
    end else begin
        buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_6_ce1_local = 1'b1;
    end else begin
        buff_y_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_5476_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3860_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_2244_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_628_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_6_d0_local = 32'd0;
    end else begin
        buff_y_out_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_6284_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4668_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_3052_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_1436_out;
    end else begin
        buff_y_out_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_6_we0_local = 1'b1;
    end else begin
        buff_y_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_6_we1_local = 1'b1;
    end else begin
        buff_y_out_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_7_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_7_address0;
    end else begin
        buff_y_out_7_address0 = buff_y_out_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_7_reg_4048;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_5_reg_3888;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_3_reg_3648;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_7_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_8_reg_4088;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_6_reg_3928;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_4_reg_3688;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_7_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_7_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_7_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_7_address1_local = 64'd0;
    end else begin
        buff_y_out_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_7_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_7_ce0;
    end else begin
        buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_7_ce1_local = 1'b1;
    end else begin
        buff_y_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_5577_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3961_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_2345_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_729_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_7_d0_local = 32'd0;
    end else begin
        buff_y_out_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_6385_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4769_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_3153_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_1537_out;
    end else begin
        buff_y_out_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_7_we0_local = 1'b1;
    end else begin
        buff_y_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_7_we1_local = 1'b1;
    end else begin
        buff_y_out_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = buff_y_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address0_local = buff_y_out_addr_7_reg_4013;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address0_local = buff_y_out_addr_5_reg_3853;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_3613;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_address0_local = zext_ln5_fu_2242_p1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address1_local = buff_y_out_addr_8_reg_4053;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address1_local = buff_y_out_addr_6_reg_3893;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address1_local = buff_y_out_addr_4_reg_3653;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address1_local = 64'd0;
    end else begin
        buff_y_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_2188_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_4870_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_3254_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_2024_add58_1638_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_2024_add5822_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_d0_local = 32'd0;
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_5678_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_4062_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_2446_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_2024_add58_830_out;
    end else begin
        buff_y_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln11_1_fu_2230_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4253_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4253_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_ce;
    end else begin
        grp_fu_4253_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4253_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4253_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_din0;
    end else begin
        grp_fu_4253_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4253_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4253_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4253_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4253_p_din1;
    end else begin
        grp_fu_4253_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4257_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4257_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_ce;
    end else begin
        grp_fu_4257_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4257_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4257_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_din0;
    end else begin
        grp_fu_4257_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4257_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4257_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4257_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4257_p_din1;
    end else begin
        grp_fu_4257_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4261_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4261_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_ce;
    end else begin
        grp_fu_4261_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4261_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4261_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_din0;
    end else begin
        grp_fu_4261_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4261_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4261_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4261_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4261_p_din1;
    end else begin
        grp_fu_4261_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4265_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4265_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_ce;
    end else begin
        grp_fu_4265_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4265_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4265_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_din0;
    end else begin
        grp_fu_4265_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4265_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4265_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4265_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4265_p_din1;
    end else begin
        grp_fu_4265_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4269_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4269_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_ce;
    end else begin
        grp_fu_4269_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4269_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4269_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_din0;
    end else begin
        grp_fu_4269_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4269_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4269_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4269_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4269_p_din1;
    end else begin
        grp_fu_4269_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4273_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4273_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_ce;
    end else begin
        grp_fu_4273_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4273_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4273_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_din0;
    end else begin
        grp_fu_4273_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4273_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4273_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4273_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4273_p_din1;
    end else begin
        grp_fu_4273_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4277_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4277_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_ce;
    end else begin
        grp_fu_4277_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4277_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4277_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_din0;
    end else begin
        grp_fu_4277_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4277_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4277_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4277_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4277_p_din1;
    end else begin
        grp_fu_4277_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4281_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4281_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_ce;
    end else begin
        grp_fu_4281_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4281_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4281_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_din0;
    end else begin
        grp_fu_4281_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4281_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4281_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4281_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4281_p_din1;
    end else begin
        grp_fu_4281_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4285_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4285_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_ce;
    end else begin
        grp_fu_4285_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4285_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4285_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_din0;
    end else begin
        grp_fu_4285_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4285_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4285_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4285_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4285_p_din1;
    end else begin
        grp_fu_4285_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4289_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4289_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_ce;
    end else begin
        grp_fu_4289_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4289_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4289_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_din0;
    end else begin
        grp_fu_4289_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4289_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4289_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4289_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4289_p_din1;
    end else begin
        grp_fu_4289_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4293_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4293_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_ce;
    end else begin
        grp_fu_4293_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4293_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4293_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_din0;
    end else begin
        grp_fu_4293_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4293_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4293_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4293_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4293_p_din1;
    end else begin
        grp_fu_4293_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4297_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4297_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_ce;
    end else begin
        grp_fu_4297_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4297_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4297_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_din0;
    end else begin
        grp_fu_4297_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4297_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4297_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4297_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4297_p_din1;
    end else begin
        grp_fu_4297_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4301_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4301_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_ce;
    end else begin
        grp_fu_4301_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4301_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4301_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_din0;
    end else begin
        grp_fu_4301_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4301_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4301_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4301_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4301_p_din1;
    end else begin
        grp_fu_4301_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4305_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4305_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_ce;
    end else begin
        grp_fu_4305_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4305_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4305_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_din0;
    end else begin
        grp_fu_4305_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4305_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4305_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4305_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4305_p_din1;
    end else begin
        grp_fu_4305_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4309_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4309_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_ce;
    end else begin
        grp_fu_4309_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4309_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4309_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_din0;
    end else begin
        grp_fu_4309_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4309_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4309_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4309_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4309_p_din1;
    end else begin
        grp_fu_4309_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4313_ce = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4313_ce = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_ce;
    end else begin
        grp_fu_4313_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4313_p0 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4313_p0 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_din0;
    end else begin
        grp_fu_4313_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_4313_p1 = grp_atax_Pipeline_lp3_fu_2024_grp_fu_4313_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4313_p1 = grp_atax_Pipeline_lp1_fu_1924_grp_fu_4313_p_din1;
    end else begin
        grp_fu_4313_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_1_ce1;
    end else begin
        tmp1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_2_ce1;
    end else begin
        tmp1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_3_ce1;
    end else begin
        tmp1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_4_address0;
    end else begin
        tmp1_4_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_4_ce0;
    end else begin
        tmp1_4_ce0 = tmp1_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_4_ce1;
    end else begin
        tmp1_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_4_d0;
    end else begin
        tmp1_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_4_we0;
    end else begin
        tmp1_4_we0 = tmp1_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_5_address0;
    end else begin
        tmp1_5_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_5_ce0;
    end else begin
        tmp1_5_ce0 = tmp1_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_5_ce1;
    end else begin
        tmp1_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_5_d0;
    end else begin
        tmp1_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_5_we0;
    end else begin
        tmp1_5_we0 = tmp1_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_6_address0;
    end else begin
        tmp1_6_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_6_ce0;
    end else begin
        tmp1_6_ce0 = tmp1_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_6_ce1;
    end else begin
        tmp1_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_6_d0;
    end else begin
        tmp1_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_6_we0;
    end else begin
        tmp1_6_we0 = tmp1_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_7_address0;
    end else begin
        tmp1_7_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_7_ce0;
    end else begin
        tmp1_7_ce0 = tmp1_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_7_ce1;
    end else begin
        tmp1_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_7_d0;
    end else begin
        tmp1_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_7_we0;
    end else begin
        tmp1_7_we0 = tmp1_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_2242_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_fu_2024_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_ce1 = grp_atax_Pipeline_lp1_fu_1924_tmp1_ce1;
    end else begin
        tmp1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_fu_1924_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_2230_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if ((1'b1 == ap_CS_fsm_state18)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_2188_y_out_write;
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
            if (((icmp_ln11_fu_2210_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (grp_atax_Pipeline_lprd_2_fu_1895_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1924_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_atax_Pipeline_lp3_fu_2024_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
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
            if (((grp_atax_Pipeline_lpwr_1_fu_2188_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_3_ce0;
assign A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_4_address0;
assign A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_4_ce0;
assign A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_5_address0;
assign A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_5_ce0;
assign A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_6_address0;
assign A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_6_ce0;
assign A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1895_A_7_address0;
assign A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1895_A_7_ce0;
assign add_ln11_fu_2216_p2 = (i_fu_102 + 7'd1);
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln12_fu_2270_p1 = x_q0;
assign buff_y_out_1_addr_3_reg_3618 = 64'd2;
assign buff_y_out_1_addr_4_reg_3658 = 64'd3;
assign buff_y_out_1_addr_5_reg_3858 = 64'd4;
assign buff_y_out_1_addr_6_reg_3898 = 64'd5;
assign buff_y_out_1_addr_7_reg_4018 = 64'd6;
assign buff_y_out_1_addr_8_reg_4058 = 64'd7;
assign buff_y_out_2_addr_3_reg_3623 = 64'd2;
assign buff_y_out_2_addr_4_reg_3663 = 64'd3;
assign buff_y_out_2_addr_5_reg_3863 = 64'd4;
assign buff_y_out_2_addr_6_reg_3903 = 64'd5;
assign buff_y_out_2_addr_7_reg_4023 = 64'd6;
assign buff_y_out_2_addr_8_reg_4063 = 64'd7;
assign buff_y_out_3_addr_3_reg_3628 = 64'd2;
assign buff_y_out_3_addr_4_reg_3668 = 64'd3;
assign buff_y_out_3_addr_5_reg_3868 = 64'd4;
assign buff_y_out_3_addr_6_reg_3908 = 64'd5;
assign buff_y_out_3_addr_7_reg_4028 = 64'd6;
assign buff_y_out_3_addr_8_reg_4068 = 64'd7;
assign buff_y_out_4_addr_3_reg_3633 = 64'd2;
assign buff_y_out_4_addr_4_reg_3673 = 64'd3;
assign buff_y_out_4_addr_5_reg_3873 = 64'd4;
assign buff_y_out_4_addr_6_reg_3913 = 64'd5;
assign buff_y_out_4_addr_7_reg_4033 = 64'd6;
assign buff_y_out_4_addr_8_reg_4073 = 64'd7;
assign buff_y_out_5_addr_3_reg_3638 = 64'd2;
assign buff_y_out_5_addr_4_reg_3678 = 64'd3;
assign buff_y_out_5_addr_5_reg_3878 = 64'd4;
assign buff_y_out_5_addr_6_reg_3918 = 64'd5;
assign buff_y_out_5_addr_7_reg_4038 = 64'd6;
assign buff_y_out_5_addr_8_reg_4078 = 64'd7;
assign buff_y_out_6_addr_3_reg_3643 = 64'd2;
assign buff_y_out_6_addr_4_reg_3683 = 64'd3;
assign buff_y_out_6_addr_5_reg_3883 = 64'd4;
assign buff_y_out_6_addr_6_reg_3923 = 64'd5;
assign buff_y_out_6_addr_7_reg_4043 = 64'd6;
assign buff_y_out_6_addr_8_reg_4083 = 64'd7;
assign buff_y_out_7_addr_3_reg_3648 = 64'd2;
assign buff_y_out_7_addr_4_reg_3688 = 64'd3;
assign buff_y_out_7_addr_5_reg_3888 = 64'd4;
assign buff_y_out_7_addr_6_reg_3928 = 64'd5;
assign buff_y_out_7_addr_7_reg_4048 = 64'd6;
assign buff_y_out_7_addr_8_reg_4088 = 64'd7;
assign buff_y_out_addr_3_reg_3613 = 64'd2;
assign buff_y_out_addr_4_reg_3653 = 64'd3;
assign buff_y_out_addr_5_reg_3853 = 64'd4;
assign buff_y_out_addr_6_reg_3893 = 64'd5;
assign buff_y_out_addr_7_reg_4013 = 64'd6;
assign buff_y_out_addr_8_reg_4053 = 64'd7;
assign grp_atax_Pipeline_lp1_fu_1924_ap_start = grp_atax_Pipeline_lp1_fu_1924_ap_start_reg;
assign grp_atax_Pipeline_lp3_fu_2024_ap_start = grp_atax_Pipeline_lp3_fu_2024_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1895_ap_start = grp_atax_Pipeline_lprd_2_fu_1895_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_2188_ap_start = grp_atax_Pipeline_lpwr_1_fu_2188_ap_start_reg;
assign icmp_ln11_fu_2210_p2 = ((i_fu_102 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_2233_p4 = {{i_fu_102[5:3]}};
assign trunc_ln11_1_fu_2230_p1 = i_fu_102[2:0];
assign trunc_ln11_fu_2227_p1 = i_fu_102[5:0];
assign x_address0 = zext_ln11_fu_2222_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_2188_y_out_din;
assign zext_ln11_fu_2222_p1 = i_fu_102;
assign zext_ln5_fu_2242_p1 = lshr_ln5_fu_2233_p4;
endmodule 