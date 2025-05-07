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
wire   [6:0] add_ln13_fu_2371_p2;
reg   [6:0] add_ln13_reg_3115;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_2383_p1;
reg   [5:0] trunc_ln13_reg_3226;
wire    ap_CS_fsm_state3;
wire   [2:0] buff_s_out_addr_2_reg_3234;
wire    ap_CS_fsm_state6;
wire   [2:0] buff_s_out_1_addr_2_reg_3239;
wire   [2:0] buff_s_out_2_addr_2_reg_3244;
wire   [2:0] buff_s_out_3_addr_2_reg_3249;
wire   [2:0] buff_s_out_4_addr_2_reg_3254;
wire   [2:0] buff_s_out_5_addr_2_reg_3259;
wire   [2:0] buff_s_out_6_addr_2_reg_3264;
wire   [2:0] buff_s_out_7_addr_2_reg_3269;
wire   [2:0] buff_s_out_addr_3_reg_3274;
wire   [2:0] buff_s_out_1_addr_3_reg_3279;
wire   [2:0] buff_s_out_2_addr_3_reg_3284;
wire   [2:0] buff_s_out_3_addr_3_reg_3289;
wire   [2:0] buff_s_out_4_addr_3_reg_3294;
wire   [2:0] buff_s_out_5_addr_3_reg_3299;
wire   [2:0] buff_s_out_6_addr_3_reg_3304;
wire   [2:0] buff_s_out_7_addr_3_reg_3309;
reg   [31:0] buff_s_out_load_reg_3314;
reg   [31:0] buff_s_out_1_load_reg_3319;
reg   [31:0] buff_s_out_2_load_reg_3324;
reg   [31:0] buff_s_out_3_load_reg_3329;
reg   [31:0] buff_s_out_4_load_reg_3334;
reg   [31:0] buff_s_out_5_load_reg_3339;
reg   [31:0] buff_s_out_6_load_reg_3344;
reg   [31:0] buff_s_out_7_load_reg_3349;
reg   [31:0] buff_s_out_load_1_reg_3354;
reg   [31:0] buff_s_out_1_load_1_reg_3359;
reg   [31:0] buff_s_out_2_load_1_reg_3364;
reg   [31:0] buff_s_out_3_load_1_reg_3369;
reg   [31:0] buff_s_out_4_load_1_reg_3374;
reg   [31:0] buff_s_out_5_load_1_reg_3379;
reg   [31:0] buff_s_out_6_load_1_reg_3384;
reg   [31:0] buff_s_out_7_load_1_reg_3389;
wire   [2:0] buff_s_out_addr_4_reg_3394;
wire    ap_CS_fsm_state7;
wire   [2:0] buff_s_out_1_addr_4_reg_3399;
wire   [2:0] buff_s_out_2_addr_4_reg_3404;
wire   [2:0] buff_s_out_3_addr_4_reg_3409;
wire   [2:0] buff_s_out_4_addr_4_reg_3414;
wire   [2:0] buff_s_out_5_addr_4_reg_3419;
wire   [2:0] buff_s_out_6_addr_4_reg_3424;
wire   [2:0] buff_s_out_7_addr_4_reg_3429;
wire   [2:0] buff_s_out_addr_5_reg_3434;
wire   [2:0] buff_s_out_1_addr_5_reg_3439;
wire   [2:0] buff_s_out_2_addr_5_reg_3444;
wire   [2:0] buff_s_out_3_addr_5_reg_3449;
wire   [2:0] buff_s_out_4_addr_5_reg_3454;
wire   [2:0] buff_s_out_5_addr_5_reg_3459;
wire   [2:0] buff_s_out_6_addr_5_reg_3464;
wire   [2:0] buff_s_out_7_addr_5_reg_3469;
reg   [31:0] buff_s_out_load_2_reg_3474;
reg   [31:0] buff_s_out_1_load_2_reg_3479;
reg   [31:0] buff_s_out_2_load_2_reg_3484;
reg   [31:0] buff_s_out_3_load_2_reg_3489;
reg   [31:0] buff_s_out_4_load_2_reg_3494;
reg   [31:0] buff_s_out_5_load_2_reg_3499;
reg   [31:0] buff_s_out_6_load_2_reg_3504;
reg   [31:0] buff_s_out_7_load_2_reg_3509;
reg   [31:0] buff_s_out_load_3_reg_3514;
reg   [31:0] buff_s_out_1_load_3_reg_3519;
reg   [31:0] buff_s_out_2_load_3_reg_3524;
reg   [31:0] buff_s_out_3_load_3_reg_3529;
reg   [31:0] buff_s_out_4_load_3_reg_3534;
reg   [31:0] buff_s_out_5_load_3_reg_3539;
reg   [31:0] buff_s_out_6_load_3_reg_3544;
reg   [31:0] buff_s_out_7_load_3_reg_3549;
wire   [2:0] buff_s_out_addr_6_reg_3554;
wire    ap_CS_fsm_state8;
wire   [2:0] buff_s_out_1_addr_6_reg_3559;
wire   [2:0] buff_s_out_2_addr_6_reg_3564;
wire   [2:0] buff_s_out_3_addr_6_reg_3569;
wire   [2:0] buff_s_out_4_addr_6_reg_3574;
wire   [2:0] buff_s_out_5_addr_6_reg_3579;
wire   [2:0] buff_s_out_6_addr_6_reg_3584;
wire   [2:0] buff_s_out_7_addr_6_reg_3589;
wire   [2:0] buff_s_out_addr_7_reg_3594;
wire   [2:0] buff_s_out_1_addr_7_reg_3599;
wire   [2:0] buff_s_out_2_addr_7_reg_3604;
wire   [2:0] buff_s_out_3_addr_7_reg_3609;
wire   [2:0] buff_s_out_4_addr_7_reg_3614;
wire   [2:0] buff_s_out_5_addr_7_reg_3619;
wire   [2:0] buff_s_out_6_addr_7_reg_3624;
wire   [2:0] buff_s_out_7_addr_7_reg_3629;
reg   [31:0] buff_s_out_load_4_reg_3634;
reg   [31:0] buff_s_out_1_load_4_reg_3639;
reg   [31:0] buff_s_out_2_load_4_reg_3644;
reg   [31:0] buff_s_out_3_load_4_reg_3649;
reg   [31:0] buff_s_out_4_load_4_reg_3654;
reg   [31:0] buff_s_out_5_load_4_reg_3659;
reg   [31:0] buff_s_out_6_load_4_reg_3664;
reg   [31:0] buff_s_out_7_load_4_reg_3669;
reg   [31:0] buff_s_out_load_5_reg_3674;
reg   [31:0] buff_s_out_1_load_5_reg_3679;
reg   [31:0] buff_s_out_2_load_5_reg_3684;
reg   [31:0] buff_s_out_3_load_5_reg_3689;
reg   [31:0] buff_s_out_4_load_5_reg_3694;
reg   [31:0] buff_s_out_5_load_5_reg_3699;
reg   [31:0] buff_s_out_6_load_5_reg_3704;
reg   [31:0] buff_s_out_7_load_5_reg_3709;
reg   [31:0] buff_s_out_load_6_reg_3714;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_s_out_1_load_6_reg_3719;
reg   [31:0] buff_s_out_2_load_6_reg_3724;
reg   [31:0] buff_s_out_3_load_6_reg_3729;
reg   [31:0] buff_s_out_4_load_6_reg_3734;
reg   [31:0] buff_s_out_5_load_6_reg_3739;
reg   [31:0] buff_s_out_6_load_6_reg_3744;
reg   [31:0] buff_s_out_7_load_6_reg_3749;
reg   [31:0] buff_s_out_load_7_reg_3754;
reg   [31:0] buff_s_out_1_load_7_reg_3759;
reg   [31:0] buff_s_out_2_load_7_reg_3764;
reg   [31:0] buff_s_out_3_load_7_reg_3769;
reg   [31:0] buff_s_out_4_load_7_reg_3774;
reg   [31:0] buff_s_out_5_load_7_reg_3779;
reg   [31:0] buff_s_out_6_load_7_reg_3784;
reg   [31:0] buff_s_out_7_load_7_reg_3789;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_p_load_reg_3954;
reg   [31:0] buff_p_load_1_reg_3959;
reg   [31:0] buff_p_1_load_reg_3964;
reg   [31:0] buff_p_1_load_1_reg_3969;
reg   [31:0] buff_p_2_load_reg_3974;
reg   [31:0] buff_p_2_load_1_reg_3979;
reg   [31:0] buff_p_3_load_reg_3984;
reg   [31:0] buff_p_3_load_1_reg_3989;
reg   [31:0] buff_p_4_load_reg_3994;
reg   [31:0] buff_p_4_load_1_reg_3999;
reg   [31:0] buff_p_5_load_reg_4004;
reg   [31:0] buff_p_5_load_1_reg_4009;
reg   [31:0] buff_p_6_load_reg_4014;
reg   [31:0] buff_p_6_load_1_reg_4019;
reg   [31:0] buff_p_7_load_reg_4024;
reg   [31:0] buff_p_7_load_1_reg_4029;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_p_load_2_reg_4114;
reg   [31:0] buff_p_load_3_reg_4119;
reg   [31:0] buff_p_1_load_2_reg_4124;
reg   [31:0] buff_p_1_load_3_reg_4129;
reg   [31:0] buff_p_2_load_2_reg_4134;
reg   [31:0] buff_p_2_load_3_reg_4139;
reg   [31:0] buff_p_3_load_2_reg_4144;
reg   [31:0] buff_p_3_load_3_reg_4149;
reg   [31:0] buff_p_4_load_2_reg_4154;
reg   [31:0] buff_p_4_load_3_reg_4159;
reg   [31:0] buff_p_5_load_2_reg_4164;
reg   [31:0] buff_p_5_load_3_reg_4169;
reg   [31:0] buff_p_6_load_2_reg_4174;
reg   [31:0] buff_p_6_load_3_reg_4179;
reg   [31:0] buff_p_7_load_2_reg_4184;
reg   [31:0] buff_p_7_load_3_reg_4189;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_p_load_4_reg_4274;
reg   [31:0] buff_p_load_5_reg_4279;
reg   [31:0] buff_p_1_load_4_reg_4284;
reg   [31:0] buff_p_1_load_5_reg_4289;
reg   [31:0] buff_p_2_load_4_reg_4294;
reg   [31:0] buff_p_2_load_5_reg_4299;
reg   [31:0] buff_p_3_load_4_reg_4304;
reg   [31:0] buff_p_3_load_5_reg_4309;
reg   [31:0] buff_p_4_load_4_reg_4314;
reg   [31:0] buff_p_4_load_5_reg_4319;
reg   [31:0] buff_p_5_load_4_reg_4324;
reg   [31:0] buff_p_5_load_5_reg_4329;
reg   [31:0] buff_p_6_load_4_reg_4334;
reg   [31:0] buff_p_6_load_5_reg_4339;
reg   [31:0] buff_p_7_load_4_reg_4344;
reg   [31:0] buff_p_7_load_5_reg_4349;
reg   [31:0] buff_p_load_6_reg_4354;
wire    ap_CS_fsm_state13;
reg   [31:0] buff_p_load_7_reg_4359;
reg   [31:0] buff_p_1_load_6_reg_4364;
reg   [31:0] buff_p_1_load_7_reg_4369;
reg   [31:0] buff_p_2_load_6_reg_4374;
reg   [31:0] buff_p_2_load_7_reg_4379;
reg   [31:0] buff_p_3_load_6_reg_4384;
reg   [31:0] buff_p_3_load_7_reg_4389;
reg   [31:0] buff_p_4_load_6_reg_4394;
reg   [31:0] buff_p_4_load_7_reg_4399;
reg   [31:0] buff_p_5_load_6_reg_4404;
reg   [31:0] buff_p_5_load_7_reg_4409;
reg   [31:0] buff_p_6_load_6_reg_4414;
reg   [31:0] buff_p_6_load_7_reg_4419;
reg   [31:0] buff_p_7_load_6_reg_4424;
reg   [31:0] buff_p_7_load_7_reg_4429;
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
wire   [31:0] buff_p_q0;
wire   [31:0] buff_p_q1;
wire   [31:0] buff_p_1_q0;
wire   [31:0] buff_p_1_q1;
wire   [31:0] buff_p_2_q0;
wire   [31:0] buff_p_2_q1;
wire   [31:0] buff_p_3_q0;
wire   [31:0] buff_p_3_q1;
wire   [31:0] buff_p_4_q0;
wire   [31:0] buff_p_4_q1;
wire   [31:0] buff_p_5_q0;
wire   [31:0] buff_p_5_q1;
wire   [31:0] buff_p_6_q0;
wire   [31:0] buff_p_6_q1;
wire   [31:0] buff_p_7_q0;
wire   [31:0] buff_p_7_q1;
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
reg    buff_q_out_ce1;
wire   [31:0] buff_q_out_q1;
reg   [2:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg    buff_q_out_1_ce1;
wire   [31:0] buff_q_out_1_q1;
reg   [2:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg    buff_q_out_2_ce1;
wire   [31:0] buff_q_out_2_q1;
reg   [2:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
reg    buff_q_out_3_ce1;
wire   [31:0] buff_q_out_3_q1;
reg   [2:0] buff_q_out_4_address0;
reg    buff_q_out_4_ce0;
reg    buff_q_out_4_we0;
reg   [31:0] buff_q_out_4_d0;
wire   [31:0] buff_q_out_4_q0;
reg    buff_q_out_4_ce1;
wire   [31:0] buff_q_out_4_q1;
reg   [2:0] buff_q_out_5_address0;
reg    buff_q_out_5_ce0;
reg    buff_q_out_5_we0;
reg   [31:0] buff_q_out_5_d0;
wire   [31:0] buff_q_out_5_q0;
reg    buff_q_out_5_ce1;
wire   [31:0] buff_q_out_5_q1;
reg   [2:0] buff_q_out_6_address0;
reg    buff_q_out_6_ce0;
reg    buff_q_out_6_we0;
reg   [31:0] buff_q_out_6_d0;
wire   [31:0] buff_q_out_6_q0;
reg    buff_q_out_6_ce1;
wire   [31:0] buff_q_out_6_q1;
reg   [2:0] buff_q_out_7_address0;
reg    buff_q_out_7_ce0;
reg    buff_q_out_7_we0;
reg   [31:0] buff_q_out_7_d0;
wire   [31:0] buff_q_out_7_q0;
reg    buff_q_out_7_ce1;
wire   [31:0] buff_q_out_7_q1;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_0_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_d0;
wire    grp_bicg_Pipeline_lp1_fu_2069_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_2069_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_2069_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_2069_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_2069_buff_r_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_2069_buff_r_7_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_6387_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_6387_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_6286_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_6286_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_6185_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_6185_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_6084_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_6084_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5983_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5983_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5882_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5882_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5781_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5781_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5680_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5680_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5579_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5579_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5478_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5478_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5377_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5377_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5276_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5276_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5175_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5175_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_5074_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_5074_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4973_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4973_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4872_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4872_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4771_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4771_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4670_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4670_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4569_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4569_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4468_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4468_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4367_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4367_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4266_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4266_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4165_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4165_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_4064_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_4064_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3963_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3963_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3862_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3862_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3761_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3761_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3660_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3660_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3559_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3559_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3458_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3458_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3357_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3357_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3256_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3256_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3155_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3155_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_3054_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_3054_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2953_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2953_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2852_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2852_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2751_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2751_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2650_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2650_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2549_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2549_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2448_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2448_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2347_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2347_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2246_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2246_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2145_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2145_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_2044_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_2044_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1943_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1943_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1842_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1842_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1741_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1741_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1640_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1640_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1539_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1539_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1438_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1438_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1337_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1337_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1236_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1236_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1135_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1135_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_1034_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_1034_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_933_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_933_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_832_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_832_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_731_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_731_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_630_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_630_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_529_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_529_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_428_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_428_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_327_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_327_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_226_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_226_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_1_125_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_1_125_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_add_124_out;
wire    grp_bicg_Pipeline_lp1_fu_2069_add_124_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_ce;
wire    grp_bicg_Pipeline_lp3_fu_2233_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_2233_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_2233_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_2233_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address2;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address3;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address4;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address5;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address6;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address7;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce7;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_ce1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_2333_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_2333_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_2333_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_2333_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_2333_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_2333_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_2333_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_2333_q_out_write;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_7_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_2040_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_bicg_Pipeline_lp1_fu_2069_ap_start_reg;
reg    grp_bicg_Pipeline_lp3_fu_2233_ap_start_reg;
wire    ap_CS_fsm_state14;
reg    grp_bicg_Pipeline_lpwr_fu_2333_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln13_fu_2377_p1;
wire   [0:0] icmp_ln13_fu_2365_p2;
wire   [63:0] zext_ln5_fu_2398_p1;
reg   [6:0] i_fu_106;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [2:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [2:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
wire   [2:0] trunc_ln13_1_fu_2386_p1;
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
wire   [31:0] bitcast_ln14_fu_2434_p1;
reg    buff_p_6_ce0_local;
reg   [2:0] buff_p_6_address0_local;
reg    buff_p_6_ce1_local;
reg   [2:0] buff_p_6_address1_local;
reg    buff_r_6_we0_local;
wire   [31:0] bitcast_ln15_fu_2446_p1;
reg    buff_r_6_ce0_local;
reg    buff_q_out_6_we0_local;
reg    buff_q_out_6_ce0_local;
reg    buff_p_5_we0_local;
reg    buff_p_5_ce0_local;
reg   [2:0] buff_p_5_address0_local;
reg    buff_p_5_ce1_local;
reg   [2:0] buff_p_5_address1_local;
reg    buff_r_5_we0_local;
reg    buff_r_5_ce0_local;
reg    buff_q_out_5_we0_local;
reg    buff_q_out_5_ce0_local;
reg    buff_p_4_we0_local;
reg    buff_p_4_ce0_local;
reg   [2:0] buff_p_4_address0_local;
reg    buff_p_4_ce1_local;
reg   [2:0] buff_p_4_address1_local;
reg    buff_r_4_we0_local;
reg    buff_r_4_ce0_local;
reg    buff_q_out_4_we0_local;
reg    buff_q_out_4_ce0_local;
reg    buff_p_3_we0_local;
reg    buff_p_3_ce0_local;
reg   [2:0] buff_p_3_address0_local;
reg    buff_p_3_ce1_local;
reg   [2:0] buff_p_3_address1_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
reg    buff_p_2_we0_local;
reg    buff_p_2_ce0_local;
reg   [2:0] buff_p_2_address0_local;
reg    buff_p_2_ce1_local;
reg   [2:0] buff_p_2_address1_local;
reg    buff_r_2_we0_local;
reg    buff_r_2_ce0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg   [2:0] buff_p_1_address0_local;
reg    buff_p_1_ce1_local;
reg   [2:0] buff_p_1_address1_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_p_we0_local;
reg    buff_p_ce0_local;
reg   [2:0] buff_p_address0_local;
reg    buff_p_ce1_local;
reg   [2:0] buff_p_address1_local;
reg    buff_r_we0_local;
reg    buff_r_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_p_7_we0_local;
reg    buff_p_7_ce0_local;
reg   [2:0] buff_p_7_address0_local;
reg    buff_p_7_ce1_local;
reg   [2:0] buff_p_7_address1_local;
reg    buff_r_7_we0_local;
reg    buff_r_7_ce0_local;
reg    buff_q_out_7_we0_local;
reg    buff_q_out_7_ce0_local;
wire   [2:0] lshr_ln5_fu_2389_p4;
wire   [31:0] grp_fu_4434_p2;
reg   [31:0] grp_fu_4434_p0;
reg   [31:0] grp_fu_4434_p1;
reg    grp_fu_4434_ce;
wire   [31:0] grp_fu_4438_p2;
reg   [31:0] grp_fu_4438_p0;
reg   [31:0] grp_fu_4438_p1;
reg    grp_fu_4438_ce;
wire   [31:0] grp_fu_4442_p2;
reg   [31:0] grp_fu_4442_p0;
reg   [31:0] grp_fu_4442_p1;
reg    grp_fu_4442_ce;
wire   [31:0] grp_fu_4446_p2;
reg   [31:0] grp_fu_4446_p0;
reg   [31:0] grp_fu_4446_p1;
reg    grp_fu_4446_ce;
wire   [31:0] grp_fu_4450_p2;
reg   [31:0] grp_fu_4450_p0;
reg   [31:0] grp_fu_4450_p1;
reg    grp_fu_4450_ce;
wire   [31:0] grp_fu_4454_p2;
reg   [31:0] grp_fu_4454_p0;
reg   [31:0] grp_fu_4454_p1;
reg    grp_fu_4454_ce;
wire   [31:0] grp_fu_4458_p2;
reg   [31:0] grp_fu_4458_p0;
reg   [31:0] grp_fu_4458_p1;
reg    grp_fu_4458_ce;
wire   [31:0] grp_fu_4462_p2;
reg   [31:0] grp_fu_4462_p0;
reg   [31:0] grp_fu_4462_p1;
reg    grp_fu_4462_ce;
wire   [31:0] grp_fu_4466_p2;
reg   [31:0] grp_fu_4466_p0;
reg   [31:0] grp_fu_4466_p1;
reg    grp_fu_4466_ce;
wire   [31:0] grp_fu_4470_p2;
reg   [31:0] grp_fu_4470_p0;
reg   [31:0] grp_fu_4470_p1;
reg    grp_fu_4470_ce;
wire   [31:0] grp_fu_4474_p2;
reg   [31:0] grp_fu_4474_p0;
reg   [31:0] grp_fu_4474_p1;
reg    grp_fu_4474_ce;
wire   [31:0] grp_fu_4478_p2;
reg   [31:0] grp_fu_4478_p0;
reg   [31:0] grp_fu_4478_p1;
reg    grp_fu_4478_ce;
wire   [31:0] grp_fu_4482_p2;
reg   [31:0] grp_fu_4482_p0;
reg   [31:0] grp_fu_4482_p1;
reg    grp_fu_4482_ce;
wire   [31:0] grp_fu_4486_p2;
reg   [31:0] grp_fu_4486_p0;
reg   [31:0] grp_fu_4486_p1;
reg    grp_fu_4486_ce;
wire   [31:0] grp_fu_4490_p2;
reg   [31:0] grp_fu_4490_p0;
reg   [31:0] grp_fu_4490_p1;
reg    grp_fu_4490_ce;
wire   [31:0] grp_fu_4494_p2;
reg   [31:0] grp_fu_4494_p0;
reg   [31:0] grp_fu_4494_p1;
reg    grp_fu_4494_ce;
wire   [31:0] grp_fu_4498_p2;
reg   [31:0] grp_fu_4498_p0;
reg   [31:0] grp_fu_4498_p1;
reg    grp_fu_4498_ce;
wire   [31:0] grp_fu_4502_p2;
reg   [31:0] grp_fu_4502_p0;
reg   [31:0] grp_fu_4502_p1;
reg    grp_fu_4502_ce;
wire   [31:0] grp_fu_4506_p2;
reg   [31:0] grp_fu_4506_p0;
reg   [31:0] grp_fu_4506_p1;
reg    grp_fu_4506_ce;
wire   [31:0] grp_fu_4510_p2;
reg   [31:0] grp_fu_4510_p0;
reg   [31:0] grp_fu_4510_p1;
reg    grp_fu_4510_ce;
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
#0 grp_bicg_Pipeline_lprd_2_fu_2040_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_2069_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_2233_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_2333_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_d0),.q0(buff_A_4_q0),.address1(buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address2),.ce2(buff_A_4_ce2),.q2(buff_A_4_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address3),.ce3(buff_A_4_ce3),.q3(buff_A_4_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address4),.ce4(buff_A_4_ce4),.q4(buff_A_4_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address5),.ce5(buff_A_4_ce5),.q5(buff_A_4_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address6),.ce6(buff_A_4_ce6),.q6(buff_A_4_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address7),.ce7(buff_A_4_ce7),.q7(buff_A_4_q7));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_d0),.q0(buff_A_5_q0),.address1(buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address2),.ce2(buff_A_5_ce2),.q2(buff_A_5_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address3),.ce3(buff_A_5_ce3),.q3(buff_A_5_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address4),.ce4(buff_A_5_ce4),.q4(buff_A_5_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address5),.ce5(buff_A_5_ce5),.q5(buff_A_5_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address6),.ce6(buff_A_5_ce6),.q6(buff_A_5_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address7),.ce7(buff_A_5_ce7),.q7(buff_A_5_q7));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_d0),.q0(buff_A_6_q0),.address1(buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address2),.ce2(buff_A_6_ce2),.q2(buff_A_6_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address3),.ce3(buff_A_6_ce3),.q3(buff_A_6_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address4),.ce4(buff_A_6_ce4),.q4(buff_A_6_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address5),.ce5(buff_A_6_ce5),.q5(buff_A_6_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address6),.ce6(buff_A_6_ce6),.q6(buff_A_6_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address7),.ce7(buff_A_6_ce7),.q7(buff_A_6_q7));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_d0),.q0(buff_A_7_q0),.address1(buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1),.address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address2),.ce2(buff_A_7_ce2),.q2(buff_A_7_q2),.address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address3),.ce3(buff_A_7_ce3),.q3(buff_A_7_q3),.address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address4),.ce4(buff_A_7_ce4),.q4(buff_A_7_q4),.address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address5),.ce5(buff_A_7_ce5),.q5(buff_A_7_q5),.address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address6),.ce6(buff_A_7_ce6),.q6(buff_A_7_q6),.address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address7),.ce7(buff_A_7_ce7),.q7(buff_A_7_q7));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0_local),.ce0(buff_p_2_ce0_local),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_2_q0),.address1(buff_p_2_address1_local),.ce1(buff_p_2_ce1_local),.q1(buff_p_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0_local),.ce0(buff_p_3_ce0_local),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_3_q0),.address1(buff_p_3_address1_local),.ce1(buff_p_3_ce1_local),.q1(buff_p_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_4_address0_local),.ce0(buff_p_4_ce0_local),.we0(buff_p_4_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_4_q0),.address1(buff_p_4_address1_local),.ce1(buff_p_4_ce1_local),.q1(buff_p_4_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_5_address0_local),.ce0(buff_p_5_ce0_local),.we0(buff_p_5_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_5_q0),.address1(buff_p_5_address1_local),.ce1(buff_p_5_ce1_local),.q1(buff_p_5_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_6_address0_local),.ce0(buff_p_6_ce0_local),.we0(buff_p_6_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_6_q0),.address1(buff_p_6_address1_local),.ce1(buff_p_6_ce1_local),.q1(buff_p_6_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_7_address0_local),.ce0(buff_p_7_ce0_local),.we0(buff_p_7_we0_local),.d0(bitcast_ln14_fu_2434_p1),.q0(buff_p_7_q0),.address1(buff_p_7_address1_local),.ce1(buff_p_7_ce1_local),.q1(buff_p_7_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_3_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_4_address0),.ce0(buff_r_4_ce0),.we0(buff_r_4_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_4_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_5_address0),.ce0(buff_r_5_ce0),.we0(buff_r_5_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_5_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_6_address0),.ce0(buff_r_6_ce0),.we0(buff_r_6_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_6_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_7_address0),.ce0(buff_r_7_ce0),.we0(buff_r_7_we0_local),.d0(bitcast_ln15_fu_2446_p1),.q0(buff_r_7_q0));
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
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_address1),.ce1(buff_q_out_ce1),.q1(buff_q_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.q1(buff_q_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_address1),.ce1(buff_q_out_2_ce1),.q1(buff_q_out_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_address1),.ce1(buff_q_out_3_ce1),.q1(buff_q_out_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_4_address0),.ce0(buff_q_out_4_ce0),.we0(buff_q_out_4_we0),.d0(buff_q_out_4_d0),.q0(buff_q_out_4_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_address1),.ce1(buff_q_out_4_ce1),.q1(buff_q_out_4_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_5_address0),.ce0(buff_q_out_5_ce0),.we0(buff_q_out_5_we0),.d0(buff_q_out_5_d0),.q0(buff_q_out_5_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_address1),.ce1(buff_q_out_5_ce1),.q1(buff_q_out_5_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_6_address0),.ce0(buff_q_out_6_ce0),.we0(buff_q_out_6_we0),.d0(buff_q_out_6_d0),.q0(buff_q_out_6_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_address1),.ce1(buff_q_out_6_ce1),.q1(buff_q_out_6_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_7_address0),.ce0(buff_q_out_7_ce0),.we0(buff_q_out_7_we0),.d0(buff_q_out_7_d0),.q0(buff_q_out_7_q0),.address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_address1),.ce1(buff_q_out_7_ce1),.q1(buff_q_out_7_q1));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_2040(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_2040_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_2040_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_2040_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_2040_ap_ready),.i(trunc_ln13_reg_3226),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_4_address0),.A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_5_address0),.A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_6_address0),.A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_bicg_Pipeline_lprd_2_fu_2040_A_7_address0),.A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_d0));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_2069(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_2069_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_2069_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_2069_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_2069_ap_ready),.buff_s_out_7_load_7(buff_s_out_7_load_7_reg_3789),.buff_s_out_6_load_7(buff_s_out_6_load_7_reg_3784),.buff_s_out_5_load_7(buff_s_out_5_load_7_reg_3779),.buff_s_out_4_load_7(buff_s_out_4_load_7_reg_3774),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_3769),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_3764),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_3759),.buff_s_out_load_7(buff_s_out_load_7_reg_3754),.buff_s_out_7_load_6(buff_s_out_7_load_6_reg_3749),.buff_s_out_6_load_6(buff_s_out_6_load_6_reg_3744),.buff_s_out_5_load_6(buff_s_out_5_load_6_reg_3739),.buff_s_out_4_load_6(buff_s_out_4_load_6_reg_3734),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_3729),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_3724),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_3719),.buff_s_out_load_6(buff_s_out_load_6_reg_3714),.buff_s_out_7_load_5(buff_s_out_7_load_5_reg_3709),.buff_s_out_6_load_5(buff_s_out_6_load_5_reg_3704),.buff_s_out_5_load_5(buff_s_out_5_load_5_reg_3699),.buff_s_out_4_load_5(buff_s_out_4_load_5_reg_3694),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_3689),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_3684),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_3679),.buff_s_out_load_5(buff_s_out_load_5_reg_3674),.buff_s_out_7_load_4(buff_s_out_7_load_4_reg_3669),.buff_s_out_6_load_4(buff_s_out_6_load_4_reg_3664),.buff_s_out_5_load_4(buff_s_out_5_load_4_reg_3659),.buff_s_out_4_load_4(buff_s_out_4_load_4_reg_3654),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_3649),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_3644),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_3639),.buff_s_out_load_4(buff_s_out_load_4_reg_3634),.buff_s_out_7_load_3(buff_s_out_7_load_3_reg_3549),.buff_s_out_6_load_3(buff_s_out_6_load_3_reg_3544),.buff_s_out_5_load_3(buff_s_out_5_load_3_reg_3539),.buff_s_out_4_load_3(buff_s_out_4_load_3_reg_3534),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_3529),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_3524),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_3519),.buff_s_out_load_3(buff_s_out_load_3_reg_3514),.buff_s_out_7_load_2(buff_s_out_7_load_2_reg_3509),.buff_s_out_6_load_2(buff_s_out_6_load_2_reg_3504),.buff_s_out_5_load_2(buff_s_out_5_load_2_reg_3499),.buff_s_out_4_load_2(buff_s_out_4_load_2_reg_3494),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_3489),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_3484),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_3479),.buff_s_out_load_2(buff_s_out_load_2_reg_3474),.buff_s_out_7_load_1(buff_s_out_7_load_1_reg_3389),.buff_s_out_6_load_1(buff_s_out_6_load_1_reg_3384),.buff_s_out_5_load_1(buff_s_out_5_load_1_reg_3379),.buff_s_out_4_load_1(buff_s_out_4_load_1_reg_3374),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_3369),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_3364),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_3359),.buff_s_out_load_1(buff_s_out_load_1_reg_3354),.buff_s_out_7_load(buff_s_out_7_load_reg_3349),.buff_s_out_6_load(buff_s_out_6_load_reg_3344),.buff_s_out_5_load(buff_s_out_5_load_reg_3339),.buff_s_out_4_load(buff_s_out_4_load_reg_3334),.buff_s_out_3_load(buff_s_out_3_load_reg_3329),.buff_s_out_2_load(buff_s_out_2_load_reg_3324),.buff_s_out_1_load(buff_s_out_1_load_reg_3319),.buff_s_out_load(buff_s_out_load_reg_3314),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_4_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_4_address0),.buff_r_4_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_4_ce0),.buff_r_4_q0(buff_r_4_q0),.buff_r_6_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_6_address0),.buff_r_6_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_6_ce0),.buff_r_6_q0(buff_r_6_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_r_5_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_5_address0),.buff_r_5_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_5_ce0),.buff_r_5_q0(buff_r_5_q0),.buff_r_7_address0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_7_address0),.buff_r_7_ce0(grp_bicg_Pipeline_lp1_fu_2069_buff_r_7_ce0),.buff_r_7_q0(buff_r_7_q0),.add_1_6387_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_6387_out),.add_1_6387_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_6387_out_ap_vld),.add_1_6286_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_6286_out),.add_1_6286_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_6286_out_ap_vld),.add_1_6185_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_6185_out),.add_1_6185_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_6185_out_ap_vld),.add_1_6084_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_6084_out),.add_1_6084_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_6084_out_ap_vld),.add_1_5983_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5983_out),.add_1_5983_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5983_out_ap_vld),.add_1_5882_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5882_out),.add_1_5882_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5882_out_ap_vld),.add_1_5781_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5781_out),.add_1_5781_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5781_out_ap_vld),.add_1_5680_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5680_out),.add_1_5680_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5680_out_ap_vld),.add_1_5579_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5579_out),.add_1_5579_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5579_out_ap_vld),.add_1_5478_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5478_out),.add_1_5478_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5478_out_ap_vld),.add_1_5377_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5377_out),.add_1_5377_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5377_out_ap_vld),.add_1_5276_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5276_out),.add_1_5276_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5276_out_ap_vld),.add_1_5175_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5175_out),.add_1_5175_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5175_out_ap_vld),.add_1_5074_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_5074_out),.add_1_5074_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_5074_out_ap_vld),.add_1_4973_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4973_out),.add_1_4973_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4973_out_ap_vld),.add_1_4872_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4872_out),.add_1_4872_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4872_out_ap_vld),.add_1_4771_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4771_out),.add_1_4771_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4771_out_ap_vld),.add_1_4670_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4670_out),.add_1_4670_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4670_out_ap_vld),.add_1_4569_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4569_out),.add_1_4569_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4569_out_ap_vld),.add_1_4468_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4468_out),.add_1_4468_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4468_out_ap_vld),.add_1_4367_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4367_out),.add_1_4367_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4367_out_ap_vld),.add_1_4266_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4266_out),.add_1_4266_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4266_out_ap_vld),.add_1_4165_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4165_out),.add_1_4165_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4165_out_ap_vld),.add_1_4064_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_4064_out),.add_1_4064_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_4064_out_ap_vld),.add_1_3963_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3963_out),.add_1_3963_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3963_out_ap_vld),.add_1_3862_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3862_out),.add_1_3862_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3862_out_ap_vld),.add_1_3761_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3761_out),.add_1_3761_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3761_out_ap_vld),.add_1_3660_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3660_out),.add_1_3660_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3660_out_ap_vld),.add_1_3559_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3559_out),.add_1_3559_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3559_out_ap_vld),.add_1_3458_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3458_out),.add_1_3458_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3458_out_ap_vld),.add_1_3357_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3357_out),.add_1_3357_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3357_out_ap_vld),.add_1_3256_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3256_out),.add_1_3256_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3256_out_ap_vld),.add_1_3155_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3155_out),.add_1_3155_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3155_out_ap_vld),.add_1_3054_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_3054_out),.add_1_3054_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_3054_out_ap_vld),.add_1_2953_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2953_out),.add_1_2953_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2953_out_ap_vld),.add_1_2852_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2852_out),.add_1_2852_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2852_out_ap_vld),.add_1_2751_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2751_out),.add_1_2751_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2751_out_ap_vld),.add_1_2650_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2650_out),.add_1_2650_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2650_out_ap_vld),.add_1_2549_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2549_out),.add_1_2549_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2549_out_ap_vld),.add_1_2448_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2448_out),.add_1_2448_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2448_out_ap_vld),.add_1_2347_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2347_out),.add_1_2347_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2347_out_ap_vld),.add_1_2246_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2246_out),.add_1_2246_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2246_out_ap_vld),.add_1_2145_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2145_out),.add_1_2145_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2145_out_ap_vld),.add_1_2044_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_2044_out),.add_1_2044_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_2044_out_ap_vld),.add_1_1943_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1943_out),.add_1_1943_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1943_out_ap_vld),.add_1_1842_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1842_out),.add_1_1842_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1842_out_ap_vld),.add_1_1741_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1741_out),.add_1_1741_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1741_out_ap_vld),.add_1_1640_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1640_out),.add_1_1640_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1640_out_ap_vld),.add_1_1539_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1539_out),.add_1_1539_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1539_out_ap_vld),.add_1_1438_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1438_out),.add_1_1438_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1438_out_ap_vld),.add_1_1337_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1337_out),.add_1_1337_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1337_out_ap_vld),.add_1_1236_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1236_out),.add_1_1236_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1236_out_ap_vld),.add_1_1135_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1135_out),.add_1_1135_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1135_out_ap_vld),.add_1_1034_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_1034_out),.add_1_1034_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_1034_out_ap_vld),.add_1_933_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_933_out),.add_1_933_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_933_out_ap_vld),.add_1_832_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_832_out),.add_1_832_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_832_out_ap_vld),.add_1_731_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_731_out),.add_1_731_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_731_out_ap_vld),.add_1_630_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_630_out),.add_1_630_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_630_out_ap_vld),.add_1_529_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_529_out),.add_1_529_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_529_out_ap_vld),.add_1_428_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_428_out),.add_1_428_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_428_out_ap_vld),.add_1_327_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_327_out),.add_1_327_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_327_out_ap_vld),.add_1_226_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_226_out),.add_1_226_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_226_out_ap_vld),.add_1_125_out(grp_bicg_Pipeline_lp1_fu_2069_add_1_125_out),.add_1_125_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_1_125_out_ap_vld),.add_124_out(grp_bicg_Pipeline_lp1_fu_2069_add_124_out),.add_124_out_ap_vld(grp_bicg_Pipeline_lp1_fu_2069_add_124_out_ap_vld),.grp_fu_4434_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_din0),.grp_fu_4434_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_din1),.grp_fu_4434_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_opcode),.grp_fu_4434_p_dout0(grp_fu_4434_p2),.grp_fu_4434_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_ce),.grp_fu_4438_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_din0),.grp_fu_4438_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_din1),.grp_fu_4438_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_opcode),.grp_fu_4438_p_dout0(grp_fu_4438_p2),.grp_fu_4438_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_ce),.grp_fu_4442_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_din0),.grp_fu_4442_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_din1),.grp_fu_4442_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_opcode),.grp_fu_4442_p_dout0(grp_fu_4442_p2),.grp_fu_4442_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_ce),.grp_fu_4446_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_din0),.grp_fu_4446_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_din1),.grp_fu_4446_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_opcode),.grp_fu_4446_p_dout0(grp_fu_4446_p2),.grp_fu_4446_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_ce),.grp_fu_4450_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_din0),.grp_fu_4450_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_din1),.grp_fu_4450_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_opcode),.grp_fu_4450_p_dout0(grp_fu_4450_p2),.grp_fu_4450_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_ce),.grp_fu_4454_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_din0),.grp_fu_4454_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_din1),.grp_fu_4454_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_opcode),.grp_fu_4454_p_dout0(grp_fu_4454_p2),.grp_fu_4454_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_ce),.grp_fu_4458_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_din0),.grp_fu_4458_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_din1),.grp_fu_4458_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_opcode),.grp_fu_4458_p_dout0(grp_fu_4458_p2),.grp_fu_4458_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_ce),.grp_fu_4462_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_din0),.grp_fu_4462_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_din1),.grp_fu_4462_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_opcode),.grp_fu_4462_p_dout0(grp_fu_4462_p2),.grp_fu_4462_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_ce),.grp_fu_4466_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_din0),.grp_fu_4466_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_din1),.grp_fu_4466_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_opcode),.grp_fu_4466_p_dout0(grp_fu_4466_p2),.grp_fu_4466_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_ce),.grp_fu_4470_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_din0),.grp_fu_4470_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_din1),.grp_fu_4470_p_opcode(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_opcode),.grp_fu_4470_p_dout0(grp_fu_4470_p2),.grp_fu_4470_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_ce),.grp_fu_4474_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_din0),.grp_fu_4474_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_din1),.grp_fu_4474_p_dout0(grp_fu_4474_p2),.grp_fu_4474_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_ce),.grp_fu_4478_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_din0),.grp_fu_4478_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_din1),.grp_fu_4478_p_dout0(grp_fu_4478_p2),.grp_fu_4478_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_ce),.grp_fu_4482_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_din0),.grp_fu_4482_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_din1),.grp_fu_4482_p_dout0(grp_fu_4482_p2),.grp_fu_4482_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_ce),.grp_fu_4486_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_din0),.grp_fu_4486_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_din1),.grp_fu_4486_p_dout0(grp_fu_4486_p2),.grp_fu_4486_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_ce),.grp_fu_4490_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_din0),.grp_fu_4490_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_din1),.grp_fu_4490_p_dout0(grp_fu_4490_p2),.grp_fu_4490_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_ce),.grp_fu_4494_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_din0),.grp_fu_4494_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_din1),.grp_fu_4494_p_dout0(grp_fu_4494_p2),.grp_fu_4494_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_ce),.grp_fu_4498_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_din0),.grp_fu_4498_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_din1),.grp_fu_4498_p_dout0(grp_fu_4498_p2),.grp_fu_4498_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_ce),.grp_fu_4502_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_din0),.grp_fu_4502_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_din1),.grp_fu_4502_p_dout0(grp_fu_4502_p2),.grp_fu_4502_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_ce),.grp_fu_4506_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_din0),.grp_fu_4506_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_din1),.grp_fu_4506_p_dout0(grp_fu_4506_p2),.grp_fu_4506_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_ce),.grp_fu_4510_p_din0(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_din0),.grp_fu_4510_p_din1(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_din1),.grp_fu_4510_p_dout0(grp_fu_4510_p2),.grp_fu_4510_p_ce(grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_ce));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_2233(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_2233_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_2233_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_2233_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_2233_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_2_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address3),.buff_A_2_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address4),.buff_A_2_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address5),.buff_A_2_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address6),.buff_A_2_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address7),.buff_A_2_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_3_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address3),.buff_A_3_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address4),.buff_A_3_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address5),.buff_A_3_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address6),.buff_A_3_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address7),.buff_A_3_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_4_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_4_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address2),.buff_A_4_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce2),.buff_A_4_q2(buff_A_4_q2),.buff_A_4_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address3),.buff_A_4_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce3),.buff_A_4_q3(buff_A_4_q3),.buff_A_4_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address4),.buff_A_4_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce4),.buff_A_4_q4(buff_A_4_q4),.buff_A_4_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address5),.buff_A_4_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce5),.buff_A_4_q5(buff_A_4_q5),.buff_A_4_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address6),.buff_A_4_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce6),.buff_A_4_q6(buff_A_4_q6),.buff_A_4_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address7),.buff_A_4_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce7),.buff_A_4_q7(buff_A_4_q7),.buff_A_5_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_5_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address2),.buff_A_5_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce2),.buff_A_5_q2(buff_A_5_q2),.buff_A_5_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address3),.buff_A_5_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce3),.buff_A_5_q3(buff_A_5_q3),.buff_A_5_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address4),.buff_A_5_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce4),.buff_A_5_q4(buff_A_5_q4),.buff_A_5_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address5),.buff_A_5_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce5),.buff_A_5_q5(buff_A_5_q5),.buff_A_5_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address6),.buff_A_5_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce6),.buff_A_5_q6(buff_A_5_q6),.buff_A_5_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address7),.buff_A_5_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce7),.buff_A_5_q7(buff_A_5_q7),.buff_A_6_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_6_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address2),.buff_A_6_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce2),.buff_A_6_q2(buff_A_6_q2),.buff_A_6_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address3),.buff_A_6_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce3),.buff_A_6_q3(buff_A_6_q3),.buff_A_6_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address4),.buff_A_6_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce4),.buff_A_6_q4(buff_A_6_q4),.buff_A_6_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address5),.buff_A_6_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce5),.buff_A_6_q5(buff_A_6_q5),.buff_A_6_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address6),.buff_A_6_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce6),.buff_A_6_q6(buff_A_6_q6),.buff_A_6_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address7),.buff_A_6_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce7),.buff_A_6_q7(buff_A_6_q7),.buff_A_7_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_7_address2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address2),.buff_A_7_ce2(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce2),.buff_A_7_q2(buff_A_7_q2),.buff_A_7_address3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address3),.buff_A_7_ce3(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce3),.buff_A_7_q3(buff_A_7_q3),.buff_A_7_address4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address4),.buff_A_7_ce4(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce4),.buff_A_7_q4(buff_A_7_q4),.buff_A_7_address5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address5),.buff_A_7_ce5(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce5),.buff_A_7_q5(buff_A_7_q5),.buff_A_7_address6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address6),.buff_A_7_ce6(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce6),.buff_A_7_q6(buff_A_7_q6),.buff_A_7_address7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address7),.buff_A_7_ce7(grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce7),.buff_A_7_q7(buff_A_7_q7),.buff_q_out_7_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_ce0),.buff_q_out_7_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_we0),.buff_q_out_7_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_d0),.buff_q_out_7_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_address1),.buff_q_out_7_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_ce1),.buff_q_out_7_q1(buff_q_out_7_q1),.buff_q_out_6_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_ce0),.buff_q_out_6_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_we0),.buff_q_out_6_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_d0),.buff_q_out_6_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_address1),.buff_q_out_6_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_ce1),.buff_q_out_6_q1(buff_q_out_6_q1),.buff_q_out_5_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_ce0),.buff_q_out_5_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_we0),.buff_q_out_5_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_d0),.buff_q_out_5_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_address1),.buff_q_out_5_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_ce1),.buff_q_out_5_q1(buff_q_out_5_q1),.buff_q_out_4_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_ce0),.buff_q_out_4_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_we0),.buff_q_out_4_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_d0),.buff_q_out_4_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_address1),.buff_q_out_4_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_ce1),.buff_q_out_4_q1(buff_q_out_4_q1),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_d0),.buff_q_out_3_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_address1),.buff_q_out_3_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_ce1),.buff_q_out_3_q1(buff_q_out_3_q1),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_d0),.buff_q_out_2_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_address1),.buff_q_out_2_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_ce1),.buff_q_out_2_q1(buff_q_out_2_q1),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_d0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_ce1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_d0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_ce1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_3954),.buff_p_1_load(buff_p_1_load_reg_3964),.buff_p_2_load(buff_p_2_load_reg_3974),.buff_p_3_load(buff_p_3_load_reg_3984),.buff_p_4_load(buff_p_4_load_reg_3994),.buff_p_5_load(buff_p_5_load_reg_4004),.buff_p_6_load(buff_p_6_load_reg_4014),.buff_p_7_load(buff_p_7_load_reg_4024),.buff_p_load_1(buff_p_load_1_reg_3959),.buff_p_1_load_1(buff_p_1_load_1_reg_3969),.buff_p_2_load_1(buff_p_2_load_1_reg_3979),.buff_p_3_load_1(buff_p_3_load_1_reg_3989),.buff_p_4_load_1(buff_p_4_load_1_reg_3999),.buff_p_5_load_1(buff_p_5_load_1_reg_4009),.buff_p_6_load_1(buff_p_6_load_1_reg_4019),.buff_p_7_load_1(buff_p_7_load_1_reg_4029),.buff_p_load_2(buff_p_load_2_reg_4114),.buff_p_1_load_2(buff_p_1_load_2_reg_4124),.buff_p_2_load_2(buff_p_2_load_2_reg_4134),.buff_p_3_load_2(buff_p_3_load_2_reg_4144),.buff_p_4_load_2(buff_p_4_load_2_reg_4154),.buff_p_5_load_2(buff_p_5_load_2_reg_4164),.buff_p_6_load_2(buff_p_6_load_2_reg_4174),.buff_p_7_load_2(buff_p_7_load_2_reg_4184),.buff_p_load_3(buff_p_load_3_reg_4119),.buff_p_1_load_3(buff_p_1_load_3_reg_4129),.buff_p_2_load_3(buff_p_2_load_3_reg_4139),.buff_p_3_load_3(buff_p_3_load_3_reg_4149),.buff_p_4_load_3(buff_p_4_load_3_reg_4159),.buff_p_5_load_3(buff_p_5_load_3_reg_4169),.buff_p_6_load_3(buff_p_6_load_3_reg_4179),.buff_p_7_load_3(buff_p_7_load_3_reg_4189),.buff_p_load_4(buff_p_load_4_reg_4274),.buff_p_1_load_4(buff_p_1_load_4_reg_4284),.buff_p_2_load_4(buff_p_2_load_4_reg_4294),.buff_p_3_load_4(buff_p_3_load_4_reg_4304),.buff_p_4_load_4(buff_p_4_load_4_reg_4314),.buff_p_5_load_4(buff_p_5_load_4_reg_4324),.buff_p_6_load_4(buff_p_6_load_4_reg_4334),.buff_p_7_load_4(buff_p_7_load_4_reg_4344),.buff_p_load_5(buff_p_load_5_reg_4279),.buff_p_1_load_5(buff_p_1_load_5_reg_4289),.buff_p_2_load_5(buff_p_2_load_5_reg_4299),.buff_p_3_load_5(buff_p_3_load_5_reg_4309),.buff_p_4_load_5(buff_p_4_load_5_reg_4319),.buff_p_5_load_5(buff_p_5_load_5_reg_4329),.buff_p_6_load_5(buff_p_6_load_5_reg_4339),.buff_p_7_load_5(buff_p_7_load_5_reg_4349),.buff_p_load_6(buff_p_load_6_reg_4354),.buff_p_1_load_6(buff_p_1_load_6_reg_4364),.buff_p_2_load_6(buff_p_2_load_6_reg_4374),.buff_p_3_load_6(buff_p_3_load_6_reg_4384),.buff_p_4_load_6(buff_p_4_load_6_reg_4394),.buff_p_5_load_6(buff_p_5_load_6_reg_4404),.buff_p_6_load_6(buff_p_6_load_6_reg_4414),.buff_p_7_load_6(buff_p_7_load_6_reg_4424),.buff_p_load_7(buff_p_load_7_reg_4359),.buff_p_1_load_7(buff_p_1_load_7_reg_4369),.buff_p_2_load_7(buff_p_2_load_7_reg_4379),.buff_p_3_load_7(buff_p_3_load_7_reg_4389),.buff_p_4_load_7(buff_p_4_load_7_reg_4399),.buff_p_5_load_7(buff_p_5_load_7_reg_4409),.buff_p_6_load_7(buff_p_6_load_7_reg_4419),.buff_p_7_load_7(buff_p_7_load_7_reg_4429),.grp_fu_4434_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_din0),.grp_fu_4434_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_din1),.grp_fu_4434_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_opcode),.grp_fu_4434_p_dout0(grp_fu_4434_p2),.grp_fu_4434_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_ce),.grp_fu_4438_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_din0),.grp_fu_4438_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_din1),.grp_fu_4438_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_opcode),.grp_fu_4438_p_dout0(grp_fu_4438_p2),.grp_fu_4438_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_ce),.grp_fu_4442_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_din0),.grp_fu_4442_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_din1),.grp_fu_4442_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_opcode),.grp_fu_4442_p_dout0(grp_fu_4442_p2),.grp_fu_4442_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_ce),.grp_fu_4446_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_din0),.grp_fu_4446_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_din1),.grp_fu_4446_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_opcode),.grp_fu_4446_p_dout0(grp_fu_4446_p2),.grp_fu_4446_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_ce),.grp_fu_4450_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_din0),.grp_fu_4450_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_din1),.grp_fu_4450_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_opcode),.grp_fu_4450_p_dout0(grp_fu_4450_p2),.grp_fu_4450_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_ce),.grp_fu_4454_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_din0),.grp_fu_4454_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_din1),.grp_fu_4454_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_opcode),.grp_fu_4454_p_dout0(grp_fu_4454_p2),.grp_fu_4454_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_ce),.grp_fu_4458_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_din0),.grp_fu_4458_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_din1),.grp_fu_4458_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_opcode),.grp_fu_4458_p_dout0(grp_fu_4458_p2),.grp_fu_4458_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_ce),.grp_fu_4462_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_din0),.grp_fu_4462_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_din1),.grp_fu_4462_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_opcode),.grp_fu_4462_p_dout0(grp_fu_4462_p2),.grp_fu_4462_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_ce),.grp_fu_4466_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_din0),.grp_fu_4466_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_din1),.grp_fu_4466_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_opcode),.grp_fu_4466_p_dout0(grp_fu_4466_p2),.grp_fu_4466_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_ce),.grp_fu_4470_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_din0),.grp_fu_4470_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_din1),.grp_fu_4470_p_opcode(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_opcode),.grp_fu_4470_p_dout0(grp_fu_4470_p2),.grp_fu_4470_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_ce),.grp_fu_4474_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_din0),.grp_fu_4474_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_din1),.grp_fu_4474_p_dout0(grp_fu_4474_p2),.grp_fu_4474_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_ce),.grp_fu_4478_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_din0),.grp_fu_4478_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_din1),.grp_fu_4478_p_dout0(grp_fu_4478_p2),.grp_fu_4478_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_ce),.grp_fu_4482_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_din0),.grp_fu_4482_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_din1),.grp_fu_4482_p_dout0(grp_fu_4482_p2),.grp_fu_4482_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_ce),.grp_fu_4486_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_din0),.grp_fu_4486_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_din1),.grp_fu_4486_p_dout0(grp_fu_4486_p2),.grp_fu_4486_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_ce),.grp_fu_4490_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_din0),.grp_fu_4490_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_din1),.grp_fu_4490_p_dout0(grp_fu_4490_p2),.grp_fu_4490_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_ce),.grp_fu_4494_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_din0),.grp_fu_4494_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_din1),.grp_fu_4494_p_dout0(grp_fu_4494_p2),.grp_fu_4494_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_ce),.grp_fu_4498_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_din0),.grp_fu_4498_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_din1),.grp_fu_4498_p_dout0(grp_fu_4498_p2),.grp_fu_4498_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_ce),.grp_fu_4502_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_din0),.grp_fu_4502_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_din1),.grp_fu_4502_p_dout0(grp_fu_4502_p2),.grp_fu_4502_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_ce),.grp_fu_4506_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_din0),.grp_fu_4506_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_din1),.grp_fu_4506_p_dout0(grp_fu_4506_p2),.grp_fu_4506_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_ce),.grp_fu_4510_p_din0(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_din0),.grp_fu_4510_p_din1(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_din1),.grp_fu_4510_p_dout0(grp_fu_4510_p2),.grp_fu_4510_p_ce(grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_2333(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_2333_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_2333_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_2333_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_2333_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_2333_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_2333_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_2333_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_2333_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_4_ce0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_4_ce0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_5_ce0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_5_ce0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_6_ce0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_6_ce0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_7_ce0),.buff_s_out_7_q0(buff_s_out_7_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_7_ce0),.buff_q_out_7_q0(buff_q_out_7_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U413(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4434_p0),.din1(grp_fu_4434_p1),.ce(grp_fu_4434_ce),.dout(grp_fu_4434_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U414(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4438_p0),.din1(grp_fu_4438_p1),.ce(grp_fu_4438_ce),.dout(grp_fu_4438_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U415(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4442_p0),.din1(grp_fu_4442_p1),.ce(grp_fu_4442_ce),.dout(grp_fu_4442_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U416(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4446_p0),.din1(grp_fu_4446_p1),.ce(grp_fu_4446_ce),.dout(grp_fu_4446_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U417(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4450_p0),.din1(grp_fu_4450_p1),.ce(grp_fu_4450_ce),.dout(grp_fu_4450_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U418(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4454_p0),.din1(grp_fu_4454_p1),.ce(grp_fu_4454_ce),.dout(grp_fu_4454_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U419(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4458_p0),.din1(grp_fu_4458_p1),.ce(grp_fu_4458_ce),.dout(grp_fu_4458_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U420(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4462_p0),.din1(grp_fu_4462_p1),.ce(grp_fu_4462_ce),.dout(grp_fu_4462_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U421(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4466_p0),.din1(grp_fu_4466_p1),.ce(grp_fu_4466_ce),.dout(grp_fu_4466_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U422(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4470_p0),.din1(grp_fu_4470_p1),.ce(grp_fu_4470_ce),.dout(grp_fu_4470_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U423(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4474_p0),.din1(grp_fu_4474_p1),.ce(grp_fu_4474_ce),.dout(grp_fu_4474_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U424(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4478_p0),.din1(grp_fu_4478_p1),.ce(grp_fu_4478_ce),.dout(grp_fu_4478_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U425(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4482_p0),.din1(grp_fu_4482_p1),.ce(grp_fu_4482_ce),.dout(grp_fu_4482_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U426(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4486_p0),.din1(grp_fu_4486_p1),.ce(grp_fu_4486_ce),.dout(grp_fu_4486_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U427(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4490_p0),.din1(grp_fu_4490_p1),.ce(grp_fu_4490_ce),.dout(grp_fu_4490_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U428(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4494_p0),.din1(grp_fu_4494_p1),.ce(grp_fu_4494_ce),.dout(grp_fu_4494_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U429(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4498_p0),.din1(grp_fu_4498_p1),.ce(grp_fu_4498_ce),.dout(grp_fu_4498_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U430(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4502_p0),.din1(grp_fu_4502_p1),.ce(grp_fu_4502_ce),.dout(grp_fu_4502_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U431(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4506_p0),.din1(grp_fu_4506_p1),.ce(grp_fu_4506_ce),.dout(grp_fu_4506_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U432(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4510_p0),.din1(grp_fu_4510_p1),.ce(grp_fu_4510_ce),.dout(grp_fu_4510_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_2069_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_bicg_Pipeline_lp1_fu_2069_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_2069_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_2069_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_2233_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_bicg_Pipeline_lp3_fu_2233_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_2233_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_2233_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_2040_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bicg_Pipeline_lprd_2_fu_2040_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_2040_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_2040_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_2333_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_bicg_Pipeline_lpwr_fu_2333_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_2333_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_2333_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_106 <= add_ln13_reg_3115;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_3115 <= add_ln13_fu_2371_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_load_1_reg_3969 <= buff_p_1_q0;
        buff_p_1_load_reg_3964 <= buff_p_1_q1;
        buff_p_2_load_1_reg_3979 <= buff_p_2_q0;
        buff_p_2_load_reg_3974 <= buff_p_2_q1;
        buff_p_3_load_1_reg_3989 <= buff_p_3_q0;
        buff_p_3_load_reg_3984 <= buff_p_3_q1;
        buff_p_4_load_1_reg_3999 <= buff_p_4_q0;
        buff_p_4_load_reg_3994 <= buff_p_4_q1;
        buff_p_5_load_1_reg_4009 <= buff_p_5_q0;
        buff_p_5_load_reg_4004 <= buff_p_5_q1;
        buff_p_6_load_1_reg_4019 <= buff_p_6_q0;
        buff_p_6_load_reg_4014 <= buff_p_6_q1;
        buff_p_7_load_1_reg_4029 <= buff_p_7_q0;
        buff_p_7_load_reg_4024 <= buff_p_7_q1;
        buff_p_load_1_reg_3959 <= buff_p_q0;
        buff_p_load_reg_3954 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_load_2_reg_4124 <= buff_p_1_q0;
        buff_p_1_load_3_reg_4129 <= buff_p_1_q1;
        buff_p_2_load_2_reg_4134 <= buff_p_2_q0;
        buff_p_2_load_3_reg_4139 <= buff_p_2_q1;
        buff_p_3_load_2_reg_4144 <= buff_p_3_q0;
        buff_p_3_load_3_reg_4149 <= buff_p_3_q1;
        buff_p_4_load_2_reg_4154 <= buff_p_4_q0;
        buff_p_4_load_3_reg_4159 <= buff_p_4_q1;
        buff_p_5_load_2_reg_4164 <= buff_p_5_q0;
        buff_p_5_load_3_reg_4169 <= buff_p_5_q1;
        buff_p_6_load_2_reg_4174 <= buff_p_6_q0;
        buff_p_6_load_3_reg_4179 <= buff_p_6_q1;
        buff_p_7_load_2_reg_4184 <= buff_p_7_q0;
        buff_p_7_load_3_reg_4189 <= buff_p_7_q1;
        buff_p_load_2_reg_4114 <= buff_p_q0;
        buff_p_load_3_reg_4119 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_load_4_reg_4284 <= buff_p_1_q0;
        buff_p_1_load_5_reg_4289 <= buff_p_1_q1;
        buff_p_2_load_4_reg_4294 <= buff_p_2_q0;
        buff_p_2_load_5_reg_4299 <= buff_p_2_q1;
        buff_p_3_load_4_reg_4304 <= buff_p_3_q0;
        buff_p_3_load_5_reg_4309 <= buff_p_3_q1;
        buff_p_4_load_4_reg_4314 <= buff_p_4_q0;
        buff_p_4_load_5_reg_4319 <= buff_p_4_q1;
        buff_p_5_load_4_reg_4324 <= buff_p_5_q0;
        buff_p_5_load_5_reg_4329 <= buff_p_5_q1;
        buff_p_6_load_4_reg_4334 <= buff_p_6_q0;
        buff_p_6_load_5_reg_4339 <= buff_p_6_q1;
        buff_p_7_load_4_reg_4344 <= buff_p_7_q0;
        buff_p_7_load_5_reg_4349 <= buff_p_7_q1;
        buff_p_load_4_reg_4274 <= buff_p_q0;
        buff_p_load_5_reg_4279 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_load_6_reg_4364 <= buff_p_1_q0;
        buff_p_1_load_7_reg_4369 <= buff_p_1_q1;
        buff_p_2_load_6_reg_4374 <= buff_p_2_q0;
        buff_p_2_load_7_reg_4379 <= buff_p_2_q1;
        buff_p_3_load_6_reg_4384 <= buff_p_3_q0;
        buff_p_3_load_7_reg_4389 <= buff_p_3_q1;
        buff_p_4_load_6_reg_4394 <= buff_p_4_q0;
        buff_p_4_load_7_reg_4399 <= buff_p_4_q1;
        buff_p_5_load_6_reg_4404 <= buff_p_5_q0;
        buff_p_5_load_7_reg_4409 <= buff_p_5_q1;
        buff_p_6_load_6_reg_4414 <= buff_p_6_q0;
        buff_p_6_load_7_reg_4419 <= buff_p_6_q1;
        buff_p_7_load_6_reg_4424 <= buff_p_7_q0;
        buff_p_7_load_7_reg_4429 <= buff_p_7_q1;
        buff_p_load_6_reg_4354 <= buff_p_q0;
        buff_p_load_7_reg_4359 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_1_reg_3359 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_3319 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_3364 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_3324 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_3369 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_3329 <= buff_s_out_3_q1;
        buff_s_out_4_load_1_reg_3374 <= buff_s_out_4_q0;
        buff_s_out_4_load_reg_3334 <= buff_s_out_4_q1;
        buff_s_out_5_load_1_reg_3379 <= buff_s_out_5_q0;
        buff_s_out_5_load_reg_3339 <= buff_s_out_5_q1;
        buff_s_out_6_load_1_reg_3384 <= buff_s_out_6_q0;
        buff_s_out_6_load_reg_3344 <= buff_s_out_6_q1;
        buff_s_out_7_load_1_reg_3389 <= buff_s_out_7_q0;
        buff_s_out_7_load_reg_3349 <= buff_s_out_7_q1;
        buff_s_out_load_1_reg_3354 <= buff_s_out_q0;
        buff_s_out_load_reg_3314 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_2_reg_3479 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_3519 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_3484 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_3524 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_3489 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_3529 <= buff_s_out_3_q1;
        buff_s_out_4_load_2_reg_3494 <= buff_s_out_4_q0;
        buff_s_out_4_load_3_reg_3534 <= buff_s_out_4_q1;
        buff_s_out_5_load_2_reg_3499 <= buff_s_out_5_q0;
        buff_s_out_5_load_3_reg_3539 <= buff_s_out_5_q1;
        buff_s_out_6_load_2_reg_3504 <= buff_s_out_6_q0;
        buff_s_out_6_load_3_reg_3544 <= buff_s_out_6_q1;
        buff_s_out_7_load_2_reg_3509 <= buff_s_out_7_q0;
        buff_s_out_7_load_3_reg_3549 <= buff_s_out_7_q1;
        buff_s_out_load_2_reg_3474 <= buff_s_out_q0;
        buff_s_out_load_3_reg_3514 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_4_reg_3639 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_3679 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_3644 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_3684 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_3649 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_3689 <= buff_s_out_3_q1;
        buff_s_out_4_load_4_reg_3654 <= buff_s_out_4_q0;
        buff_s_out_4_load_5_reg_3694 <= buff_s_out_4_q1;
        buff_s_out_5_load_4_reg_3659 <= buff_s_out_5_q0;
        buff_s_out_5_load_5_reg_3699 <= buff_s_out_5_q1;
        buff_s_out_6_load_4_reg_3664 <= buff_s_out_6_q0;
        buff_s_out_6_load_5_reg_3704 <= buff_s_out_6_q1;
        buff_s_out_7_load_4_reg_3669 <= buff_s_out_7_q0;
        buff_s_out_7_load_5_reg_3709 <= buff_s_out_7_q1;
        buff_s_out_load_4_reg_3634 <= buff_s_out_q0;
        buff_s_out_load_5_reg_3674 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_6_reg_3719 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_3759 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_3724 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_3764 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_3729 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_3769 <= buff_s_out_3_q1;
        buff_s_out_4_load_6_reg_3734 <= buff_s_out_4_q0;
        buff_s_out_4_load_7_reg_3774 <= buff_s_out_4_q1;
        buff_s_out_5_load_6_reg_3739 <= buff_s_out_5_q0;
        buff_s_out_5_load_7_reg_3779 <= buff_s_out_5_q1;
        buff_s_out_6_load_6_reg_3744 <= buff_s_out_6_q0;
        buff_s_out_6_load_7_reg_3784 <= buff_s_out_6_q1;
        buff_s_out_7_load_6_reg_3749 <= buff_s_out_7_q0;
        buff_s_out_7_load_7_reg_3789 <= buff_s_out_7_q1;
        buff_s_out_load_6_reg_3714 <= buff_s_out_q0;
        buff_s_out_load_7_reg_3754 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_3226 <= trunc_ln13_fu_2383_p1;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_2333_ap_done == 1'b0)) begin
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
    if ((grp_bicg_Pipeline_lprd_2_fu_2040_ap_done == 1'b0)) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_2333_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_2333_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_address1;
    end else begin
        buff_A_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce2;
    end else begin
        buff_A_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce3;
    end else begin
        buff_A_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce4;
    end else begin
        buff_A_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce5;
    end else begin
        buff_A_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce6;
    end else begin
        buff_A_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_4_ce7;
    end else begin
        buff_A_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_address1;
    end else begin
        buff_A_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce2;
    end else begin
        buff_A_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce3;
    end else begin
        buff_A_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce4;
    end else begin
        buff_A_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce5;
    end else begin
        buff_A_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce6;
    end else begin
        buff_A_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_5_ce7;
    end else begin
        buff_A_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_address1;
    end else begin
        buff_A_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce2;
    end else begin
        buff_A_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce3;
    end else begin
        buff_A_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce4;
    end else begin
        buff_A_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce5;
    end else begin
        buff_A_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce6;
    end else begin
        buff_A_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_6_ce7;
    end else begin
        buff_A_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_address1;
    end else begin
        buff_A_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce2;
    end else begin
        buff_A_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce3;
    end else begin
        buff_A_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce4;
    end else begin
        buff_A_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce5;
    end else begin
        buff_A_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce6;
    end else begin
        buff_A_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_7_ce7;
    end else begin
        buff_A_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_2069_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_2233_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_2040_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_address1_local = 64'd0;
    end else begin
        buff_p_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_2_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_2_address1_local = 64'd0;
    end else begin
        buff_p_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_2_ce1_local = 1'b1;
    end else begin
        buff_p_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_3_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_3_address1_local = 64'd0;
    end else begin
        buff_p_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_3_ce1_local = 1'b1;
    end else begin
        buff_p_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_4_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_4_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_4_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_4_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_4_address1_local = 64'd0;
    end else begin
        buff_p_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_4_ce0_local = 1'b1;
    end else begin
        buff_p_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_4_ce1_local = 1'b1;
    end else begin
        buff_p_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_4_we0_local = 1'b1;
    end else begin
        buff_p_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_5_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_5_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_5_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_5_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_5_address1_local = 64'd0;
    end else begin
        buff_p_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_5_ce0_local = 1'b1;
    end else begin
        buff_p_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_5_ce1_local = 1'b1;
    end else begin
        buff_p_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_5_we0_local = 1'b1;
    end else begin
        buff_p_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_6_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_6_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_6_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_6_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_6_address1_local = 64'd0;
    end else begin
        buff_p_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_6_ce0_local = 1'b1;
    end else begin
        buff_p_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_6_ce1_local = 1'b1;
    end else begin
        buff_p_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_6_we0_local = 1'b1;
    end else begin
        buff_p_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_7_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_7_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_7_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_7_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_7_address1_local = 64'd0;
    end else begin
        buff_p_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_7_ce0_local = 1'b1;
    end else begin
        buff_p_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_7_ce1_local = 1'b1;
    end else begin
        buff_p_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_7_we0_local = 1'b1;
    end else begin
        buff_p_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_address0_local = zext_ln5_fu_2398_p1;
    end else begin
        buff_p_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_address1_local = 64'd0;
    end else begin
        buff_p_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_ce0;
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
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_ce0;
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
        buff_q_out_2_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_ce1;
    end else begin
        buff_q_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_ce0;
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
        buff_q_out_3_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_ce1;
    end else begin
        buff_q_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_address0;
    end else begin
        buff_q_out_4_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_ce0;
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
        buff_q_out_4_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_ce1;
    end else begin
        buff_q_out_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_d0;
    end else begin
        buff_q_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_4_we0;
    end else begin
        buff_q_out_4_we0 = buff_q_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_4_we0_local = 1'b1;
    end else begin
        buff_q_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_address0;
    end else begin
        buff_q_out_5_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_ce0;
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
        buff_q_out_5_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_ce1;
    end else begin
        buff_q_out_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_d0;
    end else begin
        buff_q_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_5_we0;
    end else begin
        buff_q_out_5_we0 = buff_q_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_5_we0_local = 1'b1;
    end else begin
        buff_q_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_address0;
    end else begin
        buff_q_out_6_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_ce0;
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
        buff_q_out_6_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_ce1;
    end else begin
        buff_q_out_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_d0;
    end else begin
        buff_q_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_6_we0;
    end else begin
        buff_q_out_6_we0 = buff_q_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_6_we0_local = 1'b1;
    end else begin
        buff_q_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_address0;
    end else begin
        buff_q_out_7_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_ce0;
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
        buff_q_out_7_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_ce1;
    end else begin
        buff_q_out_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_d0;
    end else begin
        buff_q_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_7_we0;
    end else begin
        buff_q_out_7_we0 = buff_q_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_7_we0_local = 1'b1;
    end else begin
        buff_q_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_ce0;
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
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_2233_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_2386_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_1_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_2_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_3_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_4_address0;
    end else begin
        buff_r_4_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_4_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_4_we0_local = 1'b1;
    end else begin
        buff_r_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_5_address0;
    end else begin
        buff_r_5_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_5_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_5_we0_local = 1'b1;
    end else begin
        buff_r_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_6_address0;
    end else begin
        buff_r_6_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_6_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_6_we0_local = 1'b1;
    end else begin
        buff_r_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_7_address0;
    end else begin
        buff_r_7_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_7_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_7_we0_local = 1'b1;
    end else begin
        buff_r_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_2398_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_2069_buff_r_ce0;
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
    if (((trunc_ln13_1_fu_2386_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_3559;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_3399;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_3239;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_3599;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_3439;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_3279;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4973_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3357_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1741_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_125_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5781_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4165_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2549_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_933_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_3564;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_3404;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_3244;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_3604;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_3444;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_3284;
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
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5074_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3458_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1842_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_226_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5882_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4266_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2650_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1034_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_3569;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_3409;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_3249;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_3609;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_3449;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_3289;
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
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5175_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3559_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1943_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_327_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5983_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4367_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2751_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1135_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_4_address0;
    end else begin
        buff_s_out_4_address0 = buff_s_out_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_6_reg_3574;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_4_reg_3414;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_2_reg_3254;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_address0_local = 64'd1;
    end else begin
        buff_s_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_7_reg_3614;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_5_reg_3454;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_3_reg_3294;
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
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_4_ce0;
    end else begin
        buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_4_ce1_local = 1'b1;
    end else begin
        buff_s_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5276_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3660_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2044_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_428_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_d0_local = 32'd0;
    end else begin
        buff_s_out_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_6084_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4468_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2852_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1236_out;
    end else begin
        buff_s_out_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_4_we1_local = 1'b1;
    end else begin
        buff_s_out_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_5_address0;
    end else begin
        buff_s_out_5_address0 = buff_s_out_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_6_reg_3579;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_4_reg_3419;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_2_reg_3259;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_address0_local = 64'd1;
    end else begin
        buff_s_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_7_reg_3619;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_5_reg_3459;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_3_reg_3299;
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
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_5_ce0;
    end else begin
        buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_5_ce1_local = 1'b1;
    end else begin
        buff_s_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5377_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3761_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2145_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_529_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_d0_local = 32'd0;
    end else begin
        buff_s_out_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_6185_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4569_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2953_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1337_out;
    end else begin
        buff_s_out_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_5_we1_local = 1'b1;
    end else begin
        buff_s_out_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_6_address0;
    end else begin
        buff_s_out_6_address0 = buff_s_out_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_6_reg_3584;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_4_reg_3424;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_2_reg_3264;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_address0_local = 64'd1;
    end else begin
        buff_s_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_7_reg_3624;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_5_reg_3464;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_3_reg_3304;
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
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_6_ce0;
    end else begin
        buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_6_ce1_local = 1'b1;
    end else begin
        buff_s_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5478_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3862_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2246_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_630_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_d0_local = 32'd0;
    end else begin
        buff_s_out_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_6286_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4670_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3054_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1438_out;
    end else begin
        buff_s_out_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_6_we1_local = 1'b1;
    end else begin
        buff_s_out_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_7_address0;
    end else begin
        buff_s_out_7_address0 = buff_s_out_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_6_reg_3589;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_4_reg_3429;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_2_reg_3269;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_address0_local = 64'd1;
    end else begin
        buff_s_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_7_reg_3629;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_5_reg_3469;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_3_reg_3309;
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
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_7_ce0;
    end else begin
        buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_7_ce1_local = 1'b1;
    end else begin
        buff_s_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5579_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3963_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2347_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_731_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_d0_local = 32'd0;
    end else begin
        buff_s_out_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_6387_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4771_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3155_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1539_out;
    end else begin
        buff_s_out_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_7_we1_local = 1'b1;
    end else begin
        buff_s_out_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_3554;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_3394;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_3234;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_address0_local = zext_ln5_fu_2398_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_3594;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_3434;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_3274;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_2333_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4872_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_3256_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_1640_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_2069_add_124_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_5680_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_4064_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_2448_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_2069_add_1_832_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln13_1_fu_2386_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4434_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4434_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_ce;
    end else begin
        grp_fu_4434_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4434_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4434_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_din0;
    end else begin
        grp_fu_4434_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4434_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4434_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4434_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4434_p_din1;
    end else begin
        grp_fu_4434_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4438_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4438_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_ce;
    end else begin
        grp_fu_4438_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4438_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4438_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_din0;
    end else begin
        grp_fu_4438_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4438_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4438_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4438_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4438_p_din1;
    end else begin
        grp_fu_4438_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4442_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4442_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_ce;
    end else begin
        grp_fu_4442_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4442_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4442_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_din0;
    end else begin
        grp_fu_4442_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4442_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4442_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4442_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4442_p_din1;
    end else begin
        grp_fu_4442_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4446_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4446_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_ce;
    end else begin
        grp_fu_4446_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4446_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4446_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_din0;
    end else begin
        grp_fu_4446_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4446_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4446_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4446_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4446_p_din1;
    end else begin
        grp_fu_4446_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4450_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4450_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_ce;
    end else begin
        grp_fu_4450_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4450_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4450_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_din0;
    end else begin
        grp_fu_4450_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4450_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4450_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4450_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4450_p_din1;
    end else begin
        grp_fu_4450_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4454_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4454_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_ce;
    end else begin
        grp_fu_4454_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4454_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4454_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_din0;
    end else begin
        grp_fu_4454_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4454_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4454_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4454_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4454_p_din1;
    end else begin
        grp_fu_4454_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4458_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4458_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_ce;
    end else begin
        grp_fu_4458_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4458_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4458_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_din0;
    end else begin
        grp_fu_4458_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4458_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4458_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4458_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4458_p_din1;
    end else begin
        grp_fu_4458_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4462_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4462_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_ce;
    end else begin
        grp_fu_4462_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4462_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4462_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_din0;
    end else begin
        grp_fu_4462_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4462_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4462_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4462_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4462_p_din1;
    end else begin
        grp_fu_4462_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4466_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4466_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_ce;
    end else begin
        grp_fu_4466_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4466_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4466_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_din0;
    end else begin
        grp_fu_4466_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4466_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4466_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4466_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4466_p_din1;
    end else begin
        grp_fu_4466_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4470_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4470_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_ce;
    end else begin
        grp_fu_4470_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4470_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4470_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_din0;
    end else begin
        grp_fu_4470_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4470_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4470_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4470_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4470_p_din1;
    end else begin
        grp_fu_4470_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4474_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4474_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_ce;
    end else begin
        grp_fu_4474_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4474_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4474_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_din0;
    end else begin
        grp_fu_4474_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4474_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4474_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4474_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4474_p_din1;
    end else begin
        grp_fu_4474_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4478_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4478_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_ce;
    end else begin
        grp_fu_4478_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4478_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4478_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_din0;
    end else begin
        grp_fu_4478_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4478_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4478_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4478_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4478_p_din1;
    end else begin
        grp_fu_4478_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4482_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4482_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_ce;
    end else begin
        grp_fu_4482_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4482_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4482_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_din0;
    end else begin
        grp_fu_4482_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4482_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4482_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4482_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4482_p_din1;
    end else begin
        grp_fu_4482_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4486_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4486_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_ce;
    end else begin
        grp_fu_4486_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4486_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4486_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_din0;
    end else begin
        grp_fu_4486_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4486_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4486_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4486_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4486_p_din1;
    end else begin
        grp_fu_4486_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4490_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4490_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_ce;
    end else begin
        grp_fu_4490_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4490_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4490_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_din0;
    end else begin
        grp_fu_4490_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4490_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4490_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4490_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4490_p_din1;
    end else begin
        grp_fu_4490_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4494_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4494_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_ce;
    end else begin
        grp_fu_4494_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4494_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4494_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_din0;
    end else begin
        grp_fu_4494_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4494_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4494_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4494_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4494_p_din1;
    end else begin
        grp_fu_4494_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4498_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4498_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_ce;
    end else begin
        grp_fu_4498_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4498_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4498_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_din0;
    end else begin
        grp_fu_4498_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4498_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4498_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4498_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4498_p_din1;
    end else begin
        grp_fu_4498_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4502_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4502_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_ce;
    end else begin
        grp_fu_4502_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4502_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4502_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_din0;
    end else begin
        grp_fu_4502_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4502_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4502_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4502_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4502_p_din1;
    end else begin
        grp_fu_4502_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4506_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4506_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_ce;
    end else begin
        grp_fu_4506_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4506_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4506_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_din0;
    end else begin
        grp_fu_4506_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4506_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4506_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4506_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4506_p_din1;
    end else begin
        grp_fu_4506_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4510_ce = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4510_ce = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_ce;
    end else begin
        grp_fu_4510_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4510_p0 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4510_p0 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_din0;
    end else begin
        grp_fu_4510_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4510_p1 = grp_bicg_Pipeline_lp3_fu_2233_grp_fu_4510_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4510_p1 = grp_bicg_Pipeline_lp1_fu_2069_grp_fu_4510_p_din1;
    end else begin
        grp_fu_4510_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_2333_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_2333_s_out_write;
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
            if (((icmp_ln13_fu_2365_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (grp_bicg_Pipeline_lprd_2_fu_2040_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_2069_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_fu_2233_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_2333_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_3_ce0;
assign A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_4_address0;
assign A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_4_ce0;
assign A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_5_address0;
assign A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_5_ce0;
assign A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_6_address0;
assign A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_6_ce0;
assign A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_7_address0;
assign A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_2040_A_7_ce0;
assign add_ln13_fu_2371_p2 = (i_fu_106 + 7'd1);
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
assign bitcast_ln14_fu_2434_p1 = p_q0;
assign bitcast_ln15_fu_2446_p1 = r_q0;
assign buff_s_out_1_addr_2_reg_3239 = 64'd2;
assign buff_s_out_1_addr_3_reg_3279 = 64'd3;
assign buff_s_out_1_addr_4_reg_3399 = 64'd4;
assign buff_s_out_1_addr_5_reg_3439 = 64'd5;
assign buff_s_out_1_addr_6_reg_3559 = 64'd6;
assign buff_s_out_1_addr_7_reg_3599 = 64'd7;
assign buff_s_out_2_addr_2_reg_3244 = 64'd2;
assign buff_s_out_2_addr_3_reg_3284 = 64'd3;
assign buff_s_out_2_addr_4_reg_3404 = 64'd4;
assign buff_s_out_2_addr_5_reg_3444 = 64'd5;
assign buff_s_out_2_addr_6_reg_3564 = 64'd6;
assign buff_s_out_2_addr_7_reg_3604 = 64'd7;
assign buff_s_out_3_addr_2_reg_3249 = 64'd2;
assign buff_s_out_3_addr_3_reg_3289 = 64'd3;
assign buff_s_out_3_addr_4_reg_3409 = 64'd4;
assign buff_s_out_3_addr_5_reg_3449 = 64'd5;
assign buff_s_out_3_addr_6_reg_3569 = 64'd6;
assign buff_s_out_3_addr_7_reg_3609 = 64'd7;
assign buff_s_out_4_addr_2_reg_3254 = 64'd2;
assign buff_s_out_4_addr_3_reg_3294 = 64'd3;
assign buff_s_out_4_addr_4_reg_3414 = 64'd4;
assign buff_s_out_4_addr_5_reg_3454 = 64'd5;
assign buff_s_out_4_addr_6_reg_3574 = 64'd6;
assign buff_s_out_4_addr_7_reg_3614 = 64'd7;
assign buff_s_out_5_addr_2_reg_3259 = 64'd2;
assign buff_s_out_5_addr_3_reg_3299 = 64'd3;
assign buff_s_out_5_addr_4_reg_3419 = 64'd4;
assign buff_s_out_5_addr_5_reg_3459 = 64'd5;
assign buff_s_out_5_addr_6_reg_3579 = 64'd6;
assign buff_s_out_5_addr_7_reg_3619 = 64'd7;
assign buff_s_out_6_addr_2_reg_3264 = 64'd2;
assign buff_s_out_6_addr_3_reg_3304 = 64'd3;
assign buff_s_out_6_addr_4_reg_3424 = 64'd4;
assign buff_s_out_6_addr_5_reg_3464 = 64'd5;
assign buff_s_out_6_addr_6_reg_3584 = 64'd6;
assign buff_s_out_6_addr_7_reg_3624 = 64'd7;
assign buff_s_out_7_addr_2_reg_3269 = 64'd2;
assign buff_s_out_7_addr_3_reg_3309 = 64'd3;
assign buff_s_out_7_addr_4_reg_3429 = 64'd4;
assign buff_s_out_7_addr_5_reg_3469 = 64'd5;
assign buff_s_out_7_addr_6_reg_3589 = 64'd6;
assign buff_s_out_7_addr_7_reg_3629 = 64'd7;
assign buff_s_out_addr_2_reg_3234 = 64'd2;
assign buff_s_out_addr_3_reg_3274 = 64'd3;
assign buff_s_out_addr_4_reg_3394 = 64'd4;
assign buff_s_out_addr_5_reg_3434 = 64'd5;
assign buff_s_out_addr_6_reg_3554 = 64'd6;
assign buff_s_out_addr_7_reg_3594 = 64'd7;
assign grp_bicg_Pipeline_lp1_fu_2069_ap_start = grp_bicg_Pipeline_lp1_fu_2069_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_2233_ap_start = grp_bicg_Pipeline_lp3_fu_2233_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_2040_ap_start = grp_bicg_Pipeline_lprd_2_fu_2040_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_2333_ap_start = grp_bicg_Pipeline_lpwr_fu_2333_ap_start_reg;
assign icmp_ln13_fu_2365_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_2389_p4 = {{i_fu_106[5:3]}};
assign p_address0 = zext_ln13_fu_2377_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_2333_q_out_din;
assign r_address0 = zext_ln13_fu_2377_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_2333_s_out_din;
assign trunc_ln13_1_fu_2386_p1 = i_fu_106[2:0];
assign trunc_ln13_fu_2383_p1 = i_fu_106[5:0];
assign zext_ln13_fu_2377_p1 = i_fu_106;
assign zext_ln5_fu_2398_p1 = lshr_ln5_fu_2389_p4;
endmodule 