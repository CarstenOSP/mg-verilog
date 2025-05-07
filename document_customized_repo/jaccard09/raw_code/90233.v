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
wire   [6:0] add_ln13_fu_1812_p2;
reg   [6:0] add_ln13_reg_2559;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1824_p1;
reg   [5:0] trunc_ln13_reg_2670;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln13_2_fu_1830_p1;
reg   [0:0] trunc_ln13_2_reg_2678;
wire   [2:0] buff_s_out_addr_2_reg_2683;
wire    ap_CS_fsm_state6;
wire   [2:0] buff_s_out_1_addr_2_reg_2688;
wire   [2:0] buff_s_out_2_addr_2_reg_2693;
wire   [2:0] buff_s_out_3_addr_2_reg_2698;
wire   [2:0] buff_s_out_4_addr_2_reg_2703;
wire   [2:0] buff_s_out_5_addr_2_reg_2708;
wire   [2:0] buff_s_out_6_addr_2_reg_2713;
wire   [2:0] buff_s_out_7_addr_2_reg_2718;
wire   [2:0] buff_s_out_addr_3_reg_2723;
wire   [2:0] buff_s_out_1_addr_3_reg_2728;
wire   [2:0] buff_s_out_2_addr_3_reg_2733;
wire   [2:0] buff_s_out_3_addr_3_reg_2738;
wire   [2:0] buff_s_out_4_addr_3_reg_2743;
wire   [2:0] buff_s_out_5_addr_3_reg_2748;
wire   [2:0] buff_s_out_6_addr_3_reg_2753;
wire   [2:0] buff_s_out_7_addr_3_reg_2758;
reg   [31:0] buff_s_out_load_reg_2763;
reg   [31:0] buff_s_out_1_load_reg_2768;
reg   [31:0] buff_s_out_2_load_reg_2773;
reg   [31:0] buff_s_out_3_load_reg_2778;
reg   [31:0] buff_s_out_4_load_reg_2783;
reg   [31:0] buff_s_out_5_load_reg_2788;
reg   [31:0] buff_s_out_6_load_reg_2793;
reg   [31:0] buff_s_out_7_load_reg_2798;
reg   [31:0] buff_s_out_load_1_reg_2803;
reg   [31:0] buff_s_out_1_load_1_reg_2808;
reg   [31:0] buff_s_out_2_load_1_reg_2813;
reg   [31:0] buff_s_out_3_load_1_reg_2818;
reg   [31:0] buff_s_out_4_load_1_reg_2823;
reg   [31:0] buff_s_out_5_load_1_reg_2828;
reg   [31:0] buff_s_out_6_load_1_reg_2833;
reg   [31:0] buff_s_out_7_load_1_reg_2838;
wire   [2:0] buff_s_out_addr_4_reg_2843;
wire    ap_CS_fsm_state7;
wire   [2:0] buff_s_out_1_addr_4_reg_2848;
wire   [2:0] buff_s_out_2_addr_4_reg_2853;
wire   [2:0] buff_s_out_3_addr_4_reg_2858;
wire   [2:0] buff_s_out_4_addr_4_reg_2863;
wire   [2:0] buff_s_out_5_addr_4_reg_2868;
wire   [2:0] buff_s_out_6_addr_4_reg_2873;
wire   [2:0] buff_s_out_7_addr_4_reg_2878;
wire   [2:0] buff_s_out_addr_5_reg_2883;
wire   [2:0] buff_s_out_1_addr_5_reg_2888;
wire   [2:0] buff_s_out_2_addr_5_reg_2893;
wire   [2:0] buff_s_out_3_addr_5_reg_2898;
wire   [2:0] buff_s_out_4_addr_5_reg_2903;
wire   [2:0] buff_s_out_5_addr_5_reg_2908;
wire   [2:0] buff_s_out_6_addr_5_reg_2913;
wire   [2:0] buff_s_out_7_addr_5_reg_2918;
reg   [31:0] buff_s_out_load_2_reg_2923;
reg   [31:0] buff_s_out_1_load_2_reg_2928;
reg   [31:0] buff_s_out_2_load_2_reg_2933;
reg   [31:0] buff_s_out_3_load_2_reg_2938;
reg   [31:0] buff_s_out_4_load_2_reg_2943;
reg   [31:0] buff_s_out_5_load_2_reg_2948;
reg   [31:0] buff_s_out_6_load_2_reg_2953;
reg   [31:0] buff_s_out_7_load_2_reg_2958;
reg   [31:0] buff_s_out_load_3_reg_2963;
reg   [31:0] buff_s_out_1_load_3_reg_2968;
reg   [31:0] buff_s_out_2_load_3_reg_2973;
reg   [31:0] buff_s_out_3_load_3_reg_2978;
reg   [31:0] buff_s_out_4_load_3_reg_2983;
reg   [31:0] buff_s_out_5_load_3_reg_2988;
reg   [31:0] buff_s_out_6_load_3_reg_2993;
reg   [31:0] buff_s_out_7_load_3_reg_2998;
wire   [2:0] buff_s_out_addr_6_reg_3003;
wire    ap_CS_fsm_state8;
wire   [2:0] buff_s_out_1_addr_6_reg_3008;
wire   [2:0] buff_s_out_2_addr_6_reg_3013;
wire   [2:0] buff_s_out_3_addr_6_reg_3018;
wire   [2:0] buff_s_out_4_addr_6_reg_3023;
wire   [2:0] buff_s_out_5_addr_6_reg_3028;
wire   [2:0] buff_s_out_6_addr_6_reg_3033;
wire   [2:0] buff_s_out_7_addr_6_reg_3038;
wire   [2:0] buff_s_out_addr_7_reg_3043;
wire   [2:0] buff_s_out_1_addr_7_reg_3048;
wire   [2:0] buff_s_out_2_addr_7_reg_3053;
wire   [2:0] buff_s_out_3_addr_7_reg_3058;
wire   [2:0] buff_s_out_4_addr_7_reg_3063;
wire   [2:0] buff_s_out_5_addr_7_reg_3068;
wire   [2:0] buff_s_out_6_addr_7_reg_3073;
wire   [2:0] buff_s_out_7_addr_7_reg_3078;
reg   [31:0] buff_s_out_load_4_reg_3083;
reg   [31:0] buff_s_out_1_load_4_reg_3088;
reg   [31:0] buff_s_out_2_load_4_reg_3093;
reg   [31:0] buff_s_out_3_load_4_reg_3098;
reg   [31:0] buff_s_out_4_load_4_reg_3103;
reg   [31:0] buff_s_out_5_load_4_reg_3108;
reg   [31:0] buff_s_out_6_load_4_reg_3113;
reg   [31:0] buff_s_out_7_load_4_reg_3118;
reg   [31:0] buff_s_out_load_5_reg_3123;
reg   [31:0] buff_s_out_1_load_5_reg_3128;
reg   [31:0] buff_s_out_2_load_5_reg_3133;
reg   [31:0] buff_s_out_3_load_5_reg_3138;
reg   [31:0] buff_s_out_4_load_5_reg_3143;
reg   [31:0] buff_s_out_5_load_5_reg_3148;
reg   [31:0] buff_s_out_6_load_5_reg_3153;
reg   [31:0] buff_s_out_7_load_5_reg_3158;
reg   [31:0] buff_s_out_load_6_reg_3163;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_s_out_1_load_6_reg_3168;
reg   [31:0] buff_s_out_2_load_6_reg_3173;
reg   [31:0] buff_s_out_3_load_6_reg_3178;
reg   [31:0] buff_s_out_4_load_6_reg_3183;
reg   [31:0] buff_s_out_5_load_6_reg_3188;
reg   [31:0] buff_s_out_6_load_6_reg_3193;
reg   [31:0] buff_s_out_7_load_6_reg_3198;
reg   [31:0] buff_s_out_load_7_reg_3203;
reg   [31:0] buff_s_out_1_load_7_reg_3208;
reg   [31:0] buff_s_out_2_load_7_reg_3213;
reg   [31:0] buff_s_out_3_load_7_reg_3218;
reg   [31:0] buff_s_out_4_load_7_reg_3223;
reg   [31:0] buff_s_out_5_load_7_reg_3228;
reg   [31:0] buff_s_out_6_load_7_reg_3233;
reg   [31:0] buff_s_out_7_load_7_reg_3238;
reg   [7:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [7:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [7:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg   [7:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg   [7:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg    buff_A_4_ce1;
wire   [31:0] buff_A_4_q1;
reg   [7:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg    buff_A_5_ce1;
wire   [31:0] buff_A_5_q1;
reg   [7:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg    buff_A_6_ce1;
wire   [31:0] buff_A_6_q1;
reg   [7:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg    buff_A_7_ce1;
wire   [31:0] buff_A_7_q1;
reg   [7:0] buff_A_8_address0;
reg    buff_A_8_ce0;
reg    buff_A_8_we0;
wire   [31:0] buff_A_8_q0;
reg    buff_A_8_ce1;
wire   [31:0] buff_A_8_q1;
reg   [7:0] buff_A_9_address0;
reg    buff_A_9_ce0;
reg    buff_A_9_we0;
wire   [31:0] buff_A_9_q0;
reg    buff_A_9_ce1;
wire   [31:0] buff_A_9_q1;
reg   [7:0] buff_A_10_address0;
reg    buff_A_10_ce0;
reg    buff_A_10_we0;
wire   [31:0] buff_A_10_q0;
reg    buff_A_10_ce1;
wire   [31:0] buff_A_10_q1;
reg   [7:0] buff_A_11_address0;
reg    buff_A_11_ce0;
reg    buff_A_11_we0;
wire   [31:0] buff_A_11_q0;
reg    buff_A_11_ce1;
wire   [31:0] buff_A_11_q1;
reg   [7:0] buff_A_12_address0;
reg    buff_A_12_ce0;
reg    buff_A_12_we0;
wire   [31:0] buff_A_12_q0;
reg    buff_A_12_ce1;
wire   [31:0] buff_A_12_q1;
reg   [7:0] buff_A_13_address0;
reg    buff_A_13_ce0;
reg    buff_A_13_we0;
wire   [31:0] buff_A_13_q0;
reg    buff_A_13_ce1;
wire   [31:0] buff_A_13_q1;
reg   [7:0] buff_A_14_address0;
reg    buff_A_14_ce0;
reg    buff_A_14_we0;
wire   [31:0] buff_A_14_q0;
reg    buff_A_14_ce1;
wire   [31:0] buff_A_14_q1;
reg   [7:0] buff_A_15_address0;
reg    buff_A_15_ce0;
reg    buff_A_15_we0;
wire   [31:0] buff_A_15_q0;
reg    buff_A_15_ce1;
wire   [31:0] buff_A_15_q1;
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
wire    grp_bicg_Pipeline_lprd_2_fu_1528_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_0_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1528_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_A_7_ce0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_d0;
wire    grp_bicg_Pipeline_lp1_fu_1566_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1566_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1566_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1566_ap_ready;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_address1;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_fu_1566_buff_r_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1566_buff_r_7_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_63111_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_63111_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_62110_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_62110_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_61109_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_61109_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_60108_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_60108_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_59107_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_59107_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_58106_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_58106_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_57105_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_57105_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_56104_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_56104_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_55103_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_55103_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_54102_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_54102_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_53101_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_53101_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_52100_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_52100_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_5199_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_5199_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_5098_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_5098_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4997_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4997_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4896_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4896_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4795_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4795_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4694_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4694_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4593_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4593_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4492_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4492_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4391_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4391_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4290_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4290_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4189_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4189_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_4088_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_4088_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3987_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3987_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3886_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3886_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3785_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3785_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3684_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3684_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3583_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3583_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3482_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3482_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3381_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3381_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3280_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3280_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3179_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3179_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_3078_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_3078_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2977_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2977_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2876_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2876_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2775_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2775_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2674_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2674_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2573_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2573_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2472_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2472_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2371_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2371_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2270_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2270_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2169_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2169_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_2068_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_2068_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1967_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1967_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1866_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1866_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1765_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1765_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1664_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1664_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1563_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1563_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1462_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1462_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1361_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1361_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1260_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1260_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1159_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1159_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_1058_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_1058_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_957_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_957_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_856_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_856_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_755_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_755_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_654_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_654_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_553_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_553_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_452_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_452_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_351_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_351_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_250_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_250_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_3_149_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_3_149_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_add_348_out;
wire    grp_bicg_Pipeline_lp1_fu_1566_add_348_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_ce;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_ready;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_1_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_2_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_3_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_4_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_5_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_6_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_7_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_8_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_9_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_10_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_11_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_12_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_13_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_14_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_15_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1774_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1774_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1774_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1774_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1774_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1774_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1774_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1774_q_out_write;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_7_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1528_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_bicg_Pipeline_lp1_fu_1566_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg    grp_bicg_Pipeline_lpwr_fu_1774_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln13_fu_1818_p1;
wire   [0:0] icmp_ln13_fu_1806_p2;
wire   [63:0] zext_ln5_fu_1842_p1;
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
wire   [2:0] trunc_ln13_1_fu_1827_p1;
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
wire   [31:0] bitcast_ln14_fu_1878_p1;
reg    buff_p_6_ce0_local;
reg    buff_r_6_we0_local;
wire   [31:0] bitcast_ln15_fu_1890_p1;
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
wire   [2:0] lshr_ln5_1_fu_1833_p4;
wire   [31:0] grp_fu_3243_p2;
reg   [31:0] grp_fu_3243_p0;
reg   [31:0] grp_fu_3243_p1;
reg    grp_fu_3243_ce;
wire   [31:0] grp_fu_3247_p2;
reg   [31:0] grp_fu_3247_p0;
reg   [31:0] grp_fu_3247_p1;
reg    grp_fu_3247_ce;
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
#0 grp_bicg_Pipeline_lprd_2_fu_1528_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1566_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1774_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_8_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_8_address0),.ce0(buff_A_8_ce0),.we0(buff_A_8_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_d0),.q0(buff_A_8_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_address1),.ce1(buff_A_8_ce1),.q1(buff_A_8_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_9_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_9_address0),.ce0(buff_A_9_ce0),.we0(buff_A_9_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_d0),.q0(buff_A_9_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_address1),.ce1(buff_A_9_ce1),.q1(buff_A_9_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_10_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_10_address0),.ce0(buff_A_10_ce0),.we0(buff_A_10_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_d0),.q0(buff_A_10_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_address1),.ce1(buff_A_10_ce1),.q1(buff_A_10_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_11_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_11_address0),.ce0(buff_A_11_ce0),.we0(buff_A_11_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_d0),.q0(buff_A_11_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_address1),.ce1(buff_A_11_ce1),.q1(buff_A_11_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_12_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_12_address0),.ce0(buff_A_12_ce0),.we0(buff_A_12_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_d0),.q0(buff_A_12_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_address1),.ce1(buff_A_12_ce1),.q1(buff_A_12_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_13_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_13_address0),.ce0(buff_A_13_ce0),.we0(buff_A_13_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_d0),.q0(buff_A_13_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_address1),.ce1(buff_A_13_ce1),.q1(buff_A_13_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_14_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_14_address0),.ce0(buff_A_14_ce0),.we0(buff_A_14_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_d0),.q0(buff_A_14_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_address1),.ce1(buff_A_14_ce1),.q1(buff_A_14_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_15_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_15_address0),.ce0(buff_A_15_ce0),.we0(buff_A_15_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_d0),.q0(buff_A_15_q0),.address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_address1),.ce1(buff_A_15_ce1),.q1(buff_A_15_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_4_address0),.ce0(buff_p_4_ce0),.we0(buff_p_4_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_5_address0),.ce0(buff_p_5_ce0),.we0(buff_p_5_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_6_address0),.ce0(buff_p_6_ce0),.we0(buff_p_6_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_7_address0),.ce0(buff_p_7_ce0),.we0(buff_p_7_we0_local),.d0(bitcast_ln14_fu_1878_p1),.q0(buff_p_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_4_address0),.ce0(buff_r_4_ce0),.we0(buff_r_4_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_5_address0),.ce0(buff_r_5_ce0),.we0(buff_r_5_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_6_address0),.ce0(buff_r_6_ce0),.we0(buff_r_6_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_7_address0),.ce0(buff_r_7_ce0),.we0(buff_r_7_we0_local),.d0(bitcast_ln15_fu_1890_p1),.q0(buff_r_7_q0));
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
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1528(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1528_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1528_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1528_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1528_ap_ready),.i(trunc_ln13_reg_2670),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_4_address0),.A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_5_address0),.A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_6_address0),.A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1528_A_7_address0),.A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_d0),.buff_A_8_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_ce0),.buff_A_8_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_we0),.buff_A_8_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_d0),.buff_A_9_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_ce0),.buff_A_9_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_we0),.buff_A_9_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_d0),.buff_A_10_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_ce0),.buff_A_10_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_we0),.buff_A_10_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_d0),.buff_A_11_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_ce0),.buff_A_11_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_we0),.buff_A_11_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_d0),.buff_A_12_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_ce0),.buff_A_12_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_we0),.buff_A_12_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_d0),.buff_A_13_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_ce0),.buff_A_13_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_we0),.buff_A_13_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_d0),.buff_A_14_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_ce0),.buff_A_14_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_we0),.buff_A_14_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_d0),.buff_A_15_address0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_ce0),.buff_A_15_we0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_we0),.buff_A_15_d0(grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_d0),.empty(trunc_ln13_2_reg_2678));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1566(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1566_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1566_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1566_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1566_ap_ready),.buff_s_out_7_load_7(buff_s_out_7_load_7_reg_3238),.buff_s_out_6_load_7(buff_s_out_6_load_7_reg_3233),.buff_s_out_5_load_7(buff_s_out_5_load_7_reg_3228),.buff_s_out_4_load_7(buff_s_out_4_load_7_reg_3223),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_3218),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_3213),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_3208),.buff_s_out_load_7(buff_s_out_load_7_reg_3203),.buff_s_out_7_load_6(buff_s_out_7_load_6_reg_3198),.buff_s_out_6_load_6(buff_s_out_6_load_6_reg_3193),.buff_s_out_5_load_6(buff_s_out_5_load_6_reg_3188),.buff_s_out_4_load_6(buff_s_out_4_load_6_reg_3183),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_3178),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_3173),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_3168),.buff_s_out_load_6(buff_s_out_load_6_reg_3163),.buff_s_out_7_load_5(buff_s_out_7_load_5_reg_3158),.buff_s_out_6_load_5(buff_s_out_6_load_5_reg_3153),.buff_s_out_5_load_5(buff_s_out_5_load_5_reg_3148),.buff_s_out_4_load_5(buff_s_out_4_load_5_reg_3143),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_3138),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_3133),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_3128),.buff_s_out_load_5(buff_s_out_load_5_reg_3123),.buff_s_out_7_load_4(buff_s_out_7_load_4_reg_3118),.buff_s_out_6_load_4(buff_s_out_6_load_4_reg_3113),.buff_s_out_5_load_4(buff_s_out_5_load_4_reg_3108),.buff_s_out_4_load_4(buff_s_out_4_load_4_reg_3103),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_3098),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_3093),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_3088),.buff_s_out_load_4(buff_s_out_load_4_reg_3083),.buff_s_out_7_load_3(buff_s_out_7_load_3_reg_2998),.buff_s_out_6_load_3(buff_s_out_6_load_3_reg_2993),.buff_s_out_5_load_3(buff_s_out_5_load_3_reg_2988),.buff_s_out_4_load_3(buff_s_out_4_load_3_reg_2983),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_2978),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_2973),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2968),.buff_s_out_load_3(buff_s_out_load_3_reg_2963),.buff_s_out_7_load_2(buff_s_out_7_load_2_reg_2958),.buff_s_out_6_load_2(buff_s_out_6_load_2_reg_2953),.buff_s_out_5_load_2(buff_s_out_5_load_2_reg_2948),.buff_s_out_4_load_2(buff_s_out_4_load_2_reg_2943),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_2938),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_2933),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2928),.buff_s_out_load_2(buff_s_out_load_2_reg_2923),.buff_s_out_7_load_1(buff_s_out_7_load_1_reg_2838),.buff_s_out_6_load_1(buff_s_out_6_load_1_reg_2833),.buff_s_out_5_load_1(buff_s_out_5_load_1_reg_2828),.buff_s_out_4_load_1(buff_s_out_4_load_1_reg_2823),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_2818),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_2813),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2808),.buff_s_out_load_1(buff_s_out_load_1_reg_2803),.buff_s_out_7_load(buff_s_out_7_load_reg_2798),.buff_s_out_6_load(buff_s_out_6_load_reg_2793),.buff_s_out_5_load(buff_s_out_5_load_reg_2788),.buff_s_out_4_load(buff_s_out_4_load_reg_2783),.buff_s_out_3_load(buff_s_out_3_load_reg_2778),.buff_s_out_2_load(buff_s_out_2_load_reg_2773),.buff_s_out_1_load(buff_s_out_1_load_reg_2768),.buff_s_out_load(buff_s_out_load_reg_2763),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_8_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_8_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_address1),.buff_A_8_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_ce1),.buff_A_8_q1(buff_A_8_q1),.buff_A_9_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_9_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_address1),.buff_A_9_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_ce1),.buff_A_9_q1(buff_A_9_q1),.buff_A_10_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_10_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_address1),.buff_A_10_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_ce1),.buff_A_10_q1(buff_A_10_q1),.buff_A_11_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_11_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_address1),.buff_A_11_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_ce1),.buff_A_11_q1(buff_A_11_q1),.buff_A_12_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_12_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_address1),.buff_A_12_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_ce1),.buff_A_12_q1(buff_A_12_q1),.buff_A_13_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_13_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_address1),.buff_A_13_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_ce1),.buff_A_13_q1(buff_A_13_q1),.buff_A_14_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_14_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_address1),.buff_A_14_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_ce1),.buff_A_14_q1(buff_A_14_q1),.buff_A_15_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_15_address1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_address1),.buff_A_15_ce1(grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_ce1),.buff_A_15_q1(buff_A_15_q1),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_4_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_4_address0),.buff_r_4_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_4_ce0),.buff_r_4_q0(buff_r_4_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_5_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_5_address0),.buff_r_5_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_5_ce0),.buff_r_5_q0(buff_r_5_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_6_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_6_address0),.buff_r_6_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_6_ce0),.buff_r_6_q0(buff_r_6_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_r_7_address0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_7_address0),.buff_r_7_ce0(grp_bicg_Pipeline_lp1_fu_1566_buff_r_7_ce0),.buff_r_7_q0(buff_r_7_q0),.add_3_63111_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_63111_out),.add_3_63111_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_63111_out_ap_vld),.add_3_62110_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_62110_out),.add_3_62110_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_62110_out_ap_vld),.add_3_61109_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_61109_out),.add_3_61109_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_61109_out_ap_vld),.add_3_60108_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_60108_out),.add_3_60108_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_60108_out_ap_vld),.add_3_59107_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_59107_out),.add_3_59107_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_59107_out_ap_vld),.add_3_58106_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_58106_out),.add_3_58106_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_58106_out_ap_vld),.add_3_57105_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_57105_out),.add_3_57105_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_57105_out_ap_vld),.add_3_56104_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_56104_out),.add_3_56104_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_56104_out_ap_vld),.add_3_55103_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_55103_out),.add_3_55103_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_55103_out_ap_vld),.add_3_54102_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_54102_out),.add_3_54102_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_54102_out_ap_vld),.add_3_53101_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_53101_out),.add_3_53101_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_53101_out_ap_vld),.add_3_52100_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_52100_out),.add_3_52100_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_52100_out_ap_vld),.add_3_5199_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_5199_out),.add_3_5199_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_5199_out_ap_vld),.add_3_5098_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_5098_out),.add_3_5098_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_5098_out_ap_vld),.add_3_4997_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4997_out),.add_3_4997_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4997_out_ap_vld),.add_3_4896_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4896_out),.add_3_4896_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4896_out_ap_vld),.add_3_4795_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4795_out),.add_3_4795_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4795_out_ap_vld),.add_3_4694_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4694_out),.add_3_4694_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4694_out_ap_vld),.add_3_4593_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4593_out),.add_3_4593_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4593_out_ap_vld),.add_3_4492_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4492_out),.add_3_4492_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4492_out_ap_vld),.add_3_4391_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4391_out),.add_3_4391_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4391_out_ap_vld),.add_3_4290_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4290_out),.add_3_4290_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4290_out_ap_vld),.add_3_4189_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4189_out),.add_3_4189_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4189_out_ap_vld),.add_3_4088_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_4088_out),.add_3_4088_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_4088_out_ap_vld),.add_3_3987_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3987_out),.add_3_3987_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3987_out_ap_vld),.add_3_3886_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3886_out),.add_3_3886_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3886_out_ap_vld),.add_3_3785_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3785_out),.add_3_3785_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3785_out_ap_vld),.add_3_3684_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3684_out),.add_3_3684_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3684_out_ap_vld),.add_3_3583_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3583_out),.add_3_3583_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3583_out_ap_vld),.add_3_3482_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3482_out),.add_3_3482_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3482_out_ap_vld),.add_3_3381_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3381_out),.add_3_3381_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3381_out_ap_vld),.add_3_3280_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3280_out),.add_3_3280_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3280_out_ap_vld),.add_3_3179_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3179_out),.add_3_3179_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3179_out_ap_vld),.add_3_3078_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_3078_out),.add_3_3078_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_3078_out_ap_vld),.add_3_2977_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2977_out),.add_3_2977_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2977_out_ap_vld),.add_3_2876_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2876_out),.add_3_2876_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2876_out_ap_vld),.add_3_2775_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2775_out),.add_3_2775_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2775_out_ap_vld),.add_3_2674_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2674_out),.add_3_2674_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2674_out_ap_vld),.add_3_2573_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2573_out),.add_3_2573_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2573_out_ap_vld),.add_3_2472_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2472_out),.add_3_2472_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2472_out_ap_vld),.add_3_2371_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2371_out),.add_3_2371_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2371_out_ap_vld),.add_3_2270_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2270_out),.add_3_2270_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2270_out_ap_vld),.add_3_2169_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2169_out),.add_3_2169_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2169_out_ap_vld),.add_3_2068_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_2068_out),.add_3_2068_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_2068_out_ap_vld),.add_3_1967_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1967_out),.add_3_1967_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1967_out_ap_vld),.add_3_1866_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1866_out),.add_3_1866_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1866_out_ap_vld),.add_3_1765_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1765_out),.add_3_1765_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1765_out_ap_vld),.add_3_1664_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1664_out),.add_3_1664_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1664_out_ap_vld),.add_3_1563_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1563_out),.add_3_1563_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1563_out_ap_vld),.add_3_1462_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1462_out),.add_3_1462_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1462_out_ap_vld),.add_3_1361_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1361_out),.add_3_1361_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1361_out_ap_vld),.add_3_1260_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1260_out),.add_3_1260_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1260_out_ap_vld),.add_3_1159_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1159_out),.add_3_1159_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1159_out_ap_vld),.add_3_1058_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_1058_out),.add_3_1058_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_1058_out_ap_vld),.add_3_957_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_957_out),.add_3_957_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_957_out_ap_vld),.add_3_856_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_856_out),.add_3_856_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_856_out_ap_vld),.add_3_755_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_755_out),.add_3_755_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_755_out_ap_vld),.add_3_654_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_654_out),.add_3_654_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_654_out_ap_vld),.add_3_553_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_553_out),.add_3_553_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_553_out_ap_vld),.add_3_452_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_452_out),.add_3_452_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_452_out_ap_vld),.add_3_351_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_351_out),.add_3_351_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_351_out_ap_vld),.add_3_250_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_250_out),.add_3_250_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_250_out_ap_vld),.add_3_149_out(grp_bicg_Pipeline_lp1_fu_1566_add_3_149_out),.add_3_149_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_3_149_out_ap_vld),.add_348_out(grp_bicg_Pipeline_lp1_fu_1566_add_348_out),.add_348_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1566_add_348_out_ap_vld),.grp_fu_3243_p_din0(grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_din0),.grp_fu_3243_p_din1(grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_din1),.grp_fu_3243_p_opcode(grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_opcode),.grp_fu_3243_p_dout0(grp_fu_3243_p2),.grp_fu_3243_p_ce(grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_ce),.grp_fu_3247_p_din0(grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_din0),.grp_fu_3247_p_din1(grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_din1),.grp_fu_3247_p_dout0(grp_fu_3247_p2),.grp_fu_3247_p_ce(grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_ce));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_1738(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_8_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_9_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_10_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_11_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_12_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_13_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_14_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_15_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_4_address0),.buff_p_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_4_ce0),.buff_p_4_q0(buff_p_4_q0),.buff_p_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_6_address0),.buff_p_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_6_ce0),.buff_p_6_q0(buff_p_6_q0),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_p_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_5_address0),.buff_p_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_5_ce0),.buff_p_5_q0(buff_p_5_q0),.buff_p_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_7_address0),.buff_p_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_7_ce0),.buff_p_7_q0(buff_p_7_q0),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_d0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_d0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_ce0),.buff_q_out_4_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_we0),.buff_q_out_4_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_d0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_ce0),.buff_q_out_5_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_we0),.buff_q_out_5_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_d0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_ce0),.buff_q_out_6_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_we0),.buff_q_out_6_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_d0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_ce0),.buff_q_out_7_we0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_we0),.buff_q_out_7_d0(grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_d0),.buff_q_out_7_q0(buff_q_out_7_q0),.grp_fu_3243_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_din0),.grp_fu_3243_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_din1),.grp_fu_3243_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_opcode),.grp_fu_3243_p_dout0(grp_fu_3243_p2),.grp_fu_3243_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_ce),.grp_fu_3247_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_din0),.grp_fu_3247_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_din1),.grp_fu_3247_p_dout0(grp_fu_3247_p2),.grp_fu_3247_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1774(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1774_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1774_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1774_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1774_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1774_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1774_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1774_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1774_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_4_ce0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_4_ce0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_5_ce0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_5_ce0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_6_ce0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_6_ce0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_7_ce0),.buff_s_out_7_q0(buff_s_out_7_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_7_ce0),.buff_q_out_7_q0(buff_q_out_7_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U260(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3243_p0),.din1(grp_fu_3243_p1),.ce(grp_fu_3243_ce),.dout(grp_fu_3243_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U261(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3247_p0),.din1(grp_fu_3247_p1),.ce(grp_fu_3247_ce),.dout(grp_fu_3247_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1566_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_bicg_Pipeline_lp1_fu_1566_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1566_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1566_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1528_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bicg_Pipeline_lprd_2_fu_1528_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1528_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1528_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1774_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_bicg_Pipeline_lpwr_fu_1774_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1774_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1774_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_106 <= add_ln13_reg_2559;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2559 <= add_ln13_fu_1812_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_1_reg_2808 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2768 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_2813 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_2773 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_2818 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_2778 <= buff_s_out_3_q1;
        buff_s_out_4_load_1_reg_2823 <= buff_s_out_4_q0;
        buff_s_out_4_load_reg_2783 <= buff_s_out_4_q1;
        buff_s_out_5_load_1_reg_2828 <= buff_s_out_5_q0;
        buff_s_out_5_load_reg_2788 <= buff_s_out_5_q1;
        buff_s_out_6_load_1_reg_2833 <= buff_s_out_6_q0;
        buff_s_out_6_load_reg_2793 <= buff_s_out_6_q1;
        buff_s_out_7_load_1_reg_2838 <= buff_s_out_7_q0;
        buff_s_out_7_load_reg_2798 <= buff_s_out_7_q1;
        buff_s_out_load_1_reg_2803 <= buff_s_out_q0;
        buff_s_out_load_reg_2763 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_2_reg_2928 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2968 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_2933 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_2973 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_2938 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_2978 <= buff_s_out_3_q1;
        buff_s_out_4_load_2_reg_2943 <= buff_s_out_4_q0;
        buff_s_out_4_load_3_reg_2983 <= buff_s_out_4_q1;
        buff_s_out_5_load_2_reg_2948 <= buff_s_out_5_q0;
        buff_s_out_5_load_3_reg_2988 <= buff_s_out_5_q1;
        buff_s_out_6_load_2_reg_2953 <= buff_s_out_6_q0;
        buff_s_out_6_load_3_reg_2993 <= buff_s_out_6_q1;
        buff_s_out_7_load_2_reg_2958 <= buff_s_out_7_q0;
        buff_s_out_7_load_3_reg_2998 <= buff_s_out_7_q1;
        buff_s_out_load_2_reg_2923 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2963 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_4_reg_3088 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_3128 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_3093 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_3133 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_3098 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_3138 <= buff_s_out_3_q1;
        buff_s_out_4_load_4_reg_3103 <= buff_s_out_4_q0;
        buff_s_out_4_load_5_reg_3143 <= buff_s_out_4_q1;
        buff_s_out_5_load_4_reg_3108 <= buff_s_out_5_q0;
        buff_s_out_5_load_5_reg_3148 <= buff_s_out_5_q1;
        buff_s_out_6_load_4_reg_3113 <= buff_s_out_6_q0;
        buff_s_out_6_load_5_reg_3153 <= buff_s_out_6_q1;
        buff_s_out_7_load_4_reg_3118 <= buff_s_out_7_q0;
        buff_s_out_7_load_5_reg_3158 <= buff_s_out_7_q1;
        buff_s_out_load_4_reg_3083 <= buff_s_out_q0;
        buff_s_out_load_5_reg_3123 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_6_reg_3168 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_3208 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_3173 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_3213 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_3178 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_3218 <= buff_s_out_3_q1;
        buff_s_out_4_load_6_reg_3183 <= buff_s_out_4_q0;
        buff_s_out_4_load_7_reg_3223 <= buff_s_out_4_q1;
        buff_s_out_5_load_6_reg_3188 <= buff_s_out_5_q0;
        buff_s_out_5_load_7_reg_3228 <= buff_s_out_5_q1;
        buff_s_out_6_load_6_reg_3193 <= buff_s_out_6_q0;
        buff_s_out_6_load_7_reg_3233 <= buff_s_out_6_q1;
        buff_s_out_7_load_6_reg_3198 <= buff_s_out_7_q0;
        buff_s_out_7_load_7_reg_3238 <= buff_s_out_7_q1;
        buff_s_out_load_6_reg_3163 <= buff_s_out_q0;
        buff_s_out_load_7_reg_3203 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_2_reg_2678 <= trunc_ln13_2_fu_1830_p1;
        trunc_ln13_reg_2670 <= trunc_ln13_fu_1824_p1;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1566_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1774_ap_done == 1'b0)) begin
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
    if ((grp_bicg_Pipeline_lprd_2_fu_1528_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_bicg_Pipeline_lpwr_fu_1774_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_bicg_Pipeline_lpwr_fu_1774_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_address0;
    end else begin
        buff_A_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_ce0;
    end else begin
        buff_A_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_10_ce1;
    end else begin
        buff_A_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_10_we0;
    end else begin
        buff_A_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_address0;
    end else begin
        buff_A_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_ce0;
    end else begin
        buff_A_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_11_ce1;
    end else begin
        buff_A_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_11_we0;
    end else begin
        buff_A_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_address0;
    end else begin
        buff_A_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_ce0;
    end else begin
        buff_A_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_12_ce1;
    end else begin
        buff_A_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_12_we0;
    end else begin
        buff_A_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_address0;
    end else begin
        buff_A_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_ce0;
    end else begin
        buff_A_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_13_ce1;
    end else begin
        buff_A_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_13_we0;
    end else begin
        buff_A_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_address0;
    end else begin
        buff_A_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_ce0;
    end else begin
        buff_A_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_14_ce1;
    end else begin
        buff_A_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_14_we0;
    end else begin
        buff_A_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_address0;
    end else begin
        buff_A_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_ce0;
    end else begin
        buff_A_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_15_ce1;
    end else begin
        buff_A_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_15_we0;
    end else begin
        buff_A_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_address0;
    end else begin
        buff_A_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_ce0;
    end else begin
        buff_A_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_8_ce1;
    end else begin
        buff_A_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_8_we0;
    end else begin
        buff_A_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_address0;
    end else begin
        buff_A_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_ce0;
    end else begin
        buff_A_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_9_ce1;
    end else begin
        buff_A_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_9_we0;
    end else begin
        buff_A_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1566_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1528_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_1_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_2_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_3_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_4_address0;
    end else begin
        buff_p_4_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_4_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_4_we0_local = 1'b1;
    end else begin
        buff_p_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_5_address0;
    end else begin
        buff_p_5_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_5_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_5_we0_local = 1'b1;
    end else begin
        buff_p_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_6_address0;
    end else begin
        buff_p_6_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_6_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_6_we0_local = 1'b1;
    end else begin
        buff_p_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_7_address0;
    end else begin
        buff_p_7_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_7_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_7_we0_local = 1'b1;
    end else begin
        buff_p_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_p_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_ce0;
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
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_ce0;
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
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_ce0;
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
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_address0;
    end else begin
        buff_q_out_4_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_ce0;
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
        buff_q_out_4_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_d0;
    end else begin
        buff_q_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_4_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_4_we0;
    end else begin
        buff_q_out_4_we0 = buff_q_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_4_we0_local = 1'b1;
    end else begin
        buff_q_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_address0;
    end else begin
        buff_q_out_5_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_ce0;
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
        buff_q_out_5_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_d0;
    end else begin
        buff_q_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_5_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_5_we0;
    end else begin
        buff_q_out_5_we0 = buff_q_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_5_we0_local = 1'b1;
    end else begin
        buff_q_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_address0;
    end else begin
        buff_q_out_6_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_ce0;
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
        buff_q_out_6_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_d0;
    end else begin
        buff_q_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_6_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_6_we0;
    end else begin
        buff_q_out_6_we0 = buff_q_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_6_we0_local = 1'b1;
    end else begin
        buff_q_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_address0;
    end else begin
        buff_q_out_7_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_ce0;
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
        buff_q_out_7_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_d0;
    end else begin
        buff_q_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_7_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_7_we0;
    end else begin
        buff_q_out_7_we0 = buff_q_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_7_we0_local = 1'b1;
    end else begin
        buff_q_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_ce0;
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
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1827_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_1_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_2_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_3_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_4_address0;
    end else begin
        buff_r_4_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_4_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_4_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_4_we0_local = 1'b1;
    end else begin
        buff_r_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_5_address0;
    end else begin
        buff_r_5_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_5_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_5_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_5_we0_local = 1'b1;
    end else begin
        buff_r_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_6_address0;
    end else begin
        buff_r_6_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_6_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_6_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_6_we0_local = 1'b1;
    end else begin
        buff_r_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_7_address0;
    end else begin
        buff_r_7_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_7_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_7_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_7_we0_local = 1'b1;
    end else begin
        buff_r_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1566_buff_r_ce0;
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
    if (((trunc_ln13_1_fu_1827_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_3008;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2848;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2688;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_3048;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2888;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2728;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4997_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3381_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1765_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_149_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_57105_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4189_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2573_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_957_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_3013;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_2853;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_2693;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_3053;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_2893;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_2733;
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
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_5098_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3482_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1866_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_250_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_58106_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4290_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2674_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1058_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_3018;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_2858;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_2698;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_3058;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_2898;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_2738;
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
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_5199_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3583_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1967_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_351_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_59107_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4391_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2775_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1159_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_4_address0;
    end else begin
        buff_s_out_4_address0 = buff_s_out_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_6_reg_3023;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_4_reg_2863;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_2_reg_2703;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_address0_local = 64'd1;
    end else begin
        buff_s_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_7_reg_3063;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_5_reg_2903;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address1_local = buff_s_out_4_addr_3_reg_2743;
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
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_4_ce0;
    end else begin
        buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_4_ce1_local = 1'b1;
    end else begin
        buff_s_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_52100_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3684_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2068_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_452_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_d0_local = 32'd0;
    end else begin
        buff_s_out_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_60108_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4492_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2876_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_4_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1260_out;
    end else begin
        buff_s_out_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_4_we1_local = 1'b1;
    end else begin
        buff_s_out_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_5_address0;
    end else begin
        buff_s_out_5_address0 = buff_s_out_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_6_reg_3028;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_4_reg_2868;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_2_reg_2708;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_address0_local = 64'd1;
    end else begin
        buff_s_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_7_reg_3068;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_5_reg_2908;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address1_local = buff_s_out_5_addr_3_reg_2748;
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
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_5_ce0;
    end else begin
        buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_5_ce1_local = 1'b1;
    end else begin
        buff_s_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_53101_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3785_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2169_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_553_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_d0_local = 32'd0;
    end else begin
        buff_s_out_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_61109_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4593_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2977_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_5_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1361_out;
    end else begin
        buff_s_out_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_5_we1_local = 1'b1;
    end else begin
        buff_s_out_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_6_address0;
    end else begin
        buff_s_out_6_address0 = buff_s_out_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_6_reg_3033;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_4_reg_2873;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_2_reg_2713;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_address0_local = 64'd1;
    end else begin
        buff_s_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_7_reg_3073;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_5_reg_2913;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address1_local = buff_s_out_6_addr_3_reg_2753;
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
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_6_ce0;
    end else begin
        buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_6_ce1_local = 1'b1;
    end else begin
        buff_s_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_54102_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3886_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2270_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_654_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_d0_local = 32'd0;
    end else begin
        buff_s_out_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_62110_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4694_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3078_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_6_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1462_out;
    end else begin
        buff_s_out_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_6_we1_local = 1'b1;
    end else begin
        buff_s_out_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_7_address0;
    end else begin
        buff_s_out_7_address0 = buff_s_out_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_6_reg_3038;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_4_reg_2878;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_2_reg_2718;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_address0_local = 64'd1;
    end else begin
        buff_s_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_7_reg_3078;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_5_reg_2918;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address1_local = buff_s_out_7_addr_3_reg_2758;
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
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_7_ce0;
    end else begin
        buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_7_ce1_local = 1'b1;
    end else begin
        buff_s_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_55103_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3987_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2371_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_755_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_d0_local = 32'd0;
    end else begin
        buff_s_out_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_63111_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4795_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3179_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_7_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1563_out;
    end else begin
        buff_s_out_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_7_we1_local = 1'b1;
    end else begin
        buff_s_out_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_3003;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2843;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2683;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_address0_local = zext_ln5_fu_1842_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_3043;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2883;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2723;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1774_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4896_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_3280_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_1664_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1566_add_348_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_56104_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_4088_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_2472_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1566_add_3_856_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((trunc_ln13_1_fu_1827_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3243_ce = grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3243_ce = grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_ce;
    end else begin
        grp_fu_3243_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3243_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3243_p0 = grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_din0;
    end else begin
        grp_fu_3243_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3243_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3243_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3243_p1 = grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3243_p_din1;
    end else begin
        grp_fu_3243_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3247_ce = grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3247_ce = grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_ce;
    end else begin
        grp_fu_3247_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3247_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3247_p0 = grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_din0;
    end else begin
        grp_fu_3247_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3247_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1738_grp_fu_3247_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3247_p1 = grp_bicg_Pipeline_lp1_fu_1566_grp_fu_3247_p_din1;
    end else begin
        grp_fu_3247_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1774_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1774_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1806_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (grp_bicg_Pipeline_lprd_2_fu_1528_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp1_fu_1566_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state14) & (grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (grp_bicg_Pipeline_lpwr_fu_1774_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_3_ce0;
assign A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_4_address0;
assign A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_4_ce0;
assign A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_5_address0;
assign A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_5_ce0;
assign A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_6_address0;
assign A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_6_ce0;
assign A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_7_address0;
assign A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1528_A_7_ce0;
assign add_ln13_fu_1812_p2 = (i_fu_106 + 7'd1);
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
assign bitcast_ln14_fu_1878_p1 = p_q0;
assign bitcast_ln15_fu_1890_p1 = r_q0;
assign buff_s_out_1_addr_2_reg_2688 = 64'd2;
assign buff_s_out_1_addr_3_reg_2728 = 64'd3;
assign buff_s_out_1_addr_4_reg_2848 = 64'd4;
assign buff_s_out_1_addr_5_reg_2888 = 64'd5;
assign buff_s_out_1_addr_6_reg_3008 = 64'd6;
assign buff_s_out_1_addr_7_reg_3048 = 64'd7;
assign buff_s_out_2_addr_2_reg_2693 = 64'd2;
assign buff_s_out_2_addr_3_reg_2733 = 64'd3;
assign buff_s_out_2_addr_4_reg_2853 = 64'd4;
assign buff_s_out_2_addr_5_reg_2893 = 64'd5;
assign buff_s_out_2_addr_6_reg_3013 = 64'd6;
assign buff_s_out_2_addr_7_reg_3053 = 64'd7;
assign buff_s_out_3_addr_2_reg_2698 = 64'd2;
assign buff_s_out_3_addr_3_reg_2738 = 64'd3;
assign buff_s_out_3_addr_4_reg_2858 = 64'd4;
assign buff_s_out_3_addr_5_reg_2898 = 64'd5;
assign buff_s_out_3_addr_6_reg_3018 = 64'd6;
assign buff_s_out_3_addr_7_reg_3058 = 64'd7;
assign buff_s_out_4_addr_2_reg_2703 = 64'd2;
assign buff_s_out_4_addr_3_reg_2743 = 64'd3;
assign buff_s_out_4_addr_4_reg_2863 = 64'd4;
assign buff_s_out_4_addr_5_reg_2903 = 64'd5;
assign buff_s_out_4_addr_6_reg_3023 = 64'd6;
assign buff_s_out_4_addr_7_reg_3063 = 64'd7;
assign buff_s_out_5_addr_2_reg_2708 = 64'd2;
assign buff_s_out_5_addr_3_reg_2748 = 64'd3;
assign buff_s_out_5_addr_4_reg_2868 = 64'd4;
assign buff_s_out_5_addr_5_reg_2908 = 64'd5;
assign buff_s_out_5_addr_6_reg_3028 = 64'd6;
assign buff_s_out_5_addr_7_reg_3068 = 64'd7;
assign buff_s_out_6_addr_2_reg_2713 = 64'd2;
assign buff_s_out_6_addr_3_reg_2753 = 64'd3;
assign buff_s_out_6_addr_4_reg_2873 = 64'd4;
assign buff_s_out_6_addr_5_reg_2913 = 64'd5;
assign buff_s_out_6_addr_6_reg_3033 = 64'd6;
assign buff_s_out_6_addr_7_reg_3073 = 64'd7;
assign buff_s_out_7_addr_2_reg_2718 = 64'd2;
assign buff_s_out_7_addr_3_reg_2758 = 64'd3;
assign buff_s_out_7_addr_4_reg_2878 = 64'd4;
assign buff_s_out_7_addr_5_reg_2918 = 64'd5;
assign buff_s_out_7_addr_6_reg_3038 = 64'd6;
assign buff_s_out_7_addr_7_reg_3078 = 64'd7;
assign buff_s_out_addr_2_reg_2683 = 64'd2;
assign buff_s_out_addr_3_reg_2723 = 64'd3;
assign buff_s_out_addr_4_reg_2843 = 64'd4;
assign buff_s_out_addr_5_reg_2883 = 64'd5;
assign buff_s_out_addr_6_reg_3003 = 64'd6;
assign buff_s_out_addr_7_reg_3043 = 64'd7;
assign grp_bicg_Pipeline_lp1_fu_1566_ap_start = grp_bicg_Pipeline_lp1_fu_1566_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_1738_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1528_ap_start = grp_bicg_Pipeline_lprd_2_fu_1528_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1774_ap_start = grp_bicg_Pipeline_lpwr_fu_1774_ap_start_reg;
assign icmp_ln13_fu_1806_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_1833_p4 = {{i_fu_106[5:3]}};
assign p_address0 = zext_ln13_fu_1818_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1774_q_out_din;
assign r_address0 = zext_ln13_fu_1818_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1774_s_out_din;
assign trunc_ln13_1_fu_1827_p1 = i_fu_106[2:0];
assign trunc_ln13_2_fu_1830_p1 = i_fu_106[0:0];
assign trunc_ln13_fu_1824_p1 = i_fu_106[5:0];
assign zext_ln13_fu_1818_p1 = i_fu_106;
assign zext_ln5_fu_1842_p1 = lshr_ln5_1_fu_1833_p4;
endmodule 