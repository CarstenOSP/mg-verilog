
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1);  
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
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_3839;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_3829;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_3829_pp0_iter1_reg;
reg   [6:0] tid_2_reg_3829_pp0_iter2_reg;
reg   [0:0] tmp_reg_3839_pp0_iter1_reg;
wire   [2:0] tmp_81_fu_1772_p4;
reg   [2:0] tmp_81_reg_3843;
wire   [8:0] offset_fu_1786_p3;
reg   [8:0] offset_reg_3850;
wire   [8:0] offset_1_fu_1809_p4;
reg   [8:0] offset_1_reg_3857;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [8:0] offset_2_fu_1824_p4;
reg   [8:0] offset_2_reg_3864;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [8:0] offset_3_fu_1839_p4;
reg   [8:0] offset_3_reg_3871;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] tmp_82_reg_3878;
wire   [9:0] zext_ln172_3_fu_1886_p1;
reg   [9:0] zext_ln172_3_reg_3883;
reg   [6:0] tmp_91_reg_3888;
wire   [9:0] zext_ln172_10_fu_1911_p1;
reg   [9:0] zext_ln172_10_reg_3893;
reg   [6:0] tmp_100_reg_3899;
reg   [7:0] tmp_83_reg_3904;
reg   [7:0] tmp_84_reg_3909;
reg   [7:0] tmp_85_reg_3914;
reg   [7:0] tmp_86_reg_3919;
reg   [7:0] tmp_87_reg_3924;
reg   [7:0] tmp_88_reg_3929;
reg   [7:0] tmp_89_reg_3934;
reg   [7:0] tmp_92_reg_3939;
reg   [7:0] tmp_93_reg_3944;
reg   [7:0] tmp_94_reg_3949;
reg   [7:0] tmp_95_reg_3954;
reg   [7:0] tmp_96_reg_3959;
reg   [7:0] tmp_97_reg_3964;
reg   [6:0] tmp_109_reg_3969;
wire   [2:0] trunc_ln172_fu_2069_p1;
reg   [2:0] trunc_ln172_reg_3974;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] tmp_98_reg_3986;
reg   [7:0] tmp_101_reg_3991;
reg   [7:0] tmp_102_reg_3996;
reg   [7:0] tmp_103_reg_4001;
reg   [7:0] tmp_104_reg_4006;
reg   [7:0] tmp_105_reg_4011;
reg   [7:0] tmp_106_reg_4016;
reg   [7:0] tmp_107_reg_4021;
reg   [7:0] tmp_110_reg_4026;
reg   [7:0] tmp_111_reg_4031;
reg   [7:0] tmp_112_reg_4036;
reg   [7:0] tmp_113_reg_4041;
reg   [7:0] tmp_114_reg_4046;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [2:0] trunc_ln172_1_fu_2254_p1;
reg   [2:0] trunc_ln172_1_reg_4251;
reg   [7:0] tmp_115_reg_4263;
reg   [7:0] tmp_116_reg_4268;
wire   [63:0] tmp_s_fu_2276_p13;
reg   [63:0] tmp_s_reg_4273;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] tmp_21_fu_2303_p13;
reg   [63:0] tmp_21_reg_4278;
wire   [63:0] tmp_22_fu_2330_p13;
reg   [63:0] tmp_22_reg_4283;
wire   [63:0] tmp_23_fu_2357_p13;
reg   [63:0] tmp_23_reg_4288;
wire   [63:0] tmp_24_fu_2384_p13;
reg   [63:0] tmp_24_reg_4293;
wire   [63:0] tmp_25_fu_2411_p13;
reg   [63:0] tmp_25_reg_4298;
wire   [63:0] tmp_26_fu_2438_p13;
reg   [63:0] tmp_26_reg_4303;
wire   [63:0] tmp_27_fu_2465_p13;
reg   [63:0] tmp_27_reg_4308;
wire   [2:0] trunc_ln172_2_fu_2556_p1;
reg   [2:0] trunc_ln172_2_reg_4513;
wire   [5:0] trunc_ln314_fu_2560_p1;
reg   [5:0] trunc_ln314_reg_4525;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_28_fu_2591_p13;
reg   [63:0] tmp_28_reg_4531;
wire   [63:0] tmp_30_fu_2618_p13;
reg   [63:0] tmp_30_reg_4536;
wire   [63:0] tmp_31_fu_2645_p13;
reg   [63:0] tmp_31_reg_4541;
wire   [63:0] tmp_32_fu_2672_p13;
reg   [63:0] tmp_32_reg_4546;
wire   [63:0] tmp_33_fu_2699_p13;
reg   [63:0] tmp_33_reg_4551;
wire   [63:0] tmp_34_fu_2726_p13;
reg   [63:0] tmp_34_reg_4556;
wire   [63:0] tmp_35_fu_2753_p13;
reg   [63:0] tmp_35_reg_4561;
wire   [63:0] tmp_36_fu_2780_p13;
reg   [63:0] tmp_36_reg_4566;
wire   [2:0] trunc_ln172_3_fu_2871_p1;
reg   [2:0] trunc_ln172_3_reg_4771;
wire   [63:0] tmp_37_fu_2901_p13;
reg   [63:0] tmp_37_reg_4783;
wire   [63:0] tmp_39_fu_2928_p13;
reg   [63:0] tmp_39_reg_4788;
wire   [63:0] tmp_40_fu_2955_p13;
reg   [63:0] tmp_40_reg_4793;
wire   [63:0] tmp_41_fu_2982_p13;
reg   [63:0] tmp_41_reg_4798;
wire   [63:0] tmp_42_fu_3009_p13;
reg   [63:0] tmp_42_reg_4803;
wire   [63:0] tmp_43_fu_3036_p13;
reg   [63:0] tmp_43_reg_4808;
wire   [63:0] tmp_44_fu_3063_p13;
reg   [63:0] tmp_44_reg_4813;
wire   [63:0] tmp_45_fu_3090_p13;
reg   [63:0] tmp_45_reg_4818;
wire   [4:0] tmp_29_fu_3181_p4;
reg   [4:0] tmp_29_reg_5023;
reg   [3:0] tmp_38_reg_5029;
wire   [63:0] tmp_46_fu_3227_p13;
reg   [63:0] tmp_46_reg_5041;
wire   [63:0] tmp_47_fu_3254_p13;
reg   [63:0] tmp_47_reg_5046;
wire   [63:0] tmp_48_fu_3281_p13;
reg   [63:0] tmp_48_reg_5051;
wire   [63:0] tmp_49_fu_3308_p13;
reg   [63:0] tmp_49_reg_5056;
wire   [63:0] tmp_50_fu_3335_p13;
reg   [63:0] tmp_50_reg_5061;
wire   [63:0] tmp_51_fu_3362_p13;
reg   [63:0] tmp_51_reg_5066;
wire   [63:0] tmp_52_fu_3389_p13;
reg   [63:0] tmp_52_reg_5071;
wire   [63:0] tmp_53_fu_3416_p13;
reg   [63:0] tmp_53_reg_5076;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln172_2_fu_2190_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln315_fu_2198_p1;
wire   [63:0] zext_ln316_fu_2206_p1;
wire   [63:0] zext_ln317_fu_2214_p1;
wire   [63:0] zext_ln318_fu_2222_p1;
wire   [63:0] zext_ln319_fu_2230_p1;
wire   [63:0] zext_ln320_fu_2238_p1;
wire   [63:0] zext_ln321_fu_2246_p1;
wire   [63:0] zext_ln172_5_fu_2492_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln315_1_fu_2500_p1;
wire   [63:0] zext_ln316_1_fu_2508_p1;
wire   [63:0] zext_ln317_1_fu_2516_p1;
wire   [63:0] zext_ln318_1_fu_2524_p1;
wire   [63:0] zext_ln319_1_fu_2532_p1;
wire   [63:0] zext_ln320_1_fu_2540_p1;
wire   [63:0] zext_ln321_1_fu_2548_p1;
wire   [63:0] zext_ln314_fu_2571_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln315_4_fu_2585_p1;
wire   [63:0] zext_ln172_6_fu_2807_p1;
wire   [63:0] zext_ln315_2_fu_2815_p1;
wire   [63:0] zext_ln316_2_fu_2823_p1;
wire   [63:0] zext_ln317_2_fu_2831_p1;
wire   [63:0] zext_ln318_2_fu_2839_p1;
wire   [63:0] zext_ln319_2_fu_2847_p1;
wire   [63:0] zext_ln320_2_fu_2855_p1;
wire   [63:0] zext_ln321_2_fu_2863_p1;
wire   [63:0] zext_ln318_4_fu_2882_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_4_fu_2895_p1;
wire   [63:0] zext_ln172_7_fu_3117_p1;
wire   [63:0] zext_ln315_3_fu_3125_p1;
wire   [63:0] zext_ln316_3_fu_3133_p1;
wire   [63:0] zext_ln317_3_fu_3141_p1;
wire   [63:0] zext_ln318_3_fu_3149_p1;
wire   [63:0] zext_ln319_3_fu_3157_p1;
wire   [63:0] zext_ln320_3_fu_3165_p1;
wire   [63:0] zext_ln321_3_fu_3173_p1;
wire   [63:0] zext_ln314_1_fu_3198_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_5_fu_3212_p1;
wire   [63:0] zext_ln318_5_fu_3450_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln319_5_fu_3463_p1;
wire   [63:0] zext_ln314_2_fu_3476_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_6_fu_3489_p1;
wire   [63:0] zext_ln318_6_fu_3502_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln319_6_fu_3515_p1;
wire   [63:0] zext_ln314_3_fu_3528_p1;
wire   [63:0] zext_ln315_7_fu_3541_p1;
wire   [63:0] zext_ln318_7_fu_3554_p1;
wire   [63:0] zext_ln319_7_fu_3567_p1;
reg   [6:0] tid_fu_144;
wire   [6:0] add_ln309_fu_1854_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [5:0] trunc_ln312_fu_1782_p1;
wire   [8:0] grp_fu_1794_p0;
wire   [3:0] grp_fu_1794_p1;
wire   [4:0] tmp_90_fu_1800_p4;
wire   [8:0] grp_fu_1818_p0;
wire   [3:0] grp_fu_1818_p1;
wire   [3:0] grp_fu_1747_p4;
wire   [8:0] grp_fu_1833_p0;
wire   [3:0] grp_fu_1833_p1;
wire   [8:0] grp_fu_1848_p0;
wire   [3:0] grp_fu_1848_p1;
wire   [8:0] mul_ln172_fu_1870_p0;
wire   [10:0] mul_ln172_fu_1870_p1;
wire   [18:0] mul_ln172_fu_1870_p2;
wire   [8:0] mul_ln172_1_fu_1892_p0;
wire   [10:0] mul_ln172_1_fu_1892_p1;
wire   [18:0] mul_ln172_1_fu_1892_p2;
wire   [8:0] mul_ln172_2_fu_1917_p0;
wire   [10:0] mul_ln172_2_fu_1917_p1;
wire   [18:0] mul_ln172_2_fu_1917_p2;
wire   [20:0] tmp_83_fu_1933_p1;
wire  signed [20:0] grp_fu_3573_p3;
wire   [20:0] tmp_84_fu_1942_p1;
wire  signed [20:0] grp_fu_3582_p3;
wire   [20:0] tmp_85_fu_1951_p1;
wire  signed [20:0] grp_fu_3591_p3;
wire   [20:0] tmp_86_fu_1960_p1;
wire  signed [20:0] grp_fu_3600_p3;
wire   [20:0] tmp_87_fu_1969_p1;
wire  signed [20:0] grp_fu_3609_p3;
wire   [20:0] tmp_88_fu_1978_p1;
wire  signed [20:0] grp_fu_3618_p3;
wire   [20:0] tmp_89_fu_1987_p1;
wire  signed [20:0] grp_fu_3627_p3;
wire   [20:0] tmp_92_fu_1996_p1;
wire  signed [20:0] grp_fu_3636_p3;
wire   [20:0] tmp_93_fu_2005_p1;
wire  signed [20:0] grp_fu_3645_p3;
wire   [20:0] tmp_94_fu_2014_p1;
wire  signed [20:0] grp_fu_3654_p3;
wire   [20:0] tmp_95_fu_2023_p1;
wire  signed [20:0] grp_fu_3663_p3;
wire   [20:0] tmp_96_fu_2032_p1;
wire  signed [20:0] grp_fu_3672_p3;
wire   [20:0] tmp_97_fu_2041_p1;
wire  signed [20:0] grp_fu_3681_p3;
wire   [8:0] mul_ln172_3_fu_2053_p0;
wire   [10:0] mul_ln172_3_fu_2053_p1;
wire   [18:0] mul_ln172_3_fu_2053_p2;
wire   [2:0] grp_fu_1794_p2;
wire   [20:0] tmp_98_fu_2073_p1;
wire  signed [20:0] grp_fu_3690_p3;
wire   [20:0] tmp_101_fu_2082_p1;
wire  signed [20:0] grp_fu_3698_p3;
wire   [20:0] tmp_102_fu_2091_p1;
wire  signed [20:0] grp_fu_3707_p3;
wire   [20:0] tmp_103_fu_2100_p1;
wire  signed [20:0] grp_fu_3716_p3;
wire   [20:0] tmp_104_fu_2109_p1;
wire  signed [20:0] grp_fu_3725_p3;
wire   [20:0] tmp_105_fu_2118_p1;
wire  signed [20:0] grp_fu_3734_p3;
wire   [20:0] tmp_106_fu_2127_p1;
wire  signed [20:0] grp_fu_3743_p3;
wire   [20:0] tmp_107_fu_2136_p1;
wire  signed [20:0] grp_fu_3752_p3;
wire   [20:0] tmp_110_fu_2145_p1;
wire  signed [20:0] grp_fu_3761_p3;
wire   [20:0] tmp_111_fu_2154_p1;
wire  signed [20:0] grp_fu_3770_p3;
wire   [20:0] tmp_112_fu_2163_p1;
wire  signed [20:0] grp_fu_3779_p3;
wire   [20:0] tmp_113_fu_2172_p1;
wire  signed [20:0] grp_fu_3788_p3;
wire   [20:0] tmp_114_fu_2181_p1;
wire  signed [20:0] grp_fu_3797_p3;
wire   [2:0] grp_fu_1818_p2;
wire   [20:0] tmp_115_fu_2258_p1;
wire  signed [20:0] grp_fu_3806_p3;
wire   [20:0] tmp_116_fu_2267_p1;
wire  signed [20:0] grp_fu_3814_p3;
wire   [63:0] tmp_s_fu_2276_p11;
wire   [63:0] tmp_21_fu_2303_p11;
wire   [63:0] tmp_22_fu_2330_p11;
wire   [63:0] tmp_23_fu_2357_p11;
wire   [63:0] tmp_24_fu_2384_p11;
wire   [63:0] tmp_25_fu_2411_p11;
wire   [63:0] tmp_26_fu_2438_p11;
wire   [63:0] tmp_27_fu_2465_p11;
wire   [2:0] grp_fu_1833_p2;
wire   [7:0] shl_ln7_fu_2563_p3;
wire   [7:0] or_ln_fu_2577_p3;
wire   [63:0] tmp_28_fu_2591_p11;
wire   [63:0] tmp_30_fu_2618_p11;
wire   [63:0] tmp_31_fu_2645_p11;
wire   [63:0] tmp_32_fu_2672_p11;
wire   [63:0] tmp_33_fu_2699_p11;
wire   [63:0] tmp_34_fu_2726_p11;
wire   [63:0] tmp_35_fu_2753_p11;
wire   [63:0] tmp_36_fu_2780_p11;
wire   [2:0] grp_fu_1848_p2;
wire   [7:0] or_ln5_fu_2875_p3;
wire   [7:0] or_ln6_fu_2888_p3;
wire   [63:0] tmp_37_fu_2901_p11;
wire   [63:0] tmp_39_fu_2928_p11;
wire   [63:0] tmp_40_fu_2955_p11;
wire   [63:0] tmp_41_fu_2982_p11;
wire   [63:0] tmp_42_fu_3009_p11;
wire   [63:0] tmp_43_fu_3036_p11;
wire   [63:0] tmp_44_fu_3063_p11;
wire   [63:0] tmp_45_fu_3090_p11;
wire   [7:0] shl_ln314_1_fu_3190_p3;
wire   [7:0] or_ln315_1_fu_3204_p3;
wire   [63:0] tmp_46_fu_3227_p11;
wire   [63:0] tmp_47_fu_3254_p11;
wire   [63:0] tmp_48_fu_3281_p11;
wire   [63:0] tmp_49_fu_3308_p11;
wire   [63:0] tmp_50_fu_3335_p11;
wire   [63:0] tmp_51_fu_3362_p11;
wire   [63:0] tmp_52_fu_3389_p11;
wire   [63:0] tmp_53_fu_3416_p11;
wire   [7:0] or_ln318_1_fu_3443_p3;
wire   [7:0] or_ln319_1_fu_3456_p3;
wire   [7:0] or_ln7_fu_3469_p3;
wire   [7:0] or_ln315_2_fu_3482_p3;
wire   [7:0] or_ln318_2_fu_3495_p3;
wire   [7:0] or_ln319_2_fu_3508_p3;
wire   [7:0] shl_ln314_2_fu_3521_p3;
wire   [7:0] or_ln315_3_fu_3534_p3;
wire   [7:0] or_ln318_3_fu_3547_p3;
wire   [7:0] or_ln319_3_fu_3560_p3;
wire   [8:0] grp_fu_3573_p0;
wire   [9:0] zext_ln172_fu_1864_p1;
wire   [5:0] grp_fu_3573_p1;
wire   [10:0] grp_fu_3573_p2;
wire   [8:0] grp_fu_3582_p0;
wire   [3:0] grp_fu_3582_p1;
wire   [10:0] grp_fu_3582_p2;
wire   [8:0] grp_fu_3591_p0;
wire   [5:0] grp_fu_3591_p1;
wire   [10:0] grp_fu_3591_p2;
wire   [8:0] grp_fu_3600_p0;
wire   [4:0] grp_fu_3600_p1;
wire   [10:0] grp_fu_3600_p2;
wire   [8:0] grp_fu_3609_p0;
wire   [5:0] grp_fu_3609_p1;
wire   [10:0] grp_fu_3609_p2;
wire   [8:0] grp_fu_3618_p0;
wire   [4:0] grp_fu_3618_p1;
wire   [10:0] grp_fu_3618_p2;
wire   [8:0] grp_fu_3627_p0;
wire   [5:0] grp_fu_3627_p1;
wire   [10:0] grp_fu_3627_p2;
wire   [8:0] grp_fu_3636_p0;
wire   [5:0] grp_fu_3636_p1;
wire   [10:0] grp_fu_3636_p2;
wire   [8:0] grp_fu_3645_p0;
wire   [3:0] grp_fu_3645_p1;
wire   [10:0] grp_fu_3645_p2;
wire   [8:0] grp_fu_3654_p0;
wire   [5:0] grp_fu_3654_p1;
wire   [10:0] grp_fu_3654_p2;
wire   [8:0] grp_fu_3663_p0;
wire   [4:0] grp_fu_3663_p1;
wire   [10:0] grp_fu_3663_p2;
wire   [8:0] grp_fu_3672_p0;
wire   [5:0] grp_fu_3672_p1;
wire   [10:0] grp_fu_3672_p2;
wire   [8:0] grp_fu_3681_p0;
wire   [4:0] grp_fu_3681_p1;
wire   [10:0] grp_fu_3681_p2;
wire   [8:0] grp_fu_3690_p0;
wire   [5:0] grp_fu_3690_p1;
wire   [10:0] grp_fu_3690_p2;
wire   [8:0] grp_fu_3698_p0;
wire   [9:0] zext_ln172_8_fu_1908_p1;
wire   [5:0] grp_fu_3698_p1;
wire   [10:0] grp_fu_3698_p2;
wire   [8:0] grp_fu_3707_p0;
wire   [3:0] grp_fu_3707_p1;
wire   [10:0] grp_fu_3707_p2;
wire   [8:0] grp_fu_3716_p0;
wire   [5:0] grp_fu_3716_p1;
wire   [10:0] grp_fu_3716_p2;
wire   [8:0] grp_fu_3725_p0;
wire   [4:0] grp_fu_3725_p1;
wire   [10:0] grp_fu_3725_p2;
wire   [8:0] grp_fu_3734_p0;
wire   [5:0] grp_fu_3734_p1;
wire   [10:0] grp_fu_3734_p2;
wire   [8:0] grp_fu_3743_p0;
wire   [4:0] grp_fu_3743_p1;
wire   [10:0] grp_fu_3743_p2;
wire   [8:0] grp_fu_3752_p0;
wire   [5:0] grp_fu_3752_p1;
wire   [10:0] grp_fu_3752_p2;
wire   [8:0] grp_fu_3761_p0;
wire   [5:0] grp_fu_3761_p1;
wire   [10:0] grp_fu_3761_p2;
wire   [8:0] grp_fu_3770_p0;
wire   [3:0] grp_fu_3770_p1;
wire   [10:0] grp_fu_3770_p2;
wire   [8:0] grp_fu_3779_p0;
wire   [5:0] grp_fu_3779_p1;
wire   [10:0] grp_fu_3779_p2;
wire   [8:0] grp_fu_3788_p0;
wire   [4:0] grp_fu_3788_p1;
wire   [10:0] grp_fu_3788_p2;
wire   [8:0] grp_fu_3797_p0;
wire   [5:0] grp_fu_3797_p1;
wire   [10:0] grp_fu_3797_p2;
wire   [8:0] grp_fu_3806_p0;
wire   [4:0] grp_fu_3806_p1;
wire   [10:0] grp_fu_3806_p2;
wire   [8:0] grp_fu_3814_p0;
wire   [5:0] grp_fu_3814_p1;
wire   [10:0] grp_fu_3814_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage6;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_1_fu_1892_p00;
wire   [18:0] mul_ln172_2_fu_1917_p00;
wire   [18:0] mul_ln172_3_fu_2053_p00;
wire   [18:0] mul_ln172_fu_1870_p00;
wire   [2:0] tmp_s_fu_2276_p1;
wire   [2:0] tmp_s_fu_2276_p3;
wire   [2:0] tmp_s_fu_2276_p5;
wire   [2:0] tmp_s_fu_2276_p7;
wire  signed [2:0] tmp_s_fu_2276_p9;
wire   [2:0] tmp_21_fu_2303_p1;
wire  signed [2:0] tmp_21_fu_2303_p3;
wire   [2:0] tmp_21_fu_2303_p5;
wire   [2:0] tmp_21_fu_2303_p7;
wire   [2:0] tmp_21_fu_2303_p9;
wire   [2:0] tmp_22_fu_2330_p1;
wire   [2:0] tmp_22_fu_2330_p3;
wire  signed [2:0] tmp_22_fu_2330_p5;
wire   [2:0] tmp_22_fu_2330_p7;
wire   [2:0] tmp_22_fu_2330_p9;
wire   [2:0] tmp_23_fu_2357_p1;
wire   [2:0] tmp_23_fu_2357_p3;
wire   [2:0] tmp_23_fu_2357_p5;
wire   [2:0] tmp_23_fu_2357_p7;
wire  signed [2:0] tmp_23_fu_2357_p9;
wire  signed [2:0] tmp_24_fu_2384_p1;
wire   [2:0] tmp_24_fu_2384_p3;
wire   [2:0] tmp_24_fu_2384_p5;
wire   [2:0] tmp_24_fu_2384_p7;
wire   [2:0] tmp_24_fu_2384_p9;
wire   [2:0] tmp_25_fu_2411_p1;
wire   [2:0] tmp_25_fu_2411_p3;
wire  signed [2:0] tmp_25_fu_2411_p5;
wire   [2:0] tmp_25_fu_2411_p7;
wire   [2:0] tmp_25_fu_2411_p9;
wire   [2:0] tmp_26_fu_2438_p1;
wire   [2:0] tmp_26_fu_2438_p3;
wire   [2:0] tmp_26_fu_2438_p5;
wire  signed [2:0] tmp_26_fu_2438_p7;
wire   [2:0] tmp_26_fu_2438_p9;
wire  signed [2:0] tmp_27_fu_2465_p1;
wire   [2:0] tmp_27_fu_2465_p3;
wire   [2:0] tmp_27_fu_2465_p5;
wire   [2:0] tmp_27_fu_2465_p7;
wire   [2:0] tmp_27_fu_2465_p9;
wire   [2:0] tmp_28_fu_2591_p1;
wire   [2:0] tmp_28_fu_2591_p3;
wire   [2:0] tmp_28_fu_2591_p5;
wire   [2:0] tmp_28_fu_2591_p7;
wire  signed [2:0] tmp_28_fu_2591_p9;
wire   [2:0] tmp_30_fu_2618_p1;
wire  signed [2:0] tmp_30_fu_2618_p3;
wire   [2:0] tmp_30_fu_2618_p5;
wire   [2:0] tmp_30_fu_2618_p7;
wire   [2:0] tmp_30_fu_2618_p9;
wire   [2:0] tmp_31_fu_2645_p1;
wire   [2:0] tmp_31_fu_2645_p3;
wire  signed [2:0] tmp_31_fu_2645_p5;
wire   [2:0] tmp_31_fu_2645_p7;
wire   [2:0] tmp_31_fu_2645_p9;
wire   [2:0] tmp_32_fu_2672_p1;
wire   [2:0] tmp_32_fu_2672_p3;
wire   [2:0] tmp_32_fu_2672_p5;
wire   [2:0] tmp_32_fu_2672_p7;
wire  signed [2:0] tmp_32_fu_2672_p9;
wire  signed [2:0] tmp_33_fu_2699_p1;
wire   [2:0] tmp_33_fu_2699_p3;
wire   [2:0] tmp_33_fu_2699_p5;
wire   [2:0] tmp_33_fu_2699_p7;
wire   [2:0] tmp_33_fu_2699_p9;
wire   [2:0] tmp_34_fu_2726_p1;
wire   [2:0] tmp_34_fu_2726_p3;
wire  signed [2:0] tmp_34_fu_2726_p5;
wire   [2:0] tmp_34_fu_2726_p7;
wire   [2:0] tmp_34_fu_2726_p9;
wire   [2:0] tmp_35_fu_2753_p1;
wire   [2:0] tmp_35_fu_2753_p3;
wire   [2:0] tmp_35_fu_2753_p5;
wire  signed [2:0] tmp_35_fu_2753_p7;
wire   [2:0] tmp_35_fu_2753_p9;
wire  signed [2:0] tmp_36_fu_2780_p1;
wire   [2:0] tmp_36_fu_2780_p3;
wire   [2:0] tmp_36_fu_2780_p5;
wire   [2:0] tmp_36_fu_2780_p7;
wire   [2:0] tmp_36_fu_2780_p9;
wire   [2:0] tmp_37_fu_2901_p1;
wire   [2:0] tmp_37_fu_2901_p3;
wire   [2:0] tmp_37_fu_2901_p5;
wire   [2:0] tmp_37_fu_2901_p7;
wire  signed [2:0] tmp_37_fu_2901_p9;
wire   [2:0] tmp_39_fu_2928_p1;
wire  signed [2:0] tmp_39_fu_2928_p3;
wire   [2:0] tmp_39_fu_2928_p5;
wire   [2:0] tmp_39_fu_2928_p7;
wire   [2:0] tmp_39_fu_2928_p9;
wire   [2:0] tmp_40_fu_2955_p1;
wire   [2:0] tmp_40_fu_2955_p3;
wire  signed [2:0] tmp_40_fu_2955_p5;
wire   [2:0] tmp_40_fu_2955_p7;
wire   [2:0] tmp_40_fu_2955_p9;
wire   [2:0] tmp_41_fu_2982_p1;
wire   [2:0] tmp_41_fu_2982_p3;
wire   [2:0] tmp_41_fu_2982_p5;
wire   [2:0] tmp_41_fu_2982_p7;
wire  signed [2:0] tmp_41_fu_2982_p9;
wire  signed [2:0] tmp_42_fu_3009_p1;
wire   [2:0] tmp_42_fu_3009_p3;
wire   [2:0] tmp_42_fu_3009_p5;
wire   [2:0] tmp_42_fu_3009_p7;
wire   [2:0] tmp_42_fu_3009_p9;
wire   [2:0] tmp_43_fu_3036_p1;
wire   [2:0] tmp_43_fu_3036_p3;
wire  signed [2:0] tmp_43_fu_3036_p5;
wire   [2:0] tmp_43_fu_3036_p7;
wire   [2:0] tmp_43_fu_3036_p9;
wire   [2:0] tmp_44_fu_3063_p1;
wire   [2:0] tmp_44_fu_3063_p3;
wire   [2:0] tmp_44_fu_3063_p5;
wire  signed [2:0] tmp_44_fu_3063_p7;
wire   [2:0] tmp_44_fu_3063_p9;
wire  signed [2:0] tmp_45_fu_3090_p1;
wire   [2:0] tmp_45_fu_3090_p3;
wire   [2:0] tmp_45_fu_3090_p5;
wire   [2:0] tmp_45_fu_3090_p7;
wire   [2:0] tmp_45_fu_3090_p9;
wire   [2:0] tmp_46_fu_3227_p1;
wire   [2:0] tmp_46_fu_3227_p3;
wire   [2:0] tmp_46_fu_3227_p5;
wire   [2:0] tmp_46_fu_3227_p7;
wire  signed [2:0] tmp_46_fu_3227_p9;
wire   [2:0] tmp_47_fu_3254_p1;
wire  signed [2:0] tmp_47_fu_3254_p3;
wire   [2:0] tmp_47_fu_3254_p5;
wire   [2:0] tmp_47_fu_3254_p7;
wire   [2:0] tmp_47_fu_3254_p9;
wire   [2:0] tmp_48_fu_3281_p1;
wire   [2:0] tmp_48_fu_3281_p3;
wire  signed [2:0] tmp_48_fu_3281_p5;
wire   [2:0] tmp_48_fu_3281_p7;
wire   [2:0] tmp_48_fu_3281_p9;
wire   [2:0] tmp_49_fu_3308_p1;
wire   [2:0] tmp_49_fu_3308_p3;
wire   [2:0] tmp_49_fu_3308_p5;
wire   [2:0] tmp_49_fu_3308_p7;
wire  signed [2:0] tmp_49_fu_3308_p9;
wire  signed [2:0] tmp_50_fu_3335_p1;
wire   [2:0] tmp_50_fu_3335_p3;
wire   [2:0] tmp_50_fu_3335_p5;
wire   [2:0] tmp_50_fu_3335_p7;
wire   [2:0] tmp_50_fu_3335_p9;
wire   [2:0] tmp_51_fu_3362_p1;
wire   [2:0] tmp_51_fu_3362_p3;
wire  signed [2:0] tmp_51_fu_3362_p5;
wire   [2:0] tmp_51_fu_3362_p7;
wire   [2:0] tmp_51_fu_3362_p9;
wire   [2:0] tmp_52_fu_3389_p1;
wire   [2:0] tmp_52_fu_3389_p3;
wire   [2:0] tmp_52_fu_3389_p5;
wire  signed [2:0] tmp_52_fu_3389_p7;
wire   [2:0] tmp_52_fu_3389_p9;
wire  signed [2:0] tmp_53_fu_3416_p1;
wire   [2:0] tmp_53_fu_3416_p3;
wire   [2:0] tmp_53_fu_3416_p5;
wire   [2:0] tmp_53_fu_3416_p7;
wire   [2:0] tmp_53_fu_3416_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_144 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U462(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1794_p0),.din1(grp_fu_1794_p1),.ce(1'b1),.dout(grp_fu_1794_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U463(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1818_p0),.din1(grp_fu_1818_p1),.ce(1'b1),.dout(grp_fu_1818_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U464(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1833_p0),.din1(grp_fu_1833_p1),.ce(1'b1),.dout(grp_fu_1833_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U465(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1848_p0),.din1(grp_fu_1848_p1),.ce(1'b1),.dout(grp_fu_1848_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U466(.din0(mul_ln172_fu_1870_p0),.din1(mul_ln172_fu_1870_p1),.dout(mul_ln172_fu_1870_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U467(.din0(mul_ln172_1_fu_1892_p0),.din1(mul_ln172_1_fu_1892_p1),.dout(mul_ln172_1_fu_1892_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U468(.din0(mul_ln172_2_fu_1917_p0),.din1(mul_ln172_2_fu_1917_p1),.dout(mul_ln172_2_fu_1917_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U469(.din0(mul_ln172_3_fu_2053_p0),.din1(mul_ln172_3_fu_2053_p1),.dout(mul_ln172_3_fu_2053_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U470(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_s_fu_2276_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_s_fu_2276_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U471(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_21_fu_2303_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_21_fu_2303_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U472(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_22_fu_2330_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_22_fu_2330_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U473(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_23_fu_2357_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_23_fu_2357_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U474(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_24_fu_2384_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_24_fu_2384_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U475(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_25_fu_2411_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_25_fu_2411_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U476(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_26_fu_2438_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_26_fu_2438_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U477(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_27_fu_2465_p11),.sel(trunc_ln172_reg_3974),.dout(tmp_27_fu_2465_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U478(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_28_fu_2591_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_28_fu_2591_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U479(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_30_fu_2618_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_30_fu_2618_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U480(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_31_fu_2645_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_31_fu_2645_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U481(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_32_fu_2672_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_32_fu_2672_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U482(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_33_fu_2699_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_33_fu_2699_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U483(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_34_fu_2726_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_34_fu_2726_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U484(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_35_fu_2753_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_35_fu_2753_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U485(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_36_fu_2780_p11),.sel(trunc_ln172_1_reg_4251),.dout(tmp_36_fu_2780_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U486(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_37_fu_2901_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_37_fu_2901_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U487(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_39_fu_2928_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_39_fu_2928_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U488(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_40_fu_2955_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_40_fu_2955_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U489(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_41_fu_2982_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_41_fu_2982_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U490(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_42_fu_3009_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_42_fu_3009_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U491(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_43_fu_3036_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_43_fu_3036_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U492(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_44_fu_3063_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_44_fu_3063_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U493(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_45_fu_3090_p11),.sel(trunc_ln172_2_reg_4513),.dout(tmp_45_fu_3090_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U494(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_46_fu_3227_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_46_fu_3227_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U495(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_47_fu_3254_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_47_fu_3254_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U496(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_48_fu_3281_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_48_fu_3281_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U497(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_49_fu_3308_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_49_fu_3308_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U498(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_50_fu_3335_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_50_fu_3335_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U499(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_51_fu_3362_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_51_fu_3362_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U500(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_52_fu_3389_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_52_fu_3389_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U501(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_53_fu_3416_p11),.sel(trunc_ln172_3_reg_4771),.dout(tmp_53_fu_3416_p13));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U502(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3573_p0),.din1(grp_fu_3573_p1),.din2(grp_fu_3573_p2),.ce(1'b1),.dout(grp_fu_3573_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U503(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3582_p0),.din1(grp_fu_3582_p1),.din2(grp_fu_3582_p2),.ce(1'b1),.dout(grp_fu_3582_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U504(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3591_p0),.din1(grp_fu_3591_p1),.din2(grp_fu_3591_p2),.ce(1'b1),.dout(grp_fu_3591_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U505(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3600_p0),.din1(grp_fu_3600_p1),.din2(grp_fu_3600_p2),.ce(1'b1),.dout(grp_fu_3600_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U506(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3609_p0),.din1(grp_fu_3609_p1),.din2(grp_fu_3609_p2),.ce(1'b1),.dout(grp_fu_3609_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U507(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3618_p0),.din1(grp_fu_3618_p1),.din2(grp_fu_3618_p2),.ce(1'b1),.dout(grp_fu_3618_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U508(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3627_p0),.din1(grp_fu_3627_p1),.din2(grp_fu_3627_p2),.ce(1'b1),.dout(grp_fu_3627_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U509(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3636_p0),.din1(grp_fu_3636_p1),.din2(grp_fu_3636_p2),.ce(1'b1),.dout(grp_fu_3636_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U510(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3645_p0),.din1(grp_fu_3645_p1),.din2(grp_fu_3645_p2),.ce(1'b1),.dout(grp_fu_3645_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U511(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3654_p0),.din1(grp_fu_3654_p1),.din2(grp_fu_3654_p2),.ce(1'b1),.dout(grp_fu_3654_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U512(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3663_p0),.din1(grp_fu_3663_p1),.din2(grp_fu_3663_p2),.ce(1'b1),.dout(grp_fu_3663_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U513(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3672_p0),.din1(grp_fu_3672_p1),.din2(grp_fu_3672_p2),.ce(1'b1),.dout(grp_fu_3672_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U514(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3681_p0),.din1(grp_fu_3681_p1),.din2(grp_fu_3681_p2),.ce(1'b1),.dout(grp_fu_3681_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U515(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3690_p0),.din1(grp_fu_3690_p1),.din2(grp_fu_3690_p2),.ce(1'b1),.dout(grp_fu_3690_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U516(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3698_p0),.din1(grp_fu_3698_p1),.din2(grp_fu_3698_p2),.ce(1'b1),.dout(grp_fu_3698_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U517(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3707_p0),.din1(grp_fu_3707_p1),.din2(grp_fu_3707_p2),.ce(1'b1),.dout(grp_fu_3707_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U518(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3716_p0),.din1(grp_fu_3716_p1),.din2(grp_fu_3716_p2),.ce(1'b1),.dout(grp_fu_3716_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U519(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3725_p0),.din1(grp_fu_3725_p1),.din2(grp_fu_3725_p2),.ce(1'b1),.dout(grp_fu_3725_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U520(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3734_p0),.din1(grp_fu_3734_p1),.din2(grp_fu_3734_p2),.ce(1'b1),.dout(grp_fu_3734_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U521(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3743_p0),.din1(grp_fu_3743_p1),.din2(grp_fu_3743_p2),.ce(1'b1),.dout(grp_fu_3743_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U522(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3752_p0),.din1(grp_fu_3752_p1),.din2(grp_fu_3752_p2),.ce(1'b1),.dout(grp_fu_3752_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U523(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3761_p0),.din1(grp_fu_3761_p1),.din2(grp_fu_3761_p2),.ce(1'b1),.dout(grp_fu_3761_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U524(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3770_p0),.din1(grp_fu_3770_p1),.din2(grp_fu_3770_p2),.ce(1'b1),.dout(grp_fu_3770_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U525(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3779_p0),.din1(grp_fu_3779_p1),.din2(grp_fu_3779_p2),.ce(1'b1),.dout(grp_fu_3779_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U526(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3788_p0),.din1(grp_fu_3788_p1),.din2(grp_fu_3788_p2),.ce(1'b1),.dout(grp_fu_3788_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U527(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3797_p0),.din1(grp_fu_3797_p1),.din2(grp_fu_3797_p2),.ce(1'b1),.dout(grp_fu_3797_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U528(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3806_p0),.din1(grp_fu_3806_p1),.din2(grp_fu_3806_p2),.ce(1'b1),.dout(grp_fu_3806_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U529(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3814_p0),.din1(grp_fu_3814_p1),.din2(grp_fu_3814_p2),.ce(1'b1),.dout(grp_fu_3814_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_144 <= 7'd0;
    end else if (((tmp_reg_3839 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_fu_144 <= add_ln309_fu_1854_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_1_reg_3857[8 : 1] <= offset_1_fu_1809_p4[8 : 1];
        tmp_29_reg_5023 <= {{tid_2_reg_3829_pp0_iter2_reg[5:1]}};
        tmp_38_reg_5029 <= {{tid_2_reg_3829_pp0_iter2_reg[5:2]}};
        tmp_46_reg_5041 <= tmp_46_fu_3227_p13;
        tmp_47_reg_5046 <= tmp_47_fu_3254_p13;
        tmp_48_reg_5051 <= tmp_48_fu_3281_p13;
        tmp_49_reg_5056 <= tmp_49_fu_3308_p13;
        tmp_50_reg_5061 <= tmp_50_fu_3335_p13;
        tmp_51_reg_5066 <= tmp_51_fu_3362_p13;
        tmp_52_reg_5071 <= tmp_52_fu_3389_p13;
        tmp_53_reg_5076 <= tmp_53_fu_3416_p13;
        tmp_91_reg_3888 <= {{mul_ln172_1_fu_1892_p2[18:12]}};
        zext_ln172_10_reg_3893[8 : 2] <= zext_ln172_10_fu_1911_p1[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_2_reg_3864[8 : 2] <= offset_2_fu_1824_p4[8 : 2];
        tmp_100_reg_3899 <= {{mul_ln172_2_fu_1917_p2[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_3_reg_3871[8 : 2] <= offset_3_fu_1839_p4[8 : 2];
        tmp_109_reg_3969 <= {{mul_ln172_3_fu_2053_p2[18:12]}};
        tmp_83_reg_3904 <= {{tmp_83_fu_1933_p1[20:13]}};
        tmp_84_reg_3909 <= {{tmp_84_fu_1942_p1[20:13]}};
        tmp_85_reg_3914 <= {{tmp_85_fu_1951_p1[20:13]}};
        tmp_86_reg_3919 <= {{tmp_86_fu_1960_p1[20:13]}};
        tmp_87_reg_3924 <= {{tmp_87_fu_1969_p1[20:13]}};
        tmp_88_reg_3929 <= {{tmp_88_fu_1978_p1[20:13]}};
        tmp_89_reg_3934 <= {{tmp_89_fu_1987_p1[20:13]}};
        tmp_92_reg_3939 <= {{tmp_92_fu_1996_p1[20:13]}};
        tmp_93_reg_3944 <= {{tmp_93_fu_2005_p1[20:13]}};
        tmp_94_reg_3949 <= {{tmp_94_fu_2014_p1[20:13]}};
        tmp_95_reg_3954 <= {{tmp_95_fu_2023_p1[20:13]}};
        tmp_96_reg_3959 <= {{tmp_96_fu_2032_p1[20:13]}};
        tmp_97_reg_3964 <= {{tmp_97_fu_2041_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_3850 <= offset_fu_1786_p3;
        tid_2_reg_3829 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_3829_pp0_iter1_reg <= tid_2_reg_3829;
        tid_2_reg_3829_pp0_iter2_reg <= tid_2_reg_3829_pp0_iter1_reg;
        tmp_37_reg_4783 <= tmp_37_fu_2901_p13;
        tmp_39_reg_4788 <= tmp_39_fu_2928_p13;
        tmp_40_reg_4793 <= tmp_40_fu_2955_p13;
        tmp_41_reg_4798 <= tmp_41_fu_2982_p13;
        tmp_42_reg_4803 <= tmp_42_fu_3009_p13;
        tmp_43_reg_4808 <= tmp_43_fu_3036_p13;
        tmp_44_reg_4813 <= tmp_44_fu_3063_p13;
        tmp_45_reg_4818 <= tmp_45_fu_3090_p13;
        tmp_81_reg_3843 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_82_reg_3878 <= {{mul_ln172_fu_1870_p2[18:12]}};
        tmp_reg_3839 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_3839_pp0_iter1_reg <= tmp_reg_3839;
        zext_ln172_3_reg_3883[8 : 1] <= zext_ln172_3_fu_1886_p1[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_101_reg_3991 <= {{tmp_101_fu_2082_p1[20:13]}};
        tmp_102_reg_3996 <= {{tmp_102_fu_2091_p1[20:13]}};
        tmp_103_reg_4001 <= {{tmp_103_fu_2100_p1[20:13]}};
        tmp_104_reg_4006 <= {{tmp_104_fu_2109_p1[20:13]}};
        tmp_105_reg_4011 <= {{tmp_105_fu_2118_p1[20:13]}};
        tmp_106_reg_4016 <= {{tmp_106_fu_2127_p1[20:13]}};
        tmp_107_reg_4021 <= {{tmp_107_fu_2136_p1[20:13]}};
        tmp_110_reg_4026 <= {{tmp_110_fu_2145_p1[20:13]}};
        tmp_111_reg_4031 <= {{tmp_111_fu_2154_p1[20:13]}};
        tmp_112_reg_4036 <= {{tmp_112_fu_2163_p1[20:13]}};
        tmp_113_reg_4041 <= {{tmp_113_fu_2172_p1[20:13]}};
        tmp_114_reg_4046 <= {{tmp_114_fu_2181_p1[20:13]}};
        tmp_98_reg_3986 <= {{tmp_98_fu_2073_p1[20:13]}};
        trunc_ln172_reg_3974 <= trunc_ln172_fu_2069_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_115_reg_4263 <= {{tmp_115_fu_2258_p1[20:13]}};
        tmp_116_reg_4268 <= {{tmp_116_fu_2267_p1[20:13]}};
        trunc_ln172_1_reg_4251 <= trunc_ln172_1_fu_2254_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_21_reg_4278 <= tmp_21_fu_2303_p13;
        tmp_22_reg_4283 <= tmp_22_fu_2330_p13;
        tmp_23_reg_4288 <= tmp_23_fu_2357_p13;
        tmp_24_reg_4293 <= tmp_24_fu_2384_p13;
        tmp_25_reg_4298 <= tmp_25_fu_2411_p13;
        tmp_26_reg_4303 <= tmp_26_fu_2438_p13;
        tmp_27_reg_4308 <= tmp_27_fu_2465_p13;
        tmp_s_reg_4273 <= tmp_s_fu_2276_p13;
        trunc_ln172_2_reg_4513 <= trunc_ln172_2_fu_2556_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_28_reg_4531 <= tmp_28_fu_2591_p13;
        tmp_30_reg_4536 <= tmp_30_fu_2618_p13;
        tmp_31_reg_4541 <= tmp_31_fu_2645_p13;
        tmp_32_reg_4546 <= tmp_32_fu_2672_p13;
        tmp_33_reg_4551 <= tmp_33_fu_2699_p13;
        tmp_34_reg_4556 <= tmp_34_fu_2726_p13;
        tmp_35_reg_4561 <= tmp_35_fu_2753_p13;
        tmp_36_reg_4566 <= tmp_36_fu_2780_p13;
        trunc_ln172_3_reg_4771 <= trunc_ln172_3_fu_2871_p1;
        trunc_ln314_reg_4525 <= trunc_ln314_fu_2560_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln319_7_fu_3567_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln315_7_fu_3541_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln319_6_fu_3515_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_6_fu_3489_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln319_5_fu_3463_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_5_fu_3212_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_4_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln315_4_fu_2585_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln318_7_fu_3554_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln314_3_fu_3528_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln318_6_fu_3502_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_2_fu_3476_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln318_5_fu_3450_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_3198_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_4_fu_2882_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln314_fu_2571_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d0_local = tmp_53_reg_5076;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d0_local = tmp_49_reg_5056;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d0_local = tmp_45_reg_4818;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_41_reg_4798;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_36_reg_4566;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_32_reg_4546;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_27_reg_4308;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d0_local = tmp_23_reg_4288;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d1_local = tmp_52_reg_5071;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d1_local = tmp_48_reg_5051;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d1_local = tmp_44_reg_4813;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_40_reg_4793;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_35_reg_4561;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_31_reg_4541;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_26_reg_4303;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d1_local = tmp_22_reg_4283;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln319_7_fu_3567_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln315_7_fu_3541_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln319_6_fu_3515_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_6_fu_3489_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln319_5_fu_3463_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_5_fu_3212_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_4_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln315_4_fu_2585_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln318_7_fu_3554_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln314_3_fu_3528_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln318_6_fu_3502_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_2_fu_3476_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln318_5_fu_3450_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_1_fu_3198_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_4_fu_2882_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln314_fu_2571_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d0_local = tmp_51_reg_5066;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d0_local = tmp_47_reg_5046;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d0_local = tmp_43_reg_4808;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_39_reg_4788;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_34_reg_4556;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_30_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_25_reg_4298;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d0_local = tmp_21_reg_4278;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d1_local = tmp_50_reg_5061;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d1_local = tmp_46_reg_5041;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d1_local = tmp_42_reg_4803;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_37_reg_4783;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_33_reg_4551;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_28_reg_4531;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_24_reg_4293;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d1_local = tmp_s_reg_4273;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3839 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_3839_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_144;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_3_fu_3173_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_3_fu_3165_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_3_fu_3157_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_3_fu_3141_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_3_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln318_2_fu_2839_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln316_2_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln172_6_fu_2807_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln321_1_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln320_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln319_1_fu_2532_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln317_1_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln315_1_fu_2500_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln318_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln316_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln172_2_fu_2190_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln318_3_fu_3149_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln316_3_fu_3133_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_7_fu_3117_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln321_2_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln320_2_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln319_2_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln317_2_fu_2831_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln315_2_fu_2815_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln318_1_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln316_1_fu_2508_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln172_5_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln321_fu_2246_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln320_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln319_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln317_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln315_fu_2198_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_3_fu_3173_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_3_fu_3165_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_3_fu_3157_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_3_fu_3141_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_3_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln318_2_fu_2839_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln316_2_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln172_6_fu_2807_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln321_1_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln320_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln319_1_fu_2532_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln317_1_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln315_1_fu_2500_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln318_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln316_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln172_2_fu_2190_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln318_3_fu_3149_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln316_3_fu_3133_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_7_fu_3117_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln321_2_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln320_2_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln319_2_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln317_2_fu_2831_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln315_2_fu_2815_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln318_1_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln316_1_fu_2508_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln172_5_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln321_fu_2246_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln320_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln319_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln317_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln315_fu_2198_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_3_fu_3173_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_3_fu_3165_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_3_fu_3157_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_3_fu_3141_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_3_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln318_2_fu_2839_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln316_2_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln172_6_fu_2807_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln321_1_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln320_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln319_1_fu_2532_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln317_1_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln315_1_fu_2500_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln318_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln316_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln172_2_fu_2190_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln318_3_fu_3149_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln316_3_fu_3133_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_7_fu_3117_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln321_2_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln320_2_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln319_2_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln317_2_fu_2831_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln315_2_fu_2815_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln318_1_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln316_1_fu_2508_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln172_5_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln321_fu_2246_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln320_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln319_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln317_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln315_fu_2198_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_3_fu_3173_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_3_fu_3165_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_3_fu_3157_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_3_fu_3141_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_3_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln318_2_fu_2839_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln316_2_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln172_6_fu_2807_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln321_1_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln320_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln319_1_fu_2532_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln317_1_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln315_1_fu_2500_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln318_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln316_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln172_2_fu_2190_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln318_3_fu_3149_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln316_3_fu_3133_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_7_fu_3117_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln321_2_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln320_2_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln319_2_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln317_2_fu_2831_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln315_2_fu_2815_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln318_1_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln316_1_fu_2508_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln172_5_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln321_fu_2246_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln320_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln319_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln317_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln315_fu_2198_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_3_fu_3173_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_3_fu_3165_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_3_fu_3157_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_3_fu_3141_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_3_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln318_2_fu_2839_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln316_2_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln172_6_fu_2807_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln321_1_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln320_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln319_1_fu_2532_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln317_1_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln315_1_fu_2500_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln318_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln316_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln172_2_fu_2190_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln318_3_fu_3149_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln316_3_fu_3133_p1;
    end else if (((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_7_fu_3117_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln321_2_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln320_2_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln319_2_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln317_2_fu_2831_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln315_2_fu_2815_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln318_1_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln316_1_fu_2508_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln172_5_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln321_fu_2246_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln320_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln319_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln317_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln315_fu_2198_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_4771 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4771 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4513 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln172_2_reg_4513 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4251 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1854_p2 = (tid_2_reg_3829 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_1747_p4 = {{tid_2_reg_3829[5:2]}};
assign grp_fu_1794_p0 = {{tmp_81_fu_1772_p4}, {trunc_ln312_fu_1782_p1}};
assign grp_fu_1794_p1 = 9'd5;
assign grp_fu_1818_p0 = {{{tmp_81_reg_3843}, {tmp_90_fu_1800_p4}}, {1'd1}};
assign grp_fu_1818_p1 = 9'd5;
assign grp_fu_1833_p0 = {{{tmp_81_reg_3843}, {grp_fu_1747_p4}}, {2'd2}};
assign grp_fu_1833_p1 = 9'd5;
assign grp_fu_1848_p0 = {{{tmp_81_reg_3843}, {grp_fu_1747_p4}}, {2'd3}};
assign grp_fu_1848_p1 = 9'd5;
assign grp_fu_3573_p0 = zext_ln172_fu_1864_p1;
assign grp_fu_3573_p1 = 10'd32;
assign grp_fu_3573_p2 = 21'd1639;
assign grp_fu_3582_p0 = zext_ln172_fu_1864_p1;
assign grp_fu_3582_p1 = 10'd8;
assign grp_fu_3582_p2 = 21'd1639;
assign grp_fu_3591_p0 = zext_ln172_fu_1864_p1;
assign grp_fu_3591_p1 = 10'd40;
assign grp_fu_3591_p2 = 21'd1639;
assign grp_fu_3600_p0 = zext_ln172_fu_1864_p1;
assign grp_fu_3600_p1 = 10'd16;
assign grp_fu_3600_p2 = 21'd1639;
assign grp_fu_3609_p0 = zext_ln172_fu_1864_p1;
assign grp_fu_3609_p1 = 10'd48;
assign grp_fu_3609_p2 = 21'd1639;
assign grp_fu_3618_p0 = zext_ln172_fu_1864_p1;
assign grp_fu_3618_p1 = 10'd24;
assign grp_fu_3618_p2 = 21'd1639;
assign grp_fu_3627_p0 = zext_ln172_fu_1864_p1;
assign grp_fu_3627_p1 = 10'd56;
assign grp_fu_3627_p2 = 21'd1639;
assign grp_fu_3636_p0 = zext_ln172_3_fu_1886_p1;
assign grp_fu_3636_p1 = 10'd32;
assign grp_fu_3636_p2 = 21'd1639;
assign grp_fu_3645_p0 = zext_ln172_3_fu_1886_p1;
assign grp_fu_3645_p1 = 10'd8;
assign grp_fu_3645_p2 = 21'd1639;
assign grp_fu_3654_p0 = zext_ln172_3_fu_1886_p1;
assign grp_fu_3654_p1 = 10'd40;
assign grp_fu_3654_p2 = 21'd1639;
assign grp_fu_3663_p0 = zext_ln172_3_fu_1886_p1;
assign grp_fu_3663_p1 = 10'd16;
assign grp_fu_3663_p2 = 21'd1639;
assign grp_fu_3672_p0 = zext_ln172_3_fu_1886_p1;
assign grp_fu_3672_p1 = 10'd48;
assign grp_fu_3672_p2 = 21'd1639;
assign grp_fu_3681_p0 = zext_ln172_3_fu_1886_p1;
assign grp_fu_3681_p1 = 10'd24;
assign grp_fu_3681_p2 = 21'd1639;
assign grp_fu_3690_p0 = zext_ln172_3_reg_3883;
assign grp_fu_3690_p1 = 10'd56;
assign grp_fu_3690_p2 = 21'd1639;
assign grp_fu_3698_p0 = zext_ln172_8_fu_1908_p1;
assign grp_fu_3698_p1 = 10'd32;
assign grp_fu_3698_p2 = 21'd1639;
assign grp_fu_3707_p0 = zext_ln172_8_fu_1908_p1;
assign grp_fu_3707_p1 = 10'd8;
assign grp_fu_3707_p2 = 21'd1639;
assign grp_fu_3716_p0 = zext_ln172_8_fu_1908_p1;
assign grp_fu_3716_p1 = 10'd40;
assign grp_fu_3716_p2 = 21'd1639;
assign grp_fu_3725_p0 = zext_ln172_8_fu_1908_p1;
assign grp_fu_3725_p1 = 10'd16;
assign grp_fu_3725_p2 = 21'd1639;
assign grp_fu_3734_p0 = zext_ln172_8_fu_1908_p1;
assign grp_fu_3734_p1 = 10'd48;
assign grp_fu_3734_p2 = 21'd1639;
assign grp_fu_3743_p0 = zext_ln172_8_fu_1908_p1;
assign grp_fu_3743_p1 = 10'd24;
assign grp_fu_3743_p2 = 21'd1639;
assign grp_fu_3752_p0 = zext_ln172_8_fu_1908_p1;
assign grp_fu_3752_p1 = 10'd56;
assign grp_fu_3752_p2 = 21'd1639;
assign grp_fu_3761_p0 = zext_ln172_10_fu_1911_p1;
assign grp_fu_3761_p1 = 10'd32;
assign grp_fu_3761_p2 = 21'd1639;
assign grp_fu_3770_p0 = zext_ln172_10_fu_1911_p1;
assign grp_fu_3770_p1 = 10'd8;
assign grp_fu_3770_p2 = 21'd1639;
assign grp_fu_3779_p0 = zext_ln172_10_fu_1911_p1;
assign grp_fu_3779_p1 = 10'd40;
assign grp_fu_3779_p2 = 21'd1639;
assign grp_fu_3788_p0 = zext_ln172_10_fu_1911_p1;
assign grp_fu_3788_p1 = 10'd16;
assign grp_fu_3788_p2 = 21'd1639;
assign grp_fu_3797_p0 = zext_ln172_10_fu_1911_p1;
assign grp_fu_3797_p1 = 10'd48;
assign grp_fu_3797_p2 = 21'd1639;
assign grp_fu_3806_p0 = zext_ln172_10_reg_3893;
assign grp_fu_3806_p1 = 10'd24;
assign grp_fu_3806_p2 = 21'd1639;
assign grp_fu_3814_p0 = zext_ln172_10_reg_3893;
assign grp_fu_3814_p1 = 10'd56;
assign grp_fu_3814_p2 = 21'd1639;
assign mul_ln172_1_fu_1892_p0 = mul_ln172_1_fu_1892_p00;
assign mul_ln172_1_fu_1892_p00 = offset_1_reg_3857;
assign mul_ln172_1_fu_1892_p1 = 19'd820;
assign mul_ln172_2_fu_1917_p0 = mul_ln172_2_fu_1917_p00;
assign mul_ln172_2_fu_1917_p00 = offset_2_reg_3864;
assign mul_ln172_2_fu_1917_p1 = 19'd820;
assign mul_ln172_3_fu_2053_p0 = mul_ln172_3_fu_2053_p00;
assign mul_ln172_3_fu_2053_p00 = offset_3_reg_3871;
assign mul_ln172_3_fu_2053_p1 = 19'd820;
assign mul_ln172_fu_1870_p0 = mul_ln172_fu_1870_p00;
assign mul_ln172_fu_1870_p00 = offset_reg_3850;
assign mul_ln172_fu_1870_p1 = 19'd820;
assign offset_1_fu_1809_p4 = {{{tmp_81_reg_3843}, {tmp_90_fu_1800_p4}}, {1'd1}};
assign offset_2_fu_1824_p4 = {{{tmp_81_reg_3843}, {grp_fu_1747_p4}}, {2'd2}};
assign offset_3_fu_1839_p4 = {{{tmp_81_reg_3843}, {grp_fu_1747_p4}}, {2'd3}};
assign offset_fu_1786_p3 = {{tmp_81_fu_1772_p4}, {trunc_ln312_fu_1782_p1}};
assign or_ln315_1_fu_3204_p3 = {{tmp_29_fu_3181_p4}, {3'd6}};
assign or_ln315_2_fu_3482_p3 = {{tmp_38_reg_5029}, {4'd10}};
assign or_ln315_3_fu_3534_p3 = {{tmp_38_reg_5029}, {4'd14}};
assign or_ln318_1_fu_3443_p3 = {{tmp_29_reg_5023}, {3'd5}};
assign or_ln318_2_fu_3495_p3 = {{tmp_38_reg_5029}, {4'd9}};
assign or_ln318_3_fu_3547_p3 = {{tmp_38_reg_5029}, {4'd13}};
assign or_ln319_1_fu_3456_p3 = {{tmp_29_reg_5023}, {3'd7}};
assign or_ln319_2_fu_3508_p3 = {{tmp_38_reg_5029}, {4'd11}};
assign or_ln319_3_fu_3560_p3 = {{tmp_38_reg_5029}, {4'd15}};
assign or_ln5_fu_2875_p3 = {{trunc_ln314_reg_4525}, {2'd1}};
assign or_ln6_fu_2888_p3 = {{trunc_ln314_reg_4525}, {2'd3}};
assign or_ln7_fu_3469_p3 = {{tmp_38_reg_5029}, {4'd8}};
assign or_ln_fu_2577_p3 = {{trunc_ln314_fu_2560_p1}, {2'd2}};
assign shl_ln314_1_fu_3190_p3 = {{tmp_29_fu_3181_p4}, {3'd4}};
assign shl_ln314_2_fu_3521_p3 = {{tmp_38_reg_5029}, {4'd12}};
assign shl_ln7_fu_2563_p3 = {{trunc_ln314_fu_2560_p1}, {2'd0}};
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_101_fu_2082_p1 = grp_fu_3698_p3;
assign tmp_102_fu_2091_p1 = grp_fu_3707_p3;
assign tmp_103_fu_2100_p1 = grp_fu_3716_p3;
assign tmp_104_fu_2109_p1 = grp_fu_3725_p3;
assign tmp_105_fu_2118_p1 = grp_fu_3734_p3;
assign tmp_106_fu_2127_p1 = grp_fu_3743_p3;
assign tmp_107_fu_2136_p1 = grp_fu_3752_p3;
assign tmp_110_fu_2145_p1 = grp_fu_3761_p3;
assign tmp_111_fu_2154_p1 = grp_fu_3770_p3;
assign tmp_112_fu_2163_p1 = grp_fu_3779_p3;
assign tmp_113_fu_2172_p1 = grp_fu_3788_p3;
assign tmp_114_fu_2181_p1 = grp_fu_3797_p3;
assign tmp_115_fu_2258_p1 = grp_fu_3806_p3;
assign tmp_116_fu_2267_p1 = grp_fu_3814_p3;
assign tmp_21_fu_2303_p11 = 'bx;
assign tmp_22_fu_2330_p11 = 'bx;
assign tmp_23_fu_2357_p11 = 'bx;
assign tmp_24_fu_2384_p11 = 'bx;
assign tmp_25_fu_2411_p11 = 'bx;
assign tmp_26_fu_2438_p11 = 'bx;
assign tmp_27_fu_2465_p11 = 'bx;
assign tmp_28_fu_2591_p11 = 'bx;
assign tmp_29_fu_3181_p4 = {{tid_2_reg_3829_pp0_iter2_reg[5:1]}};
assign tmp_30_fu_2618_p11 = 'bx;
assign tmp_31_fu_2645_p11 = 'bx;
assign tmp_32_fu_2672_p11 = 'bx;
assign tmp_33_fu_2699_p11 = 'bx;
assign tmp_34_fu_2726_p11 = 'bx;
assign tmp_35_fu_2753_p11 = 'bx;
assign tmp_36_fu_2780_p11 = 'bx;
assign tmp_37_fu_2901_p11 = 'bx;
assign tmp_39_fu_2928_p11 = 'bx;
assign tmp_40_fu_2955_p11 = 'bx;
assign tmp_41_fu_2982_p11 = 'bx;
assign tmp_42_fu_3009_p11 = 'bx;
assign tmp_43_fu_3036_p11 = 'bx;
assign tmp_44_fu_3063_p11 = 'bx;
assign tmp_45_fu_3090_p11 = 'bx;
assign tmp_46_fu_3227_p11 = 'bx;
assign tmp_47_fu_3254_p11 = 'bx;
assign tmp_48_fu_3281_p11 = 'bx;
assign tmp_49_fu_3308_p11 = 'bx;
assign tmp_50_fu_3335_p11 = 'bx;
assign tmp_51_fu_3362_p11 = 'bx;
assign tmp_52_fu_3389_p11 = 'bx;
assign tmp_53_fu_3416_p11 = 'bx;
assign tmp_81_fu_1772_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_83_fu_1933_p1 = grp_fu_3573_p3;
assign tmp_84_fu_1942_p1 = grp_fu_3582_p3;
assign tmp_85_fu_1951_p1 = grp_fu_3591_p3;
assign tmp_86_fu_1960_p1 = grp_fu_3600_p3;
assign tmp_87_fu_1969_p1 = grp_fu_3609_p3;
assign tmp_88_fu_1978_p1 = grp_fu_3618_p3;
assign tmp_89_fu_1987_p1 = grp_fu_3627_p3;
assign tmp_90_fu_1800_p4 = {{tid_2_reg_3829[5:1]}};
assign tmp_92_fu_1996_p1 = grp_fu_3636_p3;
assign tmp_93_fu_2005_p1 = grp_fu_3645_p3;
assign tmp_94_fu_2014_p1 = grp_fu_3654_p3;
assign tmp_95_fu_2023_p1 = grp_fu_3663_p3;
assign tmp_96_fu_2032_p1 = grp_fu_3672_p3;
assign tmp_97_fu_2041_p1 = grp_fu_3681_p3;
assign tmp_98_fu_2073_p1 = grp_fu_3690_p3;
assign tmp_s_fu_2276_p11 = 'bx;
assign trunc_ln172_1_fu_2254_p1 = grp_fu_1818_p2[2:0];
assign trunc_ln172_2_fu_2556_p1 = grp_fu_1833_p2[2:0];
assign trunc_ln172_3_fu_2871_p1 = grp_fu_1848_p2[2:0];
assign trunc_ln172_fu_2069_p1 = grp_fu_1794_p2[2:0];
assign trunc_ln312_fu_1782_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_2560_p1 = tid_2_reg_3829_pp0_iter1_reg[5:0];
assign zext_ln172_10_fu_1911_p1 = offset_3_reg_3871;
assign zext_ln172_2_fu_2190_p1 = tmp_82_reg_3878;
assign zext_ln172_3_fu_1886_p1 = offset_1_reg_3857;
assign zext_ln172_5_fu_2492_p1 = tmp_91_reg_3888;
assign zext_ln172_6_fu_2807_p1 = tmp_100_reg_3899;
assign zext_ln172_7_fu_3117_p1 = tmp_109_reg_3969;
assign zext_ln172_8_fu_1908_p1 = offset_2_reg_3864;
assign zext_ln172_fu_1864_p1 = offset_reg_3850;
assign zext_ln314_1_fu_3198_p1 = shl_ln314_1_fu_3190_p3;
assign zext_ln314_2_fu_3476_p1 = or_ln7_fu_3469_p3;
assign zext_ln314_3_fu_3528_p1 = shl_ln314_2_fu_3521_p3;
assign zext_ln314_fu_2571_p1 = shl_ln7_fu_2563_p3;
assign zext_ln315_1_fu_2500_p1 = tmp_92_reg_3939;
assign zext_ln315_2_fu_2815_p1 = tmp_101_reg_3991;
assign zext_ln315_3_fu_3125_p1 = tmp_110_reg_4026;
assign zext_ln315_4_fu_2585_p1 = or_ln_fu_2577_p3;
assign zext_ln315_5_fu_3212_p1 = or_ln315_1_fu_3204_p3;
assign zext_ln315_6_fu_3489_p1 = or_ln315_2_fu_3482_p3;
assign zext_ln315_7_fu_3541_p1 = or_ln315_3_fu_3534_p3;
assign zext_ln315_fu_2198_p1 = tmp_83_reg_3904;
assign zext_ln316_1_fu_2508_p1 = tmp_93_reg_3944;
assign zext_ln316_2_fu_2823_p1 = tmp_102_reg_3996;
assign zext_ln316_3_fu_3133_p1 = tmp_111_reg_4031;
assign zext_ln316_fu_2206_p1 = tmp_84_reg_3909;
assign zext_ln317_1_fu_2516_p1 = tmp_94_reg_3949;
assign zext_ln317_2_fu_2831_p1 = tmp_103_reg_4001;
assign zext_ln317_3_fu_3141_p1 = tmp_112_reg_4036;
assign zext_ln317_fu_2214_p1 = tmp_85_reg_3914;
assign zext_ln318_1_fu_2524_p1 = tmp_95_reg_3954;
assign zext_ln318_2_fu_2839_p1 = tmp_104_reg_4006;
assign zext_ln318_3_fu_3149_p1 = tmp_113_reg_4041;
assign zext_ln318_4_fu_2882_p1 = or_ln5_fu_2875_p3;
assign zext_ln318_5_fu_3450_p1 = or_ln318_1_fu_3443_p3;
assign zext_ln318_6_fu_3502_p1 = or_ln318_2_fu_3495_p3;
assign zext_ln318_7_fu_3554_p1 = or_ln318_3_fu_3547_p3;
assign zext_ln318_fu_2222_p1 = tmp_86_reg_3919;
assign zext_ln319_1_fu_2532_p1 = tmp_96_reg_3959;
assign zext_ln319_2_fu_2847_p1 = tmp_105_reg_4011;
assign zext_ln319_3_fu_3157_p1 = tmp_114_reg_4046;
assign zext_ln319_4_fu_2895_p1 = or_ln6_fu_2888_p3;
assign zext_ln319_5_fu_3463_p1 = or_ln319_1_fu_3456_p3;
assign zext_ln319_6_fu_3515_p1 = or_ln319_2_fu_3508_p3;
assign zext_ln319_7_fu_3567_p1 = or_ln319_3_fu_3560_p3;
assign zext_ln319_fu_2230_p1 = tmp_87_reg_3924;
assign zext_ln320_1_fu_2540_p1 = tmp_97_reg_3964;
assign zext_ln320_2_fu_2855_p1 = tmp_106_reg_4016;
assign zext_ln320_3_fu_3165_p1 = tmp_115_reg_4263;
assign zext_ln320_fu_2238_p1 = tmp_88_reg_3929;
assign zext_ln321_1_fu_2548_p1 = tmp_98_reg_3986;
assign zext_ln321_2_fu_2863_p1 = tmp_107_reg_4021;
assign zext_ln321_3_fu_3173_p1 = tmp_116_reg_4268;
assign zext_ln321_fu_2246_p1 = tmp_89_reg_3934;
always @ (posedge ap_clk) begin
    offset_1_reg_3857[0] <= 1'b1;
    offset_2_reg_3864[1:0] <= 2'b10;
    offset_3_reg_3871[1:0] <= 2'b11;
    zext_ln172_3_reg_3883[0] <= 1'b1;
    zext_ln172_3_reg_3883[9] <= 1'b0;
    zext_ln172_10_reg_3893[1:0] <= 2'b11;
    zext_ln172_10_reg_3893[9] <= 1'b0;
end
endmodule 
