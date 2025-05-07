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
wire   [6:0] add_ln13_fu_1275_p2;
reg   [6:0] add_ln13_reg_1986;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1287_p1;
reg   [5:0] trunc_ln13_reg_2025;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln13_1_fu_1291_p1;
reg   [0:0] trunc_ln13_1_reg_2030;
wire   [4:0] lshr_ln5_fu_1295_p4;
reg   [4:0] lshr_ln5_reg_2035;
wire   [4:0] buff_s_out_addr_2_reg_2040;
wire    ap_CS_fsm_state5;
wire   [4:0] buff_s_out_1_addr_2_reg_2045;
wire   [4:0] buff_s_out_addr_3_reg_2050;
wire   [4:0] buff_s_out_1_addr_3_reg_2055;
reg   [31:0] buff_s_out_load_reg_2060;
reg   [31:0] buff_s_out_1_load_reg_2065;
reg   [31:0] buff_s_out_load_1_reg_2070;
reg   [31:0] buff_s_out_1_load_1_reg_2075;
wire   [4:0] buff_s_out_addr_4_reg_2080;
wire    ap_CS_fsm_state6;
wire   [4:0] buff_s_out_1_addr_4_reg_2085;
wire   [4:0] buff_s_out_addr_5_reg_2090;
wire   [4:0] buff_s_out_1_addr_5_reg_2095;
reg   [31:0] buff_s_out_load_2_reg_2100;
reg   [31:0] buff_s_out_1_load_2_reg_2105;
reg   [31:0] buff_s_out_load_3_reg_2110;
reg   [31:0] buff_s_out_1_load_3_reg_2115;
wire   [4:0] buff_s_out_addr_6_reg_2120;
wire    ap_CS_fsm_state7;
wire   [4:0] buff_s_out_1_addr_6_reg_2125;
wire   [4:0] buff_s_out_addr_7_reg_2130;
wire   [4:0] buff_s_out_1_addr_7_reg_2135;
reg   [31:0] buff_s_out_load_4_reg_2140;
reg   [31:0] buff_s_out_1_load_4_reg_2145;
reg   [31:0] buff_s_out_load_5_reg_2150;
reg   [31:0] buff_s_out_1_load_5_reg_2155;
wire   [4:0] buff_s_out_addr_8_reg_2160;
wire    ap_CS_fsm_state8;
wire   [4:0] buff_s_out_1_addr_8_reg_2165;
wire   [4:0] buff_s_out_addr_9_reg_2170;
wire   [4:0] buff_s_out_1_addr_9_reg_2175;
reg   [31:0] buff_s_out_load_6_reg_2180;
reg   [31:0] buff_s_out_1_load_6_reg_2185;
reg   [31:0] buff_s_out_load_7_reg_2190;
reg   [31:0] buff_s_out_1_load_7_reg_2195;
wire   [4:0] buff_s_out_addr_10_reg_2200;
wire    ap_CS_fsm_state9;
wire   [4:0] buff_s_out_1_addr_10_reg_2205;
wire   [4:0] buff_s_out_addr_11_reg_2210;
wire   [4:0] buff_s_out_1_addr_11_reg_2215;
reg   [31:0] buff_s_out_load_8_reg_2220;
reg   [31:0] buff_s_out_1_load_8_reg_2225;
reg   [31:0] buff_s_out_load_9_reg_2230;
reg   [31:0] buff_s_out_1_load_9_reg_2235;
wire   [4:0] buff_s_out_addr_12_reg_2240;
wire    ap_CS_fsm_state10;
wire   [4:0] buff_s_out_1_addr_12_reg_2245;
wire   [4:0] buff_s_out_addr_13_reg_2250;
wire   [4:0] buff_s_out_1_addr_13_reg_2255;
reg   [31:0] buff_s_out_load_10_reg_2260;
reg   [31:0] buff_s_out_1_load_10_reg_2265;
reg   [31:0] buff_s_out_load_11_reg_2270;
reg   [31:0] buff_s_out_1_load_11_reg_2275;
wire   [4:0] buff_s_out_addr_14_reg_2280;
wire    ap_CS_fsm_state11;
wire   [4:0] buff_s_out_1_addr_14_reg_2285;
wire   [4:0] buff_s_out_addr_15_reg_2290;
wire   [4:0] buff_s_out_1_addr_15_reg_2295;
reg   [31:0] buff_s_out_load_12_reg_2300;
reg   [31:0] buff_s_out_1_load_12_reg_2305;
reg   [31:0] buff_s_out_load_13_reg_2310;
reg   [31:0] buff_s_out_1_load_13_reg_2315;
wire   [4:0] buff_s_out_addr_16_reg_2320;
wire    ap_CS_fsm_state12;
wire   [4:0] buff_s_out_1_addr_16_reg_2325;
wire   [4:0] buff_s_out_addr_17_reg_2330;
wire   [4:0] buff_s_out_1_addr_17_reg_2335;
reg   [31:0] buff_s_out_load_14_reg_2340;
reg   [31:0] buff_s_out_1_load_14_reg_2345;
reg   [31:0] buff_s_out_load_15_reg_2350;
reg   [31:0] buff_s_out_1_load_15_reg_2355;
wire   [4:0] buff_s_out_addr_18_reg_2360;
wire    ap_CS_fsm_state13;
wire   [4:0] buff_s_out_1_addr_18_reg_2365;
wire   [4:0] buff_s_out_addr_19_reg_2370;
wire   [4:0] buff_s_out_1_addr_19_reg_2375;
reg   [31:0] buff_s_out_load_16_reg_2380;
reg   [31:0] buff_s_out_1_load_16_reg_2385;
reg   [31:0] buff_s_out_load_17_reg_2390;
reg   [31:0] buff_s_out_1_load_17_reg_2395;
wire   [4:0] buff_s_out_addr_20_reg_2400;
wire    ap_CS_fsm_state14;
wire   [4:0] buff_s_out_1_addr_20_reg_2405;
wire   [4:0] buff_s_out_addr_21_reg_2410;
wire   [4:0] buff_s_out_1_addr_21_reg_2415;
reg   [31:0] buff_s_out_load_18_reg_2420;
reg   [31:0] buff_s_out_1_load_18_reg_2425;
reg   [31:0] buff_s_out_load_19_reg_2430;
reg   [31:0] buff_s_out_1_load_19_reg_2435;
wire   [4:0] buff_s_out_addr_22_reg_2440;
wire    ap_CS_fsm_state15;
wire   [4:0] buff_s_out_1_addr_22_reg_2445;
wire   [4:0] buff_s_out_addr_23_reg_2450;
wire   [4:0] buff_s_out_1_addr_23_reg_2455;
reg   [31:0] buff_s_out_load_20_reg_2460;
reg   [31:0] buff_s_out_1_load_20_reg_2465;
reg   [31:0] buff_s_out_load_21_reg_2470;
reg   [31:0] buff_s_out_1_load_21_reg_2475;
wire   [4:0] buff_s_out_addr_24_reg_2480;
wire    ap_CS_fsm_state16;
wire   [4:0] buff_s_out_1_addr_24_reg_2485;
wire   [4:0] buff_s_out_addr_25_reg_2490;
wire   [4:0] buff_s_out_1_addr_25_reg_2495;
reg   [31:0] buff_s_out_load_22_reg_2500;
reg   [31:0] buff_s_out_1_load_22_reg_2505;
reg   [31:0] buff_s_out_load_23_reg_2510;
reg   [31:0] buff_s_out_1_load_23_reg_2515;
wire   [4:0] buff_s_out_addr_26_reg_2520;
wire    ap_CS_fsm_state17;
wire   [4:0] buff_s_out_1_addr_26_reg_2525;
wire   [4:0] buff_s_out_addr_27_reg_2530;
wire   [4:0] buff_s_out_1_addr_27_reg_2535;
reg   [31:0] buff_s_out_load_24_reg_2540;
reg   [31:0] buff_s_out_1_load_24_reg_2545;
reg   [31:0] buff_s_out_load_25_reg_2550;
reg   [31:0] buff_s_out_1_load_25_reg_2555;
wire   [4:0] buff_s_out_addr_28_reg_2560;
wire    ap_CS_fsm_state18;
wire   [4:0] buff_s_out_1_addr_28_reg_2565;
wire   [4:0] buff_s_out_addr_29_reg_2570;
wire   [4:0] buff_s_out_1_addr_29_reg_2575;
reg   [31:0] buff_s_out_load_26_reg_2580;
reg   [31:0] buff_s_out_1_load_26_reg_2585;
reg   [31:0] buff_s_out_load_27_reg_2590;
reg   [31:0] buff_s_out_1_load_27_reg_2595;
wire   [4:0] buff_s_out_addr_30_reg_2600;
wire    ap_CS_fsm_state19;
wire   [4:0] buff_s_out_1_addr_30_reg_2605;
wire   [4:0] buff_s_out_addr_31_reg_2610;
wire   [4:0] buff_s_out_1_addr_31_reg_2615;
reg   [31:0] buff_s_out_load_28_reg_2620;
reg   [31:0] buff_s_out_1_load_28_reg_2625;
reg   [31:0] buff_s_out_load_29_reg_2630;
reg   [31:0] buff_s_out_1_load_29_reg_2635;
reg   [31:0] buff_s_out_load_30_reg_2640;
wire    ap_CS_fsm_state20;
reg   [31:0] buff_s_out_1_load_30_reg_2645;
reg   [31:0] buff_s_out_load_31_reg_2650;
reg   [31:0] buff_s_out_1_load_31_reg_2655;
reg   [9:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [9:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg    buff_A_ce2;
wire   [31:0] buff_A_q2;
reg   [9:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [9:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg   [9:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [9:0] buff_A_2_address1;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg    buff_A_2_ce2;
wire   [31:0] buff_A_2_q2;
reg   [9:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [9:0] buff_A_3_address1;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg    buff_A_3_ce2;
wire   [31:0] buff_A_3_q2;
reg   [4:0] buff_p_address0;
reg    buff_p_ce0;
wire   [31:0] buff_p_q0;
reg    buff_p_ce1;
wire   [31:0] buff_p_q1;
reg   [4:0] buff_p_1_address0;
reg    buff_p_1_ce0;
wire   [31:0] buff_p_1_q0;
reg    buff_p_1_ce1;
wire   [31:0] buff_p_1_q1;
reg   [4:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg    buff_r_ce1;
wire   [31:0] buff_r_q1;
reg   [4:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg    buff_r_1_ce1;
wire   [31:0] buff_r_1_q1;
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
reg   [4:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_ap_ready;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1080_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_A_0_ce0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_1080_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_d0;
wire    grp_bicg_Pipeline_lp1_fu_1095_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1095_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1095_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1095_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_address2;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce2;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce1;
wire   [9:0] grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce2;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1095_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_r_ce0;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1095_buff_r_address1;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_r_ce1;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_ce0;
wire   [4:0] grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_address1;
wire    grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_ce1;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_63182_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_63182_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_62181_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_62181_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_61180_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_61180_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_60179_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_60179_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_59178_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_59178_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_58177_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_58177_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_57176_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_57176_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_56175_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_56175_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_55174_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_55174_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_54173_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_54173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_53172_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_53172_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_52171_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_52171_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_51170_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_51170_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_50169_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_50169_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_49168_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_49168_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_48167_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_48167_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_47166_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_47166_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_46165_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_46165_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_45164_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_45164_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_44163_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_44163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_43162_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_43162_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_42161_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_42161_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_41160_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_41160_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_40159_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_40159_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_39158_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_39158_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_38157_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_38157_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_37156_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_37156_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_36155_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_36155_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_35154_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_35154_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_34153_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_34153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_33152_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_33152_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_32151_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_32151_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_31150_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_31150_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_30149_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_30149_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_29148_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_29148_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_28147_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_28147_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_27146_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_27146_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_26145_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_26145_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_25144_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_25144_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_24143_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_24143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_23142_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_23142_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_22141_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_22141_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_21140_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_21140_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_20139_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_20139_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_19138_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_19138_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_18137_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_18137_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_17136_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_17136_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_16135_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_16135_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_15134_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_15134_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_14133_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_14133_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_13132_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_13132_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_12131_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_12131_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_11130_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_11130_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_10129_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_10129_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_9128_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_9128_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_8127_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_8127_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_7126_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_7126_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_6125_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_6125_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_5124_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_5124_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_4123_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_4123_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_3122_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_3122_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_2121_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_2121_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7_1120_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7_1120_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_add_7119_out;
wire    grp_bicg_Pipeline_lp1_fu_1095_add_7119_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_ce;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_ce1;
wire   [4:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_ce0;
wire   [4:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_ce1;
wire   [4:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_ce0;
wire   [4:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_ce1;
wire   [4:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_d0;
wire   [4:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1249_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1249_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1249_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1249_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1249_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1249_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1249_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1249_q_out_write;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_1_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_1_ce0;
reg    grp_bicg_Pipeline_lprd_2_fu_1080_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp1_fu_1095_ap_start_reg;
wire    ap_CS_fsm_state21;
reg    grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start_reg;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_bicg_Pipeline_lpwr_fu_1249_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
wire   [63:0] zext_ln13_fu_1281_p1;
wire   [0:0] icmp_ln13_fu_1269_p2;
wire   [63:0] zext_ln5_fu_1305_p1;
reg   [6:0] i_fu_126;
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
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_ce1_local;
reg   [4:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [4:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
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
wire   [31:0] bitcast_ln14_fu_1317_p1;
reg    buff_p_ce0_local;
reg    buff_r_we0_local;
wire   [31:0] bitcast_ln15_fu_1323_p1;
reg    buff_r_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
wire   [31:0] grp_fu_2660_p2;
reg   [31:0] grp_fu_2660_p0;
reg   [31:0] grp_fu_2660_p1;
reg    grp_fu_2660_ce;
wire   [31:0] grp_fu_2664_p2;
reg   [31:0] grp_fu_2664_p0;
reg   [31:0] grp_fu_2664_p1;
reg    grp_fu_2664_ce;
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
#0 grp_bicg_Pipeline_lprd_2_fu_1080_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1095_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1249_ap_start_reg = 1'b0;
#0 i_fu_126 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1317_p1),.q0(buff_p_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_address1),.ce1(buff_p_ce1),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1317_p1),.q0(buff_p_1_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_address1),.ce1(buff_p_1_ce1),.q1(buff_p_1_q1));
bicg_buff_r_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1323_p1),.q0(buff_r_q0),.address1(grp_bicg_Pipeline_lp1_fu_1095_buff_r_address1),.ce1(buff_r_ce1),.q1(buff_r_q1));
bicg_buff_r_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1323_p1),.q0(buff_r_1_q0),.address1(grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_address1),.ce1(buff_r_1_ce1),.q1(buff_r_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0_local),.d0(buff_s_out_d0_local),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0_local),.d0(buff_s_out_1_d0_local),.q0(buff_s_out_1_q0),.address1(buff_s_out_1_address1_local),.ce1(buff_s_out_1_ce1_local),.we1(buff_s_out_1_we1_local),.d1(buff_s_out_1_d1_local),.q1(buff_s_out_1_q1));
bicg_buff_q_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0));
bicg_buff_q_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1080(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1080_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1080_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1080_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1080_ap_ready),.i(trunc_ln13_reg_2025),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1080_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1080_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1080_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1080_A_1_ce0),.A_1_q0(A_1_q0),.lshr_ln5(lshr_ln5_reg_2035),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_d0),.empty(trunc_ln13_1_reg_2030));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1095(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1095_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1095_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1095_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1095_ap_ready),.buff_s_out_1_load_31(buff_s_out_1_load_31_reg_2655),.buff_s_out_load_31(buff_s_out_load_31_reg_2650),.buff_s_out_1_load_30(buff_s_out_1_load_30_reg_2645),.buff_s_out_load_30(buff_s_out_load_30_reg_2640),.buff_s_out_1_load_29(buff_s_out_1_load_29_reg_2635),.buff_s_out_load_29(buff_s_out_load_29_reg_2630),.buff_s_out_1_load_28(buff_s_out_1_load_28_reg_2625),.buff_s_out_load_28(buff_s_out_load_28_reg_2620),.buff_s_out_1_load_27(buff_s_out_1_load_27_reg_2595),.buff_s_out_load_27(buff_s_out_load_27_reg_2590),.buff_s_out_1_load_26(buff_s_out_1_load_26_reg_2585),.buff_s_out_load_26(buff_s_out_load_26_reg_2580),.buff_s_out_1_load_25(buff_s_out_1_load_25_reg_2555),.buff_s_out_load_25(buff_s_out_load_25_reg_2550),.buff_s_out_1_load_24(buff_s_out_1_load_24_reg_2545),.buff_s_out_load_24(buff_s_out_load_24_reg_2540),.buff_s_out_1_load_23(buff_s_out_1_load_23_reg_2515),.buff_s_out_load_23(buff_s_out_load_23_reg_2510),.buff_s_out_1_load_22(buff_s_out_1_load_22_reg_2505),.buff_s_out_load_22(buff_s_out_load_22_reg_2500),.buff_s_out_1_load_21(buff_s_out_1_load_21_reg_2475),.buff_s_out_load_21(buff_s_out_load_21_reg_2470),.buff_s_out_1_load_20(buff_s_out_1_load_20_reg_2465),.buff_s_out_load_20(buff_s_out_load_20_reg_2460),.buff_s_out_1_load_19(buff_s_out_1_load_19_reg_2435),.buff_s_out_load_19(buff_s_out_load_19_reg_2430),.buff_s_out_1_load_18(buff_s_out_1_load_18_reg_2425),.buff_s_out_load_18(buff_s_out_load_18_reg_2420),.buff_s_out_1_load_17(buff_s_out_1_load_17_reg_2395),.buff_s_out_load_17(buff_s_out_load_17_reg_2390),.buff_s_out_1_load_16(buff_s_out_1_load_16_reg_2385),.buff_s_out_load_16(buff_s_out_load_16_reg_2380),.buff_s_out_1_load_15(buff_s_out_1_load_15_reg_2355),.buff_s_out_load_15(buff_s_out_load_15_reg_2350),.buff_s_out_1_load_14(buff_s_out_1_load_14_reg_2345),.buff_s_out_load_14(buff_s_out_load_14_reg_2340),.buff_s_out_1_load_13(buff_s_out_1_load_13_reg_2315),.buff_s_out_load_13(buff_s_out_load_13_reg_2310),.buff_s_out_1_load_12(buff_s_out_1_load_12_reg_2305),.buff_s_out_load_12(buff_s_out_load_12_reg_2300),.buff_s_out_1_load_11(buff_s_out_1_load_11_reg_2275),.buff_s_out_load_11(buff_s_out_load_11_reg_2270),.buff_s_out_1_load_10(buff_s_out_1_load_10_reg_2265),.buff_s_out_load_10(buff_s_out_load_10_reg_2260),.buff_s_out_1_load_9(buff_s_out_1_load_9_reg_2235),.buff_s_out_load_9(buff_s_out_load_9_reg_2230),.buff_s_out_1_load_8(buff_s_out_1_load_8_reg_2225),.buff_s_out_load_8(buff_s_out_load_8_reg_2220),.buff_s_out_1_load_7(buff_s_out_1_load_7_reg_2195),.buff_s_out_load_7(buff_s_out_load_7_reg_2190),.buff_s_out_1_load_6(buff_s_out_1_load_6_reg_2185),.buff_s_out_load_6(buff_s_out_load_6_reg_2180),.buff_s_out_1_load_5(buff_s_out_1_load_5_reg_2155),.buff_s_out_load_5(buff_s_out_load_5_reg_2150),.buff_s_out_1_load_4(buff_s_out_1_load_4_reg_2145),.buff_s_out_load_4(buff_s_out_load_4_reg_2140),.buff_s_out_1_load_3(buff_s_out_1_load_3_reg_2115),.buff_s_out_load_3(buff_s_out_load_3_reg_2110),.buff_s_out_1_load_2(buff_s_out_1_load_2_reg_2105),.buff_s_out_load_2(buff_s_out_load_2_reg_2100),.buff_s_out_1_load_1(buff_s_out_1_load_1_reg_2075),.buff_s_out_load_1(buff_s_out_load_1_reg_2070),.buff_s_out_1_load(buff_s_out_1_load_reg_2065),.buff_s_out_load(buff_s_out_load_reg_2060),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1095_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1095_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_address1(grp_bicg_Pipeline_lp1_fu_1095_buff_r_address1),.buff_r_ce1(grp_bicg_Pipeline_lp1_fu_1095_buff_r_ce1),.buff_r_q1(buff_r_q1),.buff_r_1_address0(grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_1_address1(grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_address1),.buff_r_1_ce1(grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_ce1),.buff_r_1_q1(buff_r_1_q1),.add_7_63182_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_63182_out),.add_7_63182_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_63182_out_ap_vld),.add_7_62181_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_62181_out),.add_7_62181_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_62181_out_ap_vld),.add_7_61180_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_61180_out),.add_7_61180_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_61180_out_ap_vld),.add_7_60179_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_60179_out),.add_7_60179_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_60179_out_ap_vld),.add_7_59178_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_59178_out),.add_7_59178_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_59178_out_ap_vld),.add_7_58177_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_58177_out),.add_7_58177_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_58177_out_ap_vld),.add_7_57176_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_57176_out),.add_7_57176_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_57176_out_ap_vld),.add_7_56175_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_56175_out),.add_7_56175_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_56175_out_ap_vld),.add_7_55174_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_55174_out),.add_7_55174_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_55174_out_ap_vld),.add_7_54173_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_54173_out),.add_7_54173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_54173_out_ap_vld),.add_7_53172_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_53172_out),.add_7_53172_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_53172_out_ap_vld),.add_7_52171_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_52171_out),.add_7_52171_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_52171_out_ap_vld),.add_7_51170_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_51170_out),.add_7_51170_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_51170_out_ap_vld),.add_7_50169_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_50169_out),.add_7_50169_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_50169_out_ap_vld),.add_7_49168_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_49168_out),.add_7_49168_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_49168_out_ap_vld),.add_7_48167_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_48167_out),.add_7_48167_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_48167_out_ap_vld),.add_7_47166_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_47166_out),.add_7_47166_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_47166_out_ap_vld),.add_7_46165_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_46165_out),.add_7_46165_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_46165_out_ap_vld),.add_7_45164_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_45164_out),.add_7_45164_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_45164_out_ap_vld),.add_7_44163_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_44163_out),.add_7_44163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_44163_out_ap_vld),.add_7_43162_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_43162_out),.add_7_43162_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_43162_out_ap_vld),.add_7_42161_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_42161_out),.add_7_42161_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_42161_out_ap_vld),.add_7_41160_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_41160_out),.add_7_41160_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_41160_out_ap_vld),.add_7_40159_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_40159_out),.add_7_40159_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_40159_out_ap_vld),.add_7_39158_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_39158_out),.add_7_39158_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_39158_out_ap_vld),.add_7_38157_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_38157_out),.add_7_38157_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_38157_out_ap_vld),.add_7_37156_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_37156_out),.add_7_37156_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_37156_out_ap_vld),.add_7_36155_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_36155_out),.add_7_36155_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_36155_out_ap_vld),.add_7_35154_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_35154_out),.add_7_35154_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_35154_out_ap_vld),.add_7_34153_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_34153_out),.add_7_34153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_34153_out_ap_vld),.add_7_33152_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_33152_out),.add_7_33152_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_33152_out_ap_vld),.add_7_32151_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_32151_out),.add_7_32151_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_32151_out_ap_vld),.add_7_31150_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_31150_out),.add_7_31150_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_31150_out_ap_vld),.add_7_30149_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_30149_out),.add_7_30149_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_30149_out_ap_vld),.add_7_29148_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_29148_out),.add_7_29148_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_29148_out_ap_vld),.add_7_28147_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_28147_out),.add_7_28147_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_28147_out_ap_vld),.add_7_27146_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_27146_out),.add_7_27146_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_27146_out_ap_vld),.add_7_26145_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_26145_out),.add_7_26145_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_26145_out_ap_vld),.add_7_25144_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_25144_out),.add_7_25144_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_25144_out_ap_vld),.add_7_24143_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_24143_out),.add_7_24143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_24143_out_ap_vld),.add_7_23142_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_23142_out),.add_7_23142_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_23142_out_ap_vld),.add_7_22141_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_22141_out),.add_7_22141_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_22141_out_ap_vld),.add_7_21140_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_21140_out),.add_7_21140_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_21140_out_ap_vld),.add_7_20139_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_20139_out),.add_7_20139_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_20139_out_ap_vld),.add_7_19138_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_19138_out),.add_7_19138_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_19138_out_ap_vld),.add_7_18137_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_18137_out),.add_7_18137_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_18137_out_ap_vld),.add_7_17136_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_17136_out),.add_7_17136_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_17136_out_ap_vld),.add_7_16135_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_16135_out),.add_7_16135_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_16135_out_ap_vld),.add_7_15134_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_15134_out),.add_7_15134_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_15134_out_ap_vld),.add_7_14133_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_14133_out),.add_7_14133_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_14133_out_ap_vld),.add_7_13132_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_13132_out),.add_7_13132_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_13132_out_ap_vld),.add_7_12131_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_12131_out),.add_7_12131_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_12131_out_ap_vld),.add_7_11130_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_11130_out),.add_7_11130_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_11130_out_ap_vld),.add_7_10129_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_10129_out),.add_7_10129_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_10129_out_ap_vld),.add_7_9128_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_9128_out),.add_7_9128_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_9128_out_ap_vld),.add_7_8127_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_8127_out),.add_7_8127_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_8127_out_ap_vld),.add_7_7126_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_7126_out),.add_7_7126_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_7126_out_ap_vld),.add_7_6125_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_6125_out),.add_7_6125_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_6125_out_ap_vld),.add_7_5124_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_5124_out),.add_7_5124_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_5124_out_ap_vld),.add_7_4123_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_4123_out),.add_7_4123_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_4123_out_ap_vld),.add_7_3122_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_3122_out),.add_7_3122_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_3122_out_ap_vld),.add_7_2121_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_2121_out),.add_7_2121_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_2121_out_ap_vld),.add_7_1120_out(grp_bicg_Pipeline_lp1_fu_1095_add_7_1120_out),.add_7_1120_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7_1120_out_ap_vld),.add_7119_out(grp_bicg_Pipeline_lp1_fu_1095_add_7119_out),.add_7119_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1095_add_7119_out_ap_vld),.grp_fu_2660_p_din0(grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_din0),.grp_fu_2660_p_din1(grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_din1),.grp_fu_2660_p_opcode(grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_opcode),.grp_fu_2660_p_dout0(grp_fu_2660_p2),.grp_fu_2660_p_ce(grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_ce),.grp_fu_2664_p_din0(grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_din0),.grp_fu_2664_p_din1(grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_din1),.grp_fu_2664_p_dout0(grp_fu_2664_p2),.grp_fu_2664_p_ce(grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_ce));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_1237(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_address1),.buff_p_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_ce1),.buff_p_q1(buff_p_q1),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_1_address1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_address1),.buff_p_1_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_ce1),.buff_p_1_q1(buff_p_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.grp_fu_2660_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_din0),.grp_fu_2660_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_din1),.grp_fu_2660_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_opcode),.grp_fu_2660_p_dout0(grp_fu_2660_p2),.grp_fu_2660_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_ce),.grp_fu_2664_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_din0),.grp_fu_2664_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_din1),.grp_fu_2664_p_dout0(grp_fu_2664_p2),.grp_fu_2664_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1249(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1249_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1249_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1249_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1249_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1249_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1249_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1249_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1249_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2660_p0),.din1(grp_fu_2660_p1),.ce(grp_fu_2660_ce),.dout(grp_fu_2660_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2664_p0),.din1(grp_fu_2664_p1),.ce(grp_fu_2664_ce),.dout(grp_fu_2664_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1095_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_bicg_Pipeline_lp1_fu_1095_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1095_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1095_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1080_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_1080_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1080_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1080_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1249_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_bicg_Pipeline_lpwr_fu_1249_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1249_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1249_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_126 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_126 <= add_ln13_reg_1986;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_1986 <= add_ln13_fu_1275_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_load_10_reg_2265 <= buff_s_out_1_q0;
        buff_s_out_1_load_11_reg_2275 <= buff_s_out_1_q1;
        buff_s_out_load_10_reg_2260 <= buff_s_out_q0;
        buff_s_out_load_11_reg_2270 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_1_load_12_reg_2305 <= buff_s_out_1_q0;
        buff_s_out_1_load_13_reg_2315 <= buff_s_out_1_q1;
        buff_s_out_load_12_reg_2300 <= buff_s_out_q0;
        buff_s_out_load_13_reg_2310 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_load_14_reg_2345 <= buff_s_out_1_q0;
        buff_s_out_1_load_15_reg_2355 <= buff_s_out_1_q1;
        buff_s_out_load_14_reg_2340 <= buff_s_out_q0;
        buff_s_out_load_15_reg_2350 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_1_load_16_reg_2385 <= buff_s_out_1_q0;
        buff_s_out_1_load_17_reg_2395 <= buff_s_out_1_q1;
        buff_s_out_load_16_reg_2380 <= buff_s_out_q0;
        buff_s_out_load_17_reg_2390 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_1_load_18_reg_2425 <= buff_s_out_1_q0;
        buff_s_out_1_load_19_reg_2435 <= buff_s_out_1_q1;
        buff_s_out_load_18_reg_2420 <= buff_s_out_q0;
        buff_s_out_load_19_reg_2430 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_load_1_reg_2075 <= buff_s_out_1_q0;
        buff_s_out_1_load_reg_2065 <= buff_s_out_1_q1;
        buff_s_out_load_1_reg_2070 <= buff_s_out_q0;
        buff_s_out_load_reg_2060 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_load_20_reg_2465 <= buff_s_out_1_q0;
        buff_s_out_1_load_21_reg_2475 <= buff_s_out_1_q1;
        buff_s_out_load_20_reg_2460 <= buff_s_out_q0;
        buff_s_out_load_21_reg_2470 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_1_load_22_reg_2505 <= buff_s_out_1_q0;
        buff_s_out_1_load_23_reg_2515 <= buff_s_out_1_q1;
        buff_s_out_load_22_reg_2500 <= buff_s_out_q0;
        buff_s_out_load_23_reg_2510 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_1_load_24_reg_2545 <= buff_s_out_1_q0;
        buff_s_out_1_load_25_reg_2555 <= buff_s_out_1_q1;
        buff_s_out_load_24_reg_2540 <= buff_s_out_q0;
        buff_s_out_load_25_reg_2550 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_1_load_26_reg_2585 <= buff_s_out_1_q0;
        buff_s_out_1_load_27_reg_2595 <= buff_s_out_1_q1;
        buff_s_out_load_26_reg_2580 <= buff_s_out_q0;
        buff_s_out_load_27_reg_2590 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_1_load_28_reg_2625 <= buff_s_out_1_q0;
        buff_s_out_1_load_29_reg_2635 <= buff_s_out_1_q1;
        buff_s_out_load_28_reg_2620 <= buff_s_out_q0;
        buff_s_out_load_29_reg_2630 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_load_2_reg_2105 <= buff_s_out_1_q0;
        buff_s_out_1_load_3_reg_2115 <= buff_s_out_1_q1;
        buff_s_out_load_2_reg_2100 <= buff_s_out_q0;
        buff_s_out_load_3_reg_2110 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_1_load_30_reg_2645 <= buff_s_out_1_q0;
        buff_s_out_1_load_31_reg_2655 <= buff_s_out_1_q1;
        buff_s_out_load_30_reg_2640 <= buff_s_out_q0;
        buff_s_out_load_31_reg_2650 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_1_load_4_reg_2145 <= buff_s_out_1_q0;
        buff_s_out_1_load_5_reg_2155 <= buff_s_out_1_q1;
        buff_s_out_load_4_reg_2140 <= buff_s_out_q0;
        buff_s_out_load_5_reg_2150 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_load_6_reg_2185 <= buff_s_out_1_q0;
        buff_s_out_1_load_7_reg_2195 <= buff_s_out_1_q1;
        buff_s_out_load_6_reg_2180 <= buff_s_out_q0;
        buff_s_out_load_7_reg_2190 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_load_8_reg_2225 <= buff_s_out_1_q0;
        buff_s_out_1_load_9_reg_2235 <= buff_s_out_1_q1;
        buff_s_out_load_8_reg_2220 <= buff_s_out_q0;
        buff_s_out_load_9_reg_2230 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln5_reg_2035 <= {{i_fu_126[5:1]}};
        trunc_ln13_1_reg_2030 <= trunc_ln13_1_fu_1291_p1;
        trunc_ln13_reg_2025 <= trunc_ln13_fu_1287_p1;
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
    if ((grp_bicg_Pipeline_lp1_fu_1095_ap_done == 1'b0)) begin
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
    if ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1249_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_1080_ap_done == 1'b0)) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_1249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_1249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp1_fu_1095_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1080_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_1305_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_p_1_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_1_ce1;
    end else begin
        buff_p_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_1305_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_ce0;
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
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_p_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_p_ce1;
    end else begin
        buff_p_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1305_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_ce0;
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
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1305_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_ce0;
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
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1305_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_1_ce1 = grp_bicg_Pipeline_lp1_fu_1095_buff_r_1_ce1;
    end else begin
        buff_r_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1095_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1305_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1095_buff_r_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_r_ce1 = grp_bicg_Pipeline_lp1_fu_1095_buff_r_ce1;
    end else begin
        buff_r_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = buff_s_out_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_30_reg_2605;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_28_reg_2565;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_26_reg_2525;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_24_reg_2485;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_22_reg_2445;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_20_reg_2405;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_18_reg_2365;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_16_reg_2325;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_14_reg_2285;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_12_reg_2245;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_10_reg_2205;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_8_reg_2165;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_6_reg_2125;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_4_reg_2085;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_2_reg_2045;
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
        buff_s_out_1_address0_local = zext_ln5_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0_local = 64'd1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_31_reg_2615;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_29_reg_2575;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_27_reg_2535;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_25_reg_2495;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_23_reg_2455;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_21_reg_2415;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_19_reg_2375;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_17_reg_2335;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_15_reg_2295;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_13_reg_2255;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_11_reg_2215;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_9_reg_2175;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_7_reg_2135;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_5_reg_2095;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address1_local = buff_s_out_1_addr_3_reg_2055;
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
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state36) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_61180_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_57176_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_53172_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_49168_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_45164_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_41160_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_37156_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_33152_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_29148_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_25144_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_21140_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_17136_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_13132_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_9128_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_5124_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_1120_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_d0_local = 32'd0;
    end else begin
        buff_s_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_63182_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_59178_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_55174_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_51170_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_47166_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_43162_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_39158_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_35154_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_31150_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_27146_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_23142_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_19138_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_15134_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_11130_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_7126_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_1_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_3122_out;
    end else begin
        buff_s_out_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state36) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd1)))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state36) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)))) begin
        buff_s_out_1_we1_local = 1'b1;
    end else begin
        buff_s_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address0_local = buff_s_out_addr_30_reg_2600;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_address0_local = buff_s_out_addr_28_reg_2560;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_address0_local = buff_s_out_addr_26_reg_2520;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address0_local = buff_s_out_addr_24_reg_2480;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address0_local = buff_s_out_addr_22_reg_2440;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address0_local = buff_s_out_addr_20_reg_2400;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address0_local = buff_s_out_addr_18_reg_2360;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address0_local = buff_s_out_addr_16_reg_2320;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address0_local = buff_s_out_addr_14_reg_2280;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address0_local = buff_s_out_addr_12_reg_2240;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address0_local = buff_s_out_addr_10_reg_2200;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address0_local = buff_s_out_addr_8_reg_2160;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address0_local = buff_s_out_addr_6_reg_2120;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address0_local = buff_s_out_addr_4_reg_2080;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0_local = buff_s_out_addr_2_reg_2040;
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
        buff_s_out_address0_local = zext_ln5_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address1_local = buff_s_out_addr_31_reg_2610;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_address1_local = buff_s_out_addr_29_reg_2570;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_address1_local = buff_s_out_addr_27_reg_2530;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address1_local = buff_s_out_addr_25_reg_2490;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address1_local = buff_s_out_addr_23_reg_2450;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address1_local = buff_s_out_addr_21_reg_2410;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address1_local = buff_s_out_addr_19_reg_2370;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address1_local = buff_s_out_addr_17_reg_2330;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address1_local = buff_s_out_addr_15_reg_2290;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address1_local = buff_s_out_addr_13_reg_2250;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address1_local = buff_s_out_addr_11_reg_2210;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address1_local = buff_s_out_addr_9_reg_2170;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address1_local = buff_s_out_addr_7_reg_2130;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address1_local = buff_s_out_addr_5_reg_2090;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address1_local = buff_s_out_addr_3_reg_2050;
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
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1249_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state36) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_60179_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_56175_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_52171_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_48167_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_44163_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_40159_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_36155_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_32151_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_28147_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_24143_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_20139_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_16135_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_12131_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_8127_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_4123_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1095_add_7119_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_d0_local = 32'd0;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_62181_out;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_58177_out;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_54173_out;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_50169_out;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_46165_out;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_42161_out;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_38157_out;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_34153_out;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_30149_out;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_26145_out;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_22141_out;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_18137_out;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_14133_out;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_10129_out;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_6125_out;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1095_add_7_2121_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state36) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)) | ((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1291_p1 == 1'd0)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state36) | ((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2660_ce = grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2660_ce = grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_ce;
    end else begin
        grp_fu_2660_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2660_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2660_p0 = grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_din0;
    end else begin
        grp_fu_2660_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2660_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2660_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2660_p1 = grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2660_p_din1;
    end else begin
        grp_fu_2660_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2664_ce = grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2664_ce = grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_ce;
    end else begin
        grp_fu_2664_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2664_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2664_p0 = grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_din0;
    end else begin
        grp_fu_2664_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_2664_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1237_grp_fu_2664_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2664_p1 = grp_bicg_Pipeline_lp1_fu_1095_grp_fu_2664_p_din1;
    end else begin
        grp_fu_2664_p1 = 'bx;
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
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1249_q_out_write;
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
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1249_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1269_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_1080_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((grp_bicg_Pipeline_lp1_fu_1095_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
            if (((grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_1249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1080_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1080_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1080_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1080_A_1_ce0;
assign add_ln13_fu_1275_p2 = (i_fu_126 + 7'd1);
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
assign bitcast_ln14_fu_1317_p1 = p_q0;
assign bitcast_ln15_fu_1323_p1 = r_q0;
assign buff_s_out_1_addr_10_reg_2205 = 64'd10;
assign buff_s_out_1_addr_11_reg_2215 = 64'd11;
assign buff_s_out_1_addr_12_reg_2245 = 64'd12;
assign buff_s_out_1_addr_13_reg_2255 = 64'd13;
assign buff_s_out_1_addr_14_reg_2285 = 64'd14;
assign buff_s_out_1_addr_15_reg_2295 = 64'd15;
assign buff_s_out_1_addr_16_reg_2325 = 64'd16;
assign buff_s_out_1_addr_17_reg_2335 = 64'd17;
assign buff_s_out_1_addr_18_reg_2365 = 64'd18;
assign buff_s_out_1_addr_19_reg_2375 = 64'd19;
assign buff_s_out_1_addr_20_reg_2405 = 64'd20;
assign buff_s_out_1_addr_21_reg_2415 = 64'd21;
assign buff_s_out_1_addr_22_reg_2445 = 64'd22;
assign buff_s_out_1_addr_23_reg_2455 = 64'd23;
assign buff_s_out_1_addr_24_reg_2485 = 64'd24;
assign buff_s_out_1_addr_25_reg_2495 = 64'd25;
assign buff_s_out_1_addr_26_reg_2525 = 64'd26;
assign buff_s_out_1_addr_27_reg_2535 = 64'd27;
assign buff_s_out_1_addr_28_reg_2565 = 64'd28;
assign buff_s_out_1_addr_29_reg_2575 = 64'd29;
assign buff_s_out_1_addr_2_reg_2045 = 64'd2;
assign buff_s_out_1_addr_30_reg_2605 = 64'd30;
assign buff_s_out_1_addr_31_reg_2615 = 64'd31;
assign buff_s_out_1_addr_3_reg_2055 = 64'd3;
assign buff_s_out_1_addr_4_reg_2085 = 64'd4;
assign buff_s_out_1_addr_5_reg_2095 = 64'd5;
assign buff_s_out_1_addr_6_reg_2125 = 64'd6;
assign buff_s_out_1_addr_7_reg_2135 = 64'd7;
assign buff_s_out_1_addr_8_reg_2165 = 64'd8;
assign buff_s_out_1_addr_9_reg_2175 = 64'd9;
assign buff_s_out_addr_10_reg_2200 = 64'd10;
assign buff_s_out_addr_11_reg_2210 = 64'd11;
assign buff_s_out_addr_12_reg_2240 = 64'd12;
assign buff_s_out_addr_13_reg_2250 = 64'd13;
assign buff_s_out_addr_14_reg_2280 = 64'd14;
assign buff_s_out_addr_15_reg_2290 = 64'd15;
assign buff_s_out_addr_16_reg_2320 = 64'd16;
assign buff_s_out_addr_17_reg_2330 = 64'd17;
assign buff_s_out_addr_18_reg_2360 = 64'd18;
assign buff_s_out_addr_19_reg_2370 = 64'd19;
assign buff_s_out_addr_20_reg_2400 = 64'd20;
assign buff_s_out_addr_21_reg_2410 = 64'd21;
assign buff_s_out_addr_22_reg_2440 = 64'd22;
assign buff_s_out_addr_23_reg_2450 = 64'd23;
assign buff_s_out_addr_24_reg_2480 = 64'd24;
assign buff_s_out_addr_25_reg_2490 = 64'd25;
assign buff_s_out_addr_26_reg_2520 = 64'd26;
assign buff_s_out_addr_27_reg_2530 = 64'd27;
assign buff_s_out_addr_28_reg_2560 = 64'd28;
assign buff_s_out_addr_29_reg_2570 = 64'd29;
assign buff_s_out_addr_2_reg_2040 = 64'd2;
assign buff_s_out_addr_30_reg_2600 = 64'd30;
assign buff_s_out_addr_31_reg_2610 = 64'd31;
assign buff_s_out_addr_3_reg_2050 = 64'd3;
assign buff_s_out_addr_4_reg_2080 = 64'd4;
assign buff_s_out_addr_5_reg_2090 = 64'd5;
assign buff_s_out_addr_6_reg_2120 = 64'd6;
assign buff_s_out_addr_7_reg_2130 = 64'd7;
assign buff_s_out_addr_8_reg_2160 = 64'd8;
assign buff_s_out_addr_9_reg_2170 = 64'd9;
assign grp_bicg_Pipeline_lp1_fu_1095_ap_start = grp_bicg_Pipeline_lp1_fu_1095_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_1237_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1080_ap_start = grp_bicg_Pipeline_lprd_2_fu_1080_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1249_ap_start = grp_bicg_Pipeline_lpwr_fu_1249_ap_start_reg;
assign icmp_ln13_fu_1269_p2 = ((i_fu_126 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1295_p4 = {{i_fu_126[5:1]}};
assign p_address0 = zext_ln13_fu_1281_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1249_q_out_din;
assign r_address0 = zext_ln13_fu_1281_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1249_s_out_din;
assign trunc_ln13_1_fu_1291_p1 = i_fu_126[0:0];
assign trunc_ln13_fu_1287_p1 = i_fu_126[5:0];
assign zext_ln13_fu_1281_p1 = i_fu_126;
assign zext_ln5_fu_1305_p1 = lshr_ln5_fu_1295_p4;
endmodule 