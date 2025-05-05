module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_address0,A_ce0,A_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 70'd1;
parameter    ap_ST_fsm_state2 = 70'd2;
parameter    ap_ST_fsm_state3 = 70'd4;
parameter    ap_ST_fsm_state4 = 70'd8;
parameter    ap_ST_fsm_state5 = 70'd16;
parameter    ap_ST_fsm_state6 = 70'd32;
parameter    ap_ST_fsm_state7 = 70'd64;
parameter    ap_ST_fsm_state8 = 70'd128;
parameter    ap_ST_fsm_state9 = 70'd256;
parameter    ap_ST_fsm_state10 = 70'd512;
parameter    ap_ST_fsm_state11 = 70'd1024;
parameter    ap_ST_fsm_state12 = 70'd2048;
parameter    ap_ST_fsm_state13 = 70'd4096;
parameter    ap_ST_fsm_state14 = 70'd8192;
parameter    ap_ST_fsm_state15 = 70'd16384;
parameter    ap_ST_fsm_state16 = 70'd32768;
parameter    ap_ST_fsm_state17 = 70'd65536;
parameter    ap_ST_fsm_state18 = 70'd131072;
parameter    ap_ST_fsm_state19 = 70'd262144;
parameter    ap_ST_fsm_state20 = 70'd524288;
parameter    ap_ST_fsm_state21 = 70'd1048576;
parameter    ap_ST_fsm_state22 = 70'd2097152;
parameter    ap_ST_fsm_state23 = 70'd4194304;
parameter    ap_ST_fsm_state24 = 70'd8388608;
parameter    ap_ST_fsm_state25 = 70'd16777216;
parameter    ap_ST_fsm_state26 = 70'd33554432;
parameter    ap_ST_fsm_state27 = 70'd67108864;
parameter    ap_ST_fsm_state28 = 70'd134217728;
parameter    ap_ST_fsm_state29 = 70'd268435456;
parameter    ap_ST_fsm_state30 = 70'd536870912;
parameter    ap_ST_fsm_state31 = 70'd1073741824;
parameter    ap_ST_fsm_state32 = 70'd2147483648;
parameter    ap_ST_fsm_state33 = 70'd4294967296;
parameter    ap_ST_fsm_state34 = 70'd8589934592;
parameter    ap_ST_fsm_state35 = 70'd17179869184;
parameter    ap_ST_fsm_state36 = 70'd34359738368;
parameter    ap_ST_fsm_state37 = 70'd68719476736;
parameter    ap_ST_fsm_state38 = 70'd137438953472;
parameter    ap_ST_fsm_state39 = 70'd274877906944;
parameter    ap_ST_fsm_state40 = 70'd549755813888;
parameter    ap_ST_fsm_state41 = 70'd1099511627776;
parameter    ap_ST_fsm_state42 = 70'd2199023255552;
parameter    ap_ST_fsm_state43 = 70'd4398046511104;
parameter    ap_ST_fsm_state44 = 70'd8796093022208;
parameter    ap_ST_fsm_state45 = 70'd17592186044416;
parameter    ap_ST_fsm_state46 = 70'd35184372088832;
parameter    ap_ST_fsm_state47 = 70'd70368744177664;
parameter    ap_ST_fsm_state48 = 70'd140737488355328;
parameter    ap_ST_fsm_state49 = 70'd281474976710656;
parameter    ap_ST_fsm_state50 = 70'd562949953421312;
parameter    ap_ST_fsm_state51 = 70'd1125899906842624;
parameter    ap_ST_fsm_state52 = 70'd2251799813685248;
parameter    ap_ST_fsm_state53 = 70'd4503599627370496;
parameter    ap_ST_fsm_state54 = 70'd9007199254740992;
parameter    ap_ST_fsm_state55 = 70'd18014398509481984;
parameter    ap_ST_fsm_state56 = 70'd36028797018963968;
parameter    ap_ST_fsm_state57 = 70'd72057594037927936;
parameter    ap_ST_fsm_state58 = 70'd144115188075855872;
parameter    ap_ST_fsm_state59 = 70'd288230376151711744;
parameter    ap_ST_fsm_state60 = 70'd576460752303423488;
parameter    ap_ST_fsm_state61 = 70'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 70'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 70'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 70'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 70'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 70'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 70'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 70'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 70'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 70'd590295810358705651712;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
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
(* fsm_encoding = "none" *) reg   [69:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] buff_s_out_addr_reg_2301;
wire    ap_CS_fsm_state3;
wire   [5:0] buff_s_out_addr_1_reg_2306;
wire   [5:0] buff_s_out_addr_2_reg_2311;
wire    ap_CS_fsm_state4;
wire   [5:0] buff_s_out_addr_3_reg_2316;
reg   [31:0] buff_s_out_load_reg_2321;
reg   [31:0] buff_s_out_load_1_reg_2326;
wire   [5:0] buff_s_out_addr_4_reg_2331;
wire    ap_CS_fsm_state5;
wire   [5:0] buff_s_out_addr_5_reg_2336;
reg   [31:0] buff_s_out_load_2_reg_2341;
reg   [31:0] buff_s_out_load_3_reg_2346;
wire   [5:0] buff_s_out_addr_6_reg_2351;
wire    ap_CS_fsm_state6;
wire   [5:0] buff_s_out_addr_7_reg_2356;
reg   [31:0] buff_s_out_load_4_reg_2361;
reg   [31:0] buff_s_out_load_5_reg_2366;
wire   [5:0] buff_s_out_addr_8_reg_2371;
wire    ap_CS_fsm_state7;
wire   [5:0] buff_s_out_addr_9_reg_2376;
reg   [31:0] buff_s_out_load_6_reg_2381;
reg   [31:0] buff_s_out_load_7_reg_2386;
wire   [5:0] buff_s_out_addr_10_reg_2391;
wire    ap_CS_fsm_state8;
wire   [5:0] buff_s_out_addr_11_reg_2396;
reg   [31:0] buff_s_out_load_8_reg_2401;
reg   [31:0] buff_s_out_load_9_reg_2406;
wire   [5:0] buff_s_out_addr_12_reg_2411;
wire    ap_CS_fsm_state9;
wire   [5:0] buff_s_out_addr_13_reg_2416;
reg   [31:0] buff_s_out_load_10_reg_2421;
reg   [31:0] buff_s_out_load_11_reg_2426;
wire   [5:0] buff_s_out_addr_14_reg_2431;
wire    ap_CS_fsm_state10;
wire   [5:0] buff_s_out_addr_15_reg_2436;
reg   [31:0] buff_s_out_load_12_reg_2441;
reg   [31:0] buff_s_out_load_13_reg_2446;
wire   [5:0] buff_s_out_addr_16_reg_2451;
wire    ap_CS_fsm_state11;
wire   [5:0] buff_s_out_addr_17_reg_2456;
reg   [31:0] buff_s_out_load_14_reg_2461;
reg   [31:0] buff_s_out_load_15_reg_2466;
wire   [5:0] buff_s_out_addr_18_reg_2471;
wire    ap_CS_fsm_state12;
wire   [5:0] buff_s_out_addr_19_reg_2476;
reg   [31:0] buff_s_out_load_16_reg_2481;
reg   [31:0] buff_s_out_load_17_reg_2486;
wire   [5:0] buff_s_out_addr_20_reg_2491;
wire    ap_CS_fsm_state13;
wire   [5:0] buff_s_out_addr_21_reg_2496;
reg   [31:0] buff_s_out_load_18_reg_2501;
reg   [31:0] buff_s_out_load_19_reg_2506;
wire   [5:0] buff_s_out_addr_22_reg_2511;
wire    ap_CS_fsm_state14;
wire   [5:0] buff_s_out_addr_23_reg_2516;
reg   [31:0] buff_s_out_load_20_reg_2521;
reg   [31:0] buff_s_out_load_21_reg_2526;
wire   [5:0] buff_s_out_addr_24_reg_2531;
wire    ap_CS_fsm_state15;
wire   [5:0] buff_s_out_addr_25_reg_2536;
reg   [31:0] buff_s_out_load_22_reg_2541;
reg   [31:0] buff_s_out_load_23_reg_2546;
wire   [5:0] buff_s_out_addr_26_reg_2551;
wire    ap_CS_fsm_state16;
wire   [5:0] buff_s_out_addr_27_reg_2556;
reg   [31:0] buff_s_out_load_24_reg_2561;
reg   [31:0] buff_s_out_load_25_reg_2566;
wire   [5:0] buff_s_out_addr_28_reg_2571;
wire    ap_CS_fsm_state17;
wire   [5:0] buff_s_out_addr_29_reg_2576;
reg   [31:0] buff_s_out_load_26_reg_2581;
reg   [31:0] buff_s_out_load_27_reg_2586;
wire   [5:0] buff_s_out_addr_30_reg_2591;
wire    ap_CS_fsm_state18;
wire   [5:0] buff_s_out_addr_31_reg_2596;
reg   [31:0] buff_s_out_load_28_reg_2601;
reg   [31:0] buff_s_out_load_29_reg_2606;
wire   [5:0] buff_s_out_addr_32_reg_2611;
wire    ap_CS_fsm_state19;
wire   [5:0] buff_s_out_addr_33_reg_2616;
reg   [31:0] buff_s_out_load_30_reg_2621;
reg   [31:0] buff_s_out_load_31_reg_2626;
wire   [5:0] buff_s_out_addr_34_reg_2631;
wire    ap_CS_fsm_state20;
wire   [5:0] buff_s_out_addr_35_reg_2636;
reg   [31:0] buff_s_out_load_32_reg_2641;
reg   [31:0] buff_s_out_load_33_reg_2646;
wire   [5:0] buff_s_out_addr_36_reg_2651;
wire    ap_CS_fsm_state21;
wire   [5:0] buff_s_out_addr_37_reg_2656;
reg   [31:0] buff_s_out_load_34_reg_2661;
reg   [31:0] buff_s_out_load_35_reg_2666;
wire   [5:0] buff_s_out_addr_38_reg_2671;
wire    ap_CS_fsm_state22;
wire   [5:0] buff_s_out_addr_39_reg_2676;
reg   [31:0] buff_s_out_load_36_reg_2681;
reg   [31:0] buff_s_out_load_37_reg_2686;
wire   [5:0] buff_s_out_addr_40_reg_2691;
wire    ap_CS_fsm_state23;
wire   [5:0] buff_s_out_addr_41_reg_2696;
reg   [31:0] buff_s_out_load_38_reg_2701;
reg   [31:0] buff_s_out_load_39_reg_2706;
wire   [5:0] buff_s_out_addr_42_reg_2711;
wire    ap_CS_fsm_state24;
wire   [5:0] buff_s_out_addr_43_reg_2716;
reg   [31:0] buff_s_out_load_40_reg_2721;
reg   [31:0] buff_s_out_load_41_reg_2726;
wire   [5:0] buff_s_out_addr_44_reg_2731;
wire    ap_CS_fsm_state25;
wire   [5:0] buff_s_out_addr_45_reg_2736;
reg   [31:0] buff_s_out_load_42_reg_2741;
reg   [31:0] buff_s_out_load_43_reg_2746;
wire   [5:0] buff_s_out_addr_46_reg_2751;
wire    ap_CS_fsm_state26;
wire   [5:0] buff_s_out_addr_47_reg_2756;
reg   [31:0] buff_s_out_load_44_reg_2761;
reg   [31:0] buff_s_out_load_45_reg_2766;
wire   [5:0] buff_s_out_addr_48_reg_2771;
wire    ap_CS_fsm_state27;
wire   [5:0] buff_s_out_addr_49_reg_2776;
reg   [31:0] buff_s_out_load_46_reg_2781;
reg   [31:0] buff_s_out_load_47_reg_2786;
wire   [5:0] buff_s_out_addr_50_reg_2791;
wire    ap_CS_fsm_state28;
wire   [5:0] buff_s_out_addr_51_reg_2796;
reg   [31:0] buff_s_out_load_48_reg_2801;
reg   [31:0] buff_s_out_load_49_reg_2806;
wire   [5:0] buff_s_out_addr_52_reg_2811;
wire    ap_CS_fsm_state29;
wire   [5:0] buff_s_out_addr_53_reg_2816;
reg   [31:0] buff_s_out_load_50_reg_2821;
reg   [31:0] buff_s_out_load_51_reg_2826;
wire   [5:0] buff_s_out_addr_54_reg_2831;
wire    ap_CS_fsm_state30;
wire   [5:0] buff_s_out_addr_55_reg_2836;
reg   [31:0] buff_s_out_load_52_reg_2841;
reg   [31:0] buff_s_out_load_53_reg_2846;
wire   [5:0] buff_s_out_addr_56_reg_2851;
wire    ap_CS_fsm_state31;
wire   [5:0] buff_s_out_addr_57_reg_2856;
reg   [31:0] buff_s_out_load_54_reg_2861;
reg   [31:0] buff_s_out_load_55_reg_2866;
wire   [5:0] buff_s_out_addr_58_reg_2871;
wire    ap_CS_fsm_state32;
wire   [5:0] buff_s_out_addr_59_reg_2876;
reg   [31:0] buff_s_out_load_56_reg_2881;
reg   [31:0] buff_s_out_load_57_reg_2886;
wire   [5:0] buff_s_out_addr_60_reg_2891;
wire    ap_CS_fsm_state33;
wire   [5:0] buff_s_out_addr_61_reg_2896;
reg   [31:0] buff_s_out_load_58_reg_2901;
reg   [31:0] buff_s_out_load_59_reg_2906;
wire   [5:0] buff_s_out_addr_62_reg_2911;
wire    ap_CS_fsm_state34;
wire   [5:0] buff_s_out_addr_63_reg_2916;
reg   [31:0] buff_s_out_load_60_reg_2921;
reg   [31:0] buff_s_out_load_61_reg_2926;
reg   [31:0] buff_s_out_load_62_reg_2931;
wire    ap_CS_fsm_state35;
reg   [31:0] buff_s_out_load_63_reg_2936;
reg   [5:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [5:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [5:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [5:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [5:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg   [5:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg   [5:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg   [5:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg   [5:0] buff_A_8_address0;
reg    buff_A_8_ce0;
reg    buff_A_8_we0;
wire   [31:0] buff_A_8_q0;
reg   [5:0] buff_A_9_address0;
reg    buff_A_9_ce0;
reg    buff_A_9_we0;
wire   [31:0] buff_A_9_q0;
reg   [5:0] buff_A_10_address0;
reg    buff_A_10_ce0;
reg    buff_A_10_we0;
wire   [31:0] buff_A_10_q0;
reg   [5:0] buff_A_11_address0;
reg    buff_A_11_ce0;
reg    buff_A_11_we0;
wire   [31:0] buff_A_11_q0;
reg   [5:0] buff_A_12_address0;
reg    buff_A_12_ce0;
reg    buff_A_12_we0;
wire   [31:0] buff_A_12_q0;
reg   [5:0] buff_A_13_address0;
reg    buff_A_13_ce0;
reg    buff_A_13_we0;
wire   [31:0] buff_A_13_q0;
reg   [5:0] buff_A_14_address0;
reg    buff_A_14_ce0;
reg    buff_A_14_we0;
wire   [31:0] buff_A_14_q0;
reg   [5:0] buff_A_15_address0;
reg    buff_A_15_ce0;
reg    buff_A_15_we0;
wire   [31:0] buff_A_15_q0;
reg   [5:0] buff_A_16_address0;
reg    buff_A_16_ce0;
reg    buff_A_16_we0;
wire   [31:0] buff_A_16_q0;
reg   [5:0] buff_A_17_address0;
reg    buff_A_17_ce0;
reg    buff_A_17_we0;
wire   [31:0] buff_A_17_q0;
reg   [5:0] buff_A_18_address0;
reg    buff_A_18_ce0;
reg    buff_A_18_we0;
wire   [31:0] buff_A_18_q0;
reg   [5:0] buff_A_19_address0;
reg    buff_A_19_ce0;
reg    buff_A_19_we0;
wire   [31:0] buff_A_19_q0;
reg   [5:0] buff_A_20_address0;
reg    buff_A_20_ce0;
reg    buff_A_20_we0;
wire   [31:0] buff_A_20_q0;
reg   [5:0] buff_A_21_address0;
reg    buff_A_21_ce0;
reg    buff_A_21_we0;
wire   [31:0] buff_A_21_q0;
reg   [5:0] buff_A_22_address0;
reg    buff_A_22_ce0;
reg    buff_A_22_we0;
wire   [31:0] buff_A_22_q0;
reg   [5:0] buff_A_23_address0;
reg    buff_A_23_ce0;
reg    buff_A_23_we0;
wire   [31:0] buff_A_23_q0;
reg   [5:0] buff_A_24_address0;
reg    buff_A_24_ce0;
reg    buff_A_24_we0;
wire   [31:0] buff_A_24_q0;
reg   [5:0] buff_A_25_address0;
reg    buff_A_25_ce0;
reg    buff_A_25_we0;
wire   [31:0] buff_A_25_q0;
reg   [5:0] buff_A_26_address0;
reg    buff_A_26_ce0;
reg    buff_A_26_we0;
wire   [31:0] buff_A_26_q0;
reg   [5:0] buff_A_27_address0;
reg    buff_A_27_ce0;
reg    buff_A_27_we0;
wire   [31:0] buff_A_27_q0;
reg   [5:0] buff_A_28_address0;
reg    buff_A_28_ce0;
reg    buff_A_28_we0;
wire   [31:0] buff_A_28_q0;
reg   [5:0] buff_A_29_address0;
reg    buff_A_29_ce0;
reg    buff_A_29_we0;
wire   [31:0] buff_A_29_q0;
reg   [5:0] buff_A_30_address0;
reg    buff_A_30_ce0;
reg    buff_A_30_we0;
wire   [31:0] buff_A_30_q0;
reg   [5:0] buff_A_31_address0;
reg    buff_A_31_ce0;
reg    buff_A_31_we0;
wire   [31:0] buff_A_31_q0;
reg   [5:0] buff_A_32_address0;
reg    buff_A_32_ce0;
reg    buff_A_32_we0;
wire   [31:0] buff_A_32_q0;
reg   [5:0] buff_A_33_address0;
reg    buff_A_33_ce0;
reg    buff_A_33_we0;
wire   [31:0] buff_A_33_q0;
reg   [5:0] buff_A_34_address0;
reg    buff_A_34_ce0;
reg    buff_A_34_we0;
wire   [31:0] buff_A_34_q0;
reg   [5:0] buff_A_35_address0;
reg    buff_A_35_ce0;
reg    buff_A_35_we0;
wire   [31:0] buff_A_35_q0;
reg   [5:0] buff_A_36_address0;
reg    buff_A_36_ce0;
reg    buff_A_36_we0;
wire   [31:0] buff_A_36_q0;
reg   [5:0] buff_A_37_address0;
reg    buff_A_37_ce0;
reg    buff_A_37_we0;
wire   [31:0] buff_A_37_q0;
reg   [5:0] buff_A_38_address0;
reg    buff_A_38_ce0;
reg    buff_A_38_we0;
wire   [31:0] buff_A_38_q0;
reg   [5:0] buff_A_39_address0;
reg    buff_A_39_ce0;
reg    buff_A_39_we0;
wire   [31:0] buff_A_39_q0;
reg   [5:0] buff_A_40_address0;
reg    buff_A_40_ce0;
reg    buff_A_40_we0;
wire   [31:0] buff_A_40_q0;
reg   [5:0] buff_A_41_address0;
reg    buff_A_41_ce0;
reg    buff_A_41_we0;
wire   [31:0] buff_A_41_q0;
reg   [5:0] buff_A_42_address0;
reg    buff_A_42_ce0;
reg    buff_A_42_we0;
wire   [31:0] buff_A_42_q0;
reg   [5:0] buff_A_43_address0;
reg    buff_A_43_ce0;
reg    buff_A_43_we0;
wire   [31:0] buff_A_43_q0;
reg   [5:0] buff_A_44_address0;
reg    buff_A_44_ce0;
reg    buff_A_44_we0;
wire   [31:0] buff_A_44_q0;
reg   [5:0] buff_A_45_address0;
reg    buff_A_45_ce0;
reg    buff_A_45_we0;
wire   [31:0] buff_A_45_q0;
reg   [5:0] buff_A_46_address0;
reg    buff_A_46_ce0;
reg    buff_A_46_we0;
wire   [31:0] buff_A_46_q0;
reg   [5:0] buff_A_47_address0;
reg    buff_A_47_ce0;
reg    buff_A_47_we0;
wire   [31:0] buff_A_47_q0;
reg   [5:0] buff_A_48_address0;
reg    buff_A_48_ce0;
reg    buff_A_48_we0;
wire   [31:0] buff_A_48_q0;
reg   [5:0] buff_A_49_address0;
reg    buff_A_49_ce0;
reg    buff_A_49_we0;
wire   [31:0] buff_A_49_q0;
reg   [5:0] buff_A_50_address0;
reg    buff_A_50_ce0;
reg    buff_A_50_we0;
wire   [31:0] buff_A_50_q0;
reg   [5:0] buff_A_51_address0;
reg    buff_A_51_ce0;
reg    buff_A_51_we0;
wire   [31:0] buff_A_51_q0;
reg   [5:0] buff_A_52_address0;
reg    buff_A_52_ce0;
reg    buff_A_52_we0;
wire   [31:0] buff_A_52_q0;
reg   [5:0] buff_A_53_address0;
reg    buff_A_53_ce0;
reg    buff_A_53_we0;
wire   [31:0] buff_A_53_q0;
reg   [5:0] buff_A_54_address0;
reg    buff_A_54_ce0;
reg    buff_A_54_we0;
wire   [31:0] buff_A_54_q0;
reg   [5:0] buff_A_55_address0;
reg    buff_A_55_ce0;
reg    buff_A_55_we0;
wire   [31:0] buff_A_55_q0;
reg   [5:0] buff_A_56_address0;
reg    buff_A_56_ce0;
reg    buff_A_56_we0;
wire   [31:0] buff_A_56_q0;
reg   [5:0] buff_A_57_address0;
reg    buff_A_57_ce0;
reg    buff_A_57_we0;
wire   [31:0] buff_A_57_q0;
reg   [5:0] buff_A_58_address0;
reg    buff_A_58_ce0;
reg    buff_A_58_we0;
wire   [31:0] buff_A_58_q0;
reg   [5:0] buff_A_59_address0;
reg    buff_A_59_ce0;
reg    buff_A_59_we0;
wire   [31:0] buff_A_59_q0;
reg   [5:0] buff_A_60_address0;
reg    buff_A_60_ce0;
reg    buff_A_60_we0;
wire   [31:0] buff_A_60_q0;
reg   [5:0] buff_A_61_address0;
reg    buff_A_61_ce0;
reg    buff_A_61_we0;
wire   [31:0] buff_A_61_q0;
reg   [5:0] buff_A_62_address0;
reg    buff_A_62_ce0;
reg    buff_A_62_we0;
wire   [31:0] buff_A_62_q0;
reg   [5:0] buff_A_63_address0;
reg    buff_A_63_ce0;
reg    buff_A_63_we0;
wire   [31:0] buff_A_63_q0;
reg   [3:0] buff_p_address0;
reg    buff_p_ce0;
reg    buff_p_we0;
wire   [31:0] buff_p_q0;
reg    buff_p_ce1;
wire   [31:0] buff_p_q1;
reg   [3:0] buff_p_1_address0;
reg    buff_p_1_ce0;
reg    buff_p_1_we0;
wire   [31:0] buff_p_1_q0;
reg    buff_p_1_ce1;
wire   [31:0] buff_p_1_q1;
reg   [3:0] buff_p_2_address0;
reg    buff_p_2_ce0;
reg    buff_p_2_we0;
wire   [31:0] buff_p_2_q0;
reg    buff_p_2_ce1;
wire   [31:0] buff_p_2_q1;
reg   [3:0] buff_p_3_address0;
reg    buff_p_3_ce0;
reg    buff_p_3_we0;
wire   [31:0] buff_p_3_q0;
reg    buff_p_3_ce1;
wire   [31:0] buff_p_3_q1;
reg   [5:0] buff_r_address0;
reg    buff_r_ce0;
reg    buff_r_we0;
wire   [31:0] buff_r_q0;
reg   [5:0] buff_s_out_address0;
reg    buff_s_out_ce0;
reg    buff_s_out_we0;
reg   [31:0] buff_s_out_d0;
wire   [31:0] buff_s_out_q0;
wire   [31:0] buff_s_out_q1;
reg   [5:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_done;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_idle;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_ready;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_d0;
wire   [11:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_A_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_A_ce0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_p_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_p_ce0;
wire   [3:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_d0;
wire   [3:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_d0;
wire   [3:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_d0;
wire   [3:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_r_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_r_ce0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_d0;
wire    grp_bicg_Pipeline_lp1_fu_1379_ap_start;
wire    grp_bicg_Pipeline_lp1_fu_1379_ap_done;
wire    grp_bicg_Pipeline_lp1_fu_1379_ap_idle;
wire    grp_bicg_Pipeline_lp1_fu_1379_ap_ready;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_r_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_1_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_2_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_3_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_4_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_5_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_6_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_7_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_8_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_9_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_10_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_11_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_12_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_13_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_14_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_15_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_16_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_16_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_17_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_17_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_18_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_18_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_19_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_19_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_20_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_20_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_21_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_21_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_22_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_22_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_23_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_23_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_24_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_24_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_25_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_25_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_26_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_26_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_27_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_27_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_28_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_28_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_29_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_29_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_30_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_30_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_31_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_31_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_32_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_32_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_33_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_33_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_34_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_34_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_35_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_35_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_36_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_36_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_37_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_37_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_38_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_38_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_39_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_39_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_40_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_40_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_41_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_41_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_42_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_42_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_43_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_43_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_44_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_44_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_45_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_45_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_46_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_46_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_47_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_47_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_48_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_48_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_49_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_49_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_50_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_50_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_51_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_51_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_52_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_52_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_53_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_53_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_54_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_54_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_55_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_55_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_56_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_56_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_57_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_57_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_58_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_58_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_59_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_59_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_60_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_60_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_61_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_61_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_62_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_62_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_fu_1379_buff_A_63_address0;
wire    grp_bicg_Pipeline_lp1_fu_1379_buff_A_63_ce0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_6375_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_6375_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_6274_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_6274_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_6173_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_6173_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_6072_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_6072_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5971_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5971_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5870_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5870_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5769_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5769_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5668_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5668_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5567_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5567_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5466_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5466_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5365_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5365_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5264_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5264_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5163_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5163_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_5062_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_5062_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4961_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4961_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4860_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4860_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4759_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4759_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4658_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4658_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4557_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4557_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4456_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4456_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4355_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4355_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4254_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4254_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4153_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4153_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_4052_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_4052_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3951_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3951_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3850_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3850_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3749_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3749_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3648_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3648_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3547_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3547_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3446_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3446_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3345_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3345_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3244_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3244_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3143_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3143_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_3042_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_3042_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2941_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2941_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2840_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2840_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2739_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2739_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2638_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2638_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2537_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2537_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2436_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2436_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2335_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2335_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2234_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2234_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2133_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2133_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_2032_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_2032_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1931_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1931_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1830_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1830_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1729_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1729_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1628_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1628_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1527_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1527_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1426_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1426_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1325_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1325_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1224_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1224_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1123_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1123_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_1022_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_1022_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_921_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_921_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_820_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_820_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_719_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_719_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_618_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_618_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_517_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_517_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_416_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_416_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_315_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_315_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_214_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_214_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add_113_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add_113_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_add12_out;
wire    grp_bicg_Pipeline_lp1_fu_1379_add12_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_opcode;
wire    grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_din1;
wire    grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_ce;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_ready;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_8_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_16_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_16_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_24_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_24_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_32_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_32_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_40_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_40_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_48_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_48_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_56_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_56_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_1_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_9_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_17_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_17_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_25_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_25_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_33_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_33_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_41_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_41_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_49_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_49_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_57_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_57_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_2_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_10_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_18_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_18_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_26_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_26_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_34_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_34_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_42_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_42_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_50_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_50_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_58_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_58_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_3_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_11_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_19_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_19_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_27_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_27_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_35_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_35_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_43_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_43_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_51_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_51_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_59_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_59_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_4_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_12_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_20_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_20_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_28_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_28_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_36_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_36_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_44_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_44_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_52_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_52_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_60_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_60_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_5_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_13_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_21_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_21_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_29_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_29_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_37_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_37_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_45_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_45_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_53_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_53_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_61_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_61_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_6_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_14_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_22_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_22_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_30_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_30_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_38_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_38_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_46_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_46_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_54_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_54_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_62_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_62_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_7_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_15_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_23_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_23_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_31_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_31_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_39_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_39_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_47_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_47_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_55_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_55_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_63_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_63_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_ce1;
wire   [5:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1651_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1651_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1651_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1651_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1651_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1651_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1651_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1651_q_out_write;
wire   [5:0] grp_bicg_Pipeline_lpwr_fu_1651_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1651_buff_s_out_ce0;
wire   [5:0] grp_bicg_Pipeline_lpwr_fu_1651_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1651_buff_q_out_ce0;
reg    grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_bicg_Pipeline_lp1_fu_1379_ap_start_reg;
wire    ap_CS_fsm_state36;
reg    grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start_reg;
wire    ap_CS_fsm_state67;
wire    ap_CS_fsm_state68;
reg    grp_bicg_Pipeline_lpwr_fu_1651_ap_start_reg;
wire    ap_CS_fsm_state69;
wire    ap_CS_fsm_state70;
wire    ap_CS_fsm_state37;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
wire    ap_CS_fsm_state48;
wire    ap_CS_fsm_state49;
wire    ap_CS_fsm_state50;
wire    ap_CS_fsm_state51;
wire    ap_CS_fsm_state52;
wire    ap_CS_fsm_state53;
wire    ap_CS_fsm_state54;
wire    ap_CS_fsm_state55;
wire    ap_CS_fsm_state56;
wire    ap_CS_fsm_state57;
wire    ap_CS_fsm_state58;
wire    ap_CS_fsm_state59;
wire    ap_CS_fsm_state60;
wire    ap_CS_fsm_state61;
wire    ap_CS_fsm_state62;
wire    ap_CS_fsm_state63;
wire    ap_CS_fsm_state64;
wire    ap_CS_fsm_state65;
wire    ap_CS_fsm_state66;
reg    buff_s_out_ce1_local;
reg   [5:0] buff_s_out_address1_local;
reg    buff_s_out_ce0_local;
reg   [5:0] buff_s_out_address0_local;
reg    buff_s_out_we1_local;
reg   [31:0] buff_s_out_d1_local;
reg    buff_s_out_we0_local;
reg   [31:0] buff_s_out_d0_local;
wire   [31:0] grp_fu_2941_p2;
reg   [31:0] grp_fu_2941_p0;
reg   [31:0] grp_fu_2941_p1;
reg    grp_fu_2941_ce;
wire   [31:0] grp_fu_2945_p2;
reg   [31:0] grp_fu_2945_p0;
reg   [31:0] grp_fu_2945_p1;
reg    grp_fu_2945_ce;
reg   [69:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
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
wire    ap_ST_fsm_state21_blk;
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
reg    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
wire    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
reg    ap_ST_fsm_state68_blk;
wire    ap_ST_fsm_state69_blk;
reg    ap_ST_fsm_state70_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 70'd1;
#0 grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_fu_1379_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1651_ap_start_reg = 1'b0;
end
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_d0),.q0(buff_A_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_d0),.q0(buff_A_1_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_d0),.q0(buff_A_2_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_d0),.q0(buff_A_3_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_d0),.q0(buff_A_4_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_d0),.q0(buff_A_5_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_d0),.q0(buff_A_6_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_d0),.q0(buff_A_7_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_8_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_8_address0),.ce0(buff_A_8_ce0),.we0(buff_A_8_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_d0),.q0(buff_A_8_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_9_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_9_address0),.ce0(buff_A_9_ce0),.we0(buff_A_9_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_d0),.q0(buff_A_9_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_10_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_10_address0),.ce0(buff_A_10_ce0),.we0(buff_A_10_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_d0),.q0(buff_A_10_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_11_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_11_address0),.ce0(buff_A_11_ce0),.we0(buff_A_11_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_d0),.q0(buff_A_11_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_12_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_12_address0),.ce0(buff_A_12_ce0),.we0(buff_A_12_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_d0),.q0(buff_A_12_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_13_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_13_address0),.ce0(buff_A_13_ce0),.we0(buff_A_13_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_d0),.q0(buff_A_13_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_14_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_14_address0),.ce0(buff_A_14_ce0),.we0(buff_A_14_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_d0),.q0(buff_A_14_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_15_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_15_address0),.ce0(buff_A_15_ce0),.we0(buff_A_15_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_d0),.q0(buff_A_15_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_16_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_16_address0),.ce0(buff_A_16_ce0),.we0(buff_A_16_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_d0),.q0(buff_A_16_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_17_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_17_address0),.ce0(buff_A_17_ce0),.we0(buff_A_17_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_d0),.q0(buff_A_17_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_18_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_18_address0),.ce0(buff_A_18_ce0),.we0(buff_A_18_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_d0),.q0(buff_A_18_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_19_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_19_address0),.ce0(buff_A_19_ce0),.we0(buff_A_19_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_d0),.q0(buff_A_19_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_20_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_20_address0),.ce0(buff_A_20_ce0),.we0(buff_A_20_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_d0),.q0(buff_A_20_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_21_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_21_address0),.ce0(buff_A_21_ce0),.we0(buff_A_21_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_d0),.q0(buff_A_21_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_22_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_22_address0),.ce0(buff_A_22_ce0),.we0(buff_A_22_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_d0),.q0(buff_A_22_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_23_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_23_address0),.ce0(buff_A_23_ce0),.we0(buff_A_23_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_d0),.q0(buff_A_23_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_24_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_24_address0),.ce0(buff_A_24_ce0),.we0(buff_A_24_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_d0),.q0(buff_A_24_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_25_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_25_address0),.ce0(buff_A_25_ce0),.we0(buff_A_25_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_d0),.q0(buff_A_25_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_26_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_26_address0),.ce0(buff_A_26_ce0),.we0(buff_A_26_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_d0),.q0(buff_A_26_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_27_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_27_address0),.ce0(buff_A_27_ce0),.we0(buff_A_27_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_d0),.q0(buff_A_27_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_28_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_28_address0),.ce0(buff_A_28_ce0),.we0(buff_A_28_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_d0),.q0(buff_A_28_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_29_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_29_address0),.ce0(buff_A_29_ce0),.we0(buff_A_29_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_d0),.q0(buff_A_29_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_30_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_30_address0),.ce0(buff_A_30_ce0),.we0(buff_A_30_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_d0),.q0(buff_A_30_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_31_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_31_address0),.ce0(buff_A_31_ce0),.we0(buff_A_31_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_d0),.q0(buff_A_31_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_32_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_32_address0),.ce0(buff_A_32_ce0),.we0(buff_A_32_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_d0),.q0(buff_A_32_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_33_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_33_address0),.ce0(buff_A_33_ce0),.we0(buff_A_33_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_d0),.q0(buff_A_33_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_34_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_34_address0),.ce0(buff_A_34_ce0),.we0(buff_A_34_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_d0),.q0(buff_A_34_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_35_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_35_address0),.ce0(buff_A_35_ce0),.we0(buff_A_35_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_d0),.q0(buff_A_35_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_36_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_36_address0),.ce0(buff_A_36_ce0),.we0(buff_A_36_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_d0),.q0(buff_A_36_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_37_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_37_address0),.ce0(buff_A_37_ce0),.we0(buff_A_37_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_d0),.q0(buff_A_37_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_38_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_38_address0),.ce0(buff_A_38_ce0),.we0(buff_A_38_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_d0),.q0(buff_A_38_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_39_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_39_address0),.ce0(buff_A_39_ce0),.we0(buff_A_39_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_d0),.q0(buff_A_39_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_40_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_40_address0),.ce0(buff_A_40_ce0),.we0(buff_A_40_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_d0),.q0(buff_A_40_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_41_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_41_address0),.ce0(buff_A_41_ce0),.we0(buff_A_41_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_d0),.q0(buff_A_41_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_42_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_42_address0),.ce0(buff_A_42_ce0),.we0(buff_A_42_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_d0),.q0(buff_A_42_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_43_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_43_address0),.ce0(buff_A_43_ce0),.we0(buff_A_43_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_d0),.q0(buff_A_43_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_44_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_44_address0),.ce0(buff_A_44_ce0),.we0(buff_A_44_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_d0),.q0(buff_A_44_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_45_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_45_address0),.ce0(buff_A_45_ce0),.we0(buff_A_45_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_d0),.q0(buff_A_45_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_46_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_46_address0),.ce0(buff_A_46_ce0),.we0(buff_A_46_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_d0),.q0(buff_A_46_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_47_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_47_address0),.ce0(buff_A_47_ce0),.we0(buff_A_47_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_d0),.q0(buff_A_47_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_48_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_48_address0),.ce0(buff_A_48_ce0),.we0(buff_A_48_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_d0),.q0(buff_A_48_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_49_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_49_address0),.ce0(buff_A_49_ce0),.we0(buff_A_49_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_d0),.q0(buff_A_49_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_50_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_50_address0),.ce0(buff_A_50_ce0),.we0(buff_A_50_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_d0),.q0(buff_A_50_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_51_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_51_address0),.ce0(buff_A_51_ce0),.we0(buff_A_51_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_d0),.q0(buff_A_51_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_52_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_52_address0),.ce0(buff_A_52_ce0),.we0(buff_A_52_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_d0),.q0(buff_A_52_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_53_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_53_address0),.ce0(buff_A_53_ce0),.we0(buff_A_53_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_d0),.q0(buff_A_53_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_54_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_54_address0),.ce0(buff_A_54_ce0),.we0(buff_A_54_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_d0),.q0(buff_A_54_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_55_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_55_address0),.ce0(buff_A_55_ce0),.we0(buff_A_55_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_d0),.q0(buff_A_55_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_56_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_56_address0),.ce0(buff_A_56_ce0),.we0(buff_A_56_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_d0),.q0(buff_A_56_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_57_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_57_address0),.ce0(buff_A_57_ce0),.we0(buff_A_57_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_d0),.q0(buff_A_57_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_58_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_58_address0),.ce0(buff_A_58_ce0),.we0(buff_A_58_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_d0),.q0(buff_A_58_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_59_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_59_address0),.ce0(buff_A_59_ce0),.we0(buff_A_59_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_d0),.q0(buff_A_59_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_60_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_60_address0),.ce0(buff_A_60_ce0),.we0(buff_A_60_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_d0),.q0(buff_A_60_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_61_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_61_address0),.ce0(buff_A_61_ce0),.we0(buff_A_61_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_d0),.q0(buff_A_61_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_62_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_62_address0),.ce0(buff_A_62_ce0),.we0(buff_A_62_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_d0),.q0(buff_A_62_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_63_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_63_address0),.ce0(buff_A_63_ce0),.we0(buff_A_63_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_d0),.q0(buff_A_63_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_d0),.q0(buff_p_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_address1),.ce1(buff_p_ce1),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_d0),.q0(buff_p_1_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_address1),.ce1(buff_p_1_ce1),.q1(buff_p_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_d0),.q0(buff_p_2_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_address1),.ce1(buff_p_2_ce1),.q1(buff_p_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_d0),.q0(buff_p_3_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_address1),.ce1(buff_p_3_ce1),.q1(buff_p_3_q1));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_d0),.q0(buff_r_q0));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0),.d0(buff_s_out_d0),.q0(buff_s_out_q0),.address1(buff_s_out_address1_local),.ce1(buff_s_out_ce1_local),.we1(buff_s_out_we1_local),.d1(buff_s_out_d1_local),.q1(buff_s_out_q1));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0));
bicg_bicg_Pipeline_lprd_1_lprd_2 grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start),.ap_done(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_d0),.buff_A_8_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_ce0),.buff_A_8_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_we0),.buff_A_8_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_d0),.buff_A_9_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_ce0),.buff_A_9_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_we0),.buff_A_9_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_d0),.buff_A_10_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_ce0),.buff_A_10_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_we0),.buff_A_10_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_d0),.buff_A_11_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_ce0),.buff_A_11_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_we0),.buff_A_11_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_d0),.buff_A_12_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_ce0),.buff_A_12_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_we0),.buff_A_12_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_d0),.buff_A_13_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_ce0),.buff_A_13_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_we0),.buff_A_13_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_d0),.buff_A_14_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_ce0),.buff_A_14_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_we0),.buff_A_14_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_d0),.buff_A_15_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_ce0),.buff_A_15_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_we0),.buff_A_15_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_d0),.buff_A_16_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_ce0),.buff_A_16_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_we0),.buff_A_16_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_d0),.buff_A_17_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_ce0),.buff_A_17_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_we0),.buff_A_17_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_d0),.buff_A_18_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_ce0),.buff_A_18_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_we0),.buff_A_18_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_d0),.buff_A_19_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_ce0),.buff_A_19_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_we0),.buff_A_19_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_d0),.buff_A_20_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_ce0),.buff_A_20_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_we0),.buff_A_20_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_d0),.buff_A_21_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_ce0),.buff_A_21_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_we0),.buff_A_21_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_d0),.buff_A_22_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_ce0),.buff_A_22_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_we0),.buff_A_22_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_d0),.buff_A_23_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_ce0),.buff_A_23_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_we0),.buff_A_23_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_d0),.buff_A_24_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_ce0),.buff_A_24_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_we0),.buff_A_24_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_d0),.buff_A_25_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_ce0),.buff_A_25_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_we0),.buff_A_25_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_d0),.buff_A_26_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_ce0),.buff_A_26_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_we0),.buff_A_26_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_d0),.buff_A_27_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_ce0),.buff_A_27_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_we0),.buff_A_27_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_d0),.buff_A_28_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_ce0),.buff_A_28_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_we0),.buff_A_28_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_d0),.buff_A_29_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_ce0),.buff_A_29_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_we0),.buff_A_29_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_d0),.buff_A_30_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_ce0),.buff_A_30_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_we0),.buff_A_30_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_d0),.buff_A_31_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_ce0),.buff_A_31_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_we0),.buff_A_31_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_d0),.buff_A_32_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_address0),.buff_A_32_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_ce0),.buff_A_32_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_we0),.buff_A_32_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_d0),.buff_A_33_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_address0),.buff_A_33_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_ce0),.buff_A_33_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_we0),.buff_A_33_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_d0),.buff_A_34_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_address0),.buff_A_34_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_ce0),.buff_A_34_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_we0),.buff_A_34_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_d0),.buff_A_35_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_address0),.buff_A_35_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_ce0),.buff_A_35_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_we0),.buff_A_35_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_d0),.buff_A_36_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_address0),.buff_A_36_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_ce0),.buff_A_36_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_we0),.buff_A_36_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_d0),.buff_A_37_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_address0),.buff_A_37_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_ce0),.buff_A_37_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_we0),.buff_A_37_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_d0),.buff_A_38_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_address0),.buff_A_38_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_ce0),.buff_A_38_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_we0),.buff_A_38_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_d0),.buff_A_39_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_address0),.buff_A_39_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_ce0),.buff_A_39_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_we0),.buff_A_39_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_d0),.buff_A_40_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_address0),.buff_A_40_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_ce0),.buff_A_40_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_we0),.buff_A_40_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_d0),.buff_A_41_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_address0),.buff_A_41_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_ce0),.buff_A_41_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_we0),.buff_A_41_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_d0),.buff_A_42_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_address0),.buff_A_42_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_ce0),.buff_A_42_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_we0),.buff_A_42_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_d0),.buff_A_43_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_address0),.buff_A_43_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_ce0),.buff_A_43_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_we0),.buff_A_43_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_d0),.buff_A_44_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_address0),.buff_A_44_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_ce0),.buff_A_44_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_we0),.buff_A_44_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_d0),.buff_A_45_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_address0),.buff_A_45_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_ce0),.buff_A_45_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_we0),.buff_A_45_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_d0),.buff_A_46_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_address0),.buff_A_46_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_ce0),.buff_A_46_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_we0),.buff_A_46_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_d0),.buff_A_47_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_address0),.buff_A_47_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_ce0),.buff_A_47_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_we0),.buff_A_47_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_d0),.buff_A_48_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_address0),.buff_A_48_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_ce0),.buff_A_48_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_we0),.buff_A_48_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_d0),.buff_A_49_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_address0),.buff_A_49_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_ce0),.buff_A_49_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_we0),.buff_A_49_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_d0),.buff_A_50_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_address0),.buff_A_50_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_ce0),.buff_A_50_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_we0),.buff_A_50_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_d0),.buff_A_51_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_address0),.buff_A_51_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_ce0),.buff_A_51_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_we0),.buff_A_51_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_d0),.buff_A_52_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_address0),.buff_A_52_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_ce0),.buff_A_52_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_we0),.buff_A_52_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_d0),.buff_A_53_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_address0),.buff_A_53_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_ce0),.buff_A_53_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_we0),.buff_A_53_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_d0),.buff_A_54_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_address0),.buff_A_54_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_ce0),.buff_A_54_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_we0),.buff_A_54_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_d0),.buff_A_55_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_address0),.buff_A_55_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_ce0),.buff_A_55_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_we0),.buff_A_55_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_d0),.buff_A_56_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_address0),.buff_A_56_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_ce0),.buff_A_56_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_we0),.buff_A_56_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_d0),.buff_A_57_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_address0),.buff_A_57_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_ce0),.buff_A_57_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_we0),.buff_A_57_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_d0),.buff_A_58_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_address0),.buff_A_58_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_ce0),.buff_A_58_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_we0),.buff_A_58_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_d0),.buff_A_59_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_address0),.buff_A_59_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_ce0),.buff_A_59_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_we0),.buff_A_59_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_d0),.buff_A_60_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_address0),.buff_A_60_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_ce0),.buff_A_60_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_we0),.buff_A_60_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_d0),.buff_A_61_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_address0),.buff_A_61_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_ce0),.buff_A_61_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_we0),.buff_A_61_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_d0),.buff_A_62_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_address0),.buff_A_62_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_ce0),.buff_A_62_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_we0),.buff_A_62_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_d0),.buff_A_63_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_address0),.buff_A_63_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_ce0),.buff_A_63_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_we0),.buff_A_63_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_d0),.A_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_A_address0),.A_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_A_ce0),.A_q0(A_q0),.p_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_p_address0),.p_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_p_ce0),.p_q0(p_q0),.buff_p_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_ce0),.buff_p_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_we0),.buff_p_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_d0),.buff_p_1_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_ce0),.buff_p_1_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_we0),.buff_p_1_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_d0),.buff_p_2_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_ce0),.buff_p_2_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_we0),.buff_p_2_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_d0),.buff_p_3_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_ce0),.buff_p_3_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_we0),.buff_p_3_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_d0),.r_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_r_address0),.r_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_r_ce0),.r_q0(r_q0),.buff_r_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_ce0),.buff_r_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_we0),.buff_r_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_d0),.buff_s_out_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_d0),.buff_q_out_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_d0));
bicg_bicg_Pipeline_lp1 grp_bicg_Pipeline_lp1_fu_1379(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_fu_1379_ap_start),.ap_done(grp_bicg_Pipeline_lp1_fu_1379_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_fu_1379_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_fu_1379_ap_ready),.buff_s_out_load_63(buff_s_out_load_63_reg_2936),.buff_s_out_load_62(buff_s_out_load_62_reg_2931),.buff_s_out_load_61(buff_s_out_load_61_reg_2926),.buff_s_out_load_60(buff_s_out_load_60_reg_2921),.buff_s_out_load_59(buff_s_out_load_59_reg_2906),.buff_s_out_load_58(buff_s_out_load_58_reg_2901),.buff_s_out_load_57(buff_s_out_load_57_reg_2886),.buff_s_out_load_56(buff_s_out_load_56_reg_2881),.buff_s_out_load_55(buff_s_out_load_55_reg_2866),.buff_s_out_load_54(buff_s_out_load_54_reg_2861),.buff_s_out_load_53(buff_s_out_load_53_reg_2846),.buff_s_out_load_52(buff_s_out_load_52_reg_2841),.buff_s_out_load_51(buff_s_out_load_51_reg_2826),.buff_s_out_load_50(buff_s_out_load_50_reg_2821),.buff_s_out_load_49(buff_s_out_load_49_reg_2806),.buff_s_out_load_48(buff_s_out_load_48_reg_2801),.buff_s_out_load_47(buff_s_out_load_47_reg_2786),.buff_s_out_load_46(buff_s_out_load_46_reg_2781),.buff_s_out_load_45(buff_s_out_load_45_reg_2766),.buff_s_out_load_44(buff_s_out_load_44_reg_2761),.buff_s_out_load_43(buff_s_out_load_43_reg_2746),.buff_s_out_load_42(buff_s_out_load_42_reg_2741),.buff_s_out_load_41(buff_s_out_load_41_reg_2726),.buff_s_out_load_40(buff_s_out_load_40_reg_2721),.buff_s_out_load_39(buff_s_out_load_39_reg_2706),.buff_s_out_load_38(buff_s_out_load_38_reg_2701),.buff_s_out_load_37(buff_s_out_load_37_reg_2686),.buff_s_out_load_36(buff_s_out_load_36_reg_2681),.buff_s_out_load_35(buff_s_out_load_35_reg_2666),.buff_s_out_load_34(buff_s_out_load_34_reg_2661),.buff_s_out_load_33(buff_s_out_load_33_reg_2646),.buff_s_out_load_32(buff_s_out_load_32_reg_2641),.buff_s_out_load_31(buff_s_out_load_31_reg_2626),.buff_s_out_load_30(buff_s_out_load_30_reg_2621),.buff_s_out_load_29(buff_s_out_load_29_reg_2606),.buff_s_out_load_28(buff_s_out_load_28_reg_2601),.buff_s_out_load_27(buff_s_out_load_27_reg_2586),.buff_s_out_load_26(buff_s_out_load_26_reg_2581),.buff_s_out_load_25(buff_s_out_load_25_reg_2566),.buff_s_out_load_24(buff_s_out_load_24_reg_2561),.buff_s_out_load_23(buff_s_out_load_23_reg_2546),.buff_s_out_load_22(buff_s_out_load_22_reg_2541),.buff_s_out_load_21(buff_s_out_load_21_reg_2526),.buff_s_out_load_20(buff_s_out_load_20_reg_2521),.buff_s_out_load_19(buff_s_out_load_19_reg_2506),.buff_s_out_load_18(buff_s_out_load_18_reg_2501),.buff_s_out_load_17(buff_s_out_load_17_reg_2486),.buff_s_out_load_16(buff_s_out_load_16_reg_2481),.buff_s_out_load_15(buff_s_out_load_15_reg_2466),.buff_s_out_load_14(buff_s_out_load_14_reg_2461),.buff_s_out_load_13(buff_s_out_load_13_reg_2446),.buff_s_out_load_12(buff_s_out_load_12_reg_2441),.buff_s_out_load_11(buff_s_out_load_11_reg_2426),.buff_s_out_load_10(buff_s_out_load_10_reg_2421),.buff_s_out_load_9(buff_s_out_load_9_reg_2406),.buff_s_out_load_8(buff_s_out_load_8_reg_2401),.buff_s_out_load_7(buff_s_out_load_7_reg_2386),.buff_s_out_load_6(buff_s_out_load_6_reg_2381),.buff_s_out_load_5(buff_s_out_load_5_reg_2366),.buff_s_out_load_4(buff_s_out_load_4_reg_2361),.buff_s_out_load_3(buff_s_out_load_3_reg_2346),.buff_s_out_load_2(buff_s_out_load_2_reg_2341),.buff_s_out_load_1(buff_s_out_load_1_reg_2326),.buff_s_out_load(buff_s_out_load_reg_2321),.buff_r_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_A_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_8_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_9_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_10_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_11_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_12_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_13_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_14_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_15_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_16_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_16_ce0),.buff_A_16_q0(buff_A_16_q0),.buff_A_17_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_17_ce0),.buff_A_17_q0(buff_A_17_q0),.buff_A_18_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_18_ce0),.buff_A_18_q0(buff_A_18_q0),.buff_A_19_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_19_ce0),.buff_A_19_q0(buff_A_19_q0),.buff_A_20_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_20_ce0),.buff_A_20_q0(buff_A_20_q0),.buff_A_21_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_21_ce0),.buff_A_21_q0(buff_A_21_q0),.buff_A_22_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_22_ce0),.buff_A_22_q0(buff_A_22_q0),.buff_A_23_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_23_ce0),.buff_A_23_q0(buff_A_23_q0),.buff_A_24_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_24_ce0),.buff_A_24_q0(buff_A_24_q0),.buff_A_25_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_25_ce0),.buff_A_25_q0(buff_A_25_q0),.buff_A_26_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_26_ce0),.buff_A_26_q0(buff_A_26_q0),.buff_A_27_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_27_ce0),.buff_A_27_q0(buff_A_27_q0),.buff_A_28_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_28_ce0),.buff_A_28_q0(buff_A_28_q0),.buff_A_29_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_29_ce0),.buff_A_29_q0(buff_A_29_q0),.buff_A_30_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_30_ce0),.buff_A_30_q0(buff_A_30_q0),.buff_A_31_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_31_ce0),.buff_A_31_q0(buff_A_31_q0),.buff_A_32_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_32_address0),.buff_A_32_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_32_ce0),.buff_A_32_q0(buff_A_32_q0),.buff_A_33_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_33_address0),.buff_A_33_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_33_ce0),.buff_A_33_q0(buff_A_33_q0),.buff_A_34_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_34_address0),.buff_A_34_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_34_ce0),.buff_A_34_q0(buff_A_34_q0),.buff_A_35_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_35_address0),.buff_A_35_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_35_ce0),.buff_A_35_q0(buff_A_35_q0),.buff_A_36_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_36_address0),.buff_A_36_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_36_ce0),.buff_A_36_q0(buff_A_36_q0),.buff_A_37_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_37_address0),.buff_A_37_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_37_ce0),.buff_A_37_q0(buff_A_37_q0),.buff_A_38_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_38_address0),.buff_A_38_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_38_ce0),.buff_A_38_q0(buff_A_38_q0),.buff_A_39_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_39_address0),.buff_A_39_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_39_ce0),.buff_A_39_q0(buff_A_39_q0),.buff_A_40_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_40_address0),.buff_A_40_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_40_ce0),.buff_A_40_q0(buff_A_40_q0),.buff_A_41_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_41_address0),.buff_A_41_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_41_ce0),.buff_A_41_q0(buff_A_41_q0),.buff_A_42_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_42_address0),.buff_A_42_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_42_ce0),.buff_A_42_q0(buff_A_42_q0),.buff_A_43_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_43_address0),.buff_A_43_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_43_ce0),.buff_A_43_q0(buff_A_43_q0),.buff_A_44_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_44_address0),.buff_A_44_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_44_ce0),.buff_A_44_q0(buff_A_44_q0),.buff_A_45_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_45_address0),.buff_A_45_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_45_ce0),.buff_A_45_q0(buff_A_45_q0),.buff_A_46_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_46_address0),.buff_A_46_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_46_ce0),.buff_A_46_q0(buff_A_46_q0),.buff_A_47_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_47_address0),.buff_A_47_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_47_ce0),.buff_A_47_q0(buff_A_47_q0),.buff_A_48_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_48_address0),.buff_A_48_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_48_ce0),.buff_A_48_q0(buff_A_48_q0),.buff_A_49_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_49_address0),.buff_A_49_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_49_ce0),.buff_A_49_q0(buff_A_49_q0),.buff_A_50_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_50_address0),.buff_A_50_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_50_ce0),.buff_A_50_q0(buff_A_50_q0),.buff_A_51_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_51_address0),.buff_A_51_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_51_ce0),.buff_A_51_q0(buff_A_51_q0),.buff_A_52_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_52_address0),.buff_A_52_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_52_ce0),.buff_A_52_q0(buff_A_52_q0),.buff_A_53_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_53_address0),.buff_A_53_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_53_ce0),.buff_A_53_q0(buff_A_53_q0),.buff_A_54_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_54_address0),.buff_A_54_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_54_ce0),.buff_A_54_q0(buff_A_54_q0),.buff_A_55_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_55_address0),.buff_A_55_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_55_ce0),.buff_A_55_q0(buff_A_55_q0),.buff_A_56_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_56_address0),.buff_A_56_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_56_ce0),.buff_A_56_q0(buff_A_56_q0),.buff_A_57_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_57_address0),.buff_A_57_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_57_ce0),.buff_A_57_q0(buff_A_57_q0),.buff_A_58_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_58_address0),.buff_A_58_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_58_ce0),.buff_A_58_q0(buff_A_58_q0),.buff_A_59_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_59_address0),.buff_A_59_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_59_ce0),.buff_A_59_q0(buff_A_59_q0),.buff_A_60_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_60_address0),.buff_A_60_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_60_ce0),.buff_A_60_q0(buff_A_60_q0),.buff_A_61_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_61_address0),.buff_A_61_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_61_ce0),.buff_A_61_q0(buff_A_61_q0),.buff_A_62_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_62_address0),.buff_A_62_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_62_ce0),.buff_A_62_q0(buff_A_62_q0),.buff_A_63_address0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_63_address0),.buff_A_63_ce0(grp_bicg_Pipeline_lp1_fu_1379_buff_A_63_ce0),.buff_A_63_q0(buff_A_63_q0),.add_6375_out(grp_bicg_Pipeline_lp1_fu_1379_add_6375_out),.add_6375_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_6375_out_ap_vld),.add_6274_out(grp_bicg_Pipeline_lp1_fu_1379_add_6274_out),.add_6274_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_6274_out_ap_vld),.add_6173_out(grp_bicg_Pipeline_lp1_fu_1379_add_6173_out),.add_6173_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_6173_out_ap_vld),.add_6072_out(grp_bicg_Pipeline_lp1_fu_1379_add_6072_out),.add_6072_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_6072_out_ap_vld),.add_5971_out(grp_bicg_Pipeline_lp1_fu_1379_add_5971_out),.add_5971_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5971_out_ap_vld),.add_5870_out(grp_bicg_Pipeline_lp1_fu_1379_add_5870_out),.add_5870_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5870_out_ap_vld),.add_5769_out(grp_bicg_Pipeline_lp1_fu_1379_add_5769_out),.add_5769_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5769_out_ap_vld),.add_5668_out(grp_bicg_Pipeline_lp1_fu_1379_add_5668_out),.add_5668_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5668_out_ap_vld),.add_5567_out(grp_bicg_Pipeline_lp1_fu_1379_add_5567_out),.add_5567_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5567_out_ap_vld),.add_5466_out(grp_bicg_Pipeline_lp1_fu_1379_add_5466_out),.add_5466_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5466_out_ap_vld),.add_5365_out(grp_bicg_Pipeline_lp1_fu_1379_add_5365_out),.add_5365_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5365_out_ap_vld),.add_5264_out(grp_bicg_Pipeline_lp1_fu_1379_add_5264_out),.add_5264_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5264_out_ap_vld),.add_5163_out(grp_bicg_Pipeline_lp1_fu_1379_add_5163_out),.add_5163_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5163_out_ap_vld),.add_5062_out(grp_bicg_Pipeline_lp1_fu_1379_add_5062_out),.add_5062_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_5062_out_ap_vld),.add_4961_out(grp_bicg_Pipeline_lp1_fu_1379_add_4961_out),.add_4961_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4961_out_ap_vld),.add_4860_out(grp_bicg_Pipeline_lp1_fu_1379_add_4860_out),.add_4860_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4860_out_ap_vld),.add_4759_out(grp_bicg_Pipeline_lp1_fu_1379_add_4759_out),.add_4759_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4759_out_ap_vld),.add_4658_out(grp_bicg_Pipeline_lp1_fu_1379_add_4658_out),.add_4658_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4658_out_ap_vld),.add_4557_out(grp_bicg_Pipeline_lp1_fu_1379_add_4557_out),.add_4557_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4557_out_ap_vld),.add_4456_out(grp_bicg_Pipeline_lp1_fu_1379_add_4456_out),.add_4456_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4456_out_ap_vld),.add_4355_out(grp_bicg_Pipeline_lp1_fu_1379_add_4355_out),.add_4355_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4355_out_ap_vld),.add_4254_out(grp_bicg_Pipeline_lp1_fu_1379_add_4254_out),.add_4254_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4254_out_ap_vld),.add_4153_out(grp_bicg_Pipeline_lp1_fu_1379_add_4153_out),.add_4153_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4153_out_ap_vld),.add_4052_out(grp_bicg_Pipeline_lp1_fu_1379_add_4052_out),.add_4052_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_4052_out_ap_vld),.add_3951_out(grp_bicg_Pipeline_lp1_fu_1379_add_3951_out),.add_3951_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3951_out_ap_vld),.add_3850_out(grp_bicg_Pipeline_lp1_fu_1379_add_3850_out),.add_3850_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3850_out_ap_vld),.add_3749_out(grp_bicg_Pipeline_lp1_fu_1379_add_3749_out),.add_3749_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3749_out_ap_vld),.add_3648_out(grp_bicg_Pipeline_lp1_fu_1379_add_3648_out),.add_3648_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3648_out_ap_vld),.add_3547_out(grp_bicg_Pipeline_lp1_fu_1379_add_3547_out),.add_3547_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3547_out_ap_vld),.add_3446_out(grp_bicg_Pipeline_lp1_fu_1379_add_3446_out),.add_3446_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3446_out_ap_vld),.add_3345_out(grp_bicg_Pipeline_lp1_fu_1379_add_3345_out),.add_3345_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3345_out_ap_vld),.add_3244_out(grp_bicg_Pipeline_lp1_fu_1379_add_3244_out),.add_3244_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3244_out_ap_vld),.add_3143_out(grp_bicg_Pipeline_lp1_fu_1379_add_3143_out),.add_3143_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3143_out_ap_vld),.add_3042_out(grp_bicg_Pipeline_lp1_fu_1379_add_3042_out),.add_3042_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_3042_out_ap_vld),.add_2941_out(grp_bicg_Pipeline_lp1_fu_1379_add_2941_out),.add_2941_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2941_out_ap_vld),.add_2840_out(grp_bicg_Pipeline_lp1_fu_1379_add_2840_out),.add_2840_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2840_out_ap_vld),.add_2739_out(grp_bicg_Pipeline_lp1_fu_1379_add_2739_out),.add_2739_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2739_out_ap_vld),.add_2638_out(grp_bicg_Pipeline_lp1_fu_1379_add_2638_out),.add_2638_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2638_out_ap_vld),.add_2537_out(grp_bicg_Pipeline_lp1_fu_1379_add_2537_out),.add_2537_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2537_out_ap_vld),.add_2436_out(grp_bicg_Pipeline_lp1_fu_1379_add_2436_out),.add_2436_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2436_out_ap_vld),.add_2335_out(grp_bicg_Pipeline_lp1_fu_1379_add_2335_out),.add_2335_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2335_out_ap_vld),.add_2234_out(grp_bicg_Pipeline_lp1_fu_1379_add_2234_out),.add_2234_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2234_out_ap_vld),.add_2133_out(grp_bicg_Pipeline_lp1_fu_1379_add_2133_out),.add_2133_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2133_out_ap_vld),.add_2032_out(grp_bicg_Pipeline_lp1_fu_1379_add_2032_out),.add_2032_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_2032_out_ap_vld),.add_1931_out(grp_bicg_Pipeline_lp1_fu_1379_add_1931_out),.add_1931_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1931_out_ap_vld),.add_1830_out(grp_bicg_Pipeline_lp1_fu_1379_add_1830_out),.add_1830_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1830_out_ap_vld),.add_1729_out(grp_bicg_Pipeline_lp1_fu_1379_add_1729_out),.add_1729_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1729_out_ap_vld),.add_1628_out(grp_bicg_Pipeline_lp1_fu_1379_add_1628_out),.add_1628_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1628_out_ap_vld),.add_1527_out(grp_bicg_Pipeline_lp1_fu_1379_add_1527_out),.add_1527_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1527_out_ap_vld),.add_1426_out(grp_bicg_Pipeline_lp1_fu_1379_add_1426_out),.add_1426_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1426_out_ap_vld),.add_1325_out(grp_bicg_Pipeline_lp1_fu_1379_add_1325_out),.add_1325_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1325_out_ap_vld),.add_1224_out(grp_bicg_Pipeline_lp1_fu_1379_add_1224_out),.add_1224_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1224_out_ap_vld),.add_1123_out(grp_bicg_Pipeline_lp1_fu_1379_add_1123_out),.add_1123_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1123_out_ap_vld),.add_1022_out(grp_bicg_Pipeline_lp1_fu_1379_add_1022_out),.add_1022_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_1022_out_ap_vld),.add_921_out(grp_bicg_Pipeline_lp1_fu_1379_add_921_out),.add_921_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_921_out_ap_vld),.add_820_out(grp_bicg_Pipeline_lp1_fu_1379_add_820_out),.add_820_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_820_out_ap_vld),.add_719_out(grp_bicg_Pipeline_lp1_fu_1379_add_719_out),.add_719_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_719_out_ap_vld),.add_618_out(grp_bicg_Pipeline_lp1_fu_1379_add_618_out),.add_618_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_618_out_ap_vld),.add_517_out(grp_bicg_Pipeline_lp1_fu_1379_add_517_out),.add_517_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_517_out_ap_vld),.add_416_out(grp_bicg_Pipeline_lp1_fu_1379_add_416_out),.add_416_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_416_out_ap_vld),.add_315_out(grp_bicg_Pipeline_lp1_fu_1379_add_315_out),.add_315_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_315_out_ap_vld),.add_214_out(grp_bicg_Pipeline_lp1_fu_1379_add_214_out),.add_214_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_214_out_ap_vld),.add_113_out(grp_bicg_Pipeline_lp1_fu_1379_add_113_out),.add_113_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add_113_out_ap_vld),.add12_out(grp_bicg_Pipeline_lp1_fu_1379_add12_out),.add12_out_ap_vld(grp_bicg_Pipeline_lp1_fu_1379_add12_out_ap_vld),.grp_fu_2941_p_din0(grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_din0),.grp_fu_2941_p_din1(grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_din1),.grp_fu_2941_p_opcode(grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_opcode),.grp_fu_2941_p_dout0(grp_fu_2941_p2),.grp_fu_2941_p_ce(grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_ce),.grp_fu_2945_p_din0(grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_din0),.grp_fu_2945_p_din1(grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_din1),.grp_fu_2945_p_dout0(grp_fu_2945_p2),.grp_fu_2945_p_ce(grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_ce));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_1578(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_8_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_16_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_16_ce0),.buff_A_16_q0(buff_A_16_q0),.buff_A_24_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_24_ce0),.buff_A_24_q0(buff_A_24_q0),.buff_A_32_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_32_address0),.buff_A_32_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_32_ce0),.buff_A_32_q0(buff_A_32_q0),.buff_A_40_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_40_address0),.buff_A_40_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_40_ce0),.buff_A_40_q0(buff_A_40_q0),.buff_A_48_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_48_address0),.buff_A_48_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_48_ce0),.buff_A_48_q0(buff_A_48_q0),.buff_A_56_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_56_address0),.buff_A_56_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_56_ce0),.buff_A_56_q0(buff_A_56_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_9_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_17_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_17_ce0),.buff_A_17_q0(buff_A_17_q0),.buff_A_25_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_25_ce0),.buff_A_25_q0(buff_A_25_q0),.buff_A_33_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_33_address0),.buff_A_33_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_33_ce0),.buff_A_33_q0(buff_A_33_q0),.buff_A_41_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_41_address0),.buff_A_41_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_41_ce0),.buff_A_41_q0(buff_A_41_q0),.buff_A_49_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_49_address0),.buff_A_49_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_49_ce0),.buff_A_49_q0(buff_A_49_q0),.buff_A_57_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_57_address0),.buff_A_57_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_57_ce0),.buff_A_57_q0(buff_A_57_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_10_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_18_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_18_ce0),.buff_A_18_q0(buff_A_18_q0),.buff_A_26_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_26_ce0),.buff_A_26_q0(buff_A_26_q0),.buff_A_34_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_34_address0),.buff_A_34_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_34_ce0),.buff_A_34_q0(buff_A_34_q0),.buff_A_42_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_42_address0),.buff_A_42_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_42_ce0),.buff_A_42_q0(buff_A_42_q0),.buff_A_50_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_50_address0),.buff_A_50_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_50_ce0),.buff_A_50_q0(buff_A_50_q0),.buff_A_58_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_58_address0),.buff_A_58_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_58_ce0),.buff_A_58_q0(buff_A_58_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_11_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_19_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_19_ce0),.buff_A_19_q0(buff_A_19_q0),.buff_A_27_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_27_ce0),.buff_A_27_q0(buff_A_27_q0),.buff_A_35_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_35_address0),.buff_A_35_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_35_ce0),.buff_A_35_q0(buff_A_35_q0),.buff_A_43_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_43_address0),.buff_A_43_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_43_ce0),.buff_A_43_q0(buff_A_43_q0),.buff_A_51_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_51_address0),.buff_A_51_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_51_ce0),.buff_A_51_q0(buff_A_51_q0),.buff_A_59_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_59_address0),.buff_A_59_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_59_ce0),.buff_A_59_q0(buff_A_59_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_12_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_20_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_20_ce0),.buff_A_20_q0(buff_A_20_q0),.buff_A_28_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_28_ce0),.buff_A_28_q0(buff_A_28_q0),.buff_A_36_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_36_address0),.buff_A_36_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_36_ce0),.buff_A_36_q0(buff_A_36_q0),.buff_A_44_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_44_address0),.buff_A_44_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_44_ce0),.buff_A_44_q0(buff_A_44_q0),.buff_A_52_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_52_address0),.buff_A_52_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_52_ce0),.buff_A_52_q0(buff_A_52_q0),.buff_A_60_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_60_address0),.buff_A_60_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_60_ce0),.buff_A_60_q0(buff_A_60_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_13_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_21_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_21_ce0),.buff_A_21_q0(buff_A_21_q0),.buff_A_29_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_29_ce0),.buff_A_29_q0(buff_A_29_q0),.buff_A_37_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_37_address0),.buff_A_37_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_37_ce0),.buff_A_37_q0(buff_A_37_q0),.buff_A_45_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_45_address0),.buff_A_45_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_45_ce0),.buff_A_45_q0(buff_A_45_q0),.buff_A_53_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_53_address0),.buff_A_53_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_53_ce0),.buff_A_53_q0(buff_A_53_q0),.buff_A_61_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_61_address0),.buff_A_61_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_61_ce0),.buff_A_61_q0(buff_A_61_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_14_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_22_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_22_ce0),.buff_A_22_q0(buff_A_22_q0),.buff_A_30_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_30_ce0),.buff_A_30_q0(buff_A_30_q0),.buff_A_38_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_38_address0),.buff_A_38_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_38_ce0),.buff_A_38_q0(buff_A_38_q0),.buff_A_46_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_46_address0),.buff_A_46_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_46_ce0),.buff_A_46_q0(buff_A_46_q0),.buff_A_54_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_54_address0),.buff_A_54_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_54_ce0),.buff_A_54_q0(buff_A_54_q0),.buff_A_62_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_62_address0),.buff_A_62_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_62_ce0),.buff_A_62_q0(buff_A_62_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_15_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_23_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_23_ce0),.buff_A_23_q0(buff_A_23_q0),.buff_A_31_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_31_ce0),.buff_A_31_q0(buff_A_31_q0),.buff_A_39_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_39_address0),.buff_A_39_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_39_ce0),.buff_A_39_q0(buff_A_39_q0),.buff_A_47_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_47_address0),.buff_A_47_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_47_ce0),.buff_A_47_q0(buff_A_47_q0),.buff_A_55_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_55_address0),.buff_A_55_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_55_ce0),.buff_A_55_q0(buff_A_55_q0),.buff_A_63_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_63_address0),.buff_A_63_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_63_ce0),.buff_A_63_q0(buff_A_63_q0),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_address1),.buff_p_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_ce1),.buff_p_q1(buff_p_q1),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_1_address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_address1),.buff_p_1_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_ce1),.buff_p_1_q1(buff_p_1_q1),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_2_address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_address1),.buff_p_2_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_ce1),.buff_p_2_q1(buff_p_2_q1),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_p_3_address1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_address1),.buff_p_3_ce1(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_ce1),.buff_p_3_q1(buff_p_3_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.grp_fu_2941_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_din0),.grp_fu_2941_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_din1),.grp_fu_2941_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_opcode),.grp_fu_2941_p_dout0(grp_fu_2941_p2),.grp_fu_2941_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_ce),.grp_fu_2945_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_din0),.grp_fu_2945_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_din1),.grp_fu_2945_p_dout0(grp_fu_2945_p2),.grp_fu_2945_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1651(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1651_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1651_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1651_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1651_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1651_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1651_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1651_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1651_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1651_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1651_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1651_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1651_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U370(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2941_p0),.din1(grp_fu_2941_p1),.ce(grp_fu_2941_ce),.dout(grp_fu_2941_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2945_p0),.din1(grp_fu_2945_p1),.ce(grp_fu_2945_ce),.dout(grp_fu_2945_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_fu_1379_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state35)) begin
            grp_bicg_Pipeline_lp1_fu_1379_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_fu_1379_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_fu_1379_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state67)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1651_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state69)) begin
            grp_bicg_Pipeline_lpwr_fu_1651_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1651_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1651_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_load_10_reg_2421 <= buff_s_out_q1;
        buff_s_out_load_11_reg_2426 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_load_12_reg_2441 <= buff_s_out_q1;
        buff_s_out_load_13_reg_2446 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_load_14_reg_2461 <= buff_s_out_q1;
        buff_s_out_load_15_reg_2466 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_load_16_reg_2481 <= buff_s_out_q1;
        buff_s_out_load_17_reg_2486 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_load_18_reg_2501 <= buff_s_out_q1;
        buff_s_out_load_19_reg_2506 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_load_1_reg_2326 <= buff_s_out_q0;
        buff_s_out_load_reg_2321 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_load_20_reg_2521 <= buff_s_out_q1;
        buff_s_out_load_21_reg_2526 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_load_22_reg_2541 <= buff_s_out_q1;
        buff_s_out_load_23_reg_2546 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_load_24_reg_2561 <= buff_s_out_q1;
        buff_s_out_load_25_reg_2566 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_load_26_reg_2581 <= buff_s_out_q1;
        buff_s_out_load_27_reg_2586 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_load_28_reg_2601 <= buff_s_out_q1;
        buff_s_out_load_29_reg_2606 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_load_2_reg_2341 <= buff_s_out_q1;
        buff_s_out_load_3_reg_2346 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_load_30_reg_2621 <= buff_s_out_q1;
        buff_s_out_load_31_reg_2626 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_load_32_reg_2641 <= buff_s_out_q1;
        buff_s_out_load_33_reg_2646 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_load_34_reg_2661 <= buff_s_out_q1;
        buff_s_out_load_35_reg_2666 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_load_36_reg_2681 <= buff_s_out_q1;
        buff_s_out_load_37_reg_2686 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_load_38_reg_2701 <= buff_s_out_q1;
        buff_s_out_load_39_reg_2706 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_load_40_reg_2721 <= buff_s_out_q1;
        buff_s_out_load_41_reg_2726 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_load_42_reg_2741 <= buff_s_out_q1;
        buff_s_out_load_43_reg_2746 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_load_44_reg_2761 <= buff_s_out_q1;
        buff_s_out_load_45_reg_2766 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_load_46_reg_2781 <= buff_s_out_q1;
        buff_s_out_load_47_reg_2786 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_load_48_reg_2801 <= buff_s_out_q1;
        buff_s_out_load_49_reg_2806 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_load_4_reg_2361 <= buff_s_out_q1;
        buff_s_out_load_5_reg_2366 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_load_50_reg_2821 <= buff_s_out_q1;
        buff_s_out_load_51_reg_2826 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_load_52_reg_2841 <= buff_s_out_q1;
        buff_s_out_load_53_reg_2846 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_load_54_reg_2861 <= buff_s_out_q1;
        buff_s_out_load_55_reg_2866 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_load_56_reg_2881 <= buff_s_out_q1;
        buff_s_out_load_57_reg_2886 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_load_58_reg_2901 <= buff_s_out_q1;
        buff_s_out_load_59_reg_2906 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_load_60_reg_2921 <= buff_s_out_q1;
        buff_s_out_load_61_reg_2926 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        buff_s_out_load_62_reg_2931 <= buff_s_out_q1;
        buff_s_out_load_63_reg_2936 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_load_6_reg_2381 <= buff_s_out_q1;
        buff_s_out_load_7_reg_2386 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_load_8_reg_2401 <= buff_s_out_q1;
        buff_s_out_load_9_reg_2406 <= buff_s_out_q0;
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
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_fu_1379_ap_done == 1'b0)) begin
        ap_ST_fsm_state36_blk = 1'b1;
    end else begin
        ap_ST_fsm_state36_blk = 1'b0;
    end
