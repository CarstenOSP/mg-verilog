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
wire   [6:0] add_ln13_fu_1845_p2;
reg   [6:0] add_ln13_reg_2554;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1857_p1;
reg   [5:0] trunc_ln13_reg_2593;
wire    ap_CS_fsm_state3;
wire   [4:0] buff_s_out_addr_2_reg_2601;
wire    ap_CS_fsm_state5;
wire   [4:0] buff_s_out_1_addr_2_reg_2606;
wire   [4:0] buff_s_out_addr_3_reg_2611;
wire   [4:0] buff_s_out_1_addr_3_reg_2616;
reg   [31:0] buff_s_out_load_reg_2621;
reg   [31:0] buff_s_out_1_load_reg_2626;
reg   [31:0] buff_s_out_load_1_reg_2631;
reg   [31:0] buff_s_out_1_load_1_reg_2636;
wire   [4:0] buff_s_out_addr_4_reg_2641;
wire    ap_CS_fsm_state6;
wire   [4:0] buff_s_out_1_addr_4_reg_2646;
wire   [4:0] buff_s_out_addr_5_reg_2651;
wire   [4:0] buff_s_out_1_addr_5_reg_2656;
reg   [31:0] buff_s_out_load_2_reg_2661;
reg   [31:0] buff_s_out_1_load_2_reg_2666;
reg   [31:0] buff_s_out_load_3_reg_2671;
reg   [31:0] buff_s_out_1_load_3_reg_2676;
wire   [4:0] buff_s_out_addr_6_reg_2681;
wire    ap_CS_fsm_state7;
wire   [4:0] buff_s_out_1_addr_6_reg_2686;
wire   [4:0] buff_s_out_addr_7_reg_2691;
wire   [4:0] buff_s_out_1_addr_7_reg_2696;
reg   [31:0] buff_s_out_load_4_reg_2701;
reg   [31:0] buff_s_out_1_load_4_reg_2706;
reg   [31:0] buff_s_out_load_5_reg_2711;
reg   [31:0] buff_s_out_1_load_5_reg_2716;
wire   [4:0] buff_s_out_addr_8_reg_2721;
wire    ap_CS_fsm_state8;
wire   [4:0] buff_s_out_1_addr_8_reg_2726;
wire   [4:0] buff_s_out_addr_9_reg_2731;
wire   [4:0] buff_s_out_1_addr_9_reg_2736;
reg   [31:0] buff_s_out_load_6_reg_2741;
reg   [31:0] buff_s_out_1_load_6_reg_2746;
reg   [31:0] buff_s_out_load_7_reg_2751;
reg   [31:0] buff_s_out_1_load_7_reg_2756;
wire   [4:0] buff_s_out_addr_10_reg_2761;
wire    ap_CS_fsm_state9;
wire   [4:0] buff_s_out_1_addr_10_reg_2766;
wire   [4:0] buff_s_out_addr_11_reg_2771;
wire   [4:0] buff_s_out_1_addr_11_reg_2776;
reg   [31:0] buff_s_out_load_8_reg_2781;
reg   [31:0] buff_s_out_1_load_8_reg_2786;
reg   [31:0] buff_s_out_load_9_reg_2791;
reg   [31:0] buff_s_out_1_load_9_reg_2796;
wire   [4:0] buff_s_out_addr_12_reg_2801;
wire    ap_CS_fsm_state10;
wire   [4:0] buff_s_out_1_addr_12_reg_2806;
wire   [4:0] buff_s_out_addr_13_reg_2811;
wire   [4:0] buff_s_out_1_addr_13_reg_2816;
reg   [31:0] buff_s_out_load_10_reg_2821;
reg   [31:0] buff_s_out_1_load_10_reg_2826;
reg   [31:0] buff_s_out_load_11_reg_2831;
reg   [31:0] buff_s_out_1_load_11_reg_2836;
wire   [4:0] buff_s_out_addr_14_reg_2841;
wire    ap_CS_fsm_state11;
wire   [4:0] buff_s_out_1_addr_14_reg_2846;
wire   [4:0] buff_s_out_addr_15_reg_2851;
wire   [4:0] buff_s_out_1_addr_15_reg_2856;
reg   [31:0] buff_s_out_load_12_reg_2861;
reg   [31:0] buff_s_out_1_load_12_reg_2866;
reg   [31:0] buff_s_out_load_13_reg_2871;
reg   [31:0] buff_s_out_1_load_13_reg_2876;
wire   [4:0] buff_s_out_addr_16_reg_2881;
wire    ap_CS_fsm_state12;
wire   [4:0] buff_s_out_1_addr_16_reg_2886;
wire   [4:0] buff_s_out_addr_17_reg_2891;
wire   [4:0] buff_s_out_1_addr_17_reg_2896;
reg   [31:0] buff_s_out_load_14_reg_2901;
reg   [31:0] buff_s_out_1_load_14_reg_2906;
reg   [31:0] buff_s_out_load_15_reg_2911;
reg   [31:0] buff_s_out_1_load_15_reg_2916;
wire   [4:0] buff_s_out_addr_18_reg_2921;
wire    ap_CS_fsm_state13;
wire   [4:0] buff_s_out_1_addr_18_reg_2926;
wire   [4:0] buff_s_out_addr_19_reg_2931;
wire   [4:0] buff_s_out_1_addr_19_reg_2936;
reg   [31:0] buff_s_out_load_16_reg_2941;
reg   [31:0] buff_s_out_1_load_16_reg_2946;
reg   [31:0] buff_s_out_load_17_reg_2951;
reg   [31:0] buff_s_out_1_load_17_reg_2956;
wire   [4:0] buff_s_out_addr_20_reg_2961;
wire    ap_CS_fsm_state14;
wire   [4:0] buff_s_out_1_addr_20_reg_2966;
wire   [4:0] buff_s_out_addr_21_reg_2971;
wire   [4:0] buff_s_out_1_addr_21_reg_2976;
reg   [31:0] buff_s_out_load_18_reg_2981;
reg   [31:0] buff_s_out_1_load_18_reg_2986;
reg   [31:0] buff_s_out_load_19_reg_2991;
reg   [31:0] buff_s_out_1_load_19_reg_2996;
wire   [4:0] buff_s_out_addr_22_reg_3001;
wire    ap_CS_fsm_state15;
wire   [4:0] buff_s_out_1_addr_22_reg_3006;
wire   [4:0] buff_s_out_addr_23_reg_3011;
wire   [4:0] buff_s_out_1_addr_23_reg_3016;
reg   [31:0] buff_s_out_load_20_reg_3021;
reg   [31:0] buff_s_out_1_load_20_reg_3026;
reg   [31:0] buff_s_out_load_21_reg_3031;
reg   [31:0] buff_s_out_1_load_21_reg_3036;
wire   [4:0] buff_s_out_addr_24_reg_3041;
wire    ap_CS_fsm_state16;
wire   [4:0] buff_s_out_1_addr_24_reg_3046;
wire   [4:0] buff_s_out_addr_25_reg_3051;
wire   [4:0] buff_s_out_1_addr_25_reg_3056;
reg   [31:0] buff_s_out_load_22_reg_3061;
reg   [31:0] buff_s_out_1_load_22_reg_3066;
reg   [31:0] buff_s_out_load_23_reg_3071;
reg   [31:0] buff_s_out_1_load_23_reg_3076;
wire   [4:0] buff_s_out_addr_26_reg_3081;
wire    ap_CS_fsm_state17;
wire   [4:0] buff_s_out_1_addr_26_reg_3086;
wire   [4:0] buff_s_out_addr_27_reg_3091;
wire   [4:0] buff_s_out_1_addr_27_reg_3096;
reg   [31:0] buff_s_out_load_24_reg_3101;
reg   [31:0] buff_s_out_1_load_24_reg_3106;
reg   [31:0] buff_s_out_load_25_reg_3111;
reg   [31:0] buff_s_out_1_load_25_reg_3116;
wire   [4:0] buff_s_out_addr_28_reg_3121;
wire    ap_CS_fsm_state18;
wire   [4:0] buff_s_out_1_addr_28_reg_3126;
wire   [4:0] buff_s_out_addr_29_reg_3131;
wire   [4:0] buff_s_out_1_addr_29_reg_3136;
reg   [31:0] buff_s_out_load_26_reg_3141;
reg   [31:0] buff_s_out_1_load_26_reg_3146;
reg   [31:0] buff_s_out_load_27_reg_3151;
reg   [31:0] buff_s_out_1_load_27_reg_3156;
wire   [4:0] buff_s_out_addr_30_reg_3161;
wire    ap_CS_fsm_state19;
wire   [4:0] buff_s_out_1_addr_30_reg_3166;
wire   [4:0] buff_s_out_addr_31_reg_3171;
wire   [4:0] buff_s_out_1_addr_31_reg_3176;
reg   [31:0] buff_s_out_load_28_reg_3181;
reg   [31:0] buff_s_out_1_load_28_reg_3186;
reg   [31:0] buff_s_out_load_29_reg_3191;
reg   [31:0] buff_s_out_1_load_29_reg_3196;
reg   [31:0] buff_s_out_load_30_reg_3201;
wire    ap_CS_fsm_state20;
reg   [31:0] buff_s_out_1_load_30_reg_3206;
reg   [31:0] buff_s_out_load_31_reg_3211;
reg   [31:0] buff_s_out_1_load_31_reg_3216;
wire    ap_CS_fsm_state21;
reg   [31:0] buff_p_load_reg_3261;
reg   [31:0] buff_p_load_1_reg_3266;
reg   [31:0] buff_p_1_load_reg_3271;
reg   [31:0] buff_p_1_load_1_reg_3276;
wire    ap_CS_fsm_state22;
reg   [31:0] buff_p_load_2_reg_3301;
reg   [31:0] buff_p_load_3_reg_3306;
reg   [31:0] buff_p_1_load_2_reg_3311;
reg   [31:0] buff_p_1_load_3_reg_3316;
wire    ap_CS_fsm_state23;
reg   [31:0] buff_p_load_4_reg_3341;
reg   [31:0] buff_p_load_5_reg_3346;
reg   [31:0] buff_p_1_load_4_reg_3351;
reg   [31:0] buff_p_1_load_5_reg_3356;
wire    ap_CS_fsm_state24;
reg   [31:0] buff_p_load_6_reg_3381;
reg   [31:0] buff_p_load_7_reg_3386;
reg   [31:0] buff_p_1_load_6_reg_3391;
reg   [31:0] buff_p_1_load_7_reg_3396;
wire    ap_CS_fsm_state25;
reg   [31:0] buff_p_load_8_reg_3421;
reg   [31:0] buff_p_load_9_reg_3426;
reg   [31:0] buff_p_1_load_8_reg_3431;
reg   [31:0] buff_p_1_load_9_reg_3436;
wire    ap_CS_fsm_state26;
reg   [31:0] buff_p_load_10_reg_3461;
reg   [31:0] buff_p_load_11_reg_3466;
reg   [31:0] buff_p_1_load_10_reg_3471;
reg   [31:0] buff_p_1_load_11_reg_3476;
wire    ap_CS_fsm_state27;
reg   [31:0] buff_p_load_12_reg_3501;
reg   [31:0] buff_p_load_13_reg_3506;
reg   [31:0] buff_p_1_load_12_reg_3511;
reg   [31:0] buff_p_1_load_13_reg_3516;
wire    ap_CS_fsm_state28;
reg   [31:0] buff_p_load_14_reg_3541;
reg   [31:0] buff_p_load_15_reg_3546;
reg   [31:0] buff_p_1_load_14_reg_3551;
reg   [31:0] buff_p_1_load_15_reg_3556;
wire    ap_CS_fsm_state29;
reg   [31:0] buff_p_load_16_reg_3581;
reg   [31:0] buff_p_load_17_reg_3586;
reg   [31:0] buff_p_1_load_16_reg_3591;
reg   [31:0] buff_p_1_load_17_reg_3596;
wire    ap_CS_fsm_state30;
reg   [31:0] buff_p_load_18_reg_3621;
reg   [31:0] buff_p_load_19_reg_3626;
reg   [31:0] buff_p_1_load_18_reg_3631;
reg   [31:0] buff_p_1_load_19_reg_3636;
wire    ap_CS_fsm_state31;
reg   [31:0] buff_p_load_20_reg_3661;
reg   [31:0] buff_p_load_21_reg_3666;
reg   [31:0] buff_p_1_load_20_reg_3671;
reg   [31:0] buff_p_1_load_21_reg_3676;
wire    ap_CS_fsm_state32;
reg   [31:0] buff_p_load_22_reg_3701;
reg   [31:0] buff_p_load_23_reg_3706;
reg   [31:0] buff_p_1_load_22_reg_3711;
reg   [31:0] buff_p_1_load_23_reg_3716;
wire    ap_CS_fsm_state33;
reg   [31:0] buff_p_load_24_reg_3741;
reg   [31:0] buff_p_load_25_reg_3746;
reg   [31:0] buff_p_1_load_24_reg_3751;
reg   [31:0] buff_p_1_load_25_reg_3756;
wire    ap_CS_fsm_state34;
reg   [31:0] buff_p_load_26_reg_3781;
reg   [31:0] buff_p_load_27_reg_3786;
reg   [31:0] buff_p_1_load_26_reg_3791;
reg   [31:0] buff_p_1_load_27_reg_3796;
wire    ap_CS_fsm_state35;
reg   [31:0] buff_p_load_28_reg_3821;
reg   [31:0] buff_p_load_29_reg_3826;
reg   [31:0] buff_p_1_load_28_reg_3831;
reg   [31:0] buff_p_1_load_29_reg_3836;
reg   [31:0] buff_p_load_30_reg_3841;
wire    ap_CS_fsm_state36;
reg   [31:0] buff_p_load_31_reg_3846;
reg   [31:0] buff_p_1_load_30_reg_3851;
reg   [31:0] buff_p_1_load_31_reg_3856;
reg   [10:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [10:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [10:0] buff_A_address2;
reg    buff_A_ce2;
wire   [31:0] buff_A_q2;
reg   [10:0] buff_A_address3;
reg    buff_A_ce3;
wire   [31:0] buff_A_q3;
reg   [10:0] buff_A_address4;
reg    buff_A_ce4;
wire   [31:0] buff_A_q4;
reg   [10:0] buff_A_address5;
reg    buff_A_ce5;
wire   [31:0] buff_A_q5;
reg   [10:0] buff_A_address6;
reg    buff_A_ce6;
wire   [31:0] buff_A_q6;
reg   [10:0] buff_A_address7;
reg    buff_A_ce7;
wire   [31:0] buff_A_q7;
reg   [10:0] buff_A_address8;
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
reg   [10:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [10:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [10:0] buff_A_1_address2;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg   [10:0] buff_A_1_address3;
reg    buff_A_1_ce3;
wire   [31:0] buff_A_1_q3;
reg   [10:0] buff_A_1_address4;
reg    buff_A_1_ce4;
wire   [31:0] buff_A_1_q4;
reg   [10:0] buff_A_1_address5;
reg    buff_A_1_ce5;
wire   [31:0] buff_A_1_q5;
reg   [10:0] buff_A_1_address6;
reg    buff_A_1_ce6;
wire   [31:0] buff_A_1_q6;
reg   [10:0] buff_A_1_address7;
reg    buff_A_1_ce7;
wire   [31:0] buff_A_1_q7;
reg   [10:0] buff_A_1_address8;
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
wire   [31:0] buff_p_q0;
wire   [31:0] buff_p_q1;
wire   [31:0] buff_p_1_q0;
wire   [31:0] buff_p_1_q1;
reg   [4:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [4:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
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
reg    buff_q_out_we1;
wire   [31:0] buff_q_out_q1;
reg   [4:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg    buff_q_out_1_ce1;
reg    buff_q_out_1_we1;
wire   [31:0] buff_q_out_1_q1;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_ap_ready;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1592_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_A_0_ce0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1592_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_A_1_ce0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_d0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_d0;
wire    grp_bicg_Pipeline_lp1_fu_1603_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1603_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1603_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1603_ap_ready;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce0;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce1;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address2;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce2;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address3;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce3;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address4;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce4;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address5;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce5;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address6;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce6;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address7;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce7;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_address8;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce8;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce0;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce1;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce2;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce3;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce4;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce5;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce6;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce7;
wire   [10:0] grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce8;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1603_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_r_ce0;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1603_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1603_buff_r_1_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_63117_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_63117_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_62116_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_62116_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_61115_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_61115_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_60114_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_60114_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_59113_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_59113_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_58112_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_58112_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_57111_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_57111_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_56110_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_56110_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_55109_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_55109_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_54108_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_54108_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_53107_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_53107_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_52106_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_52106_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_51105_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_51105_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_50104_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_50104_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_49103_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_49103_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_48102_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_48102_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_47101_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_47101_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_46100_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_46100_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_4599_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_4599_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_4498_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_4498_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_4397_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_4397_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_4296_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_4296_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_4195_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_4195_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_4094_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_4094_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3993_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3993_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3892_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3892_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3791_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3791_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3690_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3690_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3589_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3589_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3488_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3488_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3387_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3387_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3286_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3286_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3185_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3185_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_3084_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_3084_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2983_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2983_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2882_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2882_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2781_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2781_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2680_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2680_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2579_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2579_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2478_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2478_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2377_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2377_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2276_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2276_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2175_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2175_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_2074_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_2074_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1973_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1973_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1872_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1872_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1771_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1771_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1670_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1670_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1569_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1569_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1468_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1468_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1367_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1367_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1266_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1266_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1165_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1165_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_1064_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_1064_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_963_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_963_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_862_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_862_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_761_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_761_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_660_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_660_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_559_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_559_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_458_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_458_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_357_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_357_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_256_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_256_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_1_155_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_1_155_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_add_154_out;
wire    grp_bicg_Pipeline_lp1_fu_1603_add_154_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_ce;
wire    grp_bicg_Pipeline_lp3_fu_1743_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_1743_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_1743_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_1743_ap_ready;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce0;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce1;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce2;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce3;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce4;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce5;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce6;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce7;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address8;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce8;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address9;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce9;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address10;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce10;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address11;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce11;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address12;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce12;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address13;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce13;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address14;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce14;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_address15;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce15;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce0;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce1;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce2;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce3;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce4;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce5;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce6;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce7;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce8;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address9;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce9;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address10;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce10;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address11;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce11;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address12;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce12;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address13;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce13;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address14;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce14;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address15;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce15;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_d0;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_ce1;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_we1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_d1;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_d0;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_ce1;
wire    grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_we1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_d1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1819_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1819_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1819_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1819_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1819_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1819_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1819_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1819_q_out_write;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_1_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_1_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1592_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp1_fu_1603_ap_start_reg;
reg    grp_bicg_Pipeline_lp3_fu_1743_ap_start_reg;
wire    ap_CS_fsm_state37;
reg    grp_bicg_Pipeline_lpwr_fu_1819_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
wire   [63:0] zext_ln13_fu_1851_p1;
wire   [0:0] icmp_ln13_fu_1839_p2;
wire   [63:0] zext_ln5_fu_1873_p1;
reg   [6:0] i_fu_126;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [4:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [4:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
wire   [0:0] trunc_ln13_1_fu_1861_p1;
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
wire   [31:0] bitcast_ln14_fu_1885_p1;
reg    buff_p_ce0_local;
reg   [4:0] buff_p_address0_local;
reg    buff_p_ce1_local;
reg   [4:0] buff_p_address1_local;
reg    buff_r_we0_local;
wire   [31:0] bitcast_ln15_fu_1891_p1;
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
wire   [4:0] lshr_ln5_fu_1864_p4;
wire   [31:0] grp_fu_3861_p2;
reg   [31:0] grp_fu_3861_p0;
reg   [31:0] grp_fu_3861_p1;
reg    grp_fu_3861_ce;
wire   [31:0] grp_fu_3865_p2;
reg   [31:0] grp_fu_3865_p0;
reg   [31:0] grp_fu_3865_p1;
reg    grp_fu_3865_ce;
wire   [31:0] grp_fu_3869_p2;
reg   [31:0] grp_fu_3869_p0;
reg   [31:0] grp_fu_3869_p1;
reg    grp_fu_3869_ce;
wire   [31:0] grp_fu_3873_p2;
reg   [31:0] grp_fu_3873_p0;
reg   [31:0] grp_fu_3873_p1;
reg    grp_fu_3873_ce;
wire   [31:0] grp_fu_3877_p2;
reg   [31:0] grp_fu_3877_p0;
reg   [31:0] grp_fu_3877_p1;
reg    grp_fu_3877_ce;
wire   [31:0] grp_fu_3881_p2;
reg   [31:0] grp_fu_3881_p0;
reg   [31:0] grp_fu_3881_p1;
reg    grp_fu_3881_ce;
wire   [31:0] grp_fu_3885_p2;
reg   [31:0] grp_fu_3885_p0;
reg   [31:0] grp_fu_3885_p1;
reg    grp_fu_3885_ce;
wire   [31:0] grp_fu_3889_p2;
reg   [31:0] grp_fu_3889_p0;
reg   [31:0] grp_fu_3889_p1;
reg    grp_fu_3889_ce;
wire   [31:0] grp_fu_3893_p2;
reg   [31:0] grp_fu_3893_p0;
reg   [31:0] grp_fu_3893_p1;
reg    grp_fu_3893_ce;
wire   [31:0] grp_fu_3897_p2;
reg   [31:0] grp_fu_3897_p0;
reg   [31:0] grp_fu_3897_p1;
reg    grp_fu_3897_ce;
wire   [31:0] grp_fu_3901_p2;
reg   [31:0] grp_fu_3901_p0;
reg   [31:0] grp_fu_3901_p1;
reg    grp_fu_3901_ce;
wire   [31:0] grp_fu_3905_p2;
reg   [31:0] grp_fu_3905_p0;
reg   [31:0] grp_fu_3905_p1;
reg    grp_fu_3905_ce;
wire   [31:0] grp_fu_3909_p2;
reg   [31:0] grp_fu_3909_p0;
reg   [31:0] grp_fu_3909_p1;
reg    grp_fu_3909_ce;
wire   [31:0] grp_fu_3913_p2;
reg   [31:0] grp_fu_3913_p0;
reg   [31:0] grp_fu_3913_p1;
reg    grp_fu_3913_ce;
wire   [31:0] grp_fu_3917_p2;
reg   [31:0] grp_fu_3917_p0;
reg   [31:0] grp_fu_3917_p1;
reg    grp_fu_3917_ce;
wire   [31:0] grp_fu_3921_p2;
reg   [31:0] grp_fu_3921_p0;
reg   [31:0] grp_fu_3921_p1;
reg    grp_fu_3921_ce;
wire   [31:0] grp_fu_3925_p2;
reg   [31:0] grp_fu_3925_p0;
reg   [31:0] grp_fu_3925_p1;
reg    grp_fu_3925_ce;
wire   [31:0] grp_fu_3929_p2;
reg   [31:0] grp_fu_3929_p0;
reg   [31:0] grp_fu_3929_p1;
reg    grp_fu_3929_ce;
wire   [31:0] grp_fu_3933_p2;
reg   [31:0] grp_fu_3933_p0;
reg   [31:0] grp_fu_3933_p1;
reg    grp_fu_3933_ce;
wire   [31:0] grp_fu_3937_p2;
reg   [31:0] grp_fu_3937_p0;
reg   [31:0] grp_fu_3937_p1;
reg    grp_fu_3937_ce;
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
#0 grp_bicg_Pipeline_lprd_2_fu_1592_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1603_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_1743_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1819_ap_start_reg = 1'b0;
#0 i_fu_126 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1885_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1885_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1891_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1891_p1),.q0(buff_r_1_q0));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0_local),.d0(buff_s_out_d0_local),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0_local),.d0(buff_s_out_1_d0_local),.q0(buff_s_out_1_q0),.address1(buff_s_out_1_address1_local),.ce1(buff_s_out_1_ce1_local),.we1(buff_s_out_1_we1_local),.d1(buff_s_out_1_d1_local),.q1(buff_s_out_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_address1),.ce1(buff_q_out_ce1),.we1(buff_q_out_we1),.d1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_d1),.q1(buff_q_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.we1(buff_q_out_1_we1),.d1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_d1),.q1(buff_q_out_1_q1));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1592(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1592_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1592_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1592_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1592_ap_ready),.i(trunc_ln13_reg_2593),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1592_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1592_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1592_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1592_A_1_ce0),.A_1_q0(A_1_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_d0));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1603(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1603_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1603_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1603_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1603_ap_ready),.buff_s_out_1_load_31(buff_s_out_1_load_31_reg_3216),.buff_s_out_load_31(buff_s_out_load_31_reg_3211),.buff_s_out_1_load_30(buff_s_out_1_load_30_reg_3206),.buff_s_out_load_30(buff_s_out_load_30_reg_3201),.buff_s_out_1_load_29(buff_s_out_1_load_29_reg_3196),.buff_s_out_load_29(buff_s_out_load_29_reg_3191),.buff_s_out_1_load_28(buff_s_out_1_load_28_reg_3186),.buff_s_out_load_28(buff_s_out_load_28_reg_3181),.buff_s_out_1_load_27(buff_s_out_1_load_27_reg_3156),.buff_s_out_load_27(buff_s_out_load_27_reg_3151),.buff_s_out_1_load_26(buff_s_out_1_load_26_reg_3146),.buff_s_out_load_26(buff_s_out_load_26_reg_3141),.buff_s_out_1_load_25(buff_s_out_1_load_25_reg_3116),.buff_s_out_load_25(buff_s_out_load_25_reg_3111),.buff_s_out_1_load_24(buff_s_out_1_load_24_reg_3106),.buff_s_out_load_24(buff_s_out_load_24_reg_3101),.buff_s_out_1_load_23(buff_s_out_1_load_23_reg_3076),.buff_s_out_load_23(buff_s_out_load_23_reg_3071),.buff_s_out_1_load_22(buff_s_out_1_load_22_reg_3066),.buff_s_out_load_22(buff_s_out_load_22_reg_3061),.buff_s_out_1_load_21(buff_s_out_1_load_21_reg_3036),.buff_s_out_load_21(buff_s_out_load_21_reg_3031),.buff_s_out_1_load_20(buff_s_out_1_load_20_reg_3026),.buff_s_out_load_20(buff_s_out_load_20_reg_3021),.buff_s_out_1_load_19(buff_s_out_1_load_19_reg_2996),.buff_s_out_load_19(buff_s_out_load_19_reg_2991),.buff_s_out_1_load_18(buff_s_out_1_load_18_reg_2986),.buff_s_out_load_18(buff_s_out_load_18_reg_2981),.buff_s_out_1_load_17(buff_s_out_1_load_17_reg_2956),.buff_s_out_load_17(buff_s_out_load_17_reg_2951),.buff_s_out_1_load_16(buff_s_out_1_load_16_reg_2946),.buff_s_out_load_16(buff_s_out_load_16_reg_2941),.buff_s_out_1_load_15(buff_s_out_1_load_15_reg_2916),.buff_s_out_load_15(buff_s_out_load_15_reg_2911),.buff_s_out_1_load_14(buff_s_out_1_load_14_reg_2906),.buff_s_out_load_14(buff_s_out_load_14_reg_2901),.buff_s_out_1_load_13(buff_s_out_1_load_13_reg_2876),.buff_s_out_load_13(buff_s_out_load_13_reg_2871),.buff_s_out_1_load_12(buff_s_out_1_load_12_reg_2866),.buff_s_out_load_12(buff_s_out_load_12_reg_2861),.buff_s_out_1_load_11(buff_s_out_1_load_11_reg_2836),.buff_s_out_load_11(buff_s_out_load_11_reg_2831),.buff_s_out_1_load_10(buff_s_out_1_load_10_reg_2826),.buff_s_out_load_10(buff_s_out_load_10_reg_2821),.buff_s_out_1_load_9(buff_s_out_1_load_9_reg_2796),.buff_s_out_load_9(buff_s_out_load_9_reg_2791),.buff_s_out_1_load_8(buff_s_out_1_load_8_reg_2786),.buff_s_out_load_8(buff_s_out_load_8_reg_2781),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_2756),.buff_s_out_load_7(buff_s_out_load_7_reg_2751),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_2746),.buff_s_out_load_6(buff_s_out_load_6_reg_2741),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_2716),.buff_s_out_load_5(buff_s_out_load_5_reg_2711),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_2706),.buff_s_out_load_4(buff_s_out_load_4_reg_2701),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2676),.buff_s_out_load_3(buff_s_out_load_3_reg_2671),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2666),.buff_s_out_load_2(buff_s_out_load_2_reg_2661),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2636),.buff_s_out_load_1(buff_s_out_load_1_reg_2631),.buff_s_out_1_load(buff_s_out_1_load_reg_2626),.buff_s_out_load(buff_s_out_load_reg_2621),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp1_fu_1603_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1603_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1603_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1603_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1603_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.add_1_63117_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_63117_out),.add_1_63117_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_63117_out_ap_vld),.add_1_62116_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_62116_out),.add_1_62116_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_62116_out_ap_vld),.add_1_61115_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_61115_out),.add_1_61115_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_61115_out_ap_vld),.add_1_60114_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_60114_out),.add_1_60114_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_60114_out_ap_vld),.add_1_59113_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_59113_out),.add_1_59113_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_59113_out_ap_vld),.add_1_58112_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_58112_out),.add_1_58112_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_58112_out_ap_vld),.add_1_57111_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_57111_out),.add_1_57111_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_57111_out_ap_vld),.add_1_56110_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_56110_out),.add_1_56110_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_56110_out_ap_vld),.add_1_55109_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_55109_out),.add_1_55109_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_55109_out_ap_vld),.add_1_54108_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_54108_out),.add_1_54108_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_54108_out_ap_vld),.add_1_53107_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_53107_out),.add_1_53107_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_53107_out_ap_vld),.add_1_52106_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_52106_out),.add_1_52106_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_52106_out_ap_vld),.add_1_51105_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_51105_out),.add_1_51105_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_51105_out_ap_vld),.add_1_50104_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_50104_out),.add_1_50104_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_50104_out_ap_vld),.add_1_49103_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_49103_out),.add_1_49103_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_49103_out_ap_vld),.add_1_48102_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_48102_out),.add_1_48102_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_48102_out_ap_vld),.add_1_47101_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_47101_out),.add_1_47101_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_47101_out_ap_vld),.add_1_46100_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_46100_out),.add_1_46100_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_46100_out_ap_vld),.add_1_4599_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_4599_out),.add_1_4599_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_4599_out_ap_vld),.add_1_4498_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_4498_out),.add_1_4498_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_4498_out_ap_vld),.add_1_4397_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_4397_out),.add_1_4397_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_4397_out_ap_vld),.add_1_4296_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_4296_out),.add_1_4296_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_4296_out_ap_vld),.add_1_4195_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_4195_out),.add_1_4195_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_4195_out_ap_vld),.add_1_4094_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_4094_out),.add_1_4094_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_4094_out_ap_vld),.add_1_3993_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3993_out),.add_1_3993_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3993_out_ap_vld),.add_1_3892_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3892_out),.add_1_3892_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3892_out_ap_vld),.add_1_3791_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3791_out),.add_1_3791_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3791_out_ap_vld),.add_1_3690_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3690_out),.add_1_3690_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3690_out_ap_vld),.add_1_3589_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3589_out),.add_1_3589_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3589_out_ap_vld),.add_1_3488_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3488_out),.add_1_3488_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3488_out_ap_vld),.add_1_3387_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3387_out),.add_1_3387_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3387_out_ap_vld),.add_1_3286_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3286_out),.add_1_3286_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3286_out_ap_vld),.add_1_3185_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3185_out),.add_1_3185_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3185_out_ap_vld),.add_1_3084_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_3084_out),.add_1_3084_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_3084_out_ap_vld),.add_1_2983_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2983_out),.add_1_2983_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2983_out_ap_vld),.add_1_2882_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2882_out),.add_1_2882_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2882_out_ap_vld),.add_1_2781_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2781_out),.add_1_2781_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2781_out_ap_vld),.add_1_2680_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2680_out),.add_1_2680_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2680_out_ap_vld),.add_1_2579_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2579_out),.add_1_2579_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2579_out_ap_vld),.add_1_2478_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2478_out),.add_1_2478_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2478_out_ap_vld),.add_1_2377_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2377_out),.add_1_2377_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2377_out_ap_vld),.add_1_2276_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2276_out),.add_1_2276_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2276_out_ap_vld),.add_1_2175_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2175_out),.add_1_2175_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2175_out_ap_vld),.add_1_2074_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_2074_out),.add_1_2074_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_2074_out_ap_vld),.add_1_1973_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1973_out),.add_1_1973_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1973_out_ap_vld),.add_1_1872_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1872_out),.add_1_1872_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1872_out_ap_vld),.add_1_1771_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1771_out),.add_1_1771_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1771_out_ap_vld),.add_1_1670_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1670_out),.add_1_1670_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1670_out_ap_vld),.add_1_1569_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1569_out),.add_1_1569_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1569_out_ap_vld),.add_1_1468_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1468_out),.add_1_1468_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1468_out_ap_vld),.add_1_1367_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1367_out),.add_1_1367_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1367_out_ap_vld),.add_1_1266_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1266_out),.add_1_1266_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1266_out_ap_vld),.add_1_1165_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1165_out),.add_1_1165_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1165_out_ap_vld),.add_1_1064_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_1064_out),.add_1_1064_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_1064_out_ap_vld),.add_1_963_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_963_out),.add_1_963_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_963_out_ap_vld),.add_1_862_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_862_out),.add_1_862_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_862_out_ap_vld),.add_1_761_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_761_out),.add_1_761_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_761_out_ap_vld),.add_1_660_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_660_out),.add_1_660_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_660_out_ap_vld),.add_1_559_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_559_out),.add_1_559_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_559_out_ap_vld),.add_1_458_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_458_out),.add_1_458_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_458_out_ap_vld),.add_1_357_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_357_out),.add_1_357_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_357_out_ap_vld),.add_1_256_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_256_out),.add_1_256_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_256_out_ap_vld),.add_1_155_out(grp_bicg_Pipeline_lp1_fu_1603_add_1_155_out),.add_1_155_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_1_155_out_ap_vld),.add_154_out(grp_bicg_Pipeline_lp1_fu_1603_add_154_out),.add_154_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1603_add_154_out_ap_vld),.grp_fu_3861_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_din0),.grp_fu_3861_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_din1),.grp_fu_3861_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_opcode),.grp_fu_3861_p_dout0(grp_fu_3861_p2),.grp_fu_3861_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_ce),.grp_fu_3865_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_din0),.grp_fu_3865_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_din1),.grp_fu_3865_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_opcode),.grp_fu_3865_p_dout0(grp_fu_3865_p2),.grp_fu_3865_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_ce),.grp_fu_3869_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_din0),.grp_fu_3869_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_din1),.grp_fu_3869_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_opcode),.grp_fu_3869_p_dout0(grp_fu_3869_p2),.grp_fu_3869_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_ce),.grp_fu_3873_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_din0),.grp_fu_3873_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_din1),.grp_fu_3873_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_opcode),.grp_fu_3873_p_dout0(grp_fu_3873_p2),.grp_fu_3873_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_ce),.grp_fu_3877_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_din0),.grp_fu_3877_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_din1),.grp_fu_3877_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_opcode),.grp_fu_3877_p_dout0(grp_fu_3877_p2),.grp_fu_3877_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_ce),.grp_fu_3881_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_din0),.grp_fu_3881_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_din1),.grp_fu_3881_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_opcode),.grp_fu_3881_p_dout0(grp_fu_3881_p2),.grp_fu_3881_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_ce),.grp_fu_3885_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_din0),.grp_fu_3885_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_din1),.grp_fu_3885_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_opcode),.grp_fu_3885_p_dout0(grp_fu_3885_p2),.grp_fu_3885_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_ce),.grp_fu_3889_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_din0),.grp_fu_3889_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_din1),.grp_fu_3889_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_opcode),.grp_fu_3889_p_dout0(grp_fu_3889_p2),.grp_fu_3889_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_ce),.grp_fu_3893_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_din0),.grp_fu_3893_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_din1),.grp_fu_3893_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_opcode),.grp_fu_3893_p_dout0(grp_fu_3893_p2),.grp_fu_3893_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_ce),.grp_fu_3897_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_din0),.grp_fu_3897_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_din1),.grp_fu_3897_p_opcode(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_opcode),.grp_fu_3897_p_dout0(grp_fu_3897_p2),.grp_fu_3897_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_ce),.grp_fu_3901_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_din0),.grp_fu_3901_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_din1),.grp_fu_3901_p_dout0(grp_fu_3901_p2),.grp_fu_3901_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_ce),.grp_fu_3905_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_din0),.grp_fu_3905_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_din1),.grp_fu_3905_p_dout0(grp_fu_3905_p2),.grp_fu_3905_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_ce),.grp_fu_3909_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_din0),.grp_fu_3909_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_din1),.grp_fu_3909_p_dout0(grp_fu_3909_p2),.grp_fu_3909_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_ce),.grp_fu_3913_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_din0),.grp_fu_3913_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_din1),.grp_fu_3913_p_dout0(grp_fu_3913_p2),.grp_fu_3913_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_ce),.grp_fu_3917_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_din0),.grp_fu_3917_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_din1),.grp_fu_3917_p_dout0(grp_fu_3917_p2),.grp_fu_3917_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_ce),.grp_fu_3921_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_din0),.grp_fu_3921_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_din1),.grp_fu_3921_p_dout0(grp_fu_3921_p2),.grp_fu_3921_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_ce),.grp_fu_3925_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_din0),.grp_fu_3925_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_din1),.grp_fu_3925_p_dout0(grp_fu_3925_p2),.grp_fu_3925_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_ce),.grp_fu_3929_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_din0),.grp_fu_3929_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_din1),.grp_fu_3929_p_dout0(grp_fu_3929_p2),.grp_fu_3929_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_ce),.grp_fu_3933_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_din0),.grp_fu_3933_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_din1),.grp_fu_3933_p_dout0(grp_fu_3933_p2),.grp_fu_3933_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_ce),.grp_fu_3937_p_din0(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_din0),.grp_fu_3937_p_din1(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_din1),.grp_fu_3937_p_dout0(grp_fu_3937_p2),.grp_fu_3937_p_ce(grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_ce));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_1743(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_1743_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_1743_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_1743_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_1743_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address9),.buff_A_ce9(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address10),.buff_A_ce10(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address11),.buff_A_ce11(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address12),.buff_A_ce12(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address13),.buff_A_ce13(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address14),.buff_A_ce14(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_bicg_Pipeline_lp3_fu_1743_buff_A_address15),.buff_A_ce15(grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address9),.buff_A_1_ce9(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address10),.buff_A_1_ce10(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address11),.buff_A_1_ce11(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address12),.buff_A_1_ce12(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address13),.buff_A_1_ce13(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address14),.buff_A_1_ce14(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address15),.buff_A_1_ce15(grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_ce1),.buff_q_out_1_we1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_we1),.buff_q_out_1_d1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_d1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_ce1),.buff_q_out_we1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_we1),.buff_q_out_d1(grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_d1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_3261),.buff_p_1_load(buff_p_1_load_reg_3271),.buff_p_load_1(buff_p_load_1_reg_3266),.buff_p_1_load_1(buff_p_1_load_1_reg_3276),.buff_p_load_2(buff_p_load_2_reg_3301),.buff_p_1_load_2(buff_p_1_load_2_reg_3311),.buff_p_load_3(buff_p_load_3_reg_3306),.buff_p_1_load_3(buff_p_1_load_3_reg_3316),.buff_p_load_4(buff_p_load_4_reg_3341),.buff_p_1_load_4(buff_p_1_load_4_reg_3351),.buff_p_load_5(buff_p_load_5_reg_3346),.buff_p_1_load_5(buff_p_1_load_5_reg_3356),.buff_p_load_6(buff_p_load_6_reg_3381),.buff_p_1_load_6(buff_p_1_load_6_reg_3391),.buff_p_load_7(buff_p_load_7_reg_3386),.buff_p_1_load_7(buff_p_1_load_7_reg_3396),.buff_p_load_8(buff_p_load_8_reg_3421),.buff_p_1_load_8(buff_p_1_load_8_reg_3431),.buff_p_load_9(buff_p_load_9_reg_3426),.buff_p_1_load_9(buff_p_1_load_9_reg_3436),.buff_p_load_10(buff_p_load_10_reg_3461),.buff_p_1_load_10(buff_p_1_load_10_reg_3471),.buff_p_load_11(buff_p_load_11_reg_3466),.buff_p_1_load_11(buff_p_1_load_11_reg_3476),.buff_p_load_12(buff_p_load_12_reg_3501),.buff_p_1_load_12(buff_p_1_load_12_reg_3511),.buff_p_load_13(buff_p_load_13_reg_3506),.buff_p_1_load_13(buff_p_1_load_13_reg_3516),.buff_p_load_14(buff_p_load_14_reg_3541),.buff_p_1_load_14(buff_p_1_load_14_reg_3551),.buff_p_load_15(buff_p_load_15_reg_3546),.buff_p_1_load_15(buff_p_1_load_15_reg_3556),.buff_p_load_16(buff_p_load_16_reg_3581),.buff_p_1_load_16(buff_p_1_load_16_reg_3591),.buff_p_load_17(buff_p_load_17_reg_3586),.buff_p_1_load_17(buff_p_1_load_17_reg_3596),.buff_p_load_18(buff_p_load_18_reg_3621),.buff_p_1_load_18(buff_p_1_load_18_reg_3631),.buff_p_load_19(buff_p_load_19_reg_3626),.buff_p_1_load_19(buff_p_1_load_19_reg_3636),.buff_p_load_20(buff_p_load_20_reg_3661),.buff_p_1_load_20(buff_p_1_load_20_reg_3671),.buff_p_load_21(buff_p_load_21_reg_3666),.buff_p_1_load_21(buff_p_1_load_21_reg_3676),.buff_p_load_22(buff_p_load_22_reg_3701),.buff_p_1_load_22(buff_p_1_load_22_reg_3711),.buff_p_load_23(buff_p_load_23_reg_3706),.buff_p_1_load_23(buff_p_1_load_23_reg_3716),.buff_p_load_24(buff_p_load_24_reg_3741),.buff_p_1_load_24(buff_p_1_load_24_reg_3751),.buff_p_load_25(buff_p_load_25_reg_3746),.buff_p_1_load_25(buff_p_1_load_25_reg_3756),.buff_p_load_26(buff_p_load_26_reg_3781),.buff_p_1_load_26(buff_p_1_load_26_reg_3791),.buff_p_load_27(buff_p_load_27_reg_3786),.buff_p_1_load_27(buff_p_1_load_27_reg_3796),.buff_p_load_28(buff_p_load_28_reg_3821),.buff_p_1_load_28(buff_p_1_load_28_reg_3831),.buff_p_load_29(buff_p_load_29_reg_3826),.buff_p_1_load_29(buff_p_1_load_29_reg_3836),.buff_p_load_30(buff_p_load_30_reg_3841),.buff_p_1_load_30(buff_p_1_load_30_reg_3851),.buff_p_load_31(buff_p_load_31_reg_3846),.buff_p_1_load_31(buff_p_1_load_31_reg_3856),.grp_fu_3861_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_din0),.grp_fu_3861_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_din1),.grp_fu_3861_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_opcode),.grp_fu_3861_p_dout0(grp_fu_3861_p2),.grp_fu_3861_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_ce),.grp_fu_3865_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_din0),.grp_fu_3865_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_din1),.grp_fu_3865_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_opcode),.grp_fu_3865_p_dout0(grp_fu_3865_p2),.grp_fu_3865_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_ce),.grp_fu_3869_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_din0),.grp_fu_3869_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_din1),.grp_fu_3869_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_opcode),.grp_fu_3869_p_dout0(grp_fu_3869_p2),.grp_fu_3869_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_ce),.grp_fu_3873_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_din0),.grp_fu_3873_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_din1),.grp_fu_3873_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_opcode),.grp_fu_3873_p_dout0(grp_fu_3873_p2),.grp_fu_3873_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_ce),.grp_fu_3877_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_din0),.grp_fu_3877_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_din1),.grp_fu_3877_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_opcode),.grp_fu_3877_p_dout0(grp_fu_3877_p2),.grp_fu_3877_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_ce),.grp_fu_3881_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_din0),.grp_fu_3881_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_din1),.grp_fu_3881_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_opcode),.grp_fu_3881_p_dout0(grp_fu_3881_p2),.grp_fu_3881_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_ce),.grp_fu_3885_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_din0),.grp_fu_3885_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_din1),.grp_fu_3885_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_opcode),.grp_fu_3885_p_dout0(grp_fu_3885_p2),.grp_fu_3885_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_ce),.grp_fu_3889_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_din0),.grp_fu_3889_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_din1),.grp_fu_3889_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_opcode),.grp_fu_3889_p_dout0(grp_fu_3889_p2),.grp_fu_3889_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_ce),.grp_fu_3893_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_din0),.grp_fu_3893_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_din1),.grp_fu_3893_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_opcode),.grp_fu_3893_p_dout0(grp_fu_3893_p2),.grp_fu_3893_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_ce),.grp_fu_3897_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_din0),.grp_fu_3897_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_din1),.grp_fu_3897_p_opcode(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_opcode),.grp_fu_3897_p_dout0(grp_fu_3897_p2),.grp_fu_3897_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_ce),.grp_fu_3901_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_din0),.grp_fu_3901_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_din1),.grp_fu_3901_p_dout0(grp_fu_3901_p2),.grp_fu_3901_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_ce),.grp_fu_3905_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_din0),.grp_fu_3905_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_din1),.grp_fu_3905_p_dout0(grp_fu_3905_p2),.grp_fu_3905_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_ce),.grp_fu_3909_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_din0),.grp_fu_3909_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_din1),.grp_fu_3909_p_dout0(grp_fu_3909_p2),.grp_fu_3909_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_ce),.grp_fu_3913_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_din0),.grp_fu_3913_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_din1),.grp_fu_3913_p_dout0(grp_fu_3913_p2),.grp_fu_3913_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_ce),.grp_fu_3917_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_din0),.grp_fu_3917_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_din1),.grp_fu_3917_p_dout0(grp_fu_3917_p2),.grp_fu_3917_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_ce),.grp_fu_3921_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_din0),.grp_fu_3921_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_din1),.grp_fu_3921_p_dout0(grp_fu_3921_p2),.grp_fu_3921_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_ce),.grp_fu_3925_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_din0),.grp_fu_3925_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_din1),.grp_fu_3925_p_dout0(grp_fu_3925_p2),.grp_fu_3925_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_ce),.grp_fu_3929_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_din0),.grp_fu_3929_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_din1),.grp_fu_3929_p_dout0(grp_fu_3929_p2),.grp_fu_3929_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_ce),.grp_fu_3933_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_din0),.grp_fu_3933_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_din1),.grp_fu_3933_p_dout0(grp_fu_3933_p2),.grp_fu_3933_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_ce),.grp_fu_3937_p_din0(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_din0),.grp_fu_3937_p_din1(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_din1),.grp_fu_3937_p_dout0(grp_fu_3937_p2),.grp_fu_3937_p_ce(grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1819(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1819_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1819_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1819_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1819_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1819_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1819_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1819_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1819_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U296(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3861_p0),.din1(grp_fu_3861_p1),.ce(grp_fu_3861_ce),.dout(grp_fu_3861_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U297(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3865_p0),.din1(grp_fu_3865_p1),.ce(grp_fu_3865_ce),.dout(grp_fu_3865_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U298(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3869_p0),.din1(grp_fu_3869_p1),.ce(grp_fu_3869_ce),.dout(grp_fu_3869_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U299(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3873_p0),.din1(grp_fu_3873_p1),.ce(grp_fu_3873_ce),.dout(grp_fu_3873_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U300(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3877_p0),.din1(grp_fu_3877_p1),.ce(grp_fu_3877_ce),.dout(grp_fu_3877_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U301(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3881_p0),.din1(grp_fu_3881_p1),.ce(grp_fu_3881_ce),.dout(grp_fu_3881_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U302(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3885_p0),.din1(grp_fu_3885_p1),.ce(grp_fu_3885_ce),.dout(grp_fu_3885_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U303(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3889_p0),.din1(grp_fu_3889_p1),.ce(grp_fu_3889_ce),.dout(grp_fu_3889_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U304(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3893_p0),.din1(grp_fu_3893_p1),.ce(grp_fu_3893_ce),.dout(grp_fu_3893_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U305(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3897_p0),.din1(grp_fu_3897_p1),.ce(grp_fu_3897_ce),.dout(grp_fu_3897_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U306(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3901_p0),.din1(grp_fu_3901_p1),.ce(grp_fu_3901_ce),.dout(grp_fu_3901_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U307(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3905_p0),.din1(grp_fu_3905_p1),.ce(grp_fu_3905_ce),.dout(grp_fu_3905_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U308(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3909_p0),.din1(grp_fu_3909_p1),.ce(grp_fu_3909_ce),.dout(grp_fu_3909_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U309(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3913_p0),.din1(grp_fu_3913_p1),.ce(grp_fu_3913_ce),.dout(grp_fu_3913_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U310(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3917_p0),.din1(grp_fu_3917_p1),.ce(grp_fu_3917_ce),.dout(grp_fu_3917_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U311(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3921_p0),.din1(grp_fu_3921_p1),.ce(grp_fu_3921_ce),.dout(grp_fu_3921_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U312(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3925_p0),.din1(grp_fu_3925_p1),.ce(grp_fu_3925_ce),.dout(grp_fu_3925_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U313(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3929_p0),.din1(grp_fu_3929_p1),.ce(grp_fu_3929_ce),.dout(grp_fu_3929_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U314(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3933_p0),.din1(grp_fu_3933_p1),.ce(grp_fu_3933_ce),.dout(grp_fu_3933_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U315(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3937_p0),.din1(grp_fu_3937_p1),.ce(grp_fu_3937_ce),.dout(grp_fu_3937_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1603_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_bicg_Pipeline_lp1_fu_1603_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1603_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1603_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_1743_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_bicg_Pipeline_lp3_fu_1743_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_1743_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_1743_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1592_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_1592_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1592_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1592_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1819_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_bicg_Pipeline_lpwr_fu_1819_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1819_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1819_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_126 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_126 <= add_ln13_reg_2554;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2554 <= add_ln13_fu_1845_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_p_1_load_10_reg_3471 <= buff_p_1_q0;
        buff_p_1_load_11_reg_3476 <= buff_p_1_q1;
        buff_p_load_10_reg_3461 <= buff_p_q0;
        buff_p_load_11_reg_3466 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_p_1_load_12_reg_3511 <= buff_p_1_q0;
        buff_p_1_load_13_reg_3516 <= buff_p_1_q1;
        buff_p_load_12_reg_3501 <= buff_p_q0;
        buff_p_load_13_reg_3506 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_p_1_load_14_reg_3551 <= buff_p_1_q0;
        buff_p_1_load_15_reg_3556 <= buff_p_1_q1;
        buff_p_load_14_reg_3541 <= buff_p_q0;
        buff_p_load_15_reg_3546 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_p_1_load_16_reg_3591 <= buff_p_1_q0;
        buff_p_1_load_17_reg_3596 <= buff_p_1_q1;
        buff_p_load_16_reg_3581 <= buff_p_q0;
        buff_p_load_17_reg_3586 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_p_1_load_18_reg_3631 <= buff_p_1_q0;
        buff_p_1_load_19_reg_3636 <= buff_p_1_q1;
        buff_p_load_18_reg_3621 <= buff_p_q0;
        buff_p_load_19_reg_3626 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_load_1_reg_3276 <= buff_p_1_q0;
        buff_p_1_load_reg_3271 <= buff_p_1_q1;
        buff_p_load_1_reg_3266 <= buff_p_q0;
        buff_p_load_reg_3261 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_p_1_load_20_reg_3671 <= buff_p_1_q0;
        buff_p_1_load_21_reg_3676 <= buff_p_1_q1;
        buff_p_load_20_reg_3661 <= buff_p_q0;
        buff_p_load_21_reg_3666 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_p_1_load_22_reg_3711 <= buff_p_1_q0;
        buff_p_1_load_23_reg_3716 <= buff_p_1_q1;
        buff_p_load_22_reg_3701 <= buff_p_q0;
        buff_p_load_23_reg_3706 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_p_1_load_24_reg_3751 <= buff_p_1_q0;
        buff_p_1_load_25_reg_3756 <= buff_p_1_q1;
        buff_p_load_24_reg_3741 <= buff_p_q0;
        buff_p_load_25_reg_3746 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_p_1_load_26_reg_3791 <= buff_p_1_q0;
        buff_p_1_load_27_reg_3796 <= buff_p_1_q1;
        buff_p_load_26_reg_3781 <= buff_p_q0;
        buff_p_load_27_reg_3786 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_p_1_load_28_reg_3831 <= buff_p_1_q0;
        buff_p_1_load_29_reg_3836 <= buff_p_1_q1;
        buff_p_load_28_reg_3821 <= buff_p_q0;
        buff_p_load_29_reg_3826 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_p_1_load_2_reg_3311 <= buff_p_1_q0;
        buff_p_1_load_3_reg_3316 <= buff_p_1_q1;
        buff_p_load_2_reg_3301 <= buff_p_q0;
        buff_p_load_3_reg_3306 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_p_1_load_30_reg_3851 <= buff_p_1_q0;
        buff_p_1_load_31_reg_3856 <= buff_p_1_q1;
        buff_p_load_30_reg_3841 <= buff_p_q0;
        buff_p_load_31_reg_3846 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_p_1_load_4_reg_3351 <= buff_p_1_q0;
        buff_p_1_load_5_reg_3356 <= buff_p_1_q1;
        buff_p_load_4_reg_3341 <= buff_p_q0;
        buff_p_load_5_reg_3346 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_p_1_load_6_reg_3391 <= buff_p_1_q0;
        buff_p_1_load_7_reg_3396 <= buff_p_1_q1;
        buff_p_load_6_reg_3381 <= buff_p_q0;
        buff_p_load_7_reg_3386 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_p_1_load_8_reg_3431 <= buff_p_1_q0;
        buff_p_1_load_9_reg_3436 <= buff_p_1_q1;
        buff_p_load_8_reg_3421 <= buff_p_q0;
        buff_p_load_9_reg_3426 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_load_10_reg_2826 <= buff_s_out_1_q0;
        buff_s_out_1_load_11_reg_2836 <= buff_s_out_1_q1;
        buff_s_out_load_10_reg_2821 <= buff_s_out_q0;
        buff_s_out_load_11_reg_2831 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_load_12_reg_2866 <= buff_s_out_1_q0;
        buff_s_out_1_load_13_reg_2876 <= buff_s_out_1_q1;
        buff_s_out_load_12_reg_2861 <= buff_s_out_q0;
        buff_s_out_load_13_reg_2871 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_load_14_reg_2906 <= buff_s_out_1_q0;
        buff_s_out_1_load_15_reg_2916 <= buff_s_out_1_q1;
        buff_s_out_load_14_reg_2901 <= buff_s_out_q0;
        buff_s_out_load_15_reg_2911 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_load_16_reg_2946 <= buff_s_out_1_q0;
        buff_s_out_1_load_17_reg_2956 <= buff_s_out_1_q1;
        buff_s_out_load_16_reg_2941 <= buff_s_out_q0;
        buff_s_out_load_17_reg_2951 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_load_18_reg_2986 <= buff_s_out_1_q0;
        buff_s_out_1_load_19_reg_2996 <= buff_s_out_1_q1;
        buff_s_out_load_18_reg_2981 <= buff_s_out_q0;
        buff_s_out_load_19_reg_2991 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_load_1_reg_2636 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2626 <= buff_s_out_1_q1;
        buff_s_out_load_1_reg_2631 <= buff_s_out_q0;
        buff_s_out_load_reg_2621 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_load_20_reg_3026 <= buff_s_out_1_q0;
        buff_s_out_1_load_21_reg_3036 <= buff_s_out_1_q1;
        buff_s_out_load_20_reg_3021 <= buff_s_out_q0;
        buff_s_out_load_21_reg_3031 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_load_22_reg_3066 <= buff_s_out_1_q0;
        buff_s_out_1_load_23_reg_3076 <= buff_s_out_1_q1;
        buff_s_out_load_22_reg_3061 <= buff_s_out_q0;
        buff_s_out_load_23_reg_3071 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_load_24_reg_3106 <= buff_s_out_1_q0;
        buff_s_out_1_load_25_reg_3116 <= buff_s_out_1_q1;
        buff_s_out_load_24_reg_3101 <= buff_s_out_q0;
        buff_s_out_load_25_reg_3111 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_load_26_reg_3146 <= buff_s_out_1_q0;
        buff_s_out_1_load_27_reg_3156 <= buff_s_out_1_q1;
        buff_s_out_load_26_reg_3141 <= buff_s_out_q0;
        buff_s_out_load_27_reg_3151 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_load_28_reg_3186 <= buff_s_out_1_q0;
        buff_s_out_1_load_29_reg_3196 <= buff_s_out_1_q1;
        buff_s_out_load_28_reg_3181 <= buff_s_out_q0;
        buff_s_out_load_29_reg_3191 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_2_reg_2666 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2676 <= buff_s_out_1_q1;
        buff_s_out_load_2_reg_2661 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2671 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_load_30_reg_3206 <= buff_s_out_1_q0;
        buff_s_out_1_load_31_reg_3216 <= buff_s_out_1_q1;
        buff_s_out_load_30_reg_3201 <= buff_s_out_q0;
        buff_s_out_load_31_reg_3211 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_4_reg_2706 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_2716 <= buff_s_out_1_q1;
        buff_s_out_load_4_reg_2701 <= buff_s_out_q0;
        buff_s_out_load_5_reg_2711 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_6_reg_2746 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_2756 <= buff_s_out_1_q1;
        buff_s_out_load_6_reg_2741 <= buff_s_out_q0;
        buff_s_out_load_7_reg_2751 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_8_reg_2786 <= buff_s_out_1_q0;
        buff_s_out_1_load_9_reg_2796 <= buff_s_out_1_q1;
        buff_s_out_load_8_reg_2781 <= buff_s_out_q0;
        buff_s_out_load_9_reg_2791 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_2593 <= trunc_ln13_fu_1857_p1;
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
    if ((grp_bicg_Pipeline_lp1_fu_1603_ap_done == 1'b0)) begin
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
    if ((grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1819_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1592_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state39) & (grp_bicg_Pipeline_lpwr_fu_1819_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state39) & (grp_bicg_Pipeline_lpwr_fu_1819_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address2;
    end else begin
        buff_A_1_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address3 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address3 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address3;
    end else begin
        buff_A_1_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address4 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address4;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address4 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address4;
    end else begin
        buff_A_1_address4 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address5 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address5;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address5 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address5;
    end else begin
        buff_A_1_address5 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address6 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address6;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address6 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address6;
    end else begin
        buff_A_1_address6 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address7 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address7;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address7 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address7;
    end else begin
        buff_A_1_address7 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address8 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_address8;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address8 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_address8;
    end else begin
        buff_A_1_address8 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce10 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce11 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce12 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce13 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce14 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce15 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce4;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce5;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce6;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce7;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce8;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce9 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address2;
    end else begin
        buff_A_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address3 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address3 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address3;
    end else begin
        buff_A_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address4 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address4;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address4 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address4;
    end else begin
        buff_A_address4 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address5 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address5;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address5 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address5;
    end else begin
        buff_A_address5 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address6 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address6;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address6 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address6;
    end else begin
        buff_A_address6 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address7 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address7;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address7 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address7;
    end else begin
        buff_A_address7 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address8 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_address8;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address8 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_address8;
    end else begin
        buff_A_address8 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce10 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce11 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce12 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce13 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce14 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce15 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce4;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce5;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce6;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce7;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce8;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp1_fu_1603_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce9 = grp_bicg_Pipeline_lp3_fu_1743_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1592_buff_A_we0;
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
        buff_p_1_address0_local = zext_ln5_fu_1873_p1;
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
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp1_fu_1603_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp1_fu_1603_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd1))) begin
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
        buff_p_address0_local = zext_ln5_fu_1873_p1;
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
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp1_fu_1603_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp1_fu_1603_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1873_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_ce0;
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
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_we1 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_1_we1;
    end else begin
        buff_q_out_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1873_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_ce0;
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
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_we1 = grp_bicg_Pipeline_lp3_fu_1743_buff_q_out_we1;
    end else begin
        buff_q_out_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1603_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1873_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1603_buff_r_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1603_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1873_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1603_buff_r_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_30_reg_3166;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_28_reg_3126;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_26_reg_3086;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_24_reg_3046;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_22_reg_3006;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_20_reg_2966;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_18_reg_2926;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_16_reg_2886;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_14_reg_2846;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_12_reg_2806;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_10_reg_2766;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_8_reg_2726;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_2686;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2646;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2606;
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
        buff_s_out_1_address0_local = zext_ln5_fu_1873_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_31_reg_3176;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_29_reg_3136;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_27_reg_3096;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_25_reg_3056;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_23_reg_3016;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_21_reg_2976;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_19_reg_2936;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_17_reg_2896;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_15_reg_2856;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_13_reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_11_reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_9_reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2656;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2616;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done ==1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_61115_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_57111_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_53107_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_49103_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_4599_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_4195_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3791_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3387_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2983_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2579_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2175_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1771_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1367_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_963_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_559_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_155_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_63117_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_59113_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_55109_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_51105_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_47101_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_4397_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3993_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3589_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3185_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2781_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2377_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1973_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1569_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1165_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_761_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_357_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address0_local = buff_s_out_addr_30_reg_3161;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_address0_local = buff_s_out_addr_28_reg_3121;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_address0_local = buff_s_out_addr_26_reg_3081;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address0_local = buff_s_out_addr_24_reg_3041;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address0_local = buff_s_out_addr_22_reg_3001;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address0_local = buff_s_out_addr_20_reg_2961;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address0_local = buff_s_out_addr_18_reg_2921;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address0_local = buff_s_out_addr_16_reg_2881;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address0_local = buff_s_out_addr_14_reg_2841;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address0_local = buff_s_out_addr_12_reg_2801;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address0_local = buff_s_out_addr_10_reg_2761;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address0_local = buff_s_out_addr_8_reg_2721;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_2681;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2641;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2601;
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
        buff_s_out_address0_local = zext_ln5_fu_1873_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address1_local = buff_s_out_addr_31_reg_3171;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_address1_local = buff_s_out_addr_29_reg_3131;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_address1_local = buff_s_out_addr_27_reg_3091;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address1_local = buff_s_out_addr_25_reg_3051;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address1_local = buff_s_out_addr_23_reg_3011;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address1_local = buff_s_out_addr_21_reg_2971;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address1_local = buff_s_out_addr_19_reg_2931;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address1_local = buff_s_out_addr_17_reg_2891;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address1_local = buff_s_out_addr_15_reg_2851;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address1_local = buff_s_out_addr_13_reg_2811;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address1_local = buff_s_out_addr_11_reg_2771;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address1_local = buff_s_out_addr_9_reg_2731;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_2691;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2651;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2611;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1819_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done ==1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_60114_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_56110_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_52106_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_48102_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_4498_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_4094_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3690_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3286_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2882_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2478_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2074_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1670_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1266_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_862_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_458_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1603_add_154_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_62116_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_58112_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_54108_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_50104_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_46100_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_4296_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3892_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3488_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_3084_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2680_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_2276_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1872_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1468_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_1064_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_660_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1603_add_1_256_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1861_p1 == 1'd0)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3861_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3861_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_ce;
    end else begin
        grp_fu_3861_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3861_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3861_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_din0;
    end else begin
        grp_fu_3861_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3861_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3861_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3861_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3861_p_din1;
    end else begin
        grp_fu_3861_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3865_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3865_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_ce;
    end else begin
        grp_fu_3865_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3865_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3865_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_din0;
    end else begin
        grp_fu_3865_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3865_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3865_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3865_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3865_p_din1;
    end else begin
        grp_fu_3865_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3869_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3869_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_ce;
    end else begin
        grp_fu_3869_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3869_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3869_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_din0;
    end else begin
        grp_fu_3869_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3869_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3869_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3869_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3869_p_din1;
    end else begin
        grp_fu_3869_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3873_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3873_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_ce;
    end else begin
        grp_fu_3873_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3873_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3873_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_din0;
    end else begin
        grp_fu_3873_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3873_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3873_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3873_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3873_p_din1;
    end else begin
        grp_fu_3873_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3877_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3877_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_ce;
    end else begin
        grp_fu_3877_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3877_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3877_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_din0;
    end else begin
        grp_fu_3877_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3877_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3877_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3877_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3877_p_din1;
    end else begin
        grp_fu_3877_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3881_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3881_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_ce;
    end else begin
        grp_fu_3881_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3881_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3881_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_din0;
    end else begin
        grp_fu_3881_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3881_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3881_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3881_p_din1;
    end else begin
        grp_fu_3881_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3885_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3885_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_ce;
    end else begin
        grp_fu_3885_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3885_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3885_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_din0;
    end else begin
        grp_fu_3885_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3885_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3885_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3885_p_din1;
    end else begin
        grp_fu_3885_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3889_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3889_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_ce;
    end else begin
        grp_fu_3889_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3889_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3889_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_din0;
    end else begin
        grp_fu_3889_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3889_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3889_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3889_p_din1;
    end else begin
        grp_fu_3889_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3893_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3893_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_ce;
    end else begin
        grp_fu_3893_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3893_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3893_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_din0;
    end else begin
        grp_fu_3893_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3893_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3893_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3893_p_din1;
    end else begin
        grp_fu_3893_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3897_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3897_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_ce;
    end else begin
        grp_fu_3897_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3897_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3897_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_din0;
    end else begin
        grp_fu_3897_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3897_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3897_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3897_p_din1;
    end else begin
        grp_fu_3897_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3901_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3901_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_ce;
    end else begin
        grp_fu_3901_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3901_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3901_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_din0;
    end else begin
        grp_fu_3901_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3901_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3901_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3901_p_din1;
    end else begin
        grp_fu_3901_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3905_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3905_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_ce;
    end else begin
        grp_fu_3905_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3905_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3905_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_din0;
    end else begin
        grp_fu_3905_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3905_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3905_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3905_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3905_p_din1;
    end else begin
        grp_fu_3905_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3909_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3909_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_ce;
    end else begin
        grp_fu_3909_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3909_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3909_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_din0;
    end else begin
        grp_fu_3909_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3909_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3909_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3909_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3909_p_din1;
    end else begin
        grp_fu_3909_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3913_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3913_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_ce;
    end else begin
        grp_fu_3913_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3913_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3913_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_din0;
    end else begin
        grp_fu_3913_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3913_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3913_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3913_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3913_p_din1;
    end else begin
        grp_fu_3913_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3917_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3917_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_ce;
    end else begin
        grp_fu_3917_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3917_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3917_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_din0;
    end else begin
        grp_fu_3917_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3917_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3917_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3917_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3917_p_din1;
    end else begin
        grp_fu_3917_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3921_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3921_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_ce;
    end else begin
        grp_fu_3921_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3921_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3921_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_din0;
    end else begin
        grp_fu_3921_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3921_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3921_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3921_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3921_p_din1;
    end else begin
        grp_fu_3921_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3925_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3925_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_ce;
    end else begin
        grp_fu_3925_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3925_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3925_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_din0;
    end else begin
        grp_fu_3925_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3925_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3925_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3925_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3925_p_din1;
    end else begin
        grp_fu_3925_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3929_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3929_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_ce;
    end else begin
        grp_fu_3929_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3929_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3929_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_din0;
    end else begin
        grp_fu_3929_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3929_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3929_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3929_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3929_p_din1;
    end else begin
        grp_fu_3929_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3933_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3933_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_ce;
    end else begin
        grp_fu_3933_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3933_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3933_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_din0;
    end else begin
        grp_fu_3933_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3933_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3933_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3933_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3933_p_din1;
    end else begin
        grp_fu_3933_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3937_ce = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3937_ce = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_ce;
    end else begin
        grp_fu_3937_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3937_p0 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3937_p0 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_din0;
    end else begin
        grp_fu_3937_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3937_p1 = grp_bicg_Pipeline_lp3_fu_1743_grp_fu_3937_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3937_p1 = grp_bicg_Pipeline_lp1_fu_1603_grp_fu_3937_p_din1;
    end else begin
        grp_fu_3937_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1819_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1819_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1839_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_1592_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((grp_bicg_Pipeline_lp1_fu_1603_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
            if (((1'b1 == ap_CS_fsm_state37) & (grp_bicg_Pipeline_lp3_fu_1743_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((1'b1 == ap_CS_fsm_state39) & (grp_bicg_Pipeline_lpwr_fu_1819_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1592_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1592_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1592_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1592_A_1_ce0;
assign add_ln13_fu_1845_p2 = (i_fu_126 + 7'd1);
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
assign bitcast_ln14_fu_1885_p1 = p_q0;
assign bitcast_ln15_fu_1891_p1 = r_q0;
assign buff_s_out_1_addr_10_reg_2766 = 64'd10;
assign buff_s_out_1_addr_11_reg_2776 = 64'd11;
assign buff_s_out_1_addr_12_reg_2806 = 64'd12;
assign buff_s_out_1_addr_13_reg_2816 = 64'd13;
assign buff_s_out_1_addr_14_reg_2846 = 64'd14;
assign buff_s_out_1_addr_15_reg_2856 = 64'd15;
assign buff_s_out_1_addr_16_reg_2886 = 64'd16;
assign buff_s_out_1_addr_17_reg_2896 = 64'd17;
assign buff_s_out_1_addr_18_reg_2926 = 64'd18;
assign buff_s_out_1_addr_19_reg_2936 = 64'd19;
assign buff_s_out_1_addr_20_reg_2966 = 64'd20;
assign buff_s_out_1_addr_21_reg_2976 = 64'd21;
assign buff_s_out_1_addr_22_reg_3006 = 64'd22;
assign buff_s_out_1_addr_23_reg_3016 = 64'd23;
assign buff_s_out_1_addr_24_reg_3046 = 64'd24;
assign buff_s_out_1_addr_25_reg_3056 = 64'd25;
assign buff_s_out_1_addr_26_reg_3086 = 64'd26;
assign buff_s_out_1_addr_27_reg_3096 = 64'd27;
assign buff_s_out_1_addr_28_reg_3126 = 64'd28;
assign buff_s_out_1_addr_29_reg_3136 = 64'd29;
assign buff_s_out_1_addr_2_reg_2606 = 64'd2;
assign buff_s_out_1_addr_30_reg_3166 = 64'd30;
assign buff_s_out_1_addr_31_reg_3176 = 64'd31;
assign buff_s_out_1_addr_3_reg_2616 = 64'd3;
assign buff_s_out_1_addr_4_reg_2646 = 64'd4;
assign buff_s_out_1_addr_5_reg_2656 = 64'd5;
assign buff_s_out_1_addr_6_reg_2686 = 64'd6;
assign buff_s_out_1_addr_7_reg_2696 = 64'd7;
assign buff_s_out_1_addr_8_reg_2726 = 64'd8;
assign buff_s_out_1_addr_9_reg_2736 = 64'd9;
assign buff_s_out_addr_10_reg_2761 = 64'd10;
assign buff_s_out_addr_11_reg_2771 = 64'd11;
assign buff_s_out_addr_12_reg_2801 = 64'd12;
assign buff_s_out_addr_13_reg_2811 = 64'd13;
assign buff_s_out_addr_14_reg_2841 = 64'd14;
assign buff_s_out_addr_15_reg_2851 = 64'd15;
assign buff_s_out_addr_16_reg_2881 = 64'd16;
assign buff_s_out_addr_17_reg_2891 = 64'd17;
assign buff_s_out_addr_18_reg_2921 = 64'd18;
assign buff_s_out_addr_19_reg_2931 = 64'd19;
assign buff_s_out_addr_20_reg_2961 = 64'd20;
assign buff_s_out_addr_21_reg_2971 = 64'd21;
assign buff_s_out_addr_22_reg_3001 = 64'd22;
assign buff_s_out_addr_23_reg_3011 = 64'd23;
assign buff_s_out_addr_24_reg_3041 = 64'd24;
assign buff_s_out_addr_25_reg_3051 = 64'd25;
assign buff_s_out_addr_26_reg_3081 = 64'd26;
assign buff_s_out_addr_27_reg_3091 = 64'd27;
assign buff_s_out_addr_28_reg_3121 = 64'd28;
assign buff_s_out_addr_29_reg_3131 = 64'd29;
assign buff_s_out_addr_2_reg_2601 = 64'd2;
assign buff_s_out_addr_30_reg_3161 = 64'd30;
assign buff_s_out_addr_31_reg_3171 = 64'd31;
assign buff_s_out_addr_3_reg_2611 = 64'd3;
assign buff_s_out_addr_4_reg_2641 = 64'd4;
assign buff_s_out_addr_5_reg_2651 = 64'd5;
assign buff_s_out_addr_6_reg_2681 = 64'd6;
assign buff_s_out_addr_7_reg_2691 = 64'd7;
assign buff_s_out_addr_8_reg_2721 = 64'd8;
assign buff_s_out_addr_9_reg_2731 = 64'd9;
assign grp_bicg_Pipeline_lp1_fu_1603_ap_start = grp_bicg_Pipeline_lp1_fu_1603_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_1743_ap_start = grp_bicg_Pipeline_lp3_fu_1743_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1592_ap_start = grp_bicg_Pipeline_lprd_2_fu_1592_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1819_ap_start = grp_bicg_Pipeline_lpwr_fu_1819_ap_start_reg;
assign icmp_ln13_fu_1839_p2 = ((i_fu_126 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1864_p4 = {{i_fu_126[5:1]}};
assign p_address0 = zext_ln13_fu_1851_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1819_q_out_din;
assign r_address0 = zext_ln13_fu_1851_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1819_s_out_din;
assign trunc_ln13_1_fu_1861_p1 = i_fu_126[0:0];
assign trunc_ln13_fu_1857_p1 = i_fu_126[5:0];
assign zext_ln13_fu_1851_p1 = i_fu_126;
assign zext_ln5_fu_1873_p1 = lshr_ln5_fu_1864_p4;
endmodule 