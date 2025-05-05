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
wire   [6:0] add_ln11_fu_1600_p2;
reg   [6:0] add_ln11_reg_2323;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1611_p1;
reg   [5:0] trunc_ln11_reg_2429;
wire    ap_CS_fsm_state3;
wire   [2:0] buff_y_out_addr_3_reg_2437;
wire    ap_CS_fsm_state6;
wire   [2:0] buff_y_out_1_addr_3_reg_2442;
wire   [2:0] buff_y_out_2_addr_3_reg_2447;
wire   [2:0] buff_y_out_3_addr_3_reg_2452;
wire   [2:0] buff_y_out_4_addr_3_reg_2457;
wire   [2:0] buff_y_out_5_addr_3_reg_2462;
wire   [2:0] buff_y_out_6_addr_3_reg_2467;
wire   [2:0] buff_y_out_7_addr_3_reg_2472;
wire   [2:0] buff_y_out_addr_4_reg_2477;
wire   [2:0] buff_y_out_1_addr_4_reg_2482;
wire   [2:0] buff_y_out_2_addr_4_reg_2487;
wire   [2:0] buff_y_out_3_addr_4_reg_2492;
wire   [2:0] buff_y_out_4_addr_4_reg_2497;
wire   [2:0] buff_y_out_5_addr_4_reg_2502;
wire   [2:0] buff_y_out_6_addr_4_reg_2507;
wire   [2:0] buff_y_out_7_addr_4_reg_2512;
reg   [31:0] buff_y_out_load_reg_2517;
reg   [31:0] buff_y_out_1_load_reg_2522;
reg   [31:0] buff_y_out_2_load_reg_2527;
reg   [31:0] buff_y_out_3_load_reg_2532;
reg   [31:0] buff_y_out_4_load_reg_2537;
reg   [31:0] buff_y_out_5_load_reg_2542;
reg   [31:0] buff_y_out_6_load_reg_2547;
reg   [31:0] buff_y_out_7_load_reg_2552;
reg   [31:0] buff_y_out_load_1_reg_2557;
reg   [31:0] buff_y_out_1_load_1_reg_2562;
reg   [31:0] buff_y_out_2_load_1_reg_2567;
reg   [31:0] buff_y_out_3_load_1_reg_2572;
reg   [31:0] buff_y_out_4_load_1_reg_2577;
reg   [31:0] buff_y_out_5_load_1_reg_2582;
reg   [31:0] buff_y_out_6_load_1_reg_2587;
reg   [31:0] buff_y_out_7_load_1_reg_2592;
wire   [2:0] buff_y_out_addr_5_reg_2597;
wire    ap_CS_fsm_state7;
wire   [2:0] buff_y_out_1_addr_5_reg_2602;
wire   [2:0] buff_y_out_2_addr_5_reg_2607;
wire   [2:0] buff_y_out_3_addr_5_reg_2612;
wire   [2:0] buff_y_out_4_addr_5_reg_2617;
wire   [2:0] buff_y_out_5_addr_5_reg_2622;
wire   [2:0] buff_y_out_6_addr_5_reg_2627;
wire   [2:0] buff_y_out_7_addr_5_reg_2632;
wire   [2:0] buff_y_out_addr_6_reg_2637;
wire   [2:0] buff_y_out_1_addr_6_reg_2642;
wire   [2:0] buff_y_out_2_addr_6_reg_2647;
wire   [2:0] buff_y_out_3_addr_6_reg_2652;
wire   [2:0] buff_y_out_4_addr_6_reg_2657;
wire   [2:0] buff_y_out_5_addr_6_reg_2662;
wire   [2:0] buff_y_out_6_addr_6_reg_2667;
wire   [2:0] buff_y_out_7_addr_6_reg_2672;
reg   [31:0] buff_y_out_load_2_reg_2677;
reg   [31:0] buff_y_out_1_load_2_reg_2682;
reg   [31:0] buff_y_out_2_load_2_reg_2687;
reg   [31:0] buff_y_out_3_load_2_reg_2692;
reg   [31:0] buff_y_out_4_load_2_reg_2697;
reg   [31:0] buff_y_out_5_load_2_reg_2702;
reg   [31:0] buff_y_out_6_load_2_reg_2707;
reg   [31:0] buff_y_out_7_load_2_reg_2712;
reg   [31:0] buff_y_out_load_3_reg_2717;
reg   [31:0] buff_y_out_1_load_3_reg_2722;
reg   [31:0] buff_y_out_2_load_3_reg_2727;
reg   [31:0] buff_y_out_3_load_3_reg_2732;
reg   [31:0] buff_y_out_4_load_3_reg_2737;
reg   [31:0] buff_y_out_5_load_3_reg_2742;
reg   [31:0] buff_y_out_6_load_3_reg_2747;
reg   [31:0] buff_y_out_7_load_3_reg_2752;
wire   [2:0] buff_y_out_addr_7_reg_2757;
wire    ap_CS_fsm_state8;
wire   [2:0] buff_y_out_1_addr_7_reg_2762;
wire   [2:0] buff_y_out_2_addr_7_reg_2767;
wire   [2:0] buff_y_out_3_addr_7_reg_2772;
wire   [2:0] buff_y_out_4_addr_7_reg_2777;
wire   [2:0] buff_y_out_5_addr_7_reg_2782;
wire   [2:0] buff_y_out_6_addr_7_reg_2787;
wire   [2:0] buff_y_out_7_addr_7_reg_2792;
wire   [2:0] buff_y_out_addr_8_reg_2797;
wire   [2:0] buff_y_out_1_addr_8_reg_2802;
wire   [2:0] buff_y_out_2_addr_8_reg_2807;
wire   [2:0] buff_y_out_3_addr_8_reg_2812;
wire   [2:0] buff_y_out_4_addr_8_reg_2817;
wire   [2:0] buff_y_out_5_addr_8_reg_2822;
wire   [2:0] buff_y_out_6_addr_8_reg_2827;
wire   [2:0] buff_y_out_7_addr_8_reg_2832;
reg   [31:0] buff_y_out_load_4_reg_2837;
reg   [31:0] buff_y_out_1_load_4_reg_2842;
reg   [31:0] buff_y_out_2_load_4_reg_2847;
reg   [31:0] buff_y_out_3_load_4_reg_2852;
reg   [31:0] buff_y_out_4_load_4_reg_2857;
reg   [31:0] buff_y_out_5_load_4_reg_2862;
reg   [31:0] buff_y_out_6_load_4_reg_2867;
reg   [31:0] buff_y_out_7_load_4_reg_2872;
reg   [31:0] buff_y_out_load_5_reg_2877;
reg   [31:0] buff_y_out_1_load_5_reg_2882;
reg   [31:0] buff_y_out_2_load_5_reg_2887;
reg   [31:0] buff_y_out_3_load_5_reg_2892;
reg   [31:0] buff_y_out_4_load_5_reg_2897;
reg   [31:0] buff_y_out_5_load_5_reg_2902;
reg   [31:0] buff_y_out_6_load_5_reg_2907;
reg   [31:0] buff_y_out_7_load_5_reg_2912;
reg   [31:0] buff_y_out_load_6_reg_2917;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_y_out_1_load_6_reg_2922;
reg   [31:0] buff_y_out_2_load_6_reg_2927;
reg   [31:0] buff_y_out_3_load_6_reg_2932;
reg   [31:0] buff_y_out_4_load_6_reg_2937;
reg   [31:0] buff_y_out_5_load_6_reg_2942;
reg   [31:0] buff_y_out_6_load_6_reg_2947;
reg   [31:0] buff_y_out_7_load_6_reg_2952;
reg   [31:0] buff_y_out_load_7_reg_2957;
reg   [31:0] buff_y_out_1_load_7_reg_2962;
reg   [31:0] buff_y_out_2_load_7_reg_2967;
reg   [31:0] buff_y_out_3_load_7_reg_2972;
reg   [31:0] buff_y_out_4_load_7_reg_2977;
reg   [31:0] buff_y_out_5_load_7_reg_2982;
reg   [31:0] buff_y_out_6_load_7_reg_2987;
reg   [31:0] buff_y_out_7_load_7_reg_2992;
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
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_ap_idle;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_7_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_1_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_2_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_3_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_4_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_5_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_6_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_7_ce0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_d0;
wire   [2:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_d0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_opcode;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_din1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_ce;
wire    grp_atax_Pipeline_lprd_2_fu_1379_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1379_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1379_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1379_ap_ready;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_0_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_d0;
wire    grp_atax_Pipeline_lp3_fu_1408_ap_start;
wire    grp_atax_Pipeline_lp3_fu_1408_ap_done;
wire    grp_atax_Pipeline_lp3_fu_1408_ap_idle;
wire    grp_atax_Pipeline_lp3_fu_1408_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_1_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_2_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_3_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_4_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_4_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_4_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_5_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_5_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_5_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_6_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_6_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_6_ce1;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_7_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_fu_1408_buff_A_7_address1;
wire    grp_atax_Pipeline_lp3_fu_1408_buff_A_7_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_2_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_4_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_4_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_6_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_6_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_3_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_5_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_5_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_fu_1408_tmp1_7_address0;
wire    grp_atax_Pipeline_lp3_fu_1408_tmp1_7_ce0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_6387_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_6387_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_6286_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_6286_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_6185_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_6185_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_6084_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_6084_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5983_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5983_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5882_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5882_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5781_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5781_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5680_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5680_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5579_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5579_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5478_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5478_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5377_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5377_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5276_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5276_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5175_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5175_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_5074_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_5074_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4973_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4973_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4872_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4872_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4771_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4771_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4670_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4670_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4569_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4569_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4468_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4468_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4367_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4367_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4266_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4266_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4165_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4165_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_4064_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_4064_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3963_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3963_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3862_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3862_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3761_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3761_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3660_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3660_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3559_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3559_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3458_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3458_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3357_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3357_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3256_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3256_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3155_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3155_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_3054_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_3054_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2953_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2953_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2852_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2852_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2751_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2751_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2650_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2650_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2549_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2549_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2448_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2448_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2347_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2347_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2246_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2246_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2145_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2145_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_2044_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_2044_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1943_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1943_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1842_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1842_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1741_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1741_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1640_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1640_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1539_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1539_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1438_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1438_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1337_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1337_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1236_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1236_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1135_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1135_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_1034_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_1034_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_933_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_933_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_832_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_832_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_731_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_731_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_630_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_630_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_529_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_529_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_428_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_428_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_327_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_327_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_226_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_226_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_1_125_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_1_125_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_add58_124_out;
wire    grp_atax_Pipeline_lp3_fu_1408_add58_124_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1572_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_y_out_write;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_1_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_2_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_3_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_4_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_5_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_6_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_7_ce0;
reg    grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start_reg;
wire   [0:0] icmp_ln11_fu_1594_p2;
reg    grp_atax_Pipeline_lprd_2_fu_1379_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_atax_Pipeline_lp3_fu_1408_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_atax_Pipeline_lpwr_1_fu_1572_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln11_fu_1606_p1;
wire   [63:0] zext_ln5_fu_1626_p1;
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
wire   [2:0] trunc_ln11_1_fu_1614_p1;
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
wire   [31:0] bitcast_ln12_fu_1654_p1;
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
wire   [2:0] lshr_ln5_fu_1617_p4;
wire   [31:0] grp_fu_2997_p2;
reg   [31:0] grp_fu_2997_p0;
reg   [31:0] grp_fu_2997_p1;
reg    grp_fu_2997_ce;
wire   [31:0] grp_fu_3001_p2;
reg   [31:0] grp_fu_3001_p0;
reg   [31:0] grp_fu_3001_p1;
reg    grp_fu_3001_ce;
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
#0 grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lprd_2_fu_1379_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_fu_1408_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1572_ap_start_reg = 1'b0;
#0 i_fu_102 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_1_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0),.ce0(buff_x_2_ce0),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_2_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0),.ce0(buff_x_3_ce0),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_3_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_4_address0),.ce0(buff_x_4_ce0),.we0(buff_x_4_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_4_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_5_address0),.ce0(buff_x_5_ce0),.we0(buff_x_5_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_5_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_6_address0),.ce0(buff_x_6_ce0),.we0(buff_x_6_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_6_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_7_address0),.ce0(buff_x_7_ce0),.we0(buff_x_7_we0_local),.d0(bitcast_ln12_fu_1654_p1),.q0(buff_x_7_q0));
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
atax_atax_Pipeline_lp1_lp2 grp_atax_Pipeline_lp1_lp2_fu_1351(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start),.ap_done(grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done),.ap_idle(grp_atax_Pipeline_lp1_lp2_fu_1351_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_lp2_fu_1351_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_x_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_2_address0),.buff_x_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_2_ce0),.buff_x_2_q0(buff_x_2_q0),.buff_x_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_3_address0),.buff_x_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_3_ce0),.buff_x_3_q0(buff_x_3_q0),.buff_x_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_4_address0),.buff_x_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_4_ce0),.buff_x_4_q0(buff_x_4_q0),.buff_x_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_5_address0),.buff_x_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_5_ce0),.buff_x_5_q0(buff_x_5_q0),.buff_x_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_6_address0),.buff_x_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_6_ce0),.buff_x_6_q0(buff_x_6_q0),.buff_x_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_7_address0),.buff_x_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_7_ce0),.buff_x_7_q0(buff_x_7_q0),.tmp1_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_d0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_d0),.tmp1_3_q0(tmp1_3_q0),.tmp1_4_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_ce0),.tmp1_4_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_we0),.tmp1_4_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_d0),.tmp1_4_q0(tmp1_4_q0),.tmp1_5_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_ce0),.tmp1_5_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_we0),.tmp1_5_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_d0),.tmp1_5_q0(tmp1_5_q0),.tmp1_6_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_ce0),.tmp1_6_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_we0),.tmp1_6_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_d0),.tmp1_6_q0(tmp1_6_q0),.tmp1_7_address0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_ce0),.tmp1_7_we0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_we0),.tmp1_7_d0(grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_d0),.tmp1_7_q0(tmp1_7_q0),.grp_fu_2997_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_din0),.grp_fu_2997_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_din1),.grp_fu_2997_p_opcode(grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_opcode),.grp_fu_2997_p_dout0(grp_fu_2997_p2),.grp_fu_2997_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_ce),.grp_fu_3001_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_din0),.grp_fu_3001_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_din1),.grp_fu_3001_p_dout0(grp_fu_3001_p2),.grp_fu_3001_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_ce));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1379(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1379_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1379_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1379_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1379_ap_ready),.i(trunc_ln11_reg_2429),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_4_address0),.A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_5_address0),.A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_6_address0),.A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_atax_Pipeline_lprd_2_fu_1379_A_7_address0),.A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1379_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_d0),.buff_A_4_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_ce0),.buff_A_4_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_we0),.buff_A_4_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_d0),.buff_A_5_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_ce0),.buff_A_5_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_we0),.buff_A_5_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_d0),.buff_A_6_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_ce0),.buff_A_6_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_we0),.buff_A_6_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_d0),.buff_A_7_address0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_ce0),.buff_A_7_we0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_we0),.buff_A_7_d0(grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_d0));
atax_atax_Pipeline_lp3 grp_atax_Pipeline_lp3_fu_1408(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_fu_1408_ap_start),.ap_done(grp_atax_Pipeline_lp3_fu_1408_ap_done),.ap_idle(grp_atax_Pipeline_lp3_fu_1408_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_fu_1408_ap_ready),.buff_y_out_7_load_7(buff_y_out_7_load_7_reg_2992),.buff_y_out_6_load_7(buff_y_out_6_load_7_reg_2987),.buff_y_out_5_load_7(buff_y_out_5_load_7_reg_2982),.buff_y_out_4_load_7(buff_y_out_4_load_7_reg_2977),.buff_y_out_3_load_7(buff_y_out_3_load_7_reg_2972),.buff_y_out_2_load_7(buff_y_out_2_load_7_reg_2967),.buff_y_out_1_load_7(buff_y_out_1_load_7_reg_2962),.buff_y_out_load_7(buff_y_out_load_7_reg_2957),.buff_y_out_7_load_6(buff_y_out_7_load_6_reg_2952),.buff_y_out_6_load_6(buff_y_out_6_load_6_reg_2947),.buff_y_out_5_load_6(buff_y_out_5_load_6_reg_2942),.buff_y_out_4_load_6(buff_y_out_4_load_6_reg_2937),.buff_y_out_3_load_6(buff_y_out_3_load_6_reg_2932),.buff_y_out_2_load_6(buff_y_out_2_load_6_reg_2927),.buff_y_out_1_load_6(buff_y_out_1_load_6_reg_2922),.buff_y_out_load_6(buff_y_out_load_6_reg_2917),.buff_y_out_7_load_5(buff_y_out_7_load_5_reg_2912),.buff_y_out_6_load_5(buff_y_out_6_load_5_reg_2907),.buff_y_out_5_load_5(buff_y_out_5_load_5_reg_2902),.buff_y_out_4_load_5(buff_y_out_4_load_5_reg_2897),.buff_y_out_3_load_5(buff_y_out_3_load_5_reg_2892),.buff_y_out_2_load_5(buff_y_out_2_load_5_reg_2887),.buff_y_out_1_load_5(buff_y_out_1_load_5_reg_2882),.buff_y_out_load_5(buff_y_out_load_5_reg_2877),.buff_y_out_7_load_4(buff_y_out_7_load_4_reg_2872),.buff_y_out_6_load_4(buff_y_out_6_load_4_reg_2867),.buff_y_out_5_load_4(buff_y_out_5_load_4_reg_2862),.buff_y_out_4_load_4(buff_y_out_4_load_4_reg_2857),.buff_y_out_3_load_4(buff_y_out_3_load_4_reg_2852),.buff_y_out_2_load_4(buff_y_out_2_load_4_reg_2847),.buff_y_out_1_load_4(buff_y_out_1_load_4_reg_2842),.buff_y_out_load_4(buff_y_out_load_4_reg_2837),.buff_y_out_7_load_3(buff_y_out_7_load_3_reg_2752),.buff_y_out_6_load_3(buff_y_out_6_load_3_reg_2747),.buff_y_out_5_load_3(buff_y_out_5_load_3_reg_2742),.buff_y_out_4_load_3(buff_y_out_4_load_3_reg_2737),.buff_y_out_3_load_3(buff_y_out_3_load_3_reg_2732),.buff_y_out_2_load_3(buff_y_out_2_load_3_reg_2727),.buff_y_out_1_load_3(buff_y_out_1_load_3_reg_2722),.buff_y_out_load_3(buff_y_out_load_3_reg_2717),.buff_y_out_7_load_2(buff_y_out_7_load_2_reg_2712),.buff_y_out_6_load_2(buff_y_out_6_load_2_reg_2707),.buff_y_out_5_load_2(buff_y_out_5_load_2_reg_2702),.buff_y_out_4_load_2(buff_y_out_4_load_2_reg_2697),.buff_y_out_3_load_2(buff_y_out_3_load_2_reg_2692),.buff_y_out_2_load_2(buff_y_out_2_load_2_reg_2687),.buff_y_out_1_load_2(buff_y_out_1_load_2_reg_2682),.buff_y_out_load_2(buff_y_out_load_2_reg_2677),.buff_y_out_7_load_1(buff_y_out_7_load_1_reg_2592),.buff_y_out_6_load_1(buff_y_out_6_load_1_reg_2587),.buff_y_out_5_load_1(buff_y_out_5_load_1_reg_2582),.buff_y_out_4_load_1(buff_y_out_4_load_1_reg_2577),.buff_y_out_3_load_1(buff_y_out_3_load_1_reg_2572),.buff_y_out_2_load_1(buff_y_out_2_load_1_reg_2567),.buff_y_out_1_load_1(buff_y_out_1_load_1_reg_2562),.buff_y_out_load_1(buff_y_out_load_1_reg_2557),.buff_y_out_7_load(buff_y_out_7_load_reg_2552),.buff_y_out_6_load(buff_y_out_6_load_reg_2547),.buff_y_out_5_load(buff_y_out_5_load_reg_2542),.buff_y_out_4_load(buff_y_out_4_load_reg_2537),.buff_y_out_3_load(buff_y_out_3_load_reg_2532),.buff_y_out_2_load(buff_y_out_2_load_reg_2527),.buff_y_out_1_load(buff_y_out_1_load_reg_2522),.buff_y_out_load(buff_y_out_load_reg_2517),.buff_A_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_4_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_5_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_6_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_7_address0(grp_atax_Pipeline_lp3_fu_1408_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp3_fu_1408_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp3_fu_1408_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp3_fu_1408_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.tmp1_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_4_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_4_ce0),.tmp1_4_q0(tmp1_4_q0),.tmp1_6_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_6_ce0),.tmp1_6_q0(tmp1_6_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.tmp1_5_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_5_ce0),.tmp1_5_q0(tmp1_5_q0),.tmp1_7_address0(grp_atax_Pipeline_lp3_fu_1408_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp3_fu_1408_tmp1_7_ce0),.tmp1_7_q0(tmp1_7_q0),.add58_1_6387_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_6387_out),.add58_1_6387_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_6387_out_ap_vld),.add58_1_6286_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_6286_out),.add58_1_6286_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_6286_out_ap_vld),.add58_1_6185_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_6185_out),.add58_1_6185_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_6185_out_ap_vld),.add58_1_6084_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_6084_out),.add58_1_6084_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_6084_out_ap_vld),.add58_1_5983_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5983_out),.add58_1_5983_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5983_out_ap_vld),.add58_1_5882_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5882_out),.add58_1_5882_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5882_out_ap_vld),.add58_1_5781_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5781_out),.add58_1_5781_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5781_out_ap_vld),.add58_1_5680_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5680_out),.add58_1_5680_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5680_out_ap_vld),.add58_1_5579_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5579_out),.add58_1_5579_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5579_out_ap_vld),.add58_1_5478_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5478_out),.add58_1_5478_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5478_out_ap_vld),.add58_1_5377_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5377_out),.add58_1_5377_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5377_out_ap_vld),.add58_1_5276_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5276_out),.add58_1_5276_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5276_out_ap_vld),.add58_1_5175_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5175_out),.add58_1_5175_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5175_out_ap_vld),.add58_1_5074_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_5074_out),.add58_1_5074_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_5074_out_ap_vld),.add58_1_4973_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4973_out),.add58_1_4973_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4973_out_ap_vld),.add58_1_4872_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4872_out),.add58_1_4872_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4872_out_ap_vld),.add58_1_4771_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4771_out),.add58_1_4771_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4771_out_ap_vld),.add58_1_4670_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4670_out),.add58_1_4670_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4670_out_ap_vld),.add58_1_4569_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4569_out),.add58_1_4569_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4569_out_ap_vld),.add58_1_4468_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4468_out),.add58_1_4468_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4468_out_ap_vld),.add58_1_4367_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4367_out),.add58_1_4367_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4367_out_ap_vld),.add58_1_4266_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4266_out),.add58_1_4266_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4266_out_ap_vld),.add58_1_4165_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4165_out),.add58_1_4165_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4165_out_ap_vld),.add58_1_4064_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_4064_out),.add58_1_4064_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_4064_out_ap_vld),.add58_1_3963_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3963_out),.add58_1_3963_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3963_out_ap_vld),.add58_1_3862_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3862_out),.add58_1_3862_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3862_out_ap_vld),.add58_1_3761_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3761_out),.add58_1_3761_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3761_out_ap_vld),.add58_1_3660_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3660_out),.add58_1_3660_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3660_out_ap_vld),.add58_1_3559_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3559_out),.add58_1_3559_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3559_out_ap_vld),.add58_1_3458_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3458_out),.add58_1_3458_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3458_out_ap_vld),.add58_1_3357_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3357_out),.add58_1_3357_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3357_out_ap_vld),.add58_1_3256_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3256_out),.add58_1_3256_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3256_out_ap_vld),.add58_1_3155_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3155_out),.add58_1_3155_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3155_out_ap_vld),.add58_1_3054_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_3054_out),.add58_1_3054_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_3054_out_ap_vld),.add58_1_2953_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2953_out),.add58_1_2953_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2953_out_ap_vld),.add58_1_2852_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2852_out),.add58_1_2852_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2852_out_ap_vld),.add58_1_2751_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2751_out),.add58_1_2751_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2751_out_ap_vld),.add58_1_2650_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2650_out),.add58_1_2650_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2650_out_ap_vld),.add58_1_2549_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2549_out),.add58_1_2549_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2549_out_ap_vld),.add58_1_2448_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2448_out),.add58_1_2448_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2448_out_ap_vld),.add58_1_2347_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2347_out),.add58_1_2347_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2347_out_ap_vld),.add58_1_2246_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2246_out),.add58_1_2246_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2246_out_ap_vld),.add58_1_2145_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2145_out),.add58_1_2145_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2145_out_ap_vld),.add58_1_2044_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_2044_out),.add58_1_2044_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_2044_out_ap_vld),.add58_1_1943_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1943_out),.add58_1_1943_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1943_out_ap_vld),.add58_1_1842_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1842_out),.add58_1_1842_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1842_out_ap_vld),.add58_1_1741_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1741_out),.add58_1_1741_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1741_out_ap_vld),.add58_1_1640_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1640_out),.add58_1_1640_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1640_out_ap_vld),.add58_1_1539_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1539_out),.add58_1_1539_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1539_out_ap_vld),.add58_1_1438_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1438_out),.add58_1_1438_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1438_out_ap_vld),.add58_1_1337_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1337_out),.add58_1_1337_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1337_out_ap_vld),.add58_1_1236_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1236_out),.add58_1_1236_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1236_out_ap_vld),.add58_1_1135_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1135_out),.add58_1_1135_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1135_out_ap_vld),.add58_1_1034_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_1034_out),.add58_1_1034_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_1034_out_ap_vld),.add58_1_933_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_933_out),.add58_1_933_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_933_out_ap_vld),.add58_1_832_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_832_out),.add58_1_832_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_832_out_ap_vld),.add58_1_731_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_731_out),.add58_1_731_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_731_out_ap_vld),.add58_1_630_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_630_out),.add58_1_630_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_630_out_ap_vld),.add58_1_529_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_529_out),.add58_1_529_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_529_out_ap_vld),.add58_1_428_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_428_out),.add58_1_428_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_428_out_ap_vld),.add58_1_327_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_327_out),.add58_1_327_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_327_out_ap_vld),.add58_1_226_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_226_out),.add58_1_226_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_226_out_ap_vld),.add58_1_125_out(grp_atax_Pipeline_lp3_fu_1408_add58_1_125_out),.add58_1_125_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_1_125_out_ap_vld),.add58_124_out(grp_atax_Pipeline_lp3_fu_1408_add58_124_out),.add58_124_out_ap_vld(grp_atax_Pipeline_lp3_fu_1408_add58_124_out_ap_vld),.grp_fu_2997_p_din0(grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_din0),.grp_fu_2997_p_din1(grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_din1),.grp_fu_2997_p_opcode(grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_opcode),.grp_fu_2997_p_dout0(grp_fu_2997_p2),.grp_fu_2997_p_ce(grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_ce),.grp_fu_3001_p_din0(grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_din0),.grp_fu_3001_p_din1(grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_din1),.grp_fu_3001_p_dout0(grp_fu_3001_p2),.grp_fu_3001_p_ce(grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1572(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1572_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1572_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1572_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1572_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1572_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1572_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0),.buff_y_out_4_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_4_ce0),.buff_y_out_4_q0(buff_y_out_4_q0),.buff_y_out_5_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_5_ce0),.buff_y_out_5_q0(buff_y_out_5_q0),.buff_y_out_6_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_6_ce0),.buff_y_out_6_q0(buff_y_out_6_q0),.buff_y_out_7_address0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_7_ce0),.buff_y_out_7_q0(buff_y_out_7_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U224(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2997_p0),.din1(grp_fu_2997_p1),.ce(grp_fu_2997_ce),.dout(grp_fu_2997_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3001_p0),.din1(grp_fu_3001_p1),.ce(grp_fu_3001_ce),.dout(grp_fu_3001_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1594_p2 == 1'd1))) begin
            grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_fu_1408_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_Pipeline_lp3_fu_1408_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_fu_1408_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_fu_1408_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1379_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_atax_Pipeline_lprd_2_fu_1379_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1379_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1379_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1572_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_atax_Pipeline_lpwr_1_fu_1572_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1572_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1572_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_102 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_102 <= add_ln11_reg_2323;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_2323 <= add_ln11_fu_1600_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_load_1_reg_2562 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_2522 <= buff_y_out_1_q1;
        buff_y_out_2_load_1_reg_2567 <= buff_y_out_2_q0;
        buff_y_out_2_load_reg_2527 <= buff_y_out_2_q1;
        buff_y_out_3_load_1_reg_2572 <= buff_y_out_3_q0;
        buff_y_out_3_load_reg_2532 <= buff_y_out_3_q1;
        buff_y_out_4_load_1_reg_2577 <= buff_y_out_4_q0;
        buff_y_out_4_load_reg_2537 <= buff_y_out_4_q1;
        buff_y_out_5_load_1_reg_2582 <= buff_y_out_5_q0;
        buff_y_out_5_load_reg_2542 <= buff_y_out_5_q1;
        buff_y_out_6_load_1_reg_2587 <= buff_y_out_6_q0;
        buff_y_out_6_load_reg_2547 <= buff_y_out_6_q1;
        buff_y_out_7_load_1_reg_2592 <= buff_y_out_7_q0;
        buff_y_out_7_load_reg_2552 <= buff_y_out_7_q1;
        buff_y_out_load_1_reg_2557 <= buff_y_out_q0;
        buff_y_out_load_reg_2517 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_load_2_reg_2682 <= buff_y_out_1_q0;
        buff_y_out_1_load_3_reg_2722 <= buff_y_out_1_q1;
        buff_y_out_2_load_2_reg_2687 <= buff_y_out_2_q0;
        buff_y_out_2_load_3_reg_2727 <= buff_y_out_2_q1;
        buff_y_out_3_load_2_reg_2692 <= buff_y_out_3_q0;
        buff_y_out_3_load_3_reg_2732 <= buff_y_out_3_q1;
        buff_y_out_4_load_2_reg_2697 <= buff_y_out_4_q0;
        buff_y_out_4_load_3_reg_2737 <= buff_y_out_4_q1;
        buff_y_out_5_load_2_reg_2702 <= buff_y_out_5_q0;
        buff_y_out_5_load_3_reg_2742 <= buff_y_out_5_q1;
        buff_y_out_6_load_2_reg_2707 <= buff_y_out_6_q0;
        buff_y_out_6_load_3_reg_2747 <= buff_y_out_6_q1;
        buff_y_out_7_load_2_reg_2712 <= buff_y_out_7_q0;
        buff_y_out_7_load_3_reg_2752 <= buff_y_out_7_q1;
        buff_y_out_load_2_reg_2677 <= buff_y_out_q0;
        buff_y_out_load_3_reg_2717 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_load_4_reg_2842 <= buff_y_out_1_q0;
        buff_y_out_1_load_5_reg_2882 <= buff_y_out_1_q1;
        buff_y_out_2_load_4_reg_2847 <= buff_y_out_2_q0;
        buff_y_out_2_load_5_reg_2887 <= buff_y_out_2_q1;
        buff_y_out_3_load_4_reg_2852 <= buff_y_out_3_q0;
        buff_y_out_3_load_5_reg_2892 <= buff_y_out_3_q1;
        buff_y_out_4_load_4_reg_2857 <= buff_y_out_4_q0;
        buff_y_out_4_load_5_reg_2897 <= buff_y_out_4_q1;
        buff_y_out_5_load_4_reg_2862 <= buff_y_out_5_q0;
        buff_y_out_5_load_5_reg_2902 <= buff_y_out_5_q1;
        buff_y_out_6_load_4_reg_2867 <= buff_y_out_6_q0;
        buff_y_out_6_load_5_reg_2907 <= buff_y_out_6_q1;
        buff_y_out_7_load_4_reg_2872 <= buff_y_out_7_q0;
        buff_y_out_7_load_5_reg_2912 <= buff_y_out_7_q1;
        buff_y_out_load_4_reg_2837 <= buff_y_out_q0;
        buff_y_out_load_5_reg_2877 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_load_6_reg_2922 <= buff_y_out_1_q0;
        buff_y_out_1_load_7_reg_2962 <= buff_y_out_1_q1;
        buff_y_out_2_load_6_reg_2927 <= buff_y_out_2_q0;
        buff_y_out_2_load_7_reg_2967 <= buff_y_out_2_q1;
        buff_y_out_3_load_6_reg_2932 <= buff_y_out_3_q0;
        buff_y_out_3_load_7_reg_2972 <= buff_y_out_3_q1;
        buff_y_out_4_load_6_reg_2937 <= buff_y_out_4_q0;
        buff_y_out_4_load_7_reg_2977 <= buff_y_out_4_q1;
        buff_y_out_5_load_6_reg_2942 <= buff_y_out_5_q0;
        buff_y_out_5_load_7_reg_2982 <= buff_y_out_5_q1;
        buff_y_out_6_load_6_reg_2947 <= buff_y_out_6_q0;
        buff_y_out_6_load_7_reg_2987 <= buff_y_out_6_q1;
        buff_y_out_7_load_6_reg_2952 <= buff_y_out_7_q0;
        buff_y_out_7_load_7_reg_2992 <= buff_y_out_7_q1;
        buff_y_out_load_6_reg_2917 <= buff_y_out_q0;
        buff_y_out_load_7_reg_2957 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_reg_2429 <= trunc_ln11_fu_1611_p1;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_fu_1408_ap_done == 1'b0)) begin
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
    if ((grp_atax_Pipeline_lpwr_1_fu_1572_ap_done == 1'b0)) begin
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
    if ((grp_atax_Pipeline_lprd_2_fu_1379_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (grp_atax_Pipeline_lpwr_1_fu_1572_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_atax_Pipeline_lpwr_1_fu_1572_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_fu_1408_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_fu_1408_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1379_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd1))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_2_address0;
    end else begin
        buff_x_2_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_2_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd2))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_3_address0;
    end else begin
        buff_x_3_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_3_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_4_address0;
    end else begin
        buff_x_4_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_4_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd4))) begin
        buff_x_4_we0_local = 1'b1;
    end else begin
        buff_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_5_address0;
    end else begin
        buff_x_5_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_5_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd5))) begin
        buff_x_5_we0_local = 1'b1;
    end else begin
        buff_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_6_address0;
    end else begin
        buff_x_6_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_6_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd6))) begin
        buff_x_6_we0_local = 1'b1;
    end else begin
        buff_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_7_address0;
    end else begin
        buff_x_7_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_7_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd7))) begin
        buff_x_7_we0_local = 1'b1;
    end else begin
        buff_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_address0;
    end else begin
        buff_x_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_buff_x_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd0))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = buff_y_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_7_reg_2762;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_5_reg_2602;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_2442;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address0_local = 64'd1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_8_reg_2802;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_6_reg_2642;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_4_reg_2482;
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
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4973_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3357_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1741_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_125_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_d0_local = 32'd0;
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5781_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4165_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2549_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_933_out;
    end else begin
        buff_y_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd1)))) begin
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
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = buff_y_out_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_7_reg_2767;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_5_reg_2607;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_3_reg_2447;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_address0_local = 64'd1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_8_reg_2807;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_6_reg_2647;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_4_reg_2487;
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
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5074_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3458_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1842_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_226_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_d0_local = 32'd0;
    end else begin
        buff_y_out_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5882_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4266_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2650_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_2_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1034_out;
    end else begin
        buff_y_out_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd2)))) begin
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
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = buff_y_out_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_7_reg_2772;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_5_reg_2612;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_3_reg_2452;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_address0_local = 64'd1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_8_reg_2812;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_6_reg_2652;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_4_reg_2492;
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
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5175_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3559_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1943_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_327_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_d0_local = 32'd0;
    end else begin
        buff_y_out_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5983_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4367_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2751_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_3_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1135_out;
    end else begin
        buff_y_out_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd3)))) begin
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
        buff_y_out_4_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_4_address0;
    end else begin
        buff_y_out_4_address0 = buff_y_out_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_7_reg_2777;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_5_reg_2617;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_3_reg_2457;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_4_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_4_address0_local = 64'd1;
    end else begin
        buff_y_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_8_reg_2817;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_6_reg_2657;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_address1_local = buff_y_out_4_addr_4_reg_2497;
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
        buff_y_out_4_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_4_ce0;
    end else begin
        buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_4_ce1_local = 1'b1;
    end else begin
        buff_y_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5276_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3660_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2044_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_4_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_428_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_4_d0_local = 32'd0;
    end else begin
        buff_y_out_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_6084_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4468_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2852_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_4_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1236_out;
    end else begin
        buff_y_out_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd4)))) begin
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
        buff_y_out_5_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_5_address0;
    end else begin
        buff_y_out_5_address0 = buff_y_out_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_7_reg_2782;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_5_reg_2622;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_3_reg_2462;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_5_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_5_address0_local = 64'd1;
    end else begin
        buff_y_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_8_reg_2822;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_6_reg_2662;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_address1_local = buff_y_out_5_addr_4_reg_2502;
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
        buff_y_out_5_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_5_ce0;
    end else begin
        buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_5_ce1_local = 1'b1;
    end else begin
        buff_y_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5377_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3761_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2145_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_5_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_529_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_5_d0_local = 32'd0;
    end else begin
        buff_y_out_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_6185_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4569_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2953_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_5_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1337_out;
    end else begin
        buff_y_out_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd5)))) begin
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
        buff_y_out_6_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_6_address0;
    end else begin
        buff_y_out_6_address0 = buff_y_out_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_7_reg_2787;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_5_reg_2627;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_3_reg_2467;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_6_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_6_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_6_address0_local = 64'd1;
    end else begin
        buff_y_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_8_reg_2827;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_6_reg_2667;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_address1_local = buff_y_out_6_addr_4_reg_2507;
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
        buff_y_out_6_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_6_ce0;
    end else begin
        buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_6_ce1_local = 1'b1;
    end else begin
        buff_y_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5478_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3862_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2246_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_6_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_630_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_6_d0_local = 32'd0;
    end else begin
        buff_y_out_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_6286_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4670_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3054_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_6_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1438_out;
    end else begin
        buff_y_out_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd6)))) begin
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
        buff_y_out_7_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_7_address0;
    end else begin
        buff_y_out_7_address0 = buff_y_out_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_7_reg_2792;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_5_reg_2632;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_3_reg_2472;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_7_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_7_address0_local = 64'd1;
    end else begin
        buff_y_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_8_reg_2832;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_6_reg_2672;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_address1_local = buff_y_out_7_addr_4_reg_2512;
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
        buff_y_out_7_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_7_ce0;
    end else begin
        buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_7_ce1_local = 1'b1;
    end else begin
        buff_y_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5579_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3963_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2347_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_7_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_731_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_7_d0_local = 32'd0;
    end else begin
        buff_y_out_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_6387_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4771_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3155_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_7_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1539_out;
    end else begin
        buff_y_out_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd7)))) begin
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
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = buff_y_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address0_local = buff_y_out_addr_7_reg_2757;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address0_local = buff_y_out_addr_5_reg_2597;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_2437;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_address0_local = zext_ln5_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address0_local = 64'd1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address1_local = buff_y_out_addr_8_reg_2797;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address1_local = buff_y_out_addr_6_reg_2637;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address1_local = buff_y_out_addr_4_reg_2477;
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
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1572_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4872_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_3256_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_1640_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1408_add58_124_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_d0_local = 32'd0;
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_5680_out;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_4064_out;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_2448_out;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1408_add58_1_832_out;
    end else begin
        buff_y_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd0)))) begin
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
        grp_fu_2997_ce = grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2997_ce = grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_ce;
    end else begin
        grp_fu_2997_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2997_p0 = grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2997_p0 = grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_din0;
    end else begin
        grp_fu_2997_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2997_p1 = grp_atax_Pipeline_lp3_fu_1408_grp_fu_2997_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2997_p1 = grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_2997_p_din1;
    end else begin
        grp_fu_2997_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3001_ce = grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3001_ce = grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_ce;
    end else begin
        grp_fu_3001_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3001_p0 = grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3001_p0 = grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_din0;
    end else begin
        grp_fu_3001_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3001_p1 = grp_atax_Pipeline_lp3_fu_1408_grp_fu_3001_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3001_p1 = grp_atax_Pipeline_lp1_lp2_fu_1351_grp_fu_3001_p_din1;
    end else begin
        grp_fu_3001_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_ce0;
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
        tmp1_1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_ce0;
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
        tmp1_2_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd2))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_ce0;
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
        tmp1_3_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_address0;
    end else begin
        tmp1_4_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_ce0;
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
        tmp1_4_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_d0;
    end else begin
        tmp1_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_4_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_4_we0;
    end else begin
        tmp1_4_we0 = tmp1_4_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd4))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_address0;
    end else begin
        tmp1_5_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_ce0;
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
        tmp1_5_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_d0;
    end else begin
        tmp1_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_5_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_5_we0;
    end else begin
        tmp1_5_we0 = tmp1_5_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd5))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_address0;
    end else begin
        tmp1_6_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_ce0;
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
        tmp1_6_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_d0;
    end else begin
        tmp1_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_6_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_6_we0;
    end else begin
        tmp1_6_we0 = tmp1_6_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd6))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_address0;
    end else begin
        tmp1_7_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_ce0;
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
        tmp1_7_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_d0;
    end else begin
        tmp1_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_7_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_7_we0;
    end else begin
        tmp1_7_we0 = tmp1_7_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd7))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1626_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_fu_1408_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_ce0;
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
        tmp1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1351_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1614_p1 == 3'd0))) begin
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
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1572_y_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1594_p2 == 1'd1))) begin
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
            if (((grp_atax_Pipeline_lprd_2_fu_1379_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_Pipeline_lp1_lp2_fu_1351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((grp_atax_Pipeline_lp3_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((1'b1 == ap_CS_fsm_state16) & (grp_atax_Pipeline_lpwr_1_fu_1572_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_3_ce0;
assign A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_4_address0;
assign A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_4_ce0;
assign A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_5_address0;
assign A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_5_ce0;
assign A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_6_address0;
assign A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_6_ce0;
assign A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1379_A_7_address0;
assign A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1379_A_7_ce0;
assign add_ln11_fu_1600_p2 = (i_fu_102 + 7'd1);
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
assign bitcast_ln12_fu_1654_p1 = x_q0;
assign buff_y_out_1_addr_3_reg_2442 = 64'd2;
assign buff_y_out_1_addr_4_reg_2482 = 64'd3;
assign buff_y_out_1_addr_5_reg_2602 = 64'd4;
assign buff_y_out_1_addr_6_reg_2642 = 64'd5;
assign buff_y_out_1_addr_7_reg_2762 = 64'd6;
assign buff_y_out_1_addr_8_reg_2802 = 64'd7;
assign buff_y_out_2_addr_3_reg_2447 = 64'd2;
assign buff_y_out_2_addr_4_reg_2487 = 64'd3;
assign buff_y_out_2_addr_5_reg_2607 = 64'd4;
assign buff_y_out_2_addr_6_reg_2647 = 64'd5;
assign buff_y_out_2_addr_7_reg_2767 = 64'd6;
assign buff_y_out_2_addr_8_reg_2807 = 64'd7;
assign buff_y_out_3_addr_3_reg_2452 = 64'd2;
assign buff_y_out_3_addr_4_reg_2492 = 64'd3;
assign buff_y_out_3_addr_5_reg_2612 = 64'd4;
assign buff_y_out_3_addr_6_reg_2652 = 64'd5;
assign buff_y_out_3_addr_7_reg_2772 = 64'd6;
assign buff_y_out_3_addr_8_reg_2812 = 64'd7;
assign buff_y_out_4_addr_3_reg_2457 = 64'd2;
assign buff_y_out_4_addr_4_reg_2497 = 64'd3;
assign buff_y_out_4_addr_5_reg_2617 = 64'd4;
assign buff_y_out_4_addr_6_reg_2657 = 64'd5;
assign buff_y_out_4_addr_7_reg_2777 = 64'd6;
assign buff_y_out_4_addr_8_reg_2817 = 64'd7;
assign buff_y_out_5_addr_3_reg_2462 = 64'd2;
assign buff_y_out_5_addr_4_reg_2502 = 64'd3;
assign buff_y_out_5_addr_5_reg_2622 = 64'd4;
assign buff_y_out_5_addr_6_reg_2662 = 64'd5;
assign buff_y_out_5_addr_7_reg_2782 = 64'd6;
assign buff_y_out_5_addr_8_reg_2822 = 64'd7;
assign buff_y_out_6_addr_3_reg_2467 = 64'd2;
assign buff_y_out_6_addr_4_reg_2507 = 64'd3;
assign buff_y_out_6_addr_5_reg_2627 = 64'd4;
assign buff_y_out_6_addr_6_reg_2667 = 64'd5;
assign buff_y_out_6_addr_7_reg_2787 = 64'd6;
assign buff_y_out_6_addr_8_reg_2827 = 64'd7;
assign buff_y_out_7_addr_3_reg_2472 = 64'd2;
assign buff_y_out_7_addr_4_reg_2512 = 64'd3;
assign buff_y_out_7_addr_5_reg_2632 = 64'd4;
assign buff_y_out_7_addr_6_reg_2672 = 64'd5;
assign buff_y_out_7_addr_7_reg_2792 = 64'd6;
assign buff_y_out_7_addr_8_reg_2832 = 64'd7;
assign buff_y_out_addr_3_reg_2437 = 64'd2;
assign buff_y_out_addr_4_reg_2477 = 64'd3;
assign buff_y_out_addr_5_reg_2597 = 64'd4;
assign buff_y_out_addr_6_reg_2637 = 64'd5;
assign buff_y_out_addr_7_reg_2757 = 64'd6;
assign buff_y_out_addr_8_reg_2797 = 64'd7;
assign grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start = grp_atax_Pipeline_lp1_lp2_fu_1351_ap_start_reg;
assign grp_atax_Pipeline_lp3_fu_1408_ap_start = grp_atax_Pipeline_lp3_fu_1408_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1379_ap_start = grp_atax_Pipeline_lprd_2_fu_1379_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1572_ap_start = grp_atax_Pipeline_lpwr_1_fu_1572_ap_start_reg;
assign icmp_ln11_fu_1594_p2 = ((i_fu_102 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1617_p4 = {{i_fu_102[5:3]}};
assign trunc_ln11_1_fu_1614_p1 = i_fu_102[2:0];
assign trunc_ln11_fu_1611_p1 = i_fu_102[5:0];
assign x_address0 = zext_ln11_fu_1606_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1572_y_out_din;
assign zext_ln11_fu_1606_p1 = i_fu_102;
assign zext_ln5_fu_1626_p1 = lshr_ln5_fu_1617_p4;
endmodule 