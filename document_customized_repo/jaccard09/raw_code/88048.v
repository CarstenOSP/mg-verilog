module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,init_4_address0,init_4_ce0,init_4_q0,init_4_address1,init_4_ce1,init_4_q1,init_5_address0,init_5_ce0,init_5_q0,init_5_address1,init_5_ce1,init_5_q1,init_6_address0,init_6_ce0,init_6_q0,init_6_address1,init_6_ce1,init_6_q1,init_7_address0,init_7_ce0,init_7_q0,init_7_address1,init_7_ce1,init_7_q1,grp_fu_992_p_din0,grp_fu_992_p_din1,grp_fu_992_p_opcode,grp_fu_992_p_dout0,grp_fu_992_p_ce,grp_fu_2009_p_din0,grp_fu_2009_p_din1,grp_fu_2009_p_opcode,grp_fu_2009_p_dout0,grp_fu_2009_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [2:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [4:0] conv3_udiv;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_4_address1;
output   emission_4_ce1;
input  [63:0] emission_4_q1;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_5_address1;
output   emission_5_ce1;
input  [63:0] emission_5_q1;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_6_address1;
output   emission_6_ce1;
input  [63:0] emission_6_q1;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [8:0] emission_7_address1;
output   emission_7_ce1;
input  [63:0] emission_7_q1;
input  [2:0] empty;
input  [4:0] conv3_udiv_cast;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_4_address1;
output   init_4_ce1;
input  [63:0] init_4_q1;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_5_address1;
output   init_5_ce1;
input  [63:0] init_5_q1;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_6_address1;
output   init_6_ce1;
input  [63:0] init_6_q1;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [2:0] init_7_address1;
output   init_7_ce1;
input  [63:0] init_7_q1;
output  [63:0] grp_fu_992_p_din0;
output  [63:0] grp_fu_992_p_din1;
output  [1:0] grp_fu_992_p_opcode;
input  [63:0] grp_fu_992_p_dout0;
output   grp_fu_992_p_ce;
output  [63:0] grp_fu_2009_p_din0;
output  [63:0] grp_fu_2009_p_din1;
output  [1:0] grp_fu_2009_p_opcode;
input  [63:0] grp_fu_2009_p_dout0;
output   grp_fu_2009_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_39_reg_3466;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1638;
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
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1644;
wire   [8:0] conv3_udiv_cast_cast_fu_1650_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_3443;
reg   [6:0] s_1_reg_3458;
reg   [0:0] tmp_39_reg_3466_pp0_iter1_reg;
wire   [3:0] lshr_ln9_fu_1670_p4;
reg   [3:0] lshr_ln9_reg_3470;
reg   [3:0] lshr_ln9_reg_3470_pp0_iter1_reg;
wire   [2:0] lshr_ln9_1_fu_1680_p4;
reg   [2:0] lshr_ln9_1_reg_3477;
reg   [2:0] lshr_ln9_1_reg_3477_pp0_iter1_reg;
wire   [1:0] tmp_103_fu_1758_p4;
reg   [1:0] tmp_103_reg_3571;
reg   [1:0] tmp_103_reg_3571_pp0_iter1_reg;
reg   [63:0] init_0_load_reg_3660;
wire   [63:0] tmp_fu_1820_p19;
reg   [63:0] tmp_reg_3665;
wire   [63:0] tmp_1_fu_1891_p19;
reg   [63:0] tmp_1_reg_3670;
reg   [63:0] init_0_load_1_reg_3755;
reg   [63:0] init_1_load_reg_3760;
reg   [63:0] init_1_load_1_reg_3765;
reg   [63:0] init_2_load_reg_3770;
reg   [63:0] init_2_load_1_reg_3775;
reg   [63:0] init_3_load_reg_3780;
reg   [63:0] init_3_load_1_reg_3785;
reg   [63:0] init_4_load_reg_3790;
reg   [63:0] init_4_load_1_reg_3795;
reg   [63:0] init_5_load_reg_3800;
reg   [63:0] init_5_load_1_reg_3805;
reg   [63:0] init_6_load_reg_3810;
reg   [63:0] init_6_load_1_reg_3815;
reg   [63:0] init_7_load_reg_3820;
reg   [63:0] init_7_load_1_reg_3825;
wire   [63:0] bitcast_ln14_fu_1978_p1;
wire   [63:0] tmp_2_fu_2014_p19;
reg   [63:0] tmp_2_reg_3835;
wire   [63:0] tmp_3_fu_2085_p19;
reg   [63:0] tmp_3_reg_3840;
wire   [0:0] tmp_40_fu_2144_p3;
reg   [0:0] tmp_40_reg_3885;
wire   [63:0] bitcast_ln14_74_fu_2179_p1;
wire   [63:0] tmp_4_fu_2215_p19;
reg   [63:0] tmp_4_reg_3935;
wire   [63:0] tmp_5_fu_2286_p19;
reg   [63:0] tmp_5_reg_3940;
wire   [63:0] bitcast_ln14_84_fu_2373_p1;
wire   [63:0] bitcast_ln14_94_fu_2377_p1;
wire   [63:0] tmp_6_fu_2413_p19;
reg   [63:0] tmp_6_reg_4035;
wire   [63:0] tmp_7_fu_2484_p19;
reg   [63:0] tmp_7_reg_4040;
wire   [0:0] tmp_41_fu_2523_p3;
reg   [0:0] tmp_41_reg_4045;
reg   [0:0] tmp_41_reg_4045_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_104_fu_2589_p1;
wire   [63:0] bitcast_ln14_114_fu_2593_p1;
wire   [63:0] tmp_8_fu_2629_p19;
reg   [63:0] tmp_8_reg_4142;
wire   [63:0] tmp_9_fu_2700_p19;
reg   [63:0] tmp_9_reg_4147;
wire   [63:0] bitcast_ln14_124_fu_2793_p1;
wire   [63:0] bitcast_ln14_134_fu_2797_p1;
wire   [63:0] bitcast_ln14_65_fu_2801_p1;
wire   [63:0] bitcast_ln14_75_fu_2805_p1;
wire   [63:0] tmp_s_fu_2841_p19;
reg   [63:0] tmp_s_reg_4252;
wire   [63:0] tmp_10_fu_2912_p19;
reg   [63:0] tmp_10_reg_4257;
wire   [63:0] bitcast_ln14_85_fu_2998_p1;
wire   [63:0] bitcast_ln14_95_fu_3002_p1;
wire   [63:0] tmp_11_fu_3038_p19;
reg   [63:0] tmp_11_reg_4352;
wire   [63:0] tmp_12_fu_3109_p19;
reg   [63:0] tmp_12_reg_4357;
wire   [63:0] bitcast_ln14_105_fu_3206_p1;
wire   [63:0] bitcast_ln14_115_fu_3210_p1;
wire   [63:0] tmp_13_fu_3246_p19;
reg   [63:0] tmp_13_reg_4452;
wire   [63:0] tmp_14_fu_3317_p19;
reg   [63:0] tmp_14_reg_4457;
wire   [63:0] bitcast_ln14_125_fu_3356_p1;
wire   [63:0] bitcast_ln14_135_fu_3360_p1;
wire   [63:0] zext_ln9_fu_3364_p1;
reg   [63:0] zext_ln9_reg_4472;
wire   [63:0] zext_ln14_16_fu_3376_p1;
reg   [63:0] zext_ln14_16_reg_4478;
wire   [63:0] zext_ln14_17_fu_3390_p1;
reg   [63:0] zext_ln14_17_reg_4484;
wire   [63:0] zext_ln14_19_fu_3403_p1;
reg   [63:0] zext_ln14_19_reg_4490;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_1_fu_1690_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1710_p1;
wire   [63:0] zext_ln14_1_fu_1746_p1;
wire   [63:0] zext_ln14_18_fu_1776_p1;
wire   [63:0] zext_ln14_2_fu_1942_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1966_p1;
wire   [63:0] zext_ln14_4_fu_2132_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_2167_p1;
wire   [63:0] zext_ln14_6_fu_2337_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_2361_p1;
wire   [63:0] zext_ln14_8_fu_2540_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_2577_p1;
wire   [63:0] zext_ln14_10_fu_2754_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_2781_p1;
wire   [63:0] zext_ln14_12_fu_2959_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2986_p1;
wire   [63:0] zext_ln14_14_fu_3160_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_3184_p1;
reg   [6:0] s_fu_164;
wire   [6:0] add_ln13_fu_3196_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [8:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [8:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [8:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [8:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [8:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [8:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [8:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [8:0] emission_3_address0_local;
reg    emission_4_ce1_local;
reg   [8:0] emission_4_address1_local;
reg    emission_4_ce0_local;
reg   [8:0] emission_4_address0_local;
reg    emission_5_ce1_local;
reg   [8:0] emission_5_address1_local;
reg    emission_5_ce0_local;
reg   [8:0] emission_5_address0_local;
reg    emission_6_ce1_local;
reg   [8:0] emission_6_address1_local;
reg    emission_6_ce0_local;
reg   [8:0] emission_6_address0_local;
reg    emission_7_ce1_local;
reg   [8:0] emission_7_address1_local;
reg    emission_7_ce0_local;
reg   [8:0] emission_7_address0_local;
reg    init_1_ce1_local;
reg    init_1_ce0_local;
reg    init_2_ce1_local;
reg    init_2_ce0_local;
reg    init_3_ce1_local;
reg    init_3_ce0_local;
reg    init_4_ce1_local;
reg    init_4_ce0_local;
reg    init_5_ce1_local;
reg    init_5_ce0_local;
reg    init_6_ce1_local;
reg    init_6_ce0_local;
reg    init_7_ce1_local;
reg    init_7_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg   [63:0] grp_fu_1630_p0;
reg   [63:0] grp_fu_1630_p1;
reg   [63:0] grp_fu_1634_p0;
reg   [63:0] grp_fu_1634_p1;
wire   [8:0] or_ln_fu_1702_p3;
wire   [4:0] tmp_77_fu_1722_p4;
wire   [8:0] or_ln14_1_fu_1732_p3;
wire   [8:0] add_ln14_fu_1740_p2;
wire   [2:0] or_ln14_s_fu_1768_p3;
wire   [63:0] tmp_fu_1820_p2;
wire   [63:0] tmp_fu_1820_p4;
wire   [63:0] tmp_fu_1820_p6;
wire   [63:0] tmp_fu_1820_p8;
wire   [63:0] tmp_fu_1820_p10;
wire   [63:0] tmp_fu_1820_p12;
wire   [63:0] tmp_fu_1820_p14;
wire   [63:0] tmp_fu_1820_p16;
wire   [63:0] tmp_fu_1820_p17;
wire   [63:0] tmp_1_fu_1891_p2;
wire   [63:0] tmp_1_fu_1891_p4;
wire   [63:0] tmp_1_fu_1891_p6;
wire   [63:0] tmp_1_fu_1891_p8;
wire   [63:0] tmp_1_fu_1891_p10;
wire   [63:0] tmp_1_fu_1891_p12;
wire   [63:0] tmp_1_fu_1891_p14;
wire   [63:0] tmp_1_fu_1891_p16;
wire   [63:0] tmp_1_fu_1891_p17;
wire   [8:0] or_ln14_2_fu_1930_p3;
wire   [8:0] add_ln14_1_fu_1937_p2;
wire   [8:0] or_ln14_3_fu_1954_p3;
wire   [8:0] add_ln14_2_fu_1961_p2;
wire   [63:0] tmp_2_fu_2014_p2;
wire   [63:0] tmp_2_fu_2014_p4;
wire   [63:0] tmp_2_fu_2014_p6;
wire   [63:0] tmp_2_fu_2014_p8;
wire   [63:0] tmp_2_fu_2014_p10;
wire   [63:0] tmp_2_fu_2014_p12;
wire   [63:0] tmp_2_fu_2014_p14;
wire   [63:0] tmp_2_fu_2014_p16;
wire   [63:0] tmp_2_fu_2014_p17;
wire   [63:0] tmp_3_fu_2085_p2;
wire   [63:0] tmp_3_fu_2085_p4;
wire   [63:0] tmp_3_fu_2085_p6;
wire   [63:0] tmp_3_fu_2085_p8;
wire   [63:0] tmp_3_fu_2085_p10;
wire   [63:0] tmp_3_fu_2085_p12;
wire   [63:0] tmp_3_fu_2085_p14;
wire   [63:0] tmp_3_fu_2085_p16;
wire   [63:0] tmp_3_fu_2085_p17;
wire   [8:0] or_ln14_5_fu_2124_p4;
wire   [8:0] or_ln14_6_fu_2151_p5;
wire   [8:0] add_ln14_3_fu_2162_p2;
wire   [63:0] tmp_4_fu_2215_p2;
wire   [63:0] tmp_4_fu_2215_p4;
wire   [63:0] tmp_4_fu_2215_p6;
wire   [63:0] tmp_4_fu_2215_p8;
wire   [63:0] tmp_4_fu_2215_p10;
wire   [63:0] tmp_4_fu_2215_p12;
wire   [63:0] tmp_4_fu_2215_p14;
wire   [63:0] tmp_4_fu_2215_p16;
wire   [63:0] tmp_4_fu_2215_p17;
wire   [63:0] tmp_5_fu_2286_p2;
wire   [63:0] tmp_5_fu_2286_p4;
wire   [63:0] tmp_5_fu_2286_p6;
wire   [63:0] tmp_5_fu_2286_p8;
wire   [63:0] tmp_5_fu_2286_p10;
wire   [63:0] tmp_5_fu_2286_p12;
wire   [63:0] tmp_5_fu_2286_p14;
wire   [63:0] tmp_5_fu_2286_p16;
wire   [63:0] tmp_5_fu_2286_p17;
wire   [8:0] or_ln14_7_fu_2325_p3;
wire   [8:0] add_ln14_4_fu_2332_p2;
wire   [8:0] or_ln14_8_fu_2349_p3;
wire   [8:0] add_ln14_5_fu_2356_p2;
wire   [63:0] tmp_6_fu_2413_p2;
wire   [63:0] tmp_6_fu_2413_p4;
wire   [63:0] tmp_6_fu_2413_p6;
wire   [63:0] tmp_6_fu_2413_p8;
wire   [63:0] tmp_6_fu_2413_p10;
wire   [63:0] tmp_6_fu_2413_p12;
wire   [63:0] tmp_6_fu_2413_p14;
wire   [63:0] tmp_6_fu_2413_p16;
wire   [63:0] tmp_6_fu_2413_p17;
wire   [63:0] tmp_7_fu_2484_p2;
wire   [63:0] tmp_7_fu_2484_p4;
wire   [63:0] tmp_7_fu_2484_p6;
wire   [63:0] tmp_7_fu_2484_p8;
wire   [63:0] tmp_7_fu_2484_p10;
wire   [63:0] tmp_7_fu_2484_p12;
wire   [63:0] tmp_7_fu_2484_p14;
wire   [63:0] tmp_7_fu_2484_p16;
wire   [63:0] tmp_7_fu_2484_p17;
wire   [8:0] or_ln14_10_fu_2530_p5;
wire   [1:0] tmp_104_fu_2552_p4;
wire   [8:0] or_ln14_11_fu_2561_p5;
wire   [8:0] add_ln14_6_fu_2572_p2;
wire   [63:0] tmp_8_fu_2629_p2;
wire   [63:0] tmp_8_fu_2629_p4;
wire   [63:0] tmp_8_fu_2629_p6;
wire   [63:0] tmp_8_fu_2629_p8;
wire   [63:0] tmp_8_fu_2629_p10;
wire   [63:0] tmp_8_fu_2629_p12;
wire   [63:0] tmp_8_fu_2629_p14;
wire   [63:0] tmp_8_fu_2629_p16;
wire   [63:0] tmp_8_fu_2629_p17;
wire   [63:0] tmp_9_fu_2700_p2;
wire   [63:0] tmp_9_fu_2700_p4;
wire   [63:0] tmp_9_fu_2700_p6;
wire   [63:0] tmp_9_fu_2700_p8;
wire   [63:0] tmp_9_fu_2700_p10;
wire   [63:0] tmp_9_fu_2700_p12;
wire   [63:0] tmp_9_fu_2700_p14;
wire   [63:0] tmp_9_fu_2700_p16;
wire   [63:0] tmp_9_fu_2700_p17;
wire   [8:0] or_ln14_12_fu_2739_p5;
wire   [8:0] add_ln14_7_fu_2749_p2;
wire   [8:0] or_ln14_13_fu_2766_p5;
wire   [8:0] add_ln14_8_fu_2776_p2;
wire   [63:0] tmp_s_fu_2841_p2;
wire   [63:0] tmp_s_fu_2841_p4;
wire   [63:0] tmp_s_fu_2841_p6;
wire   [63:0] tmp_s_fu_2841_p8;
wire   [63:0] tmp_s_fu_2841_p10;
wire   [63:0] tmp_s_fu_2841_p12;
wire   [63:0] tmp_s_fu_2841_p14;
wire   [63:0] tmp_s_fu_2841_p16;
wire   [63:0] tmp_s_fu_2841_p17;
wire   [63:0] tmp_10_fu_2912_p2;
wire   [63:0] tmp_10_fu_2912_p4;
wire   [63:0] tmp_10_fu_2912_p6;
wire   [63:0] tmp_10_fu_2912_p8;
wire   [63:0] tmp_10_fu_2912_p10;
wire   [63:0] tmp_10_fu_2912_p12;
wire   [63:0] tmp_10_fu_2912_p14;
wire   [63:0] tmp_10_fu_2912_p16;
wire   [63:0] tmp_10_fu_2912_p17;
wire   [8:0] or_ln14_15_fu_2951_p4;
wire   [8:0] or_ln14_16_fu_2971_p5;
wire   [8:0] add_ln14_9_fu_2981_p2;
wire   [63:0] tmp_11_fu_3038_p2;
wire   [63:0] tmp_11_fu_3038_p4;
wire   [63:0] tmp_11_fu_3038_p6;
wire   [63:0] tmp_11_fu_3038_p8;
wire   [63:0] tmp_11_fu_3038_p10;
wire   [63:0] tmp_11_fu_3038_p12;
wire   [63:0] tmp_11_fu_3038_p14;
wire   [63:0] tmp_11_fu_3038_p16;
wire   [63:0] tmp_11_fu_3038_p17;
wire   [63:0] tmp_12_fu_3109_p2;
wire   [63:0] tmp_12_fu_3109_p4;
wire   [63:0] tmp_12_fu_3109_p6;
wire   [63:0] tmp_12_fu_3109_p8;
wire   [63:0] tmp_12_fu_3109_p10;
wire   [63:0] tmp_12_fu_3109_p12;
wire   [63:0] tmp_12_fu_3109_p14;
wire   [63:0] tmp_12_fu_3109_p16;
wire   [63:0] tmp_12_fu_3109_p17;
wire   [8:0] or_ln14_17_fu_3148_p3;
wire   [8:0] add_ln14_10_fu_3155_p2;
wire   [8:0] or_ln14_18_fu_3172_p3;
wire   [8:0] add_ln14_11_fu_3179_p2;
wire   [63:0] tmp_13_fu_3246_p2;
wire   [63:0] tmp_13_fu_3246_p4;
wire   [63:0] tmp_13_fu_3246_p6;
wire   [63:0] tmp_13_fu_3246_p8;
wire   [63:0] tmp_13_fu_3246_p10;
wire   [63:0] tmp_13_fu_3246_p12;
wire   [63:0] tmp_13_fu_3246_p14;
wire   [63:0] tmp_13_fu_3246_p16;
wire   [63:0] tmp_13_fu_3246_p17;
wire   [63:0] tmp_14_fu_3317_p2;
wire   [63:0] tmp_14_fu_3317_p4;
wire   [63:0] tmp_14_fu_3317_p6;
wire   [63:0] tmp_14_fu_3317_p8;
wire   [63:0] tmp_14_fu_3317_p10;
wire   [63:0] tmp_14_fu_3317_p12;
wire   [63:0] tmp_14_fu_3317_p14;
wire   [63:0] tmp_14_fu_3317_p16;
wire   [63:0] tmp_14_fu_3317_p17;
wire   [3:0] or_ln14_4_fu_3369_p3;
wire   [3:0] or_ln14_9_fu_3382_p4;
wire   [3:0] or_ln14_14_fu_3396_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [2:0] tmp_fu_1820_p1;
wire   [2:0] tmp_fu_1820_p3;
wire   [2:0] tmp_fu_1820_p5;
wire   [2:0] tmp_fu_1820_p7;
wire  signed [2:0] tmp_fu_1820_p9;
wire  signed [2:0] tmp_fu_1820_p11;
wire  signed [2:0] tmp_fu_1820_p13;
wire  signed [2:0] tmp_fu_1820_p15;
wire   [2:0] tmp_1_fu_1891_p1;
wire   [2:0] tmp_1_fu_1891_p3;
wire   [2:0] tmp_1_fu_1891_p5;
wire   [2:0] tmp_1_fu_1891_p7;
wire  signed [2:0] tmp_1_fu_1891_p9;
wire  signed [2:0] tmp_1_fu_1891_p11;
wire  signed [2:0] tmp_1_fu_1891_p13;
wire  signed [2:0] tmp_1_fu_1891_p15;
wire   [2:0] tmp_2_fu_2014_p1;
wire   [2:0] tmp_2_fu_2014_p3;
wire   [2:0] tmp_2_fu_2014_p5;
wire   [2:0] tmp_2_fu_2014_p7;
wire  signed [2:0] tmp_2_fu_2014_p9;
wire  signed [2:0] tmp_2_fu_2014_p11;
wire  signed [2:0] tmp_2_fu_2014_p13;
wire  signed [2:0] tmp_2_fu_2014_p15;
wire   [2:0] tmp_3_fu_2085_p1;
wire   [2:0] tmp_3_fu_2085_p3;
wire   [2:0] tmp_3_fu_2085_p5;
wire   [2:0] tmp_3_fu_2085_p7;
wire  signed [2:0] tmp_3_fu_2085_p9;
wire  signed [2:0] tmp_3_fu_2085_p11;
wire  signed [2:0] tmp_3_fu_2085_p13;
wire  signed [2:0] tmp_3_fu_2085_p15;
wire   [2:0] tmp_4_fu_2215_p1;
wire   [2:0] tmp_4_fu_2215_p3;
wire   [2:0] tmp_4_fu_2215_p5;
wire   [2:0] tmp_4_fu_2215_p7;
wire  signed [2:0] tmp_4_fu_2215_p9;
wire  signed [2:0] tmp_4_fu_2215_p11;
wire  signed [2:0] tmp_4_fu_2215_p13;
wire  signed [2:0] tmp_4_fu_2215_p15;
wire   [2:0] tmp_5_fu_2286_p1;
wire   [2:0] tmp_5_fu_2286_p3;
wire   [2:0] tmp_5_fu_2286_p5;
wire   [2:0] tmp_5_fu_2286_p7;
wire  signed [2:0] tmp_5_fu_2286_p9;
wire  signed [2:0] tmp_5_fu_2286_p11;
wire  signed [2:0] tmp_5_fu_2286_p13;
wire  signed [2:0] tmp_5_fu_2286_p15;
wire   [2:0] tmp_6_fu_2413_p1;
wire   [2:0] tmp_6_fu_2413_p3;
wire   [2:0] tmp_6_fu_2413_p5;
wire   [2:0] tmp_6_fu_2413_p7;
wire  signed [2:0] tmp_6_fu_2413_p9;
wire  signed [2:0] tmp_6_fu_2413_p11;
wire  signed [2:0] tmp_6_fu_2413_p13;
wire  signed [2:0] tmp_6_fu_2413_p15;
wire   [2:0] tmp_7_fu_2484_p1;
wire   [2:0] tmp_7_fu_2484_p3;
wire   [2:0] tmp_7_fu_2484_p5;
wire   [2:0] tmp_7_fu_2484_p7;
wire  signed [2:0] tmp_7_fu_2484_p9;
wire  signed [2:0] tmp_7_fu_2484_p11;
wire  signed [2:0] tmp_7_fu_2484_p13;
wire  signed [2:0] tmp_7_fu_2484_p15;
wire   [2:0] tmp_8_fu_2629_p1;
wire   [2:0] tmp_8_fu_2629_p3;
wire   [2:0] tmp_8_fu_2629_p5;
wire   [2:0] tmp_8_fu_2629_p7;
wire  signed [2:0] tmp_8_fu_2629_p9;
wire  signed [2:0] tmp_8_fu_2629_p11;
wire  signed [2:0] tmp_8_fu_2629_p13;
wire  signed [2:0] tmp_8_fu_2629_p15;
wire   [2:0] tmp_9_fu_2700_p1;
wire   [2:0] tmp_9_fu_2700_p3;
wire   [2:0] tmp_9_fu_2700_p5;
wire   [2:0] tmp_9_fu_2700_p7;
wire  signed [2:0] tmp_9_fu_2700_p9;
wire  signed [2:0] tmp_9_fu_2700_p11;
wire  signed [2:0] tmp_9_fu_2700_p13;
wire  signed [2:0] tmp_9_fu_2700_p15;
wire   [2:0] tmp_s_fu_2841_p1;
wire   [2:0] tmp_s_fu_2841_p3;
wire   [2:0] tmp_s_fu_2841_p5;
wire   [2:0] tmp_s_fu_2841_p7;
wire  signed [2:0] tmp_s_fu_2841_p9;
wire  signed [2:0] tmp_s_fu_2841_p11;
wire  signed [2:0] tmp_s_fu_2841_p13;
wire  signed [2:0] tmp_s_fu_2841_p15;
wire   [2:0] tmp_10_fu_2912_p1;
wire   [2:0] tmp_10_fu_2912_p3;
wire   [2:0] tmp_10_fu_2912_p5;
wire   [2:0] tmp_10_fu_2912_p7;
wire  signed [2:0] tmp_10_fu_2912_p9;
wire  signed [2:0] tmp_10_fu_2912_p11;
wire  signed [2:0] tmp_10_fu_2912_p13;
wire  signed [2:0] tmp_10_fu_2912_p15;
wire   [2:0] tmp_11_fu_3038_p1;
wire   [2:0] tmp_11_fu_3038_p3;
wire   [2:0] tmp_11_fu_3038_p5;
wire   [2:0] tmp_11_fu_3038_p7;
wire  signed [2:0] tmp_11_fu_3038_p9;
wire  signed [2:0] tmp_11_fu_3038_p11;
wire  signed [2:0] tmp_11_fu_3038_p13;
wire  signed [2:0] tmp_11_fu_3038_p15;
wire   [2:0] tmp_12_fu_3109_p1;
wire   [2:0] tmp_12_fu_3109_p3;
wire   [2:0] tmp_12_fu_3109_p5;
wire   [2:0] tmp_12_fu_3109_p7;
wire  signed [2:0] tmp_12_fu_3109_p9;
wire  signed [2:0] tmp_12_fu_3109_p11;
wire  signed [2:0] tmp_12_fu_3109_p13;
wire  signed [2:0] tmp_12_fu_3109_p15;
wire   [2:0] tmp_13_fu_3246_p1;
wire   [2:0] tmp_13_fu_3246_p3;
wire   [2:0] tmp_13_fu_3246_p5;
wire   [2:0] tmp_13_fu_3246_p7;
wire  signed [2:0] tmp_13_fu_3246_p9;
wire  signed [2:0] tmp_13_fu_3246_p11;
wire  signed [2:0] tmp_13_fu_3246_p13;
wire  signed [2:0] tmp_13_fu_3246_p15;
wire   [2:0] tmp_14_fu_3317_p1;
wire   [2:0] tmp_14_fu_3317_p3;
wire   [2:0] tmp_14_fu_3317_p5;
wire   [2:0] tmp_14_fu_3317_p7;
wire  signed [2:0] tmp_14_fu_3317_p9;
wire  signed [2:0] tmp_14_fu_3317_p11;
wire  signed [2:0] tmp_14_fu_3317_p13;
wire  signed [2:0] tmp_14_fu_3317_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_164 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1820_p2),.din1(tmp_fu_1820_p4),.din2(tmp_fu_1820_p6),.din3(tmp_fu_1820_p8),.din4(tmp_fu_1820_p10),.din5(tmp_fu_1820_p12),.din6(tmp_fu_1820_p14),.din7(tmp_fu_1820_p16),.def(tmp_fu_1820_p17),.sel(empty),.dout(tmp_fu_1820_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1891_p2),.din1(tmp_1_fu_1891_p4),.din2(tmp_1_fu_1891_p6),.din3(tmp_1_fu_1891_p8),.din4(tmp_1_fu_1891_p10),.din5(tmp_1_fu_1891_p12),.din6(tmp_1_fu_1891_p14),.din7(tmp_1_fu_1891_p16),.def(tmp_1_fu_1891_p17),.sel(empty),.dout(tmp_1_fu_1891_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_2014_p2),.din1(tmp_2_fu_2014_p4),.din2(tmp_2_fu_2014_p6),.din3(tmp_2_fu_2014_p8),.din4(tmp_2_fu_2014_p10),.din5(tmp_2_fu_2014_p12),.din6(tmp_2_fu_2014_p14),.din7(tmp_2_fu_2014_p16),.def(tmp_2_fu_2014_p17),.sel(empty),.dout(tmp_2_fu_2014_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_2085_p2),.din1(tmp_3_fu_2085_p4),.din2(tmp_3_fu_2085_p6),.din3(tmp_3_fu_2085_p8),.din4(tmp_3_fu_2085_p10),.din5(tmp_3_fu_2085_p12),.din6(tmp_3_fu_2085_p14),.din7(tmp_3_fu_2085_p16),.def(tmp_3_fu_2085_p17),.sel(empty),.dout(tmp_3_fu_2085_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_4_fu_2215_p2),.din1(tmp_4_fu_2215_p4),.din2(tmp_4_fu_2215_p6),.din3(tmp_4_fu_2215_p8),.din4(tmp_4_fu_2215_p10),.din5(tmp_4_fu_2215_p12),.din6(tmp_4_fu_2215_p14),.din7(tmp_4_fu_2215_p16),.def(tmp_4_fu_2215_p17),.sel(empty),.dout(tmp_4_fu_2215_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_2286_p2),.din1(tmp_5_fu_2286_p4),.din2(tmp_5_fu_2286_p6),.din3(tmp_5_fu_2286_p8),.din4(tmp_5_fu_2286_p10),.din5(tmp_5_fu_2286_p12),.din6(tmp_5_fu_2286_p14),.din7(tmp_5_fu_2286_p16),.def(tmp_5_fu_2286_p17),.sel(empty),.dout(tmp_5_fu_2286_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_2413_p2),.din1(tmp_6_fu_2413_p4),.din2(tmp_6_fu_2413_p6),.din3(tmp_6_fu_2413_p8),.din4(tmp_6_fu_2413_p10),.din5(tmp_6_fu_2413_p12),.din6(tmp_6_fu_2413_p14),.din7(tmp_6_fu_2413_p16),.def(tmp_6_fu_2413_p17),.sel(empty),.dout(tmp_6_fu_2413_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_2484_p2),.din1(tmp_7_fu_2484_p4),.din2(tmp_7_fu_2484_p6),.din3(tmp_7_fu_2484_p8),.din4(tmp_7_fu_2484_p10),.din5(tmp_7_fu_2484_p12),.din6(tmp_7_fu_2484_p14),.din7(tmp_7_fu_2484_p16),.def(tmp_7_fu_2484_p17),.sel(empty),.dout(tmp_7_fu_2484_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U11(.din0(tmp_8_fu_2629_p2),.din1(tmp_8_fu_2629_p4),.din2(tmp_8_fu_2629_p6),.din3(tmp_8_fu_2629_p8),.din4(tmp_8_fu_2629_p10),.din5(tmp_8_fu_2629_p12),.din6(tmp_8_fu_2629_p14),.din7(tmp_8_fu_2629_p16),.def(tmp_8_fu_2629_p17),.sel(empty),.dout(tmp_8_fu_2629_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U12(.din0(tmp_9_fu_2700_p2),.din1(tmp_9_fu_2700_p4),.din2(tmp_9_fu_2700_p6),.din3(tmp_9_fu_2700_p8),.din4(tmp_9_fu_2700_p10),.din5(tmp_9_fu_2700_p12),.din6(tmp_9_fu_2700_p14),.din7(tmp_9_fu_2700_p16),.def(tmp_9_fu_2700_p17),.sel(empty),.dout(tmp_9_fu_2700_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U13(.din0(tmp_s_fu_2841_p2),.din1(tmp_s_fu_2841_p4),.din2(tmp_s_fu_2841_p6),.din3(tmp_s_fu_2841_p8),.din4(tmp_s_fu_2841_p10),.din5(tmp_s_fu_2841_p12),.din6(tmp_s_fu_2841_p14),.din7(tmp_s_fu_2841_p16),.def(tmp_s_fu_2841_p17),.sel(empty),.dout(tmp_s_fu_2841_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U14(.din0(tmp_10_fu_2912_p2),.din1(tmp_10_fu_2912_p4),.din2(tmp_10_fu_2912_p6),.din3(tmp_10_fu_2912_p8),.din4(tmp_10_fu_2912_p10),.din5(tmp_10_fu_2912_p12),.din6(tmp_10_fu_2912_p14),.din7(tmp_10_fu_2912_p16),.def(tmp_10_fu_2912_p17),.sel(empty),.dout(tmp_10_fu_2912_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U15(.din0(tmp_11_fu_3038_p2),.din1(tmp_11_fu_3038_p4),.din2(tmp_11_fu_3038_p6),.din3(tmp_11_fu_3038_p8),.din4(tmp_11_fu_3038_p10),.din5(tmp_11_fu_3038_p12),.din6(tmp_11_fu_3038_p14),.din7(tmp_11_fu_3038_p16),.def(tmp_11_fu_3038_p17),.sel(empty),.dout(tmp_11_fu_3038_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U16(.din0(tmp_12_fu_3109_p2),.din1(tmp_12_fu_3109_p4),.din2(tmp_12_fu_3109_p6),.din3(tmp_12_fu_3109_p8),.din4(tmp_12_fu_3109_p10),.din5(tmp_12_fu_3109_p12),.din6(tmp_12_fu_3109_p14),.din7(tmp_12_fu_3109_p16),.def(tmp_12_fu_3109_p17),.sel(empty),.dout(tmp_12_fu_3109_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U17(.din0(tmp_13_fu_3246_p2),.din1(tmp_13_fu_3246_p4),.din2(tmp_13_fu_3246_p6),.din3(tmp_13_fu_3246_p8),.din4(tmp_13_fu_3246_p10),.din5(tmp_13_fu_3246_p12),.din6(tmp_13_fu_3246_p14),.din7(tmp_13_fu_3246_p16),.def(tmp_13_fu_3246_p17),.sel(empty),.dout(tmp_13_fu_3246_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U18(.din0(tmp_14_fu_3317_p2),.din1(tmp_14_fu_3317_p4),.din2(tmp_14_fu_3317_p6),.din3(tmp_14_fu_3317_p8),.din4(tmp_14_fu_3317_p10),.din5(tmp_14_fu_3317_p12),.din6(tmp_14_fu_3317_p14),.din7(tmp_14_fu_3317_p16),.def(tmp_14_fu_3317_p17),.sel(empty),.dout(tmp_14_fu_3317_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_164 <= 7'd0;
    end else if (((tmp_39_reg_3466 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_164 <= add_ln13_fu_3196_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_3443[4 : 0] <= conv3_udiv_cast_cast_fu_1650_p1[4 : 0];
        lshr_ln9_1_reg_3477 <= {{ap_sig_allocacmp_s_1[5:3]}};
        lshr_ln9_1_reg_3477_pp0_iter1_reg <= lshr_ln9_1_reg_3477;
        lshr_ln9_reg_3470 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_reg_3470_pp0_iter1_reg <= lshr_ln9_reg_3470;
        s_1_reg_3458 <= ap_sig_allocacmp_s_1;
        tmp_103_reg_3571 <= {{ap_sig_allocacmp_s_1[5:4]}};
        tmp_103_reg_3571_pp0_iter1_reg <= tmp_103_reg_3571;
        tmp_13_reg_4452 <= tmp_13_fu_3246_p19;
        tmp_14_reg_4457 <= tmp_14_fu_3317_p19;
        tmp_39_reg_3466 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_39_reg_3466_pp0_iter1_reg <= tmp_39_reg_3466;
        zext_ln14_19_reg_4490[3 : 2] <= zext_ln14_19_fu_3403_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_3755 <= init_0_q0;
        init_0_load_reg_3660 <= init_0_q1;
        init_1_load_1_reg_3765 <= init_1_q0;
        init_1_load_reg_3760 <= init_1_q1;
        init_2_load_1_reg_3775 <= init_2_q0;
        init_2_load_reg_3770 <= init_2_q1;
        init_3_load_1_reg_3785 <= init_3_q0;
        init_3_load_reg_3780 <= init_3_q1;
        init_4_load_1_reg_3795 <= init_4_q0;
        init_4_load_reg_3790 <= init_4_q1;
        init_5_load_1_reg_3805 <= init_5_q0;
        init_5_load_reg_3800 <= init_5_q1;
        init_6_load_1_reg_3815 <= init_6_q0;
        init_6_load_reg_3810 <= init_6_q1;
        init_7_load_1_reg_3825 <= init_7_q0;
        init_7_load_reg_3820 <= init_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1638 <= grp_fu_992_p_dout0;
        reg_1644 <= grp_fu_2009_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_10_reg_4257 <= tmp_10_fu_2912_p19;
        tmp_s_reg_4252 <= tmp_s_fu_2841_p19;
        zext_ln14_17_reg_4484[0] <= zext_ln14_17_fu_3390_p1[0];
zext_ln14_17_reg_4484[3 : 2] <= zext_ln14_17_fu_3390_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_11_reg_4352 <= tmp_11_fu_3038_p19;
        tmp_12_reg_4357 <= tmp_12_fu_3109_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_3670 <= tmp_1_fu_1891_p19;
        tmp_reg_3665 <= tmp_fu_1820_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_3835 <= tmp_2_fu_2014_p19;
        tmp_3_reg_3840 <= tmp_3_fu_2085_p19;
        tmp_40_reg_3885 <= s_1_reg_3458[32'd1];
        zext_ln9_reg_4472[3 : 0] <= zext_ln9_fu_3364_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_41_reg_4045 <= s_1_reg_3458[32'd2];
        tmp_41_reg_4045_pp0_iter1_reg <= tmp_41_reg_4045;
        tmp_6_reg_4035 <= tmp_6_fu_2413_p19;
        tmp_7_reg_4040 <= tmp_7_fu_2484_p19;
        zext_ln14_16_reg_4478[3 : 1] <= zext_ln14_16_fu_3376_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_3935 <= tmp_4_fu_2215_p19;
        tmp_5_reg_3940 <= tmp_5_fu_2286_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_8_reg_4142 <= tmp_8_fu_2629_p19;
        tmp_9_reg_4147 <= tmp_9_fu_2700_p19;
    end
end
always @ (*) begin
    if (((tmp_39_reg_3466 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (tmp_39_reg_3466_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_164;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_4_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_4_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_4_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_4_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_4_address0_local = 'bx;
        end
    end else begin
        emission_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_4_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_4_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_4_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_4_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_4_address1_local = 'bx;
        end
    end else begin
        emission_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_5_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_5_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_5_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_5_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_5_address0_local = 'bx;
        end
    end else begin
        emission_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_5_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_5_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_5_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_5_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_5_address1_local = 'bx;
        end
    end else begin
        emission_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_6_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_6_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_6_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_6_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_6_address0_local = 'bx;
        end
    end else begin
        emission_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_6_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_6_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_6_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_6_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_6_address1_local = 'bx;
        end
    end else begin
        emission_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_7_address0_local = zext_ln14_15_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_7_address0_local = zext_ln14_13_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_7_address0_local = zext_ln14_11_fu_2781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_7_address0_local = zext_ln14_9_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address0_local = zext_ln14_7_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address0_local = zext_ln14_5_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1966_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1746_p1;
        end else begin
            emission_7_address0_local = 'bx;
        end
    end else begin
        emission_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_7_address1_local = zext_ln14_14_fu_3160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_7_address1_local = zext_ln14_12_fu_2959_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_7_address1_local = zext_ln14_10_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_7_address1_local = zext_ln14_8_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address1_local = zext_ln14_6_fu_2337_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address1_local = zext_ln14_4_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1710_p1;
        end else begin
            emission_7_address1_local = 'bx;
        end
    end else begin
        emission_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1630_p0 = bitcast_ln14_125_fu_3356_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1630_p0 = bitcast_ln14_105_fu_3206_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1630_p0 = bitcast_ln14_85_fu_2998_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1630_p0 = bitcast_ln14_65_fu_2801_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1630_p0 = bitcast_ln14_124_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1630_p0 = bitcast_ln14_104_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1630_p0 = bitcast_ln14_84_fu_2373_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1630_p0 = bitcast_ln14_fu_1978_p1;
    end else begin
        grp_fu_1630_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1630_p1 = tmp_13_reg_4452;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1630_p1 = tmp_11_reg_4352;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1630_p1 = tmp_s_reg_4252;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1630_p1 = tmp_8_reg_4142;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1630_p1 = tmp_6_reg_4035;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1630_p1 = tmp_4_reg_3935;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1630_p1 = tmp_2_reg_3835;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1630_p1 = tmp_reg_3665;
    end else begin
        grp_fu_1630_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1634_p0 = bitcast_ln14_135_fu_3360_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1634_p0 = bitcast_ln14_115_fu_3210_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1634_p0 = bitcast_ln14_95_fu_3002_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1634_p0 = bitcast_ln14_75_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1634_p0 = bitcast_ln14_134_fu_2797_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1634_p0 = bitcast_ln14_114_fu_2593_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1634_p0 = bitcast_ln14_94_fu_2377_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1634_p0 = bitcast_ln14_74_fu_2179_p1;
    end else begin
        grp_fu_1634_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1634_p1 = tmp_14_reg_4457;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1634_p1 = tmp_12_reg_4357;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1634_p1 = tmp_10_reg_4257;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1634_p1 = tmp_9_reg_4147;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1634_p1 = tmp_7_reg_4040;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1634_p1 = tmp_5_reg_3940;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1634_p1 = tmp_3_reg_3840;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1634_p1 = tmp_1_reg_3670;
    end else begin
        grp_fu_1634_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce1_local = 1'b1;
    end else begin
        init_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce1_local = 1'b1;
    end else begin
        init_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_4_ce0_local = 1'b1;
    end else begin
        init_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_4_ce1_local = 1'b1;
    end else begin
        init_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_5_ce0_local = 1'b1;
    end else begin
        init_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_5_ce1_local = 1'b1;
    end else begin
        init_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_6_ce0_local = 1'b1;
    end else begin
        init_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_6_ce1_local = 1'b1;
    end else begin
        init_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce0_local = 1'b1;
    end else begin
        init_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce1_local = 1'b1;
    end else begin
        init_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_19_fu_3403_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_17_fu_3390_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_16_fu_3376_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_fu_3364_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_address0_local = zext_ln14_19_reg_4490;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_2_address0_local = zext_ln14_17_reg_4484;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_2_address0_local = zext_ln14_16_reg_4478;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln9_reg_4472;
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_address0_local = zext_ln14_19_reg_4490;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_3_address0_local = zext_ln14_17_reg_4484;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_3_address0_local = zext_ln14_16_reg_4478;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln9_reg_4472;
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_19_fu_3403_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_17_fu_3390_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_16_fu_3376_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_fu_3364_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_3196_p2 = (s_1_reg_3458 + 7'd16);
assign add_ln14_10_fu_3155_p2 = (or_ln14_17_fu_3148_p3 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_11_fu_3179_p2 = (or_ln14_18_fu_3172_p3 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_1_fu_1937_p2 = (or_ln14_2_fu_1930_p3 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_2_fu_1961_p2 = (or_ln14_3_fu_1954_p3 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_3_fu_2162_p2 = (or_ln14_6_fu_2151_p5 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_4_fu_2332_p2 = (or_ln14_7_fu_2325_p3 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_5_fu_2356_p2 = (or_ln14_8_fu_2349_p3 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_6_fu_2572_p2 = (or_ln14_11_fu_2561_p5 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_7_fu_2749_p2 = (or_ln14_12_fu_2739_p5 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_8_fu_2776_p2 = (or_ln14_13_fu_2766_p5 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_9_fu_2981_p2 = (or_ln14_16_fu_2971_p5 + conv3_udiv_cast_cast_reg_3443);
assign add_ln14_fu_1740_p2 = (or_ln14_1_fu_1732_p3 + conv3_udiv_cast_cast_fu_1650_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_104_fu_2589_p1 = init_4_load_reg_3790;
assign bitcast_ln14_105_fu_3206_p1 = init_4_load_1_reg_3795;
assign bitcast_ln14_114_fu_2593_p1 = init_5_load_reg_3800;
assign bitcast_ln14_115_fu_3210_p1 = init_5_load_1_reg_3805;
assign bitcast_ln14_124_fu_2793_p1 = init_6_load_reg_3810;
assign bitcast_ln14_125_fu_3356_p1 = init_6_load_1_reg_3815;
assign bitcast_ln14_134_fu_2797_p1 = init_7_load_reg_3820;
assign bitcast_ln14_135_fu_3360_p1 = init_7_load_1_reg_3825;
assign bitcast_ln14_65_fu_2801_p1 = init_0_load_1_reg_3755;
assign bitcast_ln14_74_fu_2179_p1 = init_1_load_reg_3760;
assign bitcast_ln14_75_fu_2805_p1 = init_1_load_1_reg_3765;
assign bitcast_ln14_84_fu_2373_p1 = init_2_load_reg_3770;
assign bitcast_ln14_85_fu_2998_p1 = init_2_load_1_reg_3775;
assign bitcast_ln14_94_fu_2377_p1 = init_3_load_reg_3780;
assign bitcast_ln14_95_fu_3002_p1 = init_3_load_1_reg_3785;
assign bitcast_ln14_fu_1978_p1 = init_0_load_reg_3660;
assign conv3_udiv_cast_cast_fu_1650_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = emission_2_address0_local;
assign emission_2_address1 = emission_2_address1_local;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = emission_3_address0_local;
assign emission_3_address1 = emission_3_address1_local;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign emission_4_address0 = emission_4_address0_local;
assign emission_4_address1 = emission_4_address1_local;
assign emission_4_ce0 = emission_4_ce0_local;
assign emission_4_ce1 = emission_4_ce1_local;
assign emission_5_address0 = emission_5_address0_local;
assign emission_5_address1 = emission_5_address1_local;
assign emission_5_ce0 = emission_5_ce0_local;
assign emission_5_ce1 = emission_5_ce1_local;
assign emission_6_address0 = emission_6_address0_local;
assign emission_6_address1 = emission_6_address1_local;
assign emission_6_ce0 = emission_6_ce0_local;
assign emission_6_ce1 = emission_6_ce1_local;
assign emission_7_address0 = emission_7_address0_local;
assign emission_7_address1 = emission_7_address1_local;
assign emission_7_ce0 = emission_7_ce0_local;
assign emission_7_ce1 = emission_7_ce1_local;
assign grp_fu_2009_p_ce = 1'b1;
assign grp_fu_2009_p_din0 = grp_fu_1634_p0;
assign grp_fu_2009_p_din1 = grp_fu_1634_p1;
assign grp_fu_2009_p_opcode = 2'd0;
assign grp_fu_992_p_ce = 1'b1;
assign grp_fu_992_p_din0 = grp_fu_1630_p0;
assign grp_fu_992_p_din1 = grp_fu_1630_p1;
assign grp_fu_992_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_18_fu_1776_p1;
assign init_0_address1 = zext_ln9_1_fu_1690_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_18_fu_1776_p1;
assign init_1_address1 = zext_ln9_1_fu_1690_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = zext_ln14_18_fu_1776_p1;
assign init_2_address1 = zext_ln9_1_fu_1690_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = zext_ln14_18_fu_1776_p1;
assign init_3_address1 = zext_ln9_1_fu_1690_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign init_4_address0 = zext_ln14_18_fu_1776_p1;
assign init_4_address1 = zext_ln9_1_fu_1690_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_4_ce1 = init_4_ce1_local;
assign init_5_address0 = zext_ln14_18_fu_1776_p1;
assign init_5_address1 = zext_ln9_1_fu_1690_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_5_ce1 = init_5_ce1_local;
assign init_6_address0 = zext_ln14_18_fu_1776_p1;
assign init_6_address1 = zext_ln9_1_fu_1690_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_6_ce1 = init_6_ce1_local;
assign init_7_address0 = zext_ln14_18_fu_1776_p1;
assign init_7_address1 = zext_ln9_1_fu_1690_p1;
assign init_7_ce0 = init_7_ce0_local;
assign init_7_ce1 = init_7_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1644;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1638;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1644;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1638;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_1680_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign lshr_ln9_fu_1670_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_10_fu_2530_p5 = {{{{tmp_103_reg_3571}, {1'd1}}, {tmp_41_fu_2523_p3}}, {conv3_udiv}};
assign or_ln14_11_fu_2561_p5 = {{{{tmp_103_reg_3571}, {1'd1}}, {tmp_104_fu_2552_p4}}, {4'd8}};
assign or_ln14_12_fu_2739_p5 = {{{{tmp_103_reg_3571}, {1'd1}}, {tmp_41_reg_4045}}, {5'd16}};
assign or_ln14_13_fu_2766_p5 = {{{{tmp_103_reg_3571}, {1'd1}}, {tmp_41_reg_4045}}, {5'd24}};
assign or_ln14_14_fu_3396_p3 = {{tmp_103_reg_3571_pp0_iter1_reg}, {2'd3}};
assign or_ln14_15_fu_2951_p4 = {{{tmp_103_reg_3571}, {2'd3}}, {conv3_udiv}};
assign or_ln14_16_fu_2971_p5 = {{{{tmp_103_reg_3571}, {2'd3}}, {tmp_40_reg_3885}}, {4'd8}};
assign or_ln14_17_fu_3148_p3 = {{tmp_103_reg_3571}, {7'd112}};
assign or_ln14_18_fu_3172_p3 = {{tmp_103_reg_3571}, {7'd120}};
assign or_ln14_1_fu_1732_p3 = {{tmp_77_fu_1722_p4}, {4'd8}};
assign or_ln14_2_fu_1930_p3 = {{lshr_ln9_reg_3470}, {5'd16}};
assign or_ln14_3_fu_1954_p3 = {{lshr_ln9_reg_3470}, {5'd24}};
assign or_ln14_4_fu_3369_p3 = {{lshr_ln9_1_reg_3477_pp0_iter1_reg}, {1'd1}};
assign or_ln14_5_fu_2124_p4 = {{{lshr_ln9_1_reg_3477}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_2151_p5 = {{{{lshr_ln9_1_reg_3477}, {1'd1}}, {tmp_40_fu_2144_p3}}, {4'd8}};
assign or_ln14_7_fu_2325_p3 = {{lshr_ln9_1_reg_3477}, {6'd48}};
assign or_ln14_8_fu_2349_p3 = {{lshr_ln9_1_reg_3477}, {6'd56}};
assign or_ln14_9_fu_3382_p4 = {{{tmp_103_reg_3571_pp0_iter1_reg}, {1'd1}}, {tmp_41_reg_4045_pp0_iter1_reg}};
assign or_ln14_s_fu_1768_p3 = {{tmp_103_fu_1758_p4}, {1'd1}};
assign or_ln_fu_1702_p3 = {{lshr_ln9_fu_1670_p4}, {conv3_udiv}};
assign tmp_103_fu_1758_p4 = {{ap_sig_allocacmp_s_1[5:4]}};
assign tmp_104_fu_2552_p4 = {{s_1_reg_3458[2:1]}};
assign tmp_10_fu_2912_p10 = emission_4_q0;
assign tmp_10_fu_2912_p12 = emission_5_q0;
assign tmp_10_fu_2912_p14 = emission_6_q0;
assign tmp_10_fu_2912_p16 = emission_7_q0;
assign tmp_10_fu_2912_p17 = 'bx;
assign tmp_10_fu_2912_p2 = emission_0_q0;
assign tmp_10_fu_2912_p4 = emission_1_q0;
assign tmp_10_fu_2912_p6 = emission_2_q0;
assign tmp_10_fu_2912_p8 = emission_3_q0;
assign tmp_11_fu_3038_p10 = emission_4_q1;
assign tmp_11_fu_3038_p12 = emission_5_q1;
assign tmp_11_fu_3038_p14 = emission_6_q1;
assign tmp_11_fu_3038_p16 = emission_7_q1;
assign tmp_11_fu_3038_p17 = 'bx;
assign tmp_11_fu_3038_p2 = emission_0_q1;
assign tmp_11_fu_3038_p4 = emission_1_q1;
assign tmp_11_fu_3038_p6 = emission_2_q1;
assign tmp_11_fu_3038_p8 = emission_3_q1;
assign tmp_12_fu_3109_p10 = emission_4_q0;
assign tmp_12_fu_3109_p12 = emission_5_q0;
assign tmp_12_fu_3109_p14 = emission_6_q0;
assign tmp_12_fu_3109_p16 = emission_7_q0;
assign tmp_12_fu_3109_p17 = 'bx;
assign tmp_12_fu_3109_p2 = emission_0_q0;
assign tmp_12_fu_3109_p4 = emission_1_q0;
assign tmp_12_fu_3109_p6 = emission_2_q0;
assign tmp_12_fu_3109_p8 = emission_3_q0;
assign tmp_13_fu_3246_p10 = emission_4_q1;
assign tmp_13_fu_3246_p12 = emission_5_q1;
assign tmp_13_fu_3246_p14 = emission_6_q1;
assign tmp_13_fu_3246_p16 = emission_7_q1;
assign tmp_13_fu_3246_p17 = 'bx;
assign tmp_13_fu_3246_p2 = emission_0_q1;
assign tmp_13_fu_3246_p4 = emission_1_q1;
assign tmp_13_fu_3246_p6 = emission_2_q1;
assign tmp_13_fu_3246_p8 = emission_3_q1;
assign tmp_14_fu_3317_p10 = emission_4_q0;
assign tmp_14_fu_3317_p12 = emission_5_q0;
assign tmp_14_fu_3317_p14 = emission_6_q0;
assign tmp_14_fu_3317_p16 = emission_7_q0;
assign tmp_14_fu_3317_p17 = 'bx;
assign tmp_14_fu_3317_p2 = emission_0_q0;
assign tmp_14_fu_3317_p4 = emission_1_q0;
assign tmp_14_fu_3317_p6 = emission_2_q0;
assign tmp_14_fu_3317_p8 = emission_3_q0;
assign tmp_1_fu_1891_p10 = emission_4_q0;
assign tmp_1_fu_1891_p12 = emission_5_q0;
assign tmp_1_fu_1891_p14 = emission_6_q0;
assign tmp_1_fu_1891_p16 = emission_7_q0;
assign tmp_1_fu_1891_p17 = 'bx;
assign tmp_1_fu_1891_p2 = emission_0_q0;
assign tmp_1_fu_1891_p4 = emission_1_q0;
assign tmp_1_fu_1891_p6 = emission_2_q0;
assign tmp_1_fu_1891_p8 = emission_3_q0;
assign tmp_2_fu_2014_p10 = emission_4_q1;
assign tmp_2_fu_2014_p12 = emission_5_q1;
assign tmp_2_fu_2014_p14 = emission_6_q1;
assign tmp_2_fu_2014_p16 = emission_7_q1;
assign tmp_2_fu_2014_p17 = 'bx;
assign tmp_2_fu_2014_p2 = emission_0_q1;
assign tmp_2_fu_2014_p4 = emission_1_q1;
assign tmp_2_fu_2014_p6 = emission_2_q1;
assign tmp_2_fu_2014_p8 = emission_3_q1;
assign tmp_3_fu_2085_p10 = emission_4_q0;
assign tmp_3_fu_2085_p12 = emission_5_q0;
assign tmp_3_fu_2085_p14 = emission_6_q0;
assign tmp_3_fu_2085_p16 = emission_7_q0;
assign tmp_3_fu_2085_p17 = 'bx;
assign tmp_3_fu_2085_p2 = emission_0_q0;
assign tmp_3_fu_2085_p4 = emission_1_q0;
assign tmp_3_fu_2085_p6 = emission_2_q0;
assign tmp_3_fu_2085_p8 = emission_3_q0;
assign tmp_40_fu_2144_p3 = s_1_reg_3458[32'd1];
assign tmp_41_fu_2523_p3 = s_1_reg_3458[32'd2];
assign tmp_4_fu_2215_p10 = emission_4_q1;
assign tmp_4_fu_2215_p12 = emission_5_q1;
assign tmp_4_fu_2215_p14 = emission_6_q1;
assign tmp_4_fu_2215_p16 = emission_7_q1;
assign tmp_4_fu_2215_p17 = 'bx;
assign tmp_4_fu_2215_p2 = emission_0_q1;
assign tmp_4_fu_2215_p4 = emission_1_q1;
assign tmp_4_fu_2215_p6 = emission_2_q1;
assign tmp_4_fu_2215_p8 = emission_3_q1;
assign tmp_5_fu_2286_p10 = emission_4_q0;
assign tmp_5_fu_2286_p12 = emission_5_q0;
assign tmp_5_fu_2286_p14 = emission_6_q0;
assign tmp_5_fu_2286_p16 = emission_7_q0;
assign tmp_5_fu_2286_p17 = 'bx;
assign tmp_5_fu_2286_p2 = emission_0_q0;
assign tmp_5_fu_2286_p4 = emission_1_q0;
assign tmp_5_fu_2286_p6 = emission_2_q0;
assign tmp_5_fu_2286_p8 = emission_3_q0;
assign tmp_6_fu_2413_p10 = emission_4_q1;
assign tmp_6_fu_2413_p12 = emission_5_q1;
assign tmp_6_fu_2413_p14 = emission_6_q1;
assign tmp_6_fu_2413_p16 = emission_7_q1;
assign tmp_6_fu_2413_p17 = 'bx;
assign tmp_6_fu_2413_p2 = emission_0_q1;
assign tmp_6_fu_2413_p4 = emission_1_q1;
assign tmp_6_fu_2413_p6 = emission_2_q1;
assign tmp_6_fu_2413_p8 = emission_3_q1;
assign tmp_77_fu_1722_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_7_fu_2484_p10 = emission_4_q0;
assign tmp_7_fu_2484_p12 = emission_5_q0;
assign tmp_7_fu_2484_p14 = emission_6_q0;
assign tmp_7_fu_2484_p16 = emission_7_q0;
assign tmp_7_fu_2484_p17 = 'bx;
assign tmp_7_fu_2484_p2 = emission_0_q0;
assign tmp_7_fu_2484_p4 = emission_1_q0;
assign tmp_7_fu_2484_p6 = emission_2_q0;
assign tmp_7_fu_2484_p8 = emission_3_q0;
assign tmp_8_fu_2629_p10 = emission_4_q1;
assign tmp_8_fu_2629_p12 = emission_5_q1;
assign tmp_8_fu_2629_p14 = emission_6_q1;
assign tmp_8_fu_2629_p16 = emission_7_q1;
assign tmp_8_fu_2629_p17 = 'bx;
assign tmp_8_fu_2629_p2 = emission_0_q1;
assign tmp_8_fu_2629_p4 = emission_1_q1;
assign tmp_8_fu_2629_p6 = emission_2_q1;
assign tmp_8_fu_2629_p8 = emission_3_q1;
assign tmp_9_fu_2700_p10 = emission_4_q0;
assign tmp_9_fu_2700_p12 = emission_5_q0;
assign tmp_9_fu_2700_p14 = emission_6_q0;
assign tmp_9_fu_2700_p16 = emission_7_q0;
assign tmp_9_fu_2700_p17 = 'bx;
assign tmp_9_fu_2700_p2 = emission_0_q0;
assign tmp_9_fu_2700_p4 = emission_1_q0;
assign tmp_9_fu_2700_p6 = emission_2_q0;
assign tmp_9_fu_2700_p8 = emission_3_q0;
assign tmp_fu_1820_p10 = emission_4_q1;
assign tmp_fu_1820_p12 = emission_5_q1;
assign tmp_fu_1820_p14 = emission_6_q1;
assign tmp_fu_1820_p16 = emission_7_q1;
assign tmp_fu_1820_p17 = 'bx;
assign tmp_fu_1820_p2 = emission_0_q1;
assign tmp_fu_1820_p4 = emission_1_q1;
assign tmp_fu_1820_p6 = emission_2_q1;
assign tmp_fu_1820_p8 = emission_3_q1;
assign tmp_s_fu_2841_p10 = emission_4_q1;
assign tmp_s_fu_2841_p12 = emission_5_q1;
assign tmp_s_fu_2841_p14 = emission_6_q1;
assign tmp_s_fu_2841_p16 = emission_7_q1;
assign tmp_s_fu_2841_p17 = 'bx;
assign tmp_s_fu_2841_p2 = emission_0_q1;
assign tmp_s_fu_2841_p4 = emission_1_q1;
assign tmp_s_fu_2841_p6 = emission_2_q1;
assign tmp_s_fu_2841_p8 = emission_3_q1;
assign zext_ln14_10_fu_2754_p1 = add_ln14_7_fu_2749_p2;
assign zext_ln14_11_fu_2781_p1 = add_ln14_8_fu_2776_p2;
assign zext_ln14_12_fu_2959_p1 = or_ln14_15_fu_2951_p4;
assign zext_ln14_13_fu_2986_p1 = add_ln14_9_fu_2981_p2;
assign zext_ln14_14_fu_3160_p1 = add_ln14_10_fu_3155_p2;
assign zext_ln14_15_fu_3184_p1 = add_ln14_11_fu_3179_p2;
assign zext_ln14_16_fu_3376_p1 = or_ln14_4_fu_3369_p3;
assign zext_ln14_17_fu_3390_p1 = or_ln14_9_fu_3382_p4;
assign zext_ln14_18_fu_1776_p1 = or_ln14_s_fu_1768_p3;
assign zext_ln14_19_fu_3403_p1 = or_ln14_14_fu_3396_p3;
assign zext_ln14_1_fu_1746_p1 = add_ln14_fu_1740_p2;
assign zext_ln14_2_fu_1942_p1 = add_ln14_1_fu_1937_p2;
assign zext_ln14_3_fu_1966_p1 = add_ln14_2_fu_1961_p2;
assign zext_ln14_4_fu_2132_p1 = or_ln14_5_fu_2124_p4;
assign zext_ln14_5_fu_2167_p1 = add_ln14_3_fu_2162_p2;
assign zext_ln14_6_fu_2337_p1 = add_ln14_4_fu_2332_p2;
assign zext_ln14_7_fu_2361_p1 = add_ln14_5_fu_2356_p2;
assign zext_ln14_8_fu_2540_p1 = or_ln14_10_fu_2530_p5;
assign zext_ln14_9_fu_2577_p1 = add_ln14_6_fu_2572_p2;
assign zext_ln14_fu_1710_p1 = or_ln_fu_1702_p3;
assign zext_ln9_1_fu_1690_p1 = lshr_ln9_1_fu_1680_p4;
assign zext_ln9_fu_3364_p1 = lshr_ln9_reg_3470_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_3443[8:5] <= 4'b0000;
    zext_ln9_reg_4472[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_4478[0] <= 1'b1;
    zext_ln14_16_reg_4478[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_4484[1] <= 1'b1;
    zext_ln14_17_reg_4484[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_4490[1:0] <= 2'b11;
    zext_ln14_19_reg_4490[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 