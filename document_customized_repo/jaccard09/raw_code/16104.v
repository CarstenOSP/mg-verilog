module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_944_p_din0,grp_fu_944_p_din1,grp_fu_944_p_opcode,grp_fu_944_p_dout0,grp_fu_944_p_ce,grp_fu_1961_p_din0,grp_fu_1961_p_din1,grp_fu_1961_p_opcode,grp_fu_1961_p_dout0,grp_fu_1961_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_20;
input  [7:0] t_1;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [4:0] zext_ln52_2;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_4_address1;
output   transition_4_ce1;
input  [63:0] transition_4_q1;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_5_address1;
output   transition_5_ce1;
input  [63:0] transition_5_q1;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_6_address1;
output   transition_6_ce1;
input  [63:0] transition_6_q1;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
output  [8:0] transition_7_address1;
output   transition_7_ce1;
input  [63:0] transition_7_q1;
input  [2:0] empty;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_944_p_din0;
output  [63:0] grp_fu_944_p_din1;
output  [1:0] grp_fu_944_p_opcode;
input  [63:0] grp_fu_944_p_dout0;
output   grp_fu_944_p_ce;
output  [63:0] grp_fu_1961_p_din0;
output  [63:0] grp_fu_1961_p_din1;
output  [4:0] grp_fu_1961_p_opcode;
input  [0:0] grp_fu_1961_p_dout0;
output   grp_fu_1961_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_35_reg_2855;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_859;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_864;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_869;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln52_2_cast_fu_874_p1;
reg   [8:0] zext_ln52_2_cast_reg_2745;
reg   [5:0] s_reg_2756;
wire   [4:0] lshr_ln8_2_fu_900_p4;
reg   [4:0] lshr_ln8_2_reg_2765;
wire   [5:0] add_ln53_fu_949_p2;
reg   [5:0] add_ln53_reg_2816;
wire   [5:0] add_ln53_1_fu_978_p2;
reg   [5:0] add_ln53_1_reg_2827;
reg   [5:0] add_ln53_1_reg_2827_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_1003_p2;
reg   [5:0] add_ln53_2_reg_2838;
reg   [5:0] add_ln53_2_reg_2838_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_1032_p2;
reg   [6:0] add_ln53_6_reg_2849;
reg   [0:0] tmp_35_reg_2855_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2859;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_1078_p19;
reg   [63:0] tmp_1_reg_2864;
reg   [63:0] llike_load_reg_2869;
reg   [63:0] llike_1_load_1_reg_2914;
reg   [63:0] llike_load_1_reg_2959;
wire   [5:0] add_ln53_3_fu_1165_p2;
reg   [5:0] add_ln53_3_reg_2964;
reg   [5:0] add_ln53_3_reg_2964_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_1187_p2;
reg   [5:0] add_ln53_4_reg_2975;
reg   [5:0] add_ln53_4_reg_2975_pp0_iter1_reg;
wire   [63:0] tmp_6_fu_1286_p19;
reg   [63:0] tmp_6_reg_2996;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_11_fu_1357_p19;
reg   [63:0] tmp_11_reg_3001;
reg   [63:0] llike_1_load_2_reg_3046;
reg   [63:0] llike_load_2_reg_3091;
wire   [5:0] add_ln53_5_fu_1444_p2;
reg   [5:0] add_ln53_5_reg_3096;
reg   [5:0] add_ln53_5_reg_3096_pp0_iter1_reg;
reg   [63:0] llike_1_load_3_reg_3102;
reg   [63:0] llike_load_3_reg_3107;
wire   [63:0] tmp_16_fu_1481_p19;
reg   [63:0] tmp_16_reg_3112;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_21_fu_1552_p19;
reg   [63:0] tmp_21_reg_3117;
wire   [63:0] tmp_26_fu_1671_p19;
reg   [63:0] tmp_26_reg_3202;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_31_fu_1742_p19;
reg   [63:0] tmp_31_reg_3207;
wire   [5:0] trunc_ln54_fu_1781_p1;
reg   [5:0] trunc_ln54_reg_3212;
reg   [5:0] trunc_ln54_reg_3212_pp0_iter1_reg;
wire   [63:0] tmp_36_fu_1841_p19;
reg   [63:0] tmp_36_reg_3257;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_3262;
wire   [0:0] and_ln55_1_fu_1961_p2;
reg   [0:0] and_ln55_1_reg_3269;
wire   [63:0] min_p_3_fu_1967_p3;
reg   [63:0] min_p_3_reg_3275;
wire   [0:0] and_ln55_3_fu_2051_p2;
reg   [0:0] and_ln55_3_reg_3282;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_3288;
wire   [63:0] min_p_5_fu_2070_p3;
reg   [63:0] min_p_5_reg_3295;
wire   [7:0] min_s_5_fu_2080_p3;
reg   [7:0] min_s_5_reg_3302;
wire   [0:0] and_ln55_5_fu_2164_p2;
reg   [0:0] and_ln55_5_reg_3307;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_3313;
wire   [63:0] min_p_7_fu_2170_p3;
reg   [63:0] min_p_7_reg_3320;
wire   [0:0] icmp_ln55_14_fu_2195_p2;
reg   [0:0] icmp_ln55_14_reg_3326;
wire   [0:0] icmp_ln55_15_fu_2201_p2;
reg   [0:0] icmp_ln55_15_reg_3331;
wire   [0:0] and_ln55_7_fu_2263_p2;
reg   [0:0] and_ln55_7_reg_3336;
wire   [63:0] min_p_9_fu_2278_p3;
reg   [63:0] min_p_9_reg_3342;
wire   [7:0] min_s_7_fu_2288_p3;
reg   [7:0] min_s_7_reg_3349;
wire   [0:0] and_ln55_9_fu_2371_p2;
reg   [0:0] and_ln55_9_reg_3354;
wire   [63:0] min_p_11_fu_2377_p3;
reg   [63:0] min_p_11_reg_3360;
wire   [0:0] and_ln55_11_fu_2460_p2;
reg   [0:0] and_ln55_11_reg_3367;
wire   [63:0] min_p_13_fu_2466_p3;
reg   [63:0] min_p_13_reg_3373;
wire   [0:0] and_ln55_13_fu_2549_p2;
reg   [0:0] and_ln55_13_reg_3380;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_10_fu_2577_p3;
reg   [7:0] min_s_10_reg_3386;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_15_fu_2585_p3;
reg   [63:0] min_p_15_reg_3391;
reg   [0:0] tmp_39_reg_3398;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_918_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_937_p1;
wire   [63:0] zext_ln54_9_fu_973_p1;
wire   [63:0] zext_ln54_10_fu_998_p1;
wire   [63:0] zext_ln54_11_fu_1027_p1;
wire   [63:0] zext_ln54_1_fu_1129_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1153_p1;
wire   [63:0] zext_ln54_12_fu_1182_p1;
wire   [63:0] zext_ln54_13_fu_1209_p1;
wire   [63:0] zext_ln54_14_fu_1226_p1;
wire   [63:0] zext_ln54_16_fu_1249_p1;
wire   [63:0] zext_ln54_3_fu_1408_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1432_p1;
wire   [63:0] zext_ln54_5_fu_1603_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1627_p1;
wire   [63:0] zext_ln54_7_fu_1797_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_136;
wire   [63:0] min_p_17_fu_2673_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_140;
wire   [7:0] min_s_11_fu_2683_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_144;
wire   [5:0] add_ln53_7_fu_2207_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_851_p0;
reg   [63:0] grp_fu_851_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_855_p0;
reg   [63:0] grp_fu_855_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [12:0] tmp_s_fu_910_p3;
wire   [8:0] shl_ln2_fu_923_p3;
wire   [8:0] add_ln54_fu_931_p2;
wire   [4:0] lshr_ln8_3_fu_955_p4;
wire   [12:0] tmp_5_fu_965_p3;
wire   [4:0] add_ln8_fu_984_p2;
wire   [12:0] tmp_10_fu_990_p3;
wire   [4:0] lshr_ln8_s_fu_1009_p4;
wire   [12:0] tmp_15_fu_1019_p3;
wire   [6:0] zext_ln21_fu_896_p1;
wire   [63:0] tmp_1_fu_1078_p2;
wire   [63:0] tmp_1_fu_1078_p4;
wire   [63:0] tmp_1_fu_1078_p6;
wire   [63:0] tmp_1_fu_1078_p8;
wire   [63:0] tmp_1_fu_1078_p10;
wire   [63:0] tmp_1_fu_1078_p12;
wire   [63:0] tmp_1_fu_1078_p14;
wire   [63:0] tmp_1_fu_1078_p16;
wire   [63:0] tmp_1_fu_1078_p17;
wire   [8:0] shl_ln54_1_fu_1117_p3;
wire   [8:0] add_ln54_1_fu_1124_p2;
wire   [8:0] shl_ln54_2_fu_1141_p3;
wire   [8:0] add_ln54_2_fu_1148_p2;
wire   [4:0] add_ln8_1_fu_1170_p2;
wire   [12:0] tmp_20_fu_1175_p3;
wire   [4:0] lshr_ln8_1_fu_1192_p4;
wire   [12:0] tmp_25_fu_1202_p3;
wire   [4:0] add_ln8_2_fu_1214_p2;
wire   [12:0] tmp_30_fu_1219_p3;
wire   [5:0] lshr_ln9_3_fu_1231_p4;
wire   [12:0] zext_ln54_15_fu_1240_p1;
wire   [12:0] add_ln54_8_fu_1244_p2;
wire   [63:0] tmp_6_fu_1286_p2;
wire   [63:0] tmp_6_fu_1286_p4;
wire   [63:0] tmp_6_fu_1286_p6;
wire   [63:0] tmp_6_fu_1286_p8;
wire   [63:0] tmp_6_fu_1286_p10;
wire   [63:0] tmp_6_fu_1286_p12;
wire   [63:0] tmp_6_fu_1286_p14;
wire   [63:0] tmp_6_fu_1286_p16;
wire   [63:0] tmp_6_fu_1286_p17;
wire   [63:0] tmp_11_fu_1357_p2;
wire   [63:0] tmp_11_fu_1357_p4;
wire   [63:0] tmp_11_fu_1357_p6;
wire   [63:0] tmp_11_fu_1357_p8;
wire   [63:0] tmp_11_fu_1357_p10;
wire   [63:0] tmp_11_fu_1357_p12;
wire   [63:0] tmp_11_fu_1357_p14;
wire   [63:0] tmp_11_fu_1357_p16;
wire   [63:0] tmp_11_fu_1357_p17;
wire   [8:0] shl_ln54_3_fu_1396_p3;
wire   [8:0] add_ln54_3_fu_1403_p2;
wire   [8:0] shl_ln54_4_fu_1420_p3;
wire   [8:0] add_ln54_4_fu_1427_p2;
wire   [63:0] tmp_16_fu_1481_p2;
wire   [63:0] tmp_16_fu_1481_p4;
wire   [63:0] tmp_16_fu_1481_p6;
wire   [63:0] tmp_16_fu_1481_p8;
wire   [63:0] tmp_16_fu_1481_p10;
wire   [63:0] tmp_16_fu_1481_p12;
wire   [63:0] tmp_16_fu_1481_p14;
wire   [63:0] tmp_16_fu_1481_p16;
wire   [63:0] tmp_16_fu_1481_p17;
wire   [63:0] tmp_21_fu_1552_p2;
wire   [63:0] tmp_21_fu_1552_p4;
wire   [63:0] tmp_21_fu_1552_p6;
wire   [63:0] tmp_21_fu_1552_p8;
wire   [63:0] tmp_21_fu_1552_p10;
wire   [63:0] tmp_21_fu_1552_p12;
wire   [63:0] tmp_21_fu_1552_p14;
wire   [63:0] tmp_21_fu_1552_p16;
wire   [63:0] tmp_21_fu_1552_p17;
wire   [8:0] shl_ln54_5_fu_1591_p3;
wire   [8:0] add_ln54_5_fu_1598_p2;
wire   [8:0] shl_ln54_6_fu_1615_p3;
wire   [8:0] add_ln54_6_fu_1622_p2;
wire   [63:0] tmp_26_fu_1671_p2;
wire   [63:0] tmp_26_fu_1671_p4;
wire   [63:0] tmp_26_fu_1671_p6;
wire   [63:0] tmp_26_fu_1671_p8;
wire   [63:0] tmp_26_fu_1671_p10;
wire   [63:0] tmp_26_fu_1671_p12;
wire   [63:0] tmp_26_fu_1671_p14;
wire   [63:0] tmp_26_fu_1671_p16;
wire   [63:0] tmp_26_fu_1671_p17;
wire   [63:0] tmp_31_fu_1742_p2;
wire   [63:0] tmp_31_fu_1742_p4;
wire   [63:0] tmp_31_fu_1742_p6;
wire   [63:0] tmp_31_fu_1742_p8;
wire   [63:0] tmp_31_fu_1742_p10;
wire   [63:0] tmp_31_fu_1742_p12;
wire   [63:0] tmp_31_fu_1742_p14;
wire   [63:0] tmp_31_fu_1742_p16;
wire   [63:0] tmp_31_fu_1742_p17;
wire   [8:0] shl_ln54_7_fu_1784_p3;
wire   [8:0] add_ln54_7_fu_1792_p2;
wire   [63:0] tmp_36_fu_1841_p2;
wire   [63:0] tmp_36_fu_1841_p4;
wire   [63:0] tmp_36_fu_1841_p6;
wire   [63:0] tmp_36_fu_1841_p8;
wire   [63:0] tmp_36_fu_1841_p10;
wire   [63:0] tmp_36_fu_1841_p12;
wire   [63:0] tmp_36_fu_1841_p14;
wire   [63:0] tmp_36_fu_1841_p16;
wire   [63:0] tmp_36_fu_1841_p17;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1884_p1;
wire   [63:0] bitcast_ln55_1_fu_1902_p1;
wire   [10:0] tmp_2_fu_1888_p4;
wire   [51:0] trunc_ln55_fu_1898_p1;
wire   [0:0] icmp_ln55_1_fu_1925_p2;
wire   [0:0] icmp_ln55_fu_1919_p2;
wire   [10:0] tmp_3_fu_1905_p4;
wire   [51:0] trunc_ln55_1_fu_1915_p1;
wire   [0:0] icmp_ln55_3_fu_1943_p2;
wire   [0:0] icmp_ln55_2_fu_1937_p2;
wire   [0:0] or_ln55_fu_1931_p2;
wire   [0:0] and_ln55_fu_1955_p2;
wire   [0:0] or_ln55_1_fu_1949_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1974_p1;
wire   [63:0] bitcast_ln55_3_fu_1992_p1;
wire   [10:0] tmp_7_fu_1978_p4;
wire   [51:0] trunc_ln55_2_fu_1988_p1;
wire   [0:0] icmp_ln55_5_fu_2015_p2;
wire   [0:0] icmp_ln55_4_fu_2009_p2;
wire   [10:0] tmp_8_fu_1995_p4;
wire   [51:0] trunc_ln55_3_fu_2005_p1;
wire   [0:0] icmp_ln55_7_fu_2033_p2;
wire   [0:0] icmp_ln55_6_fu_2027_p2;
wire   [0:0] or_ln55_3_fu_2039_p2;
wire   [0:0] or_ln55_2_fu_2021_p2;
wire   [0:0] and_ln55_2_fu_2045_p2;
wire   [7:0] zext_ln55_fu_2060_p1;
wire   [7:0] zext_ln55_1_fu_2077_p1;
wire   [7:0] min_s_4_fu_2063_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_2087_p1;
wire   [63:0] bitcast_ln55_5_fu_2105_p1;
wire   [10:0] tmp_12_fu_2091_p4;
wire   [51:0] trunc_ln55_4_fu_2101_p1;
wire   [0:0] icmp_ln55_9_fu_2128_p2;
wire   [0:0] icmp_ln55_8_fu_2122_p2;
wire   [10:0] tmp_13_fu_2108_p4;
wire   [51:0] trunc_ln55_5_fu_2118_p1;
wire   [0:0] icmp_ln55_11_fu_2146_p2;
wire   [0:0] icmp_ln55_10_fu_2140_p2;
wire   [0:0] or_ln55_5_fu_2152_p2;
wire   [0:0] or_ln55_4_fu_2134_p2;
wire   [0:0] and_ln55_4_fu_2158_p2;
wire   [63:0] bitcast_ln55_7_fu_2177_p1;
wire   [10:0] tmp_18_fu_2181_p4;
wire   [51:0] trunc_ln55_7_fu_2191_p1;
wire   [63:0] bitcast_ln55_6_fu_2217_p1;
wire   [10:0] tmp_17_fu_2221_p4;
wire   [51:0] trunc_ln55_6_fu_2231_p1;
wire   [0:0] icmp_ln55_13_fu_2241_p2;
wire   [0:0] icmp_ln55_12_fu_2235_p2;
wire   [0:0] or_ln55_7_fu_2253_p2;
wire   [0:0] or_ln55_6_fu_2247_p2;
wire   [0:0] and_ln55_6_fu_2257_p2;
wire   [7:0] zext_ln55_2_fu_2269_p1;
wire   [7:0] zext_ln55_3_fu_2285_p1;
wire   [7:0] min_s_6_fu_2272_p3;
wire   [63:0] bitcast_ln55_8_fu_2295_p1;
wire   [63:0] bitcast_ln55_9_fu_2312_p1;
wire   [10:0] tmp_22_fu_2298_p4;
wire   [51:0] trunc_ln55_8_fu_2308_p1;
wire   [0:0] icmp_ln55_17_fu_2335_p2;
wire   [0:0] icmp_ln55_16_fu_2329_p2;
wire   [10:0] tmp_23_fu_2315_p4;
wire   [51:0] trunc_ln55_9_fu_2325_p1;
wire   [0:0] icmp_ln55_19_fu_2353_p2;
wire   [0:0] icmp_ln55_18_fu_2347_p2;
wire   [0:0] or_ln55_9_fu_2359_p2;
wire   [0:0] or_ln55_8_fu_2341_p2;
wire   [0:0] and_ln55_8_fu_2365_p2;
wire   [63:0] bitcast_ln55_10_fu_2383_p1;
wire   [63:0] bitcast_ln55_11_fu_2401_p1;
wire   [10:0] tmp_27_fu_2387_p4;
wire   [51:0] trunc_ln55_10_fu_2397_p1;
wire   [0:0] icmp_ln55_21_fu_2424_p2;
wire   [0:0] icmp_ln55_20_fu_2418_p2;
wire   [10:0] tmp_28_fu_2404_p4;
wire   [51:0] trunc_ln55_11_fu_2414_p1;
wire   [0:0] icmp_ln55_23_fu_2442_p2;
wire   [0:0] icmp_ln55_22_fu_2436_p2;
wire   [0:0] or_ln55_11_fu_2448_p2;
wire   [0:0] or_ln55_10_fu_2430_p2;
wire   [0:0] and_ln55_10_fu_2454_p2;
wire   [63:0] bitcast_ln55_12_fu_2473_p1;
wire   [63:0] bitcast_ln55_13_fu_2490_p1;
wire   [10:0] tmp_32_fu_2476_p4;
wire   [51:0] trunc_ln55_12_fu_2486_p1;
wire   [0:0] icmp_ln55_25_fu_2513_p2;
wire   [0:0] icmp_ln55_24_fu_2507_p2;
wire   [10:0] tmp_33_fu_2493_p4;
wire   [51:0] trunc_ln55_13_fu_2503_p1;
wire   [0:0] icmp_ln55_27_fu_2531_p2;
wire   [0:0] icmp_ln55_26_fu_2525_p2;
wire   [0:0] or_ln55_13_fu_2537_p2;
wire   [0:0] or_ln55_12_fu_2519_p2;
wire   [0:0] and_ln55_12_fu_2543_p2;
wire   [7:0] zext_ln55_4_fu_2555_p1;
wire   [7:0] zext_ln55_5_fu_2564_p1;
wire   [7:0] min_s_8_fu_2558_p3;
wire   [7:0] zext_ln55_6_fu_2574_p1;
wire   [7:0] min_s_9_fu_2567_p3;
wire   [63:0] bitcast_ln55_14_fu_2591_p1;
wire   [63:0] bitcast_ln55_15_fu_2609_p1;
wire   [10:0] tmp_37_fu_2595_p4;
wire   [51:0] trunc_ln55_14_fu_2605_p1;
wire   [0:0] icmp_ln55_29_fu_2632_p2;
wire   [0:0] icmp_ln55_28_fu_2626_p2;
wire   [10:0] tmp_38_fu_2612_p4;
wire   [51:0] trunc_ln55_15_fu_2622_p1;
wire   [0:0] icmp_ln55_31_fu_2650_p2;
wire   [0:0] icmp_ln55_30_fu_2644_p2;
wire   [0:0] or_ln55_15_fu_2656_p2;
wire   [0:0] or_ln55_14_fu_2638_p2;
wire   [0:0] and_ln55_14_fu_2662_p2;
wire   [0:0] and_ln55_15_fu_2668_p2;
wire   [7:0] zext_ln55_7_fu_2680_p1;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire   [2:0] tmp_1_fu_1078_p1;
wire   [2:0] tmp_1_fu_1078_p3;
wire   [2:0] tmp_1_fu_1078_p5;
wire   [2:0] tmp_1_fu_1078_p7;
wire  signed [2:0] tmp_1_fu_1078_p9;
wire  signed [2:0] tmp_1_fu_1078_p11;
wire  signed [2:0] tmp_1_fu_1078_p13;
wire  signed [2:0] tmp_1_fu_1078_p15;
wire   [2:0] tmp_6_fu_1286_p1;
wire   [2:0] tmp_6_fu_1286_p3;
wire   [2:0] tmp_6_fu_1286_p5;
wire   [2:0] tmp_6_fu_1286_p7;
wire  signed [2:0] tmp_6_fu_1286_p9;
wire  signed [2:0] tmp_6_fu_1286_p11;
wire  signed [2:0] tmp_6_fu_1286_p13;
wire  signed [2:0] tmp_6_fu_1286_p15;
wire   [2:0] tmp_11_fu_1357_p1;
wire   [2:0] tmp_11_fu_1357_p3;
wire   [2:0] tmp_11_fu_1357_p5;
wire   [2:0] tmp_11_fu_1357_p7;
wire  signed [2:0] tmp_11_fu_1357_p9;
wire  signed [2:0] tmp_11_fu_1357_p11;
wire  signed [2:0] tmp_11_fu_1357_p13;
wire  signed [2:0] tmp_11_fu_1357_p15;
wire   [2:0] tmp_16_fu_1481_p1;
wire   [2:0] tmp_16_fu_1481_p3;
wire   [2:0] tmp_16_fu_1481_p5;
wire   [2:0] tmp_16_fu_1481_p7;
wire  signed [2:0] tmp_16_fu_1481_p9;
wire  signed [2:0] tmp_16_fu_1481_p11;
wire  signed [2:0] tmp_16_fu_1481_p13;
wire  signed [2:0] tmp_16_fu_1481_p15;
wire   [2:0] tmp_21_fu_1552_p1;
wire   [2:0] tmp_21_fu_1552_p3;
wire   [2:0] tmp_21_fu_1552_p5;
wire   [2:0] tmp_21_fu_1552_p7;
wire  signed [2:0] tmp_21_fu_1552_p9;
wire  signed [2:0] tmp_21_fu_1552_p11;
wire  signed [2:0] tmp_21_fu_1552_p13;
wire  signed [2:0] tmp_21_fu_1552_p15;
wire   [2:0] tmp_26_fu_1671_p1;
wire   [2:0] tmp_26_fu_1671_p3;
wire   [2:0] tmp_26_fu_1671_p5;
wire   [2:0] tmp_26_fu_1671_p7;
wire  signed [2:0] tmp_26_fu_1671_p9;
wire  signed [2:0] tmp_26_fu_1671_p11;
wire  signed [2:0] tmp_26_fu_1671_p13;
wire  signed [2:0] tmp_26_fu_1671_p15;
wire   [2:0] tmp_31_fu_1742_p1;
wire   [2:0] tmp_31_fu_1742_p3;
wire   [2:0] tmp_31_fu_1742_p5;
wire   [2:0] tmp_31_fu_1742_p7;
wire  signed [2:0] tmp_31_fu_1742_p9;
wire  signed [2:0] tmp_31_fu_1742_p11;
wire  signed [2:0] tmp_31_fu_1742_p13;
wire  signed [2:0] tmp_31_fu_1742_p15;
wire   [2:0] tmp_36_fu_1841_p1;
wire   [2:0] tmp_36_fu_1841_p3;
wire   [2:0] tmp_36_fu_1841_p5;
wire   [2:0] tmp_36_fu_1841_p7;
wire  signed [2:0] tmp_36_fu_1841_p9;
wire  signed [2:0] tmp_36_fu_1841_p11;
wire  signed [2:0] tmp_36_fu_1841_p13;
wire  signed [2:0] tmp_36_fu_1841_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_136 = 64'd0;
#0 min_s_fu_140 = 8'd0;
#0 min_s_1_fu_144 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U84(.din0(tmp_1_fu_1078_p2),.din1(tmp_1_fu_1078_p4),.din2(tmp_1_fu_1078_p6),.din3(tmp_1_fu_1078_p8),.din4(tmp_1_fu_1078_p10),.din5(tmp_1_fu_1078_p12),.din6(tmp_1_fu_1078_p14),.din7(tmp_1_fu_1078_p16),.def(tmp_1_fu_1078_p17),.sel(empty),.dout(tmp_1_fu_1078_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U85(.din0(tmp_6_fu_1286_p2),.din1(tmp_6_fu_1286_p4),.din2(tmp_6_fu_1286_p6),.din3(tmp_6_fu_1286_p8),.din4(tmp_6_fu_1286_p10),.din5(tmp_6_fu_1286_p12),.din6(tmp_6_fu_1286_p14),.din7(tmp_6_fu_1286_p16),.def(tmp_6_fu_1286_p17),.sel(empty),.dout(tmp_6_fu_1286_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U86(.din0(tmp_11_fu_1357_p2),.din1(tmp_11_fu_1357_p4),.din2(tmp_11_fu_1357_p6),.din3(tmp_11_fu_1357_p8),.din4(tmp_11_fu_1357_p10),.din5(tmp_11_fu_1357_p12),.din6(tmp_11_fu_1357_p14),.din7(tmp_11_fu_1357_p16),.def(tmp_11_fu_1357_p17),.sel(empty),.dout(tmp_11_fu_1357_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U87(.din0(tmp_16_fu_1481_p2),.din1(tmp_16_fu_1481_p4),.din2(tmp_16_fu_1481_p6),.din3(tmp_16_fu_1481_p8),.din4(tmp_16_fu_1481_p10),.din5(tmp_16_fu_1481_p12),.din6(tmp_16_fu_1481_p14),.din7(tmp_16_fu_1481_p16),.def(tmp_16_fu_1481_p17),.sel(empty),.dout(tmp_16_fu_1481_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U88(.din0(tmp_21_fu_1552_p2),.din1(tmp_21_fu_1552_p4),.din2(tmp_21_fu_1552_p6),.din3(tmp_21_fu_1552_p8),.din4(tmp_21_fu_1552_p10),.din5(tmp_21_fu_1552_p12),.din6(tmp_21_fu_1552_p14),.din7(tmp_21_fu_1552_p16),.def(tmp_21_fu_1552_p17),.sel(empty),.dout(tmp_21_fu_1552_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U89(.din0(tmp_26_fu_1671_p2),.din1(tmp_26_fu_1671_p4),.din2(tmp_26_fu_1671_p6),.din3(tmp_26_fu_1671_p8),.din4(tmp_26_fu_1671_p10),.din5(tmp_26_fu_1671_p12),.din6(tmp_26_fu_1671_p14),.din7(tmp_26_fu_1671_p16),.def(tmp_26_fu_1671_p17),.sel(empty),.dout(tmp_26_fu_1671_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U90(.din0(tmp_31_fu_1742_p2),.din1(tmp_31_fu_1742_p4),.din2(tmp_31_fu_1742_p6),.din3(tmp_31_fu_1742_p8),.din4(tmp_31_fu_1742_p10),.din5(tmp_31_fu_1742_p12),.din6(tmp_31_fu_1742_p14),.din7(tmp_31_fu_1742_p16),.def(tmp_31_fu_1742_p17),.sel(empty),.dout(tmp_31_fu_1742_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U91(.din0(tmp_36_fu_1841_p2),.din1(tmp_36_fu_1841_p4),.din2(tmp_36_fu_1841_p6),.din3(tmp_36_fu_1841_p8),.din4(tmp_36_fu_1841_p10),.din5(tmp_36_fu_1841_p12),.din6(tmp_36_fu_1841_p14),.din7(tmp_36_fu_1841_p16),.def(tmp_36_fu_1841_p17),.sel(empty),.dout(tmp_36_fu_1841_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage7) | ((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_136 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_35_reg_2855_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_136 <= min_p_17_fu_2673_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_144 <= 6'd1;
    end else if (((tmp_35_reg_2855 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_144 <= add_ln53_7_fu_2207_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_140 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_35_reg_2855_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_140 <= min_s_11_fu_2683_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2827 <= add_ln53_1_fu_978_p2;
        add_ln53_1_reg_2827_pp0_iter1_reg <= add_ln53_1_reg_2827;
        add_ln53_2_reg_2838 <= add_ln53_2_fu_1003_p2;
        add_ln53_2_reg_2838_pp0_iter1_reg <= add_ln53_2_reg_2838;
        add_ln53_6_reg_2849 <= add_ln53_6_fu_1032_p2;
        add_ln53_reg_2816 <= add_ln53_fu_949_p2;
        and_ln55_7_reg_3336 <= and_ln55_7_fu_2263_p2;
        lshr_ln8_2_reg_2765 <= {{ap_sig_allocacmp_s[5:1]}};
        s_reg_2756 <= ap_sig_allocacmp_s;
        tmp_35_reg_2855 <= add_ln53_6_fu_1032_p2[32'd6];
        tmp_35_reg_2855_pp0_iter1_reg <= tmp_35_reg_2855;
        zext_ln52_2_cast_reg_2745[4 : 0] <= zext_ln52_2_cast_fu_874_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_2964 <= add_ln53_3_fu_1165_p2;
        add_ln53_3_reg_2964_pp0_iter1_reg <= add_ln53_3_reg_2964;
        add_ln53_4_reg_2975 <= add_ln53_4_fu_1187_p2;
        add_ln53_4_reg_2975_pp0_iter1_reg <= add_ln53_4_reg_2975;
        min_p_9_reg_3342 <= min_p_9_fu_2278_p3;
        min_s_7_reg_3349 <= min_s_7_fu_2288_p3;
        tmp_1_reg_2864 <= tmp_1_fu_1078_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_5_reg_3096 <= add_ln53_5_fu_1444_p2;
        add_ln53_5_reg_3096_pp0_iter1_reg <= add_ln53_5_reg_3096;
        and_ln55_9_reg_3354 <= and_ln55_9_fu_2371_p2;
        tmp_11_reg_3001 <= tmp_11_fu_1357_p19;
        tmp_6_reg_2996 <= tmp_6_fu_1286_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_3367 <= and_ln55_11_fu_2460_p2;
        tmp_26_reg_3202 <= tmp_26_fu_1671_p19;
        tmp_31_reg_3207 <= tmp_31_fu_1742_p19;
        trunc_ln54_reg_3212 <= trunc_ln54_fu_1781_p1;
        trunc_ln54_reg_3212_pp0_iter1_reg <= trunc_ln54_reg_3212;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_3380 <= and_ln55_13_fu_2549_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3269 <= and_ln55_1_fu_1961_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3282 <= and_ln55_3_fu_2051_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3307 <= and_ln55_5_fu_2164_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_3326 <= icmp_ln55_14_fu_2195_p2;
        icmp_ln55_15_reg_3331 <= icmp_ln55_15_fu_2201_p2;
        min_p_7_reg_3320 <= min_p_7_fu_2170_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2914 <= llike_1_q0;
        llike_1_load_reg_2859 <= llike_1_q1;
        llike_load_1_reg_2959 <= llike_q0;
        llike_load_reg_2869 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_3046 <= llike_1_q1;
        llike_1_load_3_reg_3102 <= llike_1_q0;
        llike_load_2_reg_3091 <= llike_q1;
        llike_load_3_reg_3107 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_3360 <= min_p_11_fu_2377_p3;
        tmp_16_reg_3112 <= tmp_16_fu_1481_p19;
        tmp_21_reg_3117 <= tmp_21_fu_1552_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_3373 <= min_p_13_fu_2466_p3;
        tmp_36_reg_3257 <= tmp_36_fu_1841_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_3391 <= min_p_15_fu_2585_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_3262 <= min_p_fu_136;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_3275 <= min_p_3_fu_1967_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_3295 <= min_p_5_fu_2070_p3;
        min_s_5_reg_3302 <= min_s_5_fu_2080_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_3386 <= min_s_10_fu_2577_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_3288 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_3313 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_859 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_864 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_869 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_39_reg_3398 <= grp_fu_1961_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_35_reg_2855 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_35_reg_2855_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_144;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_851_p0 = llike_load_3_reg_3107;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_851_p0 = llike_1_load_3_reg_3102;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_851_p0 = llike_load_2_reg_3091;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_851_p0 = llike_1_load_2_reg_3046;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_851_p0 = llike_load_1_reg_2959;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_851_p0 = llike_1_load_1_reg_2914;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_851_p0 = llike_load_reg_2869;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_851_p0 = llike_1_load_reg_2859;
        end else begin
            grp_fu_851_p0 = 'bx;
        end
    end else begin
        grp_fu_851_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_851_p1 = tmp_36_reg_3257;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_851_p1 = tmp_31_reg_3207;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_851_p1 = tmp_26_reg_3202;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_851_p1 = tmp_21_reg_3117;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_851_p1 = tmp_16_reg_3112;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_851_p1 = tmp_11_reg_3001;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_851_p1 = tmp_6_reg_2996;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_851_p1 = tmp_1_reg_2864;
        end else begin
            grp_fu_851_p1 = 'bx;
        end
    end else begin
        grp_fu_851_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_855_p0 = p_6_reg_3313;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_855_p0 = p_4_reg_3288;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_855_p0 = reg_869;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_855_p0 = reg_864;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_855_p0 = reg_859;
    end else begin
        grp_fu_855_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_855_p1 = min_p_15_fu_2585_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_855_p1 = min_p_13_fu_2466_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_855_p1 = min_p_11_fu_2377_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_855_p1 = min_p_9_fu_2278_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_855_p1 = min_p_7_fu_2170_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_855_p1 = min_p_5_fu_2070_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_855_p1 = min_p_3_fu_1967_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_855_p1 = min_p_fu_136;
    end else begin
        grp_fu_855_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_14_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_10_fu_998_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln54_12_fu_1182_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_8_fu_918_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_16_fu_1249_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_11_fu_1027_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln54_13_fu_1209_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_9_fu_973_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_35_reg_2855_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_4_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_5_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_6_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address0_local = zext_ln54_5_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address0_local = zext_ln54_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_2_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_937_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_7_address1_local = zext_ln54_7_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address1_local = zext_ln54_6_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln54_4_fu_1432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln54_1_fu_1129_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_978_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1003_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_1165_p2 = (s_reg_2756 + 6'd4);
assign add_ln53_4_fu_1187_p2 = (s_reg_2756 + 6'd5);
assign add_ln53_5_fu_1444_p2 = (s_reg_2756 + 6'd6);
assign add_ln53_6_fu_1032_p2 = (zext_ln21_fu_896_p1 + 7'd7);
assign add_ln53_7_fu_2207_p2 = (s_reg_2756 + 6'd8);
assign add_ln53_fu_949_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_1124_p2 = (shl_ln54_1_fu_1117_p3 + zext_ln52_2_cast_reg_2745);
assign add_ln54_2_fu_1148_p2 = (shl_ln54_2_fu_1141_p3 + zext_ln52_2_cast_reg_2745);
assign add_ln54_3_fu_1403_p2 = (shl_ln54_3_fu_1396_p3 + zext_ln52_2_cast_reg_2745);
assign add_ln54_4_fu_1427_p2 = (shl_ln54_4_fu_1420_p3 + zext_ln52_2_cast_reg_2745);
assign add_ln54_5_fu_1598_p2 = (shl_ln54_5_fu_1591_p3 + zext_ln52_2_cast_reg_2745);
assign add_ln54_6_fu_1622_p2 = (shl_ln54_6_fu_1615_p3 + zext_ln52_2_cast_reg_2745);
assign add_ln54_7_fu_1792_p2 = (shl_ln54_7_fu_1784_p3 + zext_ln52_2_cast_reg_2745);
assign add_ln54_8_fu_1244_p2 = (zext_ln52_3 + zext_ln54_15_fu_1240_p1);
assign add_ln54_fu_931_p2 = (shl_ln2_fu_923_p3 + zext_ln52_2_cast_fu_874_p1);
assign add_ln8_1_fu_1170_p2 = (lshr_ln8_2_reg_2765 + 5'd2);
assign add_ln8_2_fu_1214_p2 = (lshr_ln8_2_reg_2765 + 5'd3);
assign add_ln8_fu_984_p2 = (lshr_ln8_2_fu_900_p4 + 5'd1);
assign and_ln55_10_fu_2454_p2 = (or_ln55_11_fu_2448_p2 & or_ln55_10_fu_2430_p2);
assign and_ln55_11_fu_2460_p2 = (grp_fu_1961_p_dout0 & and_ln55_10_fu_2454_p2);
assign and_ln55_12_fu_2543_p2 = (or_ln55_13_fu_2537_p2 & or_ln55_12_fu_2519_p2);
assign and_ln55_13_fu_2549_p2 = (grp_fu_1961_p_dout0 & and_ln55_12_fu_2543_p2);
assign and_ln55_14_fu_2662_p2 = (or_ln55_15_fu_2656_p2 & or_ln55_14_fu_2638_p2);
assign and_ln55_15_fu_2668_p2 = (tmp_39_reg_3398 & and_ln55_14_fu_2662_p2);
assign and_ln55_1_fu_1961_p2 = (or_ln55_1_fu_1949_p2 & and_ln55_fu_1955_p2);
assign and_ln55_2_fu_2045_p2 = (or_ln55_3_fu_2039_p2 & or_ln55_2_fu_2021_p2);
assign and_ln55_3_fu_2051_p2 = (grp_fu_1961_p_dout0 & and_ln55_2_fu_2045_p2);
assign and_ln55_4_fu_2158_p2 = (or_ln55_5_fu_2152_p2 & or_ln55_4_fu_2134_p2);
assign and_ln55_5_fu_2164_p2 = (grp_fu_1961_p_dout0 & and_ln55_4_fu_2158_p2);
assign and_ln55_6_fu_2257_p2 = (or_ln55_7_fu_2253_p2 & or_ln55_6_fu_2247_p2);
assign and_ln55_7_fu_2263_p2 = (grp_fu_1961_p_dout0 & and_ln55_6_fu_2257_p2);
assign and_ln55_8_fu_2365_p2 = (or_ln55_9_fu_2359_p2 & or_ln55_8_fu_2341_p2);
assign and_ln55_9_fu_2371_p2 = (grp_fu_1961_p_dout0 & and_ln55_8_fu_2365_p2);
assign and_ln55_fu_1955_p2 = (or_ln55_fu_1931_p2 & grp_fu_1961_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
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
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_10_fu_2383_p1 = reg_864;
assign bitcast_ln55_11_fu_2401_p1 = min_p_11_reg_3360;
assign bitcast_ln55_12_fu_2473_p1 = p_6_reg_3313;
assign bitcast_ln55_13_fu_2490_p1 = min_p_13_reg_3373;
assign bitcast_ln55_14_fu_2591_p1 = reg_869;
assign bitcast_ln55_15_fu_2609_p1 = min_p_15_reg_3391;
assign bitcast_ln55_1_fu_1902_p1 = min_p_1_reg_3262;
assign bitcast_ln55_2_fu_1974_p1 = reg_864;
assign bitcast_ln55_3_fu_1992_p1 = min_p_3_reg_3275;
assign bitcast_ln55_4_fu_2087_p1 = reg_869;
assign bitcast_ln55_5_fu_2105_p1 = min_p_5_reg_3295;
assign bitcast_ln55_6_fu_2217_p1 = reg_859;
assign bitcast_ln55_7_fu_2177_p1 = min_p_7_fu_2170_p3;
assign bitcast_ln55_8_fu_2295_p1 = p_4_reg_3288;
assign bitcast_ln55_9_fu_2312_p1 = min_p_9_reg_3342;
assign bitcast_ln55_fu_1884_p1 = reg_859;
assign grp_fu_1961_p_ce = 1'b1;
assign grp_fu_1961_p_din0 = grp_fu_855_p0;
assign grp_fu_1961_p_din1 = grp_fu_855_p1;
assign grp_fu_1961_p_opcode = 5'd4;
assign grp_fu_944_p_ce = 1'b1;
assign grp_fu_944_p_din0 = grp_fu_851_p0;
assign grp_fu_944_p_din1 = grp_fu_851_p1;
assign grp_fu_944_p_opcode = 2'd0;
assign icmp_ln55_10_fu_2140_p2 = ((tmp_13_fu_2108_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_2146_p2 = ((trunc_ln55_5_fu_2118_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2235_p2 = ((tmp_17_fu_2221_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2241_p2 = ((trunc_ln55_6_fu_2231_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2195_p2 = ((tmp_18_fu_2181_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2201_p2 = ((trunc_ln55_7_fu_2191_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2329_p2 = ((tmp_22_fu_2298_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2335_p2 = ((trunc_ln55_8_fu_2308_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2347_p2 = ((tmp_23_fu_2315_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2353_p2 = ((trunc_ln55_9_fu_2325_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1925_p2 = ((trunc_ln55_fu_1898_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2418_p2 = ((tmp_27_fu_2387_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2424_p2 = ((trunc_ln55_10_fu_2397_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2436_p2 = ((tmp_28_fu_2404_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2442_p2 = ((trunc_ln55_11_fu_2414_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2507_p2 = ((tmp_32_fu_2476_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2513_p2 = ((trunc_ln55_12_fu_2486_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2525_p2 = ((tmp_33_fu_2493_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2531_p2 = ((trunc_ln55_13_fu_2503_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2626_p2 = ((tmp_37_fu_2595_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2632_p2 = ((trunc_ln55_14_fu_2605_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1937_p2 = ((tmp_3_fu_1905_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2644_p2 = ((tmp_38_fu_2612_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2650_p2 = ((trunc_ln55_15_fu_2622_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1943_p2 = ((trunc_ln55_1_fu_1915_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_2009_p2 = ((tmp_7_fu_1978_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_2015_p2 = ((trunc_ln55_2_fu_1988_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_2027_p2 = ((tmp_8_fu_1995_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_2033_p2 = ((trunc_ln55_3_fu_2005_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_2122_p2 = ((tmp_12_fu_2091_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_2128_p2 = ((trunc_ln55_4_fu_2101_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1919_p2 = ((tmp_2_fu_1888_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln8_1_fu_1192_p4 = {{add_ln53_4_fu_1187_p2[5:1]}};
assign lshr_ln8_2_fu_900_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_3_fu_955_p4 = {{add_ln53_fu_949_p2[5:1]}};
assign lshr_ln8_s_fu_1009_p4 = {{add_ln53_2_fu_1003_p2[5:1]}};
assign lshr_ln9_3_fu_1231_p4 = {{add_ln53_6_reg_2849[6:1]}};
assign min_p_11_fu_2377_p3 = ((and_ln55_9_reg_3354[0:0] == 1'b1) ? p_4_reg_3288 : min_p_9_reg_3342);
assign min_p_13_fu_2466_p3 = ((and_ln55_11_reg_3367[0:0] == 1'b1) ? reg_864 : min_p_11_reg_3360);
assign min_p_15_fu_2585_p3 = ((and_ln55_13_reg_3380[0:0] == 1'b1) ? p_6_reg_3313 : min_p_13_reg_3373);
assign min_p_17_fu_2673_p3 = ((and_ln55_15_fu_2668_p2[0:0] == 1'b1) ? reg_869 : min_p_15_reg_3391);
assign min_p_3_fu_1967_p3 = ((and_ln55_1_reg_3269[0:0] == 1'b1) ? reg_859 : min_p_1_reg_3262);
assign min_p_5_fu_2070_p3 = ((and_ln55_3_reg_3282[0:0] == 1'b1) ? reg_864 : min_p_3_reg_3275);
assign min_p_7_fu_2170_p3 = ((and_ln55_5_reg_3307[0:0] == 1'b1) ? reg_869 : min_p_5_reg_3295);
assign min_p_9_fu_2278_p3 = ((and_ln55_7_reg_3336[0:0] == 1'b1) ? reg_859 : min_p_7_reg_3320);
assign min_s_10_fu_2577_p3 = ((and_ln55_13_reg_3380[0:0] == 1'b1) ? zext_ln55_6_fu_2574_p1 : min_s_9_fu_2567_p3);
assign min_s_11_fu_2683_p3 = ((and_ln55_15_fu_2668_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2680_p1 : min_s_10_reg_3386);
assign min_s_18_out = ((and_ln55_13_reg_3380[0:0] == 1'b1) ? zext_ln55_6_fu_2574_p1 : min_s_9_fu_2567_p3);
assign min_s_4_fu_2063_p3 = ((and_ln55_1_reg_3269[0:0] == 1'b1) ? zext_ln55_fu_2060_p1 : min_s_fu_140);
assign min_s_5_fu_2080_p3 = ((and_ln55_3_reg_3282[0:0] == 1'b1) ? zext_ln55_1_fu_2077_p1 : min_s_4_fu_2063_p3);
assign min_s_6_fu_2272_p3 = ((and_ln55_5_reg_3307[0:0] == 1'b1) ? zext_ln55_2_fu_2269_p1 : min_s_5_reg_3302);
assign min_s_7_fu_2288_p3 = ((and_ln55_7_reg_3336[0:0] == 1'b1) ? zext_ln55_3_fu_2285_p1 : min_s_6_fu_2272_p3);
assign min_s_8_fu_2558_p3 = ((and_ln55_9_reg_3354[0:0] == 1'b1) ? zext_ln55_4_fu_2555_p1 : min_s_7_reg_3349);
assign min_s_9_fu_2567_p3 = ((and_ln55_11_reg_3367[0:0] == 1'b1) ? zext_ln55_5_fu_2564_p1 : min_s_8_fu_2558_p3);
assign or_ln55_10_fu_2430_p2 = (icmp_ln55_21_fu_2424_p2 | icmp_ln55_20_fu_2418_p2);
assign or_ln55_11_fu_2448_p2 = (icmp_ln55_23_fu_2442_p2 | icmp_ln55_22_fu_2436_p2);
assign or_ln55_12_fu_2519_p2 = (icmp_ln55_25_fu_2513_p2 | icmp_ln55_24_fu_2507_p2);
assign or_ln55_13_fu_2537_p2 = (icmp_ln55_27_fu_2531_p2 | icmp_ln55_26_fu_2525_p2);
assign or_ln55_14_fu_2638_p2 = (icmp_ln55_29_fu_2632_p2 | icmp_ln55_28_fu_2626_p2);
assign or_ln55_15_fu_2656_p2 = (icmp_ln55_31_fu_2650_p2 | icmp_ln55_30_fu_2644_p2);
assign or_ln55_1_fu_1949_p2 = (icmp_ln55_3_fu_1943_p2 | icmp_ln55_2_fu_1937_p2);
assign or_ln55_2_fu_2021_p2 = (icmp_ln55_5_fu_2015_p2 | icmp_ln55_4_fu_2009_p2);
assign or_ln55_3_fu_2039_p2 = (icmp_ln55_7_fu_2033_p2 | icmp_ln55_6_fu_2027_p2);
assign or_ln55_4_fu_2134_p2 = (icmp_ln55_9_fu_2128_p2 | icmp_ln55_8_fu_2122_p2);
assign or_ln55_5_fu_2152_p2 = (icmp_ln55_11_fu_2146_p2 | icmp_ln55_10_fu_2140_p2);
assign or_ln55_6_fu_2247_p2 = (icmp_ln55_13_fu_2241_p2 | icmp_ln55_12_fu_2235_p2);
assign or_ln55_7_fu_2253_p2 = (icmp_ln55_15_reg_3331 | icmp_ln55_14_reg_3326);
assign or_ln55_8_fu_2341_p2 = (icmp_ln55_17_fu_2335_p2 | icmp_ln55_16_fu_2329_p2);
assign or_ln55_9_fu_2359_p2 = (icmp_ln55_19_fu_2353_p2 | icmp_ln55_18_fu_2347_p2);
assign or_ln55_fu_1931_p2 = (icmp_ln55_fu_1919_p2 | icmp_ln55_1_fu_1925_p2);
assign shl_ln2_fu_923_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_1117_p3 = {{add_ln53_reg_2816}, {3'd0}};
assign shl_ln54_2_fu_1141_p3 = {{add_ln53_1_reg_2827}, {3'd0}};
assign shl_ln54_3_fu_1396_p3 = {{add_ln53_2_reg_2838}, {3'd0}};
assign shl_ln54_4_fu_1420_p3 = {{add_ln53_3_reg_2964}, {3'd0}};
assign shl_ln54_5_fu_1591_p3 = {{add_ln53_4_reg_2975}, {3'd0}};
assign shl_ln54_6_fu_1615_p3 = {{add_ln53_5_reg_3096}, {3'd0}};
assign shl_ln54_7_fu_1784_p3 = {{trunc_ln54_fu_1781_p1}, {3'd0}};
assign tmp_10_fu_990_p3 = {{t_1}, {add_ln8_fu_984_p2}};
assign tmp_11_fu_1357_p10 = transition_4_q0;
assign tmp_11_fu_1357_p12 = transition_5_q0;
assign tmp_11_fu_1357_p14 = transition_6_q0;
assign tmp_11_fu_1357_p16 = transition_7_q0;
assign tmp_11_fu_1357_p17 = 'bx;
assign tmp_11_fu_1357_p2 = transition_0_q0;
assign tmp_11_fu_1357_p4 = transition_1_q0;
assign tmp_11_fu_1357_p6 = transition_2_q0;
assign tmp_11_fu_1357_p8 = transition_3_q0;
assign tmp_12_fu_2091_p4 = {{bitcast_ln55_4_fu_2087_p1[62:52]}};
assign tmp_13_fu_2108_p4 = {{bitcast_ln55_5_fu_2105_p1[62:52]}};
assign tmp_15_fu_1019_p3 = {{t_1}, {lshr_ln8_s_fu_1009_p4}};
assign tmp_16_fu_1481_p10 = transition_4_q0;
assign tmp_16_fu_1481_p12 = transition_5_q0;
assign tmp_16_fu_1481_p14 = transition_6_q0;
assign tmp_16_fu_1481_p16 = transition_7_q0;
assign tmp_16_fu_1481_p17 = 'bx;
assign tmp_16_fu_1481_p2 = transition_0_q0;
assign tmp_16_fu_1481_p4 = transition_1_q0;
assign tmp_16_fu_1481_p6 = transition_2_q0;
assign tmp_16_fu_1481_p8 = transition_3_q0;
assign tmp_17_fu_2221_p4 = {{bitcast_ln55_6_fu_2217_p1[62:52]}};
assign tmp_18_fu_2181_p4 = {{bitcast_ln55_7_fu_2177_p1[62:52]}};
assign tmp_1_fu_1078_p10 = transition_4_q0;
assign tmp_1_fu_1078_p12 = transition_5_q0;
assign tmp_1_fu_1078_p14 = transition_6_q0;
assign tmp_1_fu_1078_p16 = transition_7_q0;
assign tmp_1_fu_1078_p17 = 'bx;
assign tmp_1_fu_1078_p2 = transition_0_q0;
assign tmp_1_fu_1078_p4 = transition_1_q0;
assign tmp_1_fu_1078_p6 = transition_2_q0;
assign tmp_1_fu_1078_p8 = transition_3_q0;
assign tmp_20_fu_1175_p3 = {{t_1}, {add_ln8_1_fu_1170_p2}};
assign tmp_21_fu_1552_p10 = transition_4_q1;
assign tmp_21_fu_1552_p12 = transition_5_q1;
assign tmp_21_fu_1552_p14 = transition_6_q1;
assign tmp_21_fu_1552_p16 = transition_7_q1;
assign tmp_21_fu_1552_p17 = 'bx;
assign tmp_21_fu_1552_p2 = transition_0_q1;
assign tmp_21_fu_1552_p4 = transition_1_q1;
assign tmp_21_fu_1552_p6 = transition_2_q1;
assign tmp_21_fu_1552_p8 = transition_3_q1;
assign tmp_22_fu_2298_p4 = {{bitcast_ln55_8_fu_2295_p1[62:52]}};
assign tmp_23_fu_2315_p4 = {{bitcast_ln55_9_fu_2312_p1[62:52]}};
assign tmp_25_fu_1202_p3 = {{t_1}, {lshr_ln8_1_fu_1192_p4}};
assign tmp_26_fu_1671_p10 = transition_4_q0;
assign tmp_26_fu_1671_p12 = transition_5_q0;
assign tmp_26_fu_1671_p14 = transition_6_q0;
assign tmp_26_fu_1671_p16 = transition_7_q0;
assign tmp_26_fu_1671_p17 = 'bx;
assign tmp_26_fu_1671_p2 = transition_0_q0;
assign tmp_26_fu_1671_p4 = transition_1_q0;
assign tmp_26_fu_1671_p6 = transition_2_q0;
assign tmp_26_fu_1671_p8 = transition_3_q0;
assign tmp_27_fu_2387_p4 = {{bitcast_ln55_10_fu_2383_p1[62:52]}};
assign tmp_28_fu_2404_p4 = {{bitcast_ln55_11_fu_2401_p1[62:52]}};
assign tmp_2_fu_1888_p4 = {{bitcast_ln55_fu_1884_p1[62:52]}};
assign tmp_30_fu_1219_p3 = {{t_1}, {add_ln8_2_fu_1214_p2}};
assign tmp_31_fu_1742_p10 = transition_4_q1;
assign tmp_31_fu_1742_p12 = transition_5_q1;
assign tmp_31_fu_1742_p14 = transition_6_q1;
assign tmp_31_fu_1742_p16 = transition_7_q1;
assign tmp_31_fu_1742_p17 = 'bx;
assign tmp_31_fu_1742_p2 = transition_0_q1;
assign tmp_31_fu_1742_p4 = transition_1_q1;
assign tmp_31_fu_1742_p6 = transition_2_q1;
assign tmp_31_fu_1742_p8 = transition_3_q1;
assign tmp_32_fu_2476_p4 = {{bitcast_ln55_12_fu_2473_p1[62:52]}};
assign tmp_33_fu_2493_p4 = {{bitcast_ln55_13_fu_2490_p1[62:52]}};
assign tmp_36_fu_1841_p10 = transition_4_q1;
assign tmp_36_fu_1841_p12 = transition_5_q1;
assign tmp_36_fu_1841_p14 = transition_6_q1;
assign tmp_36_fu_1841_p16 = transition_7_q1;
assign tmp_36_fu_1841_p17 = 'bx;
assign tmp_36_fu_1841_p2 = transition_0_q1;
assign tmp_36_fu_1841_p4 = transition_1_q1;
assign tmp_36_fu_1841_p6 = transition_2_q1;
assign tmp_36_fu_1841_p8 = transition_3_q1;
assign tmp_37_fu_2595_p4 = {{bitcast_ln55_14_fu_2591_p1[62:52]}};
assign tmp_38_fu_2612_p4 = {{bitcast_ln55_15_fu_2609_p1[62:52]}};
assign tmp_3_fu_1905_p4 = {{bitcast_ln55_1_fu_1902_p1[62:52]}};
assign tmp_5_fu_965_p3 = {{t_1}, {lshr_ln8_3_fu_955_p4}};
assign tmp_6_fu_1286_p10 = transition_4_q1;
assign tmp_6_fu_1286_p12 = transition_5_q1;
assign tmp_6_fu_1286_p14 = transition_6_q1;
assign tmp_6_fu_1286_p16 = transition_7_q1;
assign tmp_6_fu_1286_p17 = 'bx;
assign tmp_6_fu_1286_p2 = transition_0_q1;
assign tmp_6_fu_1286_p4 = transition_1_q1;
assign tmp_6_fu_1286_p6 = transition_2_q1;
assign tmp_6_fu_1286_p8 = transition_3_q1;
assign tmp_7_fu_1978_p4 = {{bitcast_ln55_2_fu_1974_p1[62:52]}};
assign tmp_8_fu_1995_p4 = {{bitcast_ln55_3_fu_1992_p1[62:52]}};
assign tmp_s_fu_910_p3 = {{t_1}, {lshr_ln8_2_fu_900_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_address1 = transition_4_address1_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_4_ce1 = transition_4_ce1_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_address1 = transition_5_address1_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_5_ce1 = transition_5_ce1_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_address1 = transition_6_address1_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_6_ce1 = transition_6_ce1_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_address1 = transition_7_address1_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign transition_7_ce1 = transition_7_ce1_local;
assign trunc_ln54_fu_1781_p1 = add_ln53_6_reg_2849[5:0];
assign trunc_ln55_10_fu_2397_p1 = bitcast_ln55_10_fu_2383_p1[51:0];
assign trunc_ln55_11_fu_2414_p1 = bitcast_ln55_11_fu_2401_p1[51:0];
assign trunc_ln55_12_fu_2486_p1 = bitcast_ln55_12_fu_2473_p1[51:0];
assign trunc_ln55_13_fu_2503_p1 = bitcast_ln55_13_fu_2490_p1[51:0];
assign trunc_ln55_14_fu_2605_p1 = bitcast_ln55_14_fu_2591_p1[51:0];
assign trunc_ln55_15_fu_2622_p1 = bitcast_ln55_15_fu_2609_p1[51:0];
assign trunc_ln55_1_fu_1915_p1 = bitcast_ln55_1_fu_1902_p1[51:0];
assign trunc_ln55_2_fu_1988_p1 = bitcast_ln55_2_fu_1974_p1[51:0];
assign trunc_ln55_3_fu_2005_p1 = bitcast_ln55_3_fu_1992_p1[51:0];
assign trunc_ln55_4_fu_2101_p1 = bitcast_ln55_4_fu_2087_p1[51:0];
assign trunc_ln55_5_fu_2118_p1 = bitcast_ln55_5_fu_2105_p1[51:0];
assign trunc_ln55_6_fu_2231_p1 = bitcast_ln55_6_fu_2217_p1[51:0];
assign trunc_ln55_7_fu_2191_p1 = bitcast_ln55_7_fu_2177_p1[51:0];
assign trunc_ln55_8_fu_2308_p1 = bitcast_ln55_8_fu_2295_p1[51:0];
assign trunc_ln55_9_fu_2325_p1 = bitcast_ln55_9_fu_2312_p1[51:0];
assign trunc_ln55_fu_1898_p1 = bitcast_ln55_fu_1884_p1[51:0];
assign zext_ln21_fu_896_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_874_p1 = zext_ln52_2;
assign zext_ln54_10_fu_998_p1 = tmp_10_fu_990_p3;
assign zext_ln54_11_fu_1027_p1 = tmp_15_fu_1019_p3;
assign zext_ln54_12_fu_1182_p1 = tmp_20_fu_1175_p3;
assign zext_ln54_13_fu_1209_p1 = tmp_25_fu_1202_p3;
assign zext_ln54_14_fu_1226_p1 = tmp_30_fu_1219_p3;
assign zext_ln54_15_fu_1240_p1 = lshr_ln9_3_fu_1231_p4;
assign zext_ln54_16_fu_1249_p1 = add_ln54_8_fu_1244_p2;
assign zext_ln54_1_fu_1129_p1 = add_ln54_1_fu_1124_p2;
assign zext_ln54_2_fu_1153_p1 = add_ln54_2_fu_1148_p2;
assign zext_ln54_3_fu_1408_p1 = add_ln54_3_fu_1403_p2;
assign zext_ln54_4_fu_1432_p1 = add_ln54_4_fu_1427_p2;
assign zext_ln54_5_fu_1603_p1 = add_ln54_5_fu_1598_p2;
assign zext_ln54_6_fu_1627_p1 = add_ln54_6_fu_1622_p2;
assign zext_ln54_7_fu_1797_p1 = add_ln54_7_fu_1792_p2;
assign zext_ln54_8_fu_918_p1 = tmp_s_fu_910_p3;
assign zext_ln54_9_fu_973_p1 = tmp_5_fu_965_p3;
assign zext_ln54_fu_937_p1 = add_ln54_fu_931_p2;
assign zext_ln55_1_fu_2077_p1 = add_ln53_reg_2816;
assign zext_ln55_2_fu_2269_p1 = add_ln53_1_reg_2827_pp0_iter1_reg;
assign zext_ln55_3_fu_2285_p1 = add_ln53_2_reg_2838_pp0_iter1_reg;
assign zext_ln55_4_fu_2555_p1 = add_ln53_3_reg_2964_pp0_iter1_reg;
assign zext_ln55_5_fu_2564_p1 = add_ln53_4_reg_2975_pp0_iter1_reg;
assign zext_ln55_6_fu_2574_p1 = add_ln53_5_reg_3096_pp0_iter1_reg;
assign zext_ln55_7_fu_2680_p1 = trunc_ln54_reg_3212_pp0_iter1_reg;
assign zext_ln55_fu_2060_p1 = s_reg_2756;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2745[8:5] <= 4'b0000;
end
endmodule 