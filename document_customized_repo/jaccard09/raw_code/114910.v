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
wire   [6:0] add_ln13_fu_1500_p2;
reg   [6:0] add_ln13_reg_2230;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1512_p1;
reg   [5:0] trunc_ln13_reg_2293;
wire    ap_CS_fsm_state3;
wire   [1:0] trunc_ln13_1_fu_1516_p1;
reg   [1:0] trunc_ln13_1_reg_2298;
wire   [3:0] lshr_ln5_fu_1520_p4;
reg   [3:0] lshr_ln5_reg_2303;
wire   [0:0] empty_fu_1566_p2;
reg   [0:0] empty_reg_2308;
wire   [3:0] buff_s_out_addr_2_reg_2313;
wire    ap_CS_fsm_state5;
wire   [3:0] buff_s_out_1_addr_2_reg_2318;
wire   [3:0] buff_s_out_2_addr_2_reg_2323;
wire   [3:0] buff_s_out_3_addr_2_reg_2328;
wire   [3:0] buff_s_out_addr_3_reg_2333;
wire   [3:0] buff_s_out_1_addr_3_reg_2338;
wire   [3:0] buff_s_out_2_addr_3_reg_2343;
wire   [3:0] buff_s_out_3_addr_3_reg_2348;
reg   [31:0] buff_s_out_load_reg_2353;
reg   [31:0] buff_s_out_1_load_reg_2358;
reg   [31:0] buff_s_out_2_load_reg_2363;
reg   [31:0] buff_s_out_3_load_reg_2368;
reg   [31:0] buff_s_out_load_1_reg_2373;
reg   [31:0] buff_s_out_1_load_1_reg_2378;
reg   [31:0] buff_s_out_2_load_1_reg_2383;
reg   [31:0] buff_s_out_3_load_1_reg_2388;
wire   [3:0] buff_s_out_addr_4_reg_2393;
wire    ap_CS_fsm_state6;
wire   [3:0] buff_s_out_1_addr_4_reg_2398;
wire   [3:0] buff_s_out_2_addr_4_reg_2403;
wire   [3:0] buff_s_out_3_addr_4_reg_2408;
wire   [3:0] buff_s_out_addr_5_reg_2413;
wire   [3:0] buff_s_out_1_addr_5_reg_2418;
wire   [3:0] buff_s_out_2_addr_5_reg_2423;
wire   [3:0] buff_s_out_3_addr_5_reg_2428;
reg   [31:0] buff_s_out_load_2_reg_2433;
reg   [31:0] buff_s_out_1_load_2_reg_2438;
reg   [31:0] buff_s_out_2_load_2_reg_2443;
reg   [31:0] buff_s_out_3_load_2_reg_2448;
reg   [31:0] buff_s_out_load_3_reg_2453;
reg   [31:0] buff_s_out_1_load_3_reg_2458;
reg   [31:0] buff_s_out_2_load_3_reg_2463;
reg   [31:0] buff_s_out_3_load_3_reg_2468;
wire   [3:0] buff_s_out_addr_6_reg_2473;
wire    ap_CS_fsm_state7;
wire   [3:0] buff_s_out_1_addr_6_reg_2478;
wire   [3:0] buff_s_out_2_addr_6_reg_2483;
wire   [3:0] buff_s_out_3_addr_6_reg_2488;
wire   [3:0] buff_s_out_addr_7_reg_2493;
wire   [3:0] buff_s_out_1_addr_7_reg_2498;
wire   [3:0] buff_s_out_2_addr_7_reg_2503;
wire   [3:0] buff_s_out_3_addr_7_reg_2508;
reg   [31:0] buff_s_out_load_4_reg_2513;
reg   [31:0] buff_s_out_1_load_4_reg_2518;
reg   [31:0] buff_s_out_2_load_4_reg_2523;
reg   [31:0] buff_s_out_3_load_4_reg_2528;
reg   [31:0] buff_s_out_load_5_reg_2533;
reg   [31:0] buff_s_out_1_load_5_reg_2538;
reg   [31:0] buff_s_out_2_load_5_reg_2543;
reg   [31:0] buff_s_out_3_load_5_reg_2548;
wire   [3:0] buff_s_out_addr_8_reg_2553;
wire    ap_CS_fsm_state8;
wire   [3:0] buff_s_out_1_addr_8_reg_2558;
wire   [3:0] buff_s_out_2_addr_8_reg_2563;
wire   [3:0] buff_s_out_3_addr_8_reg_2568;
wire   [3:0] buff_s_out_addr_9_reg_2573;
wire   [3:0] buff_s_out_1_addr_9_reg_2578;
wire   [3:0] buff_s_out_2_addr_9_reg_2583;
wire   [3:0] buff_s_out_3_addr_9_reg_2588;
reg   [31:0] buff_s_out_load_6_reg_2593;
reg   [31:0] buff_s_out_1_load_6_reg_2598;
reg   [31:0] buff_s_out_2_load_6_reg_2603;
reg   [31:0] buff_s_out_3_load_6_reg_2608;
reg   [31:0] buff_s_out_load_7_reg_2613;
reg   [31:0] buff_s_out_1_load_7_reg_2618;
reg   [31:0] buff_s_out_2_load_7_reg_2623;
reg   [31:0] buff_s_out_3_load_7_reg_2628;
wire   [3:0] buff_s_out_addr_10_reg_2633;
wire    ap_CS_fsm_state9;
wire   [3:0] buff_s_out_1_addr_10_reg_2638;
wire   [3:0] buff_s_out_2_addr_10_reg_2643;
wire   [3:0] buff_s_out_3_addr_10_reg_2648;
wire   [3:0] buff_s_out_addr_11_reg_2653;
wire   [3:0] buff_s_out_1_addr_11_reg_2658;
wire   [3:0] buff_s_out_2_addr_11_reg_2663;
wire   [3:0] buff_s_out_3_addr_11_reg_2668;
reg   [31:0] buff_s_out_load_8_reg_2673;
reg   [31:0] buff_s_out_1_load_8_reg_2678;
reg   [31:0] buff_s_out_2_load_8_reg_2683;
reg   [31:0] buff_s_out_3_load_8_reg_2688;
reg   [31:0] buff_s_out_load_9_reg_2693;
reg   [31:0] buff_s_out_1_load_9_reg_2698;
reg   [31:0] buff_s_out_2_load_9_reg_2703;
reg   [31:0] buff_s_out_3_load_9_reg_2708;
wire   [3:0] buff_s_out_addr_12_reg_2713;
wire    ap_CS_fsm_state10;
wire   [3:0] buff_s_out_1_addr_12_reg_2718;
wire   [3:0] buff_s_out_2_addr_12_reg_2723;
wire   [3:0] buff_s_out_3_addr_12_reg_2728;
wire   [3:0] buff_s_out_addr_13_reg_2733;
wire   [3:0] buff_s_out_1_addr_13_reg_2738;
wire   [3:0] buff_s_out_2_addr_13_reg_2743;
wire   [3:0] buff_s_out_3_addr_13_reg_2748;
reg   [31:0] buff_s_out_load_10_reg_2753;
reg   [31:0] buff_s_out_1_load_10_reg_2758;
reg   [31:0] buff_s_out_2_load_10_reg_2763;
reg   [31:0] buff_s_out_3_load_10_reg_2768;
reg   [31:0] buff_s_out_load_11_reg_2773;
reg   [31:0] buff_s_out_1_load_11_reg_2778;
reg   [31:0] buff_s_out_2_load_11_reg_2783;
reg   [31:0] buff_s_out_3_load_11_reg_2788;
wire   [3:0] buff_s_out_addr_14_reg_2793;
wire    ap_CS_fsm_state11;
wire   [3:0] buff_s_out_1_addr_14_reg_2798;
wire   [3:0] buff_s_out_2_addr_14_reg_2803;
wire   [3:0] buff_s_out_3_addr_14_reg_2808;
wire   [3:0] buff_s_out_addr_15_reg_2813;
wire   [3:0] buff_s_out_1_addr_15_reg_2818;
wire   [3:0] buff_s_out_2_addr_15_reg_2823;
wire   [3:0] buff_s_out_3_addr_15_reg_2828;
reg   [31:0] buff_s_out_load_12_reg_2833;
reg   [31:0] buff_s_out_1_load_12_reg_2838;
reg   [31:0] buff_s_out_2_load_12_reg_2843;
reg   [31:0] buff_s_out_3_load_12_reg_2848;
reg   [31:0] buff_s_out_load_13_reg_2853;
reg   [31:0] buff_s_out_1_load_13_reg_2858;
reg   [31:0] buff_s_out_2_load_13_reg_2863;
reg   [31:0] buff_s_out_3_load_13_reg_2868;
reg   [31:0] buff_s_out_load_14_reg_2873;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_s_out_1_load_14_reg_2878;
reg   [31:0] buff_s_out_2_load_14_reg_2883;
reg   [31:0] buff_s_out_3_load_14_reg_2888;
reg   [31:0] buff_s_out_load_15_reg_2893;
reg   [31:0] buff_s_out_1_load_15_reg_2898;
reg   [31:0] buff_s_out_2_load_15_reg_2903;
reg   [31:0] buff_s_out_3_load_15_reg_2908;
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
reg   [3:0] buff_p_address0;
reg    buff_p_ce0;
wire   [31:0] buff_p_q0;
reg   [3:0] buff_p_1_address0;
reg    buff_p_1_ce0;
wire   [31:0] buff_p_1_q0;
reg   [3:0] buff_p_2_address0;
reg    buff_p_2_ce0;
wire   [31:0] buff_p_2_q0;
reg   [3:0] buff_p_3_address0;
reg    buff_p_3_ce0;
wire   [31:0] buff_p_3_q0;
reg   [3:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg    buff_r_ce1;
wire   [31:0] buff_r_q1;
reg   [3:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg    buff_r_1_ce1;
wire   [31:0] buff_r_1_q1;
reg   [3:0] buff_r_2_address0;
reg    buff_r_2_ce0;
wire   [31:0] buff_r_2_q0;
reg    buff_r_2_ce1;
wire   [31:0] buff_r_2_q1;
reg   [3:0] buff_r_3_address0;
reg    buff_r_3_ce0;
wire   [31:0] buff_r_3_q0;
reg    buff_r_3_ce1;
wire   [31:0] buff_r_3_q1;
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
reg   [3:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg   [3:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg   [3:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1250_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_A_0_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1250_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1250_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1250_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_A_3_ce0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_d0;
wire   [7:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_d0;
wire    grp_bicg_Pipeline_lp1_fu_1282_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1282_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1282_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1282_ap_ready;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_ce1;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_ce0;
wire   [7:0] grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_ce1;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_63186_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_63186_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_62185_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_62185_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_61184_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_61184_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_60183_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_60183_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_59182_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_59182_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_58181_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_58181_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_57180_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_57180_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_56179_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_56179_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_55178_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_55178_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_54177_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_54177_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_53176_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_53176_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_52175_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_52175_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_51174_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_51174_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_50173_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_50173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_49172_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_49172_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_48171_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_48171_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_47170_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_47170_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_46169_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_46169_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_45168_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_45168_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_44167_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_44167_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_43166_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_43166_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_42165_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_42165_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_41164_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_41164_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_40163_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_40163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_39162_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_39162_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_38161_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_38161_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_37160_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_37160_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_36159_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_36159_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_35158_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_35158_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_34157_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_34157_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_33156_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_33156_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_32155_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_32155_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_31154_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_31154_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_30153_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_30153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_29152_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_29152_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_28151_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_28151_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_27150_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_27150_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_26149_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_26149_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_25148_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_25148_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_24147_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_24147_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_23146_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_23146_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_22145_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_22145_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_21144_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_21144_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_20143_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_20143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_19142_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_19142_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_18141_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_18141_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_17140_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_17140_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_16139_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_16139_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_15138_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_15138_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_14137_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_14137_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_13136_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_13136_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_12135_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_12135_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_11134_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_11134_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_10133_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_10133_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_9132_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_9132_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_8131_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_8131_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_7130_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_7130_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_6129_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_6129_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_5128_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_5128_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_4127_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_4127_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_3126_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_3126_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_2125_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_2125_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7_1124_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7_1124_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_add_7123_out;
wire    grp_bicg_Pipeline_lp1_fu_1282_add_7123_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_ce;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_ready;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_1_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_2_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_3_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_4_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_5_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_6_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_7_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_8_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_9_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_10_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_11_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_12_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_13_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_14_ce0;
wire   [7:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_15_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1470_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1470_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1470_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1470_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1470_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1470_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1470_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1470_q_out_write;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_3_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1250_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp1_fu_1282_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start_reg;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
reg    grp_bicg_Pipeline_lpwr_fu_1470_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] zext_ln13_fu_1506_p1;
wire   [0:0] icmp_ln13_fu_1494_p2;
wire   [63:0] zext_ln5_fu_1530_p1;
reg   [6:0] i_fu_108;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [3:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [3:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
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
wire   [31:0] bitcast_ln14_fu_1550_p1;
reg    buff_p_2_ce0_local;
reg    buff_r_2_we0_local;
wire   [31:0] bitcast_ln15_fu_1558_p1;
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
reg    buff_p_3_we0_local;
reg    buff_p_3_ce0_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
wire   [31:0] grp_fu_2913_p2;
reg   [31:0] grp_fu_2913_p0;
reg   [31:0] grp_fu_2913_p1;
reg    grp_fu_2913_ce;
wire   [31:0] grp_fu_2917_p2;
reg   [31:0] grp_fu_2917_p0;
reg   [31:0] grp_fu_2917_p1;
reg    grp_fu_2917_ce;
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
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 23'd1;
#0 grp_bicg_Pipeline_lprd_2_fu_1250_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1282_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1470_ap_start_reg = 1'b0;
#0 i_fu_108 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_8_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_8_address0),.ce0(buff_A_8_ce0),.we0(buff_A_8_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_d0),.q0(buff_A_8_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_address1),.ce1(buff_A_8_ce1),.q1(buff_A_8_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_9_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_9_address0),.ce0(buff_A_9_ce0),.we0(buff_A_9_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_d0),.q0(buff_A_9_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_address1),.ce1(buff_A_9_ce1),.q1(buff_A_9_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_10_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_10_address0),.ce0(buff_A_10_ce0),.we0(buff_A_10_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_d0),.q0(buff_A_10_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_address1),.ce1(buff_A_10_ce1),.q1(buff_A_10_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_11_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_11_address0),.ce0(buff_A_11_ce0),.we0(buff_A_11_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_d0),.q0(buff_A_11_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_address1),.ce1(buff_A_11_ce1),.q1(buff_A_11_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_12_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_12_address0),.ce0(buff_A_12_ce0),.we0(buff_A_12_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_d0),.q0(buff_A_12_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_address1),.ce1(buff_A_12_ce1),.q1(buff_A_12_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_13_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_13_address0),.ce0(buff_A_13_ce0),.we0(buff_A_13_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_d0),.q0(buff_A_13_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_address1),.ce1(buff_A_13_ce1),.q1(buff_A_13_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_14_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_14_address0),.ce0(buff_A_14_ce0),.we0(buff_A_14_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_d0),.q0(buff_A_14_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_address1),.ce1(buff_A_14_ce1),.q1(buff_A_14_q1));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_15_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_15_address0),.ce0(buff_A_15_ce0),.we0(buff_A_15_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_d0),.q0(buff_A_15_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_address1),.ce1(buff_A_15_ce1),.q1(buff_A_15_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1550_p1),.q0(buff_p_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1550_p1),.q0(buff_p_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_1550_p1),.q0(buff_p_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_1550_p1),.q0(buff_p_3_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1558_p1),.q0(buff_r_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_address1),.ce1(buff_r_ce1),.q1(buff_r_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1558_p1),.q0(buff_r_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_address1),.ce1(buff_r_1_ce1),.q1(buff_r_1_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_1558_p1),.q0(buff_r_2_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_address1),.ce1(buff_r_2_ce1),.q1(buff_r_2_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_1558_p1),.q0(buff_r_3_q0),.address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_address1),.ce1(buff_r_3_ce1),.q1(buff_r_3_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0_local),.d0(buff_s_out_d0_local),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0_local),.d0(buff_s_out_1_d0_local),.q0(buff_s_out_1_q0),.address1(buff_s_out_1_address1_local),.ce1(buff_s_out_1_ce1_local),.we1(buff_s_out_1_we1_local),.d1(buff_s_out_1_d1_local),.q1(buff_s_out_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0_local),.d0(buff_s_out_2_d0_local),.q0(buff_s_out_2_q0),.address1(buff_s_out_2_address1_local),.ce1(buff_s_out_2_ce1_local),.we1(buff_s_out_2_we1_local),.d1(buff_s_out_2_d1_local),.q1(buff_s_out_2_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0_local),.d0(buff_s_out_3_d0_local),.q0(buff_s_out_3_q0),.address1(buff_s_out_3_address1_local),.ce1(buff_s_out_3_ce1_local),.we1(buff_s_out_3_we1_local),.d1(buff_s_out_3_d1_local),.q1(buff_s_out_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1250(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1250_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1250_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1250_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1250_ap_ready),.i(trunc_ln13_reg_2293),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1250_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1250_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1250_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1250_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_A_3_ce0),.A_3_q0(A_3_q0),.lshr_ln5(lshr_ln5_reg_2303),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_d0),.buff_A_8_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_ce0),.buff_A_8_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_we0),.buff_A_8_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_d0),.buff_A_9_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_ce0),.buff_A_9_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_we0),.buff_A_9_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_d0),.buff_A_10_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_ce0),.buff_A_10_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_we0),.buff_A_10_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_d0),.buff_A_11_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_ce0),.buff_A_11_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_we0),.buff_A_11_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_d0),.buff_A_12_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_ce0),.buff_A_12_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_we0),.buff_A_12_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_d0),.buff_A_13_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_ce0),.buff_A_13_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_we0),.buff_A_13_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_d0),.buff_A_14_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_ce0),.buff_A_14_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_we0),.buff_A_14_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_d0),.buff_A_15_address0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_ce0),.buff_A_15_we0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_we0),.buff_A_15_d0(grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_d0),.empty_12(trunc_ln13_1_reg_2298),.empty(empty_reg_2308));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1282(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1282_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1282_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1282_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1282_ap_ready),.buff_s_out_3_load_15(buff_s_out_3_load_15_reg_2908),.buff_s_out_2_load_15(buff_s_out_2_load_15_reg_2903),.buff_s_out_1_load_15(buff_s_out_1_load_15_reg_2898),.buff_s_out_load_15(buff_s_out_load_15_reg_2893),.buff_s_out_3_load_14(buff_s_out_3_load_14_reg_2888),.buff_s_out_2_load_14(buff_s_out_2_load_14_reg_2883),.buff_s_out_1_load_14(buff_s_out_1_load_14_reg_2878),.buff_s_out_load_14(buff_s_out_load_14_reg_2873),.buff_s_out_3_load_13(buff_s_out_3_load_13_reg_2868),.buff_s_out_2_load_13(buff_s_out_2_load_13_reg_2863),.buff_s_out_1_load_13(buff_s_out_1_load_13_reg_2858),.buff_s_out_load_13(buff_s_out_load_13_reg_2853),.buff_s_out_3_load_12(buff_s_out_3_load_12_reg_2848),.buff_s_out_2_load_12(buff_s_out_2_load_12_reg_2843),.buff_s_out_1_load_12(buff_s_out_1_load_12_reg_2838),.buff_s_out_load_12(buff_s_out_load_12_reg_2833),.buff_s_out_3_load_11(buff_s_out_3_load_11_reg_2788),.buff_s_out_2_load_11(buff_s_out_2_load_11_reg_2783),.buff_s_out_1_load_11(buff_s_out_1_load_11_reg_2778),.buff_s_out_load_11(buff_s_out_load_11_reg_2773),.buff_s_out_3_load_10(buff_s_out_3_load_10_reg_2768),.buff_s_out_2_load_10(buff_s_out_2_load_10_reg_2763),.buff_s_out_1_load_10(buff_s_out_1_load_10_reg_2758),.buff_s_out_load_10(buff_s_out_load_10_reg_2753),.buff_s_out_3_load_9(buff_s_out_3_load_9_reg_2708),.buff_s_out_2_load_9(buff_s_out_2_load_9_reg_2703),.buff_s_out_1_load_9(buff_s_out_1_load_9_reg_2698),.buff_s_out_load_9(buff_s_out_load_9_reg_2693),.buff_s_out_3_load_8(buff_s_out_3_load_8_reg_2688),.buff_s_out_2_load_8(buff_s_out_2_load_8_reg_2683),.buff_s_out_1_load_8(buff_s_out_1_load_8_reg_2678),.buff_s_out_load_8(buff_s_out_load_8_reg_2673),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_2628),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_2623),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_2618),.buff_s_out_load_7(buff_s_out_load_7_reg_2613),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_2608),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_2603),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_2598),.buff_s_out_load_6(buff_s_out_load_6_reg_2593),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_2548),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_2543),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_2538),.buff_s_out_load_5(buff_s_out_load_5_reg_2533),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_2528),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_2523),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_2518),.buff_s_out_load_4(buff_s_out_load_4_reg_2513),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_2468),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_2463),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2458),.buff_s_out_load_3(buff_s_out_load_3_reg_2453),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_2448),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_2443),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2438),.buff_s_out_load_2(buff_s_out_load_2_reg_2433),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_2388),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_2383),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2378),.buff_s_out_load_1(buff_s_out_load_1_reg_2373),.buff_s_out_3_load(buff_s_out_3_load_reg_2368),.buff_s_out_2_load(buff_s_out_2_load_reg_2363),.buff_s_out_1_load(buff_s_out_1_load_reg_2358),.buff_s_out_load(buff_s_out_load_reg_2353),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_8_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_8_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_address1),.buff_A_8_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_ce1),.buff_A_8_q1(buff_A_8_q1),.buff_A_9_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_9_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_address1),.buff_A_9_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_ce1),.buff_A_9_q1(buff_A_9_q1),.buff_A_10_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_10_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_address1),.buff_A_10_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_ce1),.buff_A_10_q1(buff_A_10_q1),.buff_A_11_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_11_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_address1),.buff_A_11_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_ce1),.buff_A_11_q1(buff_A_11_q1),.buff_A_12_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_12_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_address1),.buff_A_12_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_ce1),.buff_A_12_q1(buff_A_12_q1),.buff_A_13_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_13_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_address1),.buff_A_13_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_ce1),.buff_A_13_q1(buff_A_13_q1),.buff_A_14_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_14_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_address1),.buff_A_14_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_ce1),.buff_A_14_q1(buff_A_14_q1),.buff_A_15_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_15_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_address1),.buff_A_15_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_ce1),.buff_A_15_q1(buff_A_15_q1),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_address1),.buff_r_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_ce1),.buff_r_q1(buff_r_q1),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_1_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_address1),.buff_r_1_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_ce1),.buff_r_1_q1(buff_r_1_q1),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_2_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_address1),.buff_r_2_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_ce1),.buff_r_2_q1(buff_r_2_q1),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_r_3_address1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_address1),.buff_r_3_ce1(grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_ce1),.buff_r_3_q1(buff_r_3_q1),.add_7_63186_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_63186_out),.add_7_63186_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_63186_out_ap_vld),.add_7_62185_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_62185_out),.add_7_62185_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_62185_out_ap_vld),.add_7_61184_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_61184_out),.add_7_61184_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_61184_out_ap_vld),.add_7_60183_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_60183_out),.add_7_60183_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_60183_out_ap_vld),.add_7_59182_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_59182_out),.add_7_59182_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_59182_out_ap_vld),.add_7_58181_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_58181_out),.add_7_58181_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_58181_out_ap_vld),.add_7_57180_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_57180_out),.add_7_57180_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_57180_out_ap_vld),.add_7_56179_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_56179_out),.add_7_56179_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_56179_out_ap_vld),.add_7_55178_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_55178_out),.add_7_55178_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_55178_out_ap_vld),.add_7_54177_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_54177_out),.add_7_54177_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_54177_out_ap_vld),.add_7_53176_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_53176_out),.add_7_53176_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_53176_out_ap_vld),.add_7_52175_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_52175_out),.add_7_52175_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_52175_out_ap_vld),.add_7_51174_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_51174_out),.add_7_51174_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_51174_out_ap_vld),.add_7_50173_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_50173_out),.add_7_50173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_50173_out_ap_vld),.add_7_49172_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_49172_out),.add_7_49172_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_49172_out_ap_vld),.add_7_48171_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_48171_out),.add_7_48171_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_48171_out_ap_vld),.add_7_47170_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_47170_out),.add_7_47170_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_47170_out_ap_vld),.add_7_46169_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_46169_out),.add_7_46169_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_46169_out_ap_vld),.add_7_45168_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_45168_out),.add_7_45168_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_45168_out_ap_vld),.add_7_44167_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_44167_out),.add_7_44167_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_44167_out_ap_vld),.add_7_43166_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_43166_out),.add_7_43166_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_43166_out_ap_vld),.add_7_42165_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_42165_out),.add_7_42165_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_42165_out_ap_vld),.add_7_41164_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_41164_out),.add_7_41164_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_41164_out_ap_vld),.add_7_40163_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_40163_out),.add_7_40163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_40163_out_ap_vld),.add_7_39162_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_39162_out),.add_7_39162_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_39162_out_ap_vld),.add_7_38161_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_38161_out),.add_7_38161_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_38161_out_ap_vld),.add_7_37160_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_37160_out),.add_7_37160_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_37160_out_ap_vld),.add_7_36159_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_36159_out),.add_7_36159_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_36159_out_ap_vld),.add_7_35158_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_35158_out),.add_7_35158_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_35158_out_ap_vld),.add_7_34157_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_34157_out),.add_7_34157_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_34157_out_ap_vld),.add_7_33156_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_33156_out),.add_7_33156_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_33156_out_ap_vld),.add_7_32155_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_32155_out),.add_7_32155_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_32155_out_ap_vld),.add_7_31154_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_31154_out),.add_7_31154_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_31154_out_ap_vld),.add_7_30153_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_30153_out),.add_7_30153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_30153_out_ap_vld),.add_7_29152_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_29152_out),.add_7_29152_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_29152_out_ap_vld),.add_7_28151_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_28151_out),.add_7_28151_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_28151_out_ap_vld),.add_7_27150_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_27150_out),.add_7_27150_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_27150_out_ap_vld),.add_7_26149_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_26149_out),.add_7_26149_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_26149_out_ap_vld),.add_7_25148_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_25148_out),.add_7_25148_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_25148_out_ap_vld),.add_7_24147_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_24147_out),.add_7_24147_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_24147_out_ap_vld),.add_7_23146_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_23146_out),.add_7_23146_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_23146_out_ap_vld),.add_7_22145_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_22145_out),.add_7_22145_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_22145_out_ap_vld),.add_7_21144_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_21144_out),.add_7_21144_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_21144_out_ap_vld),.add_7_20143_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_20143_out),.add_7_20143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_20143_out_ap_vld),.add_7_19142_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_19142_out),.add_7_19142_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_19142_out_ap_vld),.add_7_18141_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_18141_out),.add_7_18141_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_18141_out_ap_vld),.add_7_17140_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_17140_out),.add_7_17140_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_17140_out_ap_vld),.add_7_16139_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_16139_out),.add_7_16139_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_16139_out_ap_vld),.add_7_15138_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_15138_out),.add_7_15138_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_15138_out_ap_vld),.add_7_14137_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_14137_out),.add_7_14137_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_14137_out_ap_vld),.add_7_13136_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_13136_out),.add_7_13136_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_13136_out_ap_vld),.add_7_12135_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_12135_out),.add_7_12135_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_12135_out_ap_vld),.add_7_11134_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_11134_out),.add_7_11134_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_11134_out_ap_vld),.add_7_10133_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_10133_out),.add_7_10133_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_10133_out_ap_vld),.add_7_9132_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_9132_out),.add_7_9132_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_9132_out_ap_vld),.add_7_8131_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_8131_out),.add_7_8131_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_8131_out_ap_vld),.add_7_7130_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_7130_out),.add_7_7130_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_7130_out_ap_vld),.add_7_6129_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_6129_out),.add_7_6129_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_6129_out_ap_vld),.add_7_5128_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_5128_out),.add_7_5128_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_5128_out_ap_vld),.add_7_4127_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_4127_out),.add_7_4127_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_4127_out_ap_vld),.add_7_3126_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_3126_out),.add_7_3126_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_3126_out_ap_vld),.add_7_2125_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_2125_out),.add_7_2125_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_2125_out_ap_vld),.add_7_1124_out(grp_bicg_Pipeline_lp1_fu_1282_add_7_1124_out),.add_7_1124_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7_1124_out_ap_vld),.add_7123_out(grp_bicg_Pipeline_lp1_fu_1282_add_7123_out),.add_7123_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1282_add_7123_out_ap_vld),.grp_fu_2913_p_din0(grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_din0),.grp_fu_2913_p_din1(grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_din1),.grp_fu_2913_p_opcode(grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_opcode),.grp_fu_2913_p_dout0(grp_fu_2913_p2),.grp_fu_2913_p_ce(grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_ce),.grp_fu_2917_p_din0(grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_din0),.grp_fu_2917_p_din1(grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_din1),.grp_fu_2917_p_dout0(grp_fu_2917_p2),.grp_fu_2917_p_ce(grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_ce));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_1442(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_8_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_9_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_10_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_11_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_12_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_13_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_14_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_15_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_d0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_d0),.buff_q_out_3_q0(buff_q_out_3_q0),.grp_fu_2913_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_din0),.grp_fu_2913_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_din1),.grp_fu_2913_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_opcode),.grp_fu_2913_p_dout0(grp_fu_2913_p2),.grp_fu_2913_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_ce),.grp_fu_2917_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_din0),.grp_fu_2917_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_din1),.grp_fu_2917_p_dout0(grp_fu_2917_p2),.grp_fu_2917_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1470(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1470_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1470_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1470_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1470_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1470_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1470_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1470_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1470_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2913_p0),.din1(grp_fu_2913_p1),.ce(grp_fu_2913_ce),.dout(grp_fu_2913_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2917_p0),.din1(grp_fu_2917_p1),.ce(grp_fu_2917_ce),.dout(grp_fu_2917_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1282_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_bicg_Pipeline_lp1_fu_1282_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1282_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1282_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1250_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_1250_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1250_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1250_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1470_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_bicg_Pipeline_lpwr_fu_1470_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1470_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1470_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_108 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_108 <= add_ln13_reg_2230;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2230 <= add_ln13_fu_1500_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_load_10_reg_2758 <= buff_s_out_1_q0;
        buff_s_out_1_load_11_reg_2778 <= buff_s_out_1_q1;
        buff_s_out_2_load_10_reg_2763 <= buff_s_out_2_q0;
        buff_s_out_2_load_11_reg_2783 <= buff_s_out_2_q1;
        buff_s_out_3_load_10_reg_2768 <= buff_s_out_3_q0;
        buff_s_out_3_load_11_reg_2788 <= buff_s_out_3_q1;
        buff_s_out_load_10_reg_2753 <= buff_s_out_q0;
        buff_s_out_load_11_reg_2773 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_load_12_reg_2838 <= buff_s_out_1_q0;
        buff_s_out_1_load_13_reg_2858 <= buff_s_out_1_q1;
        buff_s_out_2_load_12_reg_2843 <= buff_s_out_2_q0;
        buff_s_out_2_load_13_reg_2863 <= buff_s_out_2_q1;
        buff_s_out_3_load_12_reg_2848 <= buff_s_out_3_q0;
        buff_s_out_3_load_13_reg_2868 <= buff_s_out_3_q1;
        buff_s_out_load_12_reg_2833 <= buff_s_out_q0;
        buff_s_out_load_13_reg_2853 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_load_14_reg_2878 <= buff_s_out_1_q0;
        buff_s_out_1_load_15_reg_2898 <= buff_s_out_1_q1;
        buff_s_out_2_load_14_reg_2883 <= buff_s_out_2_q0;
        buff_s_out_2_load_15_reg_2903 <= buff_s_out_2_q1;
        buff_s_out_3_load_14_reg_2888 <= buff_s_out_3_q0;
        buff_s_out_3_load_15_reg_2908 <= buff_s_out_3_q1;
        buff_s_out_load_14_reg_2873 <= buff_s_out_q0;
        buff_s_out_load_15_reg_2893 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_load_1_reg_2378 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2358 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_2383 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_2363 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_2388 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_2368 <= buff_s_out_3_q1;
        buff_s_out_load_1_reg_2373 <= buff_s_out_q0;
        buff_s_out_load_reg_2353 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_2_reg_2438 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2458 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_2443 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_2463 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_2448 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_2468 <= buff_s_out_3_q1;
        buff_s_out_load_2_reg_2433 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2453 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_4_reg_2518 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_2538 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_2523 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_2543 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_2528 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_2548 <= buff_s_out_3_q1;
        buff_s_out_load_4_reg_2513 <= buff_s_out_q0;
        buff_s_out_load_5_reg_2533 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_6_reg_2598 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_2618 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_2603 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_2623 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_2608 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_2628 <= buff_s_out_3_q1;
        buff_s_out_load_6_reg_2593 <= buff_s_out_q0;
        buff_s_out_load_7_reg_2613 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_8_reg_2678 <= buff_s_out_1_q0;
        buff_s_out_1_load_9_reg_2698 <= buff_s_out_1_q1;
        buff_s_out_2_load_8_reg_2683 <= buff_s_out_2_q0;
        buff_s_out_2_load_9_reg_2703 <= buff_s_out_2_q1;
        buff_s_out_3_load_8_reg_2688 <= buff_s_out_3_q0;
        buff_s_out_3_load_9_reg_2708 <= buff_s_out_3_q1;
        buff_s_out_load_8_reg_2673 <= buff_s_out_q0;
        buff_s_out_load_9_reg_2693 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_reg_2308 <= empty_fu_1566_p2;
        lshr_ln5_reg_2303 <= {{i_fu_108[5:2]}};
        trunc_ln13_1_reg_2298 <= trunc_ln13_1_fu_1516_p1;
        trunc_ln13_reg_2293 <= trunc_ln13_fu_1512_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1282_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
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
    if ((grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1470_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1250_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_bicg_Pipeline_lpwr_fu_1470_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_bicg_Pipeline_lpwr_fu_1470_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_address0;
    end else begin
        buff_A_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_ce0;
    end else begin
        buff_A_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_10_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_10_ce1;
    end else begin
        buff_A_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_10_we0;
    end else begin
        buff_A_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_address0;
    end else begin
        buff_A_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_ce0;
    end else begin
        buff_A_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_11_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_11_ce1;
    end else begin
        buff_A_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_11_we0;
    end else begin
        buff_A_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_address0;
    end else begin
        buff_A_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_ce0;
    end else begin
        buff_A_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_12_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_12_ce1;
    end else begin
        buff_A_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_12_we0;
    end else begin
        buff_A_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_address0;
    end else begin
        buff_A_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_ce0;
    end else begin
        buff_A_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_13_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_13_ce1;
    end else begin
        buff_A_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_13_we0;
    end else begin
        buff_A_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_address0;
    end else begin
        buff_A_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_ce0;
    end else begin
        buff_A_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_14_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_14_ce1;
    end else begin
        buff_A_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_14_we0;
    end else begin
        buff_A_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_address0;
    end else begin
        buff_A_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_ce0;
    end else begin
        buff_A_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_15_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_15_ce1;
    end else begin
        buff_A_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_15_we0;
    end else begin
        buff_A_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_address0;
    end else begin
        buff_A_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_ce0;
    end else begin
        buff_A_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_8_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_8_ce1;
    end else begin
        buff_A_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_8_we0;
    end else begin
        buff_A_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_address0;
    end else begin
        buff_A_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_ce0;
    end else begin
        buff_A_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_9_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_9_ce1;
    end else begin
        buff_A_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_9_we0;
    end else begin
        buff_A_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1250_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_2_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd2))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_3_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_p_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd2))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_1_ce1;
    end else begin
        buff_r_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_2_ce1;
    end else begin
        buff_r_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd2))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_3_ce1;
    end else begin
        buff_r_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1530_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_ce1 = grp_bicg_Pipeline_lp1_fu_1282_buff_r_ce1;
    end else begin
        buff_r_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_14_reg_2798;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_12_reg_2718;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_10_reg_2638;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_8_reg_2558;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_2478;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2398;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2318;
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
        buff_s_out_1_address0_local = zext_ln5_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_15_reg_2818;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_13_reg_2738;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_11_reg_2658;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_9_reg_2578;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_2498;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2418;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2338;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_57180_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_49172_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_41164_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_33156_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_25148_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_17140_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_9132_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_1124_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_61184_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_53176_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_45168_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_37160_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_29152_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_21144_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_13136_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_5128_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_14_reg_2803;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_12_reg_2723;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_10_reg_2643;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_8_reg_2563;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_2483;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_2403;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_2323;
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
        buff_s_out_2_address0_local = zext_ln5_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_15_reg_2823;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_13_reg_2743;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_11_reg_2663;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_9_reg_2583;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_2503;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_2423;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_2343;
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
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_58181_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_50173_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_42165_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_34157_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_26149_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_18141_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_10133_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_2125_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_62185_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_54177_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_46169_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_38161_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_30153_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_22145_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_14137_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_6129_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd2)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_14_reg_2808;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_12_reg_2728;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_10_reg_2648;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_8_reg_2568;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_2488;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_2408;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_2328;
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
        buff_s_out_3_address0_local = zext_ln5_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_15_reg_2828;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_13_reg_2748;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_11_reg_2668;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_9_reg_2588;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_2508;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_2428;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_2348;
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
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_59182_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_51174_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_43166_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_35158_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_27150_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_19142_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_11134_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_3126_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_63186_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_55178_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_47170_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_39162_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_31154_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_23146_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_15138_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_7130_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd3)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address0_local = buff_s_out_addr_14_reg_2793;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address0_local = buff_s_out_addr_12_reg_2713;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address0_local = buff_s_out_addr_10_reg_2633;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address0_local = buff_s_out_addr_8_reg_2553;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_2473;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2393;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2313;
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
        buff_s_out_address0_local = zext_ln5_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address1_local = buff_s_out_addr_15_reg_2813;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address1_local = buff_s_out_addr_13_reg_2733;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address1_local = buff_s_out_addr_11_reg_2653;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address1_local = buff_s_out_addr_9_reg_2573;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_2493;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2413;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2333;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1470_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_56179_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_48171_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_40163_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_32155_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_24147_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_16139_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_8131_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1282_add_7123_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_60183_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_52175_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_44167_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_36159_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_28151_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_20143_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_12135_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1282_add_7_4127_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1516_p1 == 2'd0)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2913_ce = grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2913_ce = grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_ce;
    end else begin
        grp_fu_2913_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2913_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2913_p0 = grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_din0;
    end else begin
        grp_fu_2913_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2913_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2913_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2913_p1 = grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2913_p_din1;
    end else begin
        grp_fu_2913_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2917_ce = grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2917_ce = grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_ce;
    end else begin
        grp_fu_2917_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2917_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2917_p0 = grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_din0;
    end else begin
        grp_fu_2917_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2917_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1442_grp_fu_2917_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2917_p1 = grp_bicg_Pipeline_lp1_fu_1282_grp_fu_2917_p_din1;
    end else begin
        grp_fu_2917_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1470_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1470_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1494_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_1250_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((1'b1 == ap_CS_fsm_state13) & (grp_bicg_Pipeline_lp1_fu_1282_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
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
            if (((1'b1 == ap_CS_fsm_state21) & (grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((1'b1 == ap_CS_fsm_state23) & (grp_bicg_Pipeline_lpwr_fu_1470_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1250_A_3_ce0;
assign add_ln13_fu_1500_p2 = (i_fu_108 + 7'd1);
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
assign bitcast_ln14_fu_1550_p1 = p_q0;
assign bitcast_ln15_fu_1558_p1 = r_q0;
assign buff_s_out_1_addr_10_reg_2638 = 64'd10;
assign buff_s_out_1_addr_11_reg_2658 = 64'd11;
assign buff_s_out_1_addr_12_reg_2718 = 64'd12;
assign buff_s_out_1_addr_13_reg_2738 = 64'd13;
assign buff_s_out_1_addr_14_reg_2798 = 64'd14;
assign buff_s_out_1_addr_15_reg_2818 = 64'd15;
assign buff_s_out_1_addr_2_reg_2318 = 64'd2;
assign buff_s_out_1_addr_3_reg_2338 = 64'd3;
assign buff_s_out_1_addr_4_reg_2398 = 64'd4;
assign buff_s_out_1_addr_5_reg_2418 = 64'd5;
assign buff_s_out_1_addr_6_reg_2478 = 64'd6;
assign buff_s_out_1_addr_7_reg_2498 = 64'd7;
assign buff_s_out_1_addr_8_reg_2558 = 64'd8;
assign buff_s_out_1_addr_9_reg_2578 = 64'd9;
assign buff_s_out_2_addr_10_reg_2643 = 64'd10;
assign buff_s_out_2_addr_11_reg_2663 = 64'd11;
assign buff_s_out_2_addr_12_reg_2723 = 64'd12;
assign buff_s_out_2_addr_13_reg_2743 = 64'd13;
assign buff_s_out_2_addr_14_reg_2803 = 64'd14;
assign buff_s_out_2_addr_15_reg_2823 = 64'd15;
assign buff_s_out_2_addr_2_reg_2323 = 64'd2;
assign buff_s_out_2_addr_3_reg_2343 = 64'd3;
assign buff_s_out_2_addr_4_reg_2403 = 64'd4;
assign buff_s_out_2_addr_5_reg_2423 = 64'd5;
assign buff_s_out_2_addr_6_reg_2483 = 64'd6;
assign buff_s_out_2_addr_7_reg_2503 = 64'd7;
assign buff_s_out_2_addr_8_reg_2563 = 64'd8;
assign buff_s_out_2_addr_9_reg_2583 = 64'd9;
assign buff_s_out_3_addr_10_reg_2648 = 64'd10;
assign buff_s_out_3_addr_11_reg_2668 = 64'd11;
assign buff_s_out_3_addr_12_reg_2728 = 64'd12;
assign buff_s_out_3_addr_13_reg_2748 = 64'd13;
assign buff_s_out_3_addr_14_reg_2808 = 64'd14;
assign buff_s_out_3_addr_15_reg_2828 = 64'd15;
assign buff_s_out_3_addr_2_reg_2328 = 64'd2;
assign buff_s_out_3_addr_3_reg_2348 = 64'd3;
assign buff_s_out_3_addr_4_reg_2408 = 64'd4;
assign buff_s_out_3_addr_5_reg_2428 = 64'd5;
assign buff_s_out_3_addr_6_reg_2488 = 64'd6;
assign buff_s_out_3_addr_7_reg_2508 = 64'd7;
assign buff_s_out_3_addr_8_reg_2568 = 64'd8;
assign buff_s_out_3_addr_9_reg_2588 = 64'd9;
assign buff_s_out_addr_10_reg_2633 = 64'd10;
assign buff_s_out_addr_11_reg_2653 = 64'd11;
assign buff_s_out_addr_12_reg_2713 = 64'd12;
assign buff_s_out_addr_13_reg_2733 = 64'd13;
assign buff_s_out_addr_14_reg_2793 = 64'd14;
assign buff_s_out_addr_15_reg_2813 = 64'd15;
assign buff_s_out_addr_2_reg_2313 = 64'd2;
assign buff_s_out_addr_3_reg_2333 = 64'd3;
assign buff_s_out_addr_4_reg_2393 = 64'd4;
assign buff_s_out_addr_5_reg_2413 = 64'd5;
assign buff_s_out_addr_6_reg_2473 = 64'd6;
assign buff_s_out_addr_7_reg_2493 = 64'd7;
assign buff_s_out_addr_8_reg_2553 = 64'd8;
assign buff_s_out_addr_9_reg_2573 = 64'd9;
assign empty_fu_1566_p2 = ((trunc_ln13_1_fu_1516_p1 == 2'd3) ? 1'b1 : 1'b0);
assign grp_bicg_Pipeline_lp1_fu_1282_ap_start = grp_bicg_Pipeline_lp1_fu_1282_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_1442_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1250_ap_start = grp_bicg_Pipeline_lprd_2_fu_1250_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1470_ap_start = grp_bicg_Pipeline_lpwr_fu_1470_ap_start_reg;
assign icmp_ln13_fu_1494_p2 = ((i_fu_108 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1520_p4 = {{i_fu_108[5:2]}};
assign p_address0 = zext_ln13_fu_1506_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1470_q_out_din;
assign r_address0 = zext_ln13_fu_1506_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1470_s_out_din;
assign trunc_ln13_1_fu_1516_p1 = i_fu_108[1:0];
assign trunc_ln13_fu_1512_p1 = i_fu_108[5:0];
assign zext_ln13_fu_1506_p1 = i_fu_108;
assign zext_ln5_fu_1530_p1 = lshr_ln5_fu_1520_p4;
endmodule 