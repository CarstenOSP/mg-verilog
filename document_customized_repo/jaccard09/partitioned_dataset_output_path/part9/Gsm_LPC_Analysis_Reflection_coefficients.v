
module Gsm_LPC_Analysis_Reflection_coefficients (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,L_ACF_0_val,L_ACF_1_val,L_ACF_2_val,L_ACF_3_val,L_ACF_4_val,L_ACF_5_val,L_ACF_6_val,L_ACF_7_val,L_ACF_8_val,LARc_address0,LARc_ce0,LARc_we0,LARc_d0,bitoff_address0,bitoff_ce0,bitoff_q0,bitoff_address1,bitoff_ce1,bitoff_q1,bitoff_address2,bitoff_ce2,bitoff_q2,bitoff_address3,bitoff_ce3,bitoff_q3);  
parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_state2 = 27'd2;
parameter    ap_ST_fsm_state3 = 27'd4;
parameter    ap_ST_fsm_state4 = 27'd8;
parameter    ap_ST_fsm_state5 = 27'd16;
parameter    ap_ST_fsm_state6 = 27'd32;
parameter    ap_ST_fsm_state7 = 27'd64;
parameter    ap_ST_fsm_state8 = 27'd128;
parameter    ap_ST_fsm_state9 = 27'd256;
parameter    ap_ST_fsm_state10 = 27'd512;
parameter    ap_ST_fsm_state11 = 27'd1024;
parameter    ap_ST_fsm_state12 = 27'd2048;
parameter    ap_ST_fsm_state13 = 27'd4096;
parameter    ap_ST_fsm_state14 = 27'd8192;
parameter    ap_ST_fsm_state15 = 27'd16384;
parameter    ap_ST_fsm_state16 = 27'd32768;
parameter    ap_ST_fsm_state17 = 27'd65536;
parameter    ap_ST_fsm_state18 = 27'd131072;
parameter    ap_ST_fsm_state19 = 27'd262144;
parameter    ap_ST_fsm_state20 = 27'd524288;
parameter    ap_ST_fsm_state21 = 27'd1048576;
parameter    ap_ST_fsm_state22 = 27'd2097152;
parameter    ap_ST_fsm_state23 = 27'd4194304;
parameter    ap_ST_fsm_state24 = 27'd8388608;
parameter    ap_ST_fsm_state25 = 27'd16777216;
parameter    ap_ST_fsm_state26 = 27'd33554432;
parameter    ap_ST_fsm_state27 = 27'd67108864;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] L_ACF_0_val;
input  [31:0] L_ACF_1_val;
input  [31:0] L_ACF_2_val;
input  [31:0] L_ACF_3_val;
input  [31:0] L_ACF_4_val;
input  [31:0] L_ACF_5_val;
input  [31:0] L_ACF_6_val;
input  [31:0] L_ACF_7_val;
input  [31:0] L_ACF_8_val;
output  [2:0] LARc_address0;
output   LARc_ce0;
output   LARc_we0;
output  [15:0] LARc_d0;
output  [7:0] bitoff_address0;
output   bitoff_ce0;
input  [3:0] bitoff_q0;
output  [7:0] bitoff_address1;
output   bitoff_ce1;
input  [3:0] bitoff_q1;
output  [7:0] bitoff_address2;
output   bitoff_ce2;
input  [3:0] bitoff_q2;
output  [7:0] bitoff_address3;
output   bitoff_ce3;
input  [3:0] bitoff_q3;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] LARc_address0;
reg LARc_ce0;
reg LARc_we0;
reg[15:0] LARc_d0;
(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] empty_fu_524_p1;
reg   [31:0] empty_reg_2084;
wire   [0:0] icmp_ln174_fu_528_p2;
reg   [0:0] icmp_ln174_reg_2174;
wire   [0:0] icmp_ln115_fu_534_p2;
reg   [0:0] icmp_ln115_reg_2206;
wire   [0:0] and_ln115_fu_660_p2;
reg   [0:0] and_ln115_reg_2231;
wire   [0:0] and_ln115_2_fu_678_p2;
reg   [0:0] and_ln115_2_reg_2236;
wire   [0:0] and_ln115_4_fu_696_p2;
reg   [0:0] and_ln115_4_reg_2241;
wire   [5:0] temp_fu_773_p13;
reg   [5:0] temp_reg_2246;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln165_fu_906_p1;
reg   [63:0] zext_ln165_reg_2263;
wire    ap_CS_fsm_state8;
wire   [3:0] add_ln195_1_fu_925_p2;
reg   [3:0] add_ln195_1_reg_2274;
wire   [15:0] zext_ln69_fu_951_p1;
wire   [0:0] icmp_ln200_fu_958_p2;
reg   [0:0] icmp_ln200_reg_2284;
wire    ap_CS_fsm_state9;
wire  signed [31:0] sext_ln130_fu_964_p1;
reg  signed [31:0] sext_ln130_reg_2288;
wire  signed [30:0] sext_ln130_1_fu_968_p1;
reg  signed [30:0] sext_ln130_1_reg_2293;
wire  signed [29:0] sext_ln130_2_fu_972_p1;
reg  signed [29:0] sext_ln130_2_reg_2299;
wire  signed [28:0] sext_ln130_3_fu_976_p1;
reg  signed [28:0] sext_ln130_3_reg_2305;
wire  signed [27:0] sext_ln130_4_fu_980_p1;
reg  signed [27:0] sext_ln130_4_reg_2311;
wire  signed [26:0] sext_ln130_5_fu_984_p1;
reg  signed [26:0] sext_ln130_5_reg_2317;
wire  signed [25:0] sext_ln130_6_fu_988_p1;
reg  signed [25:0] sext_ln130_6_reg_2323;
wire  signed [24:0] sext_ln130_7_fu_992_p1;
reg  signed [24:0] sext_ln130_7_reg_2329;
wire  signed [23:0] sext_ln130_8_fu_996_p1;
reg  signed [23:0] sext_ln130_8_reg_2335;
wire  signed [22:0] sext_ln130_9_fu_1000_p1;
reg  signed [22:0] sext_ln130_9_reg_2341;
wire  signed [21:0] sext_ln130_10_fu_1004_p1;
reg  signed [21:0] sext_ln130_10_reg_2347;
wire  signed [20:0] sext_ln130_11_fu_1008_p1;
reg  signed [20:0] sext_ln130_11_reg_2353;
wire  signed [19:0] sext_ln130_12_fu_1012_p1;
reg  signed [19:0] sext_ln130_12_reg_2359;
wire  signed [16:0] sext_ln130_15_fu_1024_p1;
reg  signed [16:0] sext_ln130_15_reg_2365;
wire   [0:0] div_fu_1052_p2;
reg   [0:0] div_reg_2373;
wire   [18:0] L_num_3_fu_1072_p3;
reg   [18:0] L_num_3_reg_2379;
wire   [0:0] icmp_ln151_1_fu_1080_p2;
reg   [0:0] icmp_ln151_1_reg_2384;
wire   [18:0] L_num_4_fu_1086_p2;
reg   [18:0] L_num_4_reg_2389;
wire   [2:0] trunc_ln165_fu_1092_p1;
reg   [2:0] trunc_ln165_reg_2394;
wire   [31:0] trunc_ln163_fu_1096_p1;
reg   [31:0] trunc_ln163_reg_2399;
wire   [30:0] select_ln202_fu_1111_p3;
reg   [30:0] select_ln202_reg_2404;
wire   [0:0] xor_ln151_fu_1120_p2;
reg   [0:0] xor_ln151_reg_2409;
wire    ap_CS_fsm_state10;
wire   [0:0] xor_ln151_1_fu_1144_p2;
reg   [0:0] xor_ln151_1_reg_2414;
wire   [19:0] select_ln151_4_fu_1155_p3;
reg   [19:0] select_ln151_4_reg_2419;
wire   [0:0] xor_ln151_2_fu_1175_p2;
reg   [0:0] xor_ln151_2_reg_2424;
wire    ap_CS_fsm_state11;
wire   [21:0] L_num_9_fu_1194_p3;
reg   [21:0] L_num_9_reg_2429;
wire   [0:0] icmp_ln151_4_fu_1202_p2;
reg   [0:0] icmp_ln151_4_reg_2434;
wire   [21:0] L_num_10_fu_1207_p2;
reg   [21:0] L_num_10_reg_2439;
wire   [0:0] xor_ln151_3_fu_1212_p2;
reg   [0:0] xor_ln151_3_reg_2444;
wire    ap_CS_fsm_state12;
wire   [0:0] xor_ln151_4_fu_1236_p2;
reg   [0:0] xor_ln151_4_reg_2449;
wire   [22:0] select_ln151_10_fu_1247_p3;
reg   [22:0] select_ln151_10_reg_2454;
wire   [0:0] xor_ln151_5_fu_1267_p2;
reg   [0:0] xor_ln151_5_reg_2459;
wire    ap_CS_fsm_state13;
wire   [24:0] L_num_15_fu_1286_p3;
reg   [24:0] L_num_15_reg_2464;
wire   [0:0] icmp_ln151_7_fu_1294_p2;
reg   [0:0] icmp_ln151_7_reg_2469;
wire   [24:0] L_num_16_fu_1299_p2;
reg   [24:0] L_num_16_reg_2474;
wire   [0:0] xor_ln151_6_fu_1304_p2;
reg   [0:0] xor_ln151_6_reg_2479;
wire    ap_CS_fsm_state14;
wire   [0:0] xor_ln151_7_fu_1328_p2;
reg   [0:0] xor_ln151_7_reg_2484;
wire   [25:0] select_ln151_16_fu_1339_p3;
reg   [25:0] select_ln151_16_reg_2489;
wire   [0:0] xor_ln151_8_fu_1359_p2;
reg   [0:0] xor_ln151_8_reg_2494;
wire    ap_CS_fsm_state15;
wire   [26:0] select_ln151_18_fu_1370_p3;
reg   [26:0] select_ln151_18_reg_2499;
wire   [0:0] xor_ln151_9_fu_1390_p2;
reg   [0:0] xor_ln151_9_reg_2504;
wire    ap_CS_fsm_state16;
wire   [27:0] select_ln151_20_fu_1401_p3;
reg   [27:0] select_ln151_20_reg_2509;
wire   [0:0] xor_ln151_10_fu_1421_p2;
reg   [0:0] xor_ln151_10_reg_2514;
wire    ap_CS_fsm_state17;
wire   [28:0] select_ln151_22_fu_1432_p3;
reg   [28:0] select_ln151_22_reg_2519;
wire   [1:0] select_ln151_1_fu_1454_p3;
reg   [1:0] select_ln151_1_reg_2524;
wire    ap_CS_fsm_state18;
wire   [0:0] xor_ln151_11_fu_1473_p2;
reg   [0:0] xor_ln151_11_reg_2530;
wire   [29:0] select_ln151_24_fu_1484_p3;
reg   [29:0] select_ln151_24_reg_2535;
wire   [8:0] select_ln151_15_fu_1644_p3;
reg   [8:0] select_ln151_15_reg_2540;
wire    ap_CS_fsm_state19;
wire   [0:0] xor_ln151_12_fu_1663_p2;
reg   [0:0] xor_ln151_12_reg_2546;
wire   [0:0] icmp_ln151_14_fu_1690_p2;
reg   [0:0] icmp_ln151_14_reg_2551;
wire   [14:0] div_29_fu_1829_p3;
wire    ap_CS_fsm_state20;
wire  signed [15:0] select_ln209_fu_1852_p3;
reg   [15:0] select_ln209_reg_2561;
wire    ap_CS_fsm_state21;
reg   [63:0] indvars_iv26_load_reg_2569;
reg   [15:0] temp_3_reg_2584;
wire    ap_CS_fsm_state24;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_done;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_ready;
wire   [2:0] grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_address0;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_ce0;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_we0;
wire   [15:0] grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_d0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_ready;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_17_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_17_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_16_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_16_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_15_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_15_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_14_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_14_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_13_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_13_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_12_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_12_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_11_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_11_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_8_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_8_out_ap_vld;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_ready;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_P_9_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_P_9_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_select_ln191_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_select_ln191_out_ap_vld;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_ready;
wire   [2:0] grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_address0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_ce0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_we0;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_d0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_ready;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_1;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_1_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_6_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_6_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_5_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_5_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_4_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_4_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_3_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_3_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_2_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_2_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_1_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_1_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_7_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_7_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_6_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_6_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_5_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_5_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_4_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_4_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_3_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_3_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_2_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_2_o_ap_vld;
reg   [15:0] temp_5_reg_434;
wire   [0:0] tmp_7_fu_917_p3;
reg   [14:0] retval_0_i51_reg_443;
wire   [0:0] icmp_ln143_fu_1028_p2;
reg    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start_reg;
wire    ap_CS_fsm_state27;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [15:0] ACF_8_loc_fu_210;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [15:0] P_0_fu_314;
reg   [15:0] select_ln191_loc_fu_206;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start_reg;
wire    ap_CS_fsm_state26;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start_reg;
wire   [0:0] icmp_ln211_fu_1862_p2;
wire    ap_CS_fsm_state22;
reg  signed [15:0] P_fu_246;
reg   [15:0] K_fu_274;
reg   [15:0] K_6_fu_298;
reg   [15:0] K_5_fu_294;
reg   [15:0] K_4_fu_290;
reg   [15:0] K_3_fu_286;
reg   [15:0] K_2_fu_282;
reg   [15:0] K_1_fu_278;
reg   [15:0] P_6_fu_270;
reg   [15:0] P_5_fu_266;
reg   [15:0] P_4_fu_262;
reg   [15:0] P_3_fu_258;
reg   [15:0] P_2_fu_254;
reg   [15:0] P_1_fu_250;
wire   [63:0] zext_ln123_fu_598_p1;
wire   [63:0] zext_ln123_3_fu_613_p1;
wire   [63:0] zext_ln122_1_fu_628_p1;
wire   [63:0] zext_ln121_1_fu_633_p1;
reg   [3:0] idx_fu_302;
reg   [63:0] i_fu_306;
wire   [63:0] add_ln195_fu_1879_p2;
reg   [63:0] indvars_iv26_fu_310;
wire   [63:0] add_ln195_2_fu_1885_p2;
wire   [15:0] P_14_fu_1962_p3;
wire    ap_CS_fsm_state25;
reg    bitoff_ce3_local;
reg    bitoff_ce2_local;
reg    bitoff_ce1_local;
reg    bitoff_ce0_local;
reg    LARc_we0_local;
reg    LARc_ce0_local;
wire   [0:0] tmp_fu_540_p3;
wire   [31:0] a_assign_fu_548_p3;
wire   [31:0] a_assign_1_fu_556_p2;
wire   [15:0] tmp_4_fu_566_p4;
wire   [7:0] tmp_5_fu_582_p4;
wire   [7:0] trunc_ln92_fu_562_p1;
wire   [7:0] trunc_ln_fu_603_p4;
wire   [7:0] trunc_ln1_fu_618_p4;
wire   [23:0] tmp_6_fu_644_p4;
wire   [0:0] icmp_ln123_fu_654_p2;
wire   [0:0] xor_ln115_fu_638_p2;
wire   [0:0] icmp_ln123_1_fu_666_p2;
wire   [0:0] and_ln115_1_fu_672_p2;
wire   [0:0] icmp_ln120_fu_576_p2;
wire   [0:0] xor_ln120_fu_684_p2;
wire   [0:0] and_ln115_3_fu_690_p2;
wire   [0:0] icmp_ln121_fu_592_p2;
wire   [4:0] zext_ln123_1_fu_717_p1;
wire   [4:0] add_ln123_fu_721_p2;
wire   [4:0] zext_ln123_4_fu_731_p1;
wire   [4:0] add_ln123_1_fu_735_p2;
wire   [3:0] add_ln122_fu_745_p2;
wire   [3:0] add_ln121_fu_755_p2;
wire   [5:0] temp_fu_773_p4;
wire   [5:0] temp_fu_773_p6;
wire   [5:0] temp_fu_773_p8;
wire  signed [5:0] temp_fu_773_p10;
wire   [5:0] temp_fu_773_p11;
wire   [3:0] temp_fu_773_p12;
wire  signed [15:0] trunc_ln166_fu_913_p0;
wire  signed [15:0] tmp_7_fu_917_p1;
wire  signed [15:0] icmp_ln69_fu_931_p0;
wire   [14:0] trunc_ln166_fu_913_p1;
wire   [0:0] icmp_ln69_fu_931_p2;
wire   [14:0] sub_ln69_fu_937_p2;
wire   [14:0] select_ln69_fu_943_p3;
wire  signed [15:0] icmp_ln200_fu_958_p0;
wire  signed [15:0] sext_ln130_fu_964_p0;
wire  signed [15:0] sext_ln130_1_fu_968_p0;
wire  signed [15:0] sext_ln130_2_fu_972_p0;
wire  signed [15:0] sext_ln130_3_fu_976_p0;
wire  signed [15:0] sext_ln130_4_fu_980_p0;
wire  signed [15:0] sext_ln130_5_fu_984_p0;
wire  signed [15:0] sext_ln130_6_fu_988_p0;
wire  signed [15:0] sext_ln130_7_fu_992_p0;
wire  signed [15:0] sext_ln130_8_fu_996_p0;
wire  signed [15:0] sext_ln130_9_fu_1000_p0;
wire  signed [15:0] sext_ln130_10_fu_1004_p0;
wire  signed [15:0] sext_ln130_11_fu_1008_p0;
wire  signed [15:0] sext_ln130_12_fu_1012_p0;
wire  signed [15:0] sext_ln130_13_fu_1016_p0;
wire  signed [15:0] sext_ln130_14_fu_1020_p0;
wire  signed [15:0] sext_ln130_15_fu_1024_p0;
wire  signed [16:0] L_num_1_fu_1034_p3;
wire   [0:0] icmp_ln151_fu_1046_p2;
wire  signed [17:0] sext_ln129_fu_1042_p1;
wire  signed [17:0] sext_ln130_14_fu_1020_p1;
wire   [17:0] L_num_2_fu_1058_p2;
wire   [17:0] select_ln151_fu_1064_p3;
wire  signed [18:0] sext_ln130_13_fu_1016_p1;
wire   [0:0] icmp_ln202_fu_1105_p2;
wire   [30:0] trunc_ln165_1_fu_1101_p1;
wire   [18:0] select_ln151_2_fu_1125_p3;
wire   [19:0] L_num_5_fu_1131_p3;
wire   [0:0] icmp_ln151_2_fu_1139_p2;
wire   [19:0] L_num_6_fu_1150_p2;
wire   [20:0] L_num_7_fu_1163_p3;
wire   [0:0] icmp_ln151_3_fu_1170_p2;
wire   [20:0] L_num_8_fu_1181_p2;
wire   [20:0] select_ln151_6_fu_1186_p3;
wire   [21:0] select_ln151_8_fu_1217_p3;
wire   [22:0] L_num_11_fu_1223_p3;
wire   [0:0] icmp_ln151_5_fu_1231_p2;
wire   [22:0] L_num_12_fu_1242_p2;
wire   [23:0] L_num_13_fu_1255_p3;
wire   [0:0] icmp_ln151_6_fu_1262_p2;
wire   [23:0] L_num_14_fu_1273_p2;
wire   [23:0] select_ln151_12_fu_1278_p3;
wire   [24:0] select_ln151_14_fu_1309_p3;
wire   [25:0] L_num_17_fu_1315_p3;
wire   [0:0] icmp_ln151_8_fu_1323_p2;
wire   [25:0] L_num_18_fu_1334_p2;
wire   [26:0] L_num_19_fu_1347_p3;
wire   [0:0] icmp_ln151_9_fu_1354_p2;
wire   [26:0] L_num_20_fu_1365_p2;
wire   [27:0] L_num_21_fu_1378_p3;
wire   [0:0] icmp_ln151_10_fu_1385_p2;
wire   [27:0] L_num_22_fu_1396_p2;
wire   [28:0] L_num_23_fu_1409_p3;
wire   [0:0] icmp_ln151_11_fu_1416_p2;
wire   [28:0] L_num_24_fu_1427_p2;
wire   [1:0] div_2_fu_1447_p3;
wire   [1:0] div_1_fu_1440_p3;
wire   [29:0] L_num_25_fu_1461_p3;
wire   [0:0] icmp_ln151_12_fu_1468_p2;
wire   [29:0] L_num_26_fu_1479_p2;
wire   [2:0] div_4_fu_1499_p3;
wire   [2:0] div_3_fu_1492_p3;
wire   [2:0] select_ln151_3_fu_1506_p3;
wire   [3:0] div_6_fu_1521_p3;
wire   [3:0] div_5_fu_1513_p3;
wire   [3:0] select_ln151_5_fu_1529_p3;
wire   [4:0] div_8_fu_1544_p3;
wire   [4:0] div_7_fu_1536_p3;
wire   [4:0] select_ln151_7_fu_1552_p3;
wire   [5:0] div_10_fu_1567_p3;
wire   [5:0] div_9_fu_1559_p3;
wire   [5:0] select_ln151_9_fu_1575_p3;
wire   [6:0] div_12_fu_1590_p3;
wire   [6:0] div_11_fu_1582_p3;
wire   [6:0] select_ln151_11_fu_1598_p3;
wire   [7:0] div_14_fu_1613_p3;
wire   [7:0] div_13_fu_1605_p3;
wire   [7:0] select_ln151_13_fu_1621_p3;
wire   [8:0] div_16_fu_1636_p3;
wire   [8:0] div_15_fu_1628_p3;
wire   [30:0] L_num_27_fu_1651_p3;
wire   [0:0] icmp_ln151_13_fu_1658_p2;
wire   [30:0] L_num_28_fu_1669_p2;
wire   [30:0] select_ln151_26_fu_1674_p3;
wire   [31:0] L_num_29_fu_1682_p3;
wire   [9:0] div_18_fu_1702_p3;
wire   [9:0] div_17_fu_1695_p3;
wire   [9:0] select_ln151_17_fu_1709_p3;
wire   [10:0] div_20_fu_1724_p3;
wire   [10:0] div_19_fu_1716_p3;
wire   [10:0] select_ln151_19_fu_1732_p3;
wire   [11:0] div_22_fu_1747_p3;
wire   [11:0] div_21_fu_1739_p3;
wire   [11:0] select_ln151_21_fu_1755_p3;
wire   [12:0] div_24_fu_1770_p3;
wire   [12:0] div_23_fu_1762_p3;
wire   [12:0] select_ln151_23_fu_1778_p3;
wire   [13:0] div_26_fu_1793_p3;
wire   [13:0] div_25_fu_1785_p3;
wire   [13:0] select_ln151_25_fu_1801_p3;
wire   [0:0] xor_ln151_13_fu_1816_p2;
wire   [14:0] div_28_fu_1821_p3;
wire   [14:0] div_27_fu_1808_p3;
wire  signed [15:0] icmp_ln209_fu_1841_p0;
wire   [15:0] zext_ln207_fu_1837_p1;
wire   [0:0] icmp_ln209_fu_1841_p2;
wire   [15:0] sub_ln210_fu_1846_p2;
wire  signed [30:0] temp_3_fu_1905_p1;
wire   [30:0] grp_fu_1975_p3;
wire  signed [16:0] sext_ln39_fu_1914_p1;
wire   [16:0] sum_fu_1917_p2;
wire   [1:0] tmp_8_fu_1928_p4;
wire   [0:0] icmp_ln40_fu_1922_p2;
wire   [0:0] icmp_ln40_4_fu_1938_p2;
wire   [0:0] or_ln40_fu_1956_p2;
wire   [15:0] select_ln40_fu_1948_p3;
wire   [15:0] trunc_ln40_fu_1944_p1;
wire   [14:0] grp_fu_1975_p2;
wire    ap_CS_fsm_state23;
reg    grp_fu_1975_ce;
reg   [26:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
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
reg    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
reg    ap_ST_fsm_state27_blk;
wire  signed [3:0] temp_fu_773_p1;
wire   [3:0] temp_fu_773_p3;
wire   [3:0] temp_fu_773_p5;
wire   [3:0] temp_fu_773_p7;
wire   [3:0] temp_fu_773_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 27'd1;
#0 grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start_reg = 1'b0;
#0 P_0_fu_314 = 16'd0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start_reg = 1'b0;
#0 P_fu_246 = 16'd0;
#0 K_fu_274 = 16'd0;
#0 K_6_fu_298 = 16'd0;
#0 K_5_fu_294 = 16'd0;
#0 K_4_fu_290 = 16'd0;
#0 K_3_fu_286 = 16'd0;
#0 K_2_fu_282 = 16'd0;
#0 K_1_fu_278 = 16'd0;
#0 P_6_fu_270 = 16'd0;
#0 P_5_fu_266 = 16'd0;
#0 P_4_fu_262 = 16'd0;
#0 P_3_fu_258 = 16'd0;
#0 P_2_fu_254 = 16'd0;
#0 P_1_fu_250 = 16'd0;
#0 idx_fu_302 = 4'd0;
#0 i_fu_306 = 64'd0;
#0 indvars_iv26_fu_310 = 64'd0;
end
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1 grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_ready),.LARc_address0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_address0),.LARc_ce0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_ce0),.LARc_we0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_we0),.LARc_d0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_d0));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp1 grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_ready),.L_ACF_8_val(L_ACF_8_val),.empty(empty_reg_2084),.sh_prom_cast_cast(temp_reg_2246),.L_ACF_1_val_cast(L_ACF_1_val),.L_ACF_2_val_cast(L_ACF_2_val),.L_ACF_3_val_cast(L_ACF_3_val),.L_ACF_4_val_cast(L_ACF_4_val),.L_ACF_5_val_cast(L_ACF_5_val),.L_ACF_6_val_cast(L_ACF_6_val),.L_ACF_7_val_cast(L_ACF_7_val),.ACF_17_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_17_out),.ACF_17_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_17_out_ap_vld),.ACF_16_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_16_out),.ACF_16_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_16_out_ap_vld),.ACF_15_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_15_out),.ACF_15_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_15_out_ap_vld),.ACF_14_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_14_out),.ACF_14_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_14_out_ap_vld),.ACF_13_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_13_out),.ACF_13_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_13_out_ap_vld),.ACF_12_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_12_out),.ACF_12_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_12_out_ap_vld),.ACF_11_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_11_out),.ACF_11_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_11_out_ap_vld),.ACF_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_out),.ACF_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_out_ap_vld),.ACF_8_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_8_out),.ACF_8_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_8_out_ap_vld));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp3 grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_ready),.ACF_8_reload(ACF_8_loc_fu_210),.ACF_reload(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_out),.P_9_out(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_P_9_out),.P_9_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_P_9_out_ap_vld),.select_ln191_out(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_select_ln191_out),.select_ln191_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_select_ln191_out_ap_vld));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp5 grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_ready),.empty_34(trunc_ln163_reg_2399),.zext_ln202(select_ln202_reg_2404),.empty(trunc_ln165_reg_2394),.LARc_address0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_address0),.LARc_ce0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_ce0),.LARc_we0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_we0),.LARc_d0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_d0));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp6 grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_ready),.indvars_iv26(indvars_iv26_load_reg_2569),.P_1(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_1),.P_1_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_1_ap_vld),.K_i(K_fu_274),.K_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_o),.K_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_o_ap_vld),.K_6_i(K_6_fu_298),.K_6_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_6_o),.K_6_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_6_o_ap_vld),.K_5_i(K_5_fu_294),.K_5_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_5_o),.K_5_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_5_o_ap_vld),.K_4_i(K_4_fu_290),.K_4_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_4_o),.K_4_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_4_o_ap_vld),.K_3_i(K_3_fu_286),.K_3_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_3_o),.K_3_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_3_o_ap_vld),.K_2_i(K_2_fu_282),.K_2_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_2_o),.K_2_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_2_o_ap_vld),.K_1_i(K_1_fu_278),.K_1_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_1_o),.K_1_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_1_o_ap_vld),.P_7_i(P_6_fu_270),.P_7_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_7_o),.P_7_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_7_o_ap_vld),.P_6_i(P_5_fu_266),.P_6_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_6_o),.P_6_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_6_o_ap_vld),.P_5_i(P_4_fu_262),.P_5_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_5_o),.P_5_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_5_o_ap_vld),.P_4_i(P_3_fu_258),.P_4_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_4_o),.P_4_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_4_o_ap_vld),.P_3_i(P_2_fu_254),.P_3_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_3_o),.P_3_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_3_o_ap_vld),.P_2_i(P_1_fu_250),.P_2_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_2_o),.P_2_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_2_o_ap_vld),.sext_ln60(select_ln209_reg_2561),.select_ln191_reload(select_ln191_loc_fu_206));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_4_6_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 6 ),.CASE1( 4'h4 ),.din1_WIDTH( 6 ),.CASE2( 4'h2 ),.din2_WIDTH( 6 ),.CASE3( 4'h1 ),.din3_WIDTH( 6 ),.CASE4( 4'h0 ),.din4_WIDTH( 6 ),.def_WIDTH( 6 ),.sel_WIDTH( 4 ),.dout_WIDTH( 6 ))
sparsemux_11_4_6_1_1_U955(.din0(6'd0),.din1(temp_fu_773_p4),.din2(temp_fu_773_p6),.din3(temp_fu_773_p8),.din4(temp_fu_773_p10),.def(temp_fu_773_p11),.sel(temp_fu_773_p12),.dout(temp_fu_773_p13));
Gsm_LPC_Analysis_mac_muladd_16s_16s_15ns_31_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 15 ),.dout_WIDTH( 31 ))
mac_muladd_16s_16s_15ns_31_4_1_U956(.clk(ap_clk),.reset(ap_rst),.din0(select_ln209_fu_1852_p3),.din1(P_fu_246),.din2(grp_fu_1975_p2),.ce(grp_fu_1975_ce),.dout(grp_fu_1975_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln200_fu_958_p2 == 1'd1))) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln174_reg_2174 == 1'd0) & (icmp_ln211_fu_1862_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (icmp_ln200_reg_2284 == 1'd0))) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln174_fu_528_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_1_fu_278 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_12_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        K_1_fu_278 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_1_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_2_fu_282 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_13_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        K_2_fu_282 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_2_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_3_fu_286 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_14_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_3_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        K_3_fu_286 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_3_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_4_fu_290 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_15_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_4_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        K_4_fu_290 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_4_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_5_fu_294 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_16_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_5_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        K_5_fu_294 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_5_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_6_fu_298 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_17_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_6_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        K_6_fu_298 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_6_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_fu_274 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_11_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        K_fu_274 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_K_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        P_0_fu_314 <= P_14_fu_1962_p3;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_P_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        P_0_fu_314 <= grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_P_9_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_1_fu_250 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_12_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        P_1_fu_250 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_2_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_2_fu_254 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_13_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_3_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        P_2_fu_254 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_3_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_3_fu_258 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_14_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_4_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        P_3_fu_258 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_4_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_4_fu_262 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_15_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_5_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        P_4_fu_262 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_5_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_5_fu_266 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_16_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_6_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        P_5_fu_266 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_6_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_6_fu_270 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_17_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_7_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        P_6_fu_270 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_7_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_fu_246 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_11_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        P_fu_246 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_P_1;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln174_fu_528_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_306 <= 64'd1;
    end else if (((icmp_ln174_reg_2174 == 1'd0) & (icmp_ln211_fu_1862_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (icmp_ln200_reg_2284 == 1'd0))) begin
        i_fu_306 <= add_ln195_fu_1879_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln174_fu_528_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        idx_fu_302 <= 4'd0;
    end else if (((icmp_ln174_reg_2174 == 1'd0) & (icmp_ln211_fu_1862_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (icmp_ln200_reg_2284 == 1'd0))) begin
        idx_fu_302 <= add_ln195_1_reg_2274;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln174_fu_528_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvars_iv26_fu_310 <= 64'd8;
    end else if (((icmp_ln174_reg_2174 == 1'd0) & (icmp_ln211_fu_1862_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (icmp_ln200_reg_2284 == 1'd0))) begin
        indvars_iv26_fu_310 <= add_ln195_2_fu_1885_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln143_fu_1028_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln200_fu_958_p2 == 1'd0))) begin
        retval_0_i51_reg_443 <= 15'd0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        retval_0_i51_reg_443 <= div_29_fu_1829_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((tmp_7_fu_917_p3 == 1'd0)) begin
            temp_5_reg_434 <= P_fu_246;
        end else if ((tmp_7_fu_917_p3 == 1'd1)) begin
            temp_5_reg_434 <= zext_ln69_fu_951_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ACF_8_loc_fu_210 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ACF_8_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        L_num_10_reg_2439 <= L_num_10_fu_1207_p2;
        L_num_9_reg_2429[21 : 1] <= L_num_9_fu_1194_p3[21 : 1];
        icmp_ln151_4_reg_2434 <= icmp_ln151_4_fu_1202_p2;
        xor_ln151_2_reg_2424 <= xor_ln151_2_fu_1175_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        L_num_15_reg_2464[24 : 1] <= L_num_15_fu_1286_p3[24 : 1];
        L_num_16_reg_2474 <= L_num_16_fu_1299_p2;
        icmp_ln151_7_reg_2469 <= icmp_ln151_7_fu_1294_p2;
        xor_ln151_5_reg_2459 <= xor_ln151_5_fu_1267_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        L_num_3_reg_2379[18 : 1] <= L_num_3_fu_1072_p3[18 : 1];
        L_num_4_reg_2389 <= L_num_4_fu_1086_p2;
        div_reg_2373 <= div_fu_1052_p2;
        icmp_ln151_1_reg_2384 <= icmp_ln151_1_fu_1080_p2;
        icmp_ln200_reg_2284 <= icmp_ln200_fu_958_p2;
        select_ln202_reg_2404 <= select_ln202_fu_1111_p3;
        sext_ln130_10_reg_2347 <= sext_ln130_10_fu_1004_p1;
        sext_ln130_11_reg_2353 <= sext_ln130_11_fu_1008_p1;
        sext_ln130_12_reg_2359 <= sext_ln130_12_fu_1012_p1;
        sext_ln130_15_reg_2365 <= sext_ln130_15_fu_1024_p1;
        sext_ln130_1_reg_2293 <= sext_ln130_1_fu_968_p1;
        sext_ln130_2_reg_2299 <= sext_ln130_2_fu_972_p1;
        sext_ln130_3_reg_2305 <= sext_ln130_3_fu_976_p1;
        sext_ln130_4_reg_2311 <= sext_ln130_4_fu_980_p1;
        sext_ln130_5_reg_2317 <= sext_ln130_5_fu_984_p1;
        sext_ln130_6_reg_2323 <= sext_ln130_6_fu_988_p1;
        sext_ln130_7_reg_2329 <= sext_ln130_7_fu_992_p1;
        sext_ln130_8_reg_2335 <= sext_ln130_8_fu_996_p1;
        sext_ln130_9_reg_2341 <= sext_ln130_9_fu_1000_p1;
        sext_ln130_reg_2288 <= sext_ln130_fu_964_p1;
        trunc_ln163_reg_2399 <= trunc_ln163_fu_1096_p1;
        trunc_ln165_reg_2394 <= trunc_ln165_fu_1092_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln195_1_reg_2274 <= add_ln195_1_fu_925_p2;
        zext_ln165_reg_2263[3 : 0] <= zext_ln165_fu_906_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        and_ln115_2_reg_2236 <= and_ln115_2_fu_678_p2;
        and_ln115_4_reg_2241 <= and_ln115_4_fu_696_p2;
        and_ln115_reg_2231 <= and_ln115_fu_660_p2;
        empty_reg_2084 <= empty_fu_524_p1;
        icmp_ln115_reg_2206 <= icmp_ln115_fu_534_p2;
        icmp_ln174_reg_2174 <= icmp_ln174_fu_528_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        icmp_ln151_14_reg_2551 <= icmp_ln151_14_fu_1690_p2;
        select_ln151_15_reg_2540 <= select_ln151_15_fu_1644_p3;
        xor_ln151_12_reg_2546 <= xor_ln151_12_fu_1663_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        indvars_iv26_load_reg_2569 <= indvars_iv26_fu_310;
        select_ln209_reg_2561 <= select_ln209_fu_1852_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        select_ln151_10_reg_2454 <= select_ln151_10_fu_1247_p3;
        xor_ln151_3_reg_2444 <= xor_ln151_3_fu_1212_p2;
        xor_ln151_4_reg_2449 <= xor_ln151_4_fu_1236_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        select_ln151_16_reg_2489 <= select_ln151_16_fu_1339_p3;
        xor_ln151_6_reg_2479 <= xor_ln151_6_fu_1304_p2;
        xor_ln151_7_reg_2484 <= xor_ln151_7_fu_1328_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        select_ln151_18_reg_2499 <= select_ln151_18_fu_1370_p3;
        xor_ln151_8_reg_2494 <= xor_ln151_8_fu_1359_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        select_ln151_1_reg_2524 <= select_ln151_1_fu_1454_p3;
        select_ln151_24_reg_2535 <= select_ln151_24_fu_1484_p3;
        xor_ln151_11_reg_2530 <= xor_ln151_11_fu_1473_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        select_ln151_20_reg_2509 <= select_ln151_20_fu_1401_p3;
        xor_ln151_9_reg_2504 <= xor_ln151_9_fu_1390_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        select_ln151_22_reg_2519 <= select_ln151_22_fu_1432_p3;
        xor_ln151_10_reg_2514 <= xor_ln151_10_fu_1421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        select_ln151_4_reg_2419 <= select_ln151_4_fu_1155_p3;
        xor_ln151_1_reg_2414 <= xor_ln151_1_fu_1144_p2;
        xor_ln151_reg_2409 <= xor_ln151_fu_1120_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_select_ln191_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        select_ln191_loc_fu_206 <= grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_select_ln191_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        temp_3_reg_2584 <= {{temp_3_fu_1905_p1[30:15]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        temp_reg_2246 <= temp_fu_773_p13;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        LARc_address0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_address0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        LARc_address0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_address0;
    end else begin
        LARc_address0 = zext_ln165_reg_2263;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        LARc_ce0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_ce0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        LARc_ce0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_ce0;
    end else begin
        LARc_ce0 = LARc_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        LARc_ce0_local = 1'b1;
    end else begin
        LARc_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        LARc_d0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_d0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        LARc_d0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_d0;
    end else begin
        LARc_d0 = select_ln209_fu_1852_p3;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        LARc_we0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_LARc_we0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        LARc_we0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_LARc_we0;
    end else begin
        LARc_we0 = LARc_we0_local;
    end
end
always @ (*) begin
    if (((icmp_ln174_reg_2174 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (icmp_ln200_reg_2284 == 1'd0))) begin
        LARc_we0_local = 1'b1;
    end else begin
        LARc_we0_local = 1'b0;
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
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_done == 1'b0)) begin
        ap_ST_fsm_state27_blk = 1'b1;
    end else begin
        ap_ST_fsm_state27_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state21) & ((icmp_ln174_reg_2174 == 1'd1) | ((icmp_ln211_fu_1862_p2 == 1'd1) | (icmp_ln200_reg_2284 == 1'd1)))))) begin
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
    if (((1'b1 == ap_CS_fsm_state21) & ((icmp_ln174_reg_2174 == 1'd1) | ((icmp_ln211_fu_1862_p2 == 1'd1) | (icmp_ln200_reg_2284 == 1'd1))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce0_local = 1'b1;
    end else begin
        bitoff_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce1_local = 1'b1;
    end else begin
        bitoff_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce2_local = 1'b1;
    end else begin
        bitoff_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce3_local = 1'b1;
    end else begin
        bitoff_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23) | ((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1975_ce = 1'b1;
    end else begin
        grp_fu_1975_ce = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln174_fu_528_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else if (((icmp_ln174_fu_528_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((icmp_ln143_fu_1028_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln200_fu_958_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else if (((icmp_ln143_fu_1028_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln200_fu_958_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
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
            if (((1'b1 == ap_CS_fsm_state21) & ((icmp_ln174_reg_2174 == 1'd1) | ((icmp_ln211_fu_1862_p2 == 1'd1) | (icmp_ln200_reg_2284 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state22 : begin
            if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state26 : begin
            if (((grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state27 : begin
            if (((grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state27))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign L_num_10_fu_1207_p2 = ($signed(L_num_9_fu_1194_p3) - $signed(sext_ln130_10_reg_2347));
assign L_num_11_fu_1223_p3 = {{select_ln151_8_fu_1217_p3}, {1'd0}};
assign L_num_12_fu_1242_p2 = ($signed(L_num_11_fu_1223_p3) - $signed(sext_ln130_9_reg_2341));
assign L_num_13_fu_1255_p3 = {{select_ln151_10_reg_2454}, {1'd0}};
assign L_num_14_fu_1273_p2 = ($signed(L_num_13_fu_1255_p3) - $signed(sext_ln130_8_reg_2335));
assign L_num_15_fu_1286_p3 = {{select_ln151_12_fu_1278_p3}, {1'd0}};
assign L_num_16_fu_1299_p2 = ($signed(L_num_15_fu_1286_p3) - $signed(sext_ln130_7_reg_2329));
assign L_num_17_fu_1315_p3 = {{select_ln151_14_fu_1309_p3}, {1'd0}};
assign L_num_18_fu_1334_p2 = ($signed(L_num_17_fu_1315_p3) - $signed(sext_ln130_6_reg_2323));
assign L_num_19_fu_1347_p3 = {{select_ln151_16_reg_2489}, {1'd0}};
assign L_num_1_fu_1034_p3 = {{temp_5_reg_434}, {1'd0}};
assign L_num_20_fu_1365_p2 = ($signed(L_num_19_fu_1347_p3) - $signed(sext_ln130_5_reg_2317));
assign L_num_21_fu_1378_p3 = {{select_ln151_18_reg_2499}, {1'd0}};
assign L_num_22_fu_1396_p2 = ($signed(L_num_21_fu_1378_p3) - $signed(sext_ln130_4_reg_2311));
assign L_num_23_fu_1409_p3 = {{select_ln151_20_reg_2509}, {1'd0}};
assign L_num_24_fu_1427_p2 = ($signed(L_num_23_fu_1409_p3) - $signed(sext_ln130_3_reg_2305));
assign L_num_25_fu_1461_p3 = {{select_ln151_22_reg_2519}, {1'd0}};
assign L_num_26_fu_1479_p2 = ($signed(L_num_25_fu_1461_p3) - $signed(sext_ln130_2_reg_2299));
assign L_num_27_fu_1651_p3 = {{select_ln151_24_reg_2535}, {1'd0}};
assign L_num_28_fu_1669_p2 = ($signed(L_num_27_fu_1651_p3) - $signed(sext_ln130_1_reg_2293));
assign L_num_29_fu_1682_p3 = {{select_ln151_26_fu_1674_p3}, {1'd0}};
assign L_num_2_fu_1058_p2 = ($signed(sext_ln129_fu_1042_p1) - $signed(sext_ln130_14_fu_1020_p1));
assign L_num_3_fu_1072_p3 = {{select_ln151_fu_1064_p3}, {1'd0}};
assign L_num_4_fu_1086_p2 = ($signed(L_num_3_fu_1072_p3) - $signed(sext_ln130_13_fu_1016_p1));
assign L_num_5_fu_1131_p3 = {{select_ln151_2_fu_1125_p3}, {1'd0}};
assign L_num_6_fu_1150_p2 = ($signed(L_num_5_fu_1131_p3) - $signed(sext_ln130_12_reg_2359));
assign L_num_7_fu_1163_p3 = {{select_ln151_4_reg_2419}, {1'd0}};
assign L_num_8_fu_1181_p2 = ($signed(L_num_7_fu_1163_p3) - $signed(sext_ln130_11_reg_2353));
assign L_num_9_fu_1194_p3 = {{select_ln151_6_fu_1186_p3}, {1'd0}};
assign P_14_fu_1962_p3 = ((or_ln40_fu_1956_p2[0:0] == 1'b1) ? select_ln40_fu_1948_p3 : trunc_ln40_fu_1944_p1);
assign a_assign_1_fu_556_p2 = (empty_fu_524_p1 ^ a_assign_fu_548_p3);
assign a_assign_fu_548_p3 = ((tmp_fu_540_p3[0:0] == 1'b1) ? 32'd4294967295 : 32'd0);
assign add_ln121_fu_755_p2 = ($signed(bitoff_q0) + $signed(4'd15));
assign add_ln122_fu_745_p2 = (bitoff_q1 + 4'd7);
assign add_ln123_1_fu_735_p2 = (zext_ln123_4_fu_731_p1 + 5'd15);
assign add_ln123_fu_721_p2 = ($signed(zext_ln123_1_fu_717_p1) + $signed(5'd23));
assign add_ln195_1_fu_925_p2 = (idx_fu_302 + 4'd1);
assign add_ln195_2_fu_1885_p2 = ($signed(indvars_iv26_fu_310) + $signed(64'd18446744073709551615));
assign add_ln195_fu_1879_p2 = (i_fu_306 + 64'd1);
assign and_ln115_1_fu_672_p2 = (xor_ln115_fu_638_p2 & icmp_ln123_1_fu_666_p2);
assign and_ln115_2_fu_678_p2 = (icmp_ln120_fu_576_p2 & and_ln115_1_fu_672_p2);
assign and_ln115_3_fu_690_p2 = (xor_ln120_fu_684_p2 & xor_ln115_fu_638_p2);
assign and_ln115_4_fu_696_p2 = (icmp_ln121_fu_592_p2 & and_ln115_3_fu_690_p2);
assign and_ln115_fu_660_p2 = (xor_ln115_fu_638_p2 & icmp_ln123_fu_654_p2);
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitoff_address0 = zext_ln121_1_fu_633_p1;
assign bitoff_address1 = zext_ln122_1_fu_628_p1;
assign bitoff_address2 = zext_ln123_3_fu_613_p1;
assign bitoff_address3 = zext_ln123_fu_598_p1;
assign bitoff_ce0 = bitoff_ce0_local;
assign bitoff_ce1 = bitoff_ce1_local;
assign bitoff_ce2 = bitoff_ce2_local;
assign bitoff_ce3 = bitoff_ce3_local;
assign div_10_fu_1567_p3 = {{select_ln151_7_fu_1552_p3}, {1'd1}};
assign div_11_fu_1582_p3 = {{select_ln151_9_fu_1575_p3}, {1'd0}};
assign div_12_fu_1590_p3 = {{select_ln151_9_fu_1575_p3}, {1'd1}};
assign div_13_fu_1605_p3 = {{select_ln151_11_fu_1598_p3}, {1'd0}};
assign div_14_fu_1613_p3 = {{select_ln151_11_fu_1598_p3}, {1'd1}};
assign div_15_fu_1628_p3 = {{select_ln151_13_fu_1621_p3}, {1'd0}};
assign div_16_fu_1636_p3 = {{select_ln151_13_fu_1621_p3}, {1'd1}};
assign div_17_fu_1695_p3 = {{select_ln151_15_reg_2540}, {1'd0}};
assign div_18_fu_1702_p3 = {{select_ln151_15_reg_2540}, {1'd1}};
assign div_19_fu_1716_p3 = {{select_ln151_17_fu_1709_p3}, {1'd0}};
assign div_1_fu_1440_p3 = {{div_reg_2373}, {1'd0}};
assign div_20_fu_1724_p3 = {{select_ln151_17_fu_1709_p3}, {1'd1}};
assign div_21_fu_1739_p3 = {{select_ln151_19_fu_1732_p3}, {1'd0}};
assign div_22_fu_1747_p3 = {{select_ln151_19_fu_1732_p3}, {1'd1}};
assign div_23_fu_1762_p3 = {{select_ln151_21_fu_1755_p3}, {1'd0}};
assign div_24_fu_1770_p3 = {{select_ln151_21_fu_1755_p3}, {1'd1}};
assign div_25_fu_1785_p3 = {{select_ln151_23_fu_1778_p3}, {1'd0}};
assign div_26_fu_1793_p3 = {{select_ln151_23_fu_1778_p3}, {1'd1}};
assign div_27_fu_1808_p3 = {{select_ln151_25_fu_1801_p3}, {1'd0}};
assign div_28_fu_1821_p3 = {{select_ln151_25_fu_1801_p3}, {1'd1}};
assign div_29_fu_1829_p3 = ((xor_ln151_13_fu_1816_p2[0:0] == 1'b1) ? div_28_fu_1821_p3 : div_27_fu_1808_p3);
assign div_2_fu_1447_p3 = {{div_reg_2373}, {1'd1}};
assign div_3_fu_1492_p3 = {{select_ln151_1_reg_2524}, {1'd0}};
assign div_4_fu_1499_p3 = {{select_ln151_1_reg_2524}, {1'd1}};
assign div_5_fu_1513_p3 = {{select_ln151_3_fu_1506_p3}, {1'd0}};
assign div_6_fu_1521_p3 = {{select_ln151_3_fu_1506_p3}, {1'd1}};
assign div_7_fu_1536_p3 = {{select_ln151_5_fu_1529_p3}, {1'd0}};
assign div_8_fu_1544_p3 = {{select_ln151_5_fu_1529_p3}, {1'd1}};
assign div_9_fu_1559_p3 = {{select_ln151_7_fu_1552_p3}, {1'd0}};
assign div_fu_1052_p2 = (icmp_ln151_fu_1046_p2 ^ 1'd1);
assign empty_fu_524_p1 = L_ACF_0_val[31:0];
assign grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_460_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_483_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_491_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_500_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_454_ap_start_reg;
assign grp_fu_1975_p2 = 31'd16384;
assign icmp_ln115_fu_534_p2 = (($signed(L_ACF_0_val) < $signed(64'd18446744072635809793)) ? 1'b1 : 1'b0);
assign icmp_ln120_fu_576_p2 = ((tmp_4_fu_566_p4 == 16'd0) ? 1'b1 : 1'b0);
assign icmp_ln121_fu_592_p2 = ((tmp_5_fu_582_p4 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln123_1_fu_666_p2 = ((trunc_ln_fu_603_p4 != 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln123_fu_654_p2 = ((tmp_6_fu_644_p4 == 24'd0) ? 1'b1 : 1'b0);
assign icmp_ln143_fu_1028_p2 = ((temp_5_reg_434 == 16'd0) ? 1'b1 : 1'b0);
assign icmp_ln151_10_fu_1385_p2 = (($signed(L_num_21_fu_1378_p3) < $signed(sext_ln130_4_reg_2311)) ? 1'b1 : 1'b0);
assign icmp_ln151_11_fu_1416_p2 = (($signed(L_num_23_fu_1409_p3) < $signed(sext_ln130_3_reg_2305)) ? 1'b1 : 1'b0);
assign icmp_ln151_12_fu_1468_p2 = (($signed(L_num_25_fu_1461_p3) < $signed(sext_ln130_2_reg_2299)) ? 1'b1 : 1'b0);
assign icmp_ln151_13_fu_1658_p2 = (($signed(L_num_27_fu_1651_p3) < $signed(sext_ln130_1_reg_2293)) ? 1'b1 : 1'b0);
assign icmp_ln151_14_fu_1690_p2 = (($signed(L_num_29_fu_1682_p3) < $signed(sext_ln130_reg_2288)) ? 1'b1 : 1'b0);
assign icmp_ln151_1_fu_1080_p2 = (($signed(L_num_3_fu_1072_p3) < $signed(sext_ln130_13_fu_1016_p1)) ? 1'b1 : 1'b0);
assign icmp_ln151_2_fu_1139_p2 = (($signed(L_num_5_fu_1131_p3) < $signed(sext_ln130_12_reg_2359)) ? 1'b1 : 1'b0);
assign icmp_ln151_3_fu_1170_p2 = (($signed(L_num_7_fu_1163_p3) < $signed(sext_ln130_11_reg_2353)) ? 1'b1 : 1'b0);
assign icmp_ln151_4_fu_1202_p2 = (($signed(L_num_9_fu_1194_p3) < $signed(sext_ln130_10_reg_2347)) ? 1'b1 : 1'b0);
assign icmp_ln151_5_fu_1231_p2 = (($signed(L_num_11_fu_1223_p3) < $signed(sext_ln130_9_reg_2341)) ? 1'b1 : 1'b0);
assign icmp_ln151_6_fu_1262_p2 = (($signed(L_num_13_fu_1255_p3) < $signed(sext_ln130_8_reg_2335)) ? 1'b1 : 1'b0);
assign icmp_ln151_7_fu_1294_p2 = (($signed(L_num_15_fu_1286_p3) < $signed(sext_ln130_7_reg_2329)) ? 1'b1 : 1'b0);
assign icmp_ln151_8_fu_1323_p2 = (($signed(L_num_17_fu_1315_p3) < $signed(sext_ln130_6_reg_2323)) ? 1'b1 : 1'b0);
assign icmp_ln151_9_fu_1354_p2 = (($signed(L_num_19_fu_1347_p3) < $signed(sext_ln130_5_reg_2317)) ? 1'b1 : 1'b0);
assign icmp_ln151_fu_1046_p2 = (($signed(L_num_1_fu_1034_p3) < $signed(sext_ln130_15_fu_1024_p1)) ? 1'b1 : 1'b0);
assign icmp_ln174_fu_528_p2 = ((L_ACF_0_val == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln200_fu_958_p0 = P_0_fu_314;
assign icmp_ln200_fu_958_p2 = (($signed(icmp_ln200_fu_958_p0) < $signed(temp_5_reg_434)) ? 1'b1 : 1'b0);
assign icmp_ln202_fu_1105_p2 = (($signed(trunc_ln163_fu_1096_p1) > $signed(32'd8)) ? 1'b1 : 1'b0);
assign icmp_ln209_fu_1841_p0 = P_fu_246;
assign icmp_ln209_fu_1841_p2 = (($signed(icmp_ln209_fu_1841_p0) > $signed(16'd0)) ? 1'b1 : 1'b0);
assign icmp_ln211_fu_1862_p2 = ((i_fu_306 == 64'd8) ? 1'b1 : 1'b0);
assign icmp_ln40_4_fu_1938_p2 = ((tmp_8_fu_1928_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_1922_p2 = (($signed(sum_fu_1917_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_931_p0 = P_fu_246;
assign icmp_ln69_fu_931_p2 = ((icmp_ln69_fu_931_p0 == 16'd32768) ? 1'b1 : 1'b0);
assign or_ln40_fu_1956_p2 = (icmp_ln40_fu_1922_p2 | icmp_ln40_4_fu_1938_p2);
assign select_ln151_10_fu_1247_p3 = ((xor_ln151_4_fu_1236_p2[0:0] == 1'b1) ? L_num_12_fu_1242_p2 : L_num_11_fu_1223_p3);
assign select_ln151_11_fu_1598_p3 = ((xor_ln151_5_reg_2459[0:0] == 1'b1) ? div_12_fu_1590_p3 : div_11_fu_1582_p3);
assign select_ln151_12_fu_1278_p3 = ((xor_ln151_5_fu_1267_p2[0:0] == 1'b1) ? L_num_14_fu_1273_p2 : L_num_13_fu_1255_p3);
assign select_ln151_13_fu_1621_p3 = ((xor_ln151_6_reg_2479[0:0] == 1'b1) ? div_14_fu_1613_p3 : div_13_fu_1605_p3);
assign select_ln151_14_fu_1309_p3 = ((xor_ln151_6_fu_1304_p2[0:0] == 1'b1) ? L_num_16_reg_2474 : L_num_15_reg_2464);
assign select_ln151_15_fu_1644_p3 = ((xor_ln151_7_reg_2484[0:0] == 1'b1) ? div_16_fu_1636_p3 : div_15_fu_1628_p3);
assign select_ln151_16_fu_1339_p3 = ((xor_ln151_7_fu_1328_p2[0:0] == 1'b1) ? L_num_18_fu_1334_p2 : L_num_17_fu_1315_p3);
assign select_ln151_17_fu_1709_p3 = ((xor_ln151_8_reg_2494[0:0] == 1'b1) ? div_18_fu_1702_p3 : div_17_fu_1695_p3);
assign select_ln151_18_fu_1370_p3 = ((xor_ln151_8_fu_1359_p2[0:0] == 1'b1) ? L_num_20_fu_1365_p2 : L_num_19_fu_1347_p3);
assign select_ln151_19_fu_1732_p3 = ((xor_ln151_9_reg_2504[0:0] == 1'b1) ? div_20_fu_1724_p3 : div_19_fu_1716_p3);
assign select_ln151_1_fu_1454_p3 = ((xor_ln151_reg_2409[0:0] == 1'b1) ? div_2_fu_1447_p3 : div_1_fu_1440_p3);
assign select_ln151_20_fu_1401_p3 = ((xor_ln151_9_fu_1390_p2[0:0] == 1'b1) ? L_num_22_fu_1396_p2 : L_num_21_fu_1378_p3);
assign select_ln151_21_fu_1755_p3 = ((xor_ln151_10_reg_2514[0:0] == 1'b1) ? div_22_fu_1747_p3 : div_21_fu_1739_p3);
assign select_ln151_22_fu_1432_p3 = ((xor_ln151_10_fu_1421_p2[0:0] == 1'b1) ? L_num_24_fu_1427_p2 : L_num_23_fu_1409_p3);
assign select_ln151_23_fu_1778_p3 = ((xor_ln151_11_reg_2530[0:0] == 1'b1) ? div_24_fu_1770_p3 : div_23_fu_1762_p3);
assign select_ln151_24_fu_1484_p3 = ((xor_ln151_11_fu_1473_p2[0:0] == 1'b1) ? L_num_26_fu_1479_p2 : L_num_25_fu_1461_p3);
assign select_ln151_25_fu_1801_p3 = ((xor_ln151_12_reg_2546[0:0] == 1'b1) ? div_26_fu_1793_p3 : div_25_fu_1785_p3);
assign select_ln151_26_fu_1674_p3 = ((xor_ln151_12_fu_1663_p2[0:0] == 1'b1) ? L_num_28_fu_1669_p2 : L_num_27_fu_1651_p3);
assign select_ln151_2_fu_1125_p3 = ((xor_ln151_fu_1120_p2[0:0] == 1'b1) ? L_num_4_reg_2389 : L_num_3_reg_2379);
assign select_ln151_3_fu_1506_p3 = ((xor_ln151_1_reg_2414[0:0] == 1'b1) ? div_4_fu_1499_p3 : div_3_fu_1492_p3);
assign select_ln151_4_fu_1155_p3 = ((xor_ln151_1_fu_1144_p2[0:0] == 1'b1) ? L_num_6_fu_1150_p2 : L_num_5_fu_1131_p3);
assign select_ln151_5_fu_1529_p3 = ((xor_ln151_2_reg_2424[0:0] == 1'b1) ? div_6_fu_1521_p3 : div_5_fu_1513_p3);
assign select_ln151_6_fu_1186_p3 = ((xor_ln151_2_fu_1175_p2[0:0] == 1'b1) ? L_num_8_fu_1181_p2 : L_num_7_fu_1163_p3);
assign select_ln151_7_fu_1552_p3 = ((xor_ln151_3_reg_2444[0:0] == 1'b1) ? div_8_fu_1544_p3 : div_7_fu_1536_p3);
assign select_ln151_8_fu_1217_p3 = ((xor_ln151_3_fu_1212_p2[0:0] == 1'b1) ? L_num_10_reg_2439 : L_num_9_reg_2429);
assign select_ln151_9_fu_1575_p3 = ((xor_ln151_4_reg_2449[0:0] == 1'b1) ? div_10_fu_1567_p3 : div_9_fu_1559_p3);
assign select_ln151_fu_1064_p3 = ((div_fu_1052_p2[0:0] == 1'b1) ? L_num_2_fu_1058_p2 : sext_ln129_fu_1042_p1);
assign select_ln202_fu_1111_p3 = ((icmp_ln202_fu_1105_p2[0:0] == 1'b1) ? trunc_ln165_1_fu_1101_p1 : 31'd8);
assign select_ln209_fu_1852_p3 = ((icmp_ln209_fu_1841_p2[0:0] == 1'b1) ? sub_ln210_fu_1846_p2 : zext_ln207_fu_1837_p1);
assign select_ln40_fu_1948_p3 = ((icmp_ln40_fu_1922_p2[0:0] == 1'b1) ? 16'd32768 : 16'd32767);
assign select_ln69_fu_943_p3 = ((icmp_ln69_fu_931_p2[0:0] == 1'b1) ? 15'd32767 : sub_ln69_fu_937_p2);
assign sext_ln129_fu_1042_p1 = L_num_1_fu_1034_p3;
assign sext_ln130_10_fu_1004_p0 = P_0_fu_314;
assign sext_ln130_10_fu_1004_p1 = sext_ln130_10_fu_1004_p0;
assign sext_ln130_11_fu_1008_p0 = P_0_fu_314;
assign sext_ln130_11_fu_1008_p1 = sext_ln130_11_fu_1008_p0;
assign sext_ln130_12_fu_1012_p0 = P_0_fu_314;
assign sext_ln130_12_fu_1012_p1 = sext_ln130_12_fu_1012_p0;
assign sext_ln130_13_fu_1016_p0 = P_0_fu_314;
assign sext_ln130_13_fu_1016_p1 = sext_ln130_13_fu_1016_p0;
assign sext_ln130_14_fu_1020_p0 = P_0_fu_314;
assign sext_ln130_14_fu_1020_p1 = sext_ln130_14_fu_1020_p0;
assign sext_ln130_15_fu_1024_p0 = P_0_fu_314;
assign sext_ln130_15_fu_1024_p1 = sext_ln130_15_fu_1024_p0;
assign sext_ln130_1_fu_968_p0 = P_0_fu_314;
assign sext_ln130_1_fu_968_p1 = sext_ln130_1_fu_968_p0;
assign sext_ln130_2_fu_972_p0 = P_0_fu_314;
assign sext_ln130_2_fu_972_p1 = sext_ln130_2_fu_972_p0;
assign sext_ln130_3_fu_976_p0 = P_0_fu_314;
assign sext_ln130_3_fu_976_p1 = sext_ln130_3_fu_976_p0;
assign sext_ln130_4_fu_980_p0 = P_0_fu_314;
assign sext_ln130_4_fu_980_p1 = sext_ln130_4_fu_980_p0;
assign sext_ln130_5_fu_984_p0 = P_0_fu_314;
assign sext_ln130_5_fu_984_p1 = sext_ln130_5_fu_984_p0;
assign sext_ln130_6_fu_988_p0 = P_0_fu_314;
assign sext_ln130_6_fu_988_p1 = sext_ln130_6_fu_988_p0;
assign sext_ln130_7_fu_992_p0 = P_0_fu_314;
assign sext_ln130_7_fu_992_p1 = sext_ln130_7_fu_992_p0;
assign sext_ln130_8_fu_996_p0 = P_0_fu_314;
assign sext_ln130_8_fu_996_p1 = sext_ln130_8_fu_996_p0;
assign sext_ln130_9_fu_1000_p0 = P_0_fu_314;
assign sext_ln130_9_fu_1000_p1 = sext_ln130_9_fu_1000_p0;
assign sext_ln130_fu_964_p0 = P_0_fu_314;
assign sext_ln130_fu_964_p1 = sext_ln130_fu_964_p0;
assign sext_ln39_fu_1914_p1 = $signed(temp_3_reg_2584);
assign sub_ln210_fu_1846_p2 = (16'd0 - zext_ln207_fu_1837_p1);
assign sub_ln69_fu_937_p2 = (15'd0 - trunc_ln166_fu_913_p1);
assign sum_fu_1917_p2 = ($signed(sext_ln39_fu_1914_p1) + $signed(sext_ln130_15_reg_2365));
assign temp_3_fu_1905_p1 = grp_fu_1975_p3;
assign temp_fu_773_p10 = $signed(add_ln121_fu_755_p2);
assign temp_fu_773_p11 = 'bx;
assign temp_fu_773_p12 = {{{{icmp_ln115_reg_2206}, {and_ln115_reg_2231}}, {and_ln115_2_reg_2236}}, {and_ln115_4_reg_2241}};
assign temp_fu_773_p4 = add_ln123_fu_721_p2;
assign temp_fu_773_p6 = add_ln123_1_fu_735_p2;
assign temp_fu_773_p8 = add_ln122_fu_745_p2;
assign tmp_4_fu_566_p4 = {{a_assign_1_fu_556_p2[31:16]}};
assign tmp_5_fu_582_p4 = {{a_assign_1_fu_556_p2[31:24]}};
assign tmp_6_fu_644_p4 = {{a_assign_1_fu_556_p2[31:8]}};
assign tmp_7_fu_917_p1 = P_fu_246;
assign tmp_7_fu_917_p3 = tmp_7_fu_917_p1[32'd15];
assign tmp_8_fu_1928_p4 = {{sum_fu_1917_p2[16:15]}};
assign tmp_fu_540_p3 = L_ACF_0_val[32'd63];
assign trunc_ln163_fu_1096_p1 = i_fu_306[31:0];
assign trunc_ln165_1_fu_1101_p1 = i_fu_306[30:0];
assign trunc_ln165_fu_1092_p1 = idx_fu_302[2:0];
assign trunc_ln166_fu_913_p0 = P_fu_246;
assign trunc_ln166_fu_913_p1 = trunc_ln166_fu_913_p0[14:0];
assign trunc_ln1_fu_618_p4 = {{a_assign_1_fu_556_p2[23:16]}};
assign trunc_ln40_fu_1944_p1 = sum_fu_1917_p2[15:0];
assign trunc_ln92_fu_562_p1 = a_assign_1_fu_556_p2[7:0];
assign trunc_ln_fu_603_p4 = {{a_assign_1_fu_556_p2[15:8]}};
assign xor_ln115_fu_638_p2 = (icmp_ln115_fu_534_p2 ^ 1'd1);
assign xor_ln120_fu_684_p2 = (icmp_ln120_fu_576_p2 ^ 1'd1);
assign xor_ln151_10_fu_1421_p2 = (icmp_ln151_11_fu_1416_p2 ^ 1'd1);
assign xor_ln151_11_fu_1473_p2 = (icmp_ln151_12_fu_1468_p2 ^ 1'd1);
assign xor_ln151_12_fu_1663_p2 = (icmp_ln151_13_fu_1658_p2 ^ 1'd1);
assign xor_ln151_13_fu_1816_p2 = (icmp_ln151_14_reg_2551 ^ 1'd1);
assign xor_ln151_1_fu_1144_p2 = (icmp_ln151_2_fu_1139_p2 ^ 1'd1);
assign xor_ln151_2_fu_1175_p2 = (icmp_ln151_3_fu_1170_p2 ^ 1'd1);
assign xor_ln151_3_fu_1212_p2 = (icmp_ln151_4_reg_2434 ^ 1'd1);
assign xor_ln151_4_fu_1236_p2 = (icmp_ln151_5_fu_1231_p2 ^ 1'd1);
assign xor_ln151_5_fu_1267_p2 = (icmp_ln151_6_fu_1262_p2 ^ 1'd1);
assign xor_ln151_6_fu_1304_p2 = (icmp_ln151_7_reg_2469 ^ 1'd1);
assign xor_ln151_7_fu_1328_p2 = (icmp_ln151_8_fu_1323_p2 ^ 1'd1);
assign xor_ln151_8_fu_1359_p2 = (icmp_ln151_9_fu_1354_p2 ^ 1'd1);
assign xor_ln151_9_fu_1390_p2 = (icmp_ln151_10_fu_1385_p2 ^ 1'd1);
assign xor_ln151_fu_1120_p2 = (icmp_ln151_1_reg_2384 ^ 1'd1);
assign zext_ln121_1_fu_633_p1 = tmp_5_fu_582_p4;
assign zext_ln122_1_fu_628_p1 = trunc_ln1_fu_618_p4;
assign zext_ln123_1_fu_717_p1 = bitoff_q3;
assign zext_ln123_3_fu_613_p1 = trunc_ln_fu_603_p4;
assign zext_ln123_4_fu_731_p1 = bitoff_q2;
assign zext_ln123_fu_598_p1 = trunc_ln92_fu_562_p1;
assign zext_ln165_fu_906_p1 = idx_fu_302;
assign zext_ln207_fu_1837_p1 = retval_0_i51_reg_443;
assign zext_ln69_fu_951_p1 = select_ln69_fu_943_p3;
always @ (posedge ap_clk) begin
    zext_ln165_reg_2263[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    L_num_3_reg_2379[0] <= 1'b0;
    L_num_9_reg_2429[0] <= 1'b0;
    L_num_15_reg_2464[0] <= 1'b0;
end
endmodule 
