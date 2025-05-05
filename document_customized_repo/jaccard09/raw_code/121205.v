module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
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
(* fsm_encoding = "none" *) reg   [38:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_1222_p2;
reg   [6:0] add_ln11_reg_1924;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1233_p1;
reg   [5:0] trunc_ln11_reg_1958;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln11_1_fu_1237_p1;
reg   [0:0] trunc_ln11_1_reg_1963;
wire   [4:0] lshr_ln5_fu_1241_p4;
reg   [4:0] lshr_ln5_reg_1968;
wire   [4:0] buff_y_out_addr_3_reg_1973;
wire    ap_CS_fsm_state5;
wire   [4:0] buff_y_out_1_addr_3_reg_1978;
wire   [4:0] buff_y_out_addr_4_reg_1983;
wire   [4:0] buff_y_out_1_addr_4_reg_1988;
reg   [31:0] buff_y_out_load_reg_1993;
reg   [31:0] buff_y_out_1_load_reg_1998;
reg   [31:0] buff_y_out_load_1_reg_2003;
reg   [31:0] buff_y_out_1_load_1_reg_2008;
wire   [4:0] buff_y_out_addr_5_reg_2013;
wire    ap_CS_fsm_state6;
wire   [4:0] buff_y_out_1_addr_5_reg_2018;
wire   [4:0] buff_y_out_addr_6_reg_2023;
wire   [4:0] buff_y_out_1_addr_6_reg_2028;
reg   [31:0] buff_y_out_load_2_reg_2033;
reg   [31:0] buff_y_out_1_load_2_reg_2038;
reg   [31:0] buff_y_out_load_3_reg_2043;
reg   [31:0] buff_y_out_1_load_3_reg_2048;
wire   [4:0] buff_y_out_addr_7_reg_2053;
wire    ap_CS_fsm_state7;
wire   [4:0] buff_y_out_1_addr_7_reg_2058;
wire   [4:0] buff_y_out_addr_8_reg_2063;
wire   [4:0] buff_y_out_1_addr_8_reg_2068;
reg   [31:0] buff_y_out_load_4_reg_2073;
reg   [31:0] buff_y_out_1_load_4_reg_2078;
reg   [31:0] buff_y_out_load_5_reg_2083;
reg   [31:0] buff_y_out_1_load_5_reg_2088;
wire   [4:0] buff_y_out_addr_9_reg_2093;
wire    ap_CS_fsm_state8;
wire   [4:0] buff_y_out_1_addr_9_reg_2098;
wire   [4:0] buff_y_out_addr_10_reg_2103;
wire   [4:0] buff_y_out_1_addr_10_reg_2108;
reg   [31:0] buff_y_out_load_6_reg_2113;
reg   [31:0] buff_y_out_1_load_6_reg_2118;
reg   [31:0] buff_y_out_load_7_reg_2123;
reg   [31:0] buff_y_out_1_load_7_reg_2128;
wire   [4:0] buff_y_out_addr_11_reg_2133;
wire    ap_CS_fsm_state9;
wire   [4:0] buff_y_out_1_addr_11_reg_2138;
wire   [4:0] buff_y_out_addr_12_reg_2143;
wire   [4:0] buff_y_out_1_addr_12_reg_2148;
reg   [31:0] buff_y_out_load_8_reg_2153;
reg   [31:0] buff_y_out_1_load_8_reg_2158;
reg   [31:0] buff_y_out_load_9_reg_2163;
reg   [31:0] buff_y_out_1_load_9_reg_2168;
wire   [4:0] buff_y_out_addr_13_reg_2173;
wire    ap_CS_fsm_state10;
wire   [4:0] buff_y_out_1_addr_13_reg_2178;
wire   [4:0] buff_y_out_addr_14_reg_2183;
wire   [4:0] buff_y_out_1_addr_14_reg_2188;
reg   [31:0] buff_y_out_load_10_reg_2193;
reg   [31:0] buff_y_out_1_load_10_reg_2198;
reg   [31:0] buff_y_out_load_11_reg_2203;
reg   [31:0] buff_y_out_1_load_11_reg_2208;
wire   [4:0] buff_y_out_addr_15_reg_2213;
wire    ap_CS_fsm_state11;
wire   [4:0] buff_y_out_1_addr_15_reg_2218;
wire   [4:0] buff_y_out_addr_16_reg_2223;
wire   [4:0] buff_y_out_1_addr_16_reg_2228;
reg   [31:0] buff_y_out_load_12_reg_2233;
reg   [31:0] buff_y_out_1_load_12_reg_2238;
reg   [31:0] buff_y_out_load_13_reg_2243;
reg   [31:0] buff_y_out_1_load_13_reg_2248;
wire   [4:0] buff_y_out_addr_17_reg_2253;
wire    ap_CS_fsm_state12;
wire   [4:0] buff_y_out_1_addr_17_reg_2258;
wire   [4:0] buff_y_out_addr_18_reg_2263;
wire   [4:0] buff_y_out_1_addr_18_reg_2268;
reg   [31:0] buff_y_out_load_14_reg_2273;
reg   [31:0] buff_y_out_1_load_14_reg_2278;
reg   [31:0] buff_y_out_load_15_reg_2283;
reg   [31:0] buff_y_out_1_load_15_reg_2288;
wire   [4:0] buff_y_out_addr_19_reg_2293;
wire    ap_CS_fsm_state13;
wire   [4:0] buff_y_out_1_addr_19_reg_2298;
wire   [4:0] buff_y_out_addr_20_reg_2303;
wire   [4:0] buff_y_out_1_addr_20_reg_2308;
reg   [31:0] buff_y_out_load_16_reg_2313;
reg   [31:0] buff_y_out_1_load_16_reg_2318;
reg   [31:0] buff_y_out_load_17_reg_2323;
reg   [31:0] buff_y_out_1_load_17_reg_2328;
wire   [4:0] buff_y_out_addr_21_reg_2333;
wire    ap_CS_fsm_state14;
wire   [4:0] buff_y_out_1_addr_21_reg_2338;
wire   [4:0] buff_y_out_addr_22_reg_2343;
wire   [4:0] buff_y_out_1_addr_22_reg_2348;
reg   [31:0] buff_y_out_load_18_reg_2353;
reg   [31:0] buff_y_out_1_load_18_reg_2358;
reg   [31:0] buff_y_out_load_19_reg_2363;
reg   [31:0] buff_y_out_1_load_19_reg_2368;
wire   [4:0] buff_y_out_addr_23_reg_2373;
wire    ap_CS_fsm_state15;
wire   [4:0] buff_y_out_1_addr_23_reg_2378;
wire   [4:0] buff_y_out_addr_24_reg_2383;
wire   [4:0] buff_y_out_1_addr_24_reg_2388;
reg   [31:0] buff_y_out_load_20_reg_2393;
reg   [31:0] buff_y_out_1_load_20_reg_2398;
reg   [31:0] buff_y_out_load_21_reg_2403;
reg   [31:0] buff_y_out_1_load_21_reg_2408;
wire   [4:0] buff_y_out_addr_25_reg_2413;
wire    ap_CS_fsm_state16;
wire   [4:0] buff_y_out_1_addr_25_reg_2418;
wire   [4:0] buff_y_out_addr_26_reg_2423;
wire   [4:0] buff_y_out_1_addr_26_reg_2428;
reg   [31:0] buff_y_out_load_22_reg_2433;
reg   [31:0] buff_y_out_1_load_22_reg_2438;
reg   [31:0] buff_y_out_load_23_reg_2443;
reg   [31:0] buff_y_out_1_load_23_reg_2448;
wire   [4:0] buff_y_out_addr_27_reg_2453;
wire    ap_CS_fsm_state17;
wire   [4:0] buff_y_out_1_addr_27_reg_2458;
wire   [4:0] buff_y_out_addr_28_reg_2463;
wire   [4:0] buff_y_out_1_addr_28_reg_2468;
reg   [31:0] buff_y_out_load_24_reg_2473;
reg   [31:0] buff_y_out_1_load_24_reg_2478;
reg   [31:0] buff_y_out_load_25_reg_2483;
reg   [31:0] buff_y_out_1_load_25_reg_2488;
wire   [4:0] buff_y_out_addr_29_reg_2493;
wire    ap_CS_fsm_state18;
wire   [4:0] buff_y_out_1_addr_29_reg_2498;
wire   [4:0] buff_y_out_addr_30_reg_2503;
wire   [4:0] buff_y_out_1_addr_30_reg_2508;
reg   [31:0] buff_y_out_load_26_reg_2513;
reg   [31:0] buff_y_out_1_load_26_reg_2518;
reg   [31:0] buff_y_out_load_27_reg_2523;
reg   [31:0] buff_y_out_1_load_27_reg_2528;
wire   [4:0] buff_y_out_addr_31_reg_2533;
wire    ap_CS_fsm_state19;
wire   [4:0] buff_y_out_1_addr_31_reg_2538;
wire   [4:0] buff_y_out_addr_32_reg_2543;
wire   [4:0] buff_y_out_1_addr_32_reg_2548;
reg   [31:0] buff_y_out_load_28_reg_2553;
reg   [31:0] buff_y_out_1_load_28_reg_2558;
reg   [31:0] buff_y_out_load_29_reg_2563;
reg   [31:0] buff_y_out_1_load_29_reg_2568;
reg   [31:0] buff_y_out_load_30_reg_2573;
wire    ap_CS_fsm_state20;
reg   [31:0] buff_y_out_1_load_30_reg_2578;
reg   [31:0] buff_y_out_load_31_reg_2583;
reg   [31:0] buff_y_out_1_load_31_reg_2588;
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
reg   [4:0] buff_x_address0;
reg    buff_x_ce0;
wire   [31:0] buff_x_q0;
reg   [4:0] buff_x_1_address0;
reg    buff_x_1_ce0;
wire   [31:0] buff_x_1_q0;
reg   [4:0] buff_y_out_address0;
reg    buff_y_out_ce0;
wire   [31:0] buff_y_out_q0;
wire   [31:0] buff_y_out_q1;
reg   [4:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
wire   [31:0] buff_y_out_1_q0;
wire   [31:0] buff_y_out_1_q1;
reg   [4:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg    tmp1_ce1;
wire   [31:0] tmp1_q1;
reg   [4:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg    tmp1_1_ce1;
wire   [31:0] tmp1_1_q1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_ap_idle;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_ap_ready;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_3_ce0;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_ce0;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_1_ce0;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_d0;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_d0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_opcode;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_din1;
wire    grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_ce;
wire    grp_atax_Pipeline_lprd_2_fu_1043_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1043_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1043_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1043_ap_ready;
wire   [10:0] grp_atax_Pipeline_lprd_2_fu_1043_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_A_0_ce0;
wire   [10:0] grp_atax_Pipeline_lprd_2_fu_1043_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_d0;
wire    grp_atax_Pipeline_lp3_fu_1058_ap_start;
wire    grp_atax_Pipeline_lp3_fu_1058_ap_done;
wire    grp_atax_Pipeline_lp3_fu_1058_ap_idle;
wire    grp_atax_Pipeline_lp3_fu_1058_ap_ready;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_address0;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_address1;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_address2;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_ce2;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address2;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce2;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address2;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce2;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address2;
wire    grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce2;
wire   [4:0] grp_atax_Pipeline_lp3_fu_1058_tmp1_address0;
wire    grp_atax_Pipeline_lp3_fu_1058_tmp1_ce0;
wire   [4:0] grp_atax_Pipeline_lp3_fu_1058_tmp1_address1;
wire    grp_atax_Pipeline_lp3_fu_1058_tmp1_ce1;
wire   [4:0] grp_atax_Pipeline_lp3_fu_1058_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_fu_1058_tmp1_1_ce0;
wire   [4:0] grp_atax_Pipeline_lp3_fu_1058_tmp1_1_address1;
wire    grp_atax_Pipeline_lp3_fu_1058_tmp1_1_ce1;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_63180_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_63180_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_62179_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_62179_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_61178_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_61178_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_60177_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_60177_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_59176_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_59176_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_58175_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_58175_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_57174_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_57174_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_56173_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_56173_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_55172_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_55172_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_54171_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_54171_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_53170_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_53170_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_52169_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_52169_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_51168_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_51168_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_50167_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_50167_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_49166_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_49166_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_48165_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_48165_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_47164_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_47164_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_46163_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_46163_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_45162_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_45162_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_44161_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_44161_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_43160_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_43160_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_42159_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_42159_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_41158_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_41158_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_40157_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_40157_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_39156_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_39156_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_38155_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_38155_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_37154_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_37154_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_36153_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_36153_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_35152_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_35152_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_34151_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_34151_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_33150_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_33150_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_32149_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_32149_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_31148_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_31148_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_30147_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_30147_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_29146_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_29146_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_28145_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_28145_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_27144_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_27144_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_26143_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_26143_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_25142_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_25142_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_24141_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_24141_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_23140_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_23140_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_22139_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_22139_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_21138_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_21138_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_20137_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_20137_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_19136_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_19136_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_18135_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_18135_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_17134_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_17134_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_16133_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_16133_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_15132_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_15132_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_14131_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_14131_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_13130_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_13130_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_12129_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_12129_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_11128_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_11128_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_10127_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_10127_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_9126_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_9126_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_8125_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_8125_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_7124_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_7124_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_6123_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_6123_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_5122_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_5122_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_4121_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_4121_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_3120_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_3120_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_2119_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_2119_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7_1118_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7_1118_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_add58_7117_out;
wire    grp_atax_Pipeline_lp3_fu_1058_add58_7117_out_ap_vld;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_opcode;
wire    grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_din1;
wire    grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1200_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1200_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1200_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1200_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1200_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1200_y_out_write;
wire   [4:0] grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_ce0;
wire   [4:0] grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_1_ce0;
reg    grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start_reg;
wire   [0:0] icmp_ln11_fu_1216_p2;
reg    grp_atax_Pipeline_lprd_2_fu_1043_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp3_fu_1058_ap_start_reg;
wire    ap_CS_fsm_state21;
reg    grp_atax_Pipeline_lpwr_1_fu_1200_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
wire   [63:0] zext_ln11_fu_1228_p1;
wire   [63:0] zext_ln5_fu_1251_p1;
reg   [6:0] i_fu_122;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    x_ce0_local;
reg    buff_y_out_ce1_local;
reg   [4:0] buff_y_out_address1_local;
reg    buff_y_out_ce0_local;
reg   [4:0] buff_y_out_address0_local;
reg    buff_y_out_we0_local;
reg   [31:0] buff_y_out_d0_local;
reg    buff_y_out_we1_local;
reg   [31:0] buff_y_out_d1_local;
reg    buff_y_out_1_ce1_local;
reg   [4:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_ce0_local;
reg   [4:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_we0_local;
reg   [31:0] buff_y_out_1_d0_local;
reg    buff_y_out_1_we1_local;
reg   [31:0] buff_y_out_1_d1_local;
reg    buff_x_we0_local;
wire   [31:0] bitcast_ln12_fu_1261_p1;
reg    buff_x_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    buff_x_1_we0_local;
reg    buff_x_1_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
wire   [31:0] grp_fu_2593_p2;
reg   [31:0] grp_fu_2593_p0;
reg   [31:0] grp_fu_2593_p1;
reg    grp_fu_2593_ce;
wire   [31:0] grp_fu_2597_p2;
reg   [31:0] grp_fu_2597_p0;
reg   [31:0] grp_fu_2597_p1;
reg    grp_fu_2597_ce;
reg   [38:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
reg    ap_ST_fsm_state39_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 39'd1;
#0 grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lprd_2_fu_1043_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_fu_1058_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1200_ap_start_reg = 1'b0;
#0 i_fu_122 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1261_p1),.q0(buff_x_q0));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1261_p1),.q0(buff_x_1_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0_local),.d0(buff_y_out_d0_local),.q0(buff_y_out_q0),.address1(buff_y_out_address1_local),.ce1(buff_y_out_ce1_local),.we1(buff_y_out_we1_local),.d1(buff_y_out_d1_local),.q1(buff_y_out_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0_local),.d0(buff_y_out_1_d0_local),.q0(buff_y_out_1_q0),.address1(buff_y_out_1_address1_local),.ce1(buff_y_out_1_ce1_local),.we1(buff_y_out_1_we1_local),.d1(buff_y_out_1_d1_local),.q1(buff_y_out_1_q1));
atax_tmp1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0),.address1(grp_atax_Pipeline_lp3_fu_1058_tmp1_address1),.ce1(tmp1_ce1),.q1(tmp1_q1));
atax_tmp1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0),.address1(grp_atax_Pipeline_lp3_fu_1058_tmp1_1_address1),.ce1(tmp1_1_ce1),.q1(tmp1_1_q1));
atax_atax_Pipeline_lp1_lp2 grp_atax_Pipeline_lp1_lp2_fu_1031(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start),.ap_done(grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done),.ap_idle(grp_atax_Pipeline_lp1_lp2_fu_1031_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_lp2_fu_1031_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_x_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.tmp1_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.grp_fu_2593_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_din0),.grp_fu_2593_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_din1),.grp_fu_2593_p_opcode(grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_opcode),.grp_fu_2593_p_dout0(grp_fu_2593_p2),.grp_fu_2593_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_ce),.grp_fu_2597_p_din0(grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_din0),.grp_fu_2597_p_din1(grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_din1),.grp_fu_2597_p_dout0(grp_fu_2597_p2),.grp_fu_2597_p_ce(grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_ce));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1043(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1043_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1043_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1043_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1043_ap_ready),.i(trunc_ln11_reg_1958),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1043_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1043_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1043_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1043_A_1_ce0),.A_1_q0(A_1_q0),.lshr_ln5(lshr_ln5_reg_1968),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_d0),.empty(trunc_ln11_1_reg_1963));
atax_atax_Pipeline_lp3 grp_atax_Pipeline_lp3_fu_1058(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_fu_1058_ap_start),.ap_done(grp_atax_Pipeline_lp3_fu_1058_ap_done),.ap_idle(grp_atax_Pipeline_lp3_fu_1058_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_fu_1058_ap_ready),.buff_y_out_1_load_31(buff_y_out_1_load_31_reg_2588),.buff_y_out_load_31(buff_y_out_load_31_reg_2583),.buff_y_out_1_load_30(buff_y_out_1_load_30_reg_2578),.buff_y_out_load_30(buff_y_out_load_30_reg_2573),.buff_y_out_1_load_29(buff_y_out_1_load_29_reg_2568),.buff_y_out_load_29(buff_y_out_load_29_reg_2563),.buff_y_out_1_load_28(buff_y_out_1_load_28_reg_2558),.buff_y_out_load_28(buff_y_out_load_28_reg_2553),.buff_y_out_1_load_27(buff_y_out_1_load_27_reg_2528),.buff_y_out_load_27(buff_y_out_load_27_reg_2523),.buff_y_out_1_load_26(buff_y_out_1_load_26_reg_2518),.buff_y_out_load_26(buff_y_out_load_26_reg_2513),.buff_y_out_1_load_25(buff_y_out_1_load_25_reg_2488),.buff_y_out_load_25(buff_y_out_load_25_reg_2483),.buff_y_out_1_load_24(buff_y_out_1_load_24_reg_2478),.buff_y_out_load_24(buff_y_out_load_24_reg_2473),.buff_y_out_1_load_23(buff_y_out_1_load_23_reg_2448),.buff_y_out_load_23(buff_y_out_load_23_reg_2443),.buff_y_out_1_load_22(buff_y_out_1_load_22_reg_2438),.buff_y_out_load_22(buff_y_out_load_22_reg_2433),.buff_y_out_1_load_21(buff_y_out_1_load_21_reg_2408),.buff_y_out_load_21(buff_y_out_load_21_reg_2403),.buff_y_out_1_load_20(buff_y_out_1_load_20_reg_2398),.buff_y_out_load_20(buff_y_out_load_20_reg_2393),.buff_y_out_1_load_19(buff_y_out_1_load_19_reg_2368),.buff_y_out_load_19(buff_y_out_load_19_reg_2363),.buff_y_out_1_load_18(buff_y_out_1_load_18_reg_2358),.buff_y_out_load_18(buff_y_out_load_18_reg_2353),.buff_y_out_1_load_17(buff_y_out_1_load_17_reg_2328),.buff_y_out_load_17(buff_y_out_load_17_reg_2323),.buff_y_out_1_load_16(buff_y_out_1_load_16_reg_2318),.buff_y_out_load_16(buff_y_out_load_16_reg_2313),.buff_y_out_1_load_15(buff_y_out_1_load_15_reg_2288),.buff_y_out_load_15(buff_y_out_load_15_reg_2283),.buff_y_out_1_load_14(buff_y_out_1_load_14_reg_2278),.buff_y_out_load_14(buff_y_out_load_14_reg_2273),.buff_y_out_1_load_13(buff_y_out_1_load_13_reg_2248),.buff_y_out_load_13(buff_y_out_load_13_reg_2243),.buff_y_out_1_load_12(buff_y_out_1_load_12_reg_2238),.buff_y_out_load_12(buff_y_out_load_12_reg_2233),.buff_y_out_1_load_11(buff_y_out_1_load_11_reg_2208),.buff_y_out_load_11(buff_y_out_load_11_reg_2203),.buff_y_out_1_load_10(buff_y_out_1_load_10_reg_2198),.buff_y_out_load_10(buff_y_out_load_10_reg_2193),.buff_y_out_1_load_9(buff_y_out_1_load_9_reg_2168),.buff_y_out_load_9(buff_y_out_load_9_reg_2163),.buff_y_out_1_load_8(buff_y_out_1_load_8_reg_2158),.buff_y_out_load_8(buff_y_out_load_8_reg_2153),.buff_y_out_1_load_7(buff_y_out_1_load_7_reg_2128),.buff_y_out_load_7(buff_y_out_load_7_reg_2123),.buff_y_out_1_load_6(buff_y_out_1_load_6_reg_2118),.buff_y_out_load_6(buff_y_out_load_6_reg_2113),.buff_y_out_1_load_5(buff_y_out_1_load_5_reg_2088),.buff_y_out_load_5(buff_y_out_load_5_reg_2083),.buff_y_out_1_load_4(buff_y_out_1_load_4_reg_2078),.buff_y_out_load_4(buff_y_out_load_4_reg_2073),.buff_y_out_1_load_3(buff_y_out_1_load_3_reg_2048),.buff_y_out_load_3(buff_y_out_load_3_reg_2043),.buff_y_out_1_load_2(buff_y_out_1_load_2_reg_2038),.buff_y_out_load_2(buff_y_out_load_2_reg_2033),.buff_y_out_1_load_1(buff_y_out_1_load_1_reg_2008),.buff_y_out_load_1(buff_y_out_load_1_reg_2003),.buff_y_out_1_load(buff_y_out_1_load_reg_1998),.buff_y_out_load(buff_y_out_load_reg_1993),.buff_A_address0(grp_atax_Pipeline_lp3_fu_1058_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_fu_1058_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_fu_1058_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp3_fu_1058_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_1_address0(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_2_address0(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address2),.buff_A_2_ce2(grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_3_address0(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address2),.buff_A_3_ce2(grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.tmp1_address0(grp_atax_Pipeline_lp3_fu_1058_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_fu_1058_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_address1(grp_atax_Pipeline_lp3_fu_1058_tmp1_address1),.tmp1_ce1(grp_atax_Pipeline_lp3_fu_1058_tmp1_ce1),.tmp1_q1(tmp1_q1),.tmp1_1_address0(grp_atax_Pipeline_lp3_fu_1058_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_fu_1058_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_1_address1(grp_atax_Pipeline_lp3_fu_1058_tmp1_1_address1),.tmp1_1_ce1(grp_atax_Pipeline_lp3_fu_1058_tmp1_1_ce1),.tmp1_1_q1(tmp1_1_q1),.add58_7_63180_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_63180_out),.add58_7_63180_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_63180_out_ap_vld),.add58_7_62179_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_62179_out),.add58_7_62179_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_62179_out_ap_vld),.add58_7_61178_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_61178_out),.add58_7_61178_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_61178_out_ap_vld),.add58_7_60177_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_60177_out),.add58_7_60177_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_60177_out_ap_vld),.add58_7_59176_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_59176_out),.add58_7_59176_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_59176_out_ap_vld),.add58_7_58175_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_58175_out),.add58_7_58175_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_58175_out_ap_vld),.add58_7_57174_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_57174_out),.add58_7_57174_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_57174_out_ap_vld),.add58_7_56173_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_56173_out),.add58_7_56173_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_56173_out_ap_vld),.add58_7_55172_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_55172_out),.add58_7_55172_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_55172_out_ap_vld),.add58_7_54171_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_54171_out),.add58_7_54171_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_54171_out_ap_vld),.add58_7_53170_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_53170_out),.add58_7_53170_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_53170_out_ap_vld),.add58_7_52169_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_52169_out),.add58_7_52169_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_52169_out_ap_vld),.add58_7_51168_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_51168_out),.add58_7_51168_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_51168_out_ap_vld),.add58_7_50167_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_50167_out),.add58_7_50167_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_50167_out_ap_vld),.add58_7_49166_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_49166_out),.add58_7_49166_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_49166_out_ap_vld),.add58_7_48165_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_48165_out),.add58_7_48165_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_48165_out_ap_vld),.add58_7_47164_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_47164_out),.add58_7_47164_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_47164_out_ap_vld),.add58_7_46163_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_46163_out),.add58_7_46163_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_46163_out_ap_vld),.add58_7_45162_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_45162_out),.add58_7_45162_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_45162_out_ap_vld),.add58_7_44161_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_44161_out),.add58_7_44161_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_44161_out_ap_vld),.add58_7_43160_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_43160_out),.add58_7_43160_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_43160_out_ap_vld),.add58_7_42159_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_42159_out),.add58_7_42159_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_42159_out_ap_vld),.add58_7_41158_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_41158_out),.add58_7_41158_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_41158_out_ap_vld),.add58_7_40157_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_40157_out),.add58_7_40157_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_40157_out_ap_vld),.add58_7_39156_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_39156_out),.add58_7_39156_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_39156_out_ap_vld),.add58_7_38155_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_38155_out),.add58_7_38155_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_38155_out_ap_vld),.add58_7_37154_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_37154_out),.add58_7_37154_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_37154_out_ap_vld),.add58_7_36153_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_36153_out),.add58_7_36153_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_36153_out_ap_vld),.add58_7_35152_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_35152_out),.add58_7_35152_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_35152_out_ap_vld),.add58_7_34151_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_34151_out),.add58_7_34151_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_34151_out_ap_vld),.add58_7_33150_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_33150_out),.add58_7_33150_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_33150_out_ap_vld),.add58_7_32149_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_32149_out),.add58_7_32149_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_32149_out_ap_vld),.add58_7_31148_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_31148_out),.add58_7_31148_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_31148_out_ap_vld),.add58_7_30147_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_30147_out),.add58_7_30147_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_30147_out_ap_vld),.add58_7_29146_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_29146_out),.add58_7_29146_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_29146_out_ap_vld),.add58_7_28145_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_28145_out),.add58_7_28145_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_28145_out_ap_vld),.add58_7_27144_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_27144_out),.add58_7_27144_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_27144_out_ap_vld),.add58_7_26143_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_26143_out),.add58_7_26143_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_26143_out_ap_vld),.add58_7_25142_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_25142_out),.add58_7_25142_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_25142_out_ap_vld),.add58_7_24141_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_24141_out),.add58_7_24141_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_24141_out_ap_vld),.add58_7_23140_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_23140_out),.add58_7_23140_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_23140_out_ap_vld),.add58_7_22139_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_22139_out),.add58_7_22139_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_22139_out_ap_vld),.add58_7_21138_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_21138_out),.add58_7_21138_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_21138_out_ap_vld),.add58_7_20137_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_20137_out),.add58_7_20137_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_20137_out_ap_vld),.add58_7_19136_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_19136_out),.add58_7_19136_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_19136_out_ap_vld),.add58_7_18135_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_18135_out),.add58_7_18135_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_18135_out_ap_vld),.add58_7_17134_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_17134_out),.add58_7_17134_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_17134_out_ap_vld),.add58_7_16133_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_16133_out),.add58_7_16133_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_16133_out_ap_vld),.add58_7_15132_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_15132_out),.add58_7_15132_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_15132_out_ap_vld),.add58_7_14131_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_14131_out),.add58_7_14131_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_14131_out_ap_vld),.add58_7_13130_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_13130_out),.add58_7_13130_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_13130_out_ap_vld),.add58_7_12129_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_12129_out),.add58_7_12129_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_12129_out_ap_vld),.add58_7_11128_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_11128_out),.add58_7_11128_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_11128_out_ap_vld),.add58_7_10127_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_10127_out),.add58_7_10127_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_10127_out_ap_vld),.add58_7_9126_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_9126_out),.add58_7_9126_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_9126_out_ap_vld),.add58_7_8125_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_8125_out),.add58_7_8125_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_8125_out_ap_vld),.add58_7_7124_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_7124_out),.add58_7_7124_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_7124_out_ap_vld),.add58_7_6123_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_6123_out),.add58_7_6123_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_6123_out_ap_vld),.add58_7_5122_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_5122_out),.add58_7_5122_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_5122_out_ap_vld),.add58_7_4121_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_4121_out),.add58_7_4121_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_4121_out_ap_vld),.add58_7_3120_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_3120_out),.add58_7_3120_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_3120_out_ap_vld),.add58_7_2119_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_2119_out),.add58_7_2119_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_2119_out_ap_vld),.add58_7_1118_out(grp_atax_Pipeline_lp3_fu_1058_add58_7_1118_out),.add58_7_1118_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7_1118_out_ap_vld),.add58_7117_out(grp_atax_Pipeline_lp3_fu_1058_add58_7117_out),.add58_7117_out_ap_vld(grp_atax_Pipeline_lp3_fu_1058_add58_7117_out_ap_vld),.grp_fu_2593_p_din0(grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_din0),.grp_fu_2593_p_din1(grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_din1),.grp_fu_2593_p_opcode(grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_opcode),.grp_fu_2593_p_dout0(grp_fu_2593_p2),.grp_fu_2593_p_ce(grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_ce),.grp_fu_2597_p_din0(grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_din0),.grp_fu_2597_p_din1(grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_din1),.grp_fu_2597_p_dout0(grp_fu_2597_p2),.grp_fu_2597_p_ce(grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1200(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1200_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1200_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1200_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1200_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1200_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1200_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U179(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2593_p0),.din1(grp_fu_2593_p1),.ce(grp_fu_2593_ce),.dout(grp_fu_2593_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U180(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2597_p0),.din1(grp_fu_2597_p1),.ce(grp_fu_2597_ce),.dout(grp_fu_2597_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln11_fu_1216_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_lp2_fu_1031_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_fu_1058_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_atax_Pipeline_lp3_fu_1058_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_fu_1058_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_fu_1058_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1043_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lprd_2_fu_1043_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1043_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1043_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1200_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_atax_Pipeline_lpwr_1_fu_1200_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1200_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1200_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_122 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_122 <= add_ln11_reg_1924;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_1924 <= add_ln11_fu_1222_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y_out_1_load_10_reg_2198 <= buff_y_out_1_q0;
        buff_y_out_1_load_11_reg_2208 <= buff_y_out_1_q1;
        buff_y_out_load_10_reg_2193 <= buff_y_out_q0;
        buff_y_out_load_11_reg_2203 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_load_12_reg_2238 <= buff_y_out_1_q0;
        buff_y_out_1_load_13_reg_2248 <= buff_y_out_1_q1;
        buff_y_out_load_12_reg_2233 <= buff_y_out_q0;
        buff_y_out_load_13_reg_2243 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_load_14_reg_2278 <= buff_y_out_1_q0;
        buff_y_out_1_load_15_reg_2288 <= buff_y_out_1_q1;
        buff_y_out_load_14_reg_2273 <= buff_y_out_q0;
        buff_y_out_load_15_reg_2283 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_load_16_reg_2318 <= buff_y_out_1_q0;
        buff_y_out_1_load_17_reg_2328 <= buff_y_out_1_q1;
        buff_y_out_load_16_reg_2313 <= buff_y_out_q0;
        buff_y_out_load_17_reg_2323 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_load_18_reg_2358 <= buff_y_out_1_q0;
        buff_y_out_1_load_19_reg_2368 <= buff_y_out_1_q1;
        buff_y_out_load_18_reg_2353 <= buff_y_out_q0;
        buff_y_out_load_19_reg_2363 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y_out_1_load_1_reg_2008 <= buff_y_out_1_q0;
        buff_y_out_1_load_reg_1998 <= buff_y_out_1_q1;
        buff_y_out_load_1_reg_2003 <= buff_y_out_q0;
        buff_y_out_load_reg_1993 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_load_20_reg_2398 <= buff_y_out_1_q0;
        buff_y_out_1_load_21_reg_2408 <= buff_y_out_1_q1;
        buff_y_out_load_20_reg_2393 <= buff_y_out_q0;
        buff_y_out_load_21_reg_2403 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_load_22_reg_2438 <= buff_y_out_1_q0;
        buff_y_out_1_load_23_reg_2448 <= buff_y_out_1_q1;
        buff_y_out_load_22_reg_2433 <= buff_y_out_q0;
        buff_y_out_load_23_reg_2443 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_load_24_reg_2478 <= buff_y_out_1_q0;
        buff_y_out_1_load_25_reg_2488 <= buff_y_out_1_q1;
        buff_y_out_load_24_reg_2473 <= buff_y_out_q0;
        buff_y_out_load_25_reg_2483 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_load_26_reg_2518 <= buff_y_out_1_q0;
        buff_y_out_1_load_27_reg_2528 <= buff_y_out_1_q1;
        buff_y_out_load_26_reg_2513 <= buff_y_out_q0;
        buff_y_out_load_27_reg_2523 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_load_28_reg_2558 <= buff_y_out_1_q0;
        buff_y_out_1_load_29_reg_2568 <= buff_y_out_1_q1;
        buff_y_out_load_28_reg_2553 <= buff_y_out_q0;
        buff_y_out_load_29_reg_2563 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_load_2_reg_2038 <= buff_y_out_1_q0;
        buff_y_out_1_load_3_reg_2048 <= buff_y_out_1_q1;
        buff_y_out_load_2_reg_2033 <= buff_y_out_q0;
        buff_y_out_load_3_reg_2043 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y_out_1_load_30_reg_2578 <= buff_y_out_1_q0;
        buff_y_out_1_load_31_reg_2588 <= buff_y_out_1_q1;
        buff_y_out_load_30_reg_2573 <= buff_y_out_q0;
        buff_y_out_load_31_reg_2583 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_load_4_reg_2078 <= buff_y_out_1_q0;
        buff_y_out_1_load_5_reg_2088 <= buff_y_out_1_q1;
        buff_y_out_load_4_reg_2073 <= buff_y_out_q0;
        buff_y_out_load_5_reg_2083 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_load_6_reg_2118 <= buff_y_out_1_q0;
        buff_y_out_1_load_7_reg_2128 <= buff_y_out_1_q1;
        buff_y_out_load_6_reg_2113 <= buff_y_out_q0;
        buff_y_out_load_7_reg_2123 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_load_8_reg_2158 <= buff_y_out_1_q0;
        buff_y_out_1_load_9_reg_2168 <= buff_y_out_1_q1;
        buff_y_out_load_8_reg_2153 <= buff_y_out_q0;
        buff_y_out_load_9_reg_2163 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln5_reg_1968 <= {{i_fu_122[5:1]}};
        trunc_ln11_1_reg_1963 <= trunc_ln11_1_fu_1237_p1;
        trunc_ln11_reg_1958 <= trunc_ln11_fu_1233_p1;
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
    if ((grp_atax_Pipeline_lp3_fu_1058_ap_done == 1'b0)) begin
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
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_1200_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lprd_2_fu_1043_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done == 1'b0)) begin
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
    if (((grp_atax_Pipeline_lpwr_1_fu_1200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
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
    if (((grp_atax_Pipeline_lpwr_1_fu_1200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp3_fu_1058_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce2 = grp_atax_Pipeline_lp3_fu_1058_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce2 = grp_atax_Pipeline_lp3_fu_1058_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_fu_1058_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_fu_1058_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp3_fu_1058_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1043_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = zext_ln5_fu_1251_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1237_p1 == 1'd1))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_address0;
    end else begin
        buff_x_address0 = zext_ln5_fu_1251_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_buff_x_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1237_p1 == 1'd0))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = buff_y_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_31_reg_2538;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_29_reg_2498;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_27_reg_2458;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_25_reg_2418;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_23_reg_2378;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_21_reg_2338;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_19_reg_2298;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_17_reg_2258;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_15_reg_2218;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_13_reg_2178;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_11_reg_2138;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_9_reg_2098;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_7_reg_2058;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_5_reg_2018;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_3_reg_1978;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address0_local = 64'd16;
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
        buff_y_out_1_address0_local = zext_ln5_fu_1251_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address0_local = 64'd1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_32_reg_2548;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_30_reg_2508;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_28_reg_2468;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_26_reg_2428;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_24_reg_2388;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_22_reg_2348;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_20_reg_2308;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_18_reg_2268;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_16_reg_2228;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_14_reg_2188;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_12_reg_2148;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_10_reg_2108;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_8_reg_2068;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_6_reg_2028;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_4_reg_1988;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address1_local = 64'd17;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_61178_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_57174_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_53170_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_49166_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_45162_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_41158_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_37154_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_33150_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_29146_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_25142_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_21138_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_17134_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_13130_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_9126_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_5122_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_1118_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_d0_local = 32'd0;
    end else begin
        buff_y_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_63180_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_59176_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_55172_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_51168_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_47164_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_43160_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_39156_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_35152_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_31148_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_27144_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_23140_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_19136_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_15132_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_11128_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_7124_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_1_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_3120_out;
    end else begin
        buff_y_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1237_p1 == 1'd1)))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = buff_y_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_address0_local = buff_y_out_addr_31_reg_2533;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_address0_local = buff_y_out_addr_29_reg_2493;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_address0_local = buff_y_out_addr_27_reg_2453;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_address0_local = buff_y_out_addr_25_reg_2413;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_address0_local = buff_y_out_addr_23_reg_2373;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_address0_local = buff_y_out_addr_21_reg_2333;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_address0_local = buff_y_out_addr_19_reg_2293;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_address0_local = buff_y_out_addr_17_reg_2253;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_address0_local = buff_y_out_addr_15_reg_2213;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_address0_local = buff_y_out_addr_13_reg_2173;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_address0_local = buff_y_out_addr_11_reg_2133;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_address0_local = buff_y_out_addr_9_reg_2093;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_address0_local = buff_y_out_addr_7_reg_2053;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_address0_local = buff_y_out_addr_5_reg_2013;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_address0_local = buff_y_out_addr_3_reg_1973;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address0_local = 64'd16;
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
        buff_y_out_address0_local = zext_ln5_fu_1251_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address0_local = 64'd1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_address1_local = buff_y_out_addr_32_reg_2543;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_address1_local = buff_y_out_addr_30_reg_2503;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_address1_local = buff_y_out_addr_28_reg_2463;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_address1_local = buff_y_out_addr_26_reg_2423;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_address1_local = buff_y_out_addr_24_reg_2383;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_address1_local = buff_y_out_addr_22_reg_2343;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_address1_local = buff_y_out_addr_20_reg_2303;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_address1_local = buff_y_out_addr_18_reg_2263;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_address1_local = buff_y_out_addr_16_reg_2223;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_address1_local = buff_y_out_addr_14_reg_2183;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_address1_local = buff_y_out_addr_12_reg_2143;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_address1_local = buff_y_out_addr_10_reg_2103;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_address1_local = buff_y_out_addr_8_reg_2063;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_address1_local = buff_y_out_addr_6_reg_2023;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_address1_local = buff_y_out_addr_4_reg_1983;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y_out_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y_out_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y_out_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y_out_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address1_local = 64'd17;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1200_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state3) | ((grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_60177_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_56173_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_52169_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_48165_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_44161_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_40157_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_36153_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_32149_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_28145_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_24141_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_20137_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_16133_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_12129_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_8125_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_4121_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_d0_local = grp_atax_Pipeline_lp3_fu_1058_add58_7117_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_d0_local = 32'd0;
    end else begin
        buff_y_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_62179_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_58175_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_54171_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_50167_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_46163_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_42159_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_38155_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_34151_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_30147_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_26143_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_22139_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_18135_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_14131_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_10127_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_6123_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_y_out_d1_local = grp_atax_Pipeline_lp3_fu_1058_add58_7_2119_out;
    end else begin
        buff_y_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1237_p1 == 1'd0)))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2593_ce = grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2593_ce = grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_ce;
    end else begin
        grp_fu_2593_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2593_p0 = grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2593_p0 = grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_din0;
    end else begin
        grp_fu_2593_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2593_p1 = grp_atax_Pipeline_lp3_fu_1058_grp_fu_2593_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2593_p1 = grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2593_p_din1;
    end else begin
        grp_fu_2593_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2597_ce = grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2597_ce = grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_ce;
    end else begin
        grp_fu_2597_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2597_p0 = grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2597_p0 = grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_din0;
    end else begin
        grp_fu_2597_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2597_p1 = grp_atax_Pipeline_lp3_fu_1058_grp_fu_2597_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2597_p1 = grp_atax_Pipeline_lp1_lp2_fu_1031_grp_fu_2597_p_din1;
    end else begin
        grp_fu_2597_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_fu_1058_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1251_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_fu_1058_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_1_ce1 = grp_atax_Pipeline_lp3_fu_1058_tmp1_1_ce1;
    end else begin
        tmp1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1237_p1 == 1'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_fu_1058_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1251_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_fu_1058_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_ce1 = grp_atax_Pipeline_lp3_fu_1058_tmp1_ce1;
    end else begin
        tmp1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_lp2_fu_1031_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1237_p1 == 1'd0))) begin
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1200_y_out_write;
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
            if (((icmp_ln11_fu_1216_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_Pipeline_lprd_2_fu_1043_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_atax_Pipeline_lp1_lp2_fu_1031_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_atax_Pipeline_lp3_fu_1058_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((grp_atax_Pipeline_lpwr_1_fu_1200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
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
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1043_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1043_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1043_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1043_A_1_ce0;
assign add_ln11_fu_1222_p2 = (i_fu_122 + 7'd1);
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
assign bitcast_ln12_fu_1261_p1 = x_q0;
assign buff_y_out_1_addr_10_reg_2108 = 64'd9;
assign buff_y_out_1_addr_11_reg_2138 = 64'd10;
assign buff_y_out_1_addr_12_reg_2148 = 64'd11;
assign buff_y_out_1_addr_13_reg_2178 = 64'd12;
assign buff_y_out_1_addr_14_reg_2188 = 64'd13;
assign buff_y_out_1_addr_15_reg_2218 = 64'd14;
assign buff_y_out_1_addr_16_reg_2228 = 64'd15;
assign buff_y_out_1_addr_17_reg_2258 = 64'd16;
assign buff_y_out_1_addr_18_reg_2268 = 64'd17;
assign buff_y_out_1_addr_19_reg_2298 = 64'd18;
assign buff_y_out_1_addr_20_reg_2308 = 64'd19;
assign buff_y_out_1_addr_21_reg_2338 = 64'd20;
assign buff_y_out_1_addr_22_reg_2348 = 64'd21;
assign buff_y_out_1_addr_23_reg_2378 = 64'd22;
assign buff_y_out_1_addr_24_reg_2388 = 64'd23;
assign buff_y_out_1_addr_25_reg_2418 = 64'd24;
assign buff_y_out_1_addr_26_reg_2428 = 64'd25;
assign buff_y_out_1_addr_27_reg_2458 = 64'd26;
assign buff_y_out_1_addr_28_reg_2468 = 64'd27;
assign buff_y_out_1_addr_29_reg_2498 = 64'd28;
assign buff_y_out_1_addr_30_reg_2508 = 64'd29;
assign buff_y_out_1_addr_31_reg_2538 = 64'd30;
assign buff_y_out_1_addr_32_reg_2548 = 64'd31;
assign buff_y_out_1_addr_3_reg_1978 = 64'd2;
assign buff_y_out_1_addr_4_reg_1988 = 64'd3;
assign buff_y_out_1_addr_5_reg_2018 = 64'd4;
assign buff_y_out_1_addr_6_reg_2028 = 64'd5;
assign buff_y_out_1_addr_7_reg_2058 = 64'd6;
assign buff_y_out_1_addr_8_reg_2068 = 64'd7;
assign buff_y_out_1_addr_9_reg_2098 = 64'd8;
assign buff_y_out_addr_10_reg_2103 = 64'd9;
assign buff_y_out_addr_11_reg_2133 = 64'd10;
assign buff_y_out_addr_12_reg_2143 = 64'd11;
assign buff_y_out_addr_13_reg_2173 = 64'd12;
assign buff_y_out_addr_14_reg_2183 = 64'd13;
assign buff_y_out_addr_15_reg_2213 = 64'd14;
assign buff_y_out_addr_16_reg_2223 = 64'd15;
assign buff_y_out_addr_17_reg_2253 = 64'd16;
assign buff_y_out_addr_18_reg_2263 = 64'd17;
assign buff_y_out_addr_19_reg_2293 = 64'd18;
assign buff_y_out_addr_20_reg_2303 = 64'd19;
assign buff_y_out_addr_21_reg_2333 = 64'd20;
assign buff_y_out_addr_22_reg_2343 = 64'd21;
assign buff_y_out_addr_23_reg_2373 = 64'd22;
assign buff_y_out_addr_24_reg_2383 = 64'd23;
assign buff_y_out_addr_25_reg_2413 = 64'd24;
assign buff_y_out_addr_26_reg_2423 = 64'd25;
assign buff_y_out_addr_27_reg_2453 = 64'd26;
assign buff_y_out_addr_28_reg_2463 = 64'd27;
assign buff_y_out_addr_29_reg_2493 = 64'd28;
assign buff_y_out_addr_30_reg_2503 = 64'd29;
assign buff_y_out_addr_31_reg_2533 = 64'd30;
assign buff_y_out_addr_32_reg_2543 = 64'd31;
assign buff_y_out_addr_3_reg_1973 = 64'd2;
assign buff_y_out_addr_4_reg_1983 = 64'd3;
assign buff_y_out_addr_5_reg_2013 = 64'd4;
assign buff_y_out_addr_6_reg_2023 = 64'd5;
assign buff_y_out_addr_7_reg_2053 = 64'd6;
assign buff_y_out_addr_8_reg_2063 = 64'd7;
assign buff_y_out_addr_9_reg_2093 = 64'd8;
assign grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start = grp_atax_Pipeline_lp1_lp2_fu_1031_ap_start_reg;
assign grp_atax_Pipeline_lp3_fu_1058_ap_start = grp_atax_Pipeline_lp3_fu_1058_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1043_ap_start = grp_atax_Pipeline_lprd_2_fu_1043_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1200_ap_start = grp_atax_Pipeline_lpwr_1_fu_1200_ap_start_reg;
assign icmp_ln11_fu_1216_p2 = ((i_fu_122 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1241_p4 = {{i_fu_122[5:1]}};
assign trunc_ln11_1_fu_1237_p1 = i_fu_122[0:0];
assign trunc_ln11_fu_1233_p1 = i_fu_122[5:0];
assign x_address0 = zext_ln11_fu_1228_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1200_y_out_din;
assign zext_ln11_fu_1228_p1 = i_fu_122;
assign zext_ln5_fu_1251_p1 = lshr_ln5_fu_1241_p4;
endmodule 