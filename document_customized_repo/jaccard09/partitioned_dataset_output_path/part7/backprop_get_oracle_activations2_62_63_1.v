
module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,grp_fu_2832_p_din0,grp_fu_2832_p_din1,grp_fu_2832_p_opcode,grp_fu_2832_p_dout0,grp_fu_2832_p_ce,grp_fu_2836_p_din0,grp_fu_2836_p_din1,grp_fu_2836_p_opcode,grp_fu_2836_p_dout0,grp_fu_2836_p_ce,grp_fu_2840_p_din0,grp_fu_2840_p_din1,grp_fu_2840_p_opcode,grp_fu_2840_p_dout0,grp_fu_2840_p_ce,grp_fu_2844_p_din0,grp_fu_2844_p_din1,grp_fu_2844_p_opcode,grp_fu_2844_p_dout0,grp_fu_2844_p_ce,grp_fu_2872_p_din0,grp_fu_2872_p_din1,grp_fu_2872_p_dout0,grp_fu_2872_p_ce,grp_fu_2876_p_din0,grp_fu_2876_p_din1,grp_fu_2876_p_dout0,grp_fu_2876_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [4:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [4:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [4:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [4:0] dactivations_0_address1;
output   dactivations_0_ce1;
input  [63:0] dactivations_0_q1;
output  [4:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [4:0] dactivations_1_address1;
output   dactivations_1_ce1;
input  [63:0] dactivations_1_q1;
output  [63:0] grp_fu_2832_p_din0;
output  [63:0] grp_fu_2832_p_din1;
output  [0:0] grp_fu_2832_p_opcode;
input  [63:0] grp_fu_2832_p_dout0;
output   grp_fu_2832_p_ce;
output  [63:0] grp_fu_2836_p_din0;
output  [63:0] grp_fu_2836_p_din1;
output  [0:0] grp_fu_2836_p_opcode;
input  [63:0] grp_fu_2836_p_dout0;
output   grp_fu_2836_p_ce;
output  [63:0] grp_fu_2840_p_din0;
output  [63:0] grp_fu_2840_p_din1;
output  [0:0] grp_fu_2840_p_opcode;
input  [63:0] grp_fu_2840_p_dout0;
output   grp_fu_2840_p_ce;
output  [63:0] grp_fu_2844_p_din0;
output  [63:0] grp_fu_2844_p_din1;
output  [0:0] grp_fu_2844_p_opcode;
input  [63:0] grp_fu_2844_p_dout0;
output   grp_fu_2844_p_ce;
output  [63:0] grp_fu_2872_p_din0;
output  [63:0] grp_fu_2872_p_din1;
input  [63:0] grp_fu_2872_p_dout0;
output   grp_fu_2872_p_ce;
output  [63:0] grp_fu_2876_p_din0;
output  [63:0] grp_fu_2876_p_din1;
input  [63:0] grp_fu_2876_p_dout0;
output   grp_fu_2876_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] tmp_15_reg_2061;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_914;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_918;
reg   [63:0] reg_922;
reg   [63:0] reg_926;
wire   [63:0] grp_fu_906_p2;
reg   [63:0] reg_930;
wire   [63:0] grp_fu_910_p2;
reg   [63:0] reg_935;
reg   [6:0] i_10_reg_2051;
wire   [63:0] zext_ln81_fu_970_p1;
reg   [63:0] zext_ln81_reg_2065;
reg   [63:0] zext_ln81_reg_2065_pp0_iter1_reg;
reg   [63:0] zext_ln81_reg_2065_pp0_iter2_reg;
reg   [63:0] zext_ln81_reg_2065_pp0_iter3_reg;
reg   [5:0] tmp_reg_2081;
wire   [7:0] empty_fu_1036_p2;
reg   [7:0] empty_reg_2091;
wire   [6:0] lshr_ln1_fu_1042_p4;
reg   [6:0] lshr_ln1_reg_2110;
wire   [63:0] zext_ln83_1_fu_1075_p1;
reg   [63:0] zext_ln83_1_reg_2120;
reg   [63:0] zext_ln83_1_reg_2120_pp0_iter1_reg;
reg   [63:0] zext_ln83_1_reg_2120_pp0_iter2_reg;
reg   [63:0] zext_ln83_1_reg_2120_pp0_iter3_reg;
wire   [6:0] or_ln85_1_fu_1091_p3;
reg   [6:0] or_ln85_1_reg_2126;
wire   [63:0] zext_ln85_4_fu_1099_p1;
reg   [63:0] zext_ln85_4_reg_2142;
reg   [3:0] tmp_39_reg_2157;
reg   [63:0] dactivations_0_load_reg_2172;
reg   [63:0] dactivations_0_load_reg_2172_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_reg_2172_pp0_iter2_reg;
wire   [6:0] lshr_ln85_2_fu_1119_p4;
reg   [6:0] lshr_ln85_2_reg_2177;
wire   [0:0] tmp_17_fu_1143_p3;
reg   [0:0] tmp_17_reg_2182;
wire   [63:0] zext_ln83_2_fu_1160_p1;
reg   [63:0] zext_ln83_2_reg_2187;
reg   [63:0] zext_ln83_2_reg_2187_pp0_iter1_reg;
reg   [63:0] zext_ln83_2_reg_2187_pp0_iter2_reg;
reg   [63:0] zext_ln83_2_reg_2187_pp0_iter3_reg;
wire   [63:0] zext_ln85_7_fu_1171_p1;
reg   [63:0] zext_ln85_7_reg_2193;
wire   [6:0] lshr_ln85_4_fu_1181_p4;
reg   [6:0] lshr_ln85_4_reg_2203;
wire   [63:0] zext_ln83_3_fu_1204_p1;
reg   [63:0] zext_ln83_3_reg_2213;
reg   [63:0] zext_ln83_3_reg_2213_pp0_iter1_reg;
reg   [63:0] zext_ln83_3_reg_2213_pp0_iter2_reg;
reg   [63:0] zext_ln83_3_reg_2213_pp0_iter3_reg;
wire   [63:0] zext_ln85_10_fu_1215_p1;
reg   [63:0] zext_ln85_10_reg_2219;
reg   [63:0] dactivations_1_load_reg_2254;
reg   [63:0] dactivations_1_load_reg_2254_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_reg_2254_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_1_reg_2259;
reg   [63:0] dactivations_0_load_1_reg_2259_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_1_reg_2259_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_1_reg_2264;
reg   [63:0] dactivations_1_load_1_reg_2264_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_1_reg_2264_pp0_iter2_reg;
wire   [63:0] bitcast_ln85_fu_1220_p1;
wire   [63:0] bitcast_ln85_1_fu_1225_p1;
wire   [6:0] lshr_ln85_6_fu_1235_p4;
reg   [6:0] lshr_ln85_6_reg_2279;
wire   [1:0] tmp_40_fu_1250_p4;
reg   [1:0] tmp_40_reg_2284;
wire   [63:0] zext_ln83_4_fu_1278_p1;
reg   [63:0] zext_ln83_4_reg_2290;
reg   [63:0] zext_ln83_4_reg_2290_pp0_iter1_reg;
reg   [63:0] zext_ln83_4_reg_2290_pp0_iter2_reg;
reg   [63:0] zext_ln83_4_reg_2290_pp0_iter3_reg;
wire   [63:0] zext_ln85_13_fu_1289_p1;
reg   [63:0] zext_ln85_13_reg_2296;
wire   [6:0] lshr_ln85_8_fu_1299_p4;
reg   [6:0] lshr_ln85_8_reg_2306;
wire   [63:0] zext_ln83_5_fu_1333_p1;
reg   [63:0] zext_ln83_5_reg_2316;
reg   [63:0] zext_ln83_5_reg_2316_pp0_iter1_reg;
reg   [63:0] zext_ln83_5_reg_2316_pp0_iter2_reg;
reg   [63:0] zext_ln83_5_reg_2316_pp0_iter3_reg;
wire   [63:0] zext_ln85_16_fu_1344_p1;
reg   [63:0] zext_ln85_16_reg_2322;
wire   [63:0] bitcast_ln85_3_fu_1349_p1;
wire   [63:0] bitcast_ln85_6_fu_1354_p1;
reg   [63:0] dactivations_0_load_2_reg_2367;
reg   [63:0] dactivations_0_load_2_reg_2367_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_2_reg_2367_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_2_reg_2372;
reg   [63:0] dactivations_1_load_2_reg_2372_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_2_reg_2372_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_3_reg_2377;
reg   [63:0] dactivations_0_load_3_reg_2377_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_3_reg_2377_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_3_reg_2382;
reg   [63:0] dactivations_1_load_3_reg_2382_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_3_reg_2382_pp0_iter2_reg;
wire   [6:0] lshr_ln85_s_fu_1364_p4;
reg   [6:0] lshr_ln85_s_reg_2387;
wire   [63:0] zext_ln83_6_fu_1387_p1;
reg   [63:0] zext_ln83_6_reg_2392;
reg   [63:0] zext_ln83_6_reg_2392_pp0_iter1_reg;
reg   [63:0] zext_ln83_6_reg_2392_pp0_iter2_reg;
reg   [63:0] zext_ln83_6_reg_2392_pp0_iter3_reg;
wire   [63:0] zext_ln85_19_fu_1398_p1;
reg   [63:0] zext_ln85_19_reg_2398;
wire   [6:0] lshr_ln85_11_fu_1408_p4;
reg   [6:0] lshr_ln85_11_reg_2408;
wire   [63:0] zext_ln83_7_fu_1430_p1;
reg   [63:0] zext_ln83_7_reg_2418;
reg   [63:0] zext_ln83_7_reg_2418_pp0_iter1_reg;
reg   [63:0] zext_ln83_7_reg_2418_pp0_iter2_reg;
reg   [63:0] zext_ln83_7_reg_2418_pp0_iter3_reg;
wire   [63:0] zext_ln85_22_fu_1441_p1;
reg   [63:0] zext_ln85_22_reg_2424;
wire   [63:0] bitcast_ln85_9_fu_1446_p1;
wire   [63:0] bitcast_ln85_12_fu_1451_p1;
wire   [63:0] bitcast_ln85_15_fu_1456_p1;
wire   [63:0] bitcast_ln85_18_fu_1461_p1;
reg   [63:0] dactivations_0_load_4_reg_2479;
reg   [63:0] dactivations_0_load_4_reg_2479_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_4_reg_2479_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_4_reg_2484;
reg   [63:0] dactivations_1_load_4_reg_2484_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_4_reg_2484_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_5_reg_2489;
reg   [63:0] dactivations_0_load_5_reg_2489_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_5_reg_2489_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_5_reg_2494;
reg   [63:0] dactivations_1_load_5_reg_2494_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_5_reg_2494_pp0_iter2_reg;
wire   [6:0] lshr_ln85_13_fu_1511_p4;
reg   [6:0] lshr_ln85_13_reg_2499;
wire   [63:0] bitcast_ln85_21_fu_1526_p1;
wire   [63:0] bitcast_ln85_24_fu_1531_p1;
wire   [63:0] bitcast_ln85_27_fu_1536_p1;
wire   [63:0] bitcast_ln85_30_fu_1541_p1;
reg   [63:0] dactivations_0_load_6_reg_2544;
reg   [63:0] dactivations_0_load_6_reg_2544_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_6_reg_2544_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_6_reg_2549;
reg   [63:0] dactivations_1_load_6_reg_2549_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_6_reg_2549_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_7_reg_2554;
reg   [63:0] dactivations_0_load_7_reg_2554_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_7_reg_2554_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_7_reg_2559;
reg   [63:0] dactivations_1_load_7_reg_2559_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_7_reg_2559_pp0_iter2_reg;
wire   [63:0] bitcast_ln85_33_fu_1586_p1;
wire   [63:0] bitcast_ln85_36_fu_1591_p1;
wire   [63:0] bitcast_ln85_39_fu_1596_p1;
wire   [63:0] bitcast_ln85_42_fu_1601_p1;
wire   [63:0] bitcast_ln85_4_fu_1646_p1;
wire   [63:0] bitcast_ln85_7_fu_1651_p1;
wire   [63:0] bitcast_ln85_10_fu_1656_p1;
wire   [63:0] bitcast_ln85_45_fu_1661_p1;
wire   [63:0] bitcast_ln85_13_fu_1706_p1;
wire   [63:0] bitcast_ln85_16_fu_1711_p1;
wire   [63:0] bitcast_ln85_19_fu_1716_p1;
wire   [63:0] bitcast_ln85_22_fu_1721_p1;
reg   [63:0] mul8_reg_2684;
reg   [63:0] mul8_s_reg_2689;
wire   [63:0] grp_fu_898_p2;
reg   [63:0] mul8_1_reg_2699;
wire   [63:0] grp_fu_902_p2;
reg   [63:0] mul8_2_reg_2709;
wire   [63:0] bitcast_ln85_25_fu_1770_p1;
wire   [63:0] bitcast_ln85_28_fu_1775_p1;
wire   [63:0] bitcast_ln85_31_fu_1780_p1;
wire   [63:0] bitcast_ln85_34_fu_1785_p1;
reg   [63:0] mul8_3_reg_2749;
reg   [63:0] mul8_4_reg_2754;
reg   [63:0] mul8_5_reg_2759;
reg   [63:0] mul8_6_reg_2769;
wire   [63:0] bitcast_ln85_37_fu_1830_p1;
wire   [63:0] bitcast_ln85_40_fu_1835_p1;
wire   [63:0] bitcast_ln85_43_fu_1840_p1;
wire   [63:0] bitcast_ln85_46_fu_1845_p1;
wire   [63:0] bitcast_ln85_2_fu_1850_p1;
wire   [63:0] bitcast_ln85_5_fu_1895_p1;
wire   [63:0] bitcast_ln85_11_fu_1900_p1;
wire   [63:0] bitcast_ln85_14_fu_1905_p1;
reg   [63:0] mul8_7_reg_2824;
reg   [63:0] mul8_8_reg_2829;
reg   [63:0] mul8_9_reg_2839;
reg   [63:0] mul8_10_reg_2849;
wire   [63:0] bitcast_ln85_8_fu_1950_p1;
wire   [63:0] bitcast_ln85_17_fu_1955_p1;
wire   [63:0] bitcast_ln85_20_fu_1960_p1;
wire   [63:0] bitcast_ln85_23_fu_1965_p1;
reg   [63:0] mul8_11_reg_2884;
reg   [63:0] mul8_12_reg_2889;
reg   [63:0] mul8_13_reg_2899;
reg   [63:0] mul8_14_reg_2909;
reg   [63:0] mul8_1_1_reg_2924;
reg   [63:0] mul8_2_1_reg_2929;
reg   [63:0] mul8_3_1_reg_2934;
wire   [63:0] bitcast_ln85_26_fu_1980_p1;
wire   [63:0] bitcast_ln85_29_fu_1985_p1;
wire   [63:0] bitcast_ln85_32_fu_1990_p1;
wire   [63:0] bitcast_ln85_35_fu_1995_p1;
reg   [63:0] mul8_15_reg_2959;
reg   [63:0] mul8_4_1_reg_2964;
reg   [63:0] mul8_5_1_reg_2969;
reg   [63:0] mul8_6_1_reg_2974;
reg   [63:0] mul8_7_1_reg_2979;
wire   [63:0] bitcast_ln85_38_fu_2000_p1;
wire   [63:0] bitcast_ln85_41_fu_2005_p1;
wire   [63:0] bitcast_ln85_44_fu_2010_p1;
wire   [63:0] bitcast_ln85_47_fu_2015_p1;
reg   [63:0] mul8_8_1_reg_3004;
reg   [63:0] mul8_9_1_reg_3009;
reg   [63:0] mul8_10_1_reg_3014;
reg   [63:0] mul8_11_1_reg_3019;
reg   [63:0] mul8_12_1_reg_3024;
reg   [63:0] mul8_13_1_reg_3029;
reg   [63:0] mul8_14_1_reg_3034;
reg   [63:0] mul8_15_1_reg_3039;
reg   [63:0] add_reg_3044;
reg   [63:0] mul8_27_reg_3049;
reg   [63:0] add11_1_reg_3054;
reg   [63:0] mul8_1_2_reg_3059;
reg   [63:0] add11_2_reg_3064;
reg   [63:0] mul8_3_2_reg_3069;
reg   [63:0] mul8_4_2_reg_3074;
reg   [63:0] mul8_2_2_reg_3079;
reg   [63:0] add11_3_reg_3084;
reg   [63:0] add11_4_reg_3089;
reg   [63:0] add11_5_reg_3094;
reg   [63:0] mul8_5_2_reg_3099;
reg   [63:0] add11_6_reg_3104;
reg   [63:0] mul8_6_2_reg_3109;
reg   [63:0] mul8_7_2_reg_3114;
reg   [63:0] add11_7_reg_3119;
reg   [63:0] add11_8_reg_3124;
reg   [63:0] mul8_8_2_reg_3129;
reg   [63:0] add11_9_reg_3134;
reg   [63:0] mul8_9_2_reg_3139;
reg   [63:0] add11_10_reg_3144;
reg   [63:0] mul8_10_2_reg_3149;
reg   [63:0] mul8_11_2_reg_3154;
reg   [63:0] add11_11_reg_3159;
reg   [63:0] add11_12_reg_3164;
reg   [63:0] mul8_12_2_reg_3169;
reg   [63:0] add11_13_reg_3174;
reg   [63:0] mul8_13_2_reg_3179;
reg   [63:0] add11_14_reg_3184;
reg   [63:0] mul8_14_2_reg_3189;
reg   [63:0] mul8_15_2_reg_3194;
reg   [63:0] add11_15_reg_3199;
reg   [63:0] add11_s_reg_3204;
reg   [63:0] add11_1_1_reg_3209;
reg   [63:0] add11_2_1_reg_3214;
reg   [63:0] add11_3_1_reg_3219;
reg   [63:0] add11_4_1_reg_3224;
reg   [63:0] add11_5_1_reg_3229;
reg   [63:0] add11_6_1_reg_3234;
reg   [63:0] add11_7_1_reg_3239;
reg   [63:0] add11_8_1_reg_3244;
reg   [63:0] add11_9_1_reg_3249;
reg   [63:0] add11_10_1_reg_3254;
reg   [63:0] add11_11_1_reg_3259;
reg   [63:0] add11_12_1_reg_3264;
reg   [63:0] add11_13_1_reg_3269;
reg   [63:0] add11_14_1_reg_3274;
reg   [63:0] add11_15_1_reg_3279;
reg   [63:0] add11_27_reg_3284;
reg   [63:0] add11_1_2_reg_3289;
reg   [63:0] add11_2_2_reg_3294;
reg   [63:0] add11_3_2_reg_3299;
reg   [63:0] add11_4_2_reg_3304;
reg   [63:0] add11_5_2_reg_3309;
reg   [63:0] add11_6_2_reg_3314;
reg   [63:0] add11_7_2_reg_3319;
reg   [63:0] add11_8_2_reg_3324;
reg   [63:0] add11_9_2_reg_3329;
reg   [63:0] add11_10_2_reg_3334;
reg   [63:0] add11_11_2_reg_3339;
reg   [63:0] add11_12_2_reg_3344;
reg   [63:0] add11_13_2_reg_3349;
reg   [63:0] add11_14_2_reg_3354;
reg   [63:0] add11_15_2_reg_3359;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln85_fu_1000_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_2_fu_1052_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_5_fu_1129_p1;
wire   [63:0] zext_ln85_8_fu_1191_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln85_11_fu_1245_p1;
wire   [63:0] zext_ln85_14_fu_1309_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln85_17_fu_1374_p1;
wire   [63:0] zext_ln85_20_fu_1418_p1;
wire   [63:0] zext_ln85_3_fu_1481_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln85_6_fu_1501_p1;
wire   [63:0] zext_ln85_23_fu_1521_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln85_9_fu_1561_p1;
wire   [63:0] zext_ln85_12_fu_1581_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln85_15_fu_1621_p1;
wire   [63:0] zext_ln85_18_fu_1641_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln85_21_fu_1681_p1;
wire   [63:0] zext_ln85_24_fu_1701_p1;
wire   [63:0] zext_ln85_1_fu_1733_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln87_fu_1743_p1;
wire   [63:0] zext_ln87_2_fu_1753_p1;
wire   [63:0] zext_ln87_3_fu_1765_p1;
wire   [63:0] zext_ln87_1_fu_1795_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln87_4_fu_1805_p1;
wire   [63:0] zext_ln87_5_fu_1815_p1;
wire   [63:0] zext_ln87_6_fu_1825_p1;
wire   [63:0] zext_ln87_7_fu_1860_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln87_8_fu_1870_p1;
wire   [63:0] zext_ln87_9_fu_1880_p1;
wire   [63:0] zext_ln87_10_fu_1890_p1;
wire   [63:0] zext_ln87_11_fu_1915_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln87_12_fu_1925_p1;
wire   [63:0] zext_ln87_13_fu_1935_p1;
wire   [63:0] zext_ln85_25_fu_1945_p1;
reg   [6:0] i_fu_162;
wire   [6:0] add_ln82_fu_1970_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_10;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    dactivations_0_ce1_local;
reg   [4:0] dactivations_0_address1_local;
reg    dactivations_0_ce0_local;
reg   [4:0] dactivations_0_address0_local;
reg    dactivations_1_ce1_local;
reg   [4:0] dactivations_1_address1_local;
reg    dactivations_1_ce0_local;
reg   [4:0] dactivations_1_address0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg   [4:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg   [4:0] oracle_activations_1_address0_local;
reg   [63:0] grp_fu_870_p0;
reg   [63:0] grp_fu_870_p1;
reg   [63:0] grp_fu_875_p0;
reg   [63:0] grp_fu_875_p1;
reg   [63:0] grp_fu_880_p0;
reg   [63:0] grp_fu_880_p1;
reg   [63:0] grp_fu_885_p0;
reg   [63:0] grp_fu_885_p1;
reg   [63:0] grp_fu_890_p0;
reg   [63:0] grp_fu_890_p1;
reg   [63:0] grp_fu_894_p0;
reg   [63:0] grp_fu_894_p1;
reg   [63:0] grp_fu_898_p0;
reg   [63:0] grp_fu_898_p1;
reg   [63:0] grp_fu_902_p0;
reg   [63:0] grp_fu_902_p1;
reg   [63:0] grp_fu_906_p0;
reg   [63:0] grp_fu_906_p1;
reg   [63:0] grp_fu_910_p0;
reg   [63:0] grp_fu_910_p1;
wire   [5:0] lshr_ln_fu_956_p4;
wire   [4:0] tmp_16_fu_976_p4;
wire   [6:0] p_shl5_fu_986_p3;
wire   [6:0] zext_ln81_1_fu_966_p1;
wire   [6:0] sub_ln85_fu_994_p2;
wire   [5:0] or_ln3_fu_1016_p3;
wire   [7:0] p_shl_fu_1028_p3;
wire   [7:0] zext_ln83_fu_1024_p1;
wire   [3:0] tmp_s_fu_1057_p4;
wire   [4:0] or_ln4_fu_1067_p3;
wire   [4:0] tmp_37_fu_1081_p4;
wire   [7:0] empty_43_fu_1114_p2;
wire   [2:0] tmp_38_fu_1134_p4;
wire   [4:0] or_ln83_1_fu_1150_p4;
wire   [6:0] add_ln85_5_fu_1166_p2;
wire   [7:0] empty_44_fu_1176_p2;
wire   [4:0] or_ln83_2_fu_1196_p3;
wire   [6:0] add_ln85_8_fu_1210_p2;
wire   [7:0] empty_45_fu_1230_p2;
wire   [1:0] tmp_41_fu_1259_p4;
wire   [4:0] or_ln83_3_fu_1268_p4;
wire   [6:0] add_ln85_12_fu_1284_p2;
wire   [7:0] empty_46_fu_1294_p2;
wire   [0:0] tmp_18_fu_1314_p3;
wire   [4:0] or_ln83_4_fu_1321_p5;
wire   [6:0] add_ln85_16_fu_1339_p2;
wire   [7:0] empty_47_fu_1359_p2;
wire   [4:0] or_ln83_5_fu_1379_p4;
wire   [6:0] add_ln85_20_fu_1393_p2;
wire   [7:0] empty_48_fu_1403_p2;
wire   [4:0] or_ln83_6_fu_1423_p3;
wire   [6:0] add_ln85_24_fu_1436_p2;
wire   [7:0] add_ln85_fu_1466_p2;
wire   [6:0] lshr_ln85_1_fu_1471_p4;
wire   [7:0] add_ln85_3_fu_1486_p2;
wire   [6:0] lshr_ln85_3_fu_1491_p4;
wire   [7:0] empty_49_fu_1506_p2;
wire   [7:0] add_ln85_6_fu_1546_p2;
wire   [6:0] lshr_ln85_5_fu_1551_p4;
wire   [7:0] add_ln85_10_fu_1566_p2;
wire   [6:0] lshr_ln85_7_fu_1571_p4;
wire   [7:0] add_ln85_14_fu_1606_p2;
wire   [6:0] lshr_ln85_9_fu_1611_p4;
wire   [7:0] add_ln85_18_fu_1626_p2;
wire   [6:0] lshr_ln85_10_fu_1631_p4;
wire   [7:0] add_ln85_22_fu_1666_p2;
wire   [6:0] lshr_ln85_12_fu_1671_p4;
wire   [7:0] add_ln85_26_fu_1686_p2;
wire   [6:0] lshr_ln85_14_fu_1691_p4;
wire   [6:0] or_ln_fu_1726_p3;
wire   [6:0] add_ln85_1_fu_1738_p2;
wire   [6:0] add_ln85_4_fu_1748_p2;
wire   [6:0] or_ln85_2_fu_1758_p3;
wire   [6:0] add_ln85_2_fu_1790_p2;
wire   [6:0] add_ln85_7_fu_1800_p2;
wire   [6:0] add_ln85_9_fu_1810_p2;
wire   [6:0] add_ln85_11_fu_1820_p2;
wire   [6:0] add_ln85_13_fu_1855_p2;
wire   [6:0] add_ln85_15_fu_1865_p2;
wire   [6:0] add_ln85_17_fu_1875_p2;
wire   [6:0] add_ln85_19_fu_1885_p2;
wire   [6:0] add_ln85_21_fu_1910_p2;
wire   [6:0] add_ln85_23_fu_1920_p2;
wire   [6:0] add_ln85_25_fu_1930_p2;
wire   [6:0] add_ln85_27_fu_1940_p2;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_162 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_898_p0),.din1(grp_fu_898_p1),.ce(1'b1),.dout(grp_fu_898_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U197(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_902_p0),.din1(grp_fu_902_p1),.ce(1'b1),.dout(grp_fu_902_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U198(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_906_p0),.din1(grp_fu_906_p1),.ce(1'b1),.dout(grp_fu_906_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_910_p0),.din1(grp_fu_910_p1),.ce(1'b1),.dout(grp_fu_910_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_162 <= 7'd0;
    end else if (((tmp_15_reg_2061 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_162 <= add_ln82_fu_1970_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_10_1_reg_3254 <= grp_fu_2844_p_dout0;
        add11_7_1_reg_3239 <= grp_fu_2832_p_dout0;
        add11_8_1_reg_3244 <= grp_fu_2836_p_dout0;
        add11_9_1_reg_3249 <= grp_fu_2840_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_10_2_reg_3334 <= grp_fu_2844_p_dout0;
        add11_7_2_reg_3319 <= grp_fu_2832_p_dout0;
        add11_8_2_reg_3324 <= grp_fu_2836_p_dout0;
        add11_9_2_reg_3329 <= grp_fu_2840_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_10_reg_3144 <= grp_fu_2844_p_dout0;
        add11_7_reg_3119 <= grp_fu_2832_p_dout0;
        add11_8_reg_3124 <= grp_fu_2836_p_dout0;
        add11_9_reg_3134 <= grp_fu_2840_p_dout0;
        mul8_10_2_reg_3149 <= grp_fu_898_p2;
        mul8_11_2_reg_3154 <= grp_fu_902_p2;
        mul8_8_2_reg_3129 <= grp_fu_2872_p_dout0;
        mul8_9_2_reg_3139 <= grp_fu_2876_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_11_1_reg_3259 <= grp_fu_2832_p_dout0;
        add11_12_1_reg_3264 <= grp_fu_2836_p_dout0;
        add11_13_1_reg_3269 <= grp_fu_2840_p_dout0;
        add11_14_1_reg_3274 <= grp_fu_2844_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add11_11_2_reg_3339 <= grp_fu_2832_p_dout0;
        add11_12_2_reg_3344 <= grp_fu_2836_p_dout0;
        add11_13_2_reg_3349 <= grp_fu_2840_p_dout0;
        add11_14_2_reg_3354 <= grp_fu_2844_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add11_11_reg_3159 <= grp_fu_2832_p_dout0;
        add11_12_reg_3164 <= grp_fu_2836_p_dout0;
        add11_13_reg_3174 <= grp_fu_2840_p_dout0;
        add11_14_reg_3184 <= grp_fu_2844_p_dout0;
        mul8_12_2_reg_3169 <= grp_fu_2872_p_dout0;
        mul8_13_2_reg_3179 <= grp_fu_2876_p_dout0;
        mul8_14_2_reg_3189 <= grp_fu_898_p2;
        mul8_15_2_reg_3194 <= grp_fu_902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_15_1_reg_3279 <= grp_fu_2844_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_15_2_reg_3359 <= grp_fu_2844_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_15_reg_3199 <= grp_fu_2832_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_3209 <= grp_fu_2836_p_dout0;
        add11_2_1_reg_3214 <= grp_fu_2840_p_dout0;
        add11_s_reg_3204 <= grp_fu_2832_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_1_2_reg_3289 <= grp_fu_2840_p_dout0;
        add11_27_reg_3284 <= grp_fu_2836_p_dout0;
        add11_2_2_reg_3294 <= grp_fu_2844_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_reg_3054 <= grp_fu_2836_p_dout0;
        add11_2_reg_3064 <= grp_fu_2840_p_dout0;
        add_reg_3044 <= grp_fu_2832_p_dout0;
        mul8_1_2_reg_3059 <= grp_fu_2876_p_dout0;
        mul8_27_reg_3049 <= grp_fu_2872_p_dout0;
        mul8_3_2_reg_3069 <= grp_fu_898_p2;
        mul8_4_2_reg_3074 <= grp_fu_902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_3_1_reg_3219 <= grp_fu_2832_p_dout0;
        add11_4_1_reg_3224 <= grp_fu_2836_p_dout0;
        add11_5_1_reg_3229 <= grp_fu_2840_p_dout0;
        add11_6_1_reg_3234 <= grp_fu_2844_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add11_3_2_reg_3299 <= grp_fu_2832_p_dout0;
        add11_4_2_reg_3304 <= grp_fu_2836_p_dout0;
        add11_5_2_reg_3309 <= grp_fu_2840_p_dout0;
        add11_6_2_reg_3314 <= grp_fu_2844_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_3_reg_3084 <= grp_fu_2832_p_dout0;
        add11_4_reg_3089 <= grp_fu_2836_p_dout0;
        add11_5_reg_3094 <= grp_fu_2840_p_dout0;
        add11_6_reg_3104 <= grp_fu_2844_p_dout0;
        mul8_2_2_reg_3079 <= grp_fu_2872_p_dout0;
        mul8_5_2_reg_3099 <= grp_fu_2876_p_dout0;
        mul8_6_2_reg_3109 <= grp_fu_898_p2;
        mul8_7_2_reg_3114 <= grp_fu_902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_2259 <= dactivations_0_q0;
        dactivations_0_load_reg_2172 <= dactivations_0_q1;
        dactivations_1_load_1_reg_2264 <= dactivations_1_q0;
        dactivations_1_load_reg_2254 <= dactivations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_2259_pp0_iter1_reg <= dactivations_0_load_1_reg_2259;
        dactivations_0_load_1_reg_2259_pp0_iter2_reg <= dactivations_0_load_1_reg_2259_pp0_iter1_reg;
        dactivations_0_load_reg_2172_pp0_iter1_reg <= dactivations_0_load_reg_2172;
        dactivations_0_load_reg_2172_pp0_iter2_reg <= dactivations_0_load_reg_2172_pp0_iter1_reg;
        dactivations_1_load_1_reg_2264_pp0_iter1_reg <= dactivations_1_load_1_reg_2264;
        dactivations_1_load_1_reg_2264_pp0_iter2_reg <= dactivations_1_load_1_reg_2264_pp0_iter1_reg;
        dactivations_1_load_reg_2254_pp0_iter1_reg <= dactivations_1_load_reg_2254;
        dactivations_1_load_reg_2254_pp0_iter2_reg <= dactivations_1_load_reg_2254_pp0_iter1_reg;
        lshr_ln85_2_reg_2177 <= {{empty_43_fu_1114_p2[7:1]}};
        lshr_ln85_4_reg_2203 <= {{empty_44_fu_1176_p2[7:1]}};
        tmp_17_reg_2182 <= i_10_reg_2051[32'd1];
        zext_ln83_2_reg_2187[0] <= zext_ln83_2_fu_1160_p1[0];
zext_ln83_2_reg_2187[4 : 2] <= zext_ln83_2_fu_1160_p1[4 : 2];
        zext_ln83_2_reg_2187_pp0_iter1_reg[0] <= zext_ln83_2_reg_2187[0];
zext_ln83_2_reg_2187_pp0_iter1_reg[4 : 2] <= zext_ln83_2_reg_2187[4 : 2];
        zext_ln83_2_reg_2187_pp0_iter2_reg[0] <= zext_ln83_2_reg_2187_pp0_iter1_reg[0];
zext_ln83_2_reg_2187_pp0_iter2_reg[4 : 2] <= zext_ln83_2_reg_2187_pp0_iter1_reg[4 : 2];
        zext_ln83_2_reg_2187_pp0_iter3_reg[0] <= zext_ln83_2_reg_2187_pp0_iter2_reg[0];
zext_ln83_2_reg_2187_pp0_iter3_reg[4 : 2] <= zext_ln83_2_reg_2187_pp0_iter2_reg[4 : 2];
        zext_ln83_3_reg_2213[4 : 2] <= zext_ln83_3_fu_1204_p1[4 : 2];
        zext_ln83_3_reg_2213_pp0_iter1_reg[4 : 2] <= zext_ln83_3_reg_2213[4 : 2];
        zext_ln83_3_reg_2213_pp0_iter2_reg[4 : 2] <= zext_ln83_3_reg_2213_pp0_iter1_reg[4 : 2];
        zext_ln83_3_reg_2213_pp0_iter3_reg[4 : 2] <= zext_ln83_3_reg_2213_pp0_iter2_reg[4 : 2];
        zext_ln85_10_reg_2219[6 : 2] <= zext_ln85_10_fu_1215_p1[6 : 2];
        zext_ln85_7_reg_2193[6 : 2] <= zext_ln85_7_fu_1171_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_2367 <= dactivations_0_q1;
        dactivations_0_load_3_reg_2377 <= dactivations_0_q0;
        dactivations_1_load_2_reg_2372 <= dactivations_1_q1;
        dactivations_1_load_3_reg_2382 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_2367_pp0_iter1_reg <= dactivations_0_load_2_reg_2367;
        dactivations_0_load_2_reg_2367_pp0_iter2_reg <= dactivations_0_load_2_reg_2367_pp0_iter1_reg;
        dactivations_0_load_3_reg_2377_pp0_iter1_reg <= dactivations_0_load_3_reg_2377;
        dactivations_0_load_3_reg_2377_pp0_iter2_reg <= dactivations_0_load_3_reg_2377_pp0_iter1_reg;
        dactivations_1_load_2_reg_2372_pp0_iter1_reg <= dactivations_1_load_2_reg_2372;
        dactivations_1_load_2_reg_2372_pp0_iter2_reg <= dactivations_1_load_2_reg_2372_pp0_iter1_reg;
        dactivations_1_load_3_reg_2382_pp0_iter1_reg <= dactivations_1_load_3_reg_2382;
        dactivations_1_load_3_reg_2382_pp0_iter2_reg <= dactivations_1_load_3_reg_2382_pp0_iter1_reg;
        lshr_ln85_6_reg_2279 <= {{empty_45_fu_1230_p2[7:1]}};
        lshr_ln85_8_reg_2306 <= {{empty_46_fu_1294_p2[7:1]}};
        tmp_40_reg_2284 <= {{i_10_reg_2051[5:4]}};
        zext_ln83_4_reg_2290[1 : 0] <= zext_ln83_4_fu_1278_p1[1 : 0];
zext_ln83_4_reg_2290[4 : 3] <= zext_ln83_4_fu_1278_p1[4 : 3];
        zext_ln83_4_reg_2290_pp0_iter1_reg[1 : 0] <= zext_ln83_4_reg_2290[1 : 0];
zext_ln83_4_reg_2290_pp0_iter1_reg[4 : 3] <= zext_ln83_4_reg_2290[4 : 3];
        zext_ln83_4_reg_2290_pp0_iter2_reg[1 : 0] <= zext_ln83_4_reg_2290_pp0_iter1_reg[1 : 0];
zext_ln83_4_reg_2290_pp0_iter2_reg[4 : 3] <= zext_ln83_4_reg_2290_pp0_iter1_reg[4 : 3];
        zext_ln83_4_reg_2290_pp0_iter3_reg[1 : 0] <= zext_ln83_4_reg_2290_pp0_iter2_reg[1 : 0];
zext_ln83_4_reg_2290_pp0_iter3_reg[4 : 3] <= zext_ln83_4_reg_2290_pp0_iter2_reg[4 : 3];
        zext_ln83_5_reg_2316[1] <= zext_ln83_5_fu_1333_p1[1];
zext_ln83_5_reg_2316[4 : 3] <= zext_ln83_5_fu_1333_p1[4 : 3];
        zext_ln83_5_reg_2316_pp0_iter1_reg[1] <= zext_ln83_5_reg_2316[1];
zext_ln83_5_reg_2316_pp0_iter1_reg[4 : 3] <= zext_ln83_5_reg_2316[4 : 3];
        zext_ln83_5_reg_2316_pp0_iter2_reg[1] <= zext_ln83_5_reg_2316_pp0_iter1_reg[1];
zext_ln83_5_reg_2316_pp0_iter2_reg[4 : 3] <= zext_ln83_5_reg_2316_pp0_iter1_reg[4 : 3];
        zext_ln83_5_reg_2316_pp0_iter3_reg[1] <= zext_ln83_5_reg_2316_pp0_iter2_reg[1];
zext_ln83_5_reg_2316_pp0_iter3_reg[4 : 3] <= zext_ln83_5_reg_2316_pp0_iter2_reg[4 : 3];
        zext_ln85_13_reg_2296[6 : 2] <= zext_ln85_13_fu_1289_p1[6 : 2];
        zext_ln85_16_reg_2322[6 : 2] <= zext_ln85_16_fu_1344_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        dactivations_0_load_4_reg_2479 <= dactivations_0_q1;
        dactivations_0_load_5_reg_2489 <= dactivations_0_q0;
        dactivations_1_load_4_reg_2484 <= dactivations_1_q1;
        dactivations_1_load_5_reg_2494 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        dactivations_0_load_4_reg_2479_pp0_iter1_reg <= dactivations_0_load_4_reg_2479;
        dactivations_0_load_4_reg_2479_pp0_iter2_reg <= dactivations_0_load_4_reg_2479_pp0_iter1_reg;
        dactivations_0_load_5_reg_2489_pp0_iter1_reg <= dactivations_0_load_5_reg_2489;
        dactivations_0_load_5_reg_2489_pp0_iter2_reg <= dactivations_0_load_5_reg_2489_pp0_iter1_reg;
        dactivations_1_load_4_reg_2484_pp0_iter1_reg <= dactivations_1_load_4_reg_2484;
        dactivations_1_load_4_reg_2484_pp0_iter2_reg <= dactivations_1_load_4_reg_2484_pp0_iter1_reg;
        dactivations_1_load_5_reg_2494_pp0_iter1_reg <= dactivations_1_load_5_reg_2494;
        dactivations_1_load_5_reg_2494_pp0_iter2_reg <= dactivations_1_load_5_reg_2494_pp0_iter1_reg;
        lshr_ln85_11_reg_2408 <= {{empty_48_fu_1403_p2[7:1]}};
        lshr_ln85_s_reg_2387 <= {{empty_47_fu_1359_p2[7:1]}};
        zext_ln83_6_reg_2392[0] <= zext_ln83_6_fu_1387_p1[0];
zext_ln83_6_reg_2392[4 : 3] <= zext_ln83_6_fu_1387_p1[4 : 3];
        zext_ln83_6_reg_2392_pp0_iter1_reg[0] <= zext_ln83_6_reg_2392[0];
zext_ln83_6_reg_2392_pp0_iter1_reg[4 : 3] <= zext_ln83_6_reg_2392[4 : 3];
        zext_ln83_6_reg_2392_pp0_iter2_reg[0] <= zext_ln83_6_reg_2392_pp0_iter1_reg[0];
zext_ln83_6_reg_2392_pp0_iter2_reg[4 : 3] <= zext_ln83_6_reg_2392_pp0_iter1_reg[4 : 3];
        zext_ln83_6_reg_2392_pp0_iter3_reg[0] <= zext_ln83_6_reg_2392_pp0_iter2_reg[0];
zext_ln83_6_reg_2392_pp0_iter3_reg[4 : 3] <= zext_ln83_6_reg_2392_pp0_iter2_reg[4 : 3];
        zext_ln83_7_reg_2418[4 : 3] <= zext_ln83_7_fu_1430_p1[4 : 3];
        zext_ln83_7_reg_2418_pp0_iter1_reg[4 : 3] <= zext_ln83_7_reg_2418[4 : 3];
        zext_ln83_7_reg_2418_pp0_iter2_reg[4 : 3] <= zext_ln83_7_reg_2418_pp0_iter1_reg[4 : 3];
        zext_ln83_7_reg_2418_pp0_iter3_reg[4 : 3] <= zext_ln83_7_reg_2418_pp0_iter2_reg[4 : 3];
        zext_ln85_19_reg_2398[6 : 2] <= zext_ln85_19_fu_1398_p1[6 : 2];
        zext_ln85_22_reg_2424[6 : 2] <= zext_ln85_22_fu_1441_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        dactivations_0_load_6_reg_2544 <= dactivations_0_q1;
        dactivations_0_load_7_reg_2554 <= dactivations_0_q0;
        dactivations_1_load_6_reg_2549 <= dactivations_1_q1;
        dactivations_1_load_7_reg_2559 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        dactivations_0_load_6_reg_2544_pp0_iter1_reg <= dactivations_0_load_6_reg_2544;
        dactivations_0_load_6_reg_2544_pp0_iter2_reg <= dactivations_0_load_6_reg_2544_pp0_iter1_reg;
        dactivations_0_load_7_reg_2554_pp0_iter1_reg <= dactivations_0_load_7_reg_2554;
        dactivations_0_load_7_reg_2554_pp0_iter2_reg <= dactivations_0_load_7_reg_2554_pp0_iter1_reg;
        dactivations_1_load_6_reg_2549_pp0_iter1_reg <= dactivations_1_load_6_reg_2549;
        dactivations_1_load_6_reg_2549_pp0_iter2_reg <= dactivations_1_load_6_reg_2549_pp0_iter1_reg;
        dactivations_1_load_7_reg_2559_pp0_iter1_reg <= dactivations_1_load_7_reg_2559;
        dactivations_1_load_7_reg_2559_pp0_iter2_reg <= dactivations_1_load_7_reg_2559_pp0_iter1_reg;
        lshr_ln85_13_reg_2499 <= {{empty_49_fu_1506_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_2091[7 : 1] <= empty_fu_1036_p2[7 : 1];
        i_10_reg_2051 <= ap_sig_allocacmp_i_10;
        lshr_ln1_reg_2110 <= {{empty_fu_1036_p2[7:1]}};
        or_ln85_1_reg_2126[6 : 2] <= or_ln85_1_fu_1091_p3[6 : 2];
        tmp_15_reg_2061 <= ap_sig_allocacmp_i_10[32'd6];
        tmp_39_reg_2157 <= {{sub_ln85_fu_994_p2[6:3]}};
        tmp_reg_2081 <= {{sub_ln85_fu_994_p2[6:1]}};
        zext_ln81_reg_2065[5 : 0] <= zext_ln81_fu_970_p1[5 : 0];
        zext_ln81_reg_2065_pp0_iter1_reg[5 : 0] <= zext_ln81_reg_2065[5 : 0];
        zext_ln81_reg_2065_pp0_iter2_reg[5 : 0] <= zext_ln81_reg_2065_pp0_iter1_reg[5 : 0];
        zext_ln81_reg_2065_pp0_iter3_reg[5 : 0] <= zext_ln81_reg_2065_pp0_iter2_reg[5 : 0];
        zext_ln83_1_reg_2120[4 : 1] <= zext_ln83_1_fu_1075_p1[4 : 1];
        zext_ln83_1_reg_2120_pp0_iter1_reg[4 : 1] <= zext_ln83_1_reg_2120[4 : 1];
        zext_ln83_1_reg_2120_pp0_iter2_reg[4 : 1] <= zext_ln83_1_reg_2120_pp0_iter1_reg[4 : 1];
        zext_ln83_1_reg_2120_pp0_iter3_reg[4 : 1] <= zext_ln83_1_reg_2120_pp0_iter2_reg[4 : 1];
        zext_ln85_4_reg_2142[6 : 2] <= zext_ln85_4_fu_1099_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_10_1_reg_3014 <= grp_fu_898_p2;
        mul8_11_1_reg_3019 <= grp_fu_902_p2;
        mul8_8_1_reg_3004 <= grp_fu_2872_p_dout0;
        mul8_9_1_reg_3009 <= grp_fu_2876_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_10_reg_2849 <= grp_fu_902_p2;
        mul8_7_reg_2824 <= grp_fu_2872_p_dout0;
        mul8_8_reg_2829 <= grp_fu_2876_p_dout0;
        mul8_9_reg_2839 <= grp_fu_898_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_11_reg_2884 <= grp_fu_2872_p_dout0;
        mul8_12_reg_2889 <= grp_fu_2876_p_dout0;
        mul8_13_reg_2899 <= grp_fu_898_p2;
        mul8_14_reg_2909 <= grp_fu_902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_12_1_reg_3024 <= grp_fu_2872_p_dout0;
        mul8_13_1_reg_3029 <= grp_fu_2876_p_dout0;
        mul8_14_1_reg_3034 <= grp_fu_898_p2;
        mul8_15_1_reg_3039 <= grp_fu_902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_15_reg_2959 <= grp_fu_902_p2;
        mul8_1_1_reg_2924 <= grp_fu_2872_p_dout0;
        mul8_2_1_reg_2929 <= grp_fu_2876_p_dout0;
        mul8_3_1_reg_2934 <= grp_fu_898_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_1_reg_2699 <= grp_fu_898_p2;
        mul8_2_reg_2709 <= grp_fu_902_p2;
        mul8_reg_2684 <= grp_fu_2872_p_dout0;
        mul8_s_reg_2689 <= grp_fu_2876_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_3_reg_2749 <= grp_fu_2872_p_dout0;
        mul8_4_reg_2754 <= grp_fu_2876_p_dout0;
        mul8_5_reg_2759 <= grp_fu_898_p2;
        mul8_6_reg_2769 <= grp_fu_902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_4_1_reg_2964 <= grp_fu_2872_p_dout0;
        mul8_5_1_reg_2969 <= grp_fu_2876_p_dout0;
        mul8_6_1_reg_2974 <= grp_fu_898_p2;
        mul8_7_1_reg_2979 <= grp_fu_902_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_914 <= weights3_0_q1;
        reg_918 <= weights3_1_q1;
        reg_922 <= weights3_1_q0;
        reg_926 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_930 <= grp_fu_906_p2;
        reg_935 <= grp_fu_910_p2;
    end
end
always @ (*) begin
    if (((tmp_15_reg_2061 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_10 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_10 = i_fu_162;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_0_address0_local = zext_ln83_7_fu_1430_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_0_address0_local = zext_ln83_5_fu_1333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address0_local = zext_ln83_3_fu_1204_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address0_local = zext_ln83_1_fu_1075_p1;
        end else begin
            dactivations_0_address0_local = 'bx;
        end
    end else begin
        dactivations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_0_address1_local = zext_ln83_6_fu_1387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_0_address1_local = zext_ln83_4_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address1_local = zext_ln83_2_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address1_local = zext_ln81_fu_970_p1;
        end else begin
            dactivations_0_address1_local = 'bx;
        end
    end else begin
        dactivations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_1_address0_local = zext_ln83_7_fu_1430_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_1_address0_local = zext_ln83_5_fu_1333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address0_local = zext_ln83_3_fu_1204_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address0_local = zext_ln83_1_fu_1075_p1;
        end else begin
            dactivations_1_address0_local = 'bx;
        end
    end else begin
        dactivations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_1_address1_local = zext_ln83_6_fu_1387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_1_address1_local = zext_ln83_4_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address1_local = zext_ln83_2_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address1_local = zext_ln81_fu_970_p1;
        end else begin
            dactivations_1_address1_local = 'bx;
        end
    end else begin
        dactivations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_870_p0 = add11_11_1_reg_3259;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_p0 = add11_7_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_870_p0 = add11_3_1_reg_3219;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_870_p0 = add11_11_reg_3159;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_870_p0 = add11_7_reg_3119;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_870_p0 = add11_3_reg_3084;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_870_p0 = add_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_870_p0 = mul8_15_reg_2959;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_870_p0 = mul8_11_reg_2884;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_870_p0 = mul8_7_reg_2824;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_870_p0 = mul8_3_reg_2749;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_870_p0 = mul8_reg_2684;
    end else begin
        grp_fu_870_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_870_p1 = mul8_11_2_reg_3154;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_p1 = mul8_7_2_reg_3114;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_870_p1 = mul8_3_2_reg_3069;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_870_p1 = mul8_11_1_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_870_p1 = mul8_7_1_reg_2979;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_870_p1 = mul8_3_1_reg_2934;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_870_p1 = mul8_s_reg_2689;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_870_p1 = 64'd0;
    end else begin
        grp_fu_870_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_875_p0 = add11_12_1_reg_3264;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_875_p0 = add11_8_1_reg_3244;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_875_p0 = add11_4_1_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_875_p0 = add11_s_reg_3204;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_875_p0 = add11_12_reg_3164;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_875_p0 = add11_8_reg_3124;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_875_p0 = add11_4_reg_3089;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_875_p0 = add11_1_reg_3054;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_875_p0 = mul8_12_reg_2889;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_875_p0 = mul8_8_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_875_p0 = mul8_4_reg_2754;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_875_p0 = mul8_1_reg_2699;
    end else begin
        grp_fu_875_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_875_p1 = mul8_12_2_reg_3169;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_875_p1 = mul8_8_2_reg_3129;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_875_p1 = mul8_4_2_reg_3074;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_875_p1 = mul8_27_reg_3049;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_875_p1 = mul8_12_1_reg_3024;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_875_p1 = mul8_8_1_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_875_p1 = mul8_4_1_reg_2964;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_875_p1 = mul8_1_1_reg_2924;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_875_p1 = 64'd0;
    end else begin
        grp_fu_875_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_880_p0 = add11_13_1_reg_3269;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_880_p0 = add11_9_1_reg_3249;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_880_p0 = add11_5_1_reg_3229;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_880_p0 = add11_1_1_reg_3209;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_880_p0 = add11_13_reg_3174;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_880_p0 = add11_9_reg_3134;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_880_p0 = add11_5_reg_3094;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_880_p0 = add11_2_reg_3064;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_880_p0 = mul8_13_reg_2899;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_880_p0 = mul8_9_reg_2839;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_880_p0 = mul8_5_reg_2759;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_880_p0 = mul8_2_reg_2709;
    end else begin
        grp_fu_880_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_880_p1 = mul8_13_2_reg_3179;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_880_p1 = mul8_9_2_reg_3139;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_880_p1 = mul8_5_2_reg_3099;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_880_p1 = mul8_1_2_reg_3059;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_880_p1 = mul8_13_1_reg_3029;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_880_p1 = mul8_9_1_reg_3009;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_880_p1 = mul8_5_1_reg_2969;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_880_p1 = mul8_2_1_reg_2929;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_880_p1 = 64'd0;
    end else begin
        grp_fu_880_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_885_p0 = add11_15_1_reg_3279;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_885_p0 = add11_14_1_reg_3274;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_885_p0 = add11_10_1_reg_3254;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_885_p0 = add11_6_1_reg_3234;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_885_p0 = add11_2_1_reg_3214;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_885_p0 = add11_15_reg_3199;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_885_p0 = add11_14_reg_3184;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_885_p0 = add11_10_reg_3144;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_885_p0 = add11_6_reg_3104;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_885_p0 = mul8_14_reg_2909;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_885_p0 = mul8_10_reg_2849;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_885_p0 = mul8_6_reg_2769;
    end else begin
        grp_fu_885_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_885_p1 = mul8_15_2_reg_3194;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_885_p1 = mul8_14_2_reg_3189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_885_p1 = mul8_10_2_reg_3149;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_885_p1 = mul8_6_2_reg_3109;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_885_p1 = mul8_2_2_reg_3079;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_885_p1 = mul8_15_1_reg_3039;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_885_p1 = mul8_14_1_reg_3034;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_885_p1 = mul8_10_1_reg_3014;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_885_p1 = mul8_6_1_reg_2974;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_885_p1 = 64'd0;
    end else begin
        grp_fu_885_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_890_p0 = bitcast_ln85_38_fu_2000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_890_p0 = bitcast_ln85_26_fu_1980_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_890_p0 = bitcast_ln85_8_fu_1950_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_890_p0 = bitcast_ln85_2_fu_1850_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_890_p0 = bitcast_ln85_37_fu_1830_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_890_p0 = bitcast_ln85_25_fu_1770_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_890_p0 = bitcast_ln85_13_fu_1706_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_890_p0 = bitcast_ln85_4_fu_1646_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_890_p0 = bitcast_ln85_33_fu_1586_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_890_p0 = bitcast_ln85_21_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_890_p0 = bitcast_ln85_9_fu_1446_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_890_p0 = bitcast_ln85_fu_1220_p1;
    end else begin
        grp_fu_890_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_890_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_890_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_890_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_890_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_894_p0 = bitcast_ln85_41_fu_2005_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_894_p0 = bitcast_ln85_29_fu_1985_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_894_p0 = bitcast_ln85_17_fu_1955_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_894_p0 = bitcast_ln85_5_fu_1895_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_894_p0 = bitcast_ln85_40_fu_1835_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_894_p0 = bitcast_ln85_28_fu_1775_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_894_p0 = bitcast_ln85_16_fu_1711_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_894_p0 = bitcast_ln85_7_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_894_p0 = bitcast_ln85_36_fu_1591_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_894_p0 = bitcast_ln85_24_fu_1531_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_894_p0 = bitcast_ln85_12_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_894_p0 = bitcast_ln85_1_fu_1225_p1;
    end else begin
        grp_fu_894_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_894_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_894_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_894_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_894_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_898_p0 = bitcast_ln85_44_fu_2010_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_898_p0 = bitcast_ln85_32_fu_1990_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_898_p0 = bitcast_ln85_20_fu_1960_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_898_p0 = bitcast_ln85_11_fu_1900_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_898_p0 = bitcast_ln85_43_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_898_p0 = bitcast_ln85_31_fu_1780_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_898_p0 = bitcast_ln85_19_fu_1716_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_898_p0 = bitcast_ln85_10_fu_1656_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_898_p0 = bitcast_ln85_39_fu_1596_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_898_p0 = bitcast_ln85_27_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_898_p0 = bitcast_ln85_15_fu_1456_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_898_p0 = bitcast_ln85_3_fu_1349_p1;
    end else begin
        grp_fu_898_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_898_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_898_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_898_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_898_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_902_p0 = bitcast_ln85_47_fu_2015_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_902_p0 = bitcast_ln85_35_fu_1995_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_902_p0 = bitcast_ln85_23_fu_1965_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_902_p0 = bitcast_ln85_14_fu_1905_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_902_p0 = bitcast_ln85_46_fu_1845_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_902_p0 = bitcast_ln85_34_fu_1785_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_902_p0 = bitcast_ln85_22_fu_1721_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_902_p0 = bitcast_ln85_45_fu_1661_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_902_p0 = bitcast_ln85_42_fu_1601_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_902_p0 = bitcast_ln85_30_fu_1541_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_902_p0 = bitcast_ln85_18_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_902_p0 = bitcast_ln85_6_fu_1354_p1;
    end else begin
        grp_fu_902_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_902_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_902_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_902_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_902_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_906_p0 = add11_14_2_reg_3354;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_906_p0 = add11_12_2_reg_3344;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_906_p0 = add11_10_2_reg_3334;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_906_p0 = add11_8_2_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_906_p0 = add11_6_2_reg_3314;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_906_p0 = add11_4_2_reg_3304;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_906_p0 = add11_2_2_reg_3294;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_906_p0 = add11_27_reg_3284;
    end else begin
        grp_fu_906_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_906_p1 = dactivations_0_load_7_reg_2554_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_906_p1 = dactivations_0_load_6_reg_2544_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_906_p1 = dactivations_0_load_5_reg_2489_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_906_p1 = dactivations_0_load_4_reg_2479_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_906_p1 = dactivations_0_load_3_reg_2377_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_906_p1 = dactivations_0_load_2_reg_2367_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_906_p1 = dactivations_0_load_1_reg_2259_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_906_p1 = dactivations_0_load_reg_2172_pp0_iter2_reg;
    end else begin
        grp_fu_906_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_910_p0 = add11_15_2_reg_3359;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_910_p0 = add11_13_2_reg_3349;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_910_p0 = add11_11_2_reg_3339;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_910_p0 = add11_9_2_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_910_p0 = add11_7_2_reg_3319;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_910_p0 = add11_5_2_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_910_p0 = add11_3_2_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_910_p0 = add11_1_2_reg_3289;
    end else begin
        grp_fu_910_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_910_p1 = dactivations_1_load_7_reg_2559_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_910_p1 = dactivations_1_load_6_reg_2549_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_910_p1 = dactivations_1_load_5_reg_2494_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_910_p1 = dactivations_1_load_4_reg_2484_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_910_p1 = dactivations_1_load_3_reg_2382_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_910_p1 = dactivations_1_load_2_reg_2372_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_910_p1 = dactivations_1_load_1_reg_2264_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_910_p1 = dactivations_1_load_reg_2254_pp0_iter2_reg;
    end else begin
        grp_fu_910_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            oracle_activations_0_address0_local = zext_ln83_7_reg_2418_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            oracle_activations_0_address0_local = zext_ln83_6_reg_2392_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            oracle_activations_0_address0_local = zext_ln83_5_reg_2316_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            oracle_activations_0_address0_local = zext_ln83_4_reg_2290_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            oracle_activations_0_address0_local = zext_ln83_3_reg_2213_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            oracle_activations_0_address0_local = zext_ln83_2_reg_2187_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            oracle_activations_0_address0_local = zext_ln83_1_reg_2120_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            oracle_activations_0_address0_local = zext_ln81_reg_2065_pp0_iter3_reg;
        end else begin
            oracle_activations_0_address0_local = 'bx;
        end
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            oracle_activations_1_address0_local = zext_ln83_7_reg_2418_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            oracle_activations_1_address0_local = zext_ln83_6_reg_2392_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            oracle_activations_1_address0_local = zext_ln83_5_reg_2316_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            oracle_activations_1_address0_local = zext_ln83_4_reg_2290_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            oracle_activations_1_address0_local = zext_ln83_3_reg_2213_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            oracle_activations_1_address0_local = zext_ln83_2_reg_2187_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            oracle_activations_1_address0_local = zext_ln83_1_reg_2120_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            oracle_activations_1_address0_local = zext_ln81_reg_2065_pp0_iter3_reg;
        end else begin
            oracle_activations_1_address0_local = 'bx;
        end
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_0_address0_local = zext_ln87_13_fu_1935_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_0_address0_local = zext_ln87_9_fu_1880_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_0_address0_local = zext_ln87_5_fu_1815_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_0_address0_local = zext_ln87_3_fu_1765_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_0_address0_local = zext_ln85_24_fu_1701_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_0_address0_local = zext_ln85_18_fu_1641_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address0_local = zext_ln85_12_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address0_local = zext_ln85_6_fu_1501_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address0_local = zext_ln85_22_fu_1441_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address0_local = zext_ln85_16_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln85_10_fu_1215_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln85_4_fu_1099_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_0_address1_local = zext_ln87_11_fu_1915_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_0_address1_local = zext_ln87_7_fu_1860_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_0_address1_local = zext_ln87_1_fu_1795_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_0_address1_local = zext_ln85_1_fu_1733_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_0_address1_local = zext_ln85_21_fu_1681_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_0_address1_local = zext_ln85_15_fu_1621_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address1_local = zext_ln85_9_fu_1561_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address1_local = zext_ln85_3_fu_1481_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address1_local = zext_ln85_19_fu_1398_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address1_local = zext_ln85_13_fu_1289_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln85_7_fu_1171_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address1_local = zext_ln85_fu_1000_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_1_address0_local = zext_ln85_25_fu_1945_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_1_address0_local = zext_ln87_10_fu_1890_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_1_address0_local = zext_ln87_6_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_1_address0_local = zext_ln87_2_fu_1753_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_1_address0_local = zext_ln85_22_reg_2424;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_1_address0_local = zext_ln85_16_reg_2322;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address0_local = zext_ln85_10_reg_2219;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address0_local = zext_ln85_23_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address0_local = zext_ln85_20_fu_1418_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address0_local = zext_ln85_14_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln85_8_fu_1191_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln85_2_fu_1052_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_1_address1_local = zext_ln87_12_fu_1925_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_1_address1_local = zext_ln87_8_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_1_address1_local = zext_ln87_4_fu_1805_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_1_address1_local = zext_ln87_fu_1743_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_1_address1_local = zext_ln85_19_reg_2398;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_1_address1_local = zext_ln85_13_reg_2296;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address1_local = zext_ln85_7_reg_2193;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address1_local = zext_ln85_4_reg_2142;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address1_local = zext_ln85_17_fu_1374_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address1_local = zext_ln85_11_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln85_5_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address1_local = zext_ln85_fu_1000_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_1970_p2 = (i_10_reg_2051 + 7'd16);
assign add_ln85_10_fu_1566_p2 = (empty_reg_2091 + 8'd19);
assign add_ln85_11_fu_1820_p2 = (lshr_ln85_6_reg_2279 + 7'd1);
assign add_ln85_12_fu_1284_p2 = (or_ln85_1_reg_2126 + 7'd9);
assign add_ln85_13_fu_1855_p2 = (or_ln85_1_reg_2126 + 7'd10);
assign add_ln85_14_fu_1606_p2 = (empty_reg_2091 + 8'd25);
assign add_ln85_15_fu_1865_p2 = (lshr_ln85_8_reg_2306 + 7'd1);
assign add_ln85_16_fu_1339_p2 = (or_ln85_1_reg_2126 + 7'd12);
assign add_ln85_17_fu_1875_p2 = (or_ln85_1_reg_2126 + 7'd13);
assign add_ln85_18_fu_1626_p2 = (empty_reg_2091 + 8'd31);
assign add_ln85_19_fu_1885_p2 = (lshr_ln85_s_reg_2387 + 7'd1);
assign add_ln85_1_fu_1738_p2 = (lshr_ln1_reg_2110 + 7'd1);
assign add_ln85_20_fu_1393_p2 = (or_ln85_1_reg_2126 + 7'd15);
assign add_ln85_21_fu_1910_p2 = (or_ln85_1_reg_2126 + 7'd16);
assign add_ln85_22_fu_1666_p2 = (empty_reg_2091 + 8'd37);
assign add_ln85_23_fu_1920_p2 = (lshr_ln85_11_reg_2408 + 7'd1);
assign add_ln85_24_fu_1436_p2 = (or_ln85_1_reg_2126 + 7'd18);
assign add_ln85_25_fu_1930_p2 = (or_ln85_1_reg_2126 + 7'd19);
assign add_ln85_26_fu_1686_p2 = (empty_reg_2091 + 8'd43);
assign add_ln85_27_fu_1940_p2 = (lshr_ln85_13_reg_2499 + 7'd1);
assign add_ln85_2_fu_1790_p2 = (or_ln85_1_reg_2126 + 7'd1);
assign add_ln85_3_fu_1486_p2 = (empty_reg_2091 + 8'd7);
assign add_ln85_4_fu_1748_p2 = (lshr_ln85_2_reg_2177 + 7'd1);
assign add_ln85_5_fu_1166_p2 = (or_ln85_1_reg_2126 + 7'd3);
assign add_ln85_6_fu_1546_p2 = (empty_reg_2091 + 8'd13);
assign add_ln85_7_fu_1800_p2 = (lshr_ln85_4_reg_2203 + 7'd1);
assign add_ln85_8_fu_1210_p2 = (or_ln85_1_reg_2126 + 7'd6);
assign add_ln85_9_fu_1810_p2 = (or_ln85_1_reg_2126 + 7'd7);
assign add_ln85_fu_1466_p2 = (empty_reg_2091 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_1656_p1 = reg_926;
assign bitcast_ln85_11_fu_1900_p1 = reg_922;
assign bitcast_ln85_12_fu_1451_p1 = reg_914;
assign bitcast_ln85_13_fu_1706_p1 = reg_918;
assign bitcast_ln85_14_fu_1905_p1 = reg_926;
assign bitcast_ln85_15_fu_1456_p1 = reg_922;
assign bitcast_ln85_16_fu_1711_p1 = reg_914;
assign bitcast_ln85_17_fu_1955_p1 = reg_918;
assign bitcast_ln85_18_fu_1461_p1 = reg_926;
assign bitcast_ln85_19_fu_1716_p1 = reg_922;
assign bitcast_ln85_1_fu_1225_p1 = reg_918;
assign bitcast_ln85_20_fu_1960_p1 = reg_926;
assign bitcast_ln85_21_fu_1526_p1 = reg_918;
assign bitcast_ln85_22_fu_1721_p1 = reg_926;
assign bitcast_ln85_23_fu_1965_p1 = reg_922;
assign bitcast_ln85_24_fu_1531_p1 = reg_914;
assign bitcast_ln85_25_fu_1770_p1 = reg_918;
assign bitcast_ln85_26_fu_1980_p1 = reg_914;
assign bitcast_ln85_27_fu_1536_p1 = reg_922;
assign bitcast_ln85_28_fu_1775_p1 = reg_914;
assign bitcast_ln85_29_fu_1985_p1 = reg_918;
assign bitcast_ln85_2_fu_1850_p1 = reg_914;
assign bitcast_ln85_30_fu_1541_p1 = reg_926;
assign bitcast_ln85_31_fu_1780_p1 = reg_922;
assign bitcast_ln85_32_fu_1990_p1 = reg_926;
assign bitcast_ln85_33_fu_1586_p1 = reg_918;
assign bitcast_ln85_34_fu_1785_p1 = reg_926;
assign bitcast_ln85_35_fu_1995_p1 = reg_922;
assign bitcast_ln85_36_fu_1591_p1 = reg_914;
assign bitcast_ln85_37_fu_1830_p1 = reg_918;
assign bitcast_ln85_38_fu_2000_p1 = reg_914;
assign bitcast_ln85_39_fu_1596_p1 = reg_922;
assign bitcast_ln85_3_fu_1349_p1 = reg_922;
assign bitcast_ln85_40_fu_1835_p1 = reg_914;
assign bitcast_ln85_41_fu_2005_p1 = reg_918;
assign bitcast_ln85_42_fu_1601_p1 = reg_926;
assign bitcast_ln85_43_fu_1840_p1 = reg_922;
assign bitcast_ln85_44_fu_2010_p1 = reg_926;
assign bitcast_ln85_45_fu_1661_p1 = reg_922;
assign bitcast_ln85_46_fu_1845_p1 = reg_926;
assign bitcast_ln85_47_fu_2015_p1 = reg_922;
assign bitcast_ln85_4_fu_1646_p1 = reg_914;
assign bitcast_ln85_5_fu_1895_p1 = reg_918;
assign bitcast_ln85_6_fu_1354_p1 = reg_926;
assign bitcast_ln85_7_fu_1651_p1 = reg_918;
assign bitcast_ln85_8_fu_1950_p1 = reg_914;
assign bitcast_ln85_9_fu_1446_p1 = reg_918;
assign bitcast_ln85_fu_1220_p1 = reg_914;
assign dactivations_0_address0 = dactivations_0_address0_local;
assign dactivations_0_address1 = dactivations_0_address1_local;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = dactivations_1_address0_local;
assign dactivations_1_address1 = dactivations_1_address1_local;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign empty_43_fu_1114_p2 = (empty_reg_2091 + 8'd6);
assign empty_44_fu_1176_p2 = (empty_reg_2091 + 8'd12);
assign empty_45_fu_1230_p2 = (empty_reg_2091 + 8'd18);
assign empty_46_fu_1294_p2 = (empty_reg_2091 + 8'd24);
assign empty_47_fu_1359_p2 = (empty_reg_2091 + 8'd30);
assign empty_48_fu_1403_p2 = (empty_reg_2091 + 8'd36);
assign empty_49_fu_1506_p2 = (empty_reg_2091 + 8'd42);
assign empty_fu_1036_p2 = (p_shl_fu_1028_p3 - zext_ln83_fu_1024_p1);
assign grp_fu_2832_p_ce = 1'b1;
assign grp_fu_2832_p_din0 = grp_fu_870_p0;
assign grp_fu_2832_p_din1 = grp_fu_870_p1;
assign grp_fu_2832_p_opcode = 2'd0;
assign grp_fu_2836_p_ce = 1'b1;
assign grp_fu_2836_p_din0 = grp_fu_875_p0;
assign grp_fu_2836_p_din1 = grp_fu_875_p1;
assign grp_fu_2836_p_opcode = 2'd0;
assign grp_fu_2840_p_ce = 1'b1;
assign grp_fu_2840_p_din0 = grp_fu_880_p0;
assign grp_fu_2840_p_din1 = grp_fu_880_p1;
assign grp_fu_2840_p_opcode = 2'd0;
assign grp_fu_2844_p_ce = 1'b1;
assign grp_fu_2844_p_din0 = grp_fu_885_p0;
assign grp_fu_2844_p_din1 = grp_fu_885_p1;
assign grp_fu_2844_p_opcode = 2'd0;
assign grp_fu_2872_p_ce = 1'b1;
assign grp_fu_2872_p_din0 = grp_fu_890_p0;
assign grp_fu_2872_p_din1 = grp_fu_890_p1;
assign grp_fu_2876_p_ce = 1'b1;
assign grp_fu_2876_p_din0 = grp_fu_894_p0;
assign grp_fu_2876_p_din1 = grp_fu_894_p1;
assign lshr_ln1_fu_1042_p4 = {{empty_fu_1036_p2[7:1]}};
assign lshr_ln85_10_fu_1631_p4 = {{add_ln85_18_fu_1626_p2[7:1]}};
assign lshr_ln85_11_fu_1408_p4 = {{empty_48_fu_1403_p2[7:1]}};
assign lshr_ln85_12_fu_1671_p4 = {{add_ln85_22_fu_1666_p2[7:1]}};
assign lshr_ln85_13_fu_1511_p4 = {{empty_49_fu_1506_p2[7:1]}};
assign lshr_ln85_14_fu_1691_p4 = {{add_ln85_26_fu_1686_p2[7:1]}};
assign lshr_ln85_1_fu_1471_p4 = {{add_ln85_fu_1466_p2[7:1]}};
assign lshr_ln85_2_fu_1119_p4 = {{empty_43_fu_1114_p2[7:1]}};
assign lshr_ln85_3_fu_1491_p4 = {{add_ln85_3_fu_1486_p2[7:1]}};
assign lshr_ln85_4_fu_1181_p4 = {{empty_44_fu_1176_p2[7:1]}};
assign lshr_ln85_5_fu_1551_p4 = {{add_ln85_6_fu_1546_p2[7:1]}};
assign lshr_ln85_6_fu_1235_p4 = {{empty_45_fu_1230_p2[7:1]}};
assign lshr_ln85_7_fu_1571_p4 = {{add_ln85_10_fu_1566_p2[7:1]}};
assign lshr_ln85_8_fu_1299_p4 = {{empty_46_fu_1294_p2[7:1]}};
assign lshr_ln85_9_fu_1611_p4 = {{add_ln85_14_fu_1606_p2[7:1]}};
assign lshr_ln85_s_fu_1364_p4 = {{empty_47_fu_1359_p2[7:1]}};
assign lshr_ln_fu_956_p4 = {{ap_sig_allocacmp_i_10[6:1]}};
assign or_ln3_fu_1016_p3 = {{tmp_16_fu_976_p4}, {1'd1}};
assign or_ln4_fu_1067_p3 = {{tmp_s_fu_1057_p4}, {1'd1}};
assign or_ln83_1_fu_1150_p4 = {{{tmp_38_fu_1134_p4}, {1'd1}}, {tmp_17_fu_1143_p3}};
assign or_ln83_2_fu_1196_p3 = {{tmp_38_fu_1134_p4}, {2'd3}};
assign or_ln83_3_fu_1268_p4 = {{{tmp_40_fu_1250_p4}, {1'd1}}, {tmp_41_fu_1259_p4}};
assign or_ln83_4_fu_1321_p5 = {{{{tmp_40_fu_1250_p4}, {1'd1}}, {tmp_18_fu_1314_p3}}, {1'd1}};
assign or_ln83_5_fu_1379_p4 = {{{tmp_40_reg_2284}, {2'd3}}, {tmp_17_reg_2182}};
assign or_ln83_6_fu_1423_p3 = {{tmp_40_reg_2284}, {3'd7}};
assign or_ln85_1_fu_1091_p3 = {{tmp_37_fu_1081_p4}, {2'd3}};
assign or_ln85_2_fu_1758_p3 = {{tmp_39_reg_2157}, {3'd7}};
assign or_ln_fu_1726_p3 = {{tmp_reg_2081}, {1'd1}};
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = reg_930;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = reg_935;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign p_shl5_fu_986_p3 = {{tmp_16_fu_976_p4}, {2'd0}};
assign p_shl_fu_1028_p3 = {{tmp_16_fu_976_p4}, {3'd4}};
assign sub_ln85_fu_994_p2 = (p_shl5_fu_986_p3 - zext_ln81_1_fu_966_p1);
assign tmp_16_fu_976_p4 = {{ap_sig_allocacmp_i_10[5:1]}};
assign tmp_17_fu_1143_p3 = i_10_reg_2051[32'd1];
assign tmp_18_fu_1314_p3 = i_10_reg_2051[32'd2];
assign tmp_37_fu_1081_p4 = {{sub_ln85_fu_994_p2[6:2]}};
assign tmp_38_fu_1134_p4 = {{i_10_reg_2051[5:3]}};
assign tmp_40_fu_1250_p4 = {{i_10_reg_2051[5:4]}};
assign tmp_41_fu_1259_p4 = {{i_10_reg_2051[2:1]}};
assign tmp_s_fu_1057_p4 = {{ap_sig_allocacmp_i_10[5:2]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign zext_ln81_1_fu_966_p1 = lshr_ln_fu_956_p4;
assign zext_ln81_fu_970_p1 = lshr_ln_fu_956_p4;
assign zext_ln83_1_fu_1075_p1 = or_ln4_fu_1067_p3;
assign zext_ln83_2_fu_1160_p1 = or_ln83_1_fu_1150_p4;
assign zext_ln83_3_fu_1204_p1 = or_ln83_2_fu_1196_p3;
assign zext_ln83_4_fu_1278_p1 = or_ln83_3_fu_1268_p4;
assign zext_ln83_5_fu_1333_p1 = or_ln83_4_fu_1321_p5;
assign zext_ln83_6_fu_1387_p1 = or_ln83_5_fu_1379_p4;
assign zext_ln83_7_fu_1430_p1 = or_ln83_6_fu_1423_p3;
assign zext_ln83_fu_1024_p1 = or_ln3_fu_1016_p3;
assign zext_ln85_10_fu_1215_p1 = add_ln85_8_fu_1210_p2;
assign zext_ln85_11_fu_1245_p1 = lshr_ln85_6_fu_1235_p4;
assign zext_ln85_12_fu_1581_p1 = lshr_ln85_7_fu_1571_p4;
assign zext_ln85_13_fu_1289_p1 = add_ln85_12_fu_1284_p2;
assign zext_ln85_14_fu_1309_p1 = lshr_ln85_8_fu_1299_p4;
assign zext_ln85_15_fu_1621_p1 = lshr_ln85_9_fu_1611_p4;
assign zext_ln85_16_fu_1344_p1 = add_ln85_16_fu_1339_p2;
assign zext_ln85_17_fu_1374_p1 = lshr_ln85_s_fu_1364_p4;
assign zext_ln85_18_fu_1641_p1 = lshr_ln85_10_fu_1631_p4;
assign zext_ln85_19_fu_1398_p1 = add_ln85_20_fu_1393_p2;
assign zext_ln85_1_fu_1733_p1 = or_ln_fu_1726_p3;
assign zext_ln85_20_fu_1418_p1 = lshr_ln85_11_fu_1408_p4;
assign zext_ln85_21_fu_1681_p1 = lshr_ln85_12_fu_1671_p4;
assign zext_ln85_22_fu_1441_p1 = add_ln85_24_fu_1436_p2;
assign zext_ln85_23_fu_1521_p1 = lshr_ln85_13_fu_1511_p4;
assign zext_ln85_24_fu_1701_p1 = lshr_ln85_14_fu_1691_p4;
assign zext_ln85_25_fu_1945_p1 = add_ln85_27_fu_1940_p2;
assign zext_ln85_2_fu_1052_p1 = lshr_ln1_fu_1042_p4;
assign zext_ln85_3_fu_1481_p1 = lshr_ln85_1_fu_1471_p4;
assign zext_ln85_4_fu_1099_p1 = or_ln85_1_fu_1091_p3;
assign zext_ln85_5_fu_1129_p1 = lshr_ln85_2_fu_1119_p4;
assign zext_ln85_6_fu_1501_p1 = lshr_ln85_3_fu_1491_p4;
assign zext_ln85_7_fu_1171_p1 = add_ln85_5_fu_1166_p2;
assign zext_ln85_8_fu_1191_p1 = lshr_ln85_4_fu_1181_p4;
assign zext_ln85_9_fu_1561_p1 = lshr_ln85_5_fu_1551_p4;
assign zext_ln85_fu_1000_p1 = sub_ln85_fu_994_p2;
assign zext_ln87_10_fu_1890_p1 = add_ln85_19_fu_1885_p2;
assign zext_ln87_11_fu_1915_p1 = add_ln85_21_fu_1910_p2;
assign zext_ln87_12_fu_1925_p1 = add_ln85_23_fu_1920_p2;
assign zext_ln87_13_fu_1935_p1 = add_ln85_25_fu_1930_p2;
assign zext_ln87_1_fu_1795_p1 = add_ln85_2_fu_1790_p2;
assign zext_ln87_2_fu_1753_p1 = add_ln85_4_fu_1748_p2;
assign zext_ln87_3_fu_1765_p1 = or_ln85_2_fu_1758_p3;
assign zext_ln87_4_fu_1805_p1 = add_ln85_7_fu_1800_p2;
assign zext_ln87_5_fu_1815_p1 = add_ln85_9_fu_1810_p2;
assign zext_ln87_6_fu_1825_p1 = add_ln85_11_fu_1820_p2;
assign zext_ln87_7_fu_1860_p1 = add_ln85_13_fu_1855_p2;
assign zext_ln87_8_fu_1870_p1 = add_ln85_15_fu_1865_p2;
assign zext_ln87_9_fu_1880_p1 = add_ln85_17_fu_1875_p2;
assign zext_ln87_fu_1743_p1 = add_ln85_1_fu_1738_p2;
always @ (posedge ap_clk) begin
    zext_ln81_reg_2065[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2065_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2065_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2065_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    empty_reg_2091[0] <= 1'b1;
    zext_ln83_1_reg_2120[0] <= 1'b1;
    zext_ln83_1_reg_2120[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2120_pp0_iter1_reg[0] <= 1'b1;
    zext_ln83_1_reg_2120_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2120_pp0_iter2_reg[0] <= 1'b1;
    zext_ln83_1_reg_2120_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2120_pp0_iter3_reg[0] <= 1'b1;
    zext_ln83_1_reg_2120_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    or_ln85_1_reg_2126[1:0] <= 2'b11;
    zext_ln85_4_reg_2142[1:0] <= 2'b11;
    zext_ln85_4_reg_2142[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2187[1] <= 1'b1;
    zext_ln83_2_reg_2187[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2187_pp0_iter1_reg[1] <= 1'b1;
    zext_ln83_2_reg_2187_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2187_pp0_iter2_reg[1] <= 1'b1;
    zext_ln83_2_reg_2187_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2187_pp0_iter3_reg[1] <= 1'b1;
    zext_ln83_2_reg_2187_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_7_reg_2193[1:0] <= 2'b10;
    zext_ln85_7_reg_2193[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2213[1:0] <= 2'b11;
    zext_ln83_3_reg_2213[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2213_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2213_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2213_pp0_iter2_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2213_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2213_pp0_iter3_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2213_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_10_reg_2219[1:0] <= 2'b01;
    zext_ln85_10_reg_2219[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_2290[2] <= 1'b1;
    zext_ln83_4_reg_2290[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_2290_pp0_iter1_reg[2] <= 1'b1;
    zext_ln83_4_reg_2290_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_2290_pp0_iter2_reg[2] <= 1'b1;
    zext_ln83_4_reg_2290_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_2290_pp0_iter3_reg[2] <= 1'b1;
    zext_ln83_4_reg_2290_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_13_reg_2296[1:0] <= 2'b00;
    zext_ln85_13_reg_2296[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_2316[0] <= 1'b1;
    zext_ln83_5_reg_2316[2:2] <= 1'b1;
    zext_ln83_5_reg_2316[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_2316_pp0_iter1_reg[0] <= 1'b1;
    zext_ln83_5_reg_2316_pp0_iter1_reg[2:2] <= 1'b1;
    zext_ln83_5_reg_2316_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_2316_pp0_iter2_reg[0] <= 1'b1;
    zext_ln83_5_reg_2316_pp0_iter2_reg[2:2] <= 1'b1;
    zext_ln83_5_reg_2316_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_2316_pp0_iter3_reg[0] <= 1'b1;
    zext_ln83_5_reg_2316_pp0_iter3_reg[2:2] <= 1'b1;
    zext_ln83_5_reg_2316_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_16_reg_2322[1:0] <= 2'b11;
    zext_ln85_16_reg_2322[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_2392[2:1] <= 2'b11;
    zext_ln83_6_reg_2392[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_2392_pp0_iter1_reg[2:1] <= 2'b11;
    zext_ln83_6_reg_2392_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_2392_pp0_iter2_reg[2:1] <= 2'b11;
    zext_ln83_6_reg_2392_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_2392_pp0_iter3_reg[2:1] <= 2'b11;
    zext_ln83_6_reg_2392_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_19_reg_2398[1:0] <= 2'b10;
    zext_ln85_19_reg_2398[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_2418[2:0] <= 3'b111;
    zext_ln83_7_reg_2418[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_2418_pp0_iter1_reg[2:0] <= 3'b111;
    zext_ln83_7_reg_2418_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_2418_pp0_iter2_reg[2:0] <= 3'b111;
    zext_ln83_7_reg_2418_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_2418_pp0_iter3_reg[2:0] <= 3'b111;
    zext_ln83_7_reg_2418_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_22_reg_2424[1:0] <= 2'b01;
    zext_ln85_22_reg_2424[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
