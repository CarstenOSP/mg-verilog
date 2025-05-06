
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_we1,DATA_x_7_d1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_we1,DATA_x_6_d1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_we1,DATA_x_5_d1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_we1,DATA_x_4_d1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
output   DATA_x_7_we1;
output  [63:0] DATA_x_7_d1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
output   DATA_x_6_we1;
output  [63:0] DATA_x_6_d1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
output   DATA_x_5_we1;
output  [63:0] DATA_x_5_d1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
output   DATA_x_4_we1;
output  [63:0] DATA_x_4_d1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
output   DATA_x_3_we1;
output  [63:0] DATA_x_3_d1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
output   DATA_x_2_we1;
output  [63:0] DATA_x_2_d1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_1859_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_3337;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_3337_pp0_iter1_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter2_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter3_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter4_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter5_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter6_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter7_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter8_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter9_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter10_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter11_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter12_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter13_reg;
reg   [6:0] tid_2_reg_3337_pp0_iter14_reg;
wire   [8:0] offset_fu_1881_p3;
reg   [8:0] offset_reg_3347;
reg   [8:0] offset_reg_3347_pp0_iter1_reg;
reg   [8:0] offset_reg_3347_pp0_iter2_reg;
reg   [8:0] offset_reg_3347_pp0_iter3_reg;
reg   [8:0] offset_reg_3347_pp0_iter4_reg;
reg   [8:0] offset_reg_3347_pp0_iter5_reg;
reg   [8:0] offset_reg_3347_pp0_iter6_reg;
reg   [8:0] offset_reg_3347_pp0_iter7_reg;
reg   [8:0] offset_reg_3347_pp0_iter8_reg;
reg   [8:0] offset_reg_3347_pp0_iter9_reg;
wire   [8:0] offset_2_fu_1905_p4;
reg   [8:0] offset_2_reg_3354;
reg   [8:0] offset_2_reg_3354_pp0_iter1_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter2_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter3_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter4_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter5_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter6_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter7_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter8_reg;
reg   [8:0] offset_2_reg_3354_pp0_iter9_reg;
reg   [5:0] tmp_45_reg_3361;
reg   [5:0] tmp_45_reg_3361_pp0_iter11_reg;
reg   [5:0] tmp_45_reg_3361_pp0_iter12_reg;
reg   [5:0] tmp_54_reg_3366;
reg   [5:0] tmp_54_reg_3366_pp0_iter11_reg;
reg   [5:0] tmp_54_reg_3366_pp0_iter12_reg;
wire   [3:0] trunc_ln172_fu_1976_p1;
reg   [3:0] trunc_ln172_reg_3371;
reg   [3:0] trunc_ln172_reg_3371_pp0_iter13_reg;
wire   [3:0] trunc_ln172_2_fu_1980_p1;
reg   [3:0] trunc_ln172_2_reg_3383;
reg   [3:0] trunc_ln172_2_reg_3383_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_2348_p25;
reg   [63:0] tmp_s_reg_4275;
wire   [63:0] tmp_21_fu_2399_p25;
reg   [63:0] tmp_21_reg_4280;
wire   [63:0] tmp_22_fu_2450_p25;
reg   [63:0] tmp_22_reg_4285;
wire   [63:0] tmp_23_fu_2501_p25;
reg   [63:0] tmp_23_reg_4290;
wire   [63:0] tmp_24_fu_2552_p25;
reg   [63:0] tmp_24_reg_4295;
wire   [63:0] tmp_25_fu_2603_p25;
reg   [63:0] tmp_25_reg_4300;
wire   [63:0] tmp_26_fu_2654_p25;
reg   [63:0] tmp_26_reg_4305;
wire   [63:0] tmp_27_fu_2705_p25;
reg   [63:0] tmp_27_reg_4310;
wire   [63:0] tmp_29_fu_2756_p25;
reg   [63:0] tmp_29_reg_4315;
wire   [63:0] tmp_30_fu_2807_p25;
reg   [63:0] tmp_30_reg_4320;
wire   [63:0] tmp_31_fu_2858_p25;
reg   [63:0] tmp_31_reg_4325;
wire   [63:0] tmp_32_fu_2909_p25;
reg   [63:0] tmp_32_reg_4330;
wire   [63:0] tmp_33_fu_2960_p25;
reg   [63:0] tmp_33_reg_4335;
wire   [63:0] tmp_34_fu_3011_p25;
reg   [63:0] tmp_34_reg_4340;
wire   [63:0] tmp_35_fu_3062_p25;
reg   [63:0] tmp_35_reg_4345;
wire   [63:0] tmp_36_fu_3113_p25;
reg   [63:0] tmp_36_reg_4350;
wire   [63:0] zext_ln172_8_fu_1984_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_2007_p1;
wire   [63:0] zext_ln316_fu_2031_p1;
wire   [63:0] zext_ln317_fu_2055_p1;
wire   [63:0] zext_ln318_fu_2079_p1;
wire   [63:0] zext_ln319_fu_2103_p1;
wire   [63:0] zext_ln320_fu_2127_p1;
wire   [63:0] zext_ln321_fu_2151_p1;
wire   [63:0] zext_ln172_11_fu_2166_p1;
wire   [63:0] zext_ln315_1_fu_2189_p1;
wire   [63:0] zext_ln316_1_fu_2213_p1;
wire   [63:0] zext_ln317_1_fu_2237_p1;
wire   [63:0] zext_ln318_1_fu_2261_p1;
wire   [63:0] zext_ln319_1_fu_2285_p1;
wire   [63:0] zext_ln320_1_fu_2309_p1;
wire   [63:0] zext_ln321_1_fu_2333_p1;
wire   [63:0] zext_ln309_fu_3164_p1;
wire   [63:0] zext_ln312_fu_3192_p1;
reg   [6:0] tid_fu_140;
wire   [6:0] add_ln309_fu_1921_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [5:0] smem_address1_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [5:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [5:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [5:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [5:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_5_ce1_local;
reg   [5:0] smem_5_address1_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_6_ce1_local;
reg   [5:0] smem_6_address1_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_7_ce1_local;
reg   [5:0] smem_7_address1_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg   [5:0] smem_8_address1_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg   [5:0] smem_9_address1_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_we1_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_1_we1_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_we1_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_we1_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_we1_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_3_we1_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_we1_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
wire   [2:0] tmp_44_fu_1867_p4;
wire   [5:0] trunc_ln312_fu_1877_p1;
wire   [8:0] grp_fu_1889_p0;
wire   [4:0] grp_fu_1889_p1;
wire   [4:0] tmp_53_fu_1895_p4;
wire   [8:0] grp_fu_1915_p0;
wire   [4:0] grp_fu_1915_p1;
wire   [8:0] mul_ln172_fu_1938_p0;
wire   [10:0] mul_ln172_fu_1938_p1;
wire   [18:0] mul_ln172_fu_1938_p2;
wire   [8:0] mul_ln172_2_fu_1960_p0;
wire   [10:0] mul_ln172_2_fu_1960_p1;
wire   [18:0] mul_ln172_2_fu_1960_p2;
wire   [3:0] grp_fu_1889_p2;
wire   [3:0] grp_fu_1915_p2;
wire   [20:0] tmp_46_fu_1998_p1;
wire  signed [20:0] grp_fu_3204_p3;
wire   [6:0] tmp_46_fu_1998_p4;
wire   [20:0] tmp_47_fu_2022_p1;
wire  signed [20:0] grp_fu_3213_p3;
wire   [6:0] tmp_47_fu_2022_p4;
wire   [20:0] tmp_48_fu_2046_p1;
wire  signed [20:0] grp_fu_3222_p3;
wire   [6:0] tmp_48_fu_2046_p4;
wire   [20:0] tmp_49_fu_2070_p1;
wire  signed [20:0] grp_fu_3231_p3;
wire   [6:0] tmp_49_fu_2070_p4;
wire   [20:0] tmp_50_fu_2094_p1;
wire  signed [20:0] grp_fu_3240_p3;
wire   [6:0] tmp_50_fu_2094_p4;
wire   [20:0] tmp_51_fu_2118_p1;
wire  signed [20:0] grp_fu_3249_p3;
wire   [6:0] tmp_51_fu_2118_p4;
wire   [20:0] tmp_52_fu_2142_p1;
wire  signed [20:0] grp_fu_3258_p3;
wire   [6:0] tmp_52_fu_2142_p4;
wire   [20:0] tmp_55_fu_2180_p1;
wire  signed [20:0] grp_fu_3267_p3;
wire   [6:0] tmp_55_fu_2180_p4;
wire   [20:0] tmp_56_fu_2204_p1;
wire  signed [20:0] grp_fu_3276_p3;
wire   [6:0] tmp_56_fu_2204_p4;
wire   [20:0] tmp_57_fu_2228_p1;
wire  signed [20:0] grp_fu_3285_p3;
wire   [6:0] tmp_57_fu_2228_p4;
wire   [20:0] tmp_58_fu_2252_p1;
wire  signed [20:0] grp_fu_3294_p3;
wire   [6:0] tmp_58_fu_2252_p4;
wire   [20:0] tmp_59_fu_2276_p1;
wire  signed [20:0] grp_fu_3303_p3;
wire   [6:0] tmp_59_fu_2276_p4;
wire   [20:0] tmp_60_fu_2300_p1;
wire  signed [20:0] grp_fu_3312_p3;
wire   [6:0] tmp_60_fu_2300_p4;
wire   [20:0] tmp_61_fu_2324_p1;
wire  signed [20:0] grp_fu_3321_p3;
wire   [6:0] tmp_61_fu_2324_p4;
wire   [63:0] tmp_s_fu_2348_p23;
wire   [63:0] tmp_21_fu_2399_p23;
wire   [63:0] tmp_22_fu_2450_p23;
wire   [63:0] tmp_23_fu_2501_p23;
wire   [63:0] tmp_24_fu_2552_p23;
wire   [63:0] tmp_25_fu_2603_p23;
wire   [63:0] tmp_26_fu_2654_p23;
wire   [63:0] tmp_27_fu_2705_p23;
wire   [63:0] tmp_29_fu_2756_p23;
wire   [63:0] tmp_30_fu_2807_p23;
wire   [63:0] tmp_31_fu_2858_p23;
wire   [63:0] tmp_32_fu_2909_p23;
wire   [63:0] tmp_33_fu_2960_p23;
wire   [63:0] tmp_34_fu_3011_p23;
wire   [63:0] tmp_35_fu_3062_p23;
wire   [63:0] tmp_36_fu_3113_p23;
wire   [4:0] tmp_28_fu_3175_p4;
wire   [5:0] or_ln_fu_3184_p3;
wire   [8:0] grp_fu_3204_p0;
wire   [9:0] zext_ln172_fu_1932_p1;
wire   [5:0] grp_fu_3204_p1;
wire   [10:0] grp_fu_3204_p2;
wire   [8:0] grp_fu_3213_p0;
wire   [3:0] grp_fu_3213_p1;
wire   [10:0] grp_fu_3213_p2;
wire   [8:0] grp_fu_3222_p0;
wire   [5:0] grp_fu_3222_p1;
wire   [10:0] grp_fu_3222_p2;
wire   [8:0] grp_fu_3231_p0;
wire   [4:0] grp_fu_3231_p1;
wire   [10:0] grp_fu_3231_p2;
wire   [8:0] grp_fu_3240_p0;
wire   [5:0] grp_fu_3240_p1;
wire   [10:0] grp_fu_3240_p2;
wire   [8:0] grp_fu_3249_p0;
wire   [4:0] grp_fu_3249_p1;
wire   [10:0] grp_fu_3249_p2;
wire   [8:0] grp_fu_3258_p0;
wire   [5:0] grp_fu_3258_p1;
wire   [10:0] grp_fu_3258_p2;
wire   [8:0] grp_fu_3267_p0;
wire   [9:0] zext_ln172_9_fu_1954_p1;
wire   [5:0] grp_fu_3267_p1;
wire   [10:0] grp_fu_3267_p2;
wire   [8:0] grp_fu_3276_p0;
wire   [3:0] grp_fu_3276_p1;
wire   [10:0] grp_fu_3276_p2;
wire   [8:0] grp_fu_3285_p0;
wire   [5:0] grp_fu_3285_p1;
wire   [10:0] grp_fu_3285_p2;
wire   [8:0] grp_fu_3294_p0;
wire   [4:0] grp_fu_3294_p1;
wire   [10:0] grp_fu_3294_p2;
wire   [8:0] grp_fu_3303_p0;
wire   [5:0] grp_fu_3303_p1;
wire   [10:0] grp_fu_3303_p2;
wire   [8:0] grp_fu_3312_p0;
wire   [4:0] grp_fu_3312_p1;
wire   [10:0] grp_fu_3312_p2;
wire   [8:0] grp_fu_3321_p0;
wire   [5:0] grp_fu_3321_p1;
wire   [10:0] grp_fu_3321_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_2_fu_1960_p00;
wire   [18:0] mul_ln172_fu_1938_p00;
wire   [3:0] tmp_s_fu_2348_p1;
wire   [3:0] tmp_s_fu_2348_p3;
wire   [3:0] tmp_s_fu_2348_p5;
wire   [3:0] tmp_s_fu_2348_p7;
wire   [3:0] tmp_s_fu_2348_p9;
wire   [3:0] tmp_s_fu_2348_p11;
wire   [3:0] tmp_s_fu_2348_p13;
wire   [3:0] tmp_s_fu_2348_p15;
wire  signed [3:0] tmp_s_fu_2348_p17;
wire  signed [3:0] tmp_s_fu_2348_p19;
wire  signed [3:0] tmp_s_fu_2348_p21;
wire   [3:0] tmp_21_fu_2399_p1;
wire   [3:0] tmp_21_fu_2399_p3;
wire   [3:0] tmp_21_fu_2399_p5;
wire   [3:0] tmp_21_fu_2399_p7;
wire   [3:0] tmp_21_fu_2399_p9;
wire   [3:0] tmp_21_fu_2399_p11;
wire   [3:0] tmp_21_fu_2399_p13;
wire  signed [3:0] tmp_21_fu_2399_p15;
wire  signed [3:0] tmp_21_fu_2399_p17;
wire  signed [3:0] tmp_21_fu_2399_p19;
wire   [3:0] tmp_21_fu_2399_p21;
wire   [3:0] tmp_22_fu_2450_p1;
wire   [3:0] tmp_22_fu_2450_p3;
wire   [3:0] tmp_22_fu_2450_p5;
wire   [3:0] tmp_22_fu_2450_p7;
wire   [3:0] tmp_22_fu_2450_p9;
wire  signed [3:0] tmp_22_fu_2450_p11;
wire  signed [3:0] tmp_22_fu_2450_p13;
wire  signed [3:0] tmp_22_fu_2450_p15;
wire   [3:0] tmp_22_fu_2450_p17;
wire   [3:0] tmp_22_fu_2450_p19;
wire   [3:0] tmp_22_fu_2450_p21;
wire   [3:0] tmp_23_fu_2501_p1;
wire   [3:0] tmp_23_fu_2501_p3;
wire   [3:0] tmp_23_fu_2501_p5;
wire   [3:0] tmp_23_fu_2501_p7;
wire  signed [3:0] tmp_23_fu_2501_p9;
wire  signed [3:0] tmp_23_fu_2501_p11;
wire  signed [3:0] tmp_23_fu_2501_p13;
wire   [3:0] tmp_23_fu_2501_p15;
wire   [3:0] tmp_23_fu_2501_p17;
wire   [3:0] tmp_23_fu_2501_p19;
wire   [3:0] tmp_23_fu_2501_p21;
wire   [3:0] tmp_24_fu_2552_p1;
wire   [3:0] tmp_24_fu_2552_p3;
wire  signed [3:0] tmp_24_fu_2552_p5;
wire  signed [3:0] tmp_24_fu_2552_p7;
wire  signed [3:0] tmp_24_fu_2552_p9;
wire   [3:0] tmp_24_fu_2552_p11;
wire   [3:0] tmp_24_fu_2552_p13;
wire   [3:0] tmp_24_fu_2552_p15;
wire   [3:0] tmp_24_fu_2552_p17;
wire   [3:0] tmp_24_fu_2552_p19;
wire   [3:0] tmp_24_fu_2552_p21;
wire   [3:0] tmp_25_fu_2603_p1;
wire  signed [3:0] tmp_25_fu_2603_p3;
wire  signed [3:0] tmp_25_fu_2603_p5;
wire  signed [3:0] tmp_25_fu_2603_p7;
wire   [3:0] tmp_25_fu_2603_p9;
wire   [3:0] tmp_25_fu_2603_p11;
wire   [3:0] tmp_25_fu_2603_p13;
wire   [3:0] tmp_25_fu_2603_p15;
wire   [3:0] tmp_25_fu_2603_p17;
wire   [3:0] tmp_25_fu_2603_p19;
wire   [3:0] tmp_25_fu_2603_p21;
wire  signed [3:0] tmp_26_fu_2654_p1;
wire  signed [3:0] tmp_26_fu_2654_p3;
wire   [3:0] tmp_26_fu_2654_p5;
wire   [3:0] tmp_26_fu_2654_p7;
wire   [3:0] tmp_26_fu_2654_p9;
wire   [3:0] tmp_26_fu_2654_p11;
wire   [3:0] tmp_26_fu_2654_p13;
wire   [3:0] tmp_26_fu_2654_p15;
wire   [3:0] tmp_26_fu_2654_p17;
wire   [3:0] tmp_26_fu_2654_p19;
wire  signed [3:0] tmp_26_fu_2654_p21;
wire  signed [3:0] tmp_27_fu_2705_p1;
wire   [3:0] tmp_27_fu_2705_p3;
wire   [3:0] tmp_27_fu_2705_p5;
wire   [3:0] tmp_27_fu_2705_p7;
wire   [3:0] tmp_27_fu_2705_p9;
wire   [3:0] tmp_27_fu_2705_p11;
wire   [3:0] tmp_27_fu_2705_p13;
wire   [3:0] tmp_27_fu_2705_p15;
wire   [3:0] tmp_27_fu_2705_p17;
wire  signed [3:0] tmp_27_fu_2705_p19;
wire  signed [3:0] tmp_27_fu_2705_p21;
wire   [3:0] tmp_29_fu_2756_p1;
wire   [3:0] tmp_29_fu_2756_p3;
wire   [3:0] tmp_29_fu_2756_p5;
wire   [3:0] tmp_29_fu_2756_p7;
wire   [3:0] tmp_29_fu_2756_p9;
wire   [3:0] tmp_29_fu_2756_p11;
wire   [3:0] tmp_29_fu_2756_p13;
wire   [3:0] tmp_29_fu_2756_p15;
wire  signed [3:0] tmp_29_fu_2756_p17;
wire  signed [3:0] tmp_29_fu_2756_p19;
wire  signed [3:0] tmp_29_fu_2756_p21;
wire   [3:0] tmp_30_fu_2807_p1;
wire   [3:0] tmp_30_fu_2807_p3;
wire   [3:0] tmp_30_fu_2807_p5;
wire   [3:0] tmp_30_fu_2807_p7;
wire   [3:0] tmp_30_fu_2807_p9;
wire   [3:0] tmp_30_fu_2807_p11;
wire   [3:0] tmp_30_fu_2807_p13;
wire  signed [3:0] tmp_30_fu_2807_p15;
wire  signed [3:0] tmp_30_fu_2807_p17;
wire  signed [3:0] tmp_30_fu_2807_p19;
wire   [3:0] tmp_30_fu_2807_p21;
wire   [3:0] tmp_31_fu_2858_p1;
wire   [3:0] tmp_31_fu_2858_p3;
wire   [3:0] tmp_31_fu_2858_p5;
wire   [3:0] tmp_31_fu_2858_p7;
wire   [3:0] tmp_31_fu_2858_p9;
wire  signed [3:0] tmp_31_fu_2858_p11;
wire  signed [3:0] tmp_31_fu_2858_p13;
wire  signed [3:0] tmp_31_fu_2858_p15;
wire   [3:0] tmp_31_fu_2858_p17;
wire   [3:0] tmp_31_fu_2858_p19;
wire   [3:0] tmp_31_fu_2858_p21;
wire   [3:0] tmp_32_fu_2909_p1;
wire   [3:0] tmp_32_fu_2909_p3;
wire   [3:0] tmp_32_fu_2909_p5;
wire   [3:0] tmp_32_fu_2909_p7;
wire  signed [3:0] tmp_32_fu_2909_p9;
wire  signed [3:0] tmp_32_fu_2909_p11;
wire  signed [3:0] tmp_32_fu_2909_p13;
wire   [3:0] tmp_32_fu_2909_p15;
wire   [3:0] tmp_32_fu_2909_p17;
wire   [3:0] tmp_32_fu_2909_p19;
wire   [3:0] tmp_32_fu_2909_p21;
wire   [3:0] tmp_33_fu_2960_p1;
wire   [3:0] tmp_33_fu_2960_p3;
wire  signed [3:0] tmp_33_fu_2960_p5;
wire  signed [3:0] tmp_33_fu_2960_p7;
wire  signed [3:0] tmp_33_fu_2960_p9;
wire   [3:0] tmp_33_fu_2960_p11;
wire   [3:0] tmp_33_fu_2960_p13;
wire   [3:0] tmp_33_fu_2960_p15;
wire   [3:0] tmp_33_fu_2960_p17;
wire   [3:0] tmp_33_fu_2960_p19;
wire   [3:0] tmp_33_fu_2960_p21;
wire   [3:0] tmp_34_fu_3011_p1;
wire  signed [3:0] tmp_34_fu_3011_p3;
wire  signed [3:0] tmp_34_fu_3011_p5;
wire  signed [3:0] tmp_34_fu_3011_p7;
wire   [3:0] tmp_34_fu_3011_p9;
wire   [3:0] tmp_34_fu_3011_p11;
wire   [3:0] tmp_34_fu_3011_p13;
wire   [3:0] tmp_34_fu_3011_p15;
wire   [3:0] tmp_34_fu_3011_p17;
wire   [3:0] tmp_34_fu_3011_p19;
wire   [3:0] tmp_34_fu_3011_p21;
wire  signed [3:0] tmp_35_fu_3062_p1;
wire  signed [3:0] tmp_35_fu_3062_p3;
wire   [3:0] tmp_35_fu_3062_p5;
wire   [3:0] tmp_35_fu_3062_p7;
wire   [3:0] tmp_35_fu_3062_p9;
wire   [3:0] tmp_35_fu_3062_p11;
wire   [3:0] tmp_35_fu_3062_p13;
wire   [3:0] tmp_35_fu_3062_p15;
wire   [3:0] tmp_35_fu_3062_p17;
wire   [3:0] tmp_35_fu_3062_p19;
wire  signed [3:0] tmp_35_fu_3062_p21;
wire  signed [3:0] tmp_36_fu_3113_p1;
wire   [3:0] tmp_36_fu_3113_p3;
wire   [3:0] tmp_36_fu_3113_p5;
wire   [3:0] tmp_36_fu_3113_p7;
wire   [3:0] tmp_36_fu_3113_p9;
wire   [3:0] tmp_36_fu_3113_p11;
wire   [3:0] tmp_36_fu_3113_p13;
wire   [3:0] tmp_36_fu_3113_p15;
wire   [3:0] tmp_36_fu_3113_p17;
wire  signed [3:0] tmp_36_fu_3113_p19;
wire  signed [3:0] tmp_36_fu_3113_p21;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 tid_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U583(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1889_p0),.din1(grp_fu_1889_p1),.ce(1'b1),.dout(grp_fu_1889_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U584(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1915_p0),.din1(grp_fu_1915_p1),.ce(1'b1),.dout(grp_fu_1915_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U585(.din0(mul_ln172_fu_1938_p0),.din1(mul_ln172_fu_1938_p1),.dout(mul_ln172_fu_1938_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U586(.din0(mul_ln172_2_fu_1960_p0),.din1(mul_ln172_2_fu_1960_p1),.dout(mul_ln172_2_fu_1960_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U587(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_s_fu_2348_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_s_fu_2348_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U588(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_21_fu_2399_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_21_fu_2399_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U589(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_22_fu_2450_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_22_fu_2450_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U590(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_23_fu_2501_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_23_fu_2501_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U591(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_24_fu_2552_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_24_fu_2552_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U592(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_25_fu_2603_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_25_fu_2603_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U593(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_26_fu_2654_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_26_fu_2654_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U594(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.def(tmp_27_fu_2705_p23),.sel(trunc_ln172_reg_3371_pp0_iter13_reg),.dout(tmp_27_fu_2705_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U595(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_29_fu_2756_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_29_fu_2756_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U596(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_30_fu_2807_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_30_fu_2807_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U597(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_31_fu_2858_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_31_fu_2858_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U598(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_32_fu_2909_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_32_fu_2909_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U599(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_33_fu_2960_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_33_fu_2960_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U600(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_34_fu_3011_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_34_fu_3011_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U601(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_35_fu_3062_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_35_fu_3062_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U602(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_36_fu_3113_p23),.sel(trunc_ln172_2_reg_3383_pp0_iter13_reg),.dout(tmp_36_fu_3113_p25));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U603(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3204_p0),.din1(grp_fu_3204_p1),.din2(grp_fu_3204_p2),.ce(1'b1),.dout(grp_fu_3204_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U604(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3213_p0),.din1(grp_fu_3213_p1),.din2(grp_fu_3213_p2),.ce(1'b1),.dout(grp_fu_3213_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U605(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3222_p0),.din1(grp_fu_3222_p1),.din2(grp_fu_3222_p2),.ce(1'b1),.dout(grp_fu_3222_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U606(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3231_p0),.din1(grp_fu_3231_p1),.din2(grp_fu_3231_p2),.ce(1'b1),.dout(grp_fu_3231_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U607(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3240_p0),.din1(grp_fu_3240_p1),.din2(grp_fu_3240_p2),.ce(1'b1),.dout(grp_fu_3240_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U608(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3249_p0),.din1(grp_fu_3249_p1),.din2(grp_fu_3249_p2),.ce(1'b1),.dout(grp_fu_3249_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U609(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3258_p0),.din1(grp_fu_3258_p1),.din2(grp_fu_3258_p2),.ce(1'b1),.dout(grp_fu_3258_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U610(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3267_p0),.din1(grp_fu_3267_p1),.din2(grp_fu_3267_p2),.ce(1'b1),.dout(grp_fu_3267_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U611(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3276_p0),.din1(grp_fu_3276_p1),.din2(grp_fu_3276_p2),.ce(1'b1),.dout(grp_fu_3276_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U612(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3285_p0),.din1(grp_fu_3285_p1),.din2(grp_fu_3285_p2),.ce(1'b1),.dout(grp_fu_3285_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U613(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3294_p0),.din1(grp_fu_3294_p1),.din2(grp_fu_3294_p2),.ce(1'b1),.dout(grp_fu_3294_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U614(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3303_p0),.din1(grp_fu_3303_p1),.din2(grp_fu_3303_p2),.ce(1'b1),.dout(grp_fu_3303_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U615(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3312_p0),.din1(grp_fu_3312_p1),.din2(grp_fu_3312_p2),.ce(1'b1),.dout(grp_fu_3312_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U616(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3321_p0),.din1(grp_fu_3321_p1),.din2(grp_fu_3321_p2),.ce(1'b1),.dout(grp_fu_3321_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_1859_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_140 <= add_ln309_fu_1921_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_140 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        offset_2_reg_3354_pp0_iter2_reg[8 : 1] <= offset_2_reg_3354_pp0_iter1_reg[8 : 1];
        offset_2_reg_3354_pp0_iter3_reg[8 : 1] <= offset_2_reg_3354_pp0_iter2_reg[8 : 1];
        offset_2_reg_3354_pp0_iter4_reg[8 : 1] <= offset_2_reg_3354_pp0_iter3_reg[8 : 1];
        offset_2_reg_3354_pp0_iter5_reg[8 : 1] <= offset_2_reg_3354_pp0_iter4_reg[8 : 1];
        offset_2_reg_3354_pp0_iter6_reg[8 : 1] <= offset_2_reg_3354_pp0_iter5_reg[8 : 1];
        offset_2_reg_3354_pp0_iter7_reg[8 : 1] <= offset_2_reg_3354_pp0_iter6_reg[8 : 1];
        offset_2_reg_3354_pp0_iter8_reg[8 : 1] <= offset_2_reg_3354_pp0_iter7_reg[8 : 1];
        offset_2_reg_3354_pp0_iter9_reg[8 : 1] <= offset_2_reg_3354_pp0_iter8_reg[8 : 1];
        offset_reg_3347_pp0_iter2_reg <= offset_reg_3347_pp0_iter1_reg;
        offset_reg_3347_pp0_iter3_reg <= offset_reg_3347_pp0_iter2_reg;
        offset_reg_3347_pp0_iter4_reg <= offset_reg_3347_pp0_iter3_reg;
        offset_reg_3347_pp0_iter5_reg <= offset_reg_3347_pp0_iter4_reg;
        offset_reg_3347_pp0_iter6_reg <= offset_reg_3347_pp0_iter5_reg;
        offset_reg_3347_pp0_iter7_reg <= offset_reg_3347_pp0_iter6_reg;
        offset_reg_3347_pp0_iter8_reg <= offset_reg_3347_pp0_iter7_reg;
        offset_reg_3347_pp0_iter9_reg <= offset_reg_3347_pp0_iter8_reg;
        tid_2_reg_3337_pp0_iter10_reg <= tid_2_reg_3337_pp0_iter9_reg;
        tid_2_reg_3337_pp0_iter11_reg <= tid_2_reg_3337_pp0_iter10_reg;
        tid_2_reg_3337_pp0_iter12_reg <= tid_2_reg_3337_pp0_iter11_reg;
        tid_2_reg_3337_pp0_iter13_reg <= tid_2_reg_3337_pp0_iter12_reg;
        tid_2_reg_3337_pp0_iter14_reg <= tid_2_reg_3337_pp0_iter13_reg;
        tid_2_reg_3337_pp0_iter2_reg <= tid_2_reg_3337_pp0_iter1_reg;
        tid_2_reg_3337_pp0_iter3_reg <= tid_2_reg_3337_pp0_iter2_reg;
        tid_2_reg_3337_pp0_iter4_reg <= tid_2_reg_3337_pp0_iter3_reg;
        tid_2_reg_3337_pp0_iter5_reg <= tid_2_reg_3337_pp0_iter4_reg;
        tid_2_reg_3337_pp0_iter6_reg <= tid_2_reg_3337_pp0_iter5_reg;
        tid_2_reg_3337_pp0_iter7_reg <= tid_2_reg_3337_pp0_iter6_reg;
        tid_2_reg_3337_pp0_iter8_reg <= tid_2_reg_3337_pp0_iter7_reg;
        tid_2_reg_3337_pp0_iter9_reg <= tid_2_reg_3337_pp0_iter8_reg;
        tmp_21_reg_4280 <= tmp_21_fu_2399_p25;
        tmp_22_reg_4285 <= tmp_22_fu_2450_p25;
        tmp_23_reg_4290 <= tmp_23_fu_2501_p25;
        tmp_24_reg_4295 <= tmp_24_fu_2552_p25;
        tmp_25_reg_4300 <= tmp_25_fu_2603_p25;
        tmp_26_reg_4305 <= tmp_26_fu_2654_p25;
        tmp_27_reg_4310 <= tmp_27_fu_2705_p25;
        tmp_29_reg_4315 <= tmp_29_fu_2756_p25;
        tmp_30_reg_4320 <= tmp_30_fu_2807_p25;
        tmp_31_reg_4325 <= tmp_31_fu_2858_p25;
        tmp_32_reg_4330 <= tmp_32_fu_2909_p25;
        tmp_33_reg_4335 <= tmp_33_fu_2960_p25;
        tmp_34_reg_4340 <= tmp_34_fu_3011_p25;
        tmp_35_reg_4345 <= tmp_35_fu_3062_p25;
        tmp_36_reg_4350 <= tmp_36_fu_3113_p25;
        tmp_45_reg_3361 <= {{mul_ln172_fu_1938_p2[18:13]}};
        tmp_45_reg_3361_pp0_iter11_reg <= tmp_45_reg_3361;
        tmp_45_reg_3361_pp0_iter12_reg <= tmp_45_reg_3361_pp0_iter11_reg;
        tmp_54_reg_3366 <= {{mul_ln172_2_fu_1960_p2[18:13]}};
        tmp_54_reg_3366_pp0_iter11_reg <= tmp_54_reg_3366;
        tmp_54_reg_3366_pp0_iter12_reg <= tmp_54_reg_3366_pp0_iter11_reg;
        tmp_s_reg_4275 <= tmp_s_fu_2348_p25;
        trunc_ln172_2_reg_3383 <= trunc_ln172_2_fu_1980_p1;
        trunc_ln172_2_reg_3383_pp0_iter13_reg <= trunc_ln172_2_reg_3383;
        trunc_ln172_reg_3371 <= trunc_ln172_fu_1976_p1;
        trunc_ln172_reg_3371_pp0_iter13_reg <= trunc_ln172_reg_3371;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_2_reg_3354[8 : 1] <= offset_2_fu_1905_p4[8 : 1];
        offset_2_reg_3354_pp0_iter1_reg[8 : 1] <= offset_2_reg_3354[8 : 1];
        offset_reg_3347 <= offset_fu_1881_p3;
        offset_reg_3347_pp0_iter1_reg <= offset_reg_3347;
        tid_2_reg_3337 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_3337_pp0_iter1_reg <= tid_2_reg_3337;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we1_local = 1'b1;
    end else begin
        DATA_x_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we1_local = 1'b1;
    end else begin
        DATA_x_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we1_local = 1'b1;
    end else begin
        DATA_x_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we1_local = 1'b1;
    end else begin
        DATA_x_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_1859_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_10_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_10_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_10_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_10_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_10_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_10_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_10_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_10_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_10_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_10_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_10_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_10_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_10_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_10_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_10_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_1_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_1_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_1_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_1_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_1_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_1_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_1_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_1_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_1_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_1_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_1_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_1_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_1_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_1_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_1_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_2_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_2_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_2_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_2_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_2_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_2_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_2_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_2_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_2_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_2_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_2_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_2_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_2_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_2_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_2_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_3_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_3_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_3_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_3_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_3_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_3_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_3_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_3_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_3_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_3_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_3_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_3_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_3_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_3_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_3_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_4_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_4_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_4_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_4_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_4_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_4_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_4_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_4_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_4_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_4_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_4_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_4_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_4_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_4_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_4_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_5_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_5_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_5_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_5_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_5_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_5_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_5_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_5_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_5_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_5_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_5_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_5_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_5_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_5_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_5_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_6_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_6_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_6_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_6_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_6_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_6_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_6_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_6_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_6_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_6_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_6_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_6_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_6_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_6_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_6_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_7_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_7_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_7_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_7_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_7_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_7_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_7_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_7_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_7_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_7_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_7_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_7_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_7_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_7_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_7_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_8_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_8_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_8_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_8_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_8_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_8_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_8_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_8_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_8_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_8_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_8_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_8_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_8_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_8_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_8_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd8)) begin
            smem_9_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_9_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd5)) begin
            smem_9_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_9_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd2)) begin
            smem_9_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_9_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_9_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd8)) begin
            smem_9_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_9_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd5)) begin
            smem_9_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_9_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd2)) begin
            smem_9_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_9_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_9_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_9_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_2_reg_3383 == 4'd10)) begin
            smem_address0_local = zext_ln321_1_fu_2333_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd9)) begin
            smem_address0_local = zext_ln320_1_fu_2309_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd7)) begin
            smem_address0_local = zext_ln319_1_fu_2285_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd6)) begin
            smem_address0_local = zext_ln318_1_fu_2261_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd4)) begin
            smem_address0_local = zext_ln317_1_fu_2237_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd3)) begin
            smem_address0_local = zext_ln316_1_fu_2213_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd1)) begin
            smem_address0_local = zext_ln315_1_fu_2189_p1;
        end else if ((trunc_ln172_2_reg_3383 == 4'd0)) begin
            smem_address0_local = zext_ln172_11_fu_2166_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3371 == 4'd10)) begin
            smem_address1_local = zext_ln321_fu_2151_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd9)) begin
            smem_address1_local = zext_ln320_fu_2127_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd7)) begin
            smem_address1_local = zext_ln319_fu_2103_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd6)) begin
            smem_address1_local = zext_ln318_fu_2079_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd4)) begin
            smem_address1_local = zext_ln317_fu_2055_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd3)) begin
            smem_address1_local = zext_ln316_fu_2031_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd1)) begin
            smem_address1_local = zext_ln315_fu_2007_p1;
        end else if ((trunc_ln172_reg_3371 == 4'd0)) begin
            smem_address1_local = zext_ln172_8_fu_1984_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_2_reg_3383 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3371 == 4'd0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_1_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = tmp_31_reg_4325;
assign DATA_x_1_d1 = tmp_22_reg_4285;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_2_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = tmp_33_reg_4335;
assign DATA_x_2_d1 = tmp_24_reg_4295;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_3_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = tmp_35_reg_4345;
assign DATA_x_3_d1 = tmp_26_reg_4305;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_4_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_4_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_4_d0 = tmp_30_reg_4320;
assign DATA_x_4_d1 = tmp_21_reg_4280;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_4_we1 = DATA_x_4_we1_local;
assign DATA_x_5_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_5_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_5_d0 = tmp_32_reg_4330;
assign DATA_x_5_d1 = tmp_23_reg_4290;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_5_we1 = DATA_x_5_we1_local;
assign DATA_x_6_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_6_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_6_d0 = tmp_34_reg_4340;
assign DATA_x_6_d1 = tmp_25_reg_4300;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_6_we1 = DATA_x_6_we1_local;
assign DATA_x_7_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_7_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_7_d0 = tmp_36_reg_4350;
assign DATA_x_7_d1 = tmp_27_reg_4310;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_7_we1 = DATA_x_7_we1_local;
assign DATA_x_address0 = zext_ln312_fu_3192_p1;
assign DATA_x_address1 = zext_ln309_fu_3164_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = tmp_29_reg_4315;
assign DATA_x_d1 = tmp_s_reg_4275;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1921_p2 = (ap_sig_allocacmp_tid_2 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1889_p0 = {{tmp_44_fu_1867_p4}, {trunc_ln312_fu_1877_p1}};
assign grp_fu_1889_p1 = 9'd11;
assign grp_fu_1915_p0 = {{{tmp_44_fu_1867_p4}, {tmp_53_fu_1895_p4}}, {1'd1}};
assign grp_fu_1915_p1 = 9'd11;
assign grp_fu_3204_p0 = zext_ln172_fu_1932_p1;
assign grp_fu_3204_p1 = 10'd32;
assign grp_fu_3204_p2 = 21'd1490;
assign grp_fu_3213_p0 = zext_ln172_fu_1932_p1;
assign grp_fu_3213_p1 = 10'd8;
assign grp_fu_3213_p2 = 21'd1490;
assign grp_fu_3222_p0 = zext_ln172_fu_1932_p1;
assign grp_fu_3222_p1 = 10'd40;
assign grp_fu_3222_p2 = 21'd1490;
assign grp_fu_3231_p0 = zext_ln172_fu_1932_p1;
assign grp_fu_3231_p1 = 10'd16;
assign grp_fu_3231_p2 = 21'd1490;
assign grp_fu_3240_p0 = zext_ln172_fu_1932_p1;
assign grp_fu_3240_p1 = 10'd48;
assign grp_fu_3240_p2 = 21'd1490;
assign grp_fu_3249_p0 = zext_ln172_fu_1932_p1;
assign grp_fu_3249_p1 = 10'd24;
assign grp_fu_3249_p2 = 21'd1490;
assign grp_fu_3258_p0 = zext_ln172_fu_1932_p1;
assign grp_fu_3258_p1 = 10'd56;
assign grp_fu_3258_p2 = 21'd1490;
assign grp_fu_3267_p0 = zext_ln172_9_fu_1954_p1;
assign grp_fu_3267_p1 = 10'd32;
assign grp_fu_3267_p2 = 21'd1490;
assign grp_fu_3276_p0 = zext_ln172_9_fu_1954_p1;
assign grp_fu_3276_p1 = 10'd8;
assign grp_fu_3276_p2 = 21'd1490;
assign grp_fu_3285_p0 = zext_ln172_9_fu_1954_p1;
assign grp_fu_3285_p1 = 10'd40;
assign grp_fu_3285_p2 = 21'd1490;
assign grp_fu_3294_p0 = zext_ln172_9_fu_1954_p1;
assign grp_fu_3294_p1 = 10'd16;
assign grp_fu_3294_p2 = 21'd1490;
assign grp_fu_3303_p0 = zext_ln172_9_fu_1954_p1;
assign grp_fu_3303_p1 = 10'd48;
assign grp_fu_3303_p2 = 21'd1490;
assign grp_fu_3312_p0 = zext_ln172_9_fu_1954_p1;
assign grp_fu_3312_p1 = 10'd24;
assign grp_fu_3312_p2 = 21'd1490;
assign grp_fu_3321_p0 = zext_ln172_9_fu_1954_p1;
assign grp_fu_3321_p1 = 10'd56;
assign grp_fu_3321_p2 = 21'd1490;
assign mul_ln172_2_fu_1960_p0 = mul_ln172_2_fu_1960_p00;
assign mul_ln172_2_fu_1960_p00 = offset_2_reg_3354_pp0_iter9_reg;
assign mul_ln172_2_fu_1960_p1 = 19'd745;
assign mul_ln172_fu_1938_p0 = mul_ln172_fu_1938_p00;
assign mul_ln172_fu_1938_p00 = offset_reg_3347_pp0_iter9_reg;
assign mul_ln172_fu_1938_p1 = 19'd745;
assign offset_2_fu_1905_p4 = {{{tmp_44_fu_1867_p4}, {tmp_53_fu_1895_p4}}, {1'd1}};
assign offset_fu_1881_p3 = {{tmp_44_fu_1867_p4}, {trunc_ln312_fu_1877_p1}};
assign or_ln_fu_3184_p3 = {{tmp_28_fu_3175_p4}, {1'd1}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_21_fu_2399_p23 = 'bx;
assign tmp_22_fu_2450_p23 = 'bx;
assign tmp_23_fu_2501_p23 = 'bx;
assign tmp_24_fu_2552_p23 = 'bx;
assign tmp_25_fu_2603_p23 = 'bx;
assign tmp_26_fu_2654_p23 = 'bx;
assign tmp_27_fu_2705_p23 = 'bx;
assign tmp_28_fu_3175_p4 = {{tid_2_reg_3337_pp0_iter14_reg[5:1]}};
assign tmp_29_fu_2756_p23 = 'bx;
assign tmp_30_fu_2807_p23 = 'bx;
assign tmp_31_fu_2858_p23 = 'bx;
assign tmp_32_fu_2909_p23 = 'bx;
assign tmp_33_fu_2960_p23 = 'bx;
assign tmp_34_fu_3011_p23 = 'bx;
assign tmp_35_fu_3062_p23 = 'bx;
assign tmp_36_fu_3113_p23 = 'bx;
assign tmp_44_fu_1867_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_46_fu_1998_p1 = grp_fu_3204_p3;
assign tmp_46_fu_1998_p4 = {{tmp_46_fu_1998_p1[20:14]}};
assign tmp_47_fu_2022_p1 = grp_fu_3213_p3;
assign tmp_47_fu_2022_p4 = {{tmp_47_fu_2022_p1[20:14]}};
assign tmp_48_fu_2046_p1 = grp_fu_3222_p3;
assign tmp_48_fu_2046_p4 = {{tmp_48_fu_2046_p1[20:14]}};
assign tmp_49_fu_2070_p1 = grp_fu_3231_p3;
assign tmp_49_fu_2070_p4 = {{tmp_49_fu_2070_p1[20:14]}};
assign tmp_50_fu_2094_p1 = grp_fu_3240_p3;
assign tmp_50_fu_2094_p4 = {{tmp_50_fu_2094_p1[20:14]}};
assign tmp_51_fu_2118_p1 = grp_fu_3249_p3;
assign tmp_51_fu_2118_p4 = {{tmp_51_fu_2118_p1[20:14]}};
assign tmp_52_fu_2142_p1 = grp_fu_3258_p3;
assign tmp_52_fu_2142_p4 = {{tmp_52_fu_2142_p1[20:14]}};
assign tmp_53_fu_1895_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_55_fu_2180_p1 = grp_fu_3267_p3;
assign tmp_55_fu_2180_p4 = {{tmp_55_fu_2180_p1[20:14]}};
assign tmp_56_fu_2204_p1 = grp_fu_3276_p3;
assign tmp_56_fu_2204_p4 = {{tmp_56_fu_2204_p1[20:14]}};
assign tmp_57_fu_2228_p1 = grp_fu_3285_p3;
assign tmp_57_fu_2228_p4 = {{tmp_57_fu_2228_p1[20:14]}};
assign tmp_58_fu_2252_p1 = grp_fu_3294_p3;
assign tmp_58_fu_2252_p4 = {{tmp_58_fu_2252_p1[20:14]}};
assign tmp_59_fu_2276_p1 = grp_fu_3303_p3;
assign tmp_59_fu_2276_p4 = {{tmp_59_fu_2276_p1[20:14]}};
assign tmp_60_fu_2300_p1 = grp_fu_3312_p3;
assign tmp_60_fu_2300_p4 = {{tmp_60_fu_2300_p1[20:14]}};
assign tmp_61_fu_2324_p1 = grp_fu_3321_p3;
assign tmp_61_fu_2324_p4 = {{tmp_61_fu_2324_p1[20:14]}};
assign tmp_fu_1859_p3 = ap_sig_allocacmp_tid_2[32'd6];
assign tmp_s_fu_2348_p23 = 'bx;
assign trunc_ln172_2_fu_1980_p1 = grp_fu_1915_p2[3:0];
assign trunc_ln172_fu_1976_p1 = grp_fu_1889_p2[3:0];
assign trunc_ln312_fu_1877_p1 = ap_sig_allocacmp_tid_2[5:0];
assign zext_ln172_11_fu_2166_p1 = tmp_54_reg_3366_pp0_iter12_reg;
assign zext_ln172_8_fu_1984_p1 = tmp_45_reg_3361_pp0_iter12_reg;
assign zext_ln172_9_fu_1954_p1 = offset_2_reg_3354_pp0_iter9_reg;
assign zext_ln172_fu_1932_p1 = offset_reg_3347_pp0_iter9_reg;
assign zext_ln309_fu_3164_p1 = tid_2_reg_3337_pp0_iter14_reg;
assign zext_ln312_fu_3192_p1 = or_ln_fu_3184_p3;
assign zext_ln315_1_fu_2189_p1 = tmp_55_fu_2180_p4;
assign zext_ln315_fu_2007_p1 = tmp_46_fu_1998_p4;
assign zext_ln316_1_fu_2213_p1 = tmp_56_fu_2204_p4;
assign zext_ln316_fu_2031_p1 = tmp_47_fu_2022_p4;
assign zext_ln317_1_fu_2237_p1 = tmp_57_fu_2228_p4;
assign zext_ln317_fu_2055_p1 = tmp_48_fu_2046_p4;
assign zext_ln318_1_fu_2261_p1 = tmp_58_fu_2252_p4;
assign zext_ln318_fu_2079_p1 = tmp_49_fu_2070_p4;
assign zext_ln319_1_fu_2285_p1 = tmp_59_fu_2276_p4;
assign zext_ln319_fu_2103_p1 = tmp_50_fu_2094_p4;
assign zext_ln320_1_fu_2309_p1 = tmp_60_fu_2300_p4;
assign zext_ln320_fu_2127_p1 = tmp_51_fu_2118_p4;
assign zext_ln321_1_fu_2333_p1 = tmp_61_fu_2324_p4;
assign zext_ln321_fu_2151_p1 = tmp_52_fu_2142_p4;
always @ (posedge ap_clk) begin
    offset_2_reg_3354[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter1_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter2_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter3_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter4_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter5_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter6_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter7_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter8_reg[0] <= 1'b1;
    offset_2_reg_3354_pp0_iter9_reg[0] <= 1'b1;
end
endmodule 
