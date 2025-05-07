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
wire   [6:0] add_ln13_fu_1755_p2;
reg   [6:0] add_ln13_reg_2499;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1767_p1;
reg   [5:0] trunc_ln13_reg_2610;
wire    ap_CS_fsm_state3;
wire   [2:0] buff_s_out_addr_2_reg_2618;
wire    ap_CS_fsm_state6;
wire   [2:0] buff_s_out_1_addr_2_reg_2623;
wire   [2:0] buff_s_out_2_addr_2_reg_2628;
wire   [2:0] buff_s_out_3_addr_2_reg_2633;
wire   [2:0] buff_s_out_4_addr_2_reg_2638;
wire   [2:0] buff_s_out_5_addr_2_reg_2643;
wire   [2:0] buff_s_out_6_addr_2_reg_2648;
wire   [2:0] buff_s_out_7_addr_2_reg_2653;
wire   [2:0] buff_s_out_addr_3_reg_2658;
wire   [2:0] buff_s_out_1_addr_3_reg_2663;
wire   [2:0] buff_s_out_2_addr_3_reg_2668;
wire   [2:0] buff_s_out_3_addr_3_reg_2673;
wire   [2:0] buff_s_out_4_addr_3_reg_2678;
wire   [2:0] buff_s_out_5_addr_3_reg_2683;
wire   [2:0] buff_s_out_6_addr_3_reg_2688;
wire   [2:0] buff_s_out_7_addr_3_reg_2693;
reg   [31:0] buff_s_out_load_reg_2698;
reg   [31:0] buff_s_out_1_load_reg_2703;
reg   [31:0] buff_s_out_2_load_reg_2708;
reg   [31:0] buff_s_out_3_load_reg_2713;
reg   [31:0] buff_s_out_4_load_reg_2718;
reg   [31:0] buff_s_out_5_load_reg_2723;
reg   [31:0] buff_s_out_6_load_reg_2728;
reg   [31:0] buff_s_out_7_load_reg_2733;
reg   [31:0] buff_s_out_load_1_reg_2738;
reg   [31:0] buff_s_out_1_load_1_reg_2743;
reg   [31:0] buff_s_out_2_load_1_reg_2748;
reg   [31:0] buff_s_out_3_load_1_reg_2753;
reg   [31:0] buff_s_out_4_load_1_reg_2758;
reg   [31:0] buff_s_out_5_load_1_reg_2763;
reg   [31:0] buff_s_out_6_load_1_reg_2768;
reg   [31:0] buff_s_out_7_load_1_reg_2773;
wire   [2:0] buff_s_out_addr_4_reg_2778;
wire    ap_CS_fsm_state7;
wire   [2:0] buff_s_out_1_addr_4_reg_2783;
wire   [2:0] buff_s_out_2_addr_4_reg_2788;
wire   [2:0] buff_s_out_3_addr_4_reg_2793;
wire   [2:0] buff_s_out_4_addr_4_reg_2798;
wire   [2:0] buff_s_out_5_addr_4_reg_2803;
wire   [2:0] buff_s_out_6_addr_4_reg_2808;
wire   [2:0] buff_s_out_7_addr_4_reg_2813;
wire   [2:0] buff_s_out_addr_5_reg_2818;
wire   [2:0] buff_s_out_1_addr_5_reg_2823;
wire   [2:0] buff_s_out_2_addr_5_reg_2828;
wire   [2:0] buff_s_out_3_addr_5_reg_2833;
wire   [2:0] buff_s_out_4_addr_5_reg_2838;
wire   [2:0] buff_s_out_5_addr_5_reg_2843;
wire   [2:0] buff_s_out_6_addr_5_reg_2848;
wire   [2:0] buff_s_out_7_addr_5_reg_2853;
reg   [31:0] buff_s_out_load_2_reg_2858;
reg   [31:0] buff_s_out_1_load_2_reg_2863;
reg   [31:0] buff_s_out_2_load_2_reg_2868;
reg   [31:0] buff_s_out_3_load_2_reg_2873;
reg   [31:0] buff_s_out_4_load_2_reg_2878;
reg   [31:0] buff_s_out_5_load_2_reg_2883;
reg   [31:0] buff_s_out_6_load_2_reg_2888;
reg   [31:0] buff_s_out_7_load_2_reg_2893;
reg   [31:0] buff_s_out_load_3_reg_2898;
reg   [31:0] buff_s_out_1_load_3_reg_2903;
reg   [31:0] buff_s_out_2_load_3_reg_2908;
reg   [31:0] buff_s_out_3_load_3_reg_2913;
reg   [31:0] buff_s_out_4_load_3_reg_2918;
reg   [31:0] buff_s_out_5_load_3_reg_2923;
reg   [31:0] buff_s_out_6_load_3_reg_2928;
reg   [31:0] buff_s_out_7_load_3_reg_2933;
wire   [2:0] buff_s_out_addr_6_reg_2938;
wire    ap_CS_fsm_state8;
wire   [2:0] buff_s_out_1_addr_6_reg_2943;
wire   [2:0] buff_s_out_2_addr_6_reg_2948;
wire   [2:0] buff_s_out_3_addr_6_reg_2953;
wire   [2:0] buff_s_out_4_addr_6_reg_2958;
wire   [2:0] buff_s_out_5_addr_6_reg_2963;
wire   [2:0] buff_s_out_6_addr_6_reg_2968;
wire   [2:0] buff_s_out_7_addr_6_reg_2973;
wire   [2:0] buff_s_out_addr_7_reg_2978;
wire   [2:0] buff_s_out_1_addr_7_reg_2983;
wire   [2:0] buff_s_out_2_addr_7_reg_2988;
wire   [2:0] buff_s_out_3_addr_7_reg_2993;
wire   [2:0] buff_s_out_4_addr_7_reg_2998;
wire   [2:0] buff_s_out_5_addr_7_reg_3003;
wire   [2:0] buff_s_out_6_addr_7_reg_3008;
wire   [2:0] buff_s_out_7_addr_7_reg_3013;
reg   [31:0] buff_s_out_load_4_reg_3018;
reg   [31:0] buff_s_out_1_load_4_reg_3023;
reg   [31:0] buff_s_out_2_load_4_reg_3028;
reg   [31:0] buff_s_out_3_load_4_reg_3033;
reg   [31:0] buff_s_out_4_load_4_reg_3038;
reg   [31:0] buff_s_out_5_load_4_reg_3043;
reg   [31:0] buff_s_out_6_load_4_reg_3048;
reg   [31:0] buff_s_out_7_load_4_reg_3053;
reg   [31:0] buff_s_out_load_5_reg_3058;
reg   [31:0] buff_s_out_1_load_5_reg_3063;
reg   [31:0] buff_s_out_2_load_5_reg_3068;
reg   [31:0] buff_s_out_3_load_5_reg_3073;
reg   [31:0] buff_s_out_4_load_5_reg_3078;
reg   [31:0] buff_s_out_5_load_5_reg_3083;
reg   [31:0] buff_s_out_6_load_5_reg_3088;
reg   [31:0] buff_s_out_7_load_5_reg_3093;
reg   [31:0] buff_s_out_load_6_reg_3098;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_s_out_1_load_6_reg_3103;
reg   [31:0] buff_s_out_2_load_6_reg_3108;
reg   [31:0] buff_s_out_3_load_6_reg_3113;
reg   [31:0] buff_s_out_4_load_6_reg_3118;
reg   [31:0] buff_s_out_5_load_6_reg_3123;
reg   [31:0] buff_s_out_6_load_6_reg_3128;
reg   [31:0] buff_s_out_7_load_6_reg_3133;
reg   [31:0] buff_s_out_load_7_reg_3138;
reg   [31:0] buff_s_out_1_load_7_reg_3143;
reg   [31:0] buff_s_out_2_load_7_reg_3148;
reg   [31:0] buff_s_out_3_load_7_reg_3153;
reg   [31:0] buff_s_out_4_load_7_reg_3158;
reg   [31:0] buff_s_out_5_load_7_reg_3163;
reg   [31:0] buff_s_out_6_load_7_reg_3168;
reg   [31:0] buff_s_out_7_load_7_reg_3173;
reg   [8:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [8:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [8:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg   [8:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg   [8:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg    buff_A_4_ce1;
wire   [31:0] buff_A_4_q1;
reg   [8:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg    buff_A_5_ce1;
wire   [31:0] buff_A_5_q1;
reg   [8:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg    buff_A_6_ce1;
wire   [31:0] buff_A_6_q1;
reg   [8:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg    buff_A_7_ce1;
wire   [31:0] buff_A_7_q1;
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
wire    grp_bicg_Pipeline_lprd_2_fu_1496_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_0_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_d0;
wire    grp_bicg_Pipeline_lp1_fu_1525_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1525_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1525_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1525_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_ce1;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1525_buff_r_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1525_buff_r_7_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_6375_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_6375_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_6274_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_6274_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_6173_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_6173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_6072_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_6072_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5971_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5971_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5870_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5870_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5769_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5769_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5668_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5668_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5567_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5567_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5466_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5466_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5365_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5365_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5264_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5264_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5163_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_5062_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_5062_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4961_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4961_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4860_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4860_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4759_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4759_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4658_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4658_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4557_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4557_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4456_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4456_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4355_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4355_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4254_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4254_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4153_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_4052_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_4052_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3951_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3951_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3850_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3850_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3749_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3749_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3648_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3648_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3547_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3547_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3446_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3446_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3345_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3345_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3244_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3244_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3143_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_3042_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_3042_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2941_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2941_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2840_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2840_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2739_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2739_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2638_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2638_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2537_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2537_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2436_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2436_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2335_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2335_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2234_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2234_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2133_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2133_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_2032_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_2032_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1931_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1931_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1830_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1830_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1729_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1729_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1628_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1628_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1527_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1527_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1426_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1426_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1325_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1325_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1224_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1224_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1123_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1123_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_1022_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_1022_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_921_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_921_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_820_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_820_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_719_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_719_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_618_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_618_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_517_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_517_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_416_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_416_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_315_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_315_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_214_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_214_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add_113_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add_113_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_add12_out;
wire    grp_bicg_Pipeline_lp1_fu_1525_add12_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_ce;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1717_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1717_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1717_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1717_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1717_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1717_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1717_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1717_q_out_write;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_7_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1496_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_bicg_Pipeline_lp1_fu_1525_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg    grp_bicg_Pipeline_lpwr_fu_1717_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln13_fu_1761_p1;
wire   [0:0] icmp_ln13_fu_1749_p2;
wire   [63:0] zext_ln5_fu_1782_p1;
reg   [6:0] i_fu_106;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [2:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [2:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
wire   [2:0] trunc_ln13_1_fu_1770_p1;
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
wire   [31:0] bitcast_ln14_fu_1818_p1;
reg    buff_p_6_ce0_local;
reg    buff_r_6_we0_local;
wire   [31:0] bitcast_ln15_fu_1830_p1;
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
wire   [2:0] lshr_ln5_fu_1773_p4;
wire   [31:0] grp_fu_3178_p2;
reg   [31:0] grp_fu_3178_p0;
reg   [31:0] grp_fu_3178_p1;
reg    grp_fu_3178_ce;
wire   [31:0] grp_fu_3182_p2;
reg   [31:0] grp_fu_3182_p0;
reg   [31:0] grp_fu_3182_p1;
reg    grp_fu_3182_ce;
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
#0 grp_bicg_Pipeline_lprd_2_fu_1496_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1525_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1717_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_4_address0),.ce0(buff_p_4_ce0),.we0(buff_p_4_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_5_address0),.ce0(buff_p_5_ce0),.we0(buff_p_5_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_6_address0),.ce0(buff_p_6_ce0),.we0(buff_p_6_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_7_address0),.ce0(buff_p_7_ce0),.we0(buff_p_7_we0_local),.d0(bitcast_ln14_fu_1818_p1),.q0(buff_p_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_4_address0),.ce0(buff_r_4_ce0),.we0(buff_r_4_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_5_address0),.ce0(buff_r_5_ce0),.we0(buff_r_5_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_6_address0),.ce0(buff_r_6_ce0),.we0(buff_r_6_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_7_address0),.ce0(buff_r_7_ce0),.we0(buff_r_7_we0_local),.d0(bitcast_ln15_fu_1830_p1),.q0(buff_r_7_q0));
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
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1496(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1496_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1496_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1496_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1496_ap_ready),.i(trunc_ln13_reg_2610),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_4_address0),.A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_5_address0),.A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_6_address0),.A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1496_A_7_address0),.A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_d0));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1525(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1525_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1525_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1525_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1525_ap_ready),.buff_s_out_7_load_7(buff_s_out_7_load_7_reg_3173),.buff_s_out_6_load_7(buff_s_out_6_load_7_reg_3168),.buff_s_out_5_load_7(buff_s_out_5_load_7_reg_3163),.buff_s_out_4_load_7(buff_s_out_4_load_7_reg_3158),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_3153),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_3148),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_3143),.buff_s_out_load_7(buff_s_out_load_7_reg_3138),.buff_s_out_7_load_6(buff_s_out_7_load_6_reg_3133),.buff_s_out_6_load_6(buff_s_out_6_load_6_reg_3128),.buff_s_out_5_load_6(buff_s_out_5_load_6_reg_3123),.buff_s_out_4_load_6(buff_s_out_4_load_6_reg_3118),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_3113),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_3108),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_3103),.buff_s_out_load_6(buff_s_out_load_6_reg_3098),.buff_s_out_7_load_5(buff_s_out_7_load_5_reg_3093),.buff_s_out_6_load_5(buff_s_out_6_load_5_reg_3088),.buff_s_out_5_load_5(buff_s_out_5_load_5_reg_3083),.buff_s_out_4_load_5(buff_s_out_4_load_5_reg_3078),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_3073),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_3068),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_3063),.buff_s_out_load_5(buff_s_out_load_5_reg_3058),.buff_s_out_7_load_4(buff_s_out_7_load_4_reg_3053),.buff_s_out_6_load_4(buff_s_out_6_load_4_reg_3048),.buff_s_out_5_load_4(buff_s_out_5_load_4_reg_3043),.buff_s_out_4_load_4(buff_s_out_4_load_4_reg_3038),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_3033),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_3028),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_3023),.buff_s_out_load_4(buff_s_out_load_4_reg_3018),.buff_s_out_7_load_3(buff_s_out_7_load_3_reg_2933),.buff_s_out_6_load_3(buff_s_out_6_load_3_reg_2928),.buff_s_out_5_load_3(buff_s_out_5_load_3_reg_2923),.buff_s_out_4_load_3(buff_s_out_4_load_3_reg_2918),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_2913),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_2908),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2903),.buff_s_out_load_3(buff_s_out_load_3_reg_2898),.buff_s_out_7_load_2(buff_s_out_7_load_2_reg_2893),.buff_s_out_6_load_2(buff_s_out_6_load_2_reg_2888),.buff_s_out_5_load_2(buff_s_out_5_load_2_reg_2883),.buff_s_out_4_load_2(buff_s_out_4_load_2_reg_2878),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_2873),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_2868),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2863),.buff_s_out_load_2(buff_s_out_load_2_reg_2858),.buff_s_out_7_load_1(buff_s_out_7_load_1_reg_2773),.buff_s_out_6_load_1(buff_s_out_6_load_1_reg_2768),.buff_s_out_5_load_1(buff_s_out_5_load_1_reg_2763),.buff_s_out_4_load_1(buff_s_out_4_load_1_reg_2758),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_2753),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_2748),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2743),.buff_s_out_load_1(buff_s_out_load_1_reg_2738),.buff_s_out_7_load(buff_s_out_7_load_reg_2733),.buff_s_out_6_load(buff_s_out_6_load_reg_2728),.buff_s_out_5_load(buff_s_out_5_load_reg_2723),.buff_s_out_4_load(buff_s_out_4_load_reg_2718),.buff_s_out_3_load(buff_s_out_3_load_reg_2713),.buff_s_out_2_load(buff_s_out_2_load_reg_2708),.buff_s_out_1_load(buff_s_out_1_load_reg_2703),.buff_s_out_load(buff_s_out_load_reg_2698),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_r_4_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_4_address0),.buff_r_4_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_4_ce0),.buff_r_4_q0(buff_r_4_q0),.buff_r_5_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_5_address0),.buff_r_5_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_5_ce0),.buff_r_5_q0(buff_r_5_q0),.buff_r_6_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_6_address0),.buff_r_6_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_6_ce0),.buff_r_6_q0(buff_r_6_q0),.buff_r_7_address0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_7_address0),.buff_r_7_ce0(grp_bicg_Pipeline_lp1_fu_1525_buff_r_7_ce0),.buff_r_7_q0(buff_r_7_q0),.add_6375_out(grp_bicg_Pipeline_lp1_fu_1525_add_6375_out),.add_6375_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_6375_out_ap_vld),.add_6274_out(grp_bicg_Pipeline_lp1_fu_1525_add_6274_out),.add_6274_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_6274_out_ap_vld),.add_6173_out(grp_bicg_Pipeline_lp1_fu_1525_add_6173_out),.add_6173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_6173_out_ap_vld),.add_6072_out(grp_bicg_Pipeline_lp1_fu_1525_add_6072_out),.add_6072_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_6072_out_ap_vld),.add_5971_out(grp_bicg_Pipeline_lp1_fu_1525_add_5971_out),.add_5971_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5971_out_ap_vld),.add_5870_out(grp_bicg_Pipeline_lp1_fu_1525_add_5870_out),.add_5870_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5870_out_ap_vld),.add_5769_out(grp_bicg_Pipeline_lp1_fu_1525_add_5769_out),.add_5769_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5769_out_ap_vld),.add_5668_out(grp_bicg_Pipeline_lp1_fu_1525_add_5668_out),.add_5668_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5668_out_ap_vld),.add_5567_out(grp_bicg_Pipeline_lp1_fu_1525_add_5567_out),.add_5567_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5567_out_ap_vld),.add_5466_out(grp_bicg_Pipeline_lp1_fu_1525_add_5466_out),.add_5466_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5466_out_ap_vld),.add_5365_out(grp_bicg_Pipeline_lp1_fu_1525_add_5365_out),.add_5365_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5365_out_ap_vld),.add_5264_out(grp_bicg_Pipeline_lp1_fu_1525_add_5264_out),.add_5264_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5264_out_ap_vld),.add_5163_out(grp_bicg_Pipeline_lp1_fu_1525_add_5163_out),.add_5163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5163_out_ap_vld),.add_5062_out(grp_bicg_Pipeline_lp1_fu_1525_add_5062_out),.add_5062_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_5062_out_ap_vld),.add_4961_out(grp_bicg_Pipeline_lp1_fu_1525_add_4961_out),.add_4961_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4961_out_ap_vld),.add_4860_out(grp_bicg_Pipeline_lp1_fu_1525_add_4860_out),.add_4860_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4860_out_ap_vld),.add_4759_out(grp_bicg_Pipeline_lp1_fu_1525_add_4759_out),.add_4759_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4759_out_ap_vld),.add_4658_out(grp_bicg_Pipeline_lp1_fu_1525_add_4658_out),.add_4658_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4658_out_ap_vld),.add_4557_out(grp_bicg_Pipeline_lp1_fu_1525_add_4557_out),.add_4557_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4557_out_ap_vld),.add_4456_out(grp_bicg_Pipeline_lp1_fu_1525_add_4456_out),.add_4456_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4456_out_ap_vld),.add_4355_out(grp_bicg_Pipeline_lp1_fu_1525_add_4355_out),.add_4355_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4355_out_ap_vld),.add_4254_out(grp_bicg_Pipeline_lp1_fu_1525_add_4254_out),.add_4254_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4254_out_ap_vld),.add_4153_out(grp_bicg_Pipeline_lp1_fu_1525_add_4153_out),.add_4153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4153_out_ap_vld),.add_4052_out(grp_bicg_Pipeline_lp1_fu_1525_add_4052_out),.add_4052_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_4052_out_ap_vld),.add_3951_out(grp_bicg_Pipeline_lp1_fu_1525_add_3951_out),.add_3951_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3951_out_ap_vld),.add_3850_out(grp_bicg_Pipeline_lp1_fu_1525_add_3850_out),.add_3850_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3850_out_ap_vld),.add_3749_out(grp_bicg_Pipeline_lp1_fu_1525_add_3749_out),.add_3749_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3749_out_ap_vld),.add_3648_out(grp_bicg_Pipeline_lp1_fu_1525_add_3648_out),.add_3648_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3648_out_ap_vld),.add_3547_out(grp_bicg_Pipeline_lp1_fu_1525_add_3547_out),.add_3547_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3547_out_ap_vld),.add_3446_out(grp_bicg_Pipeline_lp1_fu_1525_add_3446_out),.add_3446_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3446_out_ap_vld),.add_3345_out(grp_bicg_Pipeline_lp1_fu_1525_add_3345_out),.add_3345_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3345_out_ap_vld),.add_3244_out(grp_bicg_Pipeline_lp1_fu_1525_add_3244_out),.add_3244_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3244_out_ap_vld),.add_3143_out(grp_bicg_Pipeline_lp1_fu_1525_add_3143_out),.add_3143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3143_out_ap_vld),.add_3042_out(grp_bicg_Pipeline_lp1_fu_1525_add_3042_out),.add_3042_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_3042_out_ap_vld),.add_2941_out(grp_bicg_Pipeline_lp1_fu_1525_add_2941_out),.add_2941_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2941_out_ap_vld),.add_2840_out(grp_bicg_Pipeline_lp1_fu_1525_add_2840_out),.add_2840_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2840_out_ap_vld),.add_2739_out(grp_bicg_Pipeline_lp1_fu_1525_add_2739_out),.add_2739_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2739_out_ap_vld),.add_2638_out(grp_bicg_Pipeline_lp1_fu_1525_add_2638_out),.add_2638_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2638_out_ap_vld),.add_2537_out(grp_bicg_Pipeline_lp1_fu_1525_add_2537_out),.add_2537_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2537_out_ap_vld),.add_2436_out(grp_bicg_Pipeline_lp1_fu_1525_add_2436_out),.add_2436_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2436_out_ap_vld),.add_2335_out(grp_bicg_Pipeline_lp1_fu_1525_add_2335_out),.add_2335_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2335_out_ap_vld),.add_2234_out(grp_bicg_Pipeline_lp1_fu_1525_add_2234_out),.add_2234_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2234_out_ap_vld),.add_2133_out(grp_bicg_Pipeline_lp1_fu_1525_add_2133_out),.add_2133_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2133_out_ap_vld),.add_2032_out(grp_bicg_Pipeline_lp1_fu_1525_add_2032_out),.add_2032_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_2032_out_ap_vld),.add_1931_out(grp_bicg_Pipeline_lp1_fu_1525_add_1931_out),.add_1931_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1931_out_ap_vld),.add_1830_out(grp_bicg_Pipeline_lp1_fu_1525_add_1830_out),.add_1830_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1830_out_ap_vld),.add_1729_out(grp_bicg_Pipeline_lp1_fu_1525_add_1729_out),.add_1729_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1729_out_ap_vld),.add_1628_out(grp_bicg_Pipeline_lp1_fu_1525_add_1628_out),.add_1628_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1628_out_ap_vld),.add_1527_out(grp_bicg_Pipeline_lp1_fu_1525_add_1527_out),.add_1527_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1527_out_ap_vld),.add_1426_out(grp_bicg_Pipeline_lp1_fu_1525_add_1426_out),.add_1426_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1426_out_ap_vld),.add_1325_out(grp_bicg_Pipeline_lp1_fu_1525_add_1325_out),.add_1325_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1325_out_ap_vld),.add_1224_out(grp_bicg_Pipeline_lp1_fu_1525_add_1224_out),.add_1224_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1224_out_ap_vld),.add_1123_out(grp_bicg_Pipeline_lp1_fu_1525_add_1123_out),.add_1123_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1123_out_ap_vld),.add_1022_out(grp_bicg_Pipeline_lp1_fu_1525_add_1022_out),.add_1022_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_1022_out_ap_vld),.add_921_out(grp_bicg_Pipeline_lp1_fu_1525_add_921_out),.add_921_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_921_out_ap_vld),.add_820_out(grp_bicg_Pipeline_lp1_fu_1525_add_820_out),.add_820_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_820_out_ap_vld),.add_719_out(grp_bicg_Pipeline_lp1_fu_1525_add_719_out),.add_719_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_719_out_ap_vld),.add_618_out(grp_bicg_Pipeline_lp1_fu_1525_add_618_out),.add_618_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_618_out_ap_vld),.add_517_out(grp_bicg_Pipeline_lp1_fu_1525_add_517_out),.add_517_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_517_out_ap_vld),.add_416_out(grp_bicg_Pipeline_lp1_fu_1525_add_416_out),.add_416_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_416_out_ap_vld),.add_315_out(grp_bicg_Pipeline_lp1_fu_1525_add_315_out),.add_315_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_315_out_ap_vld),.add_214_out(grp_bicg_Pipeline_lp1_fu_1525_add_214_out),.add_214_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_214_out_ap_vld),.add_113_out(grp_bicg_Pipeline_lp1_fu_1525_add_113_out),.add_113_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add_113_out_ap_vld),.add12_out(grp_bicg_Pipeline_lp1_fu_1525_add12_out),.add12_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1525_add12_out_ap_vld),.grp_fu_3178_p_din0(grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_din0),.grp_fu_3178_p_din1(grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_din1),.grp_fu_3178_p_opcode(grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_opcode),.grp_fu_3178_p_dout0(grp_fu_3178_p2),.grp_fu_3178_p_ce(grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_ce),.grp_fu_3182_p_din0(grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_din0),.grp_fu_3182_p_din1(grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_din1),.grp_fu_3182_p_dout0(grp_fu_3182_p2),.grp_fu_3182_p_ce(grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_ce));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_1689(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_p_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_4_address0),.buff_p_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_4_ce0),.buff_p_4_q0(buff_p_4_q0),.buff_p_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_5_address0),.buff_p_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_5_ce0),.buff_p_5_q0(buff_p_5_q0),.buff_p_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_6_address0),.buff_p_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_6_ce0),.buff_p_6_q0(buff_p_6_q0),.buff_p_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_7_address0),.buff_p_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_7_ce0),.buff_p_7_q0(buff_p_7_q0),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_d0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_d0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_ce0),.buff_q_out_4_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_we0),.buff_q_out_4_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_d0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_ce0),.buff_q_out_5_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_we0),.buff_q_out_5_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_d0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_ce0),.buff_q_out_6_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_we0),.buff_q_out_6_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_d0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_ce0),.buff_q_out_7_we0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_we0),.buff_q_out_7_d0(grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_d0),.buff_q_out_7_q0(buff_q_out_7_q0),.grp_fu_3178_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_din0),.grp_fu_3178_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_din1),.grp_fu_3178_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_opcode),.grp_fu_3178_p_dout0(grp_fu_3178_p2),.grp_fu_3178_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_ce),.grp_fu_3182_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_din0),.grp_fu_3182_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_din1),.grp_fu_3182_p_dout0(grp_fu_3182_p2),.grp_fu_3182_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1717(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1717_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1717_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1717_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1717_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1717_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1717_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1717_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1717_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_4_ce0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_4_ce0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_5_ce0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_5_ce0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_6_ce0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_6_ce0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_7_ce0),.buff_s_out_7_q0(buff_s_out_7_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_7_ce0),.buff_q_out_7_q0(buff_q_out_7_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U227(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3178_p0),.din1(grp_fu_3178_p1),.ce(grp_fu_3178_ce),.dout(grp_fu_3178_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U228(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3182_p0),.din1(grp_fu_3182_p1),.ce(grp_fu_3182_ce),.dout(grp_fu_3182_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1525_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_bicg_Pipeline_lp1_fu_1525_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1525_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1525_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1496_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bicg_Pipeline_lprd_2_fu_1496_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1496_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1496_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1717_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_bicg_Pipeline_lpwr_fu_1717_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1717_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1717_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_106 <= add_ln13_reg_2499;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2499 <= add_ln13_fu_1755_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_1_reg_2743 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2703 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_2748 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_2708 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_2753 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_2713 <= buff_s_out_3_q1;
        buff_s_out_4_load_1_reg_2758 <= buff_s_out_4_q0;
        buff_s_out_4_load_reg_2718 <= buff_s_out_4_q1;
        buff_s_out_5_load_1_reg_2763 <= buff_s_out_5_q0;
        buff_s_out_5_load_reg_2723 <= buff_s_out_5_q1;
        buff_s_out_6_load_1_reg_2768 <= buff_s_out_6_q0;
        buff_s_out_6_load_reg_2728 <= buff_s_out_6_q1;
        buff_s_out_7_load_1_reg_2773 <= buff_s_out_7_q0;
        buff_s_out_7_load_reg_2733 <= buff_s_out_7_q1;
        buff_s_out_load_1_reg_2738 <= buff_s_out_q0;
        buff_s_out_load_reg_2698 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_2_reg_2863 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2903 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_2868 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_2908 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_2873 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_2913 <= buff_s_out_3_q1;
        buff_s_out_4_load_2_reg_2878 <= buff_s_out_4_q0;
        buff_s_out_4_load_3_reg_2918 <= buff_s_out_4_q1;
        buff_s_out_5_load_2_reg_2883 <= buff_s_out_5_q0;
        buff_s_out_5_load_3_reg_2923 <= buff_s_out_5_q1;
        buff_s_out_6_load_2_reg_2888 <= buff_s_out_6_q0;
        buff_s_out_6_load_3_reg_2928 <= buff_s_out_6_q1;
        buff_s_out_7_load_2_reg_2893 <= buff_s_out_7_q0;
        buff_s_out_7_load_3_reg_2933 <= buff_s_out_7_q1;
        buff_s_out_load_2_reg_2858 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2898 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_4_reg_3023 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_3063 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_3028 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_3068 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_3033 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_3073 <= buff_s_out_3_q1;
        buff_s_out_4_load_4_reg_3038 <= buff_s_out_4_q0;
        buff_s_out_4_load_5_reg_3078 <= buff_s_out_4_q1;
        buff_s_out_5_load_4_reg_3043 <= buff_s_out_5_q0;
        buff_s_out_5_load_5_reg_3083 <= buff_s_out_5_q1;
        buff_s_out_6_load_4_reg_3048 <= buff_s_out_6_q0;
        buff_s_out_6_load_5_reg_3088 <= buff_s_out_6_q1;
        buff_s_out_7_load_4_reg_3053 <= buff_s_out_7_q0;
        buff_s_out_7_load_5_reg_3093 <= buff_s_out_7_q1;
        buff_s_out_load_4_reg_3018 <= buff_s_out_q0;
        buff_s_out_load_5_reg_3058 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_6_reg_3103 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_3143 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_3108 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_3148 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_3113 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_3153 <= buff_s_out_3_q1;
        buff_s_out_4_load_6_reg_3118 <= buff_s_out_4_q0;
        buff_s_out_4_load_7_reg_3158 <= buff_s_out_4_q1;
        buff_s_out_5_load_6_reg_3123 <= buff_s_out_5_q0;
        buff_s_out_5_load_7_reg_3163 <= buff_s_out_5_q1;
        buff_s_out_6_load_6_reg_3128 <= buff_s_out_6_q0;
        buff_s_out_6_load_7_reg_3168 <= buff_s_out_6_q1;
        buff_s_out_7_load_6_reg_3133 <= buff_s_out_7_q0;
        buff_s_out_7_load_7_reg_3173 <= buff_s_out_7_q1;
        buff_s_out_load_6_reg_3098 <= buff_s_out_q0;
        buff_s_out_load_7_reg_3138 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_2610 <= trunc_ln13_fu_1767_p1;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1525_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1717_ap_done == 1'b0)) begin
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
    if ((grp_bicg_Pipeline_lprd_2_fu_1496_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_bicg_Pipeline_lpwr_fu_1717_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_bicg_Pipeline_lpwr_fu_1717_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1525_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1496_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_2_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd2))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_3_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_4_address0;
    end else begin
        buff_p_4_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_4_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd4))) begin
        buff_p_4_we0_local = 1'b1;
    end else begin
        buff_p_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_5_address0;
    end else begin
        buff_p_5_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_5_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd5))) begin
        buff_p_5_we0_local = 1'b1;
    end else begin
        buff_p_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_6_address0;
    end else begin
        buff_p_6_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_6_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd6))) begin
        buff_p_6_we0_local = 1'b1;
    end else begin
        buff_p_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_7_address0;
    end else begin
        buff_p_7_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_7_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd7))) begin
        buff_p_7_we0_local = 1'b1;
    end else begin
        buff_p_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_p_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_ce0;
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
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_ce0;
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
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd2))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_ce0;
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
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_address0;
    end else begin
        buff_q_out_4_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_ce0;
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
        buff_q_out_4_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_d0;
    end else begin
        buff_q_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_4_we0;
    end else begin
        buff_q_out_4_we0 = buff_q_out_4_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd4))) begin
        buff_q_out_4_we0_local = 1'b1;
    end else begin
        buff_q_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_address0;
    end else begin
        buff_q_out_5_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_ce0;
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
        buff_q_out_5_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_d0;
    end else begin
        buff_q_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_5_we0;
    end else begin
        buff_q_out_5_we0 = buff_q_out_5_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd5))) begin
        buff_q_out_5_we0_local = 1'b1;
    end else begin
        buff_q_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_address0;
    end else begin
        buff_q_out_6_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_ce0;
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
        buff_q_out_6_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_d0;
    end else begin
        buff_q_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_6_we0;
    end else begin
        buff_q_out_6_we0 = buff_q_out_6_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd6))) begin
        buff_q_out_6_we0_local = 1'b1;
    end else begin
        buff_q_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_address0;
    end else begin
        buff_q_out_7_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_ce0;
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
        buff_q_out_7_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_d0;
    end else begin
        buff_q_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_7_we0;
    end else begin
        buff_q_out_7_we0 = buff_q_out_7_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd7))) begin
        buff_q_out_7_we0_local = 1'b1;
    end else begin
        buff_q_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_ce0;
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
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_2_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd2))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_3_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_4_address0;
    end else begin
        buff_r_4_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_4_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd4))) begin
        buff_r_4_we0_local = 1'b1;
    end else begin
        buff_r_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_5_address0;
    end else begin
        buff_r_5_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_5_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd5))) begin
        buff_r_5_we0_local = 1'b1;
    end else begin
        buff_r_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_6_address0;
    end else begin
        buff_r_6_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_6_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd6))) begin
        buff_r_6_we0_local = 1'b1;
    end else begin
        buff_r_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_7_address0;
    end else begin
        buff_r_7_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_7_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd7))) begin
        buff_r_7_we0_local = 1'b1;
    end else begin
        buff_r_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1782_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1525_buff_r_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_2943;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2783;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2623;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_2983;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2823;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2663;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_4961_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3345_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_1729_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_113_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_5769_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4153_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_2537_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_921_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_2948;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_2788;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_2628;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_2988;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_2828;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_2668;
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
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_5062_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3446_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_1830_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_214_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_5870_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4254_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_2638_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_1022_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd2)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_2953;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_2793;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_2633;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_2993;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_2833;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_2673;
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
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_5163_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3547_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_1931_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_315_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_5971_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4355_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_2739_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_1123_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd3)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_4_address0;
    end else begin
        buff_s_out_4_address0 = buff_s_out_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_6_reg_2958;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_4_reg_2798;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_2_reg_2638;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_address0_local = 64'd1;
    end else begin
        buff_s_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_7_reg_2998;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_5_reg_2838;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_3_reg_2678;
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
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_4_ce0;
    end else begin
        buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_4_ce1_local = 1'b1;
    end else begin
        buff_s_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_5264_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3648_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_2032_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_416_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_d0_local = 32'd0;
    end else begin
        buff_s_out_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_6072_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4456_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_2840_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_1224_out;
    end else begin
        buff_s_out_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd4)))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_4_we1_local = 1'b1;
    end else begin
        buff_s_out_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_5_address0;
    end else begin
        buff_s_out_5_address0 = buff_s_out_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_6_reg_2963;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_4_reg_2803;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_2_reg_2643;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_address0_local = 64'd1;
    end else begin
        buff_s_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_7_reg_3003;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_5_reg_2843;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_3_reg_2683;
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
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_5_ce0;
    end else begin
        buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_5_ce1_local = 1'b1;
    end else begin
        buff_s_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_5365_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3749_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_2133_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_517_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_d0_local = 32'd0;
    end else begin
        buff_s_out_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_6173_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4557_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_2941_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_1325_out;
    end else begin
        buff_s_out_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd5)))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_5_we1_local = 1'b1;
    end else begin
        buff_s_out_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_6_address0;
    end else begin
        buff_s_out_6_address0 = buff_s_out_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_6_reg_2968;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_4_reg_2808;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_2_reg_2648;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_address0_local = 64'd1;
    end else begin
        buff_s_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_7_reg_3008;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_5_reg_2848;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_3_reg_2688;
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
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_6_ce0;
    end else begin
        buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_6_ce1_local = 1'b1;
    end else begin
        buff_s_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_5466_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3850_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_2234_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_618_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_d0_local = 32'd0;
    end else begin
        buff_s_out_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_6274_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4658_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_3042_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_1426_out;
    end else begin
        buff_s_out_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd6)))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_6_we1_local = 1'b1;
    end else begin
        buff_s_out_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_7_address0;
    end else begin
        buff_s_out_7_address0 = buff_s_out_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_6_reg_2973;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_4_reg_2813;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_2_reg_2653;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_address0_local = 64'd1;
    end else begin
        buff_s_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_7_reg_3013;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_5_reg_2853;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_3_reg_2693;
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
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_7_ce0;
    end else begin
        buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_7_ce1_local = 1'b1;
    end else begin
        buff_s_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_5567_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3951_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_2335_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_719_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_d0_local = 32'd0;
    end else begin
        buff_s_out_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_6375_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4759_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_3143_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_1527_out;
    end else begin
        buff_s_out_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd7)))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_7_we1_local = 1'b1;
    end else begin
        buff_s_out_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_2938;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2778;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2618;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_address0_local = zext_ln5_fu_1782_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_2978;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2818;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2658;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1717_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_4860_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_3244_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add_1628_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1525_add12_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_5668_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_4052_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_2436_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1525_add_820_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1770_p1 == 3'd0)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3178_ce = grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3178_ce = grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_ce;
    end else begin
        grp_fu_3178_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3178_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3178_p0 = grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_din0;
    end else begin
        grp_fu_3178_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3178_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3178_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3178_p1 = grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3178_p_din1;
    end else begin
        grp_fu_3178_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3182_ce = grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3182_ce = grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_ce;
    end else begin
        grp_fu_3182_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3182_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3182_p0 = grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_din0;
    end else begin
        grp_fu_3182_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3182_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1689_grp_fu_3182_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3182_p1 = grp_bicg_Pipeline_lp1_fu_1525_grp_fu_3182_p_din1;
    end else begin
        grp_fu_3182_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1717_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1717_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1749_p2 == 1'd1))) begin
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
            if (((grp_bicg_Pipeline_lprd_2_fu_1496_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_bicg_Pipeline_lp1_fu_1525_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (grp_bicg_Pipeline_lpwr_fu_1717_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_3_ce0;
assign A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_4_address0;
assign A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_4_ce0;
assign A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_5_address0;
assign A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_5_ce0;
assign A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_6_address0;
assign A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_6_ce0;
assign A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_7_address0;
assign A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1496_A_7_ce0;
assign add_ln13_fu_1755_p2 = (i_fu_106 + 7'd1);
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
assign bitcast_ln14_fu_1818_p1 = p_q0;
assign bitcast_ln15_fu_1830_p1 = r_q0;
assign buff_s_out_1_addr_2_reg_2623 = 64'd2;
assign buff_s_out_1_addr_3_reg_2663 = 64'd3;
assign buff_s_out_1_addr_4_reg_2783 = 64'd4;
assign buff_s_out_1_addr_5_reg_2823 = 64'd5;
assign buff_s_out_1_addr_6_reg_2943 = 64'd6;
assign buff_s_out_1_addr_7_reg_2983 = 64'd7;
assign buff_s_out_2_addr_2_reg_2628 = 64'd2;
assign buff_s_out_2_addr_3_reg_2668 = 64'd3;
assign buff_s_out_2_addr_4_reg_2788 = 64'd4;
assign buff_s_out_2_addr_5_reg_2828 = 64'd5;
assign buff_s_out_2_addr_6_reg_2948 = 64'd6;
assign buff_s_out_2_addr_7_reg_2988 = 64'd7;
assign buff_s_out_3_addr_2_reg_2633 = 64'd2;
assign buff_s_out_3_addr_3_reg_2673 = 64'd3;
assign buff_s_out_3_addr_4_reg_2793 = 64'd4;
assign buff_s_out_3_addr_5_reg_2833 = 64'd5;
assign buff_s_out_3_addr_6_reg_2953 = 64'd6;
assign buff_s_out_3_addr_7_reg_2993 = 64'd7;
assign buff_s_out_4_addr_2_reg_2638 = 64'd2;
assign buff_s_out_4_addr_3_reg_2678 = 64'd3;
assign buff_s_out_4_addr_4_reg_2798 = 64'd4;
assign buff_s_out_4_addr_5_reg_2838 = 64'd5;
assign buff_s_out_4_addr_6_reg_2958 = 64'd6;
assign buff_s_out_4_addr_7_reg_2998 = 64'd7;
assign buff_s_out_5_addr_2_reg_2643 = 64'd2;
assign buff_s_out_5_addr_3_reg_2683 = 64'd3;
assign buff_s_out_5_addr_4_reg_2803 = 64'd4;
assign buff_s_out_5_addr_5_reg_2843 = 64'd5;
assign buff_s_out_5_addr_6_reg_2963 = 64'd6;
assign buff_s_out_5_addr_7_reg_3003 = 64'd7;
assign buff_s_out_6_addr_2_reg_2648 = 64'd2;
assign buff_s_out_6_addr_3_reg_2688 = 64'd3;
assign buff_s_out_6_addr_4_reg_2808 = 64'd4;
assign buff_s_out_6_addr_5_reg_2848 = 64'd5;
assign buff_s_out_6_addr_6_reg_2968 = 64'd6;
assign buff_s_out_6_addr_7_reg_3008 = 64'd7;
assign buff_s_out_7_addr_2_reg_2653 = 64'd2;
assign buff_s_out_7_addr_3_reg_2693 = 64'd3;
assign buff_s_out_7_addr_4_reg_2813 = 64'd4;
assign buff_s_out_7_addr_5_reg_2853 = 64'd5;
assign buff_s_out_7_addr_6_reg_2973 = 64'd6;
assign buff_s_out_7_addr_7_reg_3013 = 64'd7;
assign buff_s_out_addr_2_reg_2618 = 64'd2;
assign buff_s_out_addr_3_reg_2658 = 64'd3;
assign buff_s_out_addr_4_reg_2778 = 64'd4;
assign buff_s_out_addr_5_reg_2818 = 64'd5;
assign buff_s_out_addr_6_reg_2938 = 64'd6;
assign buff_s_out_addr_7_reg_2978 = 64'd7;
assign grp_bicg_Pipeline_lp1_fu_1525_ap_start = grp_bicg_Pipeline_lp1_fu_1525_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_1689_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1496_ap_start = grp_bicg_Pipeline_lprd_2_fu_1496_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1717_ap_start = grp_bicg_Pipeline_lpwr_fu_1717_ap_start_reg;
assign icmp_ln13_fu_1749_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1773_p4 = {{i_fu_106[5:3]}};
assign p_address0 = zext_ln13_fu_1761_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1717_q_out_din;
assign r_address0 = zext_ln13_fu_1761_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1717_s_out_din;
assign trunc_ln13_1_fu_1770_p1 = i_fu_106[2:0];
assign trunc_ln13_fu_1767_p1 = i_fu_106[5:0];
assign zext_ln13_fu_1761_p1 = i_fu_106;
assign zext_ln5_fu_1782_p1 = lshr_ln5_fu_1773_p4;
endmodule 