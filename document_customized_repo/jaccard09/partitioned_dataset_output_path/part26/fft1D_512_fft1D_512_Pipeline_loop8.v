
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
output   DATA_x_3_we1;
output  [63:0] DATA_x_3_d1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
output   DATA_x_2_we1;
output  [63:0] DATA_x_2_d1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_3294;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_3285;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_3285_pp0_iter1_reg;
reg   [6:0] tid_2_reg_3285_pp0_iter2_reg;
reg   [6:0] tid_2_reg_3285_pp0_iter3_reg;
reg   [6:0] tid_2_reg_3285_pp0_iter4_reg;
reg   [6:0] tid_2_reg_3285_pp0_iter5_reg;
reg   [6:0] tid_2_reg_3285_pp0_iter6_reg;
reg   [6:0] tid_2_reg_3285_pp0_iter7_reg;
reg   [0:0] tmp_reg_3294_pp0_iter1_reg;
reg   [0:0] tmp_reg_3294_pp0_iter2_reg;
reg   [0:0] tmp_reg_3294_pp0_iter3_reg;
reg   [0:0] tmp_reg_3294_pp0_iter4_reg;
reg   [0:0] tmp_reg_3294_pp0_iter5_reg;
reg   [0:0] tmp_reg_3294_pp0_iter6_reg;
wire   [2:0] tmp_35_fu_1787_p4;
reg   [2:0] tmp_35_reg_3298;
wire   [8:0] offset_fu_1801_p3;
reg   [8:0] offset_reg_3303;
reg   [8:0] offset_reg_3303_pp0_iter1_reg;
reg   [8:0] offset_reg_3303_pp0_iter2_reg;
reg   [8:0] offset_reg_3303_pp0_iter3_reg;
reg   [8:0] offset_reg_3303_pp0_iter4_reg;
reg   [8:0] offset_reg_3303_pp0_iter5_reg;
wire   [8:0] offset_1_fu_1824_p4;
reg   [8:0] offset_1_reg_3310;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_1_reg_3310_pp0_iter1_reg;
reg   [8:0] offset_1_reg_3310_pp0_iter2_reg;
reg   [8:0] offset_1_reg_3310_pp0_iter3_reg;
reg   [8:0] offset_1_reg_3310_pp0_iter4_reg;
reg   [8:0] offset_1_reg_3310_pp0_iter5_reg;
reg   [5:0] tmp_36_reg_3317;
wire   [3:0] trunc_ln172_fu_1874_p1;
reg   [3:0] trunc_ln172_reg_3322;
reg   [5:0] tmp_45_reg_3774;
wire   [3:0] trunc_ln172_1_fu_2079_p1;
reg   [3:0] trunc_ln172_1_reg_3779;
wire   [63:0] tmp_s_fu_2083_p25;
reg   [63:0] tmp_s_reg_3791;
wire   [63:0] tmp_20_fu_2134_p25;
reg   [63:0] tmp_20_reg_3796;
wire   [63:0] tmp_21_fu_2185_p25;
reg   [63:0] tmp_21_reg_3801;
wire   [63:0] tmp_22_fu_2236_p25;
reg   [63:0] tmp_22_reg_3806;
wire   [63:0] tmp_23_fu_2287_p25;
reg   [63:0] tmp_23_reg_3811;
wire   [63:0] tmp_24_fu_2338_p25;
reg   [63:0] tmp_24_reg_3816;
wire   [63:0] tmp_25_fu_2389_p25;
reg   [63:0] tmp_25_reg_3821;
wire   [63:0] tmp_26_fu_2440_p25;
reg   [63:0] tmp_26_reg_3826;
wire   [63:0] tmp_27_fu_2705_p25;
reg   [63:0] tmp_27_reg_4271;
reg   [4:0] tmp_28_reg_4276;
wire   [63:0] tmp_29_fu_2765_p25;
reg   [63:0] tmp_29_reg_4282;
wire   [63:0] tmp_30_fu_2816_p25;
reg   [63:0] tmp_30_reg_4287;
wire   [63:0] tmp_31_fu_2867_p25;
reg   [63:0] tmp_31_reg_4292;
wire   [63:0] tmp_32_fu_2918_p25;
reg   [63:0] tmp_32_reg_4297;
wire   [63:0] tmp_33_fu_2969_p25;
reg   [63:0] tmp_33_reg_4302;
wire   [63:0] tmp_34_fu_3020_p25;
reg   [63:0] tmp_34_reg_4307;
wire   [63:0] tmp_53_fu_3071_p25;
reg   [63:0] tmp_53_reg_4312;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_2_fu_1878_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_1901_p1;
wire   [63:0] zext_ln316_fu_1925_p1;
wire   [63:0] zext_ln317_fu_1949_p1;
wire   [63:0] zext_ln318_fu_1973_p1;
wire   [63:0] zext_ln319_fu_1997_p1;
wire   [63:0] zext_ln320_fu_2021_p1;
wire   [63:0] zext_ln321_fu_2045_p1;
wire   [63:0] zext_ln172_3_fu_2491_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_1_fu_2514_p1;
wire   [63:0] zext_ln316_1_fu_2538_p1;
wire   [63:0] zext_ln317_1_fu_2562_p1;
wire   [63:0] zext_ln318_1_fu_2586_p1;
wire   [63:0] zext_ln319_1_fu_2610_p1;
wire   [63:0] zext_ln320_1_fu_2634_p1;
wire   [63:0] zext_ln321_1_fu_2658_p1;
wire   [63:0] zext_ln314_fu_2681_p1;
wire   [63:0] zext_ln315_2_fu_2697_p1;
wire   [63:0] zext_ln314_1_fu_3129_p1;
wire   [63:0] zext_ln315_3_fu_3144_p1;
reg   [6:0] tid_fu_140;
wire   [6:0] add_ln309_fu_1839_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_we1_local;
reg   [63:0] DATA_x_2_d1_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_we0_local;
reg   [63:0] DATA_x_2_d0_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_we1_local;
reg   [63:0] DATA_x_3_d1_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_we0_local;
reg   [63:0] DATA_x_3_d0_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
wire   [5:0] trunc_ln312_fu_1797_p1;
wire   [8:0] grp_fu_1809_p0;
wire   [4:0] grp_fu_1809_p1;
wire   [4:0] tmp_44_fu_1815_p4;
wire   [8:0] grp_fu_1833_p0;
wire   [4:0] grp_fu_1833_p1;
wire   [8:0] mul_ln172_fu_1858_p0;
wire   [10:0] mul_ln172_fu_1858_p1;
wire   [18:0] mul_ln172_fu_1858_p2;
wire   [3:0] grp_fu_1809_p2;
wire   [20:0] tmp_37_fu_1892_p1;
wire  signed [20:0] grp_fu_3152_p3;
wire   [6:0] tmp_37_fu_1892_p4;
wire   [20:0] tmp_38_fu_1916_p1;
wire  signed [20:0] grp_fu_3161_p3;
wire   [6:0] tmp_38_fu_1916_p4;
wire   [20:0] tmp_39_fu_1940_p1;
wire  signed [20:0] grp_fu_3170_p3;
wire   [6:0] tmp_39_fu_1940_p4;
wire   [20:0] tmp_40_fu_1964_p1;
wire  signed [20:0] grp_fu_3179_p3;
wire   [6:0] tmp_40_fu_1964_p4;
wire   [20:0] tmp_41_fu_1988_p1;
wire  signed [20:0] grp_fu_3188_p3;
wire   [6:0] tmp_41_fu_1988_p4;
wire   [20:0] tmp_42_fu_2012_p1;
wire  signed [20:0] grp_fu_3197_p3;
wire   [6:0] tmp_42_fu_2012_p4;
wire   [20:0] tmp_43_fu_2036_p1;
wire  signed [20:0] grp_fu_3206_p3;
wire   [6:0] tmp_43_fu_2036_p4;
wire   [8:0] mul_ln172_1_fu_2063_p0;
wire   [10:0] mul_ln172_1_fu_2063_p1;
wire   [18:0] mul_ln172_1_fu_2063_p2;
wire   [3:0] grp_fu_1833_p2;
wire   [63:0] tmp_s_fu_2083_p23;
wire   [63:0] tmp_20_fu_2134_p23;
wire   [63:0] tmp_21_fu_2185_p23;
wire   [63:0] tmp_22_fu_2236_p23;
wire   [63:0] tmp_23_fu_2287_p23;
wire   [63:0] tmp_24_fu_2338_p23;
wire   [63:0] tmp_25_fu_2389_p23;
wire   [63:0] tmp_26_fu_2440_p23;
wire   [20:0] tmp_46_fu_2505_p1;
wire  signed [20:0] grp_fu_3215_p3;
wire   [6:0] tmp_46_fu_2505_p4;
wire   [20:0] tmp_47_fu_2529_p1;
wire  signed [20:0] grp_fu_3224_p3;
wire   [6:0] tmp_47_fu_2529_p4;
wire   [20:0] tmp_48_fu_2553_p1;
wire  signed [20:0] grp_fu_3233_p3;
wire   [6:0] tmp_48_fu_2553_p4;
wire   [20:0] tmp_49_fu_2577_p1;
wire  signed [20:0] grp_fu_3242_p3;
wire   [6:0] tmp_49_fu_2577_p4;
wire   [20:0] tmp_50_fu_2601_p1;
wire  signed [20:0] grp_fu_3251_p3;
wire   [6:0] tmp_50_fu_2601_p4;
wire   [20:0] tmp_51_fu_2625_p1;
wire  signed [20:0] grp_fu_3260_p3;
wire   [6:0] tmp_51_fu_2625_p4;
wire   [20:0] tmp_52_fu_2649_p1;
wire  signed [20:0] grp_fu_3269_p3;
wire   [6:0] tmp_52_fu_2649_p4;
wire   [6:0] shl_ln314_fu_2676_p2;
wire   [5:0] trunc_ln314_fu_2673_p1;
wire   [6:0] or_ln_fu_2689_p3;
wire   [63:0] tmp_27_fu_2705_p23;
wire   [63:0] tmp_29_fu_2765_p23;
wire   [63:0] tmp_30_fu_2816_p23;
wire   [63:0] tmp_31_fu_2867_p23;
wire   [63:0] tmp_32_fu_2918_p23;
wire   [63:0] tmp_33_fu_2969_p23;
wire   [63:0] tmp_34_fu_3020_p23;
wire   [63:0] tmp_53_fu_3071_p23;
wire   [6:0] or_ln1_fu_3122_p3;
wire   [6:0] or_ln315_1_fu_3137_p3;
wire   [8:0] grp_fu_3152_p0;
wire   [9:0] zext_ln172_fu_1849_p1;
wire   [5:0] grp_fu_3152_p1;
wire   [10:0] grp_fu_3152_p2;
wire   [8:0] grp_fu_3161_p0;
wire   [3:0] grp_fu_3161_p1;
wire   [10:0] grp_fu_3161_p2;
wire   [8:0] grp_fu_3170_p0;
wire   [5:0] grp_fu_3170_p1;
wire   [10:0] grp_fu_3170_p2;
wire   [8:0] grp_fu_3179_p0;
wire   [4:0] grp_fu_3179_p1;
wire   [10:0] grp_fu_3179_p2;
wire   [8:0] grp_fu_3188_p0;
wire   [5:0] grp_fu_3188_p1;
wire   [10:0] grp_fu_3188_p2;
wire   [8:0] grp_fu_3197_p0;
wire   [4:0] grp_fu_3197_p1;
wire   [10:0] grp_fu_3197_p2;
wire   [8:0] grp_fu_3206_p0;
wire   [5:0] grp_fu_3206_p1;
wire   [10:0] grp_fu_3206_p2;
wire   [8:0] grp_fu_3215_p0;
wire   [9:0] zext_ln172_6_fu_1852_p1;
wire   [5:0] grp_fu_3215_p1;
wire   [10:0] grp_fu_3215_p2;
wire   [8:0] grp_fu_3224_p0;
wire   [3:0] grp_fu_3224_p1;
wire   [10:0] grp_fu_3224_p2;
wire   [8:0] grp_fu_3233_p0;
wire   [5:0] grp_fu_3233_p1;
wire   [10:0] grp_fu_3233_p2;
wire   [8:0] grp_fu_3242_p0;
wire   [4:0] grp_fu_3242_p1;
wire   [10:0] grp_fu_3242_p2;
wire   [8:0] grp_fu_3251_p0;
wire   [5:0] grp_fu_3251_p1;
wire   [10:0] grp_fu_3251_p2;
wire   [8:0] grp_fu_3260_p0;
wire   [4:0] grp_fu_3260_p1;
wire   [10:0] grp_fu_3260_p2;
wire   [8:0] grp_fu_3269_p0;
wire   [5:0] grp_fu_3269_p1;
wire   [10:0] grp_fu_3269_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_1_fu_2063_p00;
wire   [18:0] mul_ln172_fu_1858_p00;
wire   [3:0] tmp_s_fu_2083_p1;
wire   [3:0] tmp_s_fu_2083_p3;
wire   [3:0] tmp_s_fu_2083_p5;
wire   [3:0] tmp_s_fu_2083_p7;
wire   [3:0] tmp_s_fu_2083_p9;
wire   [3:0] tmp_s_fu_2083_p11;
wire   [3:0] tmp_s_fu_2083_p13;
wire   [3:0] tmp_s_fu_2083_p15;
wire  signed [3:0] tmp_s_fu_2083_p17;
wire  signed [3:0] tmp_s_fu_2083_p19;
wire  signed [3:0] tmp_s_fu_2083_p21;
wire   [3:0] tmp_20_fu_2134_p1;
wire   [3:0] tmp_20_fu_2134_p3;
wire   [3:0] tmp_20_fu_2134_p5;
wire   [3:0] tmp_20_fu_2134_p7;
wire   [3:0] tmp_20_fu_2134_p9;
wire   [3:0] tmp_20_fu_2134_p11;
wire   [3:0] tmp_20_fu_2134_p13;
wire  signed [3:0] tmp_20_fu_2134_p15;
wire  signed [3:0] tmp_20_fu_2134_p17;
wire  signed [3:0] tmp_20_fu_2134_p19;
wire   [3:0] tmp_20_fu_2134_p21;
wire   [3:0] tmp_21_fu_2185_p1;
wire   [3:0] tmp_21_fu_2185_p3;
wire   [3:0] tmp_21_fu_2185_p5;
wire   [3:0] tmp_21_fu_2185_p7;
wire   [3:0] tmp_21_fu_2185_p9;
wire  signed [3:0] tmp_21_fu_2185_p11;
wire  signed [3:0] tmp_21_fu_2185_p13;
wire  signed [3:0] tmp_21_fu_2185_p15;
wire   [3:0] tmp_21_fu_2185_p17;
wire   [3:0] tmp_21_fu_2185_p19;
wire   [3:0] tmp_21_fu_2185_p21;
wire   [3:0] tmp_22_fu_2236_p1;
wire   [3:0] tmp_22_fu_2236_p3;
wire   [3:0] tmp_22_fu_2236_p5;
wire   [3:0] tmp_22_fu_2236_p7;
wire  signed [3:0] tmp_22_fu_2236_p9;
wire  signed [3:0] tmp_22_fu_2236_p11;
wire  signed [3:0] tmp_22_fu_2236_p13;
wire   [3:0] tmp_22_fu_2236_p15;
wire   [3:0] tmp_22_fu_2236_p17;
wire   [3:0] tmp_22_fu_2236_p19;
wire   [3:0] tmp_22_fu_2236_p21;
wire   [3:0] tmp_23_fu_2287_p1;
wire   [3:0] tmp_23_fu_2287_p3;
wire  signed [3:0] tmp_23_fu_2287_p5;
wire  signed [3:0] tmp_23_fu_2287_p7;
wire  signed [3:0] tmp_23_fu_2287_p9;
wire   [3:0] tmp_23_fu_2287_p11;
wire   [3:0] tmp_23_fu_2287_p13;
wire   [3:0] tmp_23_fu_2287_p15;
wire   [3:0] tmp_23_fu_2287_p17;
wire   [3:0] tmp_23_fu_2287_p19;
wire   [3:0] tmp_23_fu_2287_p21;
wire   [3:0] tmp_24_fu_2338_p1;
wire  signed [3:0] tmp_24_fu_2338_p3;
wire  signed [3:0] tmp_24_fu_2338_p5;
wire  signed [3:0] tmp_24_fu_2338_p7;
wire   [3:0] tmp_24_fu_2338_p9;
wire   [3:0] tmp_24_fu_2338_p11;
wire   [3:0] tmp_24_fu_2338_p13;
wire   [3:0] tmp_24_fu_2338_p15;
wire   [3:0] tmp_24_fu_2338_p17;
wire   [3:0] tmp_24_fu_2338_p19;
wire   [3:0] tmp_24_fu_2338_p21;
wire  signed [3:0] tmp_25_fu_2389_p1;
wire  signed [3:0] tmp_25_fu_2389_p3;
wire   [3:0] tmp_25_fu_2389_p5;
wire   [3:0] tmp_25_fu_2389_p7;
wire   [3:0] tmp_25_fu_2389_p9;
wire   [3:0] tmp_25_fu_2389_p11;
wire   [3:0] tmp_25_fu_2389_p13;
wire   [3:0] tmp_25_fu_2389_p15;
wire   [3:0] tmp_25_fu_2389_p17;
wire   [3:0] tmp_25_fu_2389_p19;
wire  signed [3:0] tmp_25_fu_2389_p21;
wire  signed [3:0] tmp_26_fu_2440_p1;
wire   [3:0] tmp_26_fu_2440_p3;
wire   [3:0] tmp_26_fu_2440_p5;
wire   [3:0] tmp_26_fu_2440_p7;
wire   [3:0] tmp_26_fu_2440_p9;
wire   [3:0] tmp_26_fu_2440_p11;
wire   [3:0] tmp_26_fu_2440_p13;
wire   [3:0] tmp_26_fu_2440_p15;
wire   [3:0] tmp_26_fu_2440_p17;
wire  signed [3:0] tmp_26_fu_2440_p19;
wire  signed [3:0] tmp_26_fu_2440_p21;
wire   [3:0] tmp_27_fu_2705_p1;
wire   [3:0] tmp_27_fu_2705_p3;
wire   [3:0] tmp_27_fu_2705_p5;
wire   [3:0] tmp_27_fu_2705_p7;
wire   [3:0] tmp_27_fu_2705_p9;
wire   [3:0] tmp_27_fu_2705_p11;
wire   [3:0] tmp_27_fu_2705_p13;
wire   [3:0] tmp_27_fu_2705_p15;
wire  signed [3:0] tmp_27_fu_2705_p17;
wire  signed [3:0] tmp_27_fu_2705_p19;
wire  signed [3:0] tmp_27_fu_2705_p21;
wire   [3:0] tmp_29_fu_2765_p1;
wire   [3:0] tmp_29_fu_2765_p3;
wire   [3:0] tmp_29_fu_2765_p5;
wire   [3:0] tmp_29_fu_2765_p7;
wire   [3:0] tmp_29_fu_2765_p9;
wire   [3:0] tmp_29_fu_2765_p11;
wire   [3:0] tmp_29_fu_2765_p13;
wire  signed [3:0] tmp_29_fu_2765_p15;
wire  signed [3:0] tmp_29_fu_2765_p17;
wire  signed [3:0] tmp_29_fu_2765_p19;
wire   [3:0] tmp_29_fu_2765_p21;
wire   [3:0] tmp_30_fu_2816_p1;
wire   [3:0] tmp_30_fu_2816_p3;
wire   [3:0] tmp_30_fu_2816_p5;
wire   [3:0] tmp_30_fu_2816_p7;
wire   [3:0] tmp_30_fu_2816_p9;
wire  signed [3:0] tmp_30_fu_2816_p11;
wire  signed [3:0] tmp_30_fu_2816_p13;
wire  signed [3:0] tmp_30_fu_2816_p15;
wire   [3:0] tmp_30_fu_2816_p17;
wire   [3:0] tmp_30_fu_2816_p19;
wire   [3:0] tmp_30_fu_2816_p21;
wire   [3:0] tmp_31_fu_2867_p1;
wire   [3:0] tmp_31_fu_2867_p3;
wire   [3:0] tmp_31_fu_2867_p5;
wire   [3:0] tmp_31_fu_2867_p7;
wire  signed [3:0] tmp_31_fu_2867_p9;
wire  signed [3:0] tmp_31_fu_2867_p11;
wire  signed [3:0] tmp_31_fu_2867_p13;
wire   [3:0] tmp_31_fu_2867_p15;
wire   [3:0] tmp_31_fu_2867_p17;
wire   [3:0] tmp_31_fu_2867_p19;
wire   [3:0] tmp_31_fu_2867_p21;
wire   [3:0] tmp_32_fu_2918_p1;
wire   [3:0] tmp_32_fu_2918_p3;
wire  signed [3:0] tmp_32_fu_2918_p5;
wire  signed [3:0] tmp_32_fu_2918_p7;
wire  signed [3:0] tmp_32_fu_2918_p9;
wire   [3:0] tmp_32_fu_2918_p11;
wire   [3:0] tmp_32_fu_2918_p13;
wire   [3:0] tmp_32_fu_2918_p15;
wire   [3:0] tmp_32_fu_2918_p17;
wire   [3:0] tmp_32_fu_2918_p19;
wire   [3:0] tmp_32_fu_2918_p21;
wire   [3:0] tmp_33_fu_2969_p1;
wire  signed [3:0] tmp_33_fu_2969_p3;
wire  signed [3:0] tmp_33_fu_2969_p5;
wire  signed [3:0] tmp_33_fu_2969_p7;
wire   [3:0] tmp_33_fu_2969_p9;
wire   [3:0] tmp_33_fu_2969_p11;
wire   [3:0] tmp_33_fu_2969_p13;
wire   [3:0] tmp_33_fu_2969_p15;
wire   [3:0] tmp_33_fu_2969_p17;
wire   [3:0] tmp_33_fu_2969_p19;
wire   [3:0] tmp_33_fu_2969_p21;
wire  signed [3:0] tmp_34_fu_3020_p1;
wire  signed [3:0] tmp_34_fu_3020_p3;
wire   [3:0] tmp_34_fu_3020_p5;
wire   [3:0] tmp_34_fu_3020_p7;
wire   [3:0] tmp_34_fu_3020_p9;
wire   [3:0] tmp_34_fu_3020_p11;
wire   [3:0] tmp_34_fu_3020_p13;
wire   [3:0] tmp_34_fu_3020_p15;
wire   [3:0] tmp_34_fu_3020_p17;
wire   [3:0] tmp_34_fu_3020_p19;
wire  signed [3:0] tmp_34_fu_3020_p21;
wire  signed [3:0] tmp_53_fu_3071_p1;
wire   [3:0] tmp_53_fu_3071_p3;
wire   [3:0] tmp_53_fu_3071_p5;
wire   [3:0] tmp_53_fu_3071_p7;
wire   [3:0] tmp_53_fu_3071_p9;
wire   [3:0] tmp_53_fu_3071_p11;
wire   [3:0] tmp_53_fu_3071_p13;
wire   [3:0] tmp_53_fu_3071_p15;
wire   [3:0] tmp_53_fu_3071_p17;
wire  signed [3:0] tmp_53_fu_3071_p19;
wire  signed [3:0] tmp_53_fu_3071_p21;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U782(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1809_p0),.din1(grp_fu_1809_p1),.ce(1'b1),.dout(grp_fu_1809_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U783(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1833_p0),.din1(grp_fu_1833_p1),.ce(1'b1),.dout(grp_fu_1833_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U784(.din0(mul_ln172_fu_1858_p0),.din1(mul_ln172_fu_1858_p1),.dout(mul_ln172_fu_1858_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U785(.din0(mul_ln172_1_fu_2063_p0),.din1(mul_ln172_1_fu_2063_p1),.dout(mul_ln172_1_fu_2063_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U786(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_s_fu_2083_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_s_fu_2083_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U787(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_20_fu_2134_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_20_fu_2134_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U788(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_21_fu_2185_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_21_fu_2185_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U789(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_22_fu_2236_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_22_fu_2236_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U790(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_23_fu_2287_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_23_fu_2287_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U791(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_24_fu_2338_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_24_fu_2338_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U792(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_25_fu_2389_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_25_fu_2389_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U793(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_26_fu_2440_p23),.sel(trunc_ln172_reg_3322),.dout(tmp_26_fu_2440_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U794(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_27_fu_2705_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_27_fu_2705_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U795(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_29_fu_2765_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_29_fu_2765_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U796(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_30_fu_2816_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_30_fu_2816_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U797(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_31_fu_2867_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_31_fu_2867_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U798(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_32_fu_2918_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_32_fu_2918_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U799(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_33_fu_2969_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_33_fu_2969_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U800(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_34_fu_3020_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_34_fu_3020_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U801(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_53_fu_3071_p23),.sel(trunc_ln172_1_reg_3779),.dout(tmp_53_fu_3071_p25));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U802(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3152_p0),.din1(grp_fu_3152_p1),.din2(grp_fu_3152_p2),.ce(1'b1),.dout(grp_fu_3152_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U803(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3161_p0),.din1(grp_fu_3161_p1),.din2(grp_fu_3161_p2),.ce(1'b1),.dout(grp_fu_3161_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U804(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3170_p0),.din1(grp_fu_3170_p1),.din2(grp_fu_3170_p2),.ce(1'b1),.dout(grp_fu_3170_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U805(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3179_p0),.din1(grp_fu_3179_p1),.din2(grp_fu_3179_p2),.ce(1'b1),.dout(grp_fu_3179_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U806(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3188_p0),.din1(grp_fu_3188_p1),.din2(grp_fu_3188_p2),.ce(1'b1),.dout(grp_fu_3188_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U807(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3197_p0),.din1(grp_fu_3197_p1),.din2(grp_fu_3197_p2),.ce(1'b1),.dout(grp_fu_3197_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U808(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3206_p0),.din1(grp_fu_3206_p1),.din2(grp_fu_3206_p2),.ce(1'b1),.dout(grp_fu_3206_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U809(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3215_p0),.din1(grp_fu_3215_p1),.din2(grp_fu_3215_p2),.ce(1'b1),.dout(grp_fu_3215_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U810(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3224_p0),.din1(grp_fu_3224_p1),.din2(grp_fu_3224_p2),.ce(1'b1),.dout(grp_fu_3224_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U811(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3233_p0),.din1(grp_fu_3233_p1),.din2(grp_fu_3233_p2),.ce(1'b1),.dout(grp_fu_3233_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U812(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3242_p0),.din1(grp_fu_3242_p1),.din2(grp_fu_3242_p2),.ce(1'b1),.dout(grp_fu_3242_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U813(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3251_p0),.din1(grp_fu_3251_p1),.din2(grp_fu_3251_p2),.ce(1'b1),.dout(grp_fu_3251_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U814(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3260_p0),.din1(grp_fu_3260_p1),.din2(grp_fu_3260_p2),.ce(1'b1),.dout(grp_fu_3260_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U815(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3269_p0),.din1(grp_fu_3269_p1),.din2(grp_fu_3269_p2),.ce(1'b1),.dout(grp_fu_3269_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_140 <= 7'd0;
    end else if (((tmp_reg_3294 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_140 <= add_ln309_fu_1839_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_1_reg_3310[8 : 1] <= offset_1_fu_1824_p4[8 : 1];
        offset_1_reg_3310_pp0_iter1_reg[8 : 1] <= offset_1_reg_3310[8 : 1];
        offset_1_reg_3310_pp0_iter2_reg[8 : 1] <= offset_1_reg_3310_pp0_iter1_reg[8 : 1];
        offset_1_reg_3310_pp0_iter3_reg[8 : 1] <= offset_1_reg_3310_pp0_iter2_reg[8 : 1];
        offset_1_reg_3310_pp0_iter4_reg[8 : 1] <= offset_1_reg_3310_pp0_iter3_reg[8 : 1];
        offset_1_reg_3310_pp0_iter5_reg[8 : 1] <= offset_1_reg_3310_pp0_iter4_reg[8 : 1];
        tmp_27_reg_4271 <= tmp_27_fu_2705_p25;
        tmp_28_reg_4276 <= {{tid_2_reg_3285_pp0_iter7_reg[5:1]}};
        tmp_29_reg_4282 <= tmp_29_fu_2765_p25;
        tmp_30_reg_4287 <= tmp_30_fu_2816_p25;
        tmp_31_reg_4292 <= tmp_31_fu_2867_p25;
        tmp_32_reg_4297 <= tmp_32_fu_2918_p25;
        tmp_33_reg_4302 <= tmp_33_fu_2969_p25;
        tmp_34_reg_4307 <= tmp_34_fu_3020_p25;
        tmp_45_reg_3774 <= {{mul_ln172_1_fu_2063_p2[18:13]}};
        tmp_53_reg_4312 <= tmp_53_fu_3071_p25;
        trunc_ln172_1_reg_3779 <= trunc_ln172_1_fu_2079_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_3303 <= offset_fu_1801_p3;
        offset_reg_3303_pp0_iter1_reg <= offset_reg_3303;
        offset_reg_3303_pp0_iter2_reg <= offset_reg_3303_pp0_iter1_reg;
        offset_reg_3303_pp0_iter3_reg <= offset_reg_3303_pp0_iter2_reg;
        offset_reg_3303_pp0_iter4_reg <= offset_reg_3303_pp0_iter3_reg;
        offset_reg_3303_pp0_iter5_reg <= offset_reg_3303_pp0_iter4_reg;
        tid_2_reg_3285 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_3285_pp0_iter1_reg <= tid_2_reg_3285;
        tid_2_reg_3285_pp0_iter2_reg <= tid_2_reg_3285_pp0_iter1_reg;
        tid_2_reg_3285_pp0_iter3_reg <= tid_2_reg_3285_pp0_iter2_reg;
        tid_2_reg_3285_pp0_iter4_reg <= tid_2_reg_3285_pp0_iter3_reg;
        tid_2_reg_3285_pp0_iter5_reg <= tid_2_reg_3285_pp0_iter4_reg;
        tid_2_reg_3285_pp0_iter6_reg <= tid_2_reg_3285_pp0_iter5_reg;
        tid_2_reg_3285_pp0_iter7_reg <= tid_2_reg_3285_pp0_iter6_reg;
        tmp_20_reg_3796 <= tmp_20_fu_2134_p25;
        tmp_21_reg_3801 <= tmp_21_fu_2185_p25;
        tmp_22_reg_3806 <= tmp_22_fu_2236_p25;
        tmp_23_reg_3811 <= tmp_23_fu_2287_p25;
        tmp_24_reg_3816 <= tmp_24_fu_2338_p25;
        tmp_25_reg_3821 <= tmp_25_fu_2389_p25;
        tmp_26_reg_3826 <= tmp_26_fu_2440_p25;
        tmp_35_reg_3298 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_36_reg_3317 <= {{mul_ln172_fu_1858_p2[18:13]}};
        tmp_reg_3294 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_3294_pp0_iter1_reg <= tmp_reg_3294;
        tmp_reg_3294_pp0_iter2_reg <= tmp_reg_3294_pp0_iter1_reg;
        tmp_reg_3294_pp0_iter3_reg <= tmp_reg_3294_pp0_iter2_reg;
        tmp_reg_3294_pp0_iter4_reg <= tmp_reg_3294_pp0_iter3_reg;
        tmp_reg_3294_pp0_iter5_reg <= tmp_reg_3294_pp0_iter4_reg;
        tmp_reg_3294_pp0_iter6_reg <= tmp_reg_3294_pp0_iter5_reg;
        tmp_s_reg_3791 <= tmp_s_fu_2083_p25;
        trunc_ln172_reg_3322 <= trunc_ln172_fu_1874_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_3_fu_3144_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_2_fu_2697_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_fu_2681_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_31_reg_4292;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_22_reg_3806;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_30_reg_4287;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_21_reg_3801;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln315_3_fu_3144_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln315_2_fu_2697_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln314_1_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln314_fu_2681_p1;
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_33_reg_4302;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_24_reg_3816;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_32_reg_4297;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = tmp_23_reg_3811;
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln315_3_fu_3144_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln315_2_fu_2697_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln314_1_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln314_fu_2681_p1;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_53_reg_4312;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_26_reg_3826;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = tmp_34_reg_4307;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_25_reg_3821;
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln315_3_fu_3144_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_2_fu_2697_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln314_1_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_fu_2681_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_29_reg_4282;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_20_reg_3796;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_27_reg_4271;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_s_reg_3791;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3294 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (tmp_reg_3294_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_1_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_1_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_1_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_1_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_1_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_1_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_1_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_3_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln321_fu_2045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln320_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln319_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln318_fu_1973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln317_fu_1949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln316_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln315_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_2_fu_1878_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3322 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_1_reg_3779 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_1_reg_3779 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = DATA_x_2_d0_local;
assign DATA_x_2_d1 = DATA_x_2_d1_local;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = DATA_x_3_d0_local;
assign DATA_x_3_d1 = DATA_x_3_d1_local;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1839_p2 = (tid_2_reg_3285 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1809_p0 = {{tmp_35_fu_1787_p4}, {trunc_ln312_fu_1797_p1}};
assign grp_fu_1809_p1 = 9'd11;
assign grp_fu_1833_p0 = {{{tmp_35_reg_3298}, {tmp_44_fu_1815_p4}}, {1'd1}};
assign grp_fu_1833_p1 = 9'd11;
assign grp_fu_3152_p0 = zext_ln172_fu_1849_p1;
assign grp_fu_3152_p1 = 10'd32;
assign grp_fu_3152_p2 = 21'd1490;
assign grp_fu_3161_p0 = zext_ln172_fu_1849_p1;
assign grp_fu_3161_p1 = 10'd8;
assign grp_fu_3161_p2 = 21'd1490;
assign grp_fu_3170_p0 = zext_ln172_fu_1849_p1;
assign grp_fu_3170_p1 = 10'd40;
assign grp_fu_3170_p2 = 21'd1490;
assign grp_fu_3179_p0 = zext_ln172_fu_1849_p1;
assign grp_fu_3179_p1 = 10'd16;
assign grp_fu_3179_p2 = 21'd1490;
assign grp_fu_3188_p0 = zext_ln172_fu_1849_p1;
assign grp_fu_3188_p1 = 10'd48;
assign grp_fu_3188_p2 = 21'd1490;
assign grp_fu_3197_p0 = zext_ln172_fu_1849_p1;
assign grp_fu_3197_p1 = 10'd24;
assign grp_fu_3197_p2 = 21'd1490;
assign grp_fu_3206_p0 = zext_ln172_fu_1849_p1;
assign grp_fu_3206_p1 = 10'd56;
assign grp_fu_3206_p2 = 21'd1490;
assign grp_fu_3215_p0 = zext_ln172_6_fu_1852_p1;
assign grp_fu_3215_p1 = 10'd32;
assign grp_fu_3215_p2 = 21'd1490;
assign grp_fu_3224_p0 = zext_ln172_6_fu_1852_p1;
assign grp_fu_3224_p1 = 10'd8;
assign grp_fu_3224_p2 = 21'd1490;
assign grp_fu_3233_p0 = zext_ln172_6_fu_1852_p1;
assign grp_fu_3233_p1 = 10'd40;
assign grp_fu_3233_p2 = 21'd1490;
assign grp_fu_3242_p0 = zext_ln172_6_fu_1852_p1;
assign grp_fu_3242_p1 = 10'd16;
assign grp_fu_3242_p2 = 21'd1490;
assign grp_fu_3251_p0 = zext_ln172_6_fu_1852_p1;
assign grp_fu_3251_p1 = 10'd48;
assign grp_fu_3251_p2 = 21'd1490;
assign grp_fu_3260_p0 = zext_ln172_6_fu_1852_p1;
assign grp_fu_3260_p1 = 10'd24;
assign grp_fu_3260_p2 = 21'd1490;
assign grp_fu_3269_p0 = zext_ln172_6_fu_1852_p1;
assign grp_fu_3269_p1 = 10'd56;
assign grp_fu_3269_p2 = 21'd1490;
assign mul_ln172_1_fu_2063_p0 = mul_ln172_1_fu_2063_p00;
assign mul_ln172_1_fu_2063_p00 = offset_1_reg_3310_pp0_iter5_reg;
assign mul_ln172_1_fu_2063_p1 = 19'd745;
assign mul_ln172_fu_1858_p0 = mul_ln172_fu_1858_p00;
assign mul_ln172_fu_1858_p00 = offset_reg_3303_pp0_iter5_reg;
assign mul_ln172_fu_1858_p1 = 19'd745;
assign offset_1_fu_1824_p4 = {{{tmp_35_reg_3298}, {tmp_44_fu_1815_p4}}, {1'd1}};
assign offset_fu_1801_p3 = {{tmp_35_fu_1787_p4}, {trunc_ln312_fu_1797_p1}};
assign or_ln1_fu_3122_p3 = {{tmp_28_reg_4276}, {2'd2}};
assign or_ln315_1_fu_3137_p3 = {{tmp_28_reg_4276}, {2'd3}};
assign or_ln_fu_2689_p3 = {{trunc_ln314_fu_2673_p1}, {1'd1}};
assign shl_ln314_fu_2676_p2 = tid_2_reg_3285_pp0_iter7_reg << 7'd1;
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_20_fu_2134_p23 = 'bx;
assign tmp_21_fu_2185_p23 = 'bx;
assign tmp_22_fu_2236_p23 = 'bx;
assign tmp_23_fu_2287_p23 = 'bx;
assign tmp_24_fu_2338_p23 = 'bx;
assign tmp_25_fu_2389_p23 = 'bx;
assign tmp_26_fu_2440_p23 = 'bx;
assign tmp_27_fu_2705_p23 = 'bx;
assign tmp_29_fu_2765_p23 = 'bx;
assign tmp_30_fu_2816_p23 = 'bx;
assign tmp_31_fu_2867_p23 = 'bx;
assign tmp_32_fu_2918_p23 = 'bx;
assign tmp_33_fu_2969_p23 = 'bx;
assign tmp_34_fu_3020_p23 = 'bx;
assign tmp_35_fu_1787_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_37_fu_1892_p1 = grp_fu_3152_p3;
assign tmp_37_fu_1892_p4 = {{tmp_37_fu_1892_p1[20:14]}};
assign tmp_38_fu_1916_p1 = grp_fu_3161_p3;
assign tmp_38_fu_1916_p4 = {{tmp_38_fu_1916_p1[20:14]}};
assign tmp_39_fu_1940_p1 = grp_fu_3170_p3;
assign tmp_39_fu_1940_p4 = {{tmp_39_fu_1940_p1[20:14]}};
assign tmp_40_fu_1964_p1 = grp_fu_3179_p3;
assign tmp_40_fu_1964_p4 = {{tmp_40_fu_1964_p1[20:14]}};
assign tmp_41_fu_1988_p1 = grp_fu_3188_p3;
assign tmp_41_fu_1988_p4 = {{tmp_41_fu_1988_p1[20:14]}};
assign tmp_42_fu_2012_p1 = grp_fu_3197_p3;
assign tmp_42_fu_2012_p4 = {{tmp_42_fu_2012_p1[20:14]}};
assign tmp_43_fu_2036_p1 = grp_fu_3206_p3;
assign tmp_43_fu_2036_p4 = {{tmp_43_fu_2036_p1[20:14]}};
assign tmp_44_fu_1815_p4 = {{tid_2_reg_3285[5:1]}};
assign tmp_46_fu_2505_p1 = grp_fu_3215_p3;
assign tmp_46_fu_2505_p4 = {{tmp_46_fu_2505_p1[20:14]}};
assign tmp_47_fu_2529_p1 = grp_fu_3224_p3;
assign tmp_47_fu_2529_p4 = {{tmp_47_fu_2529_p1[20:14]}};
assign tmp_48_fu_2553_p1 = grp_fu_3233_p3;
assign tmp_48_fu_2553_p4 = {{tmp_48_fu_2553_p1[20:14]}};
assign tmp_49_fu_2577_p1 = grp_fu_3242_p3;
assign tmp_49_fu_2577_p4 = {{tmp_49_fu_2577_p1[20:14]}};
assign tmp_50_fu_2601_p1 = grp_fu_3251_p3;
assign tmp_50_fu_2601_p4 = {{tmp_50_fu_2601_p1[20:14]}};
assign tmp_51_fu_2625_p1 = grp_fu_3260_p3;
assign tmp_51_fu_2625_p4 = {{tmp_51_fu_2625_p1[20:14]}};
assign tmp_52_fu_2649_p1 = grp_fu_3269_p3;
assign tmp_52_fu_2649_p4 = {{tmp_52_fu_2649_p1[20:14]}};
assign tmp_53_fu_3071_p23 = 'bx;
assign tmp_s_fu_2083_p23 = 'bx;
assign trunc_ln172_1_fu_2079_p1 = grp_fu_1833_p2[3:0];
assign trunc_ln172_fu_1874_p1 = grp_fu_1809_p2[3:0];
assign trunc_ln312_fu_1797_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_2673_p1 = tid_2_reg_3285_pp0_iter7_reg[5:0];
assign zext_ln172_2_fu_1878_p1 = tmp_36_reg_3317;
assign zext_ln172_3_fu_2491_p1 = tmp_45_reg_3774;
assign zext_ln172_6_fu_1852_p1 = offset_1_reg_3310_pp0_iter4_reg;
assign zext_ln172_fu_1849_p1 = offset_reg_3303_pp0_iter4_reg;
assign zext_ln314_1_fu_3129_p1 = or_ln1_fu_3122_p3;
assign zext_ln314_fu_2681_p1 = shl_ln314_fu_2676_p2;
assign zext_ln315_1_fu_2514_p1 = tmp_46_fu_2505_p4;
assign zext_ln315_2_fu_2697_p1 = or_ln_fu_2689_p3;
assign zext_ln315_3_fu_3144_p1 = or_ln315_1_fu_3137_p3;
assign zext_ln315_fu_1901_p1 = tmp_37_fu_1892_p4;
assign zext_ln316_1_fu_2538_p1 = tmp_47_fu_2529_p4;
assign zext_ln316_fu_1925_p1 = tmp_38_fu_1916_p4;
assign zext_ln317_1_fu_2562_p1 = tmp_48_fu_2553_p4;
assign zext_ln317_fu_1949_p1 = tmp_39_fu_1940_p4;
assign zext_ln318_1_fu_2586_p1 = tmp_49_fu_2577_p4;
assign zext_ln318_fu_1973_p1 = tmp_40_fu_1964_p4;
assign zext_ln319_1_fu_2610_p1 = tmp_50_fu_2601_p4;
assign zext_ln319_fu_1997_p1 = tmp_41_fu_1988_p4;
assign zext_ln320_1_fu_2634_p1 = tmp_51_fu_2625_p4;
assign zext_ln320_fu_2021_p1 = tmp_42_fu_2012_p4;
assign zext_ln321_1_fu_2658_p1 = tmp_52_fu_2649_p4;
assign zext_ln321_fu_2045_p1 = tmp_43_fu_2036_p4;
always @ (posedge ap_clk) begin
    offset_1_reg_3310[0] <= 1'b1;
    offset_1_reg_3310_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_3310_pp0_iter2_reg[0] <= 1'b1;
    offset_1_reg_3310_pp0_iter3_reg[0] <= 1'b1;
    offset_1_reg_3310_pp0_iter4_reg[0] <= 1'b1;
    offset_1_reg_3310_pp0_iter5_reg[0] <= 1'b1;
end
endmodule 
