module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
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
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_1657_p2;
reg   [6:0] add_ln11_reg_2383;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1668_p1;
reg   [5:0] trunc_ln11_reg_2489;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln11_2_fu_1674_p1;
reg   [0:0] trunc_ln11_2_reg_2497;
wire   [2:0] buff_y_out_addr_3_reg_2502;
wire    ap_CS_fsm_state6;
wire   [2:0] buff_y_out_1_addr_3_reg_2507;
wire   [2:0] buff_y_out_2_addr_3_reg_2512;
wire   [2:0] buff_y_out_3_addr_3_reg_2517;
wire   [2:0] buff_y_out_4_addr_3_reg_2522;
wire   [2:0] buff_y_out_5_addr_3_reg_2527;
wire   [2:0] buff_y_out_6_addr_3_reg_2532;
wire   [2:0] buff_y_out_7_addr_3_reg_2537;
wire   [2:0] buff_y_out_addr_4_reg_2542;
wire   [2:0] buff_y_out_1_addr_4_reg_2547;
wire   [2:0] buff_y_out_2_addr_4_reg_2552;
wire   [2:0] buff_y_out_3_addr_4_reg_2557;
wire   [2:0] buff_y_out_4_addr_4_reg_2562;
wire   [2:0] buff_y_out_5_addr_4_reg_2567;
wire   [2:0] buff_y_out_6_addr_4_reg_2572;
wire   [2:0] buff_y_out_7_addr_4_reg_2577;
reg   [31:0] buff_y_out_load_reg_2582;
reg   [31:0] buff_y_out_1_load_reg_2587;
reg   [31:0] buff_y_out_2_load_reg_2592;
reg   [31:0] buff_y_out_3_load_reg_2597;
reg   [31:0] buff_y_out_4_load_reg_2602;
reg   [31:0] buff_y_out_5_load_reg_2607;
reg   [31:0] buff_y_out_6_load_reg_2612;
reg   [31:0] buff_y_out_7_load_reg_2617;
reg   [31:0] buff_y_out_load_1_reg_2622;
reg   [31:0] buff_y_out_1_load_1_reg_2627;
reg   [31:0] buff_y_out_2_load_1_reg_2632;
reg   [31:0] buff_y_out_3_load_1_reg_2637;
reg   [31:0] buff_y_out_4_load_1_reg_2642;
reg   [31:0] buff_y_out_5_load_1_reg_2647;
reg   [31:0] buff_y_out_6_load_1_reg_2652;
reg   [31:0] buff_y_out_7_load_1_reg_2657;
wire   [2:0] buff_y_out_addr_5_reg_2662;
wire    ap_CS_fsm_state7;
wire   [2:0] buff_y_out_1_addr_5_reg_2667;
wire   [2:0] buff_y_out_2_addr_5_reg_2672;
wire   [2:0] buff_y_out_3_addr_5_reg_2677;
wire   [2:0] buff_y_out_4_addr_5_reg_2682;
wire   [2:0] buff_y_out_5_addr_5_reg_2687;
wire   [2:0] buff_y_out_6_addr_5_reg_2692;
wire   [2:0] buff_y_out_7_addr_5_reg_2697;
wire   [2:0] buff_y_out_addr_6_reg_2702;
wire   [2:0] buff_y_out_1_addr_6_reg_2707;
wire   [2:0] buff_y_out_2_addr_6_reg_2712;
wire   [2:0] buff_y_out_3_addr_6_reg_2717;
wire   [2:0] buff_y_out_4_addr_6_reg_2722;
wire   [2:0] buff_y_out_5_addr_6_reg_2727;
wire   [2:0] buff_y_out_6_addr_6_reg_2732;
wire   [2:0] buff_y_out_7_addr_6_reg_2737;
reg   [31:0] buff_y_out_load_2_reg_2742;
reg   [31:0] buff_y_out_1_load_2_reg_2747;
reg   [31:0] buff_y_out_2_load_2_reg_2752;
reg   [31:0] buff_y_out_3_load_2_reg_2757;
reg   [31:0] buff_y_out_4_load_2_reg_2762;
reg   [31:0] buff_y_out_5_load_2_reg_2767;
reg   [31:0] buff_y_out_6_load_2_reg_2772;
reg   [31:0] buff_y_out_7_load_2_reg_2777;
reg   [31:0] buff_y_out_load_3_reg_2782;
reg   [31:0] buff_y_out_1_load_3_reg_2787;
reg   [31:0] buff_y_out_2_load_3_reg_2792;
reg   [31:0] buff_y_out_3_load_3_reg_2797;
reg   [31:0] buff_y_out_4_load_3_reg_2802;
reg   [31:0] buff_y_out_5_load_3_reg_2807;
reg   [31:0] buff_y_out_6_load_3_reg_2812;
reg   [31:0] buff_y_out_7_load_3_reg_2817;
wire   [2:0] buff_y_out_addr_7_reg_2822;
wire    ap_CS_fsm_state8;
wire   [2:0] buff_y_out_1_addr_7_reg_2827;
wire   [2:0] buff_y_out_2_addr_7_reg_2832;
wire   [2:0] buff_y_out_3_addr_7_reg_2837;
wire   [2:0] buff_y_out_4_addr_7_reg_2842;
wire   [2:0] buff_y_out_5_addr_7_reg_2847;
wire   [2:0] buff_y_out_6_addr_7_reg_2852;
wire   [2:0] buff_y_out_7_addr_7_reg_2857;
wire   [2:0] buff_y_out_addr_8_reg_2862;
wire   [2:0] buff_y_out_1_addr_8_reg_2867;
wire   [2:0] buff_y_out_2_addr_8_reg_2872;
wire   [2:0] buff_y_out_3_addr_8_reg_2877;
wire   [2:0] buff_y_out_4_addr_8_reg_2882;
wire   [2:0] buff_y_out_5_addr_8_reg_2887;
wire   [2:0] buff_y_out_6_addr_8_reg_2892;
wire   [2:0] buff_y_out_7_addr_8_reg_2897;
reg   [31:0] buff_y_out_load_4_reg_2902;
reg   [31:0] buff_y_out_1_load_4_reg_2907;
reg   [31:0] buff_y_out_2_load_4_reg_2912;
reg   [31:0] buff_y_out_3_load_4_reg_2917;
reg   [31:0] buff_y_out_4_load_4_reg_2922;
reg   [31:0] buff_y_out_5_load_4_reg_2927;
reg   [31:0] buff_y_out_6_load_4_reg_2932;
reg   [31:0] buff_y_out_7_load_4_reg_2937;
reg   [31:0] buff_y_out_load_5_reg_2942;
reg   [31:0] buff_y_out_1_load_5_reg_2947;
reg   [31:0] buff_y_out_2_load_5_reg_2952;
reg   [31:0] buff_y_out_3_load_5_reg_2957;
reg   [31:0] buff_y_out_4_load_5_reg_2962;
reg   [31:0] buff_y_out_5_load_5_reg_2967;
reg   [31:0] buff_y_out_6_load_5_reg_2972;
reg   [31:0] buff_y_out_7_load_5_reg_2977;
reg   [31:0] buff_y_out_load_6_reg_2982;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_y_out_1_load_6_reg_2987;
reg   [31:0] buff_y_out_2_load_6_reg_2992;
reg   [31:0] buff_y_out_3_load_6_reg_2997;
reg   [31:0] buff_y_out_4_load_6_reg_3002;
reg   [31:0] buff_y_out_5_load_6_reg_3007;
reg   [31:0] buff_y_out_6_load_6_reg_3012;
reg   [31:0] buff_y_out_7_load_6_reg_3017;
reg   [31:0] buff_y_out_load_7_reg_3022;
reg   [31:0] buff_y_out_1_load_7_reg_3027;
reg   [31:0] buff_y_out_2_load_7_reg_3032;
reg   [31:0] buff_y_out_3_load_7_reg_3037;
reg   [31:0] buff_y_out_4_load_7_reg_3042;
reg   [31:0] buff_y_out_5_load_7_reg_3047;
reg   [31:0] buff_y_out_6_load_7_reg_3052;
reg   [31:0] buff_y_out_7_load_7_reg_3057;
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
reg   [2:0] buff_x_address0;
reg    buff_x_ce0;
wire   [31:0] buff_x_q0;
reg   [2:0] buff_x_1_address0;
reg    buff_x_1_ce0;
wire   [31:0] buff_x_1_q0;
reg   [2:0] buff_x_2_address0;
reg    buff_x_2_ce0;
wire   [31:0] buff_x_2_q0;
reg   [2:0] buff_x_3_address0;
reg    buff_x_3_ce0;
wire   [31:0] buff_x_3_q0;
reg   [2:0] buff_x_4_address0;
reg    buff_x_4_ce0;
wire   [31:0] buff_x_4_q0;
reg   [2:0] buff_x_5_address0;
reg    buff_x_5_ce0;
wire   [31:0] buff_x_5_q0;
reg   [2:0] buff_x_6_address0;
reg    buff_x_6_ce0;
wire   [31:0] buff_x_6_q0;
reg   [2:0] buff_x_7_address0;
reg    buff_x_7_ce0;
wire   [31:0] buff_x_7_q0;
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
reg   [2:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg   [2:0] tmp1_2_address0;
reg    tmp1_2_ce0;
reg    tmp1_2_we0;
reg   [31:0] tmp1_2_d0;
wire   [31:0] tmp1_2_q0;
reg   [2:0] tmp1_3_address0;
reg    tmp1_3_ce0;
reg    tmp1_3_we0;
reg   [31:0] tmp1_3_d0;
wire   [31:0] tmp1_3_q0;
reg   [2:0] tmp1_4_address0;
reg    tmp1_4_ce0;
reg    tmp1_4_we0;
reg   [31:0] tmp1_4_d0;
wire   [31:0] tmp1_4_q0;
reg   [2:0] tmp1_5_address0;
reg    tmp1_5_ce0;
reg    tmp1_5_we0;
reg   [31:0] tmp1_5_d0;
wire   [31:0] tmp1_5_q0;
reg   [2:0] tmp1_6_address0;
reg    tmp1_6_ce0;
reg    tmp1_6_we0;
reg   [31:0] tmp1_6_d0;
wire   [31:0] tmp1_6_q0;
reg   [2:0] tmp1_7_address0;
reg    tmp1_7_ce0;
reg    tmp1_7_we0;
reg   [31:0] tmp1_7_d0;
wire   [31:0] tmp1_7_q0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_ap_idle;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_ap_ready;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_1_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_2_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_3_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_4_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_5_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_6_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_7_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_8_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_8_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_9_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_9_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_10_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_10_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_11_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_11_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_12_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_12_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_13_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_13_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_14_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_14_ce0;
wire   [7:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_15_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_15_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_1_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_2_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_3_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_4_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_5_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_6_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_7_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_d0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_opcode;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_din1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_ce;
wire    grp_atax_Pipeline_lprd_2_fu_1419_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1419_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1419_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1419_ap_ready;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_0_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1419_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_A_7_ce0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_d0;
wire   [7:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_d0;
wire    grp_atax_Pipeline_lp3_fu_1457_ap_start;
wire    grp_atax_Pipeline_lp3_fu_1457_ap_done;
wire    grp_atax_Pipeline_lp3_fu_1457_ap_idle;
wire    grp_atax_Pipeline_lp3_fu_1457_ap_ready;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_1_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_1_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_2_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_2_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_3_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_3_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_4_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_4_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_4_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_4_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_5_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_5_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_5_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_5_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_6_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_6_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_6_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_6_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_7_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_7_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_7_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_7_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_8_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_8_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_8_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_8_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_9_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_9_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_9_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_9_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_10_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_10_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_10_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_10_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_11_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_11_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_11_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_11_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_12_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_12_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_12_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_12_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_13_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_13_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_13_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_13_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_14_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_14_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_14_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_14_ce1;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_15_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_15_ce0;
wire   [7:0] grp_atax_Pipeline_lp3_fu_1457_buff_A_15_address1;
wire    grp_atax_Pipeline_lp3_fu_1457_buff_A_15_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_4_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_4_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_5_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_5_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_2_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_6_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_6_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_3_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1457_tmp1_7_address0;
wire    grp_atax_Pipeline_lp3_fu_1457_tmp1_7_ce0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_63111_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_63111_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_62110_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_62110_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_61109_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_61109_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_60108_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_60108_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_59107_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_59107_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_58106_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_58106_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_57105_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_57105_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_56104_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_56104_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_55103_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_55103_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_54102_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_54102_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_53101_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_53101_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_52100_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_52100_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_5199_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_5199_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_5098_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_5098_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4997_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4997_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4896_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4896_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4795_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4795_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4694_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4694_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4593_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4593_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4492_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4492_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4391_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4391_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4290_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4290_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4189_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4189_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_4088_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_4088_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3987_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3987_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3886_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3886_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3785_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3785_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3684_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3684_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3583_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3583_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3482_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3482_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3381_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3381_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3280_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3280_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3179_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3179_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_3078_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_3078_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2977_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2977_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2876_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2876_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2775_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2775_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2674_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2674_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2573_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2573_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2472_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2472_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2371_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2371_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2270_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2270_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2169_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2169_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_2068_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_2068_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1967_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1967_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1866_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1866_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1765_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1765_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1664_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1664_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1563_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1563_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1462_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1462_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1361_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1361_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1260_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1260_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1159_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1159_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_1058_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_1058_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_957_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_957_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_856_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_856_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_755_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_755_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_654_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_654_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_553_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_553_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_452_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_452_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_351_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_351_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_250_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_250_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_3_149_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_3_149_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_add58_348_out;
wire    grp_atax_Pipeline_lp3_fu_1457_add58_348_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1629_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_y_out_write;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_1_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_2_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_3_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_4_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_5_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_6_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_7_ce0;
reg    grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start_reg;
wire   [0:0] icmp_ln11_fu_1651_p2;
reg    grp_atax_Pipeline_lprd_2_fu_1419_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_atax_Pipeline_lp3_fu_1457_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_atax_Pipeline_lpwr_1_fu_1629_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln11_fu_1663_p1;
wire   [63:0] zext_ln5_fu_1686_p1;
reg   [6:0] i_fu_102;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg    x_ce0_local;
reg    buff_y_out_ce1_local;
reg   [2:0] buff_y_out_address1_local;
reg    buff_y_out_ce0_local;
reg   [2:0] buff_y_out_address0_local;
reg    buff_y_out_we0_local;
wire   [2:0] trunc_ln11_1_fu_1671_p1;
reg   [31:0] buff_y_out_d0_local;
reg    buff_y_out_we1_local;
reg   [31:0] buff_y_out_d1_local;
reg    buff_y_out_1_ce1_local;
reg   [2:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_ce0_local;
reg   [2:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_we0_local;
reg   [31:0] buff_y_out_1_d0_local;
reg    buff_y_out_1_we1_local;
reg   [31:0] buff_y_out_1_d1_local;
reg    buff_y_out_2_ce1_local;
reg   [2:0] buff_y_out_2_address1_local;
reg    buff_y_out_2_ce0_local;
reg   [2:0] buff_y_out_2_address0_local;
reg    buff_y_out_2_we0_local;
reg   [31:0] buff_y_out_2_d0_local;
reg    buff_y_out_2_we1_local;
reg   [31:0] buff_y_out_2_d1_local;
reg    buff_y_out_3_ce1_local;
reg   [2:0] buff_y_out_3_address1_local;
reg    buff_y_out_3_ce0_local;
reg   [2:0] buff_y_out_3_address0_local;
reg    buff_y_out_3_we0_local;
reg   [31:0] buff_y_out_3_d0_local;
reg    buff_y_out_3_we1_local;
reg   [31:0] buff_y_out_3_d1_local;
reg    buff_y_out_4_ce1_local;
reg   [2:0] buff_y_out_4_address1_local;
reg    buff_y_out_4_ce0_local;
reg   [2:0] buff_y_out_4_address0_local;
reg    buff_y_out_4_we0_local;
reg   [31:0] buff_y_out_4_d0_local;
reg    buff_y_out_4_we1_local;
reg   [31:0] buff_y_out_4_d1_local;
reg    buff_y_out_5_ce1_local;
reg   [2:0] buff_y_out_5_address1_local;
reg    buff_y_out_5_ce0_local;
reg   [2:0] buff_y_out_5_address0_local;
reg    buff_y_out_5_we0_local;
reg   [31:0] buff_y_out_5_d0_local;
reg    buff_y_out_5_we1_local;
reg   [31:0] buff_y_out_5_d1_local;
reg    buff_y_out_6_ce1_local;
reg   [2:0] buff_y_out_6_address1_local;
reg    buff_y_out_6_ce0_local;
reg   [2:0] buff_y_out_6_address0_local;
reg    buff_y_out_6_we0_local;
reg   [31:0] buff_y_out_6_d0_local;
reg    buff_y_out_6_we1_local;
reg   [31:0] buff_y_out_6_d1_local;
reg    buff_y_out_7_ce1_local;
reg   [2:0] buff_y_out_7_address1_local;
reg    buff_y_out_7_ce0_local;
reg   [2:0] buff_y_out_7_address0_local;
reg    buff_y_out_7_we0_local;
reg   [31:0] buff_y_out_7_d0_local;
reg    buff_y_out_7_we1_local;
reg   [31:0] buff_y_out_7_d1_local;
reg    buff_x_6_we0_local;
wire   [31:0] bitcast_ln12_fu_1714_p1;
reg    buff_x_6_ce0_local;
reg    tmp1_6_we0_local;
reg    tmp1_6_ce0_local;
reg    buff_x_5_we0_local;
reg    buff_x_5_ce0_local;
reg    tmp1_5_we0_local;
reg    tmp1_5_ce0_local;
reg    buff_x_4_we0_local;
reg    buff_x_4_ce0_local;
reg    tmp1_4_we0_local;
reg    tmp1_4_ce0_local;
reg    buff_x_3_we0_local;
reg    buff_x_3_ce0_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
reg    buff_x_2_we0_local;
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
reg    buff_x_7_we0_local;
reg    buff_x_7_ce0_local;
reg    tmp1_7_we0_local;
reg    tmp1_7_ce0_local;
wire   [2:0] lshr_ln5_1_fu_1677_p4;
wire   [31:0] grp_fu_3062_p2;
reg   [31:0] grp_fu_3062_p0;
reg   [31:0] grp_fu_3062_p1;
reg    grp_fu_3062_ce;
wire   [31:0] grp_fu_3066_p2;
reg   [31:0] grp_fu_3066_p0;
reg   [31:0] grp_fu_3066_p1;
reg    grp_fu_3066_ce;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lprd_2_fu_1419_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_fu_1457_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1629_ap_start_reg = 1'b0;
#0 i_fu_102 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_8_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_8_address0),.ce0(buff_A_8_ce0),.we0(buff_A_8_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_d0),.q0(buff_A_8_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_8_address1),.ce1(buff_A_8_ce1),.q1(buff_A_8_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_9_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_9_address0),.ce0(buff_A_9_ce0),.we0(buff_A_9_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_d0),.q0(buff_A_9_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_9_address1),.ce1(buff_A_9_ce1),.q1(buff_A_9_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_10_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_10_address0),.ce0(buff_A_10_ce0),.we0(buff_A_10_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_d0),.q0(buff_A_10_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_10_address1),.ce1(buff_A_10_ce1),.q1(buff_A_10_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_11_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_11_address0),.ce0(buff_A_11_ce0),.we0(buff_A_11_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_d0),.q0(buff_A_11_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_11_address1),.ce1(buff_A_11_ce1),.q1(buff_A_11_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_12_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_12_address0),.ce0(buff_A_12_ce0),.we0(buff_A_12_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_d0),.q0(buff_A_12_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_12_address1),.ce1(buff_A_12_ce1),.q1(buff_A_12_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_13_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_13_address0),.ce0(buff_A_13_ce0),.we0(buff_A_13_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_d0),.q0(buff_A_13_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_13_address1),.ce1(buff_A_13_ce1),.q1(buff_A_13_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_14_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_14_address0),.ce0(buff_A_14_ce0),.we0(buff_A_14_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_d0),.q0(buff_A_14_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_14_address1),.ce1(buff_A_14_ce1),.q1(buff_A_14_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 256 ),.AddressWidth( 8 ))
buff_A_15_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_15_address0),.ce0(buff_A_15_ce0),.we0(buff_A_15_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_d0),.q0(buff_A_15_q0),.address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_15_address1),.ce1(buff_A_15_ce1),.q1(buff_A_15_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_1_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0),.ce0(buff_x_2_ce0),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_2_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0),.ce0(buff_x_3_ce0),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_3_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_4_address0),.ce0(buff_x_4_ce0),.we0(buff_x_4_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_4_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_5_address0),.ce0(buff_x_5_ce0),.we0(buff_x_5_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_5_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_6_address0),.ce0(buff_x_6_ce0),.we0(buff_x_6_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_6_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_7_address0),.ce0(buff_x_7_ce0),.we0(buff_x_7_we0_local),.d0(bitcast_ln12_fu_1714_p1),.q0(buff_x_7_q0));
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
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_4_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_4_address0),.ce0(tmp1_4_ce0),.we0(tmp1_4_we0),.d0(tmp1_4_d0),.q0(tmp1_4_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_5_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_5_address0),.ce0(tmp1_5_ce0),.we0(tmp1_5_we0),.d0(tmp1_5_d0),.q0(tmp1_5_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_6_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_6_address0),.ce0(tmp1_6_ce0),.we0(tmp1_6_we0),.d0(tmp1_6_d0),.q0(tmp1_6_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_7_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_7_address0),.ce0(tmp1_7_ce0),.we0(tmp1_7_we0),.d0(tmp1_7_d0),.q0(tmp1_7_q0));
atax_atax_Pipeline_lp1_lp2 grp_atax_Pipeline_lp1_lp2_fu_1383(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start),.ap_done(grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done),.ap_idle(grp_atax_Pipeline_lp1_lp2_fu_1383_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_lp2_fu_1383_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_8_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_8_address0),.buff_A_8_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_9_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_9_address0),.buff_A_9_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_10_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_10_address0),.buff_A_10_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_11_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_11_address0),.buff_A_11_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_12_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_12_address0),.buff_A_12_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_13_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_13_address0),.buff_A_13_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_14_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_14_address0),.buff_A_14_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_15_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_15_address0),.buff_A_15_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_x_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_2_address0),.buff_x_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_2_ce0),.buff_x_2_q0(buff_x_2_q0),.buff_x_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_3_address0),.buff_x_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_3_ce0),.buff_x_3_q0(buff_x_3_q0),.buff_x_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_4_address0),.buff_x_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_4_ce0),.buff_x_4_q0(buff_x_4_q0),.buff_x_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_5_address0),.buff_x_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_5_ce0),.buff_x_5_q0(buff_x_5_q0),.buff_x_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_6_address0),.buff_x_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_6_ce0),.buff_x_6_q0(buff_x_6_q0),.buff_x_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_7_address0),.buff_x_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_7_ce0),.buff_x_7_q0(buff_x_7_q0),.tmp1_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_d0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_d0),.tmp1_3_q0(tmp1_3_q0),.tmp1_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_ce0),.tmp1_4_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_we0),.tmp1_4_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_d0),.tmp1_4_q0(tmp1_4_q0),.tmp1_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_ce0),.tmp1_5_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_we0),.tmp1_5_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_d0),.tmp1_5_q0(tmp1_5_q0),.tmp1_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_ce0),.tmp1_6_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_we0),.tmp1_6_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_d0),.tmp1_6_q0(tmp1_6_q0),.tmp1_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_ce0),.tmp1_7_we0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_we0),.tmp1_7_d0(grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_d0),.tmp1_7_q0(tmp1_7_q0),.grp_fu_3062_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_din0),.grp_fu_3062_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_din1),.grp_fu_3062_p_opcode(grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_opcode),.grp_fu_3062_p_dout0(grp_fu_3062_p2),.grp_fu_3062_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_ce),.grp_fu_3066_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_din0),.grp_fu_3066_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_din1),.grp_fu_3066_p_dout0(grp_fu_3066_p2),.grp_fu_3066_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_ce));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1419(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1419_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1419_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1419_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1419_ap_ready),.i(trunc_ln11_reg_2489),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_4_address0),.A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_5_address0),.A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_6_address0),.A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_atax_Pipeline_lprd_2_fu_1419_A_7_address0),.A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1419_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_d0),.buff_A_4_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_ce0),.buff_A_4_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_we0),.buff_A_4_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_d0),.buff_A_5_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_ce0),.buff_A_5_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_we0),.buff_A_5_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_d0),.buff_A_6_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_ce0),.buff_A_6_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_we0),.buff_A_6_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_d0),.buff_A_7_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_ce0),.buff_A_7_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_we0),.buff_A_7_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_d0),.buff_A_8_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_address0),.buff_A_8_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_ce0),.buff_A_8_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_we0),.buff_A_8_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_d0),.buff_A_9_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_address0),.buff_A_9_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_ce0),.buff_A_9_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_we0),.buff_A_9_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_d0),.buff_A_10_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_address0),.buff_A_10_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_ce0),.buff_A_10_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_we0),.buff_A_10_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_d0),.buff_A_11_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_address0),.buff_A_11_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_ce0),.buff_A_11_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_we0),.buff_A_11_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_d0),.buff_A_12_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_address0),.buff_A_12_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_ce0),.buff_A_12_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_we0),.buff_A_12_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_d0),.buff_A_13_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_address0),.buff_A_13_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_ce0),.buff_A_13_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_we0),.buff_A_13_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_d0),.buff_A_14_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_address0),.buff_A_14_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_ce0),.buff_A_14_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_we0),.buff_A_14_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_d0),.buff_A_15_address0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_address0),.buff_A_15_ce0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_ce0),.buff_A_15_we0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_we0),.buff_A_15_d0(grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_d0),.empty(trunc_ln11_2_reg_2497));
atax_atax_Pipeline_lp3 grp_atax_Pipeline_lp3_fu_1457(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_fu_1457_ap_start),.ap_done(grp_atax_Pipeline_lp3_fu_1457_ap_done),.ap_idle(grp_atax_Pipeline_lp3_fu_1457_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_fu_1457_ap_ready),.buff_y_out_7_load_7(buff_y_out_7_load_7_reg_3057),.buff_y_out_6_load_7(buff_y_out_6_load_7_reg_3052),.buff_y_out_5_load_7(buff_y_out_5_load_7_reg_3047),.buff_y_out_4_load_7(buff_y_out_4_load_7_reg_3042),.buff_y_out_3_load_7(buff_y_out_3_load_7_reg_3037),.buff_y_out_2_load_7(buff_y_out_2_load_7_reg_3032),.buff_y_out_1_load_7(buff_y_out_1_load_7_reg_3027),.buff_y_out_load_7(buff_y_out_load_7_reg_3022),.buff_y_out_7_load_6(buff_y_out_7_load_6_reg_3017),.buff_y_out_6_load_6(buff_y_out_6_load_6_reg_3012),.buff_y_out_5_load_6(buff_y_out_5_load_6_reg_3007),.buff_y_out_4_load_6(buff_y_out_4_load_6_reg_3002),.buff_y_out_3_load_6(buff_y_out_3_load_6_reg_2997),.buff_y_out_2_load_6(buff_y_out_2_load_6_reg_2992),.buff_y_out_1_load_6(buff_y_out_1_load_6_reg_2987),.buff_y_out_load_6(buff_y_out_load_6_reg_2982),.buff_y_out_7_load_5(buff_y_out_7_load_5_reg_2977),.buff_y_out_6_load_5(buff_y_out_6_load_5_reg_2972),.buff_y_out_5_load_5(buff_y_out_5_load_5_reg_2967),.buff_y_out_4_load_5(buff_y_out_4_load_5_reg_2962),.buff_y_out_3_load_5(buff_y_out_3_load_5_reg_2957),.buff_y_out_2_load_5(buff_y_out_2_load_5_reg_2952),.buff_y_out_1_load_5(buff_y_out_1_load_5_reg_2947),.buff_y_out_load_5(buff_y_out_load_5_reg_2942),.buff_y_out_7_load_4(buff_y_out_7_load_4_reg_2937),.buff_y_out_6_load_4(buff_y_out_6_load_4_reg_2932),.buff_y_out_5_load_4(buff_y_out_5_load_4_reg_2927),.buff_y_out_4_load_4(buff_y_out_4_load_4_reg_2922),.buff_y_out_3_load_4(buff_y_out_3_load_4_reg_2917),.buff_y_out_2_load_4(buff_y_out_2_load_4_reg_2912),.buff_y_out_1_load_4(buff_y_out_1_load_4_reg_2907),.buff_y_out_load_4(buff_y_out_load_4_reg_2902),.buff_y_out_7_load_3(buff_y_out_7_load_3_reg_2817),.buff_y_out_6_load_3(buff_y_out_6_load_3_reg_2812),.buff_y_out_5_load_3(buff_y_out_5_load_3_reg_2807),.buff_y_out_4_load_3(buff_y_out_4_load_3_reg_2802),.buff_y_out_3_load_3(buff_y_out_3_load_3_reg_2797),.buff_y_out_2_load_3(buff_y_out_2_load_3_reg_2792),.buff_y_out_1_load_3(buff_y_out_1_load_3_reg_2787),.buff_y_out_load_3(buff_y_out_load_3_reg_2782),.buff_y_out_7_load_2(buff_y_out_7_load_2_reg_2777),.buff_y_out_6_load_2(buff_y_out_6_load_2_reg_2772),.buff_y_out_5_load_2(buff_y_out_5_load_2_reg_2767),.buff_y_out_4_load_2(buff_y_out_4_load_2_reg_2762),.buff_y_out_3_load_2(buff_y_out_3_load_2_reg_2757),.buff_y_out_2_load_2(buff_y_out_2_load_2_reg_2752),.buff_y_out_1_load_2(buff_y_out_1_load_2_reg_2747),.buff_y_out_load_2(buff_y_out_load_2_reg_2742),.buff_y_out_7_load_1(buff_y_out_7_load_1_reg_2657),.buff_y_out_6_load_1(buff_y_out_6_load_1_reg_2652),.buff_y_out_5_load_1(buff_y_out_5_load_1_reg_2647),.buff_y_out_4_load_1(buff_y_out_4_load_1_reg_2642),.buff_y_out_3_load_1(buff_y_out_3_load_1_reg_2637),.buff_y_out_2_load_1(buff_y_out_2_load_1_reg_2632),.buff_y_out_1_load_1(buff_y_out_1_load_1_reg_2627),.buff_y_out_load_1(buff_y_out_load_1_reg_2622),.buff_y_out_7_load(buff_y_out_7_load_reg_2617),.buff_y_out_6_load(buff_y_out_6_load_reg_2612),.buff_y_out_5_load(buff_y_out_5_load_reg_2607),.buff_y_out_4_load(buff_y_out_4_load_reg_2602),.buff_y_out_3_load(buff_y_out_3_load_reg_2597),.buff_y_out_2_load(buff_y_out_2_load_reg_2592),.buff_y_out_1_load(buff_y_out_1_load_reg_2587),.buff_y_out_load(buff_y_out_load_reg_2582),.buff_A_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_8_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_8_address0),.buff_A_8_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_8_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_8_address1),.buff_A_8_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_8_ce1),.buff_A_8_q1(buff_A_8_q1),.buff_A_9_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_9_address0),.buff_A_9_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_9_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_9_address1),.buff_A_9_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_9_ce1),.buff_A_9_q1(buff_A_9_q1),.buff_A_10_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_10_address0),.buff_A_10_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_10_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_10_address1),.buff_A_10_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_10_ce1),.buff_A_10_q1(buff_A_10_q1),.buff_A_11_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_11_address0),.buff_A_11_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_11_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_11_address1),.buff_A_11_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_11_ce1),.buff_A_11_q1(buff_A_11_q1),.buff_A_12_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_12_address0),.buff_A_12_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_12_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_12_address1),.buff_A_12_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_12_ce1),.buff_A_12_q1(buff_A_12_q1),.buff_A_13_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_13_address0),.buff_A_13_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_13_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_13_address1),.buff_A_13_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_13_ce1),.buff_A_13_q1(buff_A_13_q1),.buff_A_14_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_14_address0),.buff_A_14_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_14_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_14_address1),.buff_A_14_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_14_ce1),.buff_A_14_q1(buff_A_14_q1),.buff_A_15_address0(grp_atax_Pipeline_lp3_fu_1457_buff_A_15_address0),.buff_A_15_ce0(grp_atax_Pipeline_lp3_fu_1457_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_15_address1(grp_atax_Pipeline_lp3_fu_1457_buff_A_15_address1),.buff_A_15_ce1(grp_atax_Pipeline_lp3_fu_1457_buff_A_15_ce1),.buff_A_15_q1(buff_A_15_q1),.tmp1_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_4_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_4_ce0),.tmp1_4_q0(tmp1_4_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_5_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_5_ce0),.tmp1_5_q0(tmp1_5_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_6_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_6_ce0),.tmp1_6_q0(tmp1_6_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.tmp1_7_address0(grp_atax_Pipeline_lp3_fu_1457_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp3_fu_1457_tmp1_7_ce0),.tmp1_7_q0(tmp1_7_q0),.add58_3_63111_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_63111_out),.add58_3_63111_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_63111_out_ap_vld),.add58_3_62110_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_62110_out),.add58_3_62110_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_62110_out_ap_vld),.add58_3_61109_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_61109_out),.add58_3_61109_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_61109_out_ap_vld),.add58_3_60108_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_60108_out),.add58_3_60108_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_60108_out_ap_vld),.add58_3_59107_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_59107_out),.add58_3_59107_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_59107_out_ap_vld),.add58_3_58106_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_58106_out),.add58_3_58106_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_58106_out_ap_vld),.add58_3_57105_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_57105_out),.add58_3_57105_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_57105_out_ap_vld),.add58_3_56104_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_56104_out),.add58_3_56104_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_56104_out_ap_vld),.add58_3_55103_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_55103_out),.add58_3_55103_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_55103_out_ap_vld),.add58_3_54102_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_54102_out),.add58_3_54102_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_54102_out_ap_vld),.add58_3_53101_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_53101_out),.add58_3_53101_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_53101_out_ap_vld),.add58_3_52100_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_52100_out),.add58_3_52100_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_52100_out_ap_vld),.add58_3_5199_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_5199_out),.add58_3_5199_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_5199_out_ap_vld),.add58_3_5098_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_5098_out),.add58_3_5098_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_5098_out_ap_vld),.add58_3_4997_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4997_out),.add58_3_4997_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4997_out_ap_vld),.add58_3_4896_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4896_out),.add58_3_4896_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4896_out_ap_vld),.add58_3_4795_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4795_out),.add58_3_4795_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4795_out_ap_vld),.add58_3_4694_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4694_out),.add58_3_4694_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4694_out_ap_vld),.add58_3_4593_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4593_out),.add58_3_4593_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4593_out_ap_vld),.add58_3_4492_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4492_out),.add58_3_4492_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4492_out_ap_vld),.add58_3_4391_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4391_out),.add58_3_4391_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4391_out_ap_vld),.add58_3_4290_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4290_out),.add58_3_4290_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4290_out_ap_vld),.add58_3_4189_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4189_out),.add58_3_4189_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4189_out_ap_vld),.add58_3_4088_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_4088_out),.add58_3_4088_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_4088_out_ap_vld),.add58_3_3987_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3987_out),.add58_3_3987_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3987_out_ap_vld),.add58_3_3886_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3886_out),.add58_3_3886_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3886_out_ap_vld),.add58_3_3785_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3785_out),.add58_3_3785_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3785_out_ap_vld),.add58_3_3684_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3684_out),.add58_3_3684_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3684_out_ap_vld),.add58_3_3583_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3583_out),.add58_3_3583_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3583_out_ap_vld),.add58_3_3482_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3482_out),.add58_3_3482_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3482_out_ap_vld),.add58_3_3381_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3381_out),.add58_3_3381_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3381_out_ap_vld),.add58_3_3280_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3280_out),.add58_3_3280_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3280_out_ap_vld),.add58_3_3179_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3179_out),.add58_3_3179_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3179_out_ap_vld),.add58_3_3078_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_3078_out),.add58_3_3078_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_3078_out_ap_vld),.add58_3_2977_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2977_out),.add58_3_2977_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2977_out_ap_vld),.add58_3_2876_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2876_out),.add58_3_2876_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2876_out_ap_vld),.add58_3_2775_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2775_out),.add58_3_2775_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2775_out_ap_vld),.add58_3_2674_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2674_out),.add58_3_2674_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2674_out_ap_vld),.add58_3_2573_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2573_out),.add58_3_2573_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2573_out_ap_vld),.add58_3_2472_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2472_out),.add58_3_2472_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2472_out_ap_vld),.add58_3_2371_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2371_out),.add58_3_2371_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2371_out_ap_vld),.add58_3_2270_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2270_out),.add58_3_2270_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2270_out_ap_vld),.add58_3_2169_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2169_out),.add58_3_2169_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2169_out_ap_vld),.add58_3_2068_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_2068_out),.add58_3_2068_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_2068_out_ap_vld),.add58_3_1967_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1967_out),.add58_3_1967_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1967_out_ap_vld),.add58_3_1866_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1866_out),.add58_3_1866_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1866_out_ap_vld),.add58_3_1765_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1765_out),.add58_3_1765_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1765_out_ap_vld),.add58_3_1664_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1664_out),.add58_3_1664_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1664_out_ap_vld),.add58_3_1563_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1563_out),.add58_3_1563_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1563_out_ap_vld),.add58_3_1462_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1462_out),.add58_3_1462_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1462_out_ap_vld),.add58_3_1361_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1361_out),.add58_3_1361_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1361_out_ap_vld),.add58_3_1260_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1260_out),.add58_3_1260_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1260_out_ap_vld),.add58_3_1159_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1159_out),.add58_3_1159_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1159_out_ap_vld),.add58_3_1058_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_1058_out),.add58_3_1058_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_1058_out_ap_vld),.add58_3_957_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_957_out),.add58_3_957_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_957_out_ap_vld),.add58_3_856_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_856_out),.add58_3_856_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_856_out_ap_vld),.add58_3_755_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_755_out),.add58_3_755_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_755_out_ap_vld),.add58_3_654_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_654_out),.add58_3_654_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_654_out_ap_vld),.add58_3_553_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_553_out),.add58_3_553_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_553_out_ap_vld),.add58_3_452_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_452_out),.add58_3_452_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_452_out_ap_vld),.add58_3_351_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_351_out),.add58_3_351_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_351_out_ap_vld),.add58_3_250_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_250_out),.add58_3_250_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_250_out_ap_vld),.add58_3_149_out(grp_atax_Pipeline_lp3_fu_1457_add58_3_149_out),.add58_3_149_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_3_149_out_ap_vld),.add58_348_out(grp_atax_Pipeline_lp3_fu_1457_add58_348_out),.add58_348_out_ap_vld(grp_atax_Pipeline_lp3_fu_1457_add58_348_out_ap_vld),.grp_fu_3062_p_din0(grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_din0),.grp_fu_3062_p_din1(grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_din1),.grp_fu_3062_p_opcode(grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_opcode),.grp_fu_3062_p_dout0(grp_fu_3062_p2),.grp_fu_3062_p_ce(grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_ce),.grp_fu_3066_p_din0(grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_din0),.grp_fu_3066_p_din1(grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_din1),.grp_fu_3066_p_dout0(grp_fu_3066_p2),.grp_fu_3066_p_ce(grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1629(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1629_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1629_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1629_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1629_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1629_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1629_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0),.buff_y_out_4_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_4_ce0),.buff_y_out_4_q0(buff_y_out_4_q0),.buff_y_out_5_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_5_ce0),.buff_y_out_5_q0(buff_y_out_5_q0),.buff_y_out_6_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_6_ce0),.buff_y_out_6_q0(buff_y_out_6_q0),.buff_y_out_7_address0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_7_ce0),.buff_y_out_7_q0(buff_y_out_7_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3062_p0),.din1(grp_fu_3062_p1),.ce(grp_fu_3062_ce),.dout(grp_fu_3062_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3066_p0),.din1(grp_fu_3066_p1),.ce(grp_fu_3066_ce),.dout(grp_fu_3066_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1651_p2 == 1'd1))) begin
            grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_lp2_fu_1383_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_fu_1457_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_Pipeline_lp3_fu_1457_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_fu_1457_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_fu_1457_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1419_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_atax_Pipeline_lprd_2_fu_1419_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1419_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1419_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1629_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_atax_Pipeline_lpwr_1_fu_1629_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1629_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1629_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_102 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_102 <= add_ln11_reg_2383;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_2383 <= add_ln11_fu_1657_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_load_1_reg_2627 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_2587 <= buff_y_out_1_q1;
        buff_y_out_2_load_1_reg_2632 <= buff_y_out_2_q0;
        buff_y_out_2_load_reg_2592 <= buff_y_out_2_q1;
        buff_y_out_3_load_1_reg_2637 <= buff_y_out_3_q0;
        buff_y_out_3_load_reg_2597 <= buff_y_out_3_q1;
        buff_y_out_4_load_1_reg_2642 <= buff_y_out_4_q0;
        buff_y_out_4_load_reg_2602 <= buff_y_out_4_q1;
        buff_y_out_5_load_1_reg_2647 <= buff_y_out_5_q0;
        buff_y_out_5_load_reg_2607 <= buff_y_out_5_q1;
        buff_y_out_6_load_1_reg_2652 <= buff_y_out_6_q0;
        buff_y_out_6_load_reg_2612 <= buff_y_out_6_q1;
        buff_y_out_7_load_1_reg_2657 <= buff_y_out_7_q0;
        buff_y_out_7_load_reg_2617 <= buff_y_out_7_q1;
        buff_y_out_load_1_reg_2622 <= buff_y_out_q0;
        buff_y_out_load_reg_2582 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_load_2_reg_2747 <= buff_y_out_1_q0;
        buff_y_out_1_load_3_reg_2787 <= buff_y_out_1_q1;
        buff_y_out_2_load_2_reg_2752 <= buff_y_out_2_q0;
        buff_y_out_2_load_3_reg_2792 <= buff_y_out_2_q1;
        buff_y_out_3_load_2_reg_2757 <= buff_y_out_3_q0;
        buff_y_out_3_load_3_reg_2797 <= buff_y_out_3_q1;
        buff_y_out_4_load_2_reg_2762 <= buff_y_out_4_q0;
        buff_y_out_4_load_3_reg_2802 <= buff_y_out_4_q1;
        buff_y_out_5_load_2_reg_2767 <= buff_y_out_5_q0;
        buff_y_out_5_load_3_reg_2807 <= buff_y_out_5_q1;
        buff_y_out_6_load_2_reg_2772 <= buff_y_out_6_q0;
        buff_y_out_6_load_3_reg_2812 <= buff_y_out_6_q1;
        buff_y_out_7_load_2_reg_2777 <= buff_y_out_7_q0;
        buff_y_out_7_load_3_reg_2817 <= buff_y_out_7_q1;
        buff_y_out_load_2_reg_2742 <= buff_y_out_q0;
        buff_y_out_load_3_reg_2782 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_load_4_reg_2907 <= buff_y_out_1_q0;
        buff_y_out_1_load_5_reg_2947 <= buff_y_out_1_q1;
        buff_y_out_2_load_4_reg_2912 <= buff_y_out_2_q0;
        buff_y_out_2_load_5_reg_2952 <= buff_y_out_2_q1;
        buff_y_out_3_load_4_reg_2917 <= buff_y_out_3_q0;
        buff_y_out_3_load_5_reg_2957 <= buff_y_out_3_q1;
        buff_y_out_4_load_4_reg_2922 <= buff_y_out_4_q0;
        buff_y_out_4_load_5_reg_2962 <= buff_y_out_4_q1;
        buff_y_out_5_load_4_reg_2927 <= buff_y_out_5_q0;
        buff_y_out_5_load_5_reg_2967 <= buff_y_out_5_q1;
        buff_y_out_6_load_4_reg_2932 <= buff_y_out_6_q0;
        buff_y_out_6_load_5_reg_2972 <= buff_y_out_6_q1;
        buff_y_out_7_load_4_reg_2937 <= buff_y_out_7_q0;
        buff_y_out_7_load_5_reg_2977 <= buff_y_out_7_q1;
        buff_y_out_load_4_reg_2902 <= buff_y_out_q0;
        buff_y_out_load_5_reg_2942 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_load_6_reg_2987 <= buff_y_out_1_q0;
        buff_y_out_1_load_7_reg_3027 <= buff_y_out_1_q1;
        buff_y_out_2_load_6_reg_2992 <= buff_y_out_2_q0;
        buff_y_out_2_load_7_reg_3032 <= buff_y_out_2_q1;
        buff_y_out_3_load_6_reg_2997 <= buff_y_out_3_q0;
        buff_y_out_3_load_7_reg_3037 <= buff_y_out_3_q1;
        buff_y_out_4_load_6_reg_3002 <= buff_y_out_4_q0;
        buff_y_out_4_load_7_reg_3042 <= buff_y_out_4_q1;
        buff_y_out_5_load_6_reg_3007 <= buff_y_out_5_q0;
        buff_y_out_5_load_7_reg_3047 <= buff_y_out_5_q1;
        buff_y_out_6_load_6_reg_3012 <= buff_y_out_6_q0;
        buff_y_out_6_load_7_reg_3052 <= buff_y_out_6_q1;
        buff_y_out_7_load_6_reg_3017 <= buff_y_out_7_q0;
        buff_y_out_7_load_7_reg_3057 <= buff_y_out_7_q1;
        buff_y_out_load_6_reg_2982 <= buff_y_out_q0;
        buff_y_out_load_7_reg_3022 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_2_reg_2497 <= trunc_ln11_2_fu_1674_p1;
        trunc_ln11_reg_2489 <= trunc_ln11_fu_1668_p1;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_fu_1457_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_1629_ap_done == 1'b0)) begin
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
    if ((grp_atax_Pipeline_lprd_2_fu_1419_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (grp_atax_Pipeline_lpwr_1_fu_1629_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_atax_Pipeline_lpwr_1_fu_1629_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_10_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_10_address0;
    end else begin
        buff_A_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_10_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_10_ce0;
    end else begin
        buff_A_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_10_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_10_ce1;
    end else begin
        buff_A_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_10_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_10_we0;
    end else begin
        buff_A_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_11_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_11_address0;
    end else begin
        buff_A_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_11_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_11_ce0;
    end else begin
        buff_A_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_11_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_11_ce1;
    end else begin
        buff_A_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_11_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_11_we0;
    end else begin
        buff_A_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_12_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_12_address0;
    end else begin
        buff_A_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_12_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_12_ce0;
    end else begin
        buff_A_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_12_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_12_ce1;
    end else begin
        buff_A_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_12_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_12_we0;
    end else begin
        buff_A_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_13_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_13_address0;
    end else begin
        buff_A_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_13_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_13_ce0;
    end else begin
        buff_A_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_13_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_13_ce1;
    end else begin
        buff_A_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_13_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_13_we0;
    end else begin
        buff_A_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_14_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_14_address0;
    end else begin
        buff_A_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_14_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_14_ce0;
    end else begin
        buff_A_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_14_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_14_ce1;
    end else begin
        buff_A_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_14_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_14_we0;
    end else begin
        buff_A_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_15_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_15_address0;
    end else begin
        buff_A_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_15_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_15_ce0;
    end else begin
        buff_A_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_15_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_15_ce1;
    end else begin
        buff_A_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_15_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_15_we0;
    end else begin
        buff_A_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_8_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_8_address0;
    end else begin
        buff_A_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_8_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_8_ce0;
    end else begin
        buff_A_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_8_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_8_ce1;
    end else begin
        buff_A_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_8_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_8_we0;
    end else begin
        buff_A_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_9_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_9_address0;
    end else begin
        buff_A_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_9_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_9_ce0;
    end else begin
        buff_A_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_9_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_9_ce1;
    end else begin
        buff_A_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_9_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_9_we0;
    end else begin
        buff_A_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_fu_1457_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_fu_1457_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1419_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_1_ce0;
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
    if (((trunc_ln11_1_fu_1671_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_2_address0;
    end else begin
        buff_x_2_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_2_ce0;
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
    if (((trunc_ln11_1_fu_1671_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_3_address0;
    end else begin
        buff_x_3_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_3_ce0;
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
    if (((trunc_ln11_1_fu_1671_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_4_address0;
    end else begin
        buff_x_4_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_4_ce0;
    end else begin
        buff_x_4_ce0 = buff_x_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_4_ce0_local = 1'b1;
    end else begin
        buff_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_4_we0_local = 1'b1;
    end else begin
        buff_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_5_address0;
    end else begin
        buff_x_5_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_5_ce0;
    end else begin
        buff_x_5_ce0 = buff_x_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_5_ce0_local = 1'b1;
    end else begin
        buff_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_5_we0_local = 1'b1;
    end else begin
        buff_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_6_address0;
    end else begin
        buff_x_6_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_6_ce0;
    end else begin
        buff_x_6_ce0 = buff_x_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_6_ce0_local = 1'b1;
    end else begin
        buff_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_6_we0_local = 1'b1;
    end else begin
        buff_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_7_address0;
    end else begin
        buff_x_7_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_7_ce0;
    end else begin
        buff_x_7_ce0 = buff_x_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_7_ce0_local = 1'b1;
    end else begin
        buff_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_7_we0_local = 1'b1;
    end else begin
        buff_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_address0;
    end else begin
        buff_x_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_buff_x_ce0;
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
    if (((trunc_ln11_1_fu_1671_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = buff_y_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_7_reg_2827;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_5_reg_2667;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_2507;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address0_local = 64'd1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_8_reg_2867;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_6_reg_2707;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_4_reg_2547;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address1_local = 64'd0;
    end else begin
        buff_y_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4997_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3381_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1765_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_149_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_d0_local = 32'd0;
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_57105_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4189_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2573_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_957_out;
    end else begin
        buff_y_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = buff_y_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_7_reg_2832;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_5_reg_2672;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_3_reg_2512;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_address0_local = 64'd1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_8_reg_2872;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_6_reg_2712;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_4_reg_2552;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_address1_local = 64'd0;
    end else begin
        buff_y_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_5098_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3482_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1866_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_250_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_d0_local = 32'd0;
    end else begin
        buff_y_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_58106_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4290_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2674_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1058_out;
    end else begin
        buff_y_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_2_we1_local = 1'b1;
    end else begin
        buff_y_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = buff_y_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_7_reg_2837;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_5_reg_2677;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_3_reg_2517;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_address0_local = 64'd1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_8_reg_2877;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_6_reg_2717;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_4_reg_2557;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_address1_local = 64'd0;
    end else begin
        buff_y_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_5199_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3583_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1967_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_351_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_d0_local = 32'd0;
    end else begin
        buff_y_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_59107_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4391_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2775_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1159_out;
    end else begin
        buff_y_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_3_we1_local = 1'b1;
    end else begin
        buff_y_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_4_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_4_address0;
    end else begin
        buff_y_out_4_address0 = buff_y_out_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_7_reg_2842;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_5_reg_2682;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_3_reg_2522;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_4_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_4_address0_local = 64'd1;
    end else begin
        buff_y_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_8_reg_2882;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_6_reg_2722;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_4_reg_2562;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_4_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_4_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_4_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_4_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_4_address1_local = 64'd0;
    end else begin
        buff_y_out_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_4_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_4_ce0;
    end else begin
        buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_4_ce1_local = 1'b1;
    end else begin
        buff_y_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_52100_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3684_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2068_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_452_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_4_d0_local = 32'd0;
    end else begin
        buff_y_out_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_60108_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4492_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2876_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1260_out;
    end else begin
        buff_y_out_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_4_we0_local = 1'b1;
    end else begin
        buff_y_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_4_we1_local = 1'b1;
    end else begin
        buff_y_out_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_5_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_5_address0;
    end else begin
        buff_y_out_5_address0 = buff_y_out_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_7_reg_2847;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_5_reg_2687;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_3_reg_2527;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_5_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_5_address0_local = 64'd1;
    end else begin
        buff_y_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_8_reg_2887;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_6_reg_2727;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_4_reg_2567;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_5_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_5_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_5_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_5_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_5_address1_local = 64'd0;
    end else begin
        buff_y_out_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_5_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_5_ce0;
    end else begin
        buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_5_ce1_local = 1'b1;
    end else begin
        buff_y_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_53101_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3785_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2169_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_553_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_5_d0_local = 32'd0;
    end else begin
        buff_y_out_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_61109_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4593_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2977_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1361_out;
    end else begin
        buff_y_out_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_5_we0_local = 1'b1;
    end else begin
        buff_y_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_5_we1_local = 1'b1;
    end else begin
        buff_y_out_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_6_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_6_address0;
    end else begin
        buff_y_out_6_address0 = buff_y_out_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_7_reg_2852;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_5_reg_2692;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_3_reg_2532;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_6_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_6_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_6_address0_local = 64'd1;
    end else begin
        buff_y_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_8_reg_2892;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_6_reg_2732;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_4_reg_2572;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_6_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_6_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_6_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_6_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_6_address1_local = 64'd0;
    end else begin
        buff_y_out_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_6_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_6_ce0;
    end else begin
        buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_6_ce1_local = 1'b1;
    end else begin
        buff_y_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_54102_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3886_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2270_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_654_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_6_d0_local = 32'd0;
    end else begin
        buff_y_out_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_62110_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4694_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3078_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1462_out;
    end else begin
        buff_y_out_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_6_we0_local = 1'b1;
    end else begin
        buff_y_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_6_we1_local = 1'b1;
    end else begin
        buff_y_out_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_7_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_7_address0;
    end else begin
        buff_y_out_7_address0 = buff_y_out_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_7_reg_2857;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_5_reg_2697;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_3_reg_2537;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_7_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_7_address0_local = 64'd1;
    end else begin
        buff_y_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_8_reg_2897;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_6_reg_2737;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_4_reg_2577;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_7_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_7_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_7_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_7_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_7_address1_local = 64'd0;
    end else begin
        buff_y_out_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_7_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_7_ce0;
    end else begin
        buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_7_ce1_local = 1'b1;
    end else begin
        buff_y_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_55103_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3987_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2371_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_755_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_7_d0_local = 32'd0;
    end else begin
        buff_y_out_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_63111_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4795_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3179_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1563_out;
    end else begin
        buff_y_out_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_7_we0_local = 1'b1;
    end else begin
        buff_y_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_7_we1_local = 1'b1;
    end else begin
        buff_y_out_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = buff_y_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address0_local = buff_y_out_addr_7_reg_2822;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address0_local = buff_y_out_addr_5_reg_2662;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_2502;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_address0_local = zext_ln5_fu_1686_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address0_local = 64'd1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address1_local = buff_y_out_addr_8_reg_2862;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address1_local = buff_y_out_addr_6_reg_2702;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address1_local = buff_y_out_addr_4_reg_2542;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address1_local = 64'd0;
    end else begin
        buff_y_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1629_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4896_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_3280_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_1664_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1457_add58_348_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_d0_local = 32'd0;
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_56104_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_4088_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_2472_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1457_add58_3_856_out;
    end else begin
        buff_y_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((trunc_ln11_1_fu_1671_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3062_ce = grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3062_ce = grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_ce;
    end else begin
        grp_fu_3062_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3062_p0 = grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3062_p0 = grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_din0;
    end else begin
        grp_fu_3062_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3062_p1 = grp_atax_Pipeline_lp3_fu_1457_grp_fu_3062_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3062_p1 = grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3062_p_din1;
    end else begin
        grp_fu_3062_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3066_ce = grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3066_ce = grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_ce;
    end else begin
        grp_fu_3066_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3066_p0 = grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3066_p0 = grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_din0;
    end else begin
        grp_fu_3066_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3066_p1 = grp_atax_Pipeline_lp3_fu_1457_grp_fu_3066_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3066_p1 = grp_atax_Pipeline_lp1_lp2_fu_1383_grp_fu_3066_p_din1;
    end else begin
        grp_fu_3066_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_address0;
    end else begin
        tmp1_4_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_4_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_d0;
    end else begin
        tmp1_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_4_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_4_we0;
    end else begin
        tmp1_4_we0 = tmp1_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_address0;
    end else begin
        tmp1_5_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_5_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_d0;
    end else begin
        tmp1_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_5_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_5_we0;
    end else begin
        tmp1_5_we0 = tmp1_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_address0;
    end else begin
        tmp1_6_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_6_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_d0;
    end else begin
        tmp1_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_6_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_6_we0;
    end else begin
        tmp1_6_we0 = tmp1_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_address0;
    end else begin
        tmp1_7_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_7_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_d0;
    end else begin
        tmp1_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_7_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_7_we0;
    end else begin
        tmp1_7_we0 = tmp1_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1686_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_fu_1457_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1383_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1671_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if ((1'b1 == ap_CS_fsm_state16)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1629_y_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1651_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (grp_atax_Pipeline_lprd_2_fu_1419_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_atax_Pipeline_lp1_lp2_fu_1383_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp3_fu_1457_ap_done == 1'b1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (grp_atax_Pipeline_lpwr_1_fu_1629_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_3_ce0;
assign A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_4_address0;
assign A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_4_ce0;
assign A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_5_address0;
assign A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_5_ce0;
assign A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_6_address0;
assign A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_6_ce0;
assign A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1419_A_7_address0;
assign A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1419_A_7_ce0;
assign add_ln11_fu_1657_p2 = (i_fu_102 + 7'd1);
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
assign bitcast_ln12_fu_1714_p1 = x_q0;
assign buff_y_out_1_addr_3_reg_2507 = 64'd2;
assign buff_y_out_1_addr_4_reg_2547 = 64'd3;
assign buff_y_out_1_addr_5_reg_2667 = 64'd4;
assign buff_y_out_1_addr_6_reg_2707 = 64'd5;
assign buff_y_out_1_addr_7_reg_2827 = 64'd6;
assign buff_y_out_1_addr_8_reg_2867 = 64'd7;
assign buff_y_out_2_addr_3_reg_2512 = 64'd2;
assign buff_y_out_2_addr_4_reg_2552 = 64'd3;
assign buff_y_out_2_addr_5_reg_2672 = 64'd4;
assign buff_y_out_2_addr_6_reg_2712 = 64'd5;
assign buff_y_out_2_addr_7_reg_2832 = 64'd6;
assign buff_y_out_2_addr_8_reg_2872 = 64'd7;
assign buff_y_out_3_addr_3_reg_2517 = 64'd2;
assign buff_y_out_3_addr_4_reg_2557 = 64'd3;
assign buff_y_out_3_addr_5_reg_2677 = 64'd4;
assign buff_y_out_3_addr_6_reg_2717 = 64'd5;
assign buff_y_out_3_addr_7_reg_2837 = 64'd6;
assign buff_y_out_3_addr_8_reg_2877 = 64'd7;
assign buff_y_out_4_addr_3_reg_2522 = 64'd2;
assign buff_y_out_4_addr_4_reg_2562 = 64'd3;
assign buff_y_out_4_addr_5_reg_2682 = 64'd4;
assign buff_y_out_4_addr_6_reg_2722 = 64'd5;
assign buff_y_out_4_addr_7_reg_2842 = 64'd6;
assign buff_y_out_4_addr_8_reg_2882 = 64'd7;
assign buff_y_out_5_addr_3_reg_2527 = 64'd2;
assign buff_y_out_5_addr_4_reg_2567 = 64'd3;
assign buff_y_out_5_addr_5_reg_2687 = 64'd4;
assign buff_y_out_5_addr_6_reg_2727 = 64'd5;
assign buff_y_out_5_addr_7_reg_2847 = 64'd6;
assign buff_y_out_5_addr_8_reg_2887 = 64'd7;
assign buff_y_out_6_addr_3_reg_2532 = 64'd2;
assign buff_y_out_6_addr_4_reg_2572 = 64'd3;
assign buff_y_out_6_addr_5_reg_2692 = 64'd4;
assign buff_y_out_6_addr_6_reg_2732 = 64'd5;
assign buff_y_out_6_addr_7_reg_2852 = 64'd6;
assign buff_y_out_6_addr_8_reg_2892 = 64'd7;
assign buff_y_out_7_addr_3_reg_2537 = 64'd2;
assign buff_y_out_7_addr_4_reg_2577 = 64'd3;
assign buff_y_out_7_addr_5_reg_2697 = 64'd4;
assign buff_y_out_7_addr_6_reg_2737 = 64'd5;
assign buff_y_out_7_addr_7_reg_2857 = 64'd6;
assign buff_y_out_7_addr_8_reg_2897 = 64'd7;
assign buff_y_out_addr_3_reg_2502 = 64'd2;
assign buff_y_out_addr_4_reg_2542 = 64'd3;
assign buff_y_out_addr_5_reg_2662 = 64'd4;
assign buff_y_out_addr_6_reg_2702 = 64'd5;
assign buff_y_out_addr_7_reg_2822 = 64'd6;
assign buff_y_out_addr_8_reg_2862 = 64'd7;
assign grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start = grp_atax_Pipeline_lp1_lp2_fu_1383_ap_start_reg;
assign grp_atax_Pipeline_lp3_fu_1457_ap_start = grp_atax_Pipeline_lp3_fu_1457_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1419_ap_start = grp_atax_Pipeline_lprd_2_fu_1419_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1629_ap_start = grp_atax_Pipeline_lpwr_1_fu_1629_ap_start_reg;
assign icmp_ln11_fu_1651_p2 = ((i_fu_102 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_1677_p4 = {{i_fu_102[5:3]}};
assign trunc_ln11_1_fu_1671_p1 = i_fu_102[2:0];
assign trunc_ln11_2_fu_1674_p1 = i_fu_102[0:0];
assign trunc_ln11_fu_1668_p1 = i_fu_102[5:0];
assign x_address0 = zext_ln11_fu_1663_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1629_y_out_din;
assign zext_ln11_fu_1663_p1 = i_fu_102;
assign zext_ln5_fu_1686_p1 = lshr_ln5_1_fu_1677_p4;
endmodule 