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
wire   [6:0] add_ln13_fu_1411_p2;
reg   [6:0] add_ln13_reg_2132;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1423_p1;
reg   [5:0] trunc_ln13_reg_2195;
wire    ap_CS_fsm_state3;
wire   [3:0] buff_s_out_addr_2_reg_2203;
wire    ap_CS_fsm_state5;
wire   [3:0] buff_s_out_1_addr_2_reg_2208;
wire   [3:0] buff_s_out_2_addr_2_reg_2213;
wire   [3:0] buff_s_out_3_addr_2_reg_2218;
wire   [3:0] buff_s_out_addr_3_reg_2223;
wire   [3:0] buff_s_out_1_addr_3_reg_2228;
wire   [3:0] buff_s_out_2_addr_3_reg_2233;
wire   [3:0] buff_s_out_3_addr_3_reg_2238;
reg   [31:0] buff_s_out_load_reg_2243;
reg   [31:0] buff_s_out_1_load_reg_2248;
reg   [31:0] buff_s_out_2_load_reg_2253;
reg   [31:0] buff_s_out_3_load_reg_2258;
reg   [31:0] buff_s_out_load_1_reg_2263;
reg   [31:0] buff_s_out_1_load_1_reg_2268;
reg   [31:0] buff_s_out_2_load_1_reg_2273;
reg   [31:0] buff_s_out_3_load_1_reg_2278;
wire   [3:0] buff_s_out_addr_4_reg_2283;
wire    ap_CS_fsm_state6;
wire   [3:0] buff_s_out_1_addr_4_reg_2288;
wire   [3:0] buff_s_out_2_addr_4_reg_2293;
wire   [3:0] buff_s_out_3_addr_4_reg_2298;
wire   [3:0] buff_s_out_addr_5_reg_2303;
wire   [3:0] buff_s_out_1_addr_5_reg_2308;
wire   [3:0] buff_s_out_2_addr_5_reg_2313;
wire   [3:0] buff_s_out_3_addr_5_reg_2318;
reg   [31:0] buff_s_out_load_2_reg_2323;
reg   [31:0] buff_s_out_1_load_2_reg_2328;
reg   [31:0] buff_s_out_2_load_2_reg_2333;
reg   [31:0] buff_s_out_3_load_2_reg_2338;
reg   [31:0] buff_s_out_load_3_reg_2343;
reg   [31:0] buff_s_out_1_load_3_reg_2348;
reg   [31:0] buff_s_out_2_load_3_reg_2353;
reg   [31:0] buff_s_out_3_load_3_reg_2358;
wire   [3:0] buff_s_out_addr_6_reg_2363;
wire    ap_CS_fsm_state7;
wire   [3:0] buff_s_out_1_addr_6_reg_2368;
wire   [3:0] buff_s_out_2_addr_6_reg_2373;
wire   [3:0] buff_s_out_3_addr_6_reg_2378;
wire   [3:0] buff_s_out_addr_7_reg_2383;
wire   [3:0] buff_s_out_1_addr_7_reg_2388;
wire   [3:0] buff_s_out_2_addr_7_reg_2393;
wire   [3:0] buff_s_out_3_addr_7_reg_2398;
reg   [31:0] buff_s_out_load_4_reg_2403;
reg   [31:0] buff_s_out_1_load_4_reg_2408;
reg   [31:0] buff_s_out_2_load_4_reg_2413;
reg   [31:0] buff_s_out_3_load_4_reg_2418;
reg   [31:0] buff_s_out_load_5_reg_2423;
reg   [31:0] buff_s_out_1_load_5_reg_2428;
reg   [31:0] buff_s_out_2_load_5_reg_2433;
reg   [31:0] buff_s_out_3_load_5_reg_2438;
wire   [3:0] buff_s_out_addr_8_reg_2443;
wire    ap_CS_fsm_state8;
wire   [3:0] buff_s_out_1_addr_8_reg_2448;
wire   [3:0] buff_s_out_2_addr_8_reg_2453;
wire   [3:0] buff_s_out_3_addr_8_reg_2458;
wire   [3:0] buff_s_out_addr_9_reg_2463;
wire   [3:0] buff_s_out_1_addr_9_reg_2468;
wire   [3:0] buff_s_out_2_addr_9_reg_2473;
wire   [3:0] buff_s_out_3_addr_9_reg_2478;
reg   [31:0] buff_s_out_load_6_reg_2483;
reg   [31:0] buff_s_out_1_load_6_reg_2488;
reg   [31:0] buff_s_out_2_load_6_reg_2493;
reg   [31:0] buff_s_out_3_load_6_reg_2498;
reg   [31:0] buff_s_out_load_7_reg_2503;
reg   [31:0] buff_s_out_1_load_7_reg_2508;
reg   [31:0] buff_s_out_2_load_7_reg_2513;
reg   [31:0] buff_s_out_3_load_7_reg_2518;
wire   [3:0] buff_s_out_addr_10_reg_2523;
wire    ap_CS_fsm_state9;
wire   [3:0] buff_s_out_1_addr_10_reg_2528;
wire   [3:0] buff_s_out_2_addr_10_reg_2533;
wire   [3:0] buff_s_out_3_addr_10_reg_2538;
wire   [3:0] buff_s_out_addr_11_reg_2543;
wire   [3:0] buff_s_out_1_addr_11_reg_2548;
wire   [3:0] buff_s_out_2_addr_11_reg_2553;
wire   [3:0] buff_s_out_3_addr_11_reg_2558;
reg   [31:0] buff_s_out_load_8_reg_2563;
reg   [31:0] buff_s_out_1_load_8_reg_2568;
reg   [31:0] buff_s_out_2_load_8_reg_2573;
reg   [31:0] buff_s_out_3_load_8_reg_2578;
reg   [31:0] buff_s_out_load_9_reg_2583;
reg   [31:0] buff_s_out_1_load_9_reg_2588;
reg   [31:0] buff_s_out_2_load_9_reg_2593;
reg   [31:0] buff_s_out_3_load_9_reg_2598;
wire   [3:0] buff_s_out_addr_12_reg_2603;
wire    ap_CS_fsm_state10;
wire   [3:0] buff_s_out_1_addr_12_reg_2608;
wire   [3:0] buff_s_out_2_addr_12_reg_2613;
wire   [3:0] buff_s_out_3_addr_12_reg_2618;
wire   [3:0] buff_s_out_addr_13_reg_2623;
wire   [3:0] buff_s_out_1_addr_13_reg_2628;
wire   [3:0] buff_s_out_2_addr_13_reg_2633;
wire   [3:0] buff_s_out_3_addr_13_reg_2638;
reg   [31:0] buff_s_out_load_10_reg_2643;
reg   [31:0] buff_s_out_1_load_10_reg_2648;
reg   [31:0] buff_s_out_2_load_10_reg_2653;
reg   [31:0] buff_s_out_3_load_10_reg_2658;
reg   [31:0] buff_s_out_load_11_reg_2663;
reg   [31:0] buff_s_out_1_load_11_reg_2668;
reg   [31:0] buff_s_out_2_load_11_reg_2673;
reg   [31:0] buff_s_out_3_load_11_reg_2678;
wire   [3:0] buff_s_out_addr_14_reg_2683;
wire    ap_CS_fsm_state11;
wire   [3:0] buff_s_out_1_addr_14_reg_2688;
wire   [3:0] buff_s_out_2_addr_14_reg_2693;
wire   [3:0] buff_s_out_3_addr_14_reg_2698;
wire   [3:0] buff_s_out_addr_15_reg_2703;
wire   [3:0] buff_s_out_1_addr_15_reg_2708;
wire   [3:0] buff_s_out_2_addr_15_reg_2713;
wire   [3:0] buff_s_out_3_addr_15_reg_2718;
reg   [31:0] buff_s_out_load_12_reg_2723;
reg   [31:0] buff_s_out_1_load_12_reg_2728;
reg   [31:0] buff_s_out_2_load_12_reg_2733;
reg   [31:0] buff_s_out_3_load_12_reg_2738;
reg   [31:0] buff_s_out_load_13_reg_2743;
reg   [31:0] buff_s_out_1_load_13_reg_2748;
reg   [31:0] buff_s_out_2_load_13_reg_2753;
reg   [31:0] buff_s_out_3_load_13_reg_2758;
reg   [31:0] buff_s_out_load_14_reg_2763;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_s_out_1_load_14_reg_2768;
reg   [31:0] buff_s_out_2_load_14_reg_2773;
reg   [31:0] buff_s_out_3_load_14_reg_2778;
reg   [31:0] buff_s_out_load_15_reg_2783;
reg   [31:0] buff_s_out_1_load_15_reg_2788;
reg   [31:0] buff_s_out_2_load_15_reg_2793;
reg   [31:0] buff_s_out_3_load_15_reg_2798;
reg   [9:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg    buff_A_ce2;
wire   [31:0] buff_A_q2;
reg   [9:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg   [9:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg    buff_A_2_ce2;
wire   [31:0] buff_A_2_q2;
reg   [9:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg    buff_A_3_ce2;
wire   [31:0] buff_A_3_q2;
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
wire    grp_bicg_Pipeline_lprd_2_fu_1200_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_A_0_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_d0;
wire    grp_bicg_Pipeline_lp1_fu_1217_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1217_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1217_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1217_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_address2;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce2;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1217_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_r_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1217_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_r_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1217_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_r_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_fu_1217_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1217_buff_r_3_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_6387_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_6387_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_6286_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_6286_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_6185_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_6185_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_6084_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_6084_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5983_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5983_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5882_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5882_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5781_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5781_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5680_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5680_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5579_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5579_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5478_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5478_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5377_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5377_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5276_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5276_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5175_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5175_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_5074_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_5074_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4973_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4973_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4872_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4872_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4771_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4771_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4670_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4670_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4569_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4569_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4468_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4468_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4367_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4367_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4266_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4266_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4165_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4165_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_4064_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_4064_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3963_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3963_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3862_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3862_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3761_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3761_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3660_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3660_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3559_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3559_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3458_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3458_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3357_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3357_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3256_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3256_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3155_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3155_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_3054_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_3054_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2953_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2953_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2852_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2852_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2751_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2751_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2650_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2650_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2549_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2549_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2448_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2448_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2347_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2347_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2246_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2246_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2145_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2145_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_2044_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_2044_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1943_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1943_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1842_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1842_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1741_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1741_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1640_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1640_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1539_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1539_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1438_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1438_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1337_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1337_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1236_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1236_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1135_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1135_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_1034_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_1034_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_933_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_933_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_832_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_832_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_731_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_731_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_630_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_630_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_529_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_529_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_428_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_428_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_327_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_327_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_226_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_226_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_1_125_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_1_125_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_add_124_out;
wire    grp_bicg_Pipeline_lp1_fu_1217_add_124_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_ce;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1381_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1381_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1381_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1381_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1381_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1381_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1381_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1381_q_out_write;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_3_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1200_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp1_fu_1217_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start_reg;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
reg    grp_bicg_Pipeline_lpwr_fu_1381_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] zext_ln13_fu_1417_p1;
wire   [0:0] icmp_ln13_fu_1405_p2;
wire   [63:0] zext_ln5_fu_1439_p1;
reg   [6:0] i_fu_106;
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
wire   [1:0] trunc_ln13_1_fu_1427_p1;
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
wire   [31:0] bitcast_ln14_fu_1459_p1;
reg    buff_p_2_ce0_local;
reg    buff_r_2_we0_local;
wire   [31:0] bitcast_ln15_fu_1467_p1;
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
wire   [3:0] lshr_ln5_fu_1430_p4;
wire   [31:0] grp_fu_2803_p2;
reg   [31:0] grp_fu_2803_p0;
reg   [31:0] grp_fu_2803_p1;
reg    grp_fu_2803_ce;
wire   [31:0] grp_fu_2807_p2;
reg   [31:0] grp_fu_2807_p0;
reg   [31:0] grp_fu_2807_p1;
reg    grp_fu_2807_ce;
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
#0 grp_bicg_Pipeline_lprd_2_fu_1200_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1217_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1381_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1459_p1),.q0(buff_p_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1459_p1),.q0(buff_p_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_1459_p1),.q0(buff_p_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_1459_p1),.q0(buff_p_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1467_p1),.q0(buff_r_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1467_p1),.q0(buff_r_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_1467_p1),.q0(buff_r_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_1467_p1),.q0(buff_r_3_q0));
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
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1200(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1200_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1200_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1200_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1200_ap_ready),.i(trunc_ln13_reg_2195),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1200_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1200_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1200_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1200_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_d0));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1217(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1217_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1217_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1217_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1217_ap_ready),.buff_s_out_3_load_15(buff_s_out_3_load_15_reg_2798),.buff_s_out_2_load_15(buff_s_out_2_load_15_reg_2793),.buff_s_out_1_load_15(buff_s_out_1_load_15_reg_2788),.buff_s_out_load_15(buff_s_out_load_15_reg_2783),.buff_s_out_3_load_14(buff_s_out_3_load_14_reg_2778),.buff_s_out_2_load_14(buff_s_out_2_load_14_reg_2773),.buff_s_out_1_load_14(buff_s_out_1_load_14_reg_2768),.buff_s_out_load_14(buff_s_out_load_14_reg_2763),.buff_s_out_3_load_13(buff_s_out_3_load_13_reg_2758),.buff_s_out_2_load_13(buff_s_out_2_load_13_reg_2753),.buff_s_out_1_load_13(buff_s_out_1_load_13_reg_2748),.buff_s_out_load_13(buff_s_out_load_13_reg_2743),.buff_s_out_3_load_12(buff_s_out_3_load_12_reg_2738),.buff_s_out_2_load_12(buff_s_out_2_load_12_reg_2733),.buff_s_out_1_load_12(buff_s_out_1_load_12_reg_2728),.buff_s_out_load_12(buff_s_out_load_12_reg_2723),.buff_s_out_3_load_11(buff_s_out_3_load_11_reg_2678),.buff_s_out_2_load_11(buff_s_out_2_load_11_reg_2673),.buff_s_out_1_load_11(buff_s_out_1_load_11_reg_2668),.buff_s_out_load_11(buff_s_out_load_11_reg_2663),.buff_s_out_3_load_10(buff_s_out_3_load_10_reg_2658),.buff_s_out_2_load_10(buff_s_out_2_load_10_reg_2653),.buff_s_out_1_load_10(buff_s_out_1_load_10_reg_2648),.buff_s_out_load_10(buff_s_out_load_10_reg_2643),.buff_s_out_3_load_9(buff_s_out_3_load_9_reg_2598),.buff_s_out_2_load_9(buff_s_out_2_load_9_reg_2593),.buff_s_out_1_load_9(buff_s_out_1_load_9_reg_2588),.buff_s_out_load_9(buff_s_out_load_9_reg_2583),.buff_s_out_3_load_8(buff_s_out_3_load_8_reg_2578),.buff_s_out_2_load_8(buff_s_out_2_load_8_reg_2573),.buff_s_out_1_load_8(buff_s_out_1_load_8_reg_2568),.buff_s_out_load_8(buff_s_out_load_8_reg_2563),.buff_s_out_3_load_7(buff_s_out_3_load_7_reg_2518),.buff_s_out_2_load_7(buff_s_out_2_load_7_reg_2513),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_2508),.buff_s_out_load_7(buff_s_out_load_7_reg_2503),.buff_s_out_3_load_6(buff_s_out_3_load_6_reg_2498),.buff_s_out_2_load_6(buff_s_out_2_load_6_reg_2493),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_2488),.buff_s_out_load_6(buff_s_out_load_6_reg_2483),.buff_s_out_3_load_5(buff_s_out_3_load_5_reg_2438),.buff_s_out_2_load_5(buff_s_out_2_load_5_reg_2433),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_2428),.buff_s_out_load_5(buff_s_out_load_5_reg_2423),.buff_s_out_3_load_4(buff_s_out_3_load_4_reg_2418),.buff_s_out_2_load_4(buff_s_out_2_load_4_reg_2413),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_2408),.buff_s_out_load_4(buff_s_out_load_4_reg_2403),.buff_s_out_3_load_3(buff_s_out_3_load_3_reg_2358),.buff_s_out_2_load_3(buff_s_out_2_load_3_reg_2353),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2348),.buff_s_out_load_3(buff_s_out_load_3_reg_2343),.buff_s_out_3_load_2(buff_s_out_3_load_2_reg_2338),.buff_s_out_2_load_2(buff_s_out_2_load_2_reg_2333),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2328),.buff_s_out_load_2(buff_s_out_load_2_reg_2323),.buff_s_out_3_load_1(buff_s_out_3_load_1_reg_2278),.buff_s_out_2_load_1(buff_s_out_2_load_1_reg_2273),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2268),.buff_s_out_load_1(buff_s_out_load_1_reg_2263),.buff_s_out_3_load(buff_s_out_3_load_reg_2258),.buff_s_out_2_load(buff_s_out_2_load_reg_2253),.buff_s_out_1_load(buff_s_out_1_load_reg_2248),.buff_s_out_load(buff_s_out_load_reg_2243),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_fu_1217_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.add_1_6387_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_6387_out),.add_1_6387_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_6387_out_ap_vld),.add_1_6286_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_6286_out),.add_1_6286_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_6286_out_ap_vld),.add_1_6185_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_6185_out),.add_1_6185_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_6185_out_ap_vld),.add_1_6084_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_6084_out),.add_1_6084_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_6084_out_ap_vld),.add_1_5983_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5983_out),.add_1_5983_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5983_out_ap_vld),.add_1_5882_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5882_out),.add_1_5882_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5882_out_ap_vld),.add_1_5781_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5781_out),.add_1_5781_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5781_out_ap_vld),.add_1_5680_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5680_out),.add_1_5680_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5680_out_ap_vld),.add_1_5579_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5579_out),.add_1_5579_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5579_out_ap_vld),.add_1_5478_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5478_out),.add_1_5478_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5478_out_ap_vld),.add_1_5377_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5377_out),.add_1_5377_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5377_out_ap_vld),.add_1_5276_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5276_out),.add_1_5276_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5276_out_ap_vld),.add_1_5175_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5175_out),.add_1_5175_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5175_out_ap_vld),.add_1_5074_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_5074_out),.add_1_5074_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_5074_out_ap_vld),.add_1_4973_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4973_out),.add_1_4973_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4973_out_ap_vld),.add_1_4872_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4872_out),.add_1_4872_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4872_out_ap_vld),.add_1_4771_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4771_out),.add_1_4771_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4771_out_ap_vld),.add_1_4670_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4670_out),.add_1_4670_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4670_out_ap_vld),.add_1_4569_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4569_out),.add_1_4569_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4569_out_ap_vld),.add_1_4468_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4468_out),.add_1_4468_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4468_out_ap_vld),.add_1_4367_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4367_out),.add_1_4367_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4367_out_ap_vld),.add_1_4266_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4266_out),.add_1_4266_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4266_out_ap_vld),.add_1_4165_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4165_out),.add_1_4165_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4165_out_ap_vld),.add_1_4064_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_4064_out),.add_1_4064_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_4064_out_ap_vld),.add_1_3963_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3963_out),.add_1_3963_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3963_out_ap_vld),.add_1_3862_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3862_out),.add_1_3862_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3862_out_ap_vld),.add_1_3761_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3761_out),.add_1_3761_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3761_out_ap_vld),.add_1_3660_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3660_out),.add_1_3660_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3660_out_ap_vld),.add_1_3559_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3559_out),.add_1_3559_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3559_out_ap_vld),.add_1_3458_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3458_out),.add_1_3458_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3458_out_ap_vld),.add_1_3357_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3357_out),.add_1_3357_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3357_out_ap_vld),.add_1_3256_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3256_out),.add_1_3256_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3256_out_ap_vld),.add_1_3155_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3155_out),.add_1_3155_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3155_out_ap_vld),.add_1_3054_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_3054_out),.add_1_3054_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_3054_out_ap_vld),.add_1_2953_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2953_out),.add_1_2953_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2953_out_ap_vld),.add_1_2852_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2852_out),.add_1_2852_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2852_out_ap_vld),.add_1_2751_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2751_out),.add_1_2751_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2751_out_ap_vld),.add_1_2650_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2650_out),.add_1_2650_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2650_out_ap_vld),.add_1_2549_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2549_out),.add_1_2549_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2549_out_ap_vld),.add_1_2448_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2448_out),.add_1_2448_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2448_out_ap_vld),.add_1_2347_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2347_out),.add_1_2347_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2347_out_ap_vld),.add_1_2246_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2246_out),.add_1_2246_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2246_out_ap_vld),.add_1_2145_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2145_out),.add_1_2145_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2145_out_ap_vld),.add_1_2044_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_2044_out),.add_1_2044_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_2044_out_ap_vld),.add_1_1943_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1943_out),.add_1_1943_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1943_out_ap_vld),.add_1_1842_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1842_out),.add_1_1842_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1842_out_ap_vld),.add_1_1741_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1741_out),.add_1_1741_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1741_out_ap_vld),.add_1_1640_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1640_out),.add_1_1640_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1640_out_ap_vld),.add_1_1539_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1539_out),.add_1_1539_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1539_out_ap_vld),.add_1_1438_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1438_out),.add_1_1438_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1438_out_ap_vld),.add_1_1337_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1337_out),.add_1_1337_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1337_out_ap_vld),.add_1_1236_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1236_out),.add_1_1236_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1236_out_ap_vld),.add_1_1135_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1135_out),.add_1_1135_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1135_out_ap_vld),.add_1_1034_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_1034_out),.add_1_1034_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_1034_out_ap_vld),.add_1_933_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_933_out),.add_1_933_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_933_out_ap_vld),.add_1_832_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_832_out),.add_1_832_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_832_out_ap_vld),.add_1_731_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_731_out),.add_1_731_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_731_out_ap_vld),.add_1_630_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_630_out),.add_1_630_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_630_out_ap_vld),.add_1_529_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_529_out),.add_1_529_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_529_out_ap_vld),.add_1_428_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_428_out),.add_1_428_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_428_out_ap_vld),.add_1_327_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_327_out),.add_1_327_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_327_out_ap_vld),.add_1_226_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_226_out),.add_1_226_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_226_out_ap_vld),.add_1_125_out(grp_bicg_Pipeline_lp1_fu_1217_add_1_125_out),.add_1_125_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_1_125_out_ap_vld),.add_124_out(grp_bicg_Pipeline_lp1_fu_1217_add_124_out),.add_124_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1217_add_124_out_ap_vld),.grp_fu_2803_p_din0(grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_din0),.grp_fu_2803_p_din1(grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_din1),.grp_fu_2803_p_opcode(grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_opcode),.grp_fu_2803_p_dout0(grp_fu_2803_p2),.grp_fu_2803_p_ce(grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_ce),.grp_fu_2807_p_din0(grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_din0),.grp_fu_2807_p_din1(grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_din1),.grp_fu_2807_p_dout0(grp_fu_2807_p2),.grp_fu_2807_p_ce(grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_ce));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_1365(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_d0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_d0),.buff_q_out_3_q0(buff_q_out_3_q0),.grp_fu_2803_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_din0),.grp_fu_2803_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_din1),.grp_fu_2803_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_opcode),.grp_fu_2803_p_dout0(grp_fu_2803_p2),.grp_fu_2803_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_ce),.grp_fu_2807_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_din0),.grp_fu_2807_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_din1),.grp_fu_2807_p_dout0(grp_fu_2807_p2),.grp_fu_2807_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1381(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1381_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1381_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1381_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1381_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1381_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1381_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1381_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1381_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2803_p0),.din1(grp_fu_2803_p1),.ce(grp_fu_2803_ce),.dout(grp_fu_2803_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U195(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2807_p0),.din1(grp_fu_2807_p1),.ce(grp_fu_2807_ce),.dout(grp_fu_2807_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1217_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_bicg_Pipeline_lp1_fu_1217_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1217_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1217_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1200_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_1200_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1200_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1200_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1381_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_bicg_Pipeline_lpwr_fu_1381_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1381_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1381_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_106 <= add_ln13_reg_2132;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_2132 <= add_ln13_fu_1411_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_load_10_reg_2648 <= buff_s_out_1_q0;
        buff_s_out_1_load_11_reg_2668 <= buff_s_out_1_q1;
        buff_s_out_2_load_10_reg_2653 <= buff_s_out_2_q0;
        buff_s_out_2_load_11_reg_2673 <= buff_s_out_2_q1;
        buff_s_out_3_load_10_reg_2658 <= buff_s_out_3_q0;
        buff_s_out_3_load_11_reg_2678 <= buff_s_out_3_q1;
        buff_s_out_load_10_reg_2643 <= buff_s_out_q0;
        buff_s_out_load_11_reg_2663 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_load_12_reg_2728 <= buff_s_out_1_q0;
        buff_s_out_1_load_13_reg_2748 <= buff_s_out_1_q1;
        buff_s_out_2_load_12_reg_2733 <= buff_s_out_2_q0;
        buff_s_out_2_load_13_reg_2753 <= buff_s_out_2_q1;
        buff_s_out_3_load_12_reg_2738 <= buff_s_out_3_q0;
        buff_s_out_3_load_13_reg_2758 <= buff_s_out_3_q1;
        buff_s_out_load_12_reg_2723 <= buff_s_out_q0;
        buff_s_out_load_13_reg_2743 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_load_14_reg_2768 <= buff_s_out_1_q0;
        buff_s_out_1_load_15_reg_2788 <= buff_s_out_1_q1;
        buff_s_out_2_load_14_reg_2773 <= buff_s_out_2_q0;
        buff_s_out_2_load_15_reg_2793 <= buff_s_out_2_q1;
        buff_s_out_3_load_14_reg_2778 <= buff_s_out_3_q0;
        buff_s_out_3_load_15_reg_2798 <= buff_s_out_3_q1;
        buff_s_out_load_14_reg_2763 <= buff_s_out_q0;
        buff_s_out_load_15_reg_2783 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_load_1_reg_2268 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2248 <= buff_s_out_1_q1;
        buff_s_out_2_load_1_reg_2273 <= buff_s_out_2_q0;
        buff_s_out_2_load_reg_2253 <= buff_s_out_2_q1;
        buff_s_out_3_load_1_reg_2278 <= buff_s_out_3_q0;
        buff_s_out_3_load_reg_2258 <= buff_s_out_3_q1;
        buff_s_out_load_1_reg_2263 <= buff_s_out_q0;
        buff_s_out_load_reg_2243 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_2_reg_2328 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2348 <= buff_s_out_1_q1;
        buff_s_out_2_load_2_reg_2333 <= buff_s_out_2_q0;
        buff_s_out_2_load_3_reg_2353 <= buff_s_out_2_q1;
        buff_s_out_3_load_2_reg_2338 <= buff_s_out_3_q0;
        buff_s_out_3_load_3_reg_2358 <= buff_s_out_3_q1;
        buff_s_out_load_2_reg_2323 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2343 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_4_reg_2408 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_2428 <= buff_s_out_1_q1;
        buff_s_out_2_load_4_reg_2413 <= buff_s_out_2_q0;
        buff_s_out_2_load_5_reg_2433 <= buff_s_out_2_q1;
        buff_s_out_3_load_4_reg_2418 <= buff_s_out_3_q0;
        buff_s_out_3_load_5_reg_2438 <= buff_s_out_3_q1;
        buff_s_out_load_4_reg_2403 <= buff_s_out_q0;
        buff_s_out_load_5_reg_2423 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_6_reg_2488 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_2508 <= buff_s_out_1_q1;
        buff_s_out_2_load_6_reg_2493 <= buff_s_out_2_q0;
        buff_s_out_2_load_7_reg_2513 <= buff_s_out_2_q1;
        buff_s_out_3_load_6_reg_2498 <= buff_s_out_3_q0;
        buff_s_out_3_load_7_reg_2518 <= buff_s_out_3_q1;
        buff_s_out_load_6_reg_2483 <= buff_s_out_q0;
        buff_s_out_load_7_reg_2503 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_8_reg_2568 <= buff_s_out_1_q0;
        buff_s_out_1_load_9_reg_2588 <= buff_s_out_1_q1;
        buff_s_out_2_load_8_reg_2573 <= buff_s_out_2_q0;
        buff_s_out_2_load_9_reg_2593 <= buff_s_out_2_q1;
        buff_s_out_3_load_8_reg_2578 <= buff_s_out_3_q0;
        buff_s_out_3_load_9_reg_2598 <= buff_s_out_3_q1;
        buff_s_out_load_8_reg_2563 <= buff_s_out_q0;
        buff_s_out_load_9_reg_2583 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_2195 <= trunc_ln13_fu_1423_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1217_ap_done == 1'b0)) begin
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
    if ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1381_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1200_ap_done == 1'b0)) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_1381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_1381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp1_fu_1217_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1200_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_2_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd2))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_3_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_p_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_ce0;
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
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_ce0;
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
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd2))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_ce0;
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
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_ce0;
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
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_2_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd2))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_3_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1439_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1217_buff_r_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_14_reg_2688;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_12_reg_2608;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_10_reg_2528;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_8_reg_2448;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_2368;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2288;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2208;
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
        buff_s_out_1_address0_local = zext_ln5_fu_1439_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_15_reg_2708;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_13_reg_2628;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_11_reg_2548;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_9_reg_2468;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_2388;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2308;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2228;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5781_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4973_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4165_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3357_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2549_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1741_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_933_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_125_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_6185_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5377_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4569_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3761_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2953_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2145_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1337_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_529_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = buff_s_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_14_reg_2693;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_12_reg_2613;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_10_reg_2533;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_8_reg_2453;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_6_reg_2373;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_4_reg_2293;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_2_reg_2213;
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
        buff_s_out_2_address0_local = zext_ln5_fu_1439_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0_local = 64'd1;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_15_reg_2713;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_13_reg_2633;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_11_reg_2553;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_9_reg_2473;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_7_reg_2393;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_5_reg_2313;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address1_local = buff_s_out_2_addr_3_reg_2233;
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
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5882_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5074_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4266_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3458_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2650_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1842_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1034_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_226_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_d0_local = 32'd0;
    end else begin
        buff_s_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_6286_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5478_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4670_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3862_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3054_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2246_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1438_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_2_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_630_out;
    end else begin
        buff_s_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd2)))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_2_we1_local = 1'b1;
    end else begin
        buff_s_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = buff_s_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_14_reg_2698;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_12_reg_2618;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_10_reg_2538;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_8_reg_2458;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_6_reg_2378;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_4_reg_2298;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_2_reg_2218;
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
        buff_s_out_3_address0_local = zext_ln5_fu_1439_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0_local = 64'd1;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_15_reg_2718;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_13_reg_2638;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_11_reg_2558;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_9_reg_2478;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_7_reg_2398;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_5_reg_2318;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address1_local = buff_s_out_3_addr_3_reg_2238;
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
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5983_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5175_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4367_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3559_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2751_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1943_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1135_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_327_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_d0_local = 32'd0;
    end else begin
        buff_s_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_6387_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5579_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4771_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3963_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3155_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2347_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1539_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_3_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_731_out;
    end else begin
        buff_s_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd3)))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_3_we1_local = 1'b1;
    end else begin
        buff_s_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address0_local = buff_s_out_addr_14_reg_2683;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address0_local = buff_s_out_addr_12_reg_2603;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address0_local = buff_s_out_addr_10_reg_2523;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address0_local = buff_s_out_addr_8_reg_2443;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_2363;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2283;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2203;
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
        buff_s_out_address0_local = zext_ln5_fu_1439_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address1_local = buff_s_out_addr_15_reg_2703;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address1_local = buff_s_out_addr_13_reg_2623;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address1_local = buff_s_out_addr_11_reg_2543;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address1_local = buff_s_out_addr_9_reg_2463;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_2383;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2303;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2223;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1381_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5680_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4872_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4064_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3256_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2448_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1640_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_832_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1217_add_124_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_6084_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_5276_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_4468_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_3660_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2852_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_2044_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_1236_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1217_add_1_428_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1427_p1 == 2'd0)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | ((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2803_ce = grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2803_ce = grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_ce;
    end else begin
        grp_fu_2803_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2803_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2803_p0 = grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_din0;
    end else begin
        grp_fu_2803_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2803_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2803_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2803_p1 = grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2803_p_din1;
    end else begin
        grp_fu_2803_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2807_ce = grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2807_ce = grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_ce;
    end else begin
        grp_fu_2807_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2807_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2807_p0 = grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_din0;
    end else begin
        grp_fu_2807_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2807_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1365_grp_fu_2807_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2807_p1 = grp_bicg_Pipeline_lp1_fu_1217_grp_fu_2807_p_din1;
    end else begin
        grp_fu_2807_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1381_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1381_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1405_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_1200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((grp_bicg_Pipeline_lp1_fu_1217_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_1381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1200_A_3_ce0;
assign add_ln13_fu_1411_p2 = (i_fu_106 + 7'd1);
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
assign bitcast_ln14_fu_1459_p1 = p_q0;
assign bitcast_ln15_fu_1467_p1 = r_q0;
assign buff_s_out_1_addr_10_reg_2528 = 64'd10;
assign buff_s_out_1_addr_11_reg_2548 = 64'd11;
assign buff_s_out_1_addr_12_reg_2608 = 64'd12;
assign buff_s_out_1_addr_13_reg_2628 = 64'd13;
assign buff_s_out_1_addr_14_reg_2688 = 64'd14;
assign buff_s_out_1_addr_15_reg_2708 = 64'd15;
assign buff_s_out_1_addr_2_reg_2208 = 64'd2;
assign buff_s_out_1_addr_3_reg_2228 = 64'd3;
assign buff_s_out_1_addr_4_reg_2288 = 64'd4;
assign buff_s_out_1_addr_5_reg_2308 = 64'd5;
assign buff_s_out_1_addr_6_reg_2368 = 64'd6;
assign buff_s_out_1_addr_7_reg_2388 = 64'd7;
assign buff_s_out_1_addr_8_reg_2448 = 64'd8;
assign buff_s_out_1_addr_9_reg_2468 = 64'd9;
assign buff_s_out_2_addr_10_reg_2533 = 64'd10;
assign buff_s_out_2_addr_11_reg_2553 = 64'd11;
assign buff_s_out_2_addr_12_reg_2613 = 64'd12;
assign buff_s_out_2_addr_13_reg_2633 = 64'd13;
assign buff_s_out_2_addr_14_reg_2693 = 64'd14;
assign buff_s_out_2_addr_15_reg_2713 = 64'd15;
assign buff_s_out_2_addr_2_reg_2213 = 64'd2;
assign buff_s_out_2_addr_3_reg_2233 = 64'd3;
assign buff_s_out_2_addr_4_reg_2293 = 64'd4;
assign buff_s_out_2_addr_5_reg_2313 = 64'd5;
assign buff_s_out_2_addr_6_reg_2373 = 64'd6;
assign buff_s_out_2_addr_7_reg_2393 = 64'd7;
assign buff_s_out_2_addr_8_reg_2453 = 64'd8;
assign buff_s_out_2_addr_9_reg_2473 = 64'd9;
assign buff_s_out_3_addr_10_reg_2538 = 64'd10;
assign buff_s_out_3_addr_11_reg_2558 = 64'd11;
assign buff_s_out_3_addr_12_reg_2618 = 64'd12;
assign buff_s_out_3_addr_13_reg_2638 = 64'd13;
assign buff_s_out_3_addr_14_reg_2698 = 64'd14;
assign buff_s_out_3_addr_15_reg_2718 = 64'd15;
assign buff_s_out_3_addr_2_reg_2218 = 64'd2;
assign buff_s_out_3_addr_3_reg_2238 = 64'd3;
assign buff_s_out_3_addr_4_reg_2298 = 64'd4;
assign buff_s_out_3_addr_5_reg_2318 = 64'd5;
assign buff_s_out_3_addr_6_reg_2378 = 64'd6;
assign buff_s_out_3_addr_7_reg_2398 = 64'd7;
assign buff_s_out_3_addr_8_reg_2458 = 64'd8;
assign buff_s_out_3_addr_9_reg_2478 = 64'd9;
assign buff_s_out_addr_10_reg_2523 = 64'd10;
assign buff_s_out_addr_11_reg_2543 = 64'd11;
assign buff_s_out_addr_12_reg_2603 = 64'd12;
assign buff_s_out_addr_13_reg_2623 = 64'd13;
assign buff_s_out_addr_14_reg_2683 = 64'd14;
assign buff_s_out_addr_15_reg_2703 = 64'd15;
assign buff_s_out_addr_2_reg_2203 = 64'd2;
assign buff_s_out_addr_3_reg_2223 = 64'd3;
assign buff_s_out_addr_4_reg_2283 = 64'd4;
assign buff_s_out_addr_5_reg_2303 = 64'd5;
assign buff_s_out_addr_6_reg_2363 = 64'd6;
assign buff_s_out_addr_7_reg_2383 = 64'd7;
assign buff_s_out_addr_8_reg_2443 = 64'd8;
assign buff_s_out_addr_9_reg_2463 = 64'd9;
assign grp_bicg_Pipeline_lp1_fu_1217_ap_start = grp_bicg_Pipeline_lp1_fu_1217_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_1365_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1200_ap_start = grp_bicg_Pipeline_lprd_2_fu_1200_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1381_ap_start = grp_bicg_Pipeline_lpwr_fu_1381_ap_start_reg;
assign icmp_ln13_fu_1405_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1430_p4 = {{i_fu_106[5:2]}};
assign p_address0 = zext_ln13_fu_1417_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1381_q_out_din;
assign r_address0 = zext_ln13_fu_1417_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1381_s_out_din;
assign trunc_ln13_1_fu_1427_p1 = i_fu_106[1:0];
assign trunc_ln13_fu_1423_p1 = i_fu_106[5:0];
assign zext_ln13_fu_1417_p1 = i_fu_106;
assign zext_ln5_fu_1439_p1 = lshr_ln5_fu_1430_p4;
endmodule 