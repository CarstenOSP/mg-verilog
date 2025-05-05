module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
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
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_1413_p2;
reg   [6:0] add_ln11_reg_2130;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1424_p1;
reg   [5:0] trunc_ln11_reg_2188;
wire    ap_CS_fsm_state3;
wire   [1:0] trunc_ln11_1_fu_1428_p1;
reg   [1:0] trunc_ln11_1_reg_2193;
wire   [3:0] lshr_ln5_fu_1432_p4;
reg   [3:0] lshr_ln5_reg_2198;
wire   [0:0] empty_14_fu_1466_p2;
reg   [0:0] empty_14_reg_2203;
wire   [3:0] buff_y_out_addr_3_reg_2208;
wire    ap_CS_fsm_state5;
wire   [3:0] buff_y_out_1_addr_3_reg_2213;
wire   [3:0] buff_y_out_2_addr_3_reg_2218;
wire   [3:0] buff_y_out_3_addr_3_reg_2223;
wire   [3:0] buff_y_out_addr_4_reg_2228;
wire   [3:0] buff_y_out_1_addr_4_reg_2233;
wire   [3:0] buff_y_out_2_addr_4_reg_2238;
wire   [3:0] buff_y_out_3_addr_4_reg_2243;
reg   [31:0] buff_y_out_load_reg_2248;
reg   [31:0] buff_y_out_1_load_reg_2253;
reg   [31:0] buff_y_out_2_load_reg_2258;
reg   [31:0] buff_y_out_3_load_reg_2263;
reg   [31:0] buff_y_out_load_1_reg_2268;
reg   [31:0] buff_y_out_1_load_1_reg_2273;
reg   [31:0] buff_y_out_2_load_1_reg_2278;
reg   [31:0] buff_y_out_3_load_1_reg_2283;
wire   [3:0] buff_y_out_addr_5_reg_2288;
wire    ap_CS_fsm_state6;
wire   [3:0] buff_y_out_1_addr_5_reg_2293;
wire   [3:0] buff_y_out_2_addr_5_reg_2298;
wire   [3:0] buff_y_out_3_addr_5_reg_2303;
wire   [3:0] buff_y_out_addr_6_reg_2308;
wire   [3:0] buff_y_out_1_addr_6_reg_2313;
wire   [3:0] buff_y_out_2_addr_6_reg_2318;
wire   [3:0] buff_y_out_3_addr_6_reg_2323;
reg   [31:0] buff_y_out_load_2_reg_2328;
reg   [31:0] buff_y_out_1_load_2_reg_2333;
reg   [31:0] buff_y_out_2_load_2_reg_2338;
reg   [31:0] buff_y_out_3_load_2_reg_2343;
reg   [31:0] buff_y_out_load_3_reg_2348;
reg   [31:0] buff_y_out_1_load_3_reg_2353;
reg   [31:0] buff_y_out_2_load_3_reg_2358;
reg   [31:0] buff_y_out_3_load_3_reg_2363;
wire   [3:0] buff_y_out_addr_7_reg_2368;
wire    ap_CS_fsm_state7;
wire   [3:0] buff_y_out_1_addr_7_reg_2373;
wire   [3:0] buff_y_out_2_addr_7_reg_2378;
wire   [3:0] buff_y_out_3_addr_7_reg_2383;
wire   [3:0] buff_y_out_addr_8_reg_2388;
wire   [3:0] buff_y_out_1_addr_8_reg_2393;
wire   [3:0] buff_y_out_2_addr_8_reg_2398;
wire   [3:0] buff_y_out_3_addr_8_reg_2403;
reg   [31:0] buff_y_out_load_4_reg_2408;
reg   [31:0] buff_y_out_1_load_4_reg_2413;
reg   [31:0] buff_y_out_2_load_4_reg_2418;
reg   [31:0] buff_y_out_3_load_4_reg_2423;
reg   [31:0] buff_y_out_load_5_reg_2428;
reg   [31:0] buff_y_out_1_load_5_reg_2433;
reg   [31:0] buff_y_out_2_load_5_reg_2438;
reg   [31:0] buff_y_out_3_load_5_reg_2443;
wire   [3:0] buff_y_out_addr_9_reg_2448;
wire    ap_CS_fsm_state8;
wire   [3:0] buff_y_out_1_addr_9_reg_2453;
wire   [3:0] buff_y_out_2_addr_9_reg_2458;
wire   [3:0] buff_y_out_3_addr_9_reg_2463;
wire   [3:0] buff_y_out_addr_10_reg_2468;
wire   [3:0] buff_y_out_1_addr_10_reg_2473;
wire   [3:0] buff_y_out_2_addr_10_reg_2478;
wire   [3:0] buff_y_out_3_addr_10_reg_2483;
reg   [31:0] buff_y_out_load_6_reg_2488;
reg   [31:0] buff_y_out_1_load_6_reg_2493;
reg   [31:0] buff_y_out_2_load_6_reg_2498;
reg   [31:0] buff_y_out_3_load_6_reg_2503;
reg   [31:0] buff_y_out_load_7_reg_2508;
reg   [31:0] buff_y_out_1_load_7_reg_2513;
reg   [31:0] buff_y_out_2_load_7_reg_2518;
reg   [31:0] buff_y_out_3_load_7_reg_2523;
wire   [3:0] buff_y_out_addr_11_reg_2528;
wire    ap_CS_fsm_state9;
wire   [3:0] buff_y_out_1_addr_11_reg_2533;
wire   [3:0] buff_y_out_2_addr_11_reg_2538;
wire   [3:0] buff_y_out_3_addr_11_reg_2543;
wire   [3:0] buff_y_out_addr_12_reg_2548;
wire   [3:0] buff_y_out_1_addr_12_reg_2553;
wire   [3:0] buff_y_out_2_addr_12_reg_2558;
wire   [3:0] buff_y_out_3_addr_12_reg_2563;
reg   [31:0] buff_y_out_load_8_reg_2568;
reg   [31:0] buff_y_out_1_load_8_reg_2573;
reg   [31:0] buff_y_out_2_load_8_reg_2578;
reg   [31:0] buff_y_out_3_load_8_reg_2583;
reg   [31:0] buff_y_out_load_9_reg_2588;
reg   [31:0] buff_y_out_1_load_9_reg_2593;
reg   [31:0] buff_y_out_2_load_9_reg_2598;
reg   [31:0] buff_y_out_3_load_9_reg_2603;
wire   [3:0] buff_y_out_addr_13_reg_2608;
wire    ap_CS_fsm_state10;
wire   [3:0] buff_y_out_1_addr_13_reg_2613;
wire   [3:0] buff_y_out_2_addr_13_reg_2618;
wire   [3:0] buff_y_out_3_addr_13_reg_2623;
wire   [3:0] buff_y_out_addr_14_reg_2628;
wire   [3:0] buff_y_out_1_addr_14_reg_2633;
wire   [3:0] buff_y_out_2_addr_14_reg_2638;
wire   [3:0] buff_y_out_3_addr_14_reg_2643;
reg   [31:0] buff_y_out_load_10_reg_2648;
reg   [31:0] buff_y_out_1_load_10_reg_2653;
reg   [31:0] buff_y_out_2_load_10_reg_2658;
reg   [31:0] buff_y_out_3_load_10_reg_2663;
reg   [31:0] buff_y_out_load_11_reg_2668;
reg   [31:0] buff_y_out_1_load_11_reg_2673;
reg   [31:0] buff_y_out_2_load_11_reg_2678;
reg   [31:0] buff_y_out_3_load_11_reg_2683;
wire   [3:0] buff_y_out_addr_15_reg_2688;
wire    ap_CS_fsm_state11;
wire   [3:0] buff_y_out_1_addr_15_reg_2693;
wire   [3:0] buff_y_out_2_addr_15_reg_2698;
wire   [3:0] buff_y_out_3_addr_15_reg_2703;
wire   [3:0] buff_y_out_addr_16_reg_2708;
wire   [3:0] buff_y_out_1_addr_16_reg_2713;
wire   [3:0] buff_y_out_2_addr_16_reg_2718;
wire   [3:0] buff_y_out_3_addr_16_reg_2723;
reg   [31:0] buff_y_out_load_12_reg_2728;
reg   [31:0] buff_y_out_1_load_12_reg_2733;
reg   [31:0] buff_y_out_2_load_12_reg_2738;
reg   [31:0] buff_y_out_3_load_12_reg_2743;
reg   [31:0] buff_y_out_load_13_reg_2748;
reg   [31:0] buff_y_out_1_load_13_reg_2753;
reg   [31:0] buff_y_out_2_load_13_reg_2758;
reg   [31:0] buff_y_out_3_load_13_reg_2763;
reg   [31:0] buff_y_out_load_14_reg_2768;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_y_out_1_load_14_reg_2773;
reg   [31:0] buff_y_out_2_load_14_reg_2778;
reg   [31:0] buff_y_out_3_load_14_reg_2783;
reg   [31:0] buff_y_out_load_15_reg_2788;
reg   [31:0] buff_y_out_1_load_15_reg_2793;
reg   [31:0] buff_y_out_2_load_15_reg_2798;
reg   [31:0] buff_y_out_3_load_15_reg_2803;
reg   [7:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [7:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [7:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [7:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [7:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [7:0] buff_A_2_address1;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg   [7:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [7:0] buff_A_3_address1;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg   [7:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg   [7:0] buff_A_4_address1;
reg    buff_A_4_ce1;
wire   [31:0] buff_A_4_q1;
reg   [7:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg   [7:0] buff_A_5_address1;
reg    buff_A_5_ce1;
wire   [31:0] buff_A_5_q1;
reg   [7:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg   [7:0] buff_A_6_address1;
reg    buff_A_6_ce1;
wire   [31:0] buff_A_6_q1;
reg   [7:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg   [7:0] buff_A_7_address1;
reg    buff_A_7_ce1;
wire   [31:0] buff_A_7_q1;
reg   [7:0] buff_A_8_address0;
reg    buff_A_8_ce0;
reg    buff_A_8_we0;
wire   [31:0] buff_A_8_q0;
reg   [7:0] buff_A_8_address1;
reg    buff_A_8_ce1;
wire   [31:0] buff_A_8_q1;
reg   [7:0] buff_A_9_address0;
reg    buff_A_9_ce0;
reg    buff_A_9_we0;
wire   [31:0] buff_A_9_q0;
reg   [7:0] buff_A_9_address1;
reg    buff_A_9_ce1;
wire   [31:0] buff_A_9_q1;
reg   [7:0] buff_A_10_address0;
reg    buff_A_10_ce0;
reg    buff_A_10_we0;
wire   [31:0] buff_A_10_q0;
reg   [7:0] buff_A_10_address1;
reg    buff_A_10_ce1;
wire   [31:0] buff_A_10_q1;
reg   [7:0] buff_A_11_address0;
reg    buff_A_11_ce0;
reg    buff_A_11_we0;
wire   [31:0] buff_A_11_q0;
reg   [7:0] buff_A_11_address1;
reg    buff_A_11_ce1;
wire   [31:0] buff_A_11_q1;
reg   [7:0] buff_A_12_address0;
reg    buff_A_12_ce0;
reg    buff_A_12_we0;
wire   [31:0] buff_A_12_q0;
reg   [7:0] buff_A_12_address1;
reg    buff_A_12_ce1;
wire   [31:0] buff_A_12_q1;
reg   [7:0] buff_A_13_address0;
reg    buff_A_13_ce0;
reg    buff_A_13_we0;
wire   [31:0] buff_A_13_q0;
reg   [7:0] buff_A_13_address1;
reg    buff_A_13_ce1;
wire   [31:0] buff_A_13_q1;
reg   [7:0] buff_A_14_address0;
reg    buff_A_14_ce0;
reg    buff_A_14_we0;
wire   [31:0] buff_A_14_q0;
reg   [7:0] buff_A_14_address1;
reg    buff_A_14_ce1;
wire   [31:0] buff_A_14_q1;
reg   [7:0] buff_A_15_address0;
reg    buff_A_15_ce0;
reg    buff_A_15_we0;
wire   [31:0] buff_A_15_q0;
reg   [7:0] buff_A_15_address1;
reg    buff_A_15_ce1;
wire   [31:0] buff_A_15_q1;
reg   [3:0] buff_x_address0;
reg    buff_x_ce0;
wire   [31:0] buff_x_q0;
reg    buff_x_ce1;
wire   [31:0] buff_x_q1;
reg   [3:0] buff_x_1_address0;
reg    buff_x_1_ce0;
wire   [31:0] buff_x_1_q0;
reg    buff_x_1_ce1;
wire   [31:0] buff_x_1_q1;
reg   [3:0] buff_x_2_address0;
reg    buff_x_2_ce0;
wire   [31:0] buff_x_2_q0;
reg    buff_x_2_ce1;
wire   [31:0] buff_x_2_q1;
reg   [3:0] buff_x_3_address0;
reg    buff_x_3_ce0;
wire   [31:0] buff_x_3_q0;
reg    buff_x_3_ce1;
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
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_ap_idle;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_ap_ready;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_ce1;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_d0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_opcode;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_din1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_ce;
wire    grp_atax_Pipeline_lprd_2_fu_1197_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1197_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1197_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1197_ap_ready;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1197_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_A_0_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1197_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1197_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1197_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_A_3_ce0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_d0;
wire    grp_atax_Pipeline_lp3_fu_1229_ap_start;
wire    grp_atax_Pipeline_lp3_fu_1229_ap_done;
wire    grp_atax_Pipeline_lp3_fu_1229_ap_idle;
wire    grp_atax_Pipeline_lp3_fu_1229_ap_ready;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_1_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_1_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_2_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_2_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_3_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_3_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_4_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_4_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_4_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_4_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_5_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_5_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_5_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_5_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_6_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_6_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_6_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_6_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_7_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_7_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_7_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_7_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_8_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_8_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_8_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_8_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_9_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_9_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_9_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_9_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_10_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_10_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_10_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_10_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_11_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_11_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_11_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_11_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_12_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_12_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_12_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_12_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_13_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_13_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_13_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_13_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_14_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_14_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_14_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_14_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_15_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_15_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1229_buff_A_15_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_buff_A_15_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_1_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_2_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_2_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_3_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1229_tmp1_3_address1;
wire    grp_atax_Pipeline_lp3_fu_1229_tmp1_3_ce1;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_63190_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_63190_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_62189_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_62189_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_61188_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_61188_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_60187_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_60187_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_59186_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_59186_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_58185_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_58185_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_57184_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_57184_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_56183_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_56183_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_55182_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_55182_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_54181_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_54181_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_53180_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_53180_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_52179_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_52179_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_51178_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_51178_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_50177_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_50177_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_49176_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_49176_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_48175_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_48175_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_47174_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_47174_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_46173_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_46173_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_45172_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_45172_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_44171_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_44171_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_43170_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_43170_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_42169_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_42169_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_41168_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_41168_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_40167_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_40167_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_39166_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_39166_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_38165_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_38165_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_37164_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_37164_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_36163_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_36163_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_35162_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_35162_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_34161_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_34161_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_33160_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_33160_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_32159_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_32159_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_31158_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_31158_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_30157_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_30157_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_29156_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_29156_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_28155_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_28155_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_27154_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_27154_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_26153_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_26153_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_25152_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_25152_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_24151_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_24151_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_23150_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_23150_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_22149_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_22149_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_21148_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_21148_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_20147_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_20147_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_19146_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_19146_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_18145_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_18145_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_17144_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_17144_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_16143_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_16143_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_15142_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_15142_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_14141_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_14141_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_13140_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_13140_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_12139_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_12139_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_11138_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_11138_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_10137_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_10137_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_9136_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_9136_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_8135_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_8135_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_7134_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_7134_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_6133_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_6133_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_5132_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_5132_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_4131_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_4131_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_3130_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_3130_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_2129_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_2129_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7_1128_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7_1128_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_add58_7127_out;
wire    grp_atax_Pipeline_lp3_fu_1229_add58_7127_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1389_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_y_out_write;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_1_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_2_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_3_ce0;
reg    grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start_reg;
wire   [0:0] icmp_ln11_fu_1407_p2;
reg    grp_atax_Pipeline_lprd_2_fu_1197_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp3_fu_1229_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_atax_Pipeline_lpwr_1_fu_1389_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] zext_ln11_fu_1419_p1;
wire   [63:0] zext_ln5_fu_1442_p1;
reg   [6:0] i_fu_104;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
reg    x_ce0_local;
reg    buff_y_out_ce1_local;
reg   [3:0] buff_y_out_address1_local;
reg    buff_y_out_ce0_local;
reg   [3:0] buff_y_out_address0_local;
reg    buff_y_out_we0_local;
reg   [31:0] buff_y_out_d0_local;
reg    buff_y_out_we1_local;
reg   [31:0] buff_y_out_d1_local;
reg    buff_y_out_1_ce1_local;
reg   [3:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_ce0_local;
reg   [3:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_we0_local;
reg   [31:0] buff_y_out_1_d0_local;
reg    buff_y_out_1_we1_local;
reg   [31:0] buff_y_out_1_d1_local;
reg    buff_y_out_2_ce1_local;
reg   [3:0] buff_y_out_2_address1_local;
reg    buff_y_out_2_ce0_local;
reg   [3:0] buff_y_out_2_address0_local;
reg    buff_y_out_2_we0_local;
reg   [31:0] buff_y_out_2_d0_local;
reg    buff_y_out_2_we1_local;
reg   [31:0] buff_y_out_2_d1_local;
reg    buff_y_out_3_ce1_local;
reg   [3:0] buff_y_out_3_address1_local;
reg    buff_y_out_3_ce0_local;
reg   [3:0] buff_y_out_3_address0_local;
reg    buff_y_out_3_we0_local;
reg   [31:0] buff_y_out_3_d0_local;
reg    buff_y_out_3_we1_local;
reg   [31:0] buff_y_out_3_d1_local;
reg    buff_x_2_we0_local;
wire   [31:0] bitcast_ln12_fu_1458_p1;
reg    buff_x_2_ce0_local;
reg    tmp1_2_we0_local;
reg    tmp1_2_ce0_local;
reg    buff_x_1_we0_local;
reg    buff_x_1_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    buff_x_we0_local;
reg    buff_x_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    buff_x_3_we0_local;
reg    buff_x_3_ce0_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
wire   [31:0] grp_fu_2808_p2;
reg   [31:0] grp_fu_2808_p0;
reg   [31:0] grp_fu_2808_p1;
reg    grp_fu_2808_ce;
wire   [31:0] grp_fu_2812_p2;
reg   [31:0] grp_fu_2812_p0;
reg   [31:0] grp_fu_2812_p1;
reg    grp_fu_2812_ce;
reg   [22:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
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
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 23'd1;
#0 grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lprd_2_fu_1197_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_fu_1229_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1389_ap_start_reg = 1'b0;
#0 i_fu_104 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_d0),.q0(buff_A_4_q0),.address1(buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_d0),.q0(buff_A_5_q0),.address1(buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_d0),.q0(buff_A_6_q0),.address1(buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_d0),.q0(buff_A_7_q0),.address1(buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_8_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_8_address0),.ce0(buff_A_8_ce0),.we0(buff_A_8_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_d0),.q0(buff_A_8_q0),.address1(buff_A_8_address1),.ce1(buff_A_8_ce1),.q1(buff_A_8_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_9_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_9_address0),.ce0(buff_A_9_ce0),.we0(buff_A_9_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_d0),.q0(buff_A_9_q0),.address1(buff_A_9_address1),.ce1(buff_A_9_ce1),.q1(buff_A_9_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_10_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_10_address0),.ce0(buff_A_10_ce0),.we0(buff_A_10_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_d0),.q0(buff_A_10_q0),.address1(buff_A_10_address1),.ce1(buff_A_10_ce1),.q1(buff_A_10_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_11_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_11_address0),.ce0(buff_A_11_ce0),.we0(buff_A_11_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_d0),.q0(buff_A_11_q0),.address1(buff_A_11_address1),.ce1(buff_A_11_ce1),.q1(buff_A_11_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_12_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_12_address0),.ce0(buff_A_12_ce0),.we0(buff_A_12_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_d0),.q0(buff_A_12_q0),.address1(buff_A_12_address1),.ce1(buff_A_12_ce1),.q1(buff_A_12_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_13_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_13_address0),.ce0(buff_A_13_ce0),.we0(buff_A_13_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_d0),.q0(buff_A_13_q0),.address1(buff_A_13_address1),.ce1(buff_A_13_ce1),.q1(buff_A_13_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_14_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_14_address0),.ce0(buff_A_14_ce0),.we0(buff_A_14_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_d0),.q0(buff_A_14_q0),.address1(buff_A_14_address1),.ce1(buff_A_14_ce1),.q1(buff_A_14_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_15_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_15_address0),.ce0(buff_A_15_ce0),.we0(buff_A_15_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_d0),.q0(buff_A_15_q0),.address1(buff_A_15_address1),.ce1(buff_A_15_ce1),.q1(buff_A_15_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1458_p1),.q0(buff_x_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_address1),.ce1(buff_x_ce1),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1458_p1),.q0(buff_x_1_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_address1),.ce1(buff_x_1_ce1),.q1(buff_x_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0),.ce0(buff_x_2_ce0),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_1458_p1),.q0(buff_x_2_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_address1),.ce1(buff_x_2_ce1),.q1(buff_x_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0),.ce0(buff_x_3_ce0),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_1458_p1),.q0(buff_x_3_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_address1),.ce1(buff_x_3_ce1),.q1(buff_x_3_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0_local),.d0(buff_y_out_d0_local),.q0(buff_y_out_q0),.address1(buff_y_out_address1_local),.ce1(buff_y_out_ce1_local),.we1(buff_y_out_we1_local),.d1(buff_y_out_d1_local),.q1(buff_y_out_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0_local),.d0(buff_y_out_1_d0_local),.q0(buff_y_out_1_q0),.address1(buff_y_out_1_address1_local),.ce1(buff_y_out_1_ce1_local),.we1(buff_y_out_1_we1_local),.d1(buff_y_out_1_d1_local),.q1(buff_y_out_1_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0_local),.d0(buff_y_out_2_d0_local),.q0(buff_y_out_2_q0),.address1(buff_y_out_2_address1_local),.ce1(buff_y_out_2_ce1_local),.we1(buff_y_out_2_we1_local),.d1(buff_y_out_2_d1_local),.q1(buff_y_out_2_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0_local),.d0(buff_y_out_3_d0_local),.q0(buff_y_out_3_q0),.address1(buff_y_out_3_address1_local),.ce1(buff_y_out_3_ce1_local),.we1(buff_y_out_3_we1_local),.d1(buff_y_out_3_d1_local),.q1(buff_y_out_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0),.address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_address1),.ce1(tmp1_ce1),.q1(tmp1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0),.address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_1_address1),.ce1(tmp1_1_ce1),.q1(tmp1_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0),.address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_2_address1),.ce1(tmp1_2_ce1),.q1(tmp1_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0),.address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_3_address1),.ce1(tmp1_3_ce1),.q1(tmp1_3_q1));
atax_atax_Pipeline_lp1_lp2 grp_atax_Pipeline_lp1_lp2_fu_1169(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start),.ap_done(grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done),.ap_idle(grp_atax_Pipeline_lp1_lp2_fu_1169_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_lp2_fu_1169_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_8_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_address0),.buff_A_8_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_8_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_address1),.buff_A_8_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_ce1),.buff_A_8_q1(buff_A_8_q1),.buff_A_9_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_address0),.buff_A_9_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_9_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_address1),.buff_A_9_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_ce1),.buff_A_9_q1(buff_A_9_q1),.buff_A_10_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_address0),.buff_A_10_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_10_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_address1),.buff_A_10_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_ce1),.buff_A_10_q1(buff_A_10_q1),.buff_A_11_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_address0),.buff_A_11_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_11_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_address1),.buff_A_11_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_ce1),.buff_A_11_q1(buff_A_11_q1),.buff_A_12_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_address0),.buff_A_12_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_12_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_address1),.buff_A_12_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_ce1),.buff_A_12_q1(buff_A_12_q1),.buff_A_13_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_address0),.buff_A_13_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_13_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_address1),.buff_A_13_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_ce1),.buff_A_13_q1(buff_A_13_q1),.buff_A_14_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_address0),.buff_A_14_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_14_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_address1),.buff_A_14_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_ce1),.buff_A_14_q1(buff_A_14_q1),.buff_A_15_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_address0),.buff_A_15_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_15_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_address1),.buff_A_15_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_ce1),.buff_A_15_q1(buff_A_15_q1),.buff_x_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_address1),.buff_x_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_ce1),.buff_x_q1(buff_x_q1),.buff_x_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_1_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_address1),.buff_x_1_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_ce1),.buff_x_1_q1(buff_x_1_q1),.buff_x_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_address0),.buff_x_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_ce0),.buff_x_2_q0(buff_x_2_q0),.buff_x_2_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_address1),.buff_x_2_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_ce1),.buff_x_2_q1(buff_x_2_q1),.buff_x_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_address0),.buff_x_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_ce0),.buff_x_3_q0(buff_x_3_q0),.buff_x_3_address1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_address1),.buff_x_3_ce1(grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_ce1),.buff_x_3_q1(buff_x_3_q1),.tmp1_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_d0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_d0),.tmp1_3_q0(tmp1_3_q0),.grp_fu_2808_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_din0),.grp_fu_2808_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_din1),.grp_fu_2808_p_opcode(grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_opcode),.grp_fu_2808_p_dout0(grp_fu_2808_p2),.grp_fu_2808_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_ce),.grp_fu_2812_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_din0),.grp_fu_2812_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_din1),.grp_fu_2812_p_dout0(grp_fu_2812_p2),.grp_fu_2812_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_ce));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1197(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1197_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1197_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1197_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1197_ap_ready),.i(trunc_ln11_reg_2188),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1197_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1197_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1197_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1197_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_1197_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1197_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_1197_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1197_A_3_ce0),.A_3_q0(A_3_q0),.lshr_ln5(lshr_ln5_reg_2198),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_d0),.buff_A_4_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_ce0),.buff_A_4_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_we0),.buff_A_4_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_d0),.buff_A_5_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_ce0),.buff_A_5_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_we0),.buff_A_5_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_d0),.buff_A_6_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_ce0),.buff_A_6_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_we0),.buff_A_6_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_d0),.buff_A_7_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_ce0),.buff_A_7_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_we0),.buff_A_7_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_d0),.buff_A_8_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_address0),.buff_A_8_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_ce0),.buff_A_8_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_we0),.buff_A_8_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_d0),.buff_A_9_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_address0),.buff_A_9_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_ce0),.buff_A_9_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_we0),.buff_A_9_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_d0),.buff_A_10_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_address0),.buff_A_10_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_ce0),.buff_A_10_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_we0),.buff_A_10_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_d0),.buff_A_11_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_address0),.buff_A_11_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_ce0),.buff_A_11_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_we0),.buff_A_11_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_d0),.buff_A_12_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_address0),.buff_A_12_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_ce0),.buff_A_12_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_we0),.buff_A_12_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_d0),.buff_A_13_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_address0),.buff_A_13_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_ce0),.buff_A_13_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_we0),.buff_A_13_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_d0),.buff_A_14_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_address0),.buff_A_14_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_ce0),.buff_A_14_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_we0),.buff_A_14_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_d0),.buff_A_15_address0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_address0),.buff_A_15_ce0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_ce0),.buff_A_15_we0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_we0),.buff_A_15_d0(grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_d0),.empty_12(trunc_ln11_1_reg_2193),.empty(empty_14_reg_2203));
atax_atax_Pipeline_lp3 grp_atax_Pipeline_lp3_fu_1229(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_fu_1229_ap_start),.ap_done(grp_atax_Pipeline_lp3_fu_1229_ap_done),.ap_idle(grp_atax_Pipeline_lp3_fu_1229_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_fu_1229_ap_ready),.buff_y_out_3_load_15(buff_y_out_3_load_15_reg_2803),.buff_y_out_2_load_15(buff_y_out_2_load_15_reg_2798),.buff_y_out_1_load_15(buff_y_out_1_load_15_reg_2793),.buff_y_out_load_15(buff_y_out_load_15_reg_2788),.buff_y_out_3_load_14(buff_y_out_3_load_14_reg_2783),.buff_y_out_2_load_14(buff_y_out_2_load_14_reg_2778),.buff_y_out_1_load_14(buff_y_out_1_load_14_reg_2773),.buff_y_out_load_14(buff_y_out_load_14_reg_2768),.buff_y_out_3_load_13(buff_y_out_3_load_13_reg_2763),.buff_y_out_2_load_13(buff_y_out_2_load_13_reg_2758),.buff_y_out_1_load_13(buff_y_out_1_load_13_reg_2753),.buff_y_out_load_13(buff_y_out_load_13_reg_2748),.buff_y_out_3_load_12(buff_y_out_3_load_12_reg_2743),.buff_y_out_2_load_12(buff_y_out_2_load_12_reg_2738),.buff_y_out_1_load_12(buff_y_out_1_load_12_reg_2733),.buff_y_out_load_12(buff_y_out_load_12_reg_2728),.buff_y_out_3_load_11(buff_y_out_3_load_11_reg_2683),.buff_y_out_2_load_11(buff_y_out_2_load_11_reg_2678),.buff_y_out_1_load_11(buff_y_out_1_load_11_reg_2673),.buff_y_out_load_11(buff_y_out_load_11_reg_2668),.buff_y_out_3_load_10(buff_y_out_3_load_10_reg_2663),.buff_y_out_2_load_10(buff_y_out_2_load_10_reg_2658),.buff_y_out_1_load_10(buff_y_out_1_load_10_reg_2653),.buff_y_out_load_10(buff_y_out_load_10_reg_2648),.buff_y_out_3_load_9(buff_y_out_3_load_9_reg_2603),.buff_y_out_2_load_9(buff_y_out_2_load_9_reg_2598),.buff_y_out_1_load_9(buff_y_out_1_load_9_reg_2593),.buff_y_out_load_9(buff_y_out_load_9_reg_2588),.buff_y_out_3_load_8(buff_y_out_3_load_8_reg_2583),.buff_y_out_2_load_8(buff_y_out_2_load_8_reg_2578),.buff_y_out_1_load_8(buff_y_out_1_load_8_reg_2573),.buff_y_out_load_8(buff_y_out_load_8_reg_2568),.buff_y_out_3_load_7(buff_y_out_3_load_7_reg_2523),.buff_y_out_2_load_7(buff_y_out_2_load_7_reg_2518),.buff_y_out_1_load_7(buff_y_out_1_load_7_reg_2513),.buff_y_out_load_7(buff_y_out_load_7_reg_2508),.buff_y_out_3_load_6(buff_y_out_3_load_6_reg_2503),.buff_y_out_2_load_6(buff_y_out_2_load_6_reg_2498),.buff_y_out_1_load_6(buff_y_out_1_load_6_reg_2493),.buff_y_out_load_6(buff_y_out_load_6_reg_2488),.buff_y_out_3_load_5(buff_y_out_3_load_5_reg_2443),.buff_y_out_2_load_5(buff_y_out_2_load_5_reg_2438),.buff_y_out_1_load_5(buff_y_out_1_load_5_reg_2433),.buff_y_out_load_5(buff_y_out_load_5_reg_2428),.buff_y_out_3_load_4(buff_y_out_3_load_4_reg_2423),.buff_y_out_2_load_4(buff_y_out_2_load_4_reg_2418),.buff_y_out_1_load_4(buff_y_out_1_load_4_reg_2413),.buff_y_out_load_4(buff_y_out_load_4_reg_2408),.buff_y_out_3_load_3(buff_y_out_3_load_3_reg_2363),.buff_y_out_2_load_3(buff_y_out_2_load_3_reg_2358),.buff_y_out_1_load_3(buff_y_out_1_load_3_reg_2353),.buff_y_out_load_3(buff_y_out_load_3_reg_2348),.buff_y_out_3_load_2(buff_y_out_3_load_2_reg_2343),.buff_y_out_2_load_2(buff_y_out_2_load_2_reg_2338),.buff_y_out_1_load_2(buff_y_out_1_load_2_reg_2333),.buff_y_out_load_2(buff_y_out_load_2_reg_2328),.buff_y_out_3_load_1(buff_y_out_3_load_1_reg_2283),.buff_y_out_2_load_1(buff_y_out_2_load_1_reg_2278),.buff_y_out_1_load_1(buff_y_out_1_load_1_reg_2273),.buff_y_out_load_1(buff_y_out_load_1_reg_2268),.buff_y_out_3_load(buff_y_out_3_load_reg_2263),.buff_y_out_2_load(buff_y_out_2_load_reg_2258),.buff_y_out_1_load(buff_y_out_1_load_reg_2253),.buff_y_out_load(buff_y_out_load_reg_2248),.buff_A_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_8_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_8_address0),.buff_A_8_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_8_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_8_address1),.buff_A_8_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_8_ce1),.buff_A_8_q1(buff_A_8_q1),.buff_A_9_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_9_address0),.buff_A_9_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_9_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_9_address1),.buff_A_9_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_9_ce1),.buff_A_9_q1(buff_A_9_q1),.buff_A_10_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_10_address0),.buff_A_10_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_10_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_10_address1),.buff_A_10_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_10_ce1),.buff_A_10_q1(buff_A_10_q1),.buff_A_11_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_11_address0),.buff_A_11_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_11_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_11_address1),.buff_A_11_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_11_ce1),.buff_A_11_q1(buff_A_11_q1),.buff_A_12_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_12_address0),.buff_A_12_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_12_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_12_address1),.buff_A_12_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_12_ce1),.buff_A_12_q1(buff_A_12_q1),.buff_A_13_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_13_address0),.buff_A_13_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_13_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_13_address1),.buff_A_13_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_13_ce1),.buff_A_13_q1(buff_A_13_q1),.buff_A_14_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_14_address0),.buff_A_14_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_14_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_14_address1),.buff_A_14_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_14_ce1),.buff_A_14_q1(buff_A_14_q1),.buff_A_15_address0(grp_atax_Pipeline_lp3_fu_1229_buff_A_15_address0),.buff_A_15_ce0(grp_atax_Pipeline_lp3_fu_1229_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_15_address1(grp_atax_Pipeline_lp3_fu_1229_buff_A_15_address1),.buff_A_15_ce1(grp_atax_Pipeline_lp3_fu_1229_buff_A_15_ce1),.buff_A_15_q1(buff_A_15_q1),.tmp1_address0(grp_atax_Pipeline_lp3_fu_1229_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_fu_1229_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_address1),.tmp1_ce1(grp_atax_Pipeline_lp3_fu_1229_tmp1_ce1),.tmp1_q1(tmp1_q1),.tmp1_1_address0(grp_atax_Pipeline_lp3_fu_1229_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_fu_1229_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_1_address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_1_address1),.tmp1_1_ce1(grp_atax_Pipeline_lp3_fu_1229_tmp1_1_ce1),.tmp1_1_q1(tmp1_1_q1),.tmp1_2_address0(grp_atax_Pipeline_lp3_fu_1229_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_fu_1229_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_2_address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_2_address1),.tmp1_2_ce1(grp_atax_Pipeline_lp3_fu_1229_tmp1_2_ce1),.tmp1_2_q1(tmp1_2_q1),.tmp1_3_address0(grp_atax_Pipeline_lp3_fu_1229_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_fu_1229_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.tmp1_3_address1(grp_atax_Pipeline_lp3_fu_1229_tmp1_3_address1),.tmp1_3_ce1(grp_atax_Pipeline_lp3_fu_1229_tmp1_3_ce1),.tmp1_3_q1(tmp1_3_q1),.add58_7_63190_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_63190_out),.add58_7_63190_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_63190_out_ap_vld),.add58_7_62189_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_62189_out),.add58_7_62189_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_62189_out_ap_vld),.add58_7_61188_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_61188_out),.add58_7_61188_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_61188_out_ap_vld),.add58_7_60187_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_60187_out),.add58_7_60187_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_60187_out_ap_vld),.add58_7_59186_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_59186_out),.add58_7_59186_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_59186_out_ap_vld),.add58_7_58185_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_58185_out),.add58_7_58185_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_58185_out_ap_vld),.add58_7_57184_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_57184_out),.add58_7_57184_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_57184_out_ap_vld),.add58_7_56183_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_56183_out),.add58_7_56183_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_56183_out_ap_vld),.add58_7_55182_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_55182_out),.add58_7_55182_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_55182_out_ap_vld),.add58_7_54181_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_54181_out),.add58_7_54181_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_54181_out_ap_vld),.add58_7_53180_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_53180_out),.add58_7_53180_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_53180_out_ap_vld),.add58_7_52179_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_52179_out),.add58_7_52179_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_52179_out_ap_vld),.add58_7_51178_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_51178_out),.add58_7_51178_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_51178_out_ap_vld),.add58_7_50177_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_50177_out),.add58_7_50177_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_50177_out_ap_vld),.add58_7_49176_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_49176_out),.add58_7_49176_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_49176_out_ap_vld),.add58_7_48175_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_48175_out),.add58_7_48175_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_48175_out_ap_vld),.add58_7_47174_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_47174_out),.add58_7_47174_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_47174_out_ap_vld),.add58_7_46173_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_46173_out),.add58_7_46173_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_46173_out_ap_vld),.add58_7_45172_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_45172_out),.add58_7_45172_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_45172_out_ap_vld),.add58_7_44171_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_44171_out),.add58_7_44171_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_44171_out_ap_vld),.add58_7_43170_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_43170_out),.add58_7_43170_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_43170_out_ap_vld),.add58_7_42169_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_42169_out),.add58_7_42169_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_42169_out_ap_vld),.add58_7_41168_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_41168_out),.add58_7_41168_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_41168_out_ap_vld),.add58_7_40167_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_40167_out),.add58_7_40167_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_40167_out_ap_vld),.add58_7_39166_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_39166_out),.add58_7_39166_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_39166_out_ap_vld),.add58_7_38165_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_38165_out),.add58_7_38165_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_38165_out_ap_vld),.add58_7_37164_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_37164_out),.add58_7_37164_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_37164_out_ap_vld),.add58_7_36163_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_36163_out),.add58_7_36163_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_36163_out_ap_vld),.add58_7_35162_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_35162_out),.add58_7_35162_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_35162_out_ap_vld),.add58_7_34161_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_34161_out),.add58_7_34161_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_34161_out_ap_vld),.add58_7_33160_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_33160_out),.add58_7_33160_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_33160_out_ap_vld),.add58_7_32159_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_32159_out),.add58_7_32159_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_32159_out_ap_vld),.add58_7_31158_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_31158_out),.add58_7_31158_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_31158_out_ap_vld),.add58_7_30157_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_30157_out),.add58_7_30157_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_30157_out_ap_vld),.add58_7_29156_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_29156_out),.add58_7_29156_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_29156_out_ap_vld),.add58_7_28155_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_28155_out),.add58_7_28155_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_28155_out_ap_vld),.add58_7_27154_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_27154_out),.add58_7_27154_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_27154_out_ap_vld),.add58_7_26153_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_26153_out),.add58_7_26153_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_26153_out_ap_vld),.add58_7_25152_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_25152_out),.add58_7_25152_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_25152_out_ap_vld),.add58_7_24151_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_24151_out),.add58_7_24151_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_24151_out_ap_vld),.add58_7_23150_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_23150_out),.add58_7_23150_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_23150_out_ap_vld),.add58_7_22149_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_22149_out),.add58_7_22149_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_22149_out_ap_vld),.add58_7_21148_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_21148_out),.add58_7_21148_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_21148_out_ap_vld),.add58_7_20147_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_20147_out),.add58_7_20147_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_20147_out_ap_vld),.add58_7_19146_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_19146_out),.add58_7_19146_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_19146_out_ap_vld),.add58_7_18145_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_18145_out),.add58_7_18145_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_18145_out_ap_vld),.add58_7_17144_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_17144_out),.add58_7_17144_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_17144_out_ap_vld),.add58_7_16143_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_16143_out),.add58_7_16143_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_16143_out_ap_vld),.add58_7_15142_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_15142_out),.add58_7_15142_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_15142_out_ap_vld),.add58_7_14141_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_14141_out),.add58_7_14141_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_14141_out_ap_vld),.add58_7_13140_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_13140_out),.add58_7_13140_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_13140_out_ap_vld),.add58_7_12139_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_12139_out),.add58_7_12139_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_12139_out_ap_vld),.add58_7_11138_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_11138_out),.add58_7_11138_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_11138_out_ap_vld),.add58_7_10137_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_10137_out),.add58_7_10137_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_10137_out_ap_vld),.add58_7_9136_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_9136_out),.add58_7_9136_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_9136_out_ap_vld),.add58_7_8135_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_8135_out),.add58_7_8135_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_8135_out_ap_vld),.add58_7_7134_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_7134_out),.add58_7_7134_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_7134_out_ap_vld),.add58_7_6133_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_6133_out),.add58_7_6133_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_6133_out_ap_vld),.add58_7_5132_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_5132_out),.add58_7_5132_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_5132_out_ap_vld),.add58_7_4131_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_4131_out),.add58_7_4131_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_4131_out_ap_vld),.add58_7_3130_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_3130_out),.add58_7_3130_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_3130_out_ap_vld),.add58_7_2129_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_2129_out),.add58_7_2129_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_2129_out_ap_vld),.add58_7_1128_out(grp_atax_Pipeline_lp3_fu_1229_add58_7_1128_out),.add58_7_1128_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7_1128_out_ap_vld),.add58_7127_out(grp_atax_Pipeline_lp3_fu_1229_add58_7127_out),.add58_7127_out_ap_vld(grp_atax_Pipeline_lp3_fu_1229_add58_7127_out_ap_vld),.grp_fu_2808_p_din0(grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_din0),.grp_fu_2808_p_din1(grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_din1),.grp_fu_2808_p_opcode(grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_opcode),.grp_fu_2808_p_dout0(grp_fu_2808_p2),.grp_fu_2808_p_ce(grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_ce),.grp_fu_2812_p_din0(grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_din0),.grp_fu_2812_p_din1(grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_din1),.grp_fu_2812_p_dout0(grp_fu_2812_p2),.grp_fu_2812_p_ce(grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1389(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1389_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1389_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1389_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1389_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1389_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1389_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U240(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2808_p0),.din1(grp_fu_2808_p1),.ce(grp_fu_2808_ce),.dout(grp_fu_2808_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U241(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2812_p0),.din1(grp_fu_2812_p1),.ce(grp_fu_2812_ce),.dout(grp_fu_2812_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1407_p2 == 1'd1))) begin
            grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_fu_1229_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_atax_Pipeline_lp3_fu_1229_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_fu_1229_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_fu_1229_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1197_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lprd_2_fu_1197_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1197_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1197_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1389_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_atax_Pipeline_lpwr_1_fu_1389_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1389_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1389_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_104 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_104 <= add_ln11_reg_2130;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_2130 <= add_ln11_fu_1413_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_load_10_reg_2653 <= buff_y_out_1_q0;
        buff_y_out_1_load_11_reg_2673 <= buff_y_out_1_q1;
        buff_y_out_2_load_10_reg_2658 <= buff_y_out_2_q0;
        buff_y_out_2_load_11_reg_2678 <= buff_y_out_2_q1;
        buff_y_out_3_load_10_reg_2663 <= buff_y_out_3_q0;
        buff_y_out_3_load_11_reg_2683 <= buff_y_out_3_q1;
        buff_y_out_load_10_reg_2648 <= buff_y_out_q0;
        buff_y_out_load_11_reg_2668 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_load_12_reg_2733 <= buff_y_out_1_q0;
        buff_y_out_1_load_13_reg_2753 <= buff_y_out_1_q1;
        buff_y_out_2_load_12_reg_2738 <= buff_y_out_2_q0;
        buff_y_out_2_load_13_reg_2758 <= buff_y_out_2_q1;
        buff_y_out_3_load_12_reg_2743 <= buff_y_out_3_q0;
        buff_y_out_3_load_13_reg_2763 <= buff_y_out_3_q1;
        buff_y_out_load_12_reg_2728 <= buff_y_out_q0;
        buff_y_out_load_13_reg_2748 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_load_14_reg_2773 <= buff_y_out_1_q0;
        buff_y_out_1_load_15_reg_2793 <= buff_y_out_1_q1;
        buff_y_out_2_load_14_reg_2778 <= buff_y_out_2_q0;
        buff_y_out_2_load_15_reg_2798 <= buff_y_out_2_q1;
        buff_y_out_3_load_14_reg_2783 <= buff_y_out_3_q0;
        buff_y_out_3_load_15_reg_2803 <= buff_y_out_3_q1;
        buff_y_out_load_14_reg_2768 <= buff_y_out_q0;
        buff_y_out_load_15_reg_2788 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_1_load_1_reg_2273 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_2253 <= buff_y_out_1_q1;
        buff_y_out_2_load_1_reg_2278 <= buff_y_out_2_q0;
        buff_y_out_2_load_reg_2258 <= buff_y_out_2_q1;
        buff_y_out_3_load_1_reg_2283 <= buff_y_out_3_q0;
        buff_y_out_3_load_reg_2263 <= buff_y_out_3_q1;
        buff_y_out_load_1_reg_2268 <= buff_y_out_q0;
        buff_y_out_load_reg_2248 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_load_2_reg_2333 <= buff_y_out_1_q0;
        buff_y_out_1_load_3_reg_2353 <= buff_y_out_1_q1;
        buff_y_out_2_load_2_reg_2338 <= buff_y_out_2_q0;
        buff_y_out_2_load_3_reg_2358 <= buff_y_out_2_q1;
        buff_y_out_3_load_2_reg_2343 <= buff_y_out_3_q0;
        buff_y_out_3_load_3_reg_2363 <= buff_y_out_3_q1;
        buff_y_out_load_2_reg_2328 <= buff_y_out_q0;
        buff_y_out_load_3_reg_2348 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_load_4_reg_2413 <= buff_y_out_1_q0;
        buff_y_out_1_load_5_reg_2433 <= buff_y_out_1_q1;
        buff_y_out_2_load_4_reg_2418 <= buff_y_out_2_q0;
        buff_y_out_2_load_5_reg_2438 <= buff_y_out_2_q1;
        buff_y_out_3_load_4_reg_2423 <= buff_y_out_3_q0;
        buff_y_out_3_load_5_reg_2443 <= buff_y_out_3_q1;
        buff_y_out_load_4_reg_2408 <= buff_y_out_q0;
        buff_y_out_load_5_reg_2428 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_load_6_reg_2493 <= buff_y_out_1_q0;
        buff_y_out_1_load_7_reg_2513 <= buff_y_out_1_q1;
        buff_y_out_2_load_6_reg_2498 <= buff_y_out_2_q0;
        buff_y_out_2_load_7_reg_2518 <= buff_y_out_2_q1;
        buff_y_out_3_load_6_reg_2503 <= buff_y_out_3_q0;
        buff_y_out_3_load_7_reg_2523 <= buff_y_out_3_q1;
        buff_y_out_load_6_reg_2488 <= buff_y_out_q0;
        buff_y_out_load_7_reg_2508 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_load_8_reg_2573 <= buff_y_out_1_q0;
        buff_y_out_1_load_9_reg_2593 <= buff_y_out_1_q1;
        buff_y_out_2_load_8_reg_2578 <= buff_y_out_2_q0;
        buff_y_out_2_load_9_reg_2598 <= buff_y_out_2_q1;
        buff_y_out_3_load_8_reg_2583 <= buff_y_out_3_q0;
        buff_y_out_3_load_9_reg_2603 <= buff_y_out_3_q1;
        buff_y_out_load_8_reg_2568 <= buff_y_out_q0;
        buff_y_out_load_9_reg_2588 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_14_reg_2203 <= empty_14_fu_1466_p2;
        lshr_ln5_reg_2198 <= {{i_fu_104[5:2]}};
        trunc_ln11_1_reg_2193 <= trunc_ln11_1_fu_1428_p1;
        trunc_ln11_reg_2188 <= trunc_ln11_fu_1424_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_fu_1229_ap_done == 1'b0)) begin
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
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_1389_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lprd_2_fu_1197_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_atax_Pipeline_lpwr_1_fu_1389_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_atax_Pipeline_lpwr_1_fu_1389_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_10_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_address0;
    end else begin
        buff_A_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_10_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_address1;
    end else begin
        buff_A_10_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_10_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_ce0;
    end else begin
        buff_A_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_10_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_10_ce1;
    end else begin
        buff_A_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_10_we0;
    end else begin
        buff_A_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_11_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_address0;
    end else begin
        buff_A_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_11_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_address1;
    end else begin
        buff_A_11_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_11_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_ce0;
    end else begin
        buff_A_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_11_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_11_ce1;
    end else begin
        buff_A_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_11_we0;
    end else begin
        buff_A_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_12_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_address0;
    end else begin
        buff_A_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_12_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_address1;
    end else begin
        buff_A_12_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_12_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_ce0;
    end else begin
        buff_A_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_12_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_12_ce1;
    end else begin
        buff_A_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_12_we0;
    end else begin
        buff_A_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_13_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_address0;
    end else begin
        buff_A_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_13_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_address1;
    end else begin
        buff_A_13_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_13_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_ce0;
    end else begin
        buff_A_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_13_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_13_ce1;
    end else begin
        buff_A_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_13_we0;
    end else begin
        buff_A_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_14_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_address0;
    end else begin
        buff_A_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_14_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_address1;
    end else begin
        buff_A_14_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_14_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_ce0;
    end else begin
        buff_A_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_14_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_14_ce1;
    end else begin
        buff_A_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_14_we0;
    end else begin
        buff_A_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_15_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_address0;
    end else begin
        buff_A_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_15_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_address1;
    end else begin
        buff_A_15_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_15_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_ce0;
    end else begin
        buff_A_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_15_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_15_ce1;
    end else begin
        buff_A_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_15_we0;
    end else begin
        buff_A_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_address1;
    end else begin
        buff_A_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_address1;
    end else begin
        buff_A_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_address1;
    end else begin
        buff_A_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_address1;
    end else begin
        buff_A_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_8_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_address0;
    end else begin
        buff_A_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_8_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_address1;
    end else begin
        buff_A_8_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_8_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_ce0;
    end else begin
        buff_A_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_8_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_8_ce1;
    end else begin
        buff_A_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_8_we0;
    end else begin
        buff_A_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_9_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_address0;
    end else begin
        buff_A_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_9_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_address1;
    end else begin
        buff_A_9_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_9_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_ce0;
    end else begin
        buff_A_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_9_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_9_ce1;
    end else begin
        buff_A_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_9_we0;
    end else begin
        buff_A_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_fu_1229_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_fu_1229_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1197_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_ce0;
    end else begin
        buff_x_1_ce0 = buff_x_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_1_ce1;
    end else begin
        buff_x_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd1))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_address0;
    end else begin
        buff_x_2_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_ce0;
    end else begin
        buff_x_2_ce0 = buff_x_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_2_ce1;
    end else begin
        buff_x_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd2))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_address0;
    end else begin
        buff_x_3_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_ce0;
    end else begin
        buff_x_3_ce0 = buff_x_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_3_ce1;
    end else begin
        buff_x_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_address0;
    end else begin
        buff_x_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_ce0;
    end else begin
        buff_x_ce0 = buff_x_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce1 = grp_atax_Pipeline_lp1_lp2_fu_1169_buff_x_ce1;
    end else begin
        buff_x_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd0))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = buff_y_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_15_reg_2693;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_13_reg_2613;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_11_reg_2533;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_9_reg_2453;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_7_reg_2373;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_5_reg_2293;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_2213;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_address0_local = zext_ln5_fu_1442_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address0_local = 64'd1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_16_reg_2713;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_14_reg_2633;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_12_reg_2553;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_10_reg_2473;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_8_reg_2393;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_6_reg_2313;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_4_reg_2233;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address1_local = 64'd0;
    end else begin
        buff_y_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_57184_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_49176_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_41168_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_33160_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_25152_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_17144_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_9136_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_1128_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_d0_local = 32'd0;
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_61188_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_53180_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_45172_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_37164_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_29156_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_21148_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_13140_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_5132_out;
    end else begin
        buff_y_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd1)))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = buff_y_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_15_reg_2698;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_13_reg_2618;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_11_reg_2538;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_9_reg_2458;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_7_reg_2378;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_5_reg_2298;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_3_reg_2218;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_address0_local = zext_ln5_fu_1442_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_address0_local = 64'd1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_16_reg_2718;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_14_reg_2638;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_12_reg_2558;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_10_reg_2478;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_8_reg_2398;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_6_reg_2318;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_4_reg_2238;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_address1_local = 64'd0;
    end else begin
        buff_y_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_58185_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_50177_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_42169_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_34161_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_26153_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_18145_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_10137_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_2129_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_d0_local = 32'd0;
    end else begin
        buff_y_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_62189_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_54181_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_46173_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_38165_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_30157_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_22149_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_14141_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_6133_out;
    end else begin
        buff_y_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd2)))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        buff_y_out_2_we1_local = 1'b1;
    end else begin
        buff_y_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = buff_y_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_15_reg_2703;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_13_reg_2623;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_11_reg_2543;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_9_reg_2463;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_7_reg_2383;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_5_reg_2303;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_3_reg_2223;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_address0_local = zext_ln5_fu_1442_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_address0_local = 64'd1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_16_reg_2723;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_14_reg_2643;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_12_reg_2563;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_10_reg_2483;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_8_reg_2403;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_6_reg_2323;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_4_reg_2243;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_address1_local = 64'd0;
    end else begin
        buff_y_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_59186_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_51178_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_43170_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_35162_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_27154_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_19146_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_11138_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_3130_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_d0_local = 32'd0;
    end else begin
        buff_y_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_63190_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_55182_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_47174_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_39166_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_31158_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_23150_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_15142_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_7134_out;
    end else begin
        buff_y_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd3)))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        buff_y_out_3_we1_local = 1'b1;
    end else begin
        buff_y_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = buff_y_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_address0_local = buff_y_out_addr_15_reg_2688;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_address0_local = buff_y_out_addr_13_reg_2608;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address0_local = buff_y_out_addr_11_reg_2528;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address0_local = buff_y_out_addr_9_reg_2448;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address0_local = buff_y_out_addr_7_reg_2368;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address0_local = buff_y_out_addr_5_reg_2288;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_2208;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_address0_local = zext_ln5_fu_1442_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address0_local = 64'd1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_address1_local = buff_y_out_addr_16_reg_2708;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_address1_local = buff_y_out_addr_14_reg_2628;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address1_local = buff_y_out_addr_12_reg_2548;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address1_local = buff_y_out_addr_10_reg_2468;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address1_local = buff_y_out_addr_8_reg_2388;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address1_local = buff_y_out_addr_6_reg_2308;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address1_local = buff_y_out_addr_4_reg_2228;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address1_local = 64'd0;
    end else begin
        buff_y_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1389_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | ((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_56183_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_48175_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_40167_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_32159_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_24151_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_16143_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_8135_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1229_add58_7127_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_d0_local = 32'd0;
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_60187_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_52179_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_44171_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_36163_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_28155_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_20147_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_12139_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1229_add58_7_4131_out;
    end else begin
        buff_y_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd0)))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2808_ce = grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2808_ce = grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_ce;
    end else begin
        grp_fu_2808_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2808_p0 = grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2808_p0 = grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_din0;
    end else begin
        grp_fu_2808_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2808_p1 = grp_atax_Pipeline_lp3_fu_1229_grp_fu_2808_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2808_p1 = grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2808_p_din1;
    end else begin
        grp_fu_2808_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2812_ce = grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2812_ce = grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_ce;
    end else begin
        grp_fu_2812_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2812_p0 = grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2812_p0 = grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_din0;
    end else begin
        grp_fu_2812_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2812_p1 = grp_atax_Pipeline_lp3_fu_1229_grp_fu_2812_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2812_p1 = grp_atax_Pipeline_lp1_lp2_fu_1169_grp_fu_2812_p_din1;
    end else begin
        grp_fu_2812_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_ce0;
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
        tmp1_1_ce1 = grp_atax_Pipeline_lp3_fu_1229_tmp1_1_ce1;
    end else begin
        tmp1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_ce0;
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
        tmp1_2_ce1 = grp_atax_Pipeline_lp3_fu_1229_tmp1_2_ce1;
    end else begin
        tmp1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd2))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_ce0;
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
        tmp1_3_ce1 = grp_atax_Pipeline_lp3_fu_1229_tmp1_3_ce1;
    end else begin
        tmp1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1442_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_fu_1229_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_ce0;
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
        tmp1_ce1 = grp_atax_Pipeline_lp3_fu_1229_tmp1_ce1;
    end else begin
        tmp1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1169_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1428_p1 == 2'd0))) begin
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1389_y_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1407_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_Pipeline_lprd_2_fu_1197_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_atax_Pipeline_lp1_lp2_fu_1169_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp3_fu_1229_ap_done == 1'b1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((1'b1 == ap_CS_fsm_state23) & (grp_atax_Pipeline_lpwr_1_fu_1389_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1197_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1197_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1197_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1197_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1197_A_3_ce0;
assign add_ln11_fu_1413_p2 = (i_fu_104 + 7'd1);
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
assign bitcast_ln12_fu_1458_p1 = x_q0;
assign buff_y_out_1_addr_10_reg_2473 = 64'd9;
assign buff_y_out_1_addr_11_reg_2533 = 64'd10;
assign buff_y_out_1_addr_12_reg_2553 = 64'd11;
assign buff_y_out_1_addr_13_reg_2613 = 64'd12;
assign buff_y_out_1_addr_14_reg_2633 = 64'd13;
assign buff_y_out_1_addr_15_reg_2693 = 64'd14;
assign buff_y_out_1_addr_16_reg_2713 = 64'd15;
assign buff_y_out_1_addr_3_reg_2213 = 64'd2;
assign buff_y_out_1_addr_4_reg_2233 = 64'd3;
assign buff_y_out_1_addr_5_reg_2293 = 64'd4;
assign buff_y_out_1_addr_6_reg_2313 = 64'd5;
assign buff_y_out_1_addr_7_reg_2373 = 64'd6;
assign buff_y_out_1_addr_8_reg_2393 = 64'd7;
assign buff_y_out_1_addr_9_reg_2453 = 64'd8;
assign buff_y_out_2_addr_10_reg_2478 = 64'd9;
assign buff_y_out_2_addr_11_reg_2538 = 64'd10;
assign buff_y_out_2_addr_12_reg_2558 = 64'd11;
assign buff_y_out_2_addr_13_reg_2618 = 64'd12;
assign buff_y_out_2_addr_14_reg_2638 = 64'd13;
assign buff_y_out_2_addr_15_reg_2698 = 64'd14;
assign buff_y_out_2_addr_16_reg_2718 = 64'd15;
assign buff_y_out_2_addr_3_reg_2218 = 64'd2;
assign buff_y_out_2_addr_4_reg_2238 = 64'd3;
assign buff_y_out_2_addr_5_reg_2298 = 64'd4;
assign buff_y_out_2_addr_6_reg_2318 = 64'd5;
assign buff_y_out_2_addr_7_reg_2378 = 64'd6;
assign buff_y_out_2_addr_8_reg_2398 = 64'd7;
assign buff_y_out_2_addr_9_reg_2458 = 64'd8;
assign buff_y_out_3_addr_10_reg_2483 = 64'd9;
assign buff_y_out_3_addr_11_reg_2543 = 64'd10;
assign buff_y_out_3_addr_12_reg_2563 = 64'd11;
assign buff_y_out_3_addr_13_reg_2623 = 64'd12;
assign buff_y_out_3_addr_14_reg_2643 = 64'd13;
assign buff_y_out_3_addr_15_reg_2703 = 64'd14;
assign buff_y_out_3_addr_16_reg_2723 = 64'd15;
assign buff_y_out_3_addr_3_reg_2223 = 64'd2;
assign buff_y_out_3_addr_4_reg_2243 = 64'd3;
assign buff_y_out_3_addr_5_reg_2303 = 64'd4;
assign buff_y_out_3_addr_6_reg_2323 = 64'd5;
assign buff_y_out_3_addr_7_reg_2383 = 64'd6;
assign buff_y_out_3_addr_8_reg_2403 = 64'd7;
assign buff_y_out_3_addr_9_reg_2463 = 64'd8;
assign buff_y_out_addr_10_reg_2468 = 64'd9;
assign buff_y_out_addr_11_reg_2528 = 64'd10;
assign buff_y_out_addr_12_reg_2548 = 64'd11;
assign buff_y_out_addr_13_reg_2608 = 64'd12;
assign buff_y_out_addr_14_reg_2628 = 64'd13;
assign buff_y_out_addr_15_reg_2688 = 64'd14;
assign buff_y_out_addr_16_reg_2708 = 64'd15;
assign buff_y_out_addr_3_reg_2208 = 64'd2;
assign buff_y_out_addr_4_reg_2228 = 64'd3;
assign buff_y_out_addr_5_reg_2288 = 64'd4;
assign buff_y_out_addr_6_reg_2308 = 64'd5;
assign buff_y_out_addr_7_reg_2368 = 64'd6;
assign buff_y_out_addr_8_reg_2388 = 64'd7;
assign buff_y_out_addr_9_reg_2448 = 64'd8;
assign empty_14_fu_1466_p2 = ((trunc_ln11_1_fu_1428_p1 == 2'd3) ? 1'b1 : 1'b0);
assign grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start = grp_atax_Pipeline_lp1_lp2_fu_1169_ap_start_reg;
assign grp_atax_Pipeline_lp3_fu_1229_ap_start = grp_atax_Pipeline_lp3_fu_1229_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1197_ap_start = grp_atax_Pipeline_lprd_2_fu_1197_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1389_ap_start = grp_atax_Pipeline_lpwr_1_fu_1389_ap_start_reg;
assign icmp_ln11_fu_1407_p2 = ((i_fu_104 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1432_p4 = {{i_fu_104[5:2]}};
assign trunc_ln11_1_fu_1428_p1 = i_fu_104[1:0];
assign trunc_ln11_fu_1424_p1 = i_fu_104[5:0];
assign x_address0 = zext_ln11_fu_1419_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1389_y_out_din;
assign zext_ln11_fu_1419_p1 = i_fu_104;
assign zext_ln5_fu_1442_p1 = lshr_ln5_fu_1432_p4;
endmodule 