end
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
assign ap_ST_fsm_state43_blk = 1'b0;
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
assign ap_ST_fsm_state51_blk = 1'b0;
assign ap_ST_fsm_state52_blk = 1'b0;
assign ap_ST_fsm_state53_blk = 1'b0;
assign ap_ST_fsm_state54_blk = 1'b0;
assign ap_ST_fsm_state55_blk = 1'b0;
assign ap_ST_fsm_state56_blk = 1'b0;
assign ap_ST_fsm_state57_blk = 1'b0;
assign ap_ST_fsm_state58_blk = 1'b0;
assign ap_ST_fsm_state59_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state60_blk = 1'b0;
assign ap_ST_fsm_state61_blk = 1'b0;
assign ap_ST_fsm_state62_blk = 1'b0;
assign ap_ST_fsm_state63_blk = 1'b0;
assign ap_ST_fsm_state64_blk = 1'b0;
assign ap_ST_fsm_state65_blk = 1'b0;
assign ap_ST_fsm_state66_blk = 1'b0;
assign ap_ST_fsm_state67_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done == 1'b0)) begin
        ap_ST_fsm_state68_blk = 1'b1;
    end else begin
        ap_ST_fsm_state68_blk = 1'b0;
    end
end
assign ap_ST_fsm_state69_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1651_ap_done == 1'b0)) begin
        ap_ST_fsm_state70_blk = 1'b1;
    end else begin
        ap_ST_fsm_state70_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_bicg_Pipeline_lpwr_fu_1651_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state70))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_1651_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state70))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_address0;
    end else begin
        buff_A_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_ce0;
    end else begin
        buff_A_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_10_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_10_we0;
    end else begin
        buff_A_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_address0;
    end else begin
        buff_A_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_ce0;
    end else begin
        buff_A_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_11_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_11_we0;
    end else begin
        buff_A_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_address0;
    end else begin
        buff_A_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_ce0;
    end else begin
        buff_A_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_12_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_12_we0;
    end else begin
        buff_A_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_address0;
    end else begin
        buff_A_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_ce0;
    end else begin
        buff_A_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_13_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_13_we0;
    end else begin
        buff_A_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_address0;
    end else begin
        buff_A_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_ce0;
    end else begin
        buff_A_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_14_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_14_we0;
    end else begin
        buff_A_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_address0;
    end else begin
        buff_A_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_ce0;
    end else begin
        buff_A_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_15_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_15_we0;
    end else begin
        buff_A_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_address0;
    end else begin
        buff_A_16_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_ce0;
    end else begin
        buff_A_16_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_16_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_16_we0;
    end else begin
        buff_A_16_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_address0;
    end else begin
        buff_A_17_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_ce0;
    end else begin
        buff_A_17_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_17_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_17_we0;
    end else begin
        buff_A_17_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_address0;
    end else begin
        buff_A_18_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_ce0;
    end else begin
        buff_A_18_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_18_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_18_we0;
    end else begin
        buff_A_18_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_address0;
    end else begin
        buff_A_19_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_ce0;
    end else begin
        buff_A_19_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_19_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_19_we0;
    end else begin
        buff_A_19_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_address0;
    end else begin
        buff_A_20_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_ce0;
    end else begin
        buff_A_20_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_20_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_20_we0;
    end else begin
        buff_A_20_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_address0;
    end else begin
        buff_A_21_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_ce0;
    end else begin
        buff_A_21_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_21_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_21_we0;
    end else begin
        buff_A_21_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_address0;
    end else begin
        buff_A_22_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_ce0;
    end else begin
        buff_A_22_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_22_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_22_we0;
    end else begin
        buff_A_22_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_address0;
    end else begin
        buff_A_23_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_ce0;
    end else begin
        buff_A_23_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_23_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_23_we0;
    end else begin
        buff_A_23_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_address0;
    end else begin
        buff_A_24_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_ce0;
    end else begin
        buff_A_24_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_24_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_24_we0;
    end else begin
        buff_A_24_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_address0;
    end else begin
        buff_A_25_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_ce0;
    end else begin
        buff_A_25_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_25_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_25_we0;
    end else begin
        buff_A_25_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_address0;
    end else begin
        buff_A_26_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_ce0;
    end else begin
        buff_A_26_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_26_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_26_we0;
    end else begin
        buff_A_26_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_address0;
    end else begin
        buff_A_27_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_ce0;
    end else begin
        buff_A_27_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_27_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_27_we0;
    end else begin
        buff_A_27_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_address0;
    end else begin
        buff_A_28_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_ce0;
    end else begin
        buff_A_28_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_28_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_28_we0;
    end else begin
        buff_A_28_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_address0;
    end else begin
        buff_A_29_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_ce0;
    end else begin
        buff_A_29_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_29_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_29_we0;
    end else begin
        buff_A_29_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_address0;
    end else begin
        buff_A_30_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_ce0;
    end else begin
        buff_A_30_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_30_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_30_we0;
    end else begin
        buff_A_30_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_address0;
    end else begin
        buff_A_31_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_ce0;
    end else begin
        buff_A_31_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_31_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_31_we0;
    end else begin
        buff_A_31_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_32_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_32_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_32_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_32_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_32_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_address0;
    end else begin
        buff_A_32_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_32_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_32_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_32_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_32_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_32_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_ce0;
    end else begin
        buff_A_32_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_32_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_32_we0;
    end else begin
        buff_A_32_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_33_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_33_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_33_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_33_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_33_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_address0;
    end else begin
        buff_A_33_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_33_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_33_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_33_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_33_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_33_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_ce0;
    end else begin
        buff_A_33_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_33_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_33_we0;
    end else begin
        buff_A_33_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_34_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_34_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_34_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_34_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_34_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_address0;
    end else begin
        buff_A_34_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_34_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_34_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_34_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_34_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_34_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_ce0;
    end else begin
        buff_A_34_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_34_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_34_we0;
    end else begin
        buff_A_34_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_35_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_35_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_35_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_35_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_35_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_address0;
    end else begin
        buff_A_35_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_35_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_35_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_35_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_35_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_35_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_ce0;
    end else begin
        buff_A_35_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_35_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_35_we0;
    end else begin
        buff_A_35_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_36_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_36_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_36_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_36_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_36_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_address0;
    end else begin
        buff_A_36_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_36_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_36_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_36_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_36_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_36_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_ce0;
    end else begin
        buff_A_36_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_36_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_36_we0;
    end else begin
        buff_A_36_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_37_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_37_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_37_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_37_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_37_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_address0;
    end else begin
        buff_A_37_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_37_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_37_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_37_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_37_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_37_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_ce0;
    end else begin
        buff_A_37_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_37_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_37_we0;
    end else begin
        buff_A_37_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_38_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_38_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_38_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_38_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_38_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_address0;
    end else begin
        buff_A_38_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_38_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_38_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_38_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_38_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_38_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_ce0;
    end else begin
        buff_A_38_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_38_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_38_we0;
    end else begin
        buff_A_38_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_39_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_39_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_39_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_39_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_39_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_address0;
    end else begin
        buff_A_39_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_39_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_39_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_39_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_39_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_39_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_ce0;
    end else begin
        buff_A_39_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_39_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_39_we0;
    end else begin
        buff_A_39_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_40_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_40_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_40_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_40_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_40_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_address0;
    end else begin
        buff_A_40_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_40_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_40_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_40_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_40_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_40_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_ce0;
    end else begin
        buff_A_40_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_40_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_40_we0;
    end else begin
        buff_A_40_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_41_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_41_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_41_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_41_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_41_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_address0;
    end else begin
        buff_A_41_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_41_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_41_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_41_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_41_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_41_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_ce0;
    end else begin
        buff_A_41_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_41_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_41_we0;
    end else begin
        buff_A_41_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_42_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_42_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_42_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_42_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_42_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_address0;
    end else begin
        buff_A_42_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_42_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_42_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_42_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_42_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_42_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_ce0;
    end else begin
        buff_A_42_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_42_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_42_we0;
    end else begin
        buff_A_42_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_43_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_43_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_43_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_43_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_43_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_address0;
    end else begin
        buff_A_43_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_43_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_43_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_43_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_43_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_43_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_ce0;
    end else begin
        buff_A_43_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_43_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_43_we0;
    end else begin
        buff_A_43_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_44_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_44_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_44_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_44_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_44_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_address0;
    end else begin
        buff_A_44_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_44_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_44_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_44_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_44_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_44_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_ce0;
    end else begin
        buff_A_44_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_44_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_44_we0;
    end else begin
        buff_A_44_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_45_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_45_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_45_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_45_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_45_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_address0;
    end else begin
        buff_A_45_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_45_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_45_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_45_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_45_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_45_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_ce0;
    end else begin
        buff_A_45_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_45_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_45_we0;
    end else begin
        buff_A_45_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_46_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_46_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_46_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_46_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_46_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_address0;
    end else begin
        buff_A_46_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_46_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_46_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_46_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_46_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_46_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_ce0;
    end else begin
        buff_A_46_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_46_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_46_we0;
    end else begin
        buff_A_46_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_47_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_47_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_47_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_47_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_47_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_address0;
    end else begin
        buff_A_47_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_47_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_47_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_47_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_47_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_47_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_ce0;
    end else begin
        buff_A_47_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_47_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_47_we0;
    end else begin
        buff_A_47_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_48_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_48_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_48_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_48_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_48_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_address0;
    end else begin
        buff_A_48_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_48_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_48_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_48_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_48_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_48_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_ce0;
    end else begin
        buff_A_48_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_48_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_48_we0;
    end else begin
        buff_A_48_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_49_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_49_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_49_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_49_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_49_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_address0;
    end else begin
        buff_A_49_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_49_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_49_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_49_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_49_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_49_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_ce0;
    end else begin
        buff_A_49_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_49_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_49_we0;
    end else begin
        buff_A_49_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_50_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_50_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_50_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_50_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_50_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_address0;
    end else begin
        buff_A_50_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_50_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_50_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_50_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_50_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_50_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_ce0;
    end else begin
        buff_A_50_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_50_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_50_we0;
    end else begin
        buff_A_50_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_51_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_51_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_51_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_51_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_51_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_address0;
    end else begin
        buff_A_51_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_51_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_51_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_51_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_51_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_51_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_ce0;
    end else begin
        buff_A_51_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_51_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_51_we0;
    end else begin
        buff_A_51_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_52_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_52_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_52_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_52_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_52_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_address0;
    end else begin
        buff_A_52_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_52_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_52_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_52_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_52_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_52_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_ce0;
    end else begin
        buff_A_52_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_52_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_52_we0;
    end else begin
        buff_A_52_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_53_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_53_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_53_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_53_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_53_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_address0;
    end else begin
        buff_A_53_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_53_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_53_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_53_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_53_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_53_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_ce0;
    end else begin
        buff_A_53_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_53_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_53_we0;
    end else begin
        buff_A_53_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_54_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_54_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_54_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_54_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_54_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_address0;
    end else begin
        buff_A_54_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_54_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_54_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_54_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_54_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_54_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_ce0;
    end else begin
        buff_A_54_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_54_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_54_we0;
    end else begin
        buff_A_54_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_55_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_55_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_55_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_55_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_55_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_address0;
    end else begin
        buff_A_55_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_55_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_55_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_55_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_55_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_55_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_ce0;
    end else begin
        buff_A_55_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_55_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_55_we0;
    end else begin
        buff_A_55_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_56_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_56_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_56_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_56_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_56_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_address0;
    end else begin
        buff_A_56_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_56_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_56_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_56_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_56_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_56_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_ce0;
    end else begin
        buff_A_56_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_56_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_56_we0;
    end else begin
        buff_A_56_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_57_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_57_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_57_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_57_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_57_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_address0;
    end else begin
        buff_A_57_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_57_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_57_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_57_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_57_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_57_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_ce0;
    end else begin
        buff_A_57_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_57_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_57_we0;
    end else begin
        buff_A_57_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_58_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_58_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_58_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_58_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_58_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_address0;
    end else begin
        buff_A_58_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_58_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_58_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_58_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_58_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_58_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_ce0;
    end else begin
        buff_A_58_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_58_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_58_we0;
    end else begin
        buff_A_58_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_59_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_59_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_59_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_59_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_59_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_address0;
    end else begin
        buff_A_59_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_59_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_59_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_59_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_59_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_59_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_ce0;
    end else begin
        buff_A_59_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_59_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_59_we0;
    end else begin
        buff_A_59_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_60_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_60_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_60_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_60_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_60_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_address0;
    end else begin
        buff_A_60_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_60_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_60_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_60_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_60_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_60_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_ce0;
    end else begin
        buff_A_60_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_60_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_60_we0;
    end else begin
        buff_A_60_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_61_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_61_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_61_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_61_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_61_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_address0;
    end else begin
        buff_A_61_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_61_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_61_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_61_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_61_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_61_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_ce0;
    end else begin
        buff_A_61_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_61_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_61_we0;
    end else begin
        buff_A_61_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_62_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_62_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_62_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_62_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_62_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_address0;
    end else begin
        buff_A_62_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_62_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_62_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_62_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_62_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_62_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_ce0;
    end else begin
        buff_A_62_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_62_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_62_we0;
    end else begin
        buff_A_62_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_63_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_63_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_63_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_63_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_63_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_address0;
    end else begin
        buff_A_63_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_63_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_63_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_63_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_63_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_63_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_ce0;
    end else begin
        buff_A_63_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_63_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_63_we0;
    end else begin
        buff_A_63_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_address0;
    end else begin
        buff_A_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_ce0;
    end else begin
        buff_A_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_8_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_8_we0;
    end else begin
        buff_A_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_address0;
    end else begin
        buff_A_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_ce0;
    end else begin
        buff_A_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_9_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_9_we0;
    end else begin
        buff_A_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_ce0;
    end else begin
        buff_p_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_1_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_1_ce1;
    end else begin
        buff_p_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_1_we0;
    end else begin
        buff_p_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_ce0;
    end else begin
        buff_p_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_2_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_2_ce1;
    end else begin
        buff_p_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_2_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_2_we0;
    end else begin
        buff_p_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_ce0;
    end else begin
        buff_p_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_3_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_3_ce1;
    end else begin
        buff_p_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_3_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_3_we0;
    end else begin
        buff_p_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_address0;
    end else begin
        buff_p_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_ce0;
    end else begin
        buff_p_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_p_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_p_ce1;
    end else begin
        buff_p_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_p_we0;
    end else begin
        buff_p_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1651_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1651_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_ce0;
    end else begin
        buff_q_out_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_buff_q_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_fu_1379_buff_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_r_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_address0;
    end else begin
        buff_r_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_fu_1379_buff_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_ce0;
    end else begin
        buff_r_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_r_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_r_we0;
    end else begin
        buff_r_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1651_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = buff_s_out_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_s_out_address0_local = buff_s_out_addr_63_reg_2916;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        buff_s_out_address0_local = buff_s_out_addr_61_reg_2896;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        buff_s_out_address0_local = buff_s_out_addr_59_reg_2876;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        buff_s_out_address0_local = buff_s_out_addr_57_reg_2856;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        buff_s_out_address0_local = buff_s_out_addr_55_reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        buff_s_out_address0_local = buff_s_out_addr_53_reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        buff_s_out_address0_local = buff_s_out_addr_51_reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        buff_s_out_address0_local = buff_s_out_addr_49_reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        buff_s_out_address0_local = buff_s_out_addr_47_reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        buff_s_out_address0_local = buff_s_out_addr_45_reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        buff_s_out_address0_local = buff_s_out_addr_43_reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        buff_s_out_address0_local = buff_s_out_addr_41_reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        buff_s_out_address0_local = buff_s_out_addr_39_reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        buff_s_out_address0_local = buff_s_out_addr_37_reg_2656;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        buff_s_out_address0_local = buff_s_out_addr_35_reg_2636;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        buff_s_out_address0_local = buff_s_out_addr_33_reg_2616;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        buff_s_out_address0_local = buff_s_out_addr_31_reg_2596;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        buff_s_out_address0_local = buff_s_out_addr_29_reg_2576;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        buff_s_out_address0_local = buff_s_out_addr_27_reg_2556;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        buff_s_out_address0_local = buff_s_out_addr_25_reg_2536;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        buff_s_out_address0_local = buff_s_out_addr_23_reg_2516;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        buff_s_out_address0_local = buff_s_out_addr_21_reg_2496;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        buff_s_out_address0_local = buff_s_out_addr_19_reg_2476;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        buff_s_out_address0_local = buff_s_out_addr_17_reg_2456;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        buff_s_out_address0_local = buff_s_out_addr_15_reg_2436;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        buff_s_out_address0_local = buff_s_out_addr_13_reg_2416;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        buff_s_out_address0_local = buff_s_out_addr_11_reg_2396;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        buff_s_out_address0_local = buff_s_out_addr_9_reg_2376;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        buff_s_out_address0_local = buff_s_out_addr_7_reg_2356;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_address0_local = buff_s_out_addr_5_reg_2336;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        buff_s_out_address0_local = buff_s_out_addr_3_reg_2316;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address0_local = buff_s_out_addr_1_reg_2306;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_address0_local = 64'd1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_s_out_address1_local = buff_s_out_addr_62_reg_2911;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        buff_s_out_address1_local = buff_s_out_addr_60_reg_2891;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        buff_s_out_address1_local = buff_s_out_addr_58_reg_2871;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        buff_s_out_address1_local = buff_s_out_addr_56_reg_2851;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        buff_s_out_address1_local = buff_s_out_addr_54_reg_2831;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        buff_s_out_address1_local = buff_s_out_addr_52_reg_2811;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        buff_s_out_address1_local = buff_s_out_addr_50_reg_2791;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        buff_s_out_address1_local = buff_s_out_addr_48_reg_2771;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        buff_s_out_address1_local = buff_s_out_addr_46_reg_2751;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        buff_s_out_address1_local = buff_s_out_addr_44_reg_2731;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        buff_s_out_address1_local = buff_s_out_addr_42_reg_2711;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        buff_s_out_address1_local = buff_s_out_addr_40_reg_2691;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        buff_s_out_address1_local = buff_s_out_addr_38_reg_2671;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        buff_s_out_address1_local = buff_s_out_addr_36_reg_2651;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        buff_s_out_address1_local = buff_s_out_addr_34_reg_2631;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        buff_s_out_address1_local = buff_s_out_addr_32_reg_2611;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        buff_s_out_address1_local = buff_s_out_addr_30_reg_2591;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        buff_s_out_address1_local = buff_s_out_addr_28_reg_2571;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        buff_s_out_address1_local = buff_s_out_addr_26_reg_2551;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        buff_s_out_address1_local = buff_s_out_addr_24_reg_2531;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        buff_s_out_address1_local = buff_s_out_addr_22_reg_2511;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        buff_s_out_address1_local = buff_s_out_addr_20_reg_2491;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        buff_s_out_address1_local = buff_s_out_addr_18_reg_2471;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        buff_s_out_address1_local = buff_s_out_addr_16_reg_2451;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        buff_s_out_address1_local = buff_s_out_addr_14_reg_2431;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        buff_s_out_address1_local = buff_s_out_addr_12_reg_2411;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        buff_s_out_address1_local = buff_s_out_addr_10_reg_2391;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        buff_s_out_address1_local = buff_s_out_addr_8_reg_2371;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        buff_s_out_address1_local = buff_s_out_addr_6_reg_2351;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_address1_local = buff_s_out_addr_4_reg_2331;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        buff_s_out_address1_local = buff_s_out_addr_2_reg_2311;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_address1_local = buff_s_out_addr_reg_2301;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        buff_s_out_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        buff_s_out_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        buff_s_out_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        buff_s_out_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        buff_s_out_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        buff_s_out_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        buff_s_out_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        buff_s_out_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buff_s_out_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_s_out_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        buff_s_out_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buff_s_out_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_s_out_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_s_out_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_s_out_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_s_out_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_s_out_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_s_out_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_s_out_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_s_out_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_s_out_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_s_out_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_address1_local = 64'd0;
    end else begin
        buff_s_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1651_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state15) | (1'b1== ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state68) & (grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done == 1'b1)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state15) | (1'b1== ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state68) & (grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done == 1'b1)))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_d0;
    end else begin
        buff_s_out_d0 = buff_s_out_d0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_6375_out;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_6173_out;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_5971_out;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_5769_out;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_5567_out;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_5365_out;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_5163_out;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_4961_out;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_4759_out;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_4557_out;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_4355_out;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_4153_out;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_3951_out;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_3749_out;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_3547_out;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_3345_out;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_3143_out;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_2941_out;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_2739_out;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_2537_out;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_2335_out;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_2133_out;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_1931_out;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_1729_out;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_1527_out;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_1325_out;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_1123_out;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_921_out;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_719_out;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_517_out;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_315_out;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d0_local = grp_bicg_Pipeline_lp1_fu_1379_add_113_out;
    end else begin
        buff_s_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_6274_out;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_6072_out;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_5870_out;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_5668_out;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_5466_out;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_5264_out;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_5062_out;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_4860_out;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_4658_out;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_4456_out;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_4254_out;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_4052_out;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_3850_out;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_3648_out;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_3446_out;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_3244_out;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_3042_out;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_2840_out;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_2638_out;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_2436_out;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_2234_out;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_2032_out;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_1830_out;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_1628_out;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_1426_out;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_1224_out;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_1022_out;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_820_out;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_618_out;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_416_out;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add_214_out;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        buff_s_out_d1_local = grp_bicg_Pipeline_lp1_fu_1379_add12_out;
    end else begin
        buff_s_out_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_buff_s_out_we0;
    end else begin
        buff_s_out_we0 = buff_s_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state67) | ((1'b1 == ap_CS_fsm_state68) & (grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done == 1'b1)))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state67) | ((1'b1 == ap_CS_fsm_state68) & (grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done == 1'b1)))) begin
        buff_s_out_we1_local = 1'b1;
    end else begin
        buff_s_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_2941_ce = grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_2941_ce = grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_ce;
    end else begin
        grp_fu_2941_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_2941_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_2941_p0 = grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_din0;
    end else begin
        grp_fu_2941_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_2941_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2941_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_2941_p1 = grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2941_p_din1;
    end else begin
        grp_fu_2941_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_2945_ce = grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_2945_ce = grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_ce;
    end else begin
        grp_fu_2945_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_2945_p0 = grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_2945_p0 = grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_din0;
    end else begin
        grp_fu_2945_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_2945_p1 = grp_bicg_Pipeline_lp3_lp4_fu_1578_grp_fu_2945_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_2945_p1 = grp_bicg_Pipeline_lp1_fu_1379_grp_fu_2945_p_din1;
    end else begin
        grp_fu_2945_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1651_q_out_write;
    end else begin
        q_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1651_s_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
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
            ap_NS_fsm = ap_ST_fsm_state22;
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
            if (((1'b1 == ap_CS_fsm_state36) & (grp_bicg_Pipeline_lp1_fu_1379_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            if (((1'b1 == ap_CS_fsm_state68) & (grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state69;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state68;
            end
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_1651_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state70))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state70;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_A_address0;
assign A_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_A_ce0;
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
assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];
assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];
assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_state57 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_state58 = ap_CS_fsm[32'd57];
assign ap_CS_fsm_state59 = ap_CS_fsm[32'd58];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state60 = ap_CS_fsm[32'd59];
assign ap_CS_fsm_state61 = ap_CS_fsm[32'd60];
assign ap_CS_fsm_state62 = ap_CS_fsm[32'd61];
assign ap_CS_fsm_state63 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_state64 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_state65 = ap_CS_fsm[32'd64];
assign ap_CS_fsm_state66 = ap_CS_fsm[32'd65];
assign ap_CS_fsm_state67 = ap_CS_fsm[32'd66];
assign ap_CS_fsm_state68 = ap_CS_fsm[32'd67];
assign ap_CS_fsm_state69 = ap_CS_fsm[32'd68];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state70 = ap_CS_fsm[32'd69];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign buff_s_out_addr_10_reg_2391 = 64'd10;
assign buff_s_out_addr_11_reg_2396 = 64'd11;
assign buff_s_out_addr_12_reg_2411 = 64'd12;
assign buff_s_out_addr_13_reg_2416 = 64'd13;
assign buff_s_out_addr_14_reg_2431 = 64'd14;
assign buff_s_out_addr_15_reg_2436 = 64'd15;
assign buff_s_out_addr_16_reg_2451 = 64'd16;
assign buff_s_out_addr_17_reg_2456 = 64'd17;
assign buff_s_out_addr_18_reg_2471 = 64'd18;
assign buff_s_out_addr_19_reg_2476 = 64'd19;
assign buff_s_out_addr_1_reg_2306 = 64'd1;
assign buff_s_out_addr_20_reg_2491 = 64'd20;
assign buff_s_out_addr_21_reg_2496 = 64'd21;
assign buff_s_out_addr_22_reg_2511 = 64'd22;
assign buff_s_out_addr_23_reg_2516 = 64'd23;
assign buff_s_out_addr_24_reg_2531 = 64'd24;
assign buff_s_out_addr_25_reg_2536 = 64'd25;
assign buff_s_out_addr_26_reg_2551 = 64'd26;
assign buff_s_out_addr_27_reg_2556 = 64'd27;
assign buff_s_out_addr_28_reg_2571 = 64'd28;
assign buff_s_out_addr_29_reg_2576 = 64'd29;
assign buff_s_out_addr_2_reg_2311 = 64'd2;
assign buff_s_out_addr_30_reg_2591 = 64'd30;
assign buff_s_out_addr_31_reg_2596 = 64'd31;
assign buff_s_out_addr_32_reg_2611 = 64'd32;
assign buff_s_out_addr_33_reg_2616 = 64'd33;
assign buff_s_out_addr_34_reg_2631 = 64'd34;
assign buff_s_out_addr_35_reg_2636 = 64'd35;
assign buff_s_out_addr_36_reg_2651 = 64'd36;
assign buff_s_out_addr_37_reg_2656 = 64'd37;
assign buff_s_out_addr_38_reg_2671 = 64'd38;
assign buff_s_out_addr_39_reg_2676 = 64'd39;
assign buff_s_out_addr_3_reg_2316 = 64'd3;
assign buff_s_out_addr_40_reg_2691 = 64'd40;
assign buff_s_out_addr_41_reg_2696 = 64'd41;
assign buff_s_out_addr_42_reg_2711 = 64'd42;
assign buff_s_out_addr_43_reg_2716 = 64'd43;
assign buff_s_out_addr_44_reg_2731 = 64'd44;
assign buff_s_out_addr_45_reg_2736 = 64'd45;
assign buff_s_out_addr_46_reg_2751 = 64'd46;
assign buff_s_out_addr_47_reg_2756 = 64'd47;
assign buff_s_out_addr_48_reg_2771 = 64'd48;
assign buff_s_out_addr_49_reg_2776 = 64'd49;
assign buff_s_out_addr_4_reg_2331 = 64'd4;
assign buff_s_out_addr_50_reg_2791 = 64'd50;
assign buff_s_out_addr_51_reg_2796 = 64'd51;
assign buff_s_out_addr_52_reg_2811 = 64'd52;
assign buff_s_out_addr_53_reg_2816 = 64'd53;
assign buff_s_out_addr_54_reg_2831 = 64'd54;
assign buff_s_out_addr_55_reg_2836 = 64'd55;
assign buff_s_out_addr_56_reg_2851 = 64'd56;
assign buff_s_out_addr_57_reg_2856 = 64'd57;
assign buff_s_out_addr_58_reg_2871 = 64'd58;
assign buff_s_out_addr_59_reg_2876 = 64'd59;
assign buff_s_out_addr_5_reg_2336 = 64'd5;
assign buff_s_out_addr_60_reg_2891 = 64'd60;
assign buff_s_out_addr_61_reg_2896 = 64'd61;
assign buff_s_out_addr_62_reg_2911 = 64'd62;
assign buff_s_out_addr_63_reg_2916 = 64'd63;
assign buff_s_out_addr_6_reg_2351 = 64'd6;
assign buff_s_out_addr_7_reg_2356 = 64'd7;
assign buff_s_out_addr_8_reg_2371 = 64'd8;
assign buff_s_out_addr_9_reg_2376 = 64'd9;
assign buff_s_out_addr_reg_2301 = 64'd0;
assign grp_bicg_Pipeline_lp1_fu_1379_ap_start = grp_bicg_Pipeline_lp1_fu_1379_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_1578_ap_start_reg;
assign grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1651_ap_start = grp_bicg_Pipeline_lpwr_fu_1651_ap_start_reg;
assign p_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_p_address0;
assign p_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_p_ce0;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1651_q_out_din;
assign r_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_r_address0;
assign r_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_1227_r_ce0;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1651_s_out_din;
endmodule 