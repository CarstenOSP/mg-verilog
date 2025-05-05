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
wire   [6:0] add_ln11_fu_1353_p2;
reg   [6:0] add_ln11_reg_2065;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1364_p1;
reg   [5:0] trunc_ln11_reg_2123;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln11_2_fu_1371_p1;
reg   [0:0] trunc_ln11_2_reg_2131;
wire   [3:0] buff_y_out_addr_3_reg_2136;
wire    ap_CS_fsm_state5;
wire   [3:0] buff_y_out_1_addr_3_reg_2141;
wire   [3:0] buff_y_out_2_addr_3_reg_2146;
wire   [3:0] buff_y_out_3_addr_3_reg_2151;
wire   [3:0] buff_y_out_addr_4_reg_2156;
wire   [3:0] buff_y_out_1_addr_4_reg_2161;
wire   [3:0] buff_y_out_2_addr_4_reg_2166;
wire   [3:0] buff_y_out_3_addr_4_reg_2171;
reg   [31:0] buff_y_out_load_reg_2176;
reg   [31:0] buff_y_out_1_load_reg_2181;
reg   [31:0] buff_y_out_2_load_reg_2186;
reg   [31:0] buff_y_out_3_load_reg_2191;
reg   [31:0] buff_y_out_load_1_reg_2196;
reg   [31:0] buff_y_out_1_load_1_reg_2201;
reg   [31:0] buff_y_out_2_load_1_reg_2206;
reg   [31:0] buff_y_out_3_load_1_reg_2211;
wire   [3:0] buff_y_out_addr_5_reg_2216;
wire    ap_CS_fsm_state6;
wire   [3:0] buff_y_out_1_addr_5_reg_2221;
wire   [3:0] buff_y_out_2_addr_5_reg_2226;
wire   [3:0] buff_y_out_3_addr_5_reg_2231;
wire   [3:0] buff_y_out_addr_6_reg_2236;
wire   [3:0] buff_y_out_1_addr_6_reg_2241;
wire   [3:0] buff_y_out_2_addr_6_reg_2246;
wire   [3:0] buff_y_out_3_addr_6_reg_2251;
reg   [31:0] buff_y_out_load_2_reg_2256;
reg   [31:0] buff_y_out_1_load_2_reg_2261;
reg   [31:0] buff_y_out_2_load_2_reg_2266;
reg   [31:0] buff_y_out_3_load_2_reg_2271;
reg   [31:0] buff_y_out_load_3_reg_2276;
reg   [31:0] buff_y_out_1_load_3_reg_2281;
reg   [31:0] buff_y_out_2_load_3_reg_2286;
reg   [31:0] buff_y_out_3_load_3_reg_2291;
wire   [3:0] buff_y_out_addr_7_reg_2296;
wire    ap_CS_fsm_state7;
wire   [3:0] buff_y_out_1_addr_7_reg_2301;
wire   [3:0] buff_y_out_2_addr_7_reg_2306;
wire   [3:0] buff_y_out_3_addr_7_reg_2311;
wire   [3:0] buff_y_out_addr_8_reg_2316;
wire   [3:0] buff_y_out_1_addr_8_reg_2321;
wire   [3:0] buff_y_out_2_addr_8_reg_2326;
wire   [3:0] buff_y_out_3_addr_8_reg_2331;
reg   [31:0] buff_y_out_load_4_reg_2336;
reg   [31:0] buff_y_out_1_load_4_reg_2341;
reg   [31:0] buff_y_out_2_load_4_reg_2346;
reg   [31:0] buff_y_out_3_load_4_reg_2351;
reg   [31:0] buff_y_out_load_5_reg_2356;
reg   [31:0] buff_y_out_1_load_5_reg_2361;
reg   [31:0] buff_y_out_2_load_5_reg_2366;
reg   [31:0] buff_y_out_3_load_5_reg_2371;
wire   [3:0] buff_y_out_addr_9_reg_2376;
wire    ap_CS_fsm_state8;
wire   [3:0] buff_y_out_1_addr_9_reg_2381;
wire   [3:0] buff_y_out_2_addr_9_reg_2386;
wire   [3:0] buff_y_out_3_addr_9_reg_2391;
wire   [3:0] buff_y_out_addr_10_reg_2396;
wire   [3:0] buff_y_out_1_addr_10_reg_2401;
wire   [3:0] buff_y_out_2_addr_10_reg_2406;
wire   [3:0] buff_y_out_3_addr_10_reg_2411;
reg   [31:0] buff_y_out_load_6_reg_2416;
reg   [31:0] buff_y_out_1_load_6_reg_2421;
reg   [31:0] buff_y_out_2_load_6_reg_2426;
reg   [31:0] buff_y_out_3_load_6_reg_2431;
reg   [31:0] buff_y_out_load_7_reg_2436;
reg   [31:0] buff_y_out_1_load_7_reg_2441;
reg   [31:0] buff_y_out_2_load_7_reg_2446;
reg   [31:0] buff_y_out_3_load_7_reg_2451;
wire   [3:0] buff_y_out_addr_11_reg_2456;
wire    ap_CS_fsm_state9;
wire   [3:0] buff_y_out_1_addr_11_reg_2461;
wire   [3:0] buff_y_out_2_addr_11_reg_2466;
wire   [3:0] buff_y_out_3_addr_11_reg_2471;
wire   [3:0] buff_y_out_addr_12_reg_2476;
wire   [3:0] buff_y_out_1_addr_12_reg_2481;
wire   [3:0] buff_y_out_2_addr_12_reg_2486;
wire   [3:0] buff_y_out_3_addr_12_reg_2491;
reg   [31:0] buff_y_out_load_8_reg_2496;
reg   [31:0] buff_y_out_1_load_8_reg_2501;
reg   [31:0] buff_y_out_2_load_8_reg_2506;
reg   [31:0] buff_y_out_3_load_8_reg_2511;
reg   [31:0] buff_y_out_load_9_reg_2516;
reg   [31:0] buff_y_out_1_load_9_reg_2521;
reg   [31:0] buff_y_out_2_load_9_reg_2526;
reg   [31:0] buff_y_out_3_load_9_reg_2531;
wire   [3:0] buff_y_out_addr_13_reg_2536;
wire    ap_CS_fsm_state10;
wire   [3:0] buff_y_out_1_addr_13_reg_2541;
wire   [3:0] buff_y_out_2_addr_13_reg_2546;
wire   [3:0] buff_y_out_3_addr_13_reg_2551;
wire   [3:0] buff_y_out_addr_14_reg_2556;
wire   [3:0] buff_y_out_1_addr_14_reg_2561;
wire   [3:0] buff_y_out_2_addr_14_reg_2566;
wire   [3:0] buff_y_out_3_addr_14_reg_2571;
reg   [31:0] buff_y_out_load_10_reg_2576;
reg   [31:0] buff_y_out_1_load_10_reg_2581;
reg   [31:0] buff_y_out_2_load_10_reg_2586;
reg   [31:0] buff_y_out_3_load_10_reg_2591;
reg   [31:0] buff_y_out_load_11_reg_2596;
reg   [31:0] buff_y_out_1_load_11_reg_2601;
reg   [31:0] buff_y_out_2_load_11_reg_2606;
reg   [31:0] buff_y_out_3_load_11_reg_2611;
wire   [3:0] buff_y_out_addr_15_reg_2616;
wire    ap_CS_fsm_state11;
wire   [3:0] buff_y_out_1_addr_15_reg_2621;
wire   [3:0] buff_y_out_2_addr_15_reg_2626;
wire   [3:0] buff_y_out_3_addr_15_reg_2631;
wire   [3:0] buff_y_out_addr_16_reg_2636;
wire   [3:0] buff_y_out_1_addr_16_reg_2641;
wire   [3:0] buff_y_out_2_addr_16_reg_2646;
wire   [3:0] buff_y_out_3_addr_16_reg_2651;
reg   [31:0] buff_y_out_load_12_reg_2656;
reg   [31:0] buff_y_out_1_load_12_reg_2661;
reg   [31:0] buff_y_out_2_load_12_reg_2666;
reg   [31:0] buff_y_out_3_load_12_reg_2671;
reg   [31:0] buff_y_out_load_13_reg_2676;
reg   [31:0] buff_y_out_1_load_13_reg_2681;
reg   [31:0] buff_y_out_2_load_13_reg_2686;
reg   [31:0] buff_y_out_3_load_13_reg_2691;
reg   [31:0] buff_y_out_load_14_reg_2696;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_y_out_1_load_14_reg_2701;
reg   [31:0] buff_y_out_2_load_14_reg_2706;
reg   [31:0] buff_y_out_3_load_14_reg_2711;
reg   [31:0] buff_y_out_load_15_reg_2716;
reg   [31:0] buff_y_out_1_load_15_reg_2721;
reg   [31:0] buff_y_out_2_load_15_reg_2726;
reg   [31:0] buff_y_out_3_load_15_reg_2731;
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
reg   [3:0] buff_x_address0;
reg    buff_x_ce0;
wire   [31:0] buff_x_q0;
reg   [3:0] buff_x_1_address0;
reg    buff_x_1_ce0;
wire   [31:0] buff_x_1_q0;
reg   [3:0] buff_x_2_address0;
reg    buff_x_2_ce0;
wire   [31:0] buff_x_2_q0;
reg   [3:0] buff_x_3_address0;
reg    buff_x_3_ce0;
wire   [31:0] buff_x_3_q0;
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
reg   [3:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg   [3:0] tmp1_2_address0;
reg    tmp1_2_ce0;
reg    tmp1_2_we0;
reg   [31:0] tmp1_2_d0;
wire   [31:0] tmp1_2_q0;
reg   [3:0] tmp1_3_address0;
reg    tmp1_3_ce0;
reg    tmp1_3_we0;
reg   [31:0] tmp1_3_d0;
wire   [31:0] tmp1_3_q0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_ap_idle;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_7_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_3_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_d0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_opcode;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_din1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_ce;
wire    grp_atax_Pipeline_lprd_2_fu_1155_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1155_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1155_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1155_ap_ready;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1155_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_A_0_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1155_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1155_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1155_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_d0;
wire    grp_atax_Pipeline_lp3_fu_1177_ap_start;
wire    grp_atax_Pipeline_lp3_fu_1177_ap_done;
wire    grp_atax_Pipeline_lp3_fu_1177_ap_idle;
wire    grp_atax_Pipeline_lp3_fu_1177_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_1_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_2_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_3_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_4_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_4_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_4_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_5_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_5_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_5_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_6_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_6_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_6_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_7_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1177_buff_A_7_address1;
wire    grp_atax_Pipeline_lp3_fu_1177_buff_A_7_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1177_tmp1_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_tmp1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1177_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_tmp1_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1177_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_tmp1_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_fu_1177_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1177_tmp1_3_ce0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_63111_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_63111_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_62110_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_62110_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_61109_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_61109_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_60108_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_60108_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_59107_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_59107_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_58106_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_58106_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_57105_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_57105_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_56104_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_56104_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_55103_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_55103_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_54102_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_54102_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_53101_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_53101_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_52100_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_52100_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_5199_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_5199_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_5098_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_5098_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4997_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4997_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4896_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4896_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4795_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4795_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4694_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4694_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4593_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4593_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4492_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4492_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4391_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4391_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4290_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4290_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4189_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4189_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_4088_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_4088_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3987_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3987_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3886_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3886_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3785_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3785_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3684_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3684_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3583_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3583_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3482_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3482_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3381_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3381_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3280_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3280_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3179_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3179_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_3078_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_3078_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2977_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2977_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2876_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2876_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2775_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2775_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2674_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2674_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2573_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2573_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2472_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2472_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2371_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2371_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2270_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2270_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2169_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2169_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_2068_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_2068_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1967_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1967_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1866_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1866_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1765_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1765_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1664_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1664_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1563_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1563_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1462_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1462_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1361_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1361_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1260_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1260_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1159_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1159_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_1058_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_1058_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_957_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_957_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_856_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_856_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_755_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_755_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_654_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_654_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_553_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_553_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_452_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_452_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_351_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_351_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_250_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_250_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_3_149_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_3_149_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_add58_348_out;
wire    grp_atax_Pipeline_lp3_fu_1177_add58_348_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1329_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_y_out_write;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_1_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_2_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_3_ce0;
reg    grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start_reg;
wire   [0:0] icmp_ln11_fu_1347_p2;
reg    grp_atax_Pipeline_lprd_2_fu_1155_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp3_fu_1177_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_atax_Pipeline_lpwr_1_fu_1329_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] zext_ln11_fu_1359_p1;
wire   [63:0] zext_ln5_fu_1384_p1;
reg   [6:0] i_fu_102;
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
wire   [1:0] trunc_ln11_1_fu_1368_p1;
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
wire   [31:0] bitcast_ln12_fu_1400_p1;
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
wire   [3:0] lshr_ln5_1_fu_1375_p4;
wire   [31:0] grp_fu_2736_p2;
reg   [31:0] grp_fu_2736_p0;
reg   [31:0] grp_fu_2736_p1;
reg    grp_fu_2736_ce;
wire   [31:0] grp_fu_2740_p2;
reg   [31:0] grp_fu_2740_p0;
reg   [31:0] grp_fu_2740_p1;
reg    grp_fu_2740_ce;
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
#0 grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lprd_2_fu_1155_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_fu_1177_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1329_ap_start_reg = 1'b0;
#0 i_fu_102 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1400_p1),.q0(buff_x_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1400_p1),.q0(buff_x_1_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0),.ce0(buff_x_2_ce0),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_1400_p1),.q0(buff_x_2_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0),.ce0(buff_x_3_ce0),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_1400_p1),.q0(buff_x_3_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0_local),.d0(buff_y_out_d0_local),.q0(buff_y_out_q0),.address1(buff_y_out_address1_local),.ce1(buff_y_out_ce1_local),.we1(buff_y_out_we1_local),.d1(buff_y_out_d1_local),.q1(buff_y_out_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0_local),.d0(buff_y_out_1_d0_local),.q0(buff_y_out_1_q0),.address1(buff_y_out_1_address1_local),.ce1(buff_y_out_1_ce1_local),.we1(buff_y_out_1_we1_local),.d1(buff_y_out_1_d1_local),.q1(buff_y_out_1_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0_local),.d0(buff_y_out_2_d0_local),.q0(buff_y_out_2_q0),.address1(buff_y_out_2_address1_local),.ce1(buff_y_out_2_ce1_local),.we1(buff_y_out_2_we1_local),.d1(buff_y_out_2_d1_local),.q1(buff_y_out_2_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0_local),.d0(buff_y_out_3_d0_local),.q0(buff_y_out_3_q0),.address1(buff_y_out_3_address1_local),.ce1(buff_y_out_3_ce1_local),.we1(buff_y_out_3_we1_local),.d1(buff_y_out_3_d1_local),.q1(buff_y_out_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0));
atax_atax_Pipeline_lp1_lp2 grp_atax_Pipeline_lp1_lp2_fu_1135(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start),.ap_done(grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done),.ap_idle(grp_atax_Pipeline_lp1_lp2_fu_1135_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_lp2_fu_1135_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_x_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_2_address0),.buff_x_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_2_ce0),.buff_x_2_q0(buff_x_2_q0),.buff_x_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_3_address0),.buff_x_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_3_ce0),.buff_x_3_q0(buff_x_3_q0),.tmp1_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_d0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_d0),.tmp1_3_q0(tmp1_3_q0),.grp_fu_2736_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_din0),.grp_fu_2736_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_din1),.grp_fu_2736_p_opcode(grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_opcode),.grp_fu_2736_p_dout0(grp_fu_2736_p2),.grp_fu_2736_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_ce),.grp_fu_2740_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_din0),.grp_fu_2740_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_din1),.grp_fu_2740_p_dout0(grp_fu_2740_p2),.grp_fu_2740_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_ce));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1155(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1155_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1155_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1155_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1155_ap_ready),.i(trunc_ln11_reg_2123),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1155_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1155_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1155_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1155_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_1155_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1155_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_1155_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1155_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_d0),.buff_A_4_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_ce0),.buff_A_4_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_we0),.buff_A_4_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_d0),.buff_A_5_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_ce0),.buff_A_5_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_we0),.buff_A_5_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_d0),.buff_A_6_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_ce0),.buff_A_6_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_we0),.buff_A_6_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_d0),.buff_A_7_address0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_ce0),.buff_A_7_we0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_we0),.buff_A_7_d0(grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_d0),.empty(trunc_ln11_2_reg_2131));
atax_atax_Pipeline_lp3 grp_atax_Pipeline_lp3_fu_1177(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_fu_1177_ap_start),.ap_done(grp_atax_Pipeline_lp3_fu_1177_ap_done),.ap_idle(grp_atax_Pipeline_lp3_fu_1177_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_fu_1177_ap_ready),.buff_y_out_3_load_15(buff_y_out_3_load_15_reg_2731),.buff_y_out_2_load_15(buff_y_out_2_load_15_reg_2726),.buff_y_out_1_load_15(buff_y_out_1_load_15_reg_2721),.buff_y_out_load_15(buff_y_out_load_15_reg_2716),.buff_y_out_3_load_14(buff_y_out_3_load_14_reg_2711),.buff_y_out_2_load_14(buff_y_out_2_load_14_reg_2706),.buff_y_out_1_load_14(buff_y_out_1_load_14_reg_2701),.buff_y_out_load_14(buff_y_out_load_14_reg_2696),.buff_y_out_3_load_13(buff_y_out_3_load_13_reg_2691),.buff_y_out_2_load_13(buff_y_out_2_load_13_reg_2686),.buff_y_out_1_load_13(buff_y_out_1_load_13_reg_2681),.buff_y_out_load_13(buff_y_out_load_13_reg_2676),.buff_y_out_3_load_12(buff_y_out_3_load_12_reg_2671),.buff_y_out_2_load_12(buff_y_out_2_load_12_reg_2666),.buff_y_out_1_load_12(buff_y_out_1_load_12_reg_2661),.buff_y_out_load_12(buff_y_out_load_12_reg_2656),.buff_y_out_3_load_11(buff_y_out_3_load_11_reg_2611),.buff_y_out_2_load_11(buff_y_out_2_load_11_reg_2606),.buff_y_out_1_load_11(buff_y_out_1_load_11_reg_2601),.buff_y_out_load_11(buff_y_out_load_11_reg_2596),.buff_y_out_3_load_10(buff_y_out_3_load_10_reg_2591),.buff_y_out_2_load_10(buff_y_out_2_load_10_reg_2586),.buff_y_out_1_load_10(buff_y_out_1_load_10_reg_2581),.buff_y_out_load_10(buff_y_out_load_10_reg_2576),.buff_y_out_3_load_9(buff_y_out_3_load_9_reg_2531),.buff_y_out_2_load_9(buff_y_out_2_load_9_reg_2526),.buff_y_out_1_load_9(buff_y_out_1_load_9_reg_2521),.buff_y_out_load_9(buff_y_out_load_9_reg_2516),.buff_y_out_3_load_8(buff_y_out_3_load_8_reg_2511),.buff_y_out_2_load_8(buff_y_out_2_load_8_reg_2506),.buff_y_out_1_load_8(buff_y_out_1_load_8_reg_2501),.buff_y_out_load_8(buff_y_out_load_8_reg_2496),.buff_y_out_3_load_7(buff_y_out_3_load_7_reg_2451),.buff_y_out_2_load_7(buff_y_out_2_load_7_reg_2446),.buff_y_out_1_load_7(buff_y_out_1_load_7_reg_2441),.buff_y_out_load_7(buff_y_out_load_7_reg_2436),.buff_y_out_3_load_6(buff_y_out_3_load_6_reg_2431),.buff_y_out_2_load_6(buff_y_out_2_load_6_reg_2426),.buff_y_out_1_load_6(buff_y_out_1_load_6_reg_2421),.buff_y_out_load_6(buff_y_out_load_6_reg_2416),.buff_y_out_3_load_5(buff_y_out_3_load_5_reg_2371),.buff_y_out_2_load_5(buff_y_out_2_load_5_reg_2366),.buff_y_out_1_load_5(buff_y_out_1_load_5_reg_2361),.buff_y_out_load_5(buff_y_out_load_5_reg_2356),.buff_y_out_3_load_4(buff_y_out_3_load_4_reg_2351),.buff_y_out_2_load_4(buff_y_out_2_load_4_reg_2346),.buff_y_out_1_load_4(buff_y_out_1_load_4_reg_2341),.buff_y_out_load_4(buff_y_out_load_4_reg_2336),.buff_y_out_3_load_3(buff_y_out_3_load_3_reg_2291),.buff_y_out_2_load_3(buff_y_out_2_load_3_reg_2286),.buff_y_out_1_load_3(buff_y_out_1_load_3_reg_2281),.buff_y_out_load_3(buff_y_out_load_3_reg_2276),.buff_y_out_3_load_2(buff_y_out_3_load_2_reg_2271),.buff_y_out_2_load_2(buff_y_out_2_load_2_reg_2266),.buff_y_out_1_load_2(buff_y_out_1_load_2_reg_2261),.buff_y_out_load_2(buff_y_out_load_2_reg_2256),.buff_y_out_3_load_1(buff_y_out_3_load_1_reg_2211),.buff_y_out_2_load_1(buff_y_out_2_load_1_reg_2206),.buff_y_out_1_load_1(buff_y_out_1_load_1_reg_2201),.buff_y_out_load_1(buff_y_out_load_1_reg_2196),.buff_y_out_3_load(buff_y_out_3_load_reg_2191),.buff_y_out_2_load(buff_y_out_2_load_reg_2186),.buff_y_out_1_load(buff_y_out_1_load_reg_2181),.buff_y_out_load(buff_y_out_load_reg_2176),.buff_A_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_atax_Pipeline_lp3_fu_1177_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp3_fu_1177_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp3_fu_1177_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp3_fu_1177_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.tmp1_address0(grp_atax_Pipeline_lp3_fu_1177_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_fu_1177_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_fu_1177_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_fu_1177_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_fu_1177_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_fu_1177_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_fu_1177_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_fu_1177_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.add58_3_63111_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_63111_out),.add58_3_63111_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_63111_out_ap_vld),.add58_3_62110_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_62110_out),.add58_3_62110_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_62110_out_ap_vld),.add58_3_61109_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_61109_out),.add58_3_61109_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_61109_out_ap_vld),.add58_3_60108_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_60108_out),.add58_3_60108_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_60108_out_ap_vld),.add58_3_59107_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_59107_out),.add58_3_59107_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_59107_out_ap_vld),.add58_3_58106_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_58106_out),.add58_3_58106_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_58106_out_ap_vld),.add58_3_57105_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_57105_out),.add58_3_57105_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_57105_out_ap_vld),.add58_3_56104_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_56104_out),.add58_3_56104_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_56104_out_ap_vld),.add58_3_55103_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_55103_out),.add58_3_55103_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_55103_out_ap_vld),.add58_3_54102_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_54102_out),.add58_3_54102_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_54102_out_ap_vld),.add58_3_53101_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_53101_out),.add58_3_53101_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_53101_out_ap_vld),.add58_3_52100_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_52100_out),.add58_3_52100_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_52100_out_ap_vld),.add58_3_5199_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_5199_out),.add58_3_5199_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_5199_out_ap_vld),.add58_3_5098_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_5098_out),.add58_3_5098_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_5098_out_ap_vld),.add58_3_4997_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4997_out),.add58_3_4997_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4997_out_ap_vld),.add58_3_4896_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4896_out),.add58_3_4896_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4896_out_ap_vld),.add58_3_4795_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4795_out),.add58_3_4795_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4795_out_ap_vld),.add58_3_4694_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4694_out),.add58_3_4694_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4694_out_ap_vld),.add58_3_4593_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4593_out),.add58_3_4593_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4593_out_ap_vld),.add58_3_4492_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4492_out),.add58_3_4492_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4492_out_ap_vld),.add58_3_4391_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4391_out),.add58_3_4391_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4391_out_ap_vld),.add58_3_4290_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4290_out),.add58_3_4290_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4290_out_ap_vld),.add58_3_4189_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4189_out),.add58_3_4189_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4189_out_ap_vld),.add58_3_4088_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_4088_out),.add58_3_4088_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_4088_out_ap_vld),.add58_3_3987_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3987_out),.add58_3_3987_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3987_out_ap_vld),.add58_3_3886_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3886_out),.add58_3_3886_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3886_out_ap_vld),.add58_3_3785_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3785_out),.add58_3_3785_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3785_out_ap_vld),.add58_3_3684_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3684_out),.add58_3_3684_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3684_out_ap_vld),.add58_3_3583_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3583_out),.add58_3_3583_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3583_out_ap_vld),.add58_3_3482_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3482_out),.add58_3_3482_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3482_out_ap_vld),.add58_3_3381_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3381_out),.add58_3_3381_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3381_out_ap_vld),.add58_3_3280_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3280_out),.add58_3_3280_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3280_out_ap_vld),.add58_3_3179_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3179_out),.add58_3_3179_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3179_out_ap_vld),.add58_3_3078_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_3078_out),.add58_3_3078_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_3078_out_ap_vld),.add58_3_2977_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2977_out),.add58_3_2977_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2977_out_ap_vld),.add58_3_2876_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2876_out),.add58_3_2876_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2876_out_ap_vld),.add58_3_2775_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2775_out),.add58_3_2775_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2775_out_ap_vld),.add58_3_2674_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2674_out),.add58_3_2674_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2674_out_ap_vld),.add58_3_2573_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2573_out),.add58_3_2573_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2573_out_ap_vld),.add58_3_2472_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2472_out),.add58_3_2472_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2472_out_ap_vld),.add58_3_2371_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2371_out),.add58_3_2371_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2371_out_ap_vld),.add58_3_2270_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2270_out),.add58_3_2270_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2270_out_ap_vld),.add58_3_2169_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2169_out),.add58_3_2169_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2169_out_ap_vld),.add58_3_2068_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_2068_out),.add58_3_2068_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_2068_out_ap_vld),.add58_3_1967_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1967_out),.add58_3_1967_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1967_out_ap_vld),.add58_3_1866_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1866_out),.add58_3_1866_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1866_out_ap_vld),.add58_3_1765_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1765_out),.add58_3_1765_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1765_out_ap_vld),.add58_3_1664_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1664_out),.add58_3_1664_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1664_out_ap_vld),.add58_3_1563_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1563_out),.add58_3_1563_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1563_out_ap_vld),.add58_3_1462_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1462_out),.add58_3_1462_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1462_out_ap_vld),.add58_3_1361_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1361_out),.add58_3_1361_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1361_out_ap_vld),.add58_3_1260_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1260_out),.add58_3_1260_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1260_out_ap_vld),.add58_3_1159_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1159_out),.add58_3_1159_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1159_out_ap_vld),.add58_3_1058_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_1058_out),.add58_3_1058_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_1058_out_ap_vld),.add58_3_957_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_957_out),.add58_3_957_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_957_out_ap_vld),.add58_3_856_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_856_out),.add58_3_856_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_856_out_ap_vld),.add58_3_755_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_755_out),.add58_3_755_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_755_out_ap_vld),.add58_3_654_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_654_out),.add58_3_654_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_654_out_ap_vld),.add58_3_553_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_553_out),.add58_3_553_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_553_out_ap_vld),.add58_3_452_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_452_out),.add58_3_452_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_452_out_ap_vld),.add58_3_351_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_351_out),.add58_3_351_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_351_out_ap_vld),.add58_3_250_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_250_out),.add58_3_250_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_250_out_ap_vld),.add58_3_149_out(grp_atax_Pipeline_lp3_fu_1177_add58_3_149_out),.add58_3_149_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_3_149_out_ap_vld),.add58_348_out(grp_atax_Pipeline_lp3_fu_1177_add58_348_out),.add58_348_out_ap_vld(grp_atax_Pipeline_lp3_fu_1177_add58_348_out_ap_vld),.grp_fu_2736_p_din0(grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_din0),.grp_fu_2736_p_din1(grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_din1),.grp_fu_2736_p_opcode(grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_opcode),.grp_fu_2736_p_dout0(grp_fu_2736_p2),.grp_fu_2736_p_ce(grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_ce),.grp_fu_2740_p_din0(grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_din0),.grp_fu_2740_p_din1(grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_din1),.grp_fu_2740_p_dout0(grp_fu_2740_p2),.grp_fu_2740_p_ce(grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1329(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1329_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1329_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1329_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1329_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1329_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1329_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U206(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2736_p0),.din1(grp_fu_2736_p1),.ce(grp_fu_2736_ce),.dout(grp_fu_2736_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U207(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2740_p0),.din1(grp_fu_2740_p1),.ce(grp_fu_2740_ce),.dout(grp_fu_2740_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1347_p2 == 1'd1))) begin
            grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_fu_1177_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_atax_Pipeline_lp3_fu_1177_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_fu_1177_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_fu_1177_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1155_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lprd_2_fu_1155_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1155_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1155_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1329_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_atax_Pipeline_lpwr_1_fu_1329_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1329_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1329_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_102 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_102 <= add_ln11_reg_2065;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_2065 <= add_ln11_fu_1353_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_load_10_reg_2581 <= buff_y_out_1_q0;
        buff_y_out_1_load_11_reg_2601 <= buff_y_out_1_q1;
        buff_y_out_2_load_10_reg_2586 <= buff_y_out_2_q0;
        buff_y_out_2_load_11_reg_2606 <= buff_y_out_2_q1;
        buff_y_out_3_load_10_reg_2591 <= buff_y_out_3_q0;
        buff_y_out_3_load_11_reg_2611 <= buff_y_out_3_q1;
        buff_y_out_load_10_reg_2576 <= buff_y_out_q0;
        buff_y_out_load_11_reg_2596 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_load_12_reg_2661 <= buff_y_out_1_q0;
        buff_y_out_1_load_13_reg_2681 <= buff_y_out_1_q1;
        buff_y_out_2_load_12_reg_2666 <= buff_y_out_2_q0;
        buff_y_out_2_load_13_reg_2686 <= buff_y_out_2_q1;
        buff_y_out_3_load_12_reg_2671 <= buff_y_out_3_q0;
        buff_y_out_3_load_13_reg_2691 <= buff_y_out_3_q1;
        buff_y_out_load_12_reg_2656 <= buff_y_out_q0;
        buff_y_out_load_13_reg_2676 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_load_14_reg_2701 <= buff_y_out_1_q0;
        buff_y_out_1_load_15_reg_2721 <= buff_y_out_1_q1;
        buff_y_out_2_load_14_reg_2706 <= buff_y_out_2_q0;
        buff_y_out_2_load_15_reg_2726 <= buff_y_out_2_q1;
        buff_y_out_3_load_14_reg_2711 <= buff_y_out_3_q0;
        buff_y_out_3_load_15_reg_2731 <= buff_y_out_3_q1;
        buff_y_out_load_14_reg_2696 <= buff_y_out_q0;
        buff_y_out_load_15_reg_2716 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_1_load_1_reg_2201 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_2181 <= buff_y_out_1_q1;
        buff_y_out_2_load_1_reg_2206 <= buff_y_out_2_q0;
        buff_y_out_2_load_reg_2186 <= buff_y_out_2_q1;
        buff_y_out_3_load_1_reg_2211 <= buff_y_out_3_q0;
        buff_y_out_3_load_reg_2191 <= buff_y_out_3_q1;
        buff_y_out_load_1_reg_2196 <= buff_y_out_q0;
        buff_y_out_load_reg_2176 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_load_2_reg_2261 <= buff_y_out_1_q0;
        buff_y_out_1_load_3_reg_2281 <= buff_y_out_1_q1;
        buff_y_out_2_load_2_reg_2266 <= buff_y_out_2_q0;
        buff_y_out_2_load_3_reg_2286 <= buff_y_out_2_q1;
        buff_y_out_3_load_2_reg_2271 <= buff_y_out_3_q0;
        buff_y_out_3_load_3_reg_2291 <= buff_y_out_3_q1;
        buff_y_out_load_2_reg_2256 <= buff_y_out_q0;
        buff_y_out_load_3_reg_2276 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_load_4_reg_2341 <= buff_y_out_1_q0;
        buff_y_out_1_load_5_reg_2361 <= buff_y_out_1_q1;
        buff_y_out_2_load_4_reg_2346 <= buff_y_out_2_q0;
        buff_y_out_2_load_5_reg_2366 <= buff_y_out_2_q1;
        buff_y_out_3_load_4_reg_2351 <= buff_y_out_3_q0;
        buff_y_out_3_load_5_reg_2371 <= buff_y_out_3_q1;
        buff_y_out_load_4_reg_2336 <= buff_y_out_q0;
        buff_y_out_load_5_reg_2356 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_load_6_reg_2421 <= buff_y_out_1_q0;
        buff_y_out_1_load_7_reg_2441 <= buff_y_out_1_q1;
        buff_y_out_2_load_6_reg_2426 <= buff_y_out_2_q0;
        buff_y_out_2_load_7_reg_2446 <= buff_y_out_2_q1;
        buff_y_out_3_load_6_reg_2431 <= buff_y_out_3_q0;
        buff_y_out_3_load_7_reg_2451 <= buff_y_out_3_q1;
        buff_y_out_load_6_reg_2416 <= buff_y_out_q0;
        buff_y_out_load_7_reg_2436 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_load_8_reg_2501 <= buff_y_out_1_q0;
        buff_y_out_1_load_9_reg_2521 <= buff_y_out_1_q1;
        buff_y_out_2_load_8_reg_2506 <= buff_y_out_2_q0;
        buff_y_out_2_load_9_reg_2526 <= buff_y_out_2_q1;
        buff_y_out_3_load_8_reg_2511 <= buff_y_out_3_q0;
        buff_y_out_3_load_9_reg_2531 <= buff_y_out_3_q1;
        buff_y_out_load_8_reg_2496 <= buff_y_out_q0;
        buff_y_out_load_9_reg_2516 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_2_reg_2131 <= trunc_ln11_2_fu_1371_p1;
        trunc_ln11_reg_2123 <= trunc_ln11_fu_1364_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_fu_1177_ap_done == 1'b0)) begin
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
    if ((grp_atax_Pipeline_lpwr_1_fu_1329_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lprd_2_fu_1155_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_atax_Pipeline_lpwr_1_fu_1329_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_atax_Pipeline_lpwr_1_fu_1329_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_fu_1177_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_fu_1177_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1155_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd1))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_2_address0;
    end else begin
        buff_x_2_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_2_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd2))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_3_address0;
    end else begin
        buff_x_3_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_3_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_address0;
    end else begin
        buff_x_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_buff_x_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd0))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = buff_y_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_15_reg_2621;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_13_reg_2541;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_11_reg_2461;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_9_reg_2381;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_7_reg_2301;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_5_reg_2221;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_2141;
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
        buff_y_out_1_address0_local = zext_ln5_fu_1384_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address0_local = 64'd1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_16_reg_2641;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_14_reg_2561;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_12_reg_2481;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_10_reg_2401;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_8_reg_2321;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_6_reg_2241;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_4_reg_2161;
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
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_57105_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4997_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4189_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3381_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2573_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1765_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_957_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_149_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_d0_local = 32'd0;
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_61109_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_53101_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4593_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3785_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2977_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2169_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1361_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_553_out;
    end else begin
        buff_y_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd1)))) begin
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
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = buff_y_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_15_reg_2626;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_13_reg_2546;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_11_reg_2466;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_9_reg_2386;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_7_reg_2306;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_5_reg_2226;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_3_reg_2146;
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
        buff_y_out_2_address0_local = zext_ln5_fu_1384_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_address0_local = 64'd1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_16_reg_2646;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_14_reg_2566;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_12_reg_2486;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_10_reg_2406;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_8_reg_2326;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_6_reg_2246;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_4_reg_2166;
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
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_58106_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_5098_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4290_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3482_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2674_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1866_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1058_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_250_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_d0_local = 32'd0;
    end else begin
        buff_y_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_62110_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_54102_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4694_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3886_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3078_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2270_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1462_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_654_out;
    end else begin
        buff_y_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd2)))) begin
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
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = buff_y_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_15_reg_2631;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_13_reg_2551;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_11_reg_2471;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_9_reg_2391;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_7_reg_2311;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_5_reg_2231;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_3_reg_2151;
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
        buff_y_out_3_address0_local = zext_ln5_fu_1384_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_address0_local = 64'd1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_16_reg_2651;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_14_reg_2571;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_12_reg_2491;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_10_reg_2411;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_8_reg_2331;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_6_reg_2251;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_4_reg_2171;
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
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_59107_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_5199_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4391_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3583_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2775_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1967_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1159_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_351_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_d0_local = 32'd0;
    end else begin
        buff_y_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_63111_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_55103_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4795_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3987_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3179_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2371_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1563_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_755_out;
    end else begin
        buff_y_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd3)))) begin
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
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = buff_y_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_address0_local = buff_y_out_addr_15_reg_2616;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_address0_local = buff_y_out_addr_13_reg_2536;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address0_local = buff_y_out_addr_11_reg_2456;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address0_local = buff_y_out_addr_9_reg_2376;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address0_local = buff_y_out_addr_7_reg_2296;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address0_local = buff_y_out_addr_5_reg_2216;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_2136;
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
        buff_y_out_address0_local = zext_ln5_fu_1384_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address0_local = 64'd1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_address1_local = buff_y_out_addr_16_reg_2636;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_address1_local = buff_y_out_addr_14_reg_2556;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address1_local = buff_y_out_addr_12_reg_2476;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address1_local = buff_y_out_addr_10_reg_2396;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address1_local = buff_y_out_addr_8_reg_2316;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address1_local = buff_y_out_addr_6_reg_2236;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address1_local = buff_y_out_addr_4_reg_2156;
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
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1329_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_56104_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4896_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4088_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3280_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2472_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1664_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_856_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1177_add58_348_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_d0_local = 32'd0;
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_60108_out;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_52100_out;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_4492_out;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_3684_out;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2876_out;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_2068_out;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_1260_out;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1177_add58_3_452_out;
    end else begin
        buff_y_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd0)))) begin
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
        grp_fu_2736_ce = grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2736_ce = grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_ce;
    end else begin
        grp_fu_2736_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2736_p0 = grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2736_p0 = grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_din0;
    end else begin
        grp_fu_2736_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2736_p1 = grp_atax_Pipeline_lp3_fu_1177_grp_fu_2736_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2736_p1 = grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2736_p_din1;
    end else begin
        grp_fu_2736_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2740_ce = grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2740_ce = grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_ce;
    end else begin
        grp_fu_2740_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2740_p0 = grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2740_p0 = grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_din0;
    end else begin
        grp_fu_2740_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2740_p1 = grp_atax_Pipeline_lp3_fu_1177_grp_fu_2740_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2740_p1 = grp_atax_Pipeline_lp1_lp2_fu_1135_grp_fu_2740_p_din1;
    end else begin
        grp_fu_2740_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd2))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1384_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_fu_1177_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1135_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1368_p1 == 2'd0))) begin
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
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1329_y_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1347_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_Pipeline_lprd_2_fu_1155_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_atax_Pipeline_lp1_lp2_fu_1135_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_atax_Pipeline_lp3_fu_1177_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((1'b1 == ap_CS_fsm_state23) & (grp_atax_Pipeline_lpwr_1_fu_1329_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1155_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1155_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1155_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1155_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1155_A_3_ce0;
assign add_ln11_fu_1353_p2 = (i_fu_102 + 7'd1);
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
assign bitcast_ln12_fu_1400_p1 = x_q0;
assign buff_y_out_1_addr_10_reg_2401 = 64'd9;
assign buff_y_out_1_addr_11_reg_2461 = 64'd10;
assign buff_y_out_1_addr_12_reg_2481 = 64'd11;
assign buff_y_out_1_addr_13_reg_2541 = 64'd12;
assign buff_y_out_1_addr_14_reg_2561 = 64'd13;
assign buff_y_out_1_addr_15_reg_2621 = 64'd14;
assign buff_y_out_1_addr_16_reg_2641 = 64'd15;
assign buff_y_out_1_addr_3_reg_2141 = 64'd2;
assign buff_y_out_1_addr_4_reg_2161 = 64'd3;
assign buff_y_out_1_addr_5_reg_2221 = 64'd4;
assign buff_y_out_1_addr_6_reg_2241 = 64'd5;
assign buff_y_out_1_addr_7_reg_2301 = 64'd6;
assign buff_y_out_1_addr_8_reg_2321 = 64'd7;
assign buff_y_out_1_addr_9_reg_2381 = 64'd8;
assign buff_y_out_2_addr_10_reg_2406 = 64'd9;
assign buff_y_out_2_addr_11_reg_2466 = 64'd10;
assign buff_y_out_2_addr_12_reg_2486 = 64'd11;
assign buff_y_out_2_addr_13_reg_2546 = 64'd12;
assign buff_y_out_2_addr_14_reg_2566 = 64'd13;
assign buff_y_out_2_addr_15_reg_2626 = 64'd14;
assign buff_y_out_2_addr_16_reg_2646 = 64'd15;
assign buff_y_out_2_addr_3_reg_2146 = 64'd2;
assign buff_y_out_2_addr_4_reg_2166 = 64'd3;
assign buff_y_out_2_addr_5_reg_2226 = 64'd4;
assign buff_y_out_2_addr_6_reg_2246 = 64'd5;
assign buff_y_out_2_addr_7_reg_2306 = 64'd6;
assign buff_y_out_2_addr_8_reg_2326 = 64'd7;
assign buff_y_out_2_addr_9_reg_2386 = 64'd8;
assign buff_y_out_3_addr_10_reg_2411 = 64'd9;
assign buff_y_out_3_addr_11_reg_2471 = 64'd10;
assign buff_y_out_3_addr_12_reg_2491 = 64'd11;
assign buff_y_out_3_addr_13_reg_2551 = 64'd12;
assign buff_y_out_3_addr_14_reg_2571 = 64'd13;
assign buff_y_out_3_addr_15_reg_2631 = 64'd14;
assign buff_y_out_3_addr_16_reg_2651 = 64'd15;
assign buff_y_out_3_addr_3_reg_2151 = 64'd2;
assign buff_y_out_3_addr_4_reg_2171 = 64'd3;
assign buff_y_out_3_addr_5_reg_2231 = 64'd4;
assign buff_y_out_3_addr_6_reg_2251 = 64'd5;
assign buff_y_out_3_addr_7_reg_2311 = 64'd6;
assign buff_y_out_3_addr_8_reg_2331 = 64'd7;
assign buff_y_out_3_addr_9_reg_2391 = 64'd8;
assign buff_y_out_addr_10_reg_2396 = 64'd9;
assign buff_y_out_addr_11_reg_2456 = 64'd10;
assign buff_y_out_addr_12_reg_2476 = 64'd11;
assign buff_y_out_addr_13_reg_2536 = 64'd12;
assign buff_y_out_addr_14_reg_2556 = 64'd13;
assign buff_y_out_addr_15_reg_2616 = 64'd14;
assign buff_y_out_addr_16_reg_2636 = 64'd15;
assign buff_y_out_addr_3_reg_2136 = 64'd2;
assign buff_y_out_addr_4_reg_2156 = 64'd3;
assign buff_y_out_addr_5_reg_2216 = 64'd4;
assign buff_y_out_addr_6_reg_2236 = 64'd5;
assign buff_y_out_addr_7_reg_2296 = 64'd6;
assign buff_y_out_addr_8_reg_2316 = 64'd7;
assign buff_y_out_addr_9_reg_2376 = 64'd8;
assign grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start = grp_atax_Pipeline_lp1_lp2_fu_1135_ap_start_reg;
assign grp_atax_Pipeline_lp3_fu_1177_ap_start = grp_atax_Pipeline_lp3_fu_1177_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1155_ap_start = grp_atax_Pipeline_lprd_2_fu_1155_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1329_ap_start = grp_atax_Pipeline_lpwr_1_fu_1329_ap_start_reg;
assign icmp_ln11_fu_1347_p2 = ((i_fu_102 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_1375_p4 = {{i_fu_102[5:2]}};
assign trunc_ln11_1_fu_1368_p1 = i_fu_102[1:0];
assign trunc_ln11_2_fu_1371_p1 = i_fu_102[0:0];
assign trunc_ln11_fu_1364_p1 = i_fu_102[5:0];
assign x_address0 = zext_ln11_fu_1359_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1329_y_out_din;
assign zext_ln11_fu_1359_p1 = i_fu_102;
assign zext_ln5_fu_1384_p1 = lshr_ln5_1_fu_1375_p4;
endmodule 