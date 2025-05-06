
module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_0_address1,last_activations_0_ce1,last_activations_0_q1,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_1_address1,last_activations_1_ce1,last_activations_1_q1,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_2_address1,last_activations_2_ce1,last_activations_2_q1,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_3_address1,last_activations_3_ce1,last_activations_3_q1,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3088_p_din0,grp_fu_3088_p_din1,grp_fu_3088_p_dout0,grp_fu_3088_p_ce,grp_fu_3092_p_din0,grp_fu_3092_p_din1,grp_fu_3092_p_dout0,grp_fu_3092_p_ce,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce);  
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
output  [5:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [5:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [5:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [5:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [5:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [5:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [5:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [5:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [3:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [3:0] last_activations_0_address1;
output   last_activations_0_ce1;
input  [63:0] last_activations_0_q1;
output  [3:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [3:0] last_activations_1_address1;
output   last_activations_1_ce1;
input  [63:0] last_activations_1_q1;
output  [3:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [3:0] last_activations_2_address1;
output   last_activations_2_ce1;
input  [63:0] last_activations_2_q1;
output  [3:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [3:0] last_activations_3_address1;
output   last_activations_3_ce1;
input  [63:0] last_activations_3_q1;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
output  [63:0] grp_fu_3080_p_din0;
output  [63:0] grp_fu_3080_p_din1;
input  [63:0] grp_fu_3080_p_dout0;
output   grp_fu_3080_p_ce;
output  [63:0] grp_fu_3084_p_din0;
output  [63:0] grp_fu_3084_p_din1;
input  [63:0] grp_fu_3084_p_dout0;
output   grp_fu_3084_p_ce;
output  [63:0] grp_fu_3088_p_din0;
output  [63:0] grp_fu_3088_p_din1;
input  [63:0] grp_fu_3088_p_dout0;
output   grp_fu_3088_p_ce;
output  [63:0] grp_fu_3092_p_din0;
output  [63:0] grp_fu_3092_p_din1;
input  [63:0] grp_fu_3092_p_dout0;
output   grp_fu_3092_p_ce;
output  [63:0] grp_fu_3096_p_din0;
output  [63:0] grp_fu_3096_p_din1;
input  [63:0] grp_fu_3096_p_dout0;
output   grp_fu_3096_p_ce;
output  [63:0] grp_fu_3100_p_din0;
output  [63:0] grp_fu_3100_p_din1;
input  [63:0] grp_fu_3100_p_dout0;
output   grp_fu_3100_p_ce;
output  [63:0] grp_fu_3104_p_din0;
output  [63:0] grp_fu_3104_p_din1;
input  [63:0] grp_fu_3104_p_dout0;
output   grp_fu_3104_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_37_reg_2817;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [63:0] reg_1362;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
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
reg   [63:0] reg_1368;
reg   [63:0] reg_1374;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_1382;
reg   [63:0] reg_1390;
reg   [63:0] reg_1398;
reg   [63:0] reg_1406;
reg   [63:0] reg_1413;
reg   [63:0] reg_1420;
reg   [63:0] reg_1425;
reg   [6:0] i_13_reg_2806;
wire   [3:0] lshr_ln_fu_1446_p4;
reg   [3:0] lshr_ln_reg_2821;
reg   [63:0] last_activations_0_load_reg_2867;
wire   [0:0] tmp_38_fu_1499_p3;
reg   [0:0] tmp_38_reg_2873;
reg   [63:0] last_activations_1_load_reg_2918;
reg   [63:0] last_activations_2_load_reg_2925;
reg   [63:0] last_activations_3_load_reg_2932;
reg   [63:0] last_activations_0_load_1_reg_2939;
reg   [63:0] last_activations_1_load_1_reg_2946;
reg   [63:0] last_activations_2_load_1_reg_2953;
reg   [63:0] last_activations_3_load_1_reg_2959;
wire   [0:0] tmp_39_fu_1540_p3;
reg   [0:0] tmp_39_reg_2965;
reg   [63:0] last_activations_0_load_2_reg_3011;
reg   [63:0] last_activations_1_load_2_reg_3018;
reg   [63:0] last_activations_2_load_2_reg_3025;
reg   [63:0] last_activations_3_load_2_reg_3032;
reg   [63:0] last_activations_0_load_3_reg_3039;
reg   [63:0] last_activations_1_load_3_reg_3046;
reg   [63:0] last_activations_2_load_3_reg_3053;
reg   [63:0] last_activations_3_load_3_reg_3060;
reg   [63:0] last_activations_0_load_4_reg_3107;
reg   [63:0] last_activations_1_load_4_reg_3114;
reg   [63:0] last_activations_2_load_4_reg_3121;
reg   [63:0] last_activations_3_load_4_reg_3128;
reg   [63:0] last_activations_0_load_5_reg_3135;
reg   [63:0] last_activations_1_load_5_reg_3142;
reg   [63:0] last_activations_2_load_5_reg_3149;
reg   [63:0] last_activations_3_load_5_reg_3156;
reg   [63:0] last_activations_0_load_6_reg_3163;
reg   [63:0] last_activations_1_load_6_reg_3170;
reg   [63:0] last_activations_2_load_6_reg_3177;
reg   [63:0] last_activations_3_load_6_reg_3184;
reg   [63:0] last_activations_0_load_7_reg_3191;
reg   [63:0] last_activations_1_load_7_reg_3198;
reg   [63:0] last_activations_2_load_7_reg_3205;
reg   [63:0] last_activations_3_load_7_reg_3212;
wire   [7:0] empty_fu_1661_p2;
reg   [7:0] empty_reg_3219;
reg   [5:0] lshr_ln2_reg_3270;
reg   [63:0] mul_32_reg_3275;
wire   [63:0] zext_ln75_6_fu_1712_p1;
reg   [63:0] zext_ln75_6_reg_3280;
wire   [63:0] zext_ln75_14_fu_1753_p1;
reg   [63:0] zext_ln75_14_reg_3285;
reg   [63:0] mul_1_reg_3290;
reg   [2:0] tmp_49_reg_3295;
reg   [63:0] mul_6_1_reg_3300;
wire   [4:0] or_ln1_fu_1857_p3;
reg   [4:0] or_ln1_reg_3305;
wire   [63:0] zext_ln75_12_fu_1946_p1;
reg   [63:0] zext_ln75_12_reg_3310;
wire   [5:0] zext_ln75_7_fu_1961_p1;
reg   [5:0] zext_ln75_7_reg_3315;
wire   [63:0] zext_ln75_19_fu_2032_p1;
reg   [63:0] zext_ln75_19_reg_3324;
wire   [63:0] zext_ln75_21_fu_2092_p1;
reg   [63:0] zext_ln75_21_reg_3329;
wire   [63:0] zext_ln75_26_fu_2185_p1;
reg   [63:0] zext_ln75_26_reg_3334;
wire   [63:0] zext_ln75_28_fu_2225_p1;
reg   [63:0] zext_ln75_28_reg_3339;
wire   [63:0] zext_ln75_33_fu_2298_p1;
reg   [63:0] zext_ln75_33_reg_3344;
wire   [63:0] zext_ln75_35_fu_2358_p1;
reg   [63:0] zext_ln75_35_reg_3349;
wire   [63:0] zext_ln75_40_fu_2451_p1;
reg   [63:0] zext_ln75_40_reg_3354;
wire   [63:0] zext_ln75_42_fu_2491_p1;
reg   [63:0] zext_ln75_42_reg_3359;
wire   [63:0] zext_ln75_47_fu_2564_p1;
reg   [63:0] zext_ln75_47_reg_3364;
wire   [63:0] zext_ln75_49_fu_2624_p1;
reg   [63:0] zext_ln75_49_reg_3369;
reg   [63:0] mul_30_1_reg_3374;
reg   [63:0] mul_31_2_reg_3379;
wire   [63:0] zext_ln75_54_fu_2717_p1;
reg   [63:0] zext_ln75_54_reg_3384;
wire   [63:0] zext_ln75_56_fu_2757_p1;
reg   [63:0] zext_ln75_56_reg_3389;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln72_fu_1456_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast_fu_1482_p1;
wire   [63:0] p_cast4_fu_1516_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast5_fu_1532_p1;
wire   [63:0] p_cast6_fu_1566_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast7_fu_1593_p1;
wire   [63:0] p_cast8_fu_1609_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast9_fu_1624_p1;
wire   [63:0] zext_ln75_5_fu_1692_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln75_13_fu_1733_p1;
wire   [63:0] zext_ln75_fu_1775_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln75_1_fu_1782_p1;
wire   [63:0] zext_ln75_2_fu_1801_p1;
wire   [63:0] zext_ln75_3_fu_1821_p1;
wire   [63:0] zext_ln75_4_fu_1841_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln75_8_fu_1864_p1;
wire   [63:0] zext_ln75_9_fu_1886_p1;
wire   [63:0] zext_ln75_10_fu_1906_p1;
wire   [63:0] zext_ln75_11_fu_1926_p1;
wire   [63:0] zext_ln75_15_fu_1970_p1;
wire   [63:0] zext_ln75_17_fu_1992_p1;
wire   [63:0] zext_ln75_18_fu_2012_p1;
wire   [63:0] zext_ln75_16_fu_2052_p1;
wire   [63:0] zext_ln75_20_fu_2072_p1;
wire   [63:0] zext_ln75_22_fu_2103_p1;
wire   [63:0] zext_ln75_23_fu_2125_p1;
wire   [63:0] zext_ln75_24_fu_2145_p1;
wire   [63:0] zext_ln75_25_fu_2165_p1;
wire   [63:0] zext_ln75_27_fu_2205_p1;
wire   [63:0] zext_ln75_29_fu_2236_p1;
wire   [63:0] zext_ln75_31_fu_2258_p1;
wire   [63:0] zext_ln75_32_fu_2278_p1;
wire   [63:0] zext_ln75_30_fu_2318_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln75_34_fu_2338_p1;
wire   [63:0] zext_ln75_36_fu_2369_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln75_37_fu_2391_p1;
wire   [63:0] zext_ln75_38_fu_2411_p1;
wire   [63:0] zext_ln75_39_fu_2431_p1;
wire   [63:0] zext_ln75_41_fu_2471_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln75_43_fu_2502_p1;
wire   [63:0] zext_ln75_45_fu_2524_p1;
wire   [63:0] zext_ln75_46_fu_2544_p1;
wire   [63:0] zext_ln75_44_fu_2584_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln75_48_fu_2604_p1;
wire   [63:0] zext_ln75_50_fu_2635_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln75_51_fu_2657_p1;
wire   [63:0] zext_ln75_52_fu_2677_p1;
wire   [63:0] zext_ln75_53_fu_2697_p1;
wire   [63:0] zext_ln75_55_fu_2737_p1;
reg   [6:0] i_fu_212;
wire   [6:0] add_ln73_fu_1951_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
reg    last_activations_0_ce1_local;
reg   [3:0] last_activations_0_address1_local;
reg    last_activations_0_ce0_local;
reg   [3:0] last_activations_0_address0_local;
reg    last_activations_1_ce1_local;
reg   [3:0] last_activations_1_address1_local;
reg    last_activations_1_ce0_local;
reg   [3:0] last_activations_1_address0_local;
reg    last_activations_2_ce1_local;
reg   [3:0] last_activations_2_address1_local;
reg    last_activations_2_ce0_local;
reg   [3:0] last_activations_2_address0_local;
reg    last_activations_3_ce1_local;
reg   [3:0] last_activations_3_address1_local;
reg    last_activations_3_ce0_local;
reg   [3:0] last_activations_3_address0_local;
reg    delta_weights3_0_we1_local;
reg   [63:0] delta_weights3_0_d1_local;
reg    delta_weights3_0_ce1_local;
reg   [5:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [5:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [5:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [5:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [5:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [5:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [5:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [5:0] delta_weights3_3_address0_local;
reg   [63:0] grp_fu_1330_p0;
reg   [63:0] grp_fu_1330_p1;
reg   [63:0] grp_fu_1334_p0;
reg   [63:0] grp_fu_1334_p1;
reg   [63:0] grp_fu_1338_p0;
reg   [63:0] grp_fu_1338_p1;
reg   [63:0] grp_fu_1342_p0;
reg   [63:0] grp_fu_1342_p1;
reg   [63:0] grp_fu_1346_p0;
reg   [63:0] grp_fu_1346_p1;
reg   [63:0] grp_fu_1350_p0;
reg   [63:0] grp_fu_1350_p1;
reg   [63:0] grp_fu_1354_p0;
reg   [63:0] grp_fu_1354_p1;
reg   [63:0] grp_fu_1358_p0;
reg   [63:0] grp_fu_1358_p1;
wire   [2:0] tmp_s_fu_1464_p4;
wire   [3:0] tmp_48_fu_1474_p3;
wire   [1:0] tmp_50_fu_1490_p4;
wire   [3:0] tmp_51_fu_1506_p4;
wire   [3:0] tmp_52_fu_1524_p3;
wire   [1:0] tmp_53_fu_1547_p4;
wire   [3:0] tmp_54_fu_1556_p4;
wire   [0:0] tmp_40_fu_1574_p3;
wire   [3:0] tmp_55_fu_1581_p5;
wire   [3:0] tmp_56_fu_1601_p4;
wire   [3:0] tmp_57_fu_1617_p3;
wire   [4:0] tmp_fu_1632_p4;
wire   [5:0] or_ln_fu_1641_p3;
wire   [7:0] p_shl_fu_1653_p3;
wire   [7:0] or_ln73_cast_fu_1649_p1;
wire   [7:0] add_ln75_2_fu_1677_p2;
wire   [5:0] lshr_ln75_4_fu_1682_p4;
wire   [7:0] empty_160_fu_1697_p2;
wire   [5:0] lshr_ln75_5_fu_1702_p4;
wire   [7:0] add_ln75_5_fu_1718_p2;
wire   [5:0] lshr_ln75_s_fu_1723_p4;
wire   [7:0] empty_163_fu_1738_p2;
wire   [5:0] lshr_ln75_10_fu_1743_p4;
wire   [5:0] p_shl5_fu_1762_p3;
wire   [5:0] zext_ln72_1_fu_1759_p1;
wire   [5:0] sub_ln75_fu_1769_p2;
wire   [7:0] add_ln75_fu_1786_p2;
wire   [5:0] lshr_ln75_1_fu_1791_p4;
wire   [7:0] add_ln75_1_fu_1806_p2;
wire   [5:0] lshr_ln75_2_fu_1811_p4;
wire   [7:0] empty_159_fu_1826_p2;
wire   [5:0] lshr_ln75_3_fu_1831_p4;
wire   [7:0] empty_161_fu_1871_p2;
wire   [5:0] lshr_ln75_6_fu_1876_p4;
wire   [7:0] add_ln75_3_fu_1891_p2;
wire   [5:0] lshr_ln75_7_fu_1896_p4;
wire   [7:0] add_ln75_4_fu_1911_p2;
wire   [5:0] lshr_ln75_8_fu_1916_p4;
wire   [7:0] empty_162_fu_1931_p2;
wire   [5:0] lshr_ln75_9_fu_1936_p4;
wire   [5:0] add_ln75_6_fu_1964_p2;
wire   [7:0] add_ln75_7_fu_1977_p2;
wire   [5:0] lshr_ln75_12_fu_1982_p4;
wire   [7:0] add_ln75_8_fu_1997_p2;
wire   [5:0] lshr_ln75_13_fu_2002_p4;
wire   [7:0] empty_165_fu_2017_p2;
wire   [5:0] lshr_ln75_14_fu_2022_p4;
wire   [7:0] empty_164_fu_2037_p2;
wire   [5:0] lshr_ln75_11_fu_2042_p4;
wire   [7:0] add_ln75_9_fu_2057_p2;
wire   [5:0] lshr_ln75_15_fu_2062_p4;
wire   [7:0] empty_166_fu_2077_p2;
wire   [5:0] lshr_ln75_16_fu_2082_p4;
wire   [5:0] add_ln75_10_fu_2098_p2;
wire   [7:0] empty_167_fu_2110_p2;
wire   [5:0] lshr_ln75_17_fu_2115_p4;
wire   [7:0] add_ln75_11_fu_2130_p2;
wire   [5:0] lshr_ln75_18_fu_2135_p4;
wire   [7:0] add_ln75_12_fu_2150_p2;
wire   [5:0] lshr_ln75_19_fu_2155_p4;
wire   [7:0] empty_168_fu_2170_p2;
wire   [5:0] lshr_ln75_20_fu_2175_p4;
wire   [7:0] add_ln75_13_fu_2190_p2;
wire   [5:0] lshr_ln75_21_fu_2195_p4;
wire   [7:0] empty_169_fu_2210_p2;
wire   [5:0] lshr_ln75_22_fu_2215_p4;
wire   [5:0] add_ln75_14_fu_2231_p2;
wire   [7:0] add_ln75_15_fu_2243_p2;
wire   [5:0] lshr_ln75_24_fu_2248_p4;
wire   [7:0] add_ln75_16_fu_2263_p2;
wire   [5:0] lshr_ln75_25_fu_2268_p4;
wire   [7:0] empty_171_fu_2283_p2;
wire   [5:0] lshr_ln75_26_fu_2288_p4;
wire   [7:0] empty_170_fu_2303_p2;
wire   [5:0] lshr_ln75_23_fu_2308_p4;
wire   [7:0] add_ln75_17_fu_2323_p2;
wire   [5:0] lshr_ln75_27_fu_2328_p4;
wire   [7:0] empty_172_fu_2343_p2;
wire   [5:0] lshr_ln75_28_fu_2348_p4;
wire   [5:0] add_ln75_18_fu_2364_p2;
wire   [7:0] empty_173_fu_2376_p2;
wire   [5:0] lshr_ln75_29_fu_2381_p4;
wire   [7:0] add_ln75_19_fu_2396_p2;
wire   [5:0] lshr_ln75_30_fu_2401_p4;
wire   [7:0] add_ln75_20_fu_2416_p2;
wire   [5:0] lshr_ln75_31_fu_2421_p4;
wire   [7:0] empty_174_fu_2436_p2;
wire   [5:0] lshr_ln75_32_fu_2441_p4;
wire   [7:0] add_ln75_21_fu_2456_p2;
wire   [5:0] lshr_ln75_33_fu_2461_p4;
wire   [7:0] empty_175_fu_2476_p2;
wire   [5:0] lshr_ln75_34_fu_2481_p4;
wire   [5:0] add_ln75_22_fu_2497_p2;
wire   [7:0] add_ln75_23_fu_2509_p2;
wire   [5:0] lshr_ln75_36_fu_2514_p4;
wire   [7:0] add_ln75_24_fu_2529_p2;
wire   [5:0] lshr_ln75_37_fu_2534_p4;
wire   [7:0] empty_177_fu_2549_p2;
wire   [5:0] lshr_ln75_38_fu_2554_p4;
wire   [7:0] empty_176_fu_2569_p2;
wire   [5:0] lshr_ln75_35_fu_2574_p4;
wire   [7:0] add_ln75_25_fu_2589_p2;
wire   [5:0] lshr_ln75_39_fu_2594_p4;
wire   [7:0] empty_178_fu_2609_p2;
wire   [5:0] lshr_ln75_40_fu_2614_p4;
wire   [5:0] add_ln75_26_fu_2630_p2;
wire   [7:0] empty_179_fu_2642_p2;
wire   [5:0] lshr_ln75_41_fu_2647_p4;
wire   [7:0] add_ln75_27_fu_2662_p2;
wire   [5:0] lshr_ln75_42_fu_2667_p4;
wire   [7:0] add_ln75_28_fu_2682_p2;
wire   [5:0] lshr_ln75_43_fu_2687_p4;
wire   [7:0] empty_180_fu_2702_p2;
wire   [5:0] lshr_ln75_44_fu_2707_p4;
wire   [7:0] add_ln75_29_fu_2722_p2;
wire   [5:0] lshr_ln75_45_fu_2727_p4;
wire   [7:0] empty_181_fu_2742_p2;
wire   [5:0] lshr_ln75_46_fu_2747_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_212 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_212 <= 7'd0;
    end else if (((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_212 <= add_ln73_fu_1951_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        empty_reg_3219[7 : 1] <= empty_fu_1661_p2[7 : 1];
        lshr_ln2_reg_3270 <= {{empty_fu_1661_p2[7:2]}};
        zext_ln75_54_reg_3384[5 : 0] <= zext_ln75_54_fu_2717_p1[5 : 0];
        zext_ln75_56_reg_3389[5 : 0] <= zext_ln75_56_fu_2757_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_13_reg_2806 <= ap_sig_allocacmp_i_13;
        lshr_ln_reg_2821 <= {{ap_sig_allocacmp_i_13[5:2]}};
        tmp_37_reg_2817 <= ap_sig_allocacmp_i_13[32'd6];
        zext_ln75_19_reg_3324[5 : 0] <= zext_ln75_19_fu_2032_p1[5 : 0];
        zext_ln75_7_reg_3315[4 : 2] <= zext_ln75_7_fu_1961_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_0_load_1_reg_2939 <= last_activations_0_q0;
        last_activations_0_load_reg_2867 <= last_activations_0_q1;
        last_activations_1_load_1_reg_2946 <= last_activations_1_q0;
        last_activations_1_load_reg_2918 <= last_activations_1_q1;
        last_activations_2_load_1_reg_2953 <= last_activations_2_q0;
        last_activations_2_load_reg_2925 <= last_activations_2_q1;
        last_activations_3_load_1_reg_2959 <= last_activations_3_q0;
        last_activations_3_load_reg_2932 <= last_activations_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        last_activations_0_load_2_reg_3011 <= last_activations_0_q1;
        last_activations_0_load_3_reg_3039 <= last_activations_0_q0;
        last_activations_1_load_2_reg_3018 <= last_activations_1_q1;
        last_activations_1_load_3_reg_3046 <= last_activations_1_q0;
        last_activations_2_load_2_reg_3025 <= last_activations_2_q1;
        last_activations_2_load_3_reg_3053 <= last_activations_2_q0;
        last_activations_3_load_2_reg_3032 <= last_activations_3_q1;
        last_activations_3_load_3_reg_3060 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        last_activations_0_load_4_reg_3107 <= last_activations_0_q1;
        last_activations_0_load_5_reg_3135 <= last_activations_0_q0;
        last_activations_1_load_4_reg_3114 <= last_activations_1_q1;
        last_activations_1_load_5_reg_3142 <= last_activations_1_q0;
        last_activations_2_load_4_reg_3121 <= last_activations_2_q1;
        last_activations_2_load_5_reg_3149 <= last_activations_2_q0;
        last_activations_3_load_4_reg_3128 <= last_activations_3_q1;
        last_activations_3_load_5_reg_3156 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        last_activations_0_load_6_reg_3163 <= last_activations_0_q1;
        last_activations_0_load_7_reg_3191 <= last_activations_0_q0;
        last_activations_1_load_6_reg_3170 <= last_activations_1_q1;
        last_activations_1_load_7_reg_3198 <= last_activations_1_q0;
        last_activations_2_load_6_reg_3177 <= last_activations_2_q1;
        last_activations_2_load_7_reg_3205 <= last_activations_2_q0;
        last_activations_3_load_6_reg_3184 <= last_activations_3_q1;
        last_activations_3_load_7_reg_3212 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_1_reg_3290 <= grp_fu_3080_p_dout0;
        mul_32_reg_3275 <= grp_fu_3076_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_30_1_reg_3374 <= grp_fu_3088_p_dout0;
        mul_31_2_reg_3379 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_6_1_reg_3300 <= grp_fu_3100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        or_ln1_reg_3305[4 : 2] <= or_ln1_fu_1857_p3[4 : 2];
        zext_ln75_12_reg_3310[5 : 0] <= zext_ln75_12_fu_1946_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1362 <= grp_fu_3076_p_dout0;
        reg_1368 <= grp_fu_3080_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1374 <= grp_fu_3084_p_dout0;
        reg_1390 <= grp_fu_3092_p_dout0;
        reg_1398 <= grp_fu_3096_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1382 <= grp_fu_3088_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1406 <= grp_fu_3100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1413 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1420 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1425 <= grp_fu_3088_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_38_reg_2873 <= i_13_reg_2806[32'd2];
        zext_ln75_21_reg_3329[5 : 0] <= zext_ln75_21_fu_2092_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_39_reg_2965 <= i_13_reg_2806[32'd5];
        zext_ln75_26_reg_3334[5 : 0] <= zext_ln75_26_fu_2185_p1[5 : 0];
        zext_ln75_28_reg_3339[5 : 0] <= zext_ln75_28_fu_2225_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_49_reg_3295 <= {{sub_ln75_fu_1769_p2[4:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        zext_ln75_14_reg_3285[5 : 0] <= zext_ln75_14_fu_1753_p1[5 : 0];
        zext_ln75_6_reg_3280[5 : 0] <= zext_ln75_6_fu_1712_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln75_33_reg_3344[5 : 0] <= zext_ln75_33_fu_2298_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln75_35_reg_3349[5 : 0] <= zext_ln75_35_fu_2358_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln75_40_reg_3354[5 : 0] <= zext_ln75_40_fu_2451_p1[5 : 0];
        zext_ln75_42_reg_3359[5 : 0] <= zext_ln75_42_fu_2491_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln75_47_reg_3364[5 : 0] <= zext_ln75_47_fu_2564_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln75_49_reg_3369[5 : 0] <= zext_ln75_49_fu_2624_p1[5 : 0];
    end
end
always @ (*) begin
    if (((tmp_37_reg_2817 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_212;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_0_address0_local = zext_ln75_55_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_0_address0_local = zext_ln75_50_fu_2635_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_0_address0_local = zext_ln75_45_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address0_local = zext_ln75_41_fu_2471_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address0_local = zext_ln75_36_fu_2369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address0_local = zext_ln75_31_fu_2258_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address0_local = zext_ln75_27_fu_2205_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address0_local = zext_ln75_22_fu_2103_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address0_local = zext_ln75_17_fu_1992_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_address0_local = zext_ln75_10_fu_1906_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_0_address0_local = zext_ln75_2_fu_1801_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_address0_local = zext_ln75_13_fu_1733_p1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_0_address1_local = zext_ln75_52_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_0_address1_local = zext_ln75_48_fu_2604_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_0_address1_local = zext_ln75_43_fu_2502_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address1_local = zext_ln75_38_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address1_local = zext_ln75_34_fu_2338_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address1_local = zext_ln75_29_fu_2236_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address1_local = zext_ln75_24_fu_2145_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address1_local = zext_ln75_20_fu_2072_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address1_local = zext_ln75_15_fu_1970_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_address1_local = zext_ln75_8_fu_1864_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_0_address1_local = zext_ln75_fu_1775_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_address1_local = zext_ln75_5_fu_1692_p1;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_0_d0_local = reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_d0_local = reg_1382;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_0_d0_local = reg_1374;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_d0_local = reg_1398;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_d1_local = reg_1413;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_0_d1_local = reg_1362;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_d1_local = reg_1374;
    end else begin
        delta_weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_1_address0_local = zext_ln75_56_fu_2757_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_1_address0_local = zext_ln75_50_fu_2635_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_1_address0_local = zext_ln75_46_fu_2544_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address0_local = zext_ln75_42_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address0_local = zext_ln75_36_fu_2369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address0_local = zext_ln75_32_fu_2278_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address0_local = zext_ln75_28_fu_2225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address0_local = zext_ln75_22_fu_2103_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address0_local = zext_ln75_18_fu_2012_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_address0_local = zext_ln75_11_fu_1926_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_1_address0_local = zext_ln75_3_fu_1821_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_address0_local = zext_ln75_14_fu_1753_p1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_1_address1_local = zext_ln75_53_fu_2697_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_1_address1_local = zext_ln75_49_fu_2624_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_1_address1_local = zext_ln75_43_fu_2502_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address1_local = zext_ln75_39_fu_2431_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address1_local = zext_ln75_35_fu_2358_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address1_local = zext_ln75_29_fu_2236_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address1_local = zext_ln75_25_fu_2165_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address1_local = zext_ln75_21_fu_2092_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address1_local = zext_ln75_15_fu_1970_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_address1_local = zext_ln75_8_fu_1864_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_1_address1_local = zext_ln75_fu_1775_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_address1_local = zext_ln75_6_fu_1712_p1;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_1_d0_local = reg_1398;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_d0_local = reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_1_d0_local = reg_1382;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_d0_local = reg_1406;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_d1_local = reg_1362;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_1_d1_local = reg_1368;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_d1_local = reg_1382;
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_2_address0_local = zext_ln75_56_fu_2757_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_2_address0_local = zext_ln75_50_fu_2635_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_2_address0_local = zext_ln75_47_fu_2564_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_2_address0_local = zext_ln75_42_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_2_address0_local = zext_ln75_36_fu_2369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_2_address0_local = zext_ln75_33_fu_2298_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_2_address0_local = zext_ln75_28_fu_2225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_address0_local = zext_ln75_22_fu_2103_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_2_address0_local = zext_ln75_19_fu_2032_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_2_address0_local = zext_ln75_12_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_2_address0_local = zext_ln75_4_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_2_address0_local = zext_ln75_14_fu_1753_p1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_2_address1_local = zext_ln75_54_fu_2717_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_2_address1_local = zext_ln75_49_fu_2624_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_2_address1_local = zext_ln75_43_fu_2502_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_2_address1_local = zext_ln75_40_fu_2451_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_2_address1_local = zext_ln75_35_fu_2358_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_2_address1_local = zext_ln75_29_fu_2236_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_2_address1_local = zext_ln75_26_fu_2185_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_address1_local = zext_ln75_21_fu_2092_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_2_address1_local = zext_ln75_15_fu_1970_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_2_address1_local = zext_ln75_8_fu_1864_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_2_address1_local = zext_ln75_fu_1775_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_2_address1_local = zext_ln75_6_fu_1712_p1;
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_2_d0_local = reg_1406;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_2_d0_local = reg_1398;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_2_d0_local = reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_2_d0_local = reg_1413;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_2_d1_local = reg_1374;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_2_d1_local = reg_1368;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_2_d1_local = mul_32_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_2_d1_local = reg_1390;
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_3_address0_local = zext_ln75_56_reg_3389;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_3_address0_local = zext_ln75_51_fu_2657_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_3_address0_local = zext_ln75_47_reg_3364;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_3_address0_local = zext_ln75_42_reg_3359;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_3_address0_local = zext_ln75_37_fu_2391_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_3_address0_local = zext_ln75_33_reg_3344;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_3_address0_local = zext_ln75_28_reg_3339;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_3_address0_local = zext_ln75_23_fu_2125_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_address0_local = zext_ln75_19_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_3_address0_local = zext_ln75_14_reg_3285;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_3_address0_local = zext_ln75_9_fu_1886_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_3_address0_local = zext_ln75_4_fu_1841_p1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_3_address1_local = zext_ln75_54_reg_3384;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_3_address1_local = zext_ln75_49_reg_3369;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_3_address1_local = zext_ln75_44_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_3_address1_local = zext_ln75_40_reg_3354;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_3_address1_local = zext_ln75_35_reg_3349;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_3_address1_local = zext_ln75_30_fu_2318_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_3_address1_local = zext_ln75_26_reg_3334;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_3_address1_local = zext_ln75_21_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_address1_local = zext_ln75_16_fu_2052_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_3_address1_local = zext_ln75_12_reg_3310;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_3_address1_local = zext_ln75_6_reg_3280;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_3_address1_local = zext_ln75_1_fu_1782_p1;
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_3_d0_local = mul_31_2_reg_3379;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights3_3_d0_local = reg_1413;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_3_d0_local = reg_1420;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_3_d0_local = reg_1374;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_3_d0_local = reg_1398;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_3_d1_local = mul_30_1_reg_3374;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_3_d1_local = reg_1425;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights3_3_d1_local = reg_1382;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_3_d1_local = mul_6_1_reg_3300;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_3_d1_local = reg_1406;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_3_d1_local = mul_1_reg_3290;
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_37_reg_2817 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1330_p0 = last_activations_1_load_7_reg_3198;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1330_p0 = last_activations_2_load_6_reg_3177;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1330_p0 = last_activations_0_load_6_reg_3163;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1330_p0 = last_activations_1_load_5_reg_3142;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1330_p0 = last_activations_2_load_4_reg_3121;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1330_p0 = last_activations_0_load_4_reg_3107;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1330_p0 = last_activations_1_load_3_reg_3046;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1330_p0 = last_activations_2_load_2_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1330_p0 = last_activations_0_load_2_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1330_p0 = last_activations_0_load_1_reg_2939;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1330_p0 = last_activations_0_load_reg_2867;
    end else begin
        grp_fu_1330_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1330_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1330_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1330_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_1330_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1334_p0 = last_activations_1_load_7_reg_3198;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1334_p0 = last_activations_3_load_6_reg_3184;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1334_p0 = last_activations_0_load_6_reg_3163;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1334_p0 = last_activations_1_load_5_reg_3142;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1334_p0 = last_activations_3_load_4_reg_3128;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1334_p0 = last_activations_0_load_4_reg_3107;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1334_p0 = last_activations_1_load_3_reg_3046;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1334_p0 = last_activations_3_load_2_reg_3032;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1334_p0 = last_activations_0_load_2_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1334_p0 = last_activations_0_load_1_reg_2939;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1334_p0 = last_activations_1_load_reg_2918;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1334_p0 = last_activations_0_load_reg_2867;
    end else begin
        grp_fu_1334_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1334_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1334_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1334_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_1334_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1338_p0 = last_activations_2_load_7_reg_3205;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1338_p0 = last_activations_3_load_6_reg_3184;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1338_p0 = last_activations_0_load_6_reg_3163;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1338_p0 = last_activations_2_load_5_reg_3149;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1338_p0 = last_activations_3_load_4_reg_3128;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1338_p0 = last_activations_0_load_4_reg_3107;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1338_p0 = last_activations_2_load_3_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1338_p0 = last_activations_3_load_2_reg_3032;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1338_p0 = last_activations_0_load_2_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1338_p0 = last_activations_1_load_1_reg_2946;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1338_p0 = last_activations_1_load_reg_2918;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1338_p0 = last_activations_2_load_reg_2925;
    end else begin
        grp_fu_1338_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1338_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1338_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1338_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_1338_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1342_p0 = last_activations_2_load_7_reg_3205;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1342_p0 = last_activations_3_load_6_reg_3184;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1342_p0 = last_activations_1_load_6_reg_3170;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1342_p0 = last_activations_2_load_5_reg_3149;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1342_p0 = last_activations_3_load_4_reg_3128;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1342_p0 = last_activations_1_load_4_reg_3114;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1342_p0 = last_activations_2_load_3_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1342_p0 = last_activations_3_load_2_reg_3032;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1342_p0 = last_activations_1_load_2_reg_3018;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1342_p0 = last_activations_1_load_1_reg_2946;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1342_p0 = last_activations_1_load_reg_2918;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1342_p0 = last_activations_3_load_reg_2932;
    end else begin
        grp_fu_1342_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1342_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1342_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1342_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_1342_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1346_p0 = last_activations_2_load_7_reg_3205;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1346_p0 = last_activations_0_load_7_reg_3191;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1346_p0 = last_activations_1_load_6_reg_3170;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1346_p0 = last_activations_2_load_5_reg_3149;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1346_p0 = last_activations_0_load_5_reg_3135;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1346_p0 = last_activations_1_load_4_reg_3114;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1346_p0 = last_activations_2_load_3_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1346_p0 = last_activations_0_load_3_reg_3039;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1346_p0 = last_activations_1_load_2_reg_3018;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1346_p0 = last_activations_1_load_1_reg_2946;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1346_p0 = last_activations_2_load_reg_2925;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1346_p0 = last_activations_3_load_reg_2932;
    end else begin
        grp_fu_1346_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1346_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1346_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1346_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_1346_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1350_p0 = last_activations_3_load_7_reg_3212;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1350_p0 = last_activations_0_load_7_reg_3191;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1350_p0 = last_activations_1_load_6_reg_3170;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1350_p0 = last_activations_3_load_5_reg_3156;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1350_p0 = last_activations_0_load_5_reg_3135;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1350_p0 = last_activations_1_load_4_reg_3114;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1350_p0 = last_activations_3_load_3_reg_3060;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1350_p0 = last_activations_0_load_3_reg_3039;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1350_p0 = last_activations_1_load_2_reg_3018;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1350_p0 = last_activations_2_load_reg_2925;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1350_p0 = last_activations_2_load_1_reg_2953;
    end else begin
        grp_fu_1350_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1350_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1350_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1350_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_1350_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1354_p0 = last_activations_3_load_7_reg_3212;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1354_p0 = last_activations_0_load_7_reg_3191;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1354_p0 = last_activations_2_load_6_reg_3177;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1354_p0 = last_activations_3_load_5_reg_3156;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1354_p0 = last_activations_0_load_5_reg_3135;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1354_p0 = last_activations_2_load_4_reg_3121;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1354_p0 = last_activations_3_load_3_reg_3060;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1354_p0 = last_activations_0_load_3_reg_3039;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1354_p0 = last_activations_2_load_2_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1354_p0 = last_activations_2_load_1_reg_2953;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1354_p0 = last_activations_3_load_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1354_p0 = last_activations_3_load_1_reg_2959;
    end else begin
        grp_fu_1354_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1354_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1354_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1354_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_1354_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1358_p0 = last_activations_3_load_7_reg_3212;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1358_p0 = last_activations_1_load_7_reg_3198;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1358_p0 = last_activations_2_load_6_reg_3177;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1358_p0 = last_activations_3_load_5_reg_3156;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1358_p0 = last_activations_1_load_5_reg_3142;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1358_p0 = last_activations_2_load_4_reg_3121;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1358_p0 = last_activations_3_load_3_reg_3060;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1358_p0 = last_activations_1_load_3_reg_3046;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1358_p0 = last_activations_2_load_2_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1358_p0 = last_activations_0_load_1_reg_2939;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1358_p0 = last_activations_3_load_1_reg_2959;
    end else begin
        grp_fu_1358_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1358_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1358_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1358_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_1358_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_0_address0_local = p_cast9_fu_1624_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_0_address0_local = p_cast7_fu_1593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address0_local = p_cast5_fu_1532_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address0_local = p_cast_fu_1482_p1;
        end else begin
            last_activations_0_address0_local = 'bx;
        end
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_0_address1_local = p_cast8_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_0_address1_local = p_cast6_fu_1566_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address1_local = p_cast4_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address1_local = zext_ln72_fu_1456_p1;
        end else begin
            last_activations_0_address1_local = 'bx;
        end
    end else begin
        last_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce1_local = 1'b1;
    end else begin
        last_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_1_address0_local = p_cast9_fu_1624_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_1_address0_local = p_cast7_fu_1593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address0_local = p_cast5_fu_1532_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address0_local = p_cast_fu_1482_p1;
        end else begin
            last_activations_1_address0_local = 'bx;
        end
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_1_address1_local = p_cast8_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_1_address1_local = p_cast6_fu_1566_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address1_local = p_cast4_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address1_local = zext_ln72_fu_1456_p1;
        end else begin
            last_activations_1_address1_local = 'bx;
        end
    end else begin
        last_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce1_local = 1'b1;
    end else begin
        last_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_2_address0_local = p_cast9_fu_1624_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_2_address0_local = p_cast7_fu_1593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_2_address0_local = p_cast5_fu_1532_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_2_address0_local = p_cast_fu_1482_p1;
        end else begin
            last_activations_2_address0_local = 'bx;
        end
    end else begin
        last_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_2_address1_local = p_cast8_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_2_address1_local = p_cast6_fu_1566_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_2_address1_local = p_cast4_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_2_address1_local = zext_ln72_fu_1456_p1;
        end else begin
            last_activations_2_address1_local = 'bx;
        end
    end else begin
        last_activations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_2_ce1_local = 1'b1;
    end else begin
        last_activations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_3_address0_local = p_cast9_fu_1624_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_3_address0_local = p_cast7_fu_1593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_3_address0_local = p_cast5_fu_1532_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_3_address0_local = p_cast_fu_1482_p1;
        end else begin
            last_activations_3_address0_local = 'bx;
        end
    end else begin
        last_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_3_address1_local = p_cast8_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_3_address1_local = p_cast6_fu_1566_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_3_address1_local = p_cast4_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_3_address1_local = zext_ln72_fu_1456_p1;
        end else begin
            last_activations_3_address1_local = 'bx;
        end
    end else begin
        last_activations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_3_ce1_local = 1'b1;
    end else begin
        last_activations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
assign add_ln73_fu_1951_p2 = (i_13_reg_2806 + 7'd32);
assign add_ln75_10_fu_2098_p2 = (zext_ln75_7_reg_3315 + 6'd6);
assign add_ln75_11_fu_2130_p2 = (empty_reg_3219 + 8'd37);
assign add_ln75_12_fu_2150_p2 = (empty_reg_3219 + 8'd38);
assign add_ln75_13_fu_2190_p2 = (empty_reg_3219 + 8'd41);
assign add_ln75_14_fu_2231_p2 = (zext_ln75_7_reg_3315 + 6'd9);
assign add_ln75_15_fu_2243_p2 = (empty_reg_3219 + 8'd49);
assign add_ln75_16_fu_2263_p2 = (empty_reg_3219 + 8'd50);
assign add_ln75_17_fu_2323_p2 = (empty_reg_3219 + 8'd53);
assign add_ln75_18_fu_2364_p2 = (zext_ln75_7_reg_3315 + 6'd12);
assign add_ln75_19_fu_2396_p2 = (empty_reg_3219 + 8'd61);
assign add_ln75_1_fu_1806_p2 = (empty_reg_3219 + 8'd2);
assign add_ln75_20_fu_2416_p2 = (empty_reg_3219 + 8'd62);
assign add_ln75_21_fu_2456_p2 = (empty_reg_3219 + 8'd65);
assign add_ln75_22_fu_2497_p2 = (zext_ln75_7_reg_3315 + 6'd15);
assign add_ln75_23_fu_2509_p2 = (empty_reg_3219 + 8'd73);
assign add_ln75_24_fu_2529_p2 = (empty_reg_3219 + 8'd74);
assign add_ln75_25_fu_2589_p2 = (empty_reg_3219 + 8'd77);
assign add_ln75_26_fu_2630_p2 = (zext_ln75_7_reg_3315 + 6'd18);
assign add_ln75_27_fu_2662_p2 = (empty_reg_3219 + 8'd85);
assign add_ln75_28_fu_2682_p2 = (empty_reg_3219 + 8'd86);
assign add_ln75_29_fu_2722_p2 = (empty_reg_3219 + 8'd89);
assign add_ln75_2_fu_1677_p2 = (empty_reg_3219 + 8'd5);
assign add_ln75_3_fu_1891_p2 = (empty_reg_3219 + 8'd13);
assign add_ln75_4_fu_1911_p2 = (empty_reg_3219 + 8'd14);
assign add_ln75_5_fu_1718_p2 = (empty_reg_3219 + 8'd17);
assign add_ln75_6_fu_1964_p2 = (zext_ln75_7_fu_1961_p1 + 6'd3);
assign add_ln75_7_fu_1977_p2 = (empty_reg_3219 + 8'd25);
assign add_ln75_8_fu_1997_p2 = (empty_reg_3219 + 8'd26);
assign add_ln75_9_fu_2057_p2 = (empty_reg_3219 + 8'd29);
assign add_ln75_fu_1786_p2 = (empty_reg_3219 + 8'd1);
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
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = delta_weights3_0_d1_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign empty_159_fu_1826_p2 = (empty_reg_3219 + 8'd3);
assign empty_160_fu_1697_p2 = (empty_reg_3219 + 8'd6);
assign empty_161_fu_1871_p2 = (empty_reg_3219 + 8'd12);
assign empty_162_fu_1931_p2 = (empty_reg_3219 + 8'd15);
assign empty_163_fu_1738_p2 = (empty_reg_3219 + 8'd18);
assign empty_164_fu_2037_p2 = (empty_reg_3219 + 8'd24);
assign empty_165_fu_2017_p2 = (empty_reg_3219 + 8'd27);
assign empty_166_fu_2077_p2 = (empty_reg_3219 + 8'd30);
assign empty_167_fu_2110_p2 = (empty_reg_3219 + 8'd36);
assign empty_168_fu_2170_p2 = (empty_reg_3219 + 8'd39);
assign empty_169_fu_2210_p2 = (empty_reg_3219 + 8'd42);
assign empty_170_fu_2303_p2 = (empty_reg_3219 + 8'd48);
assign empty_171_fu_2283_p2 = (empty_reg_3219 + 8'd51);
assign empty_172_fu_2343_p2 = (empty_reg_3219 + 8'd54);
assign empty_173_fu_2376_p2 = (empty_reg_3219 + 8'd60);
assign empty_174_fu_2436_p2 = (empty_reg_3219 + 8'd63);
assign empty_175_fu_2476_p2 = (empty_reg_3219 + 8'd66);
assign empty_176_fu_2569_p2 = (empty_reg_3219 + 8'd72);
assign empty_177_fu_2549_p2 = (empty_reg_3219 + 8'd75);
assign empty_178_fu_2609_p2 = (empty_reg_3219 + 8'd78);
assign empty_179_fu_2642_p2 = (empty_reg_3219 + 8'd84);
assign empty_180_fu_2702_p2 = (empty_reg_3219 + 8'd87);
assign empty_181_fu_2742_p2 = (empty_reg_3219 + 8'd90);
assign empty_fu_1661_p2 = (p_shl_fu_1653_p3 - or_ln73_cast_fu_1649_p1);
assign grp_fu_3076_p_ce = 1'b1;
assign grp_fu_3076_p_din0 = grp_fu_1330_p0;
assign grp_fu_3076_p_din1 = grp_fu_1330_p1;
assign grp_fu_3080_p_ce = 1'b1;
assign grp_fu_3080_p_din0 = grp_fu_1334_p0;
assign grp_fu_3080_p_din1 = grp_fu_1334_p1;
assign grp_fu_3084_p_ce = 1'b1;
assign grp_fu_3084_p_din0 = grp_fu_1338_p0;
assign grp_fu_3084_p_din1 = grp_fu_1338_p1;
assign grp_fu_3088_p_ce = 1'b1;
assign grp_fu_3088_p_din0 = grp_fu_1342_p0;
assign grp_fu_3088_p_din1 = grp_fu_1342_p1;
assign grp_fu_3092_p_ce = 1'b1;
assign grp_fu_3092_p_din0 = grp_fu_1346_p0;
assign grp_fu_3092_p_din1 = grp_fu_1346_p1;
assign grp_fu_3096_p_ce = 1'b1;
assign grp_fu_3096_p_din0 = grp_fu_1350_p0;
assign grp_fu_3096_p_din1 = grp_fu_1350_p1;
assign grp_fu_3100_p_ce = 1'b1;
assign grp_fu_3100_p_din0 = grp_fu_1354_p0;
assign grp_fu_3100_p_din1 = grp_fu_1354_p1;
assign grp_fu_3104_p_ce = 1'b1;
assign grp_fu_3104_p_din0 = grp_fu_1358_p0;
assign grp_fu_3104_p_din1 = grp_fu_1358_p1;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_address1 = last_activations_0_address1_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_0_ce1 = last_activations_0_ce1_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_address1 = last_activations_1_address1_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_1_ce1 = last_activations_1_ce1_local;
assign last_activations_2_address0 = last_activations_2_address0_local;
assign last_activations_2_address1 = last_activations_2_address1_local;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_2_ce1 = last_activations_2_ce1_local;
assign last_activations_3_address0 = last_activations_3_address0_local;
assign last_activations_3_address1 = last_activations_3_address1_local;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_3_ce1 = last_activations_3_ce1_local;
assign lshr_ln75_10_fu_1743_p4 = {{empty_163_fu_1738_p2[7:2]}};
assign lshr_ln75_11_fu_2042_p4 = {{empty_164_fu_2037_p2[7:2]}};
assign lshr_ln75_12_fu_1982_p4 = {{add_ln75_7_fu_1977_p2[7:2]}};
assign lshr_ln75_13_fu_2002_p4 = {{add_ln75_8_fu_1997_p2[7:2]}};
assign lshr_ln75_14_fu_2022_p4 = {{empty_165_fu_2017_p2[7:2]}};
assign lshr_ln75_15_fu_2062_p4 = {{add_ln75_9_fu_2057_p2[7:2]}};
assign lshr_ln75_16_fu_2082_p4 = {{empty_166_fu_2077_p2[7:2]}};
assign lshr_ln75_17_fu_2115_p4 = {{empty_167_fu_2110_p2[7:2]}};
assign lshr_ln75_18_fu_2135_p4 = {{add_ln75_11_fu_2130_p2[7:2]}};
assign lshr_ln75_19_fu_2155_p4 = {{add_ln75_12_fu_2150_p2[7:2]}};
assign lshr_ln75_1_fu_1791_p4 = {{add_ln75_fu_1786_p2[7:2]}};
assign lshr_ln75_20_fu_2175_p4 = {{empty_168_fu_2170_p2[7:2]}};
assign lshr_ln75_21_fu_2195_p4 = {{add_ln75_13_fu_2190_p2[7:2]}};
assign lshr_ln75_22_fu_2215_p4 = {{empty_169_fu_2210_p2[7:2]}};
assign lshr_ln75_23_fu_2308_p4 = {{empty_170_fu_2303_p2[7:2]}};
assign lshr_ln75_24_fu_2248_p4 = {{add_ln75_15_fu_2243_p2[7:2]}};
assign lshr_ln75_25_fu_2268_p4 = {{add_ln75_16_fu_2263_p2[7:2]}};
assign lshr_ln75_26_fu_2288_p4 = {{empty_171_fu_2283_p2[7:2]}};
assign lshr_ln75_27_fu_2328_p4 = {{add_ln75_17_fu_2323_p2[7:2]}};
assign lshr_ln75_28_fu_2348_p4 = {{empty_172_fu_2343_p2[7:2]}};
assign lshr_ln75_29_fu_2381_p4 = {{empty_173_fu_2376_p2[7:2]}};
assign lshr_ln75_2_fu_1811_p4 = {{add_ln75_1_fu_1806_p2[7:2]}};
assign lshr_ln75_30_fu_2401_p4 = {{add_ln75_19_fu_2396_p2[7:2]}};
assign lshr_ln75_31_fu_2421_p4 = {{add_ln75_20_fu_2416_p2[7:2]}};
assign lshr_ln75_32_fu_2441_p4 = {{empty_174_fu_2436_p2[7:2]}};
assign lshr_ln75_33_fu_2461_p4 = {{add_ln75_21_fu_2456_p2[7:2]}};
assign lshr_ln75_34_fu_2481_p4 = {{empty_175_fu_2476_p2[7:2]}};
assign lshr_ln75_35_fu_2574_p4 = {{empty_176_fu_2569_p2[7:2]}};
assign lshr_ln75_36_fu_2514_p4 = {{add_ln75_23_fu_2509_p2[7:2]}};
assign lshr_ln75_37_fu_2534_p4 = {{add_ln75_24_fu_2529_p2[7:2]}};
assign lshr_ln75_38_fu_2554_p4 = {{empty_177_fu_2549_p2[7:2]}};
assign lshr_ln75_39_fu_2594_p4 = {{add_ln75_25_fu_2589_p2[7:2]}};
assign lshr_ln75_3_fu_1831_p4 = {{empty_159_fu_1826_p2[7:2]}};
assign lshr_ln75_40_fu_2614_p4 = {{empty_178_fu_2609_p2[7:2]}};
assign lshr_ln75_41_fu_2647_p4 = {{empty_179_fu_2642_p2[7:2]}};
assign lshr_ln75_42_fu_2667_p4 = {{add_ln75_27_fu_2662_p2[7:2]}};
assign lshr_ln75_43_fu_2687_p4 = {{add_ln75_28_fu_2682_p2[7:2]}};
assign lshr_ln75_44_fu_2707_p4 = {{empty_180_fu_2702_p2[7:2]}};
assign lshr_ln75_45_fu_2727_p4 = {{add_ln75_29_fu_2722_p2[7:2]}};
assign lshr_ln75_46_fu_2747_p4 = {{empty_181_fu_2742_p2[7:2]}};
assign lshr_ln75_4_fu_1682_p4 = {{add_ln75_2_fu_1677_p2[7:2]}};
assign lshr_ln75_5_fu_1702_p4 = {{empty_160_fu_1697_p2[7:2]}};
assign lshr_ln75_6_fu_1876_p4 = {{empty_161_fu_1871_p2[7:2]}};
assign lshr_ln75_7_fu_1896_p4 = {{add_ln75_3_fu_1891_p2[7:2]}};
assign lshr_ln75_8_fu_1916_p4 = {{add_ln75_4_fu_1911_p2[7:2]}};
assign lshr_ln75_9_fu_1936_p4 = {{empty_162_fu_1931_p2[7:2]}};
assign lshr_ln75_s_fu_1723_p4 = {{add_ln75_5_fu_1718_p2[7:2]}};
assign lshr_ln_fu_1446_p4 = {{ap_sig_allocacmp_i_13[5:2]}};
assign or_ln1_fu_1857_p3 = {{tmp_49_reg_3295}, {2'd3}};
assign or_ln73_cast_fu_1649_p1 = or_ln_fu_1641_p3;
assign or_ln_fu_1641_p3 = {{tmp_fu_1632_p4}, {1'd1}};
assign p_cast4_fu_1516_p1 = tmp_51_fu_1506_p4;
assign p_cast5_fu_1532_p1 = tmp_52_fu_1524_p3;
assign p_cast6_fu_1566_p1 = tmp_54_fu_1556_p4;
assign p_cast7_fu_1593_p1 = tmp_55_fu_1581_p5;
assign p_cast8_fu_1609_p1 = tmp_56_fu_1601_p4;
assign p_cast9_fu_1624_p1 = tmp_57_fu_1617_p3;
assign p_cast_fu_1482_p1 = tmp_48_fu_1474_p3;
assign p_shl5_fu_1762_p3 = {{lshr_ln_reg_2821}, {2'd0}};
assign p_shl_fu_1653_p3 = {{tmp_fu_1632_p4}, {3'd4}};
assign sub_ln75_fu_1769_p2 = (p_shl5_fu_1762_p3 - zext_ln72_1_fu_1759_p1);
assign tmp_38_fu_1499_p3 = i_13_reg_2806[32'd2];
assign tmp_39_fu_1540_p3 = i_13_reg_2806[32'd5];
assign tmp_40_fu_1574_p3 = i_13_reg_2806[32'd3];
assign tmp_48_fu_1474_p3 = {{tmp_s_fu_1464_p4}, {1'd1}};
assign tmp_50_fu_1490_p4 = {{i_13_reg_2806[5:4]}};
assign tmp_51_fu_1506_p4 = {{{tmp_50_fu_1490_p4}, {1'd1}}, {tmp_38_fu_1499_p3}};
assign tmp_52_fu_1524_p3 = {{tmp_50_fu_1490_p4}, {2'd3}};
assign tmp_53_fu_1547_p4 = {{i_13_reg_2806[3:2]}};
assign tmp_54_fu_1556_p4 = {{{tmp_39_fu_1540_p3}, {1'd1}}, {tmp_53_fu_1547_p4}};
assign tmp_55_fu_1581_p5 = {{{{tmp_39_fu_1540_p3}, {1'd1}}, {tmp_40_fu_1574_p3}}, {1'd1}};
assign tmp_56_fu_1601_p4 = {{{tmp_39_reg_2965}, {2'd3}}, {tmp_38_reg_2873}};
assign tmp_57_fu_1617_p3 = {{tmp_39_reg_2965}, {3'd7}};
assign tmp_fu_1632_p4 = {{i_13_reg_2806[5:1]}};
assign tmp_s_fu_1464_p4 = {{ap_sig_allocacmp_i_13[5:3]}};
assign zext_ln72_1_fu_1759_p1 = lshr_ln_reg_2821;
assign zext_ln72_fu_1456_p1 = lshr_ln_fu_1446_p4;
assign zext_ln75_10_fu_1906_p1 = lshr_ln75_7_fu_1896_p4;
assign zext_ln75_11_fu_1926_p1 = lshr_ln75_8_fu_1916_p4;
assign zext_ln75_12_fu_1946_p1 = lshr_ln75_9_fu_1936_p4;
assign zext_ln75_13_fu_1733_p1 = lshr_ln75_s_fu_1723_p4;
assign zext_ln75_14_fu_1753_p1 = lshr_ln75_10_fu_1743_p4;
assign zext_ln75_15_fu_1970_p1 = add_ln75_6_fu_1964_p2;
assign zext_ln75_16_fu_2052_p1 = lshr_ln75_11_fu_2042_p4;
assign zext_ln75_17_fu_1992_p1 = lshr_ln75_12_fu_1982_p4;
assign zext_ln75_18_fu_2012_p1 = lshr_ln75_13_fu_2002_p4;
assign zext_ln75_19_fu_2032_p1 = lshr_ln75_14_fu_2022_p4;
assign zext_ln75_1_fu_1782_p1 = lshr_ln2_reg_3270;
assign zext_ln75_20_fu_2072_p1 = lshr_ln75_15_fu_2062_p4;
assign zext_ln75_21_fu_2092_p1 = lshr_ln75_16_fu_2082_p4;
assign zext_ln75_22_fu_2103_p1 = add_ln75_10_fu_2098_p2;
assign zext_ln75_23_fu_2125_p1 = lshr_ln75_17_fu_2115_p4;
assign zext_ln75_24_fu_2145_p1 = lshr_ln75_18_fu_2135_p4;
assign zext_ln75_25_fu_2165_p1 = lshr_ln75_19_fu_2155_p4;
assign zext_ln75_26_fu_2185_p1 = lshr_ln75_20_fu_2175_p4;
assign zext_ln75_27_fu_2205_p1 = lshr_ln75_21_fu_2195_p4;
assign zext_ln75_28_fu_2225_p1 = lshr_ln75_22_fu_2215_p4;
assign zext_ln75_29_fu_2236_p1 = add_ln75_14_fu_2231_p2;
assign zext_ln75_2_fu_1801_p1 = lshr_ln75_1_fu_1791_p4;
assign zext_ln75_30_fu_2318_p1 = lshr_ln75_23_fu_2308_p4;
assign zext_ln75_31_fu_2258_p1 = lshr_ln75_24_fu_2248_p4;
assign zext_ln75_32_fu_2278_p1 = lshr_ln75_25_fu_2268_p4;
assign zext_ln75_33_fu_2298_p1 = lshr_ln75_26_fu_2288_p4;
assign zext_ln75_34_fu_2338_p1 = lshr_ln75_27_fu_2328_p4;
assign zext_ln75_35_fu_2358_p1 = lshr_ln75_28_fu_2348_p4;
assign zext_ln75_36_fu_2369_p1 = add_ln75_18_fu_2364_p2;
assign zext_ln75_37_fu_2391_p1 = lshr_ln75_29_fu_2381_p4;
assign zext_ln75_38_fu_2411_p1 = lshr_ln75_30_fu_2401_p4;
assign zext_ln75_39_fu_2431_p1 = lshr_ln75_31_fu_2421_p4;
assign zext_ln75_3_fu_1821_p1 = lshr_ln75_2_fu_1811_p4;
assign zext_ln75_40_fu_2451_p1 = lshr_ln75_32_fu_2441_p4;
assign zext_ln75_41_fu_2471_p1 = lshr_ln75_33_fu_2461_p4;
assign zext_ln75_42_fu_2491_p1 = lshr_ln75_34_fu_2481_p4;
assign zext_ln75_43_fu_2502_p1 = add_ln75_22_fu_2497_p2;
assign zext_ln75_44_fu_2584_p1 = lshr_ln75_35_fu_2574_p4;
assign zext_ln75_45_fu_2524_p1 = lshr_ln75_36_fu_2514_p4;
assign zext_ln75_46_fu_2544_p1 = lshr_ln75_37_fu_2534_p4;
assign zext_ln75_47_fu_2564_p1 = lshr_ln75_38_fu_2554_p4;
assign zext_ln75_48_fu_2604_p1 = lshr_ln75_39_fu_2594_p4;
assign zext_ln75_49_fu_2624_p1 = lshr_ln75_40_fu_2614_p4;
assign zext_ln75_4_fu_1841_p1 = lshr_ln75_3_fu_1831_p4;
assign zext_ln75_50_fu_2635_p1 = add_ln75_26_fu_2630_p2;
assign zext_ln75_51_fu_2657_p1 = lshr_ln75_41_fu_2647_p4;
assign zext_ln75_52_fu_2677_p1 = lshr_ln75_42_fu_2667_p4;
assign zext_ln75_53_fu_2697_p1 = lshr_ln75_43_fu_2687_p4;
assign zext_ln75_54_fu_2717_p1 = lshr_ln75_44_fu_2707_p4;
assign zext_ln75_55_fu_2737_p1 = lshr_ln75_45_fu_2727_p4;
assign zext_ln75_56_fu_2757_p1 = lshr_ln75_46_fu_2747_p4;
assign zext_ln75_5_fu_1692_p1 = lshr_ln75_4_fu_1682_p4;
assign zext_ln75_6_fu_1712_p1 = lshr_ln75_5_fu_1702_p4;
assign zext_ln75_7_fu_1961_p1 = or_ln1_reg_3305;
assign zext_ln75_8_fu_1864_p1 = or_ln1_fu_1857_p3;
assign zext_ln75_9_fu_1886_p1 = lshr_ln75_6_fu_1876_p4;
assign zext_ln75_fu_1775_p1 = sub_ln75_fu_1769_p2;
always @ (posedge ap_clk) begin
    empty_reg_3219[0] <= 1'b1;
    zext_ln75_6_reg_3280[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_14_reg_3285[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    or_ln1_reg_3305[1:0] <= 2'b11;
    zext_ln75_12_reg_3310[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_7_reg_3315[1:0] <= 2'b11;
    zext_ln75_7_reg_3315[5] <= 1'b0;
    zext_ln75_19_reg_3324[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_21_reg_3329[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_26_reg_3334[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_28_reg_3339[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_33_reg_3344[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_35_reg_3349[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_40_reg_3354[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_42_reg_3359[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_47_reg_3364[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_49_reg_3369[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_54_reg_3384[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln75_56_reg_3389[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
