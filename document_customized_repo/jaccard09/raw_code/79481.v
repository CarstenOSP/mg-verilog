module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
output   smem_4_we1;
output  [63:0] smem_4_d1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [6:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_reg_3150;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1812;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_1826;
reg   [29:0] reg_1840;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_1844;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_1858;
reg   [63:0] reg_1873;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_1888;
reg   [63:0] reg_1902;
reg   [6:0] tid_1_reg_3143;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_3150_pp0_iter1_reg;
reg   [0:0] tmp_reg_3150_pp0_iter2_reg;
reg   [0:0] tmp_reg_3150_pp0_iter3_reg;
wire   [5:0] offset_fu_1933_p1;
reg   [5:0] offset_reg_3154;
reg   [5:0] offset_reg_3154_pp0_iter1_reg;
reg   [5:0] offset_reg_3154_pp0_iter2_reg;
reg   [5:0] offset_reg_3154_pp0_iter3_reg;
wire   [31:0] offset_3_fu_1957_p5;
reg   [31:0] offset_3_reg_3167;
reg   [31:0] offset_3_reg_3167_pp0_iter1_reg;
reg   [31:0] offset_3_reg_3167_pp0_iter2_reg;
reg   [31:0] offset_3_reg_3167_pp0_iter3_reg;
wire   [4:0] tmp_s_fu_1980_p4;
reg   [4:0] tmp_s_reg_3180;
reg   [4:0] tmp_s_reg_3180_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_3180_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_3180_pp0_iter3_reg;
wire   [5:0] offset_1_fu_1989_p3;
reg   [5:0] offset_1_reg_3188;
reg   [5:0] offset_1_reg_3188_pp0_iter1_reg;
reg   [5:0] offset_1_reg_3188_pp0_iter2_reg;
reg   [5:0] offset_1_reg_3188_pp0_iter3_reg;
wire   [3:0] tmp_20_fu_2003_p4;
reg   [3:0] tmp_20_reg_3197;
reg   [3:0] tmp_20_reg_3197_pp0_iter1_reg;
reg   [3:0] tmp_20_reg_3197_pp0_iter2_reg;
reg   [3:0] tmp_20_reg_3197_pp0_iter3_reg;
wire   [5:0] offset_2_fu_2012_p3;
reg   [5:0] offset_2_reg_3209;
reg   [5:0] offset_2_reg_3209_pp0_iter1_reg;
reg   [5:0] offset_2_reg_3209_pp0_iter2_reg;
reg   [5:0] offset_2_reg_3209_pp0_iter3_reg;
wire   [2:0] trunc_ln172_fu_2036_p1;
reg   [2:0] trunc_ln172_reg_3218;
reg   [2:0] trunc_ln172_reg_3218_pp0_iter2_reg;
reg   [2:0] trunc_ln172_reg_3218_pp0_iter3_reg;
wire   [2:0] trunc_ln172_1_fu_2040_p1;
reg   [2:0] trunc_ln172_1_reg_3222;
reg   [2:0] trunc_ln172_1_reg_3222_pp0_iter2_reg;
reg   [2:0] trunc_ln172_1_reg_3222_pp0_iter3_reg;
wire   [2:0] trunc_ln172_2_fu_2044_p1;
reg   [2:0] trunc_ln172_2_reg_3226;
reg   [2:0] trunc_ln172_2_reg_3226_pp0_iter2_reg;
reg   [2:0] trunc_ln172_2_reg_3226_pp0_iter3_reg;
wire   [7:0] zext_ln172_5_fu_2051_p1;
reg   [7:0] zext_ln172_5_reg_3230;
wire   [8:0] zext_ln172_6_fu_2054_p1;
reg   [8:0] zext_ln172_6_reg_3236;
reg   [3:0] tmp_28_reg_3242;
wire   [8:0] add_ln331_fu_2089_p2;
reg   [8:0] add_ln331_reg_3257;
wire   [63:0] zext_ln332_4_fu_2102_p1;
reg   [63:0] zext_ln332_4_reg_3262;
reg   [3:0] tmp_36_reg_3272;
wire   [63:0] zext_ln330_1_fu_2133_p1;
reg   [63:0] zext_ln330_1_reg_3277;
reg   [3:0] tmp_44_reg_3287;
reg   [6:0] tmp_29_reg_3292;
wire   [8:0] add_ln333_fu_2176_p2;
reg   [8:0] add_ln333_reg_3297;
wire   [63:0] zext_ln334_4_fu_2188_p1;
reg   [63:0] zext_ln334_4_reg_3302;
reg   [5:0] tmp_32_reg_3307;
wire   [7:0] add_ln335_fu_2218_p2;
reg   [7:0] add_ln335_reg_3317;
wire   [63:0] zext_ln336_4_fu_2230_p1;
reg   [63:0] zext_ln336_4_reg_3322;
wire   [8:0] zext_ln172_10_fu_2235_p1;
reg   [8:0] zext_ln172_10_reg_3332;
wire   [8:0] add_ln331_1_fu_2238_p2;
reg   [8:0] add_ln331_1_reg_3338;
wire   [63:0] zext_ln330_2_fu_2251_p1;
reg   [63:0] zext_ln330_2_reg_3343;
reg   [7:0] tmp_51_reg_3353;
wire   [64:0] zext_ln172_16_fu_2265_p1;
wire   [63:0] zext_ln330_3_fu_2276_p1;
reg   [63:0] zext_ln330_3_reg_3363;
reg   [63:0] DATA_y_1_load_reg_3373;
reg   [63:0] DATA_y_1_load_1_reg_3382;
reg   [6:0] tmp_31_reg_3396;
reg   [6:0] tmp_33_reg_3406;
wire   [7:0] zext_ln172_9_fu_2326_p1;
reg   [7:0] zext_ln172_9_reg_3411;
reg   [6:0] tmp_37_reg_3422;
wire   [63:0] zext_ln332_5_fu_2355_p1;
reg   [63:0] zext_ln332_5_reg_3427;
wire   [8:0] add_ln333_1_fu_2360_p2;
reg   [8:0] add_ln333_1_reg_3437;
wire   [7:0] add_ln335_1_fu_2365_p2;
reg   [7:0] add_ln335_1_reg_3442;
reg   [63:0] DATA_y_1_load_2_reg_3447;
reg   [63:0] DATA_y_1_load_3_reg_3456;
reg   [5:0] tmp_30_reg_3465;
reg   [6:0] tmp_39_reg_3480;
wire   [63:0] zext_ln334_5_fu_2406_p1;
reg   [63:0] zext_ln334_5_reg_3485;
reg   [5:0] tmp_40_reg_3490;
reg   [6:0] tmp_41_reg_3500;
wire   [63:0] zext_ln336_5_fu_2466_p1;
reg   [63:0] zext_ln336_5_reg_3505;
wire   [8:0] zext_ln172_14_fu_2471_p1;
reg   [8:0] zext_ln172_14_reg_3515;
wire   [8:0] add_ln331_2_fu_2474_p2;
reg   [8:0] add_ln331_2_reg_3520;
wire   [8:0] add_ln333_2_fu_2480_p2;
reg   [8:0] add_ln333_2_reg_3525;
reg   [63:0] DATA_y_1_load_4_reg_3530;
reg   [6:0] tmp_34_reg_3539;
wire   [7:0] zext_ln172_13_fu_2511_p1;
reg   [7:0] zext_ln172_13_reg_3554;
reg   [6:0] tmp_45_reg_3564;
wire   [63:0] zext_ln332_6_fu_2540_p1;
reg   [63:0] zext_ln332_6_reg_3569;
reg   [6:0] tmp_47_reg_3579;
reg   [5:0] tmp_48_reg_3584;
wire   [7:0] add_ln335_2_fu_2590_p2;
reg   [7:0] add_ln335_2_reg_3589;
wire   [31:0] add_ln332_3_fu_2596_p2;
reg   [31:0] add_ln332_3_reg_3594;
wire   [31:0] add_ln334_3_fu_2601_p2;
reg   [31:0] add_ln334_3_reg_3599;
reg   [63:0] DATA_y_1_load_6_reg_3604;
reg   [63:0] DATA_y_1_load_7_reg_3613;
reg   [7:0] tmp_35_reg_3622;
reg   [6:0] tmp_49_reg_3642;
wire   [63:0] zext_ln336_6_fu_2669_p1;
reg   [63:0] zext_ln336_6_reg_3647;
wire   [2:0] trunc_ln172_3_fu_2674_p1;
reg   [2:0] trunc_ln172_3_reg_3657;
wire   [31:0] add_ln331_3_fu_2678_p2;
reg   [31:0] add_ln331_3_reg_3661;
wire   [64:0] zext_ln332_11_fu_2683_p1;
wire   [31:0] add_ln333_3_fu_2687_p2;
reg   [31:0] add_ln333_3_reg_3671;
wire   [64:0] zext_ln334_11_fu_2692_p1;
wire   [31:0] add_ln335_3_fu_2696_p2;
reg   [31:0] add_ln335_3_reg_3681;
reg   [63:0] DATA_y_load_7_reg_3686;
reg   [63:0] DATA_y_1_load_8_reg_3695;
reg   [63:0] DATA_y_1_load_9_reg_3704;
reg   [5:0] tmp_38_reg_3713;
wire   [64:0] zext_ln331_7_fu_2719_p1;
wire   [64:0] zext_ln333_7_fu_2736_p1;
reg   [29:0] tmp_57_reg_3748;
reg   [63:0] DATA_y_load_10_reg_3758;
wire   [31:0] add_ln336_3_fu_2744_p2;
reg   [31:0] add_ln336_3_reg_3767;
reg   [63:0] DATA_y_1_load_10_reg_3772;
reg   [63:0] DATA_y_1_load_11_reg_3781;
wire   [31:0] add_ln337_3_fu_2749_p2;
reg   [31:0] add_ln337_3_reg_3790;
reg   [6:0] tmp_42_reg_3795;
reg   [29:0] tmp_54_reg_3800;
reg   [29:0] tmp_56_reg_3805;
reg   [29:0] tmp_58_reg_3820;
wire   [64:0] zext_ln336_11_fu_2839_p1;
reg   [63:0] DATA_y_1_load_12_reg_3840;
reg   [63:0] DATA_y_1_load_13_reg_3849;
wire   [64:0] zext_ln337_7_fu_2843_p1;
reg   [7:0] tmp_43_reg_3863;
reg   [29:0] tmp_59_reg_3868;
reg   [63:0] DATA_y_1_load_15_reg_3873;
reg   [29:0] tmp_60_reg_3882;
reg   [5:0] tmp_46_reg_3887;
wire    ap_block_pp0_stage9_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln330_fu_2083_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_fu_2486_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln172_1_fu_2503_p1;
wire   [63:0] zext_ln172_2_fu_2618_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln334_6_fu_2633_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln172_3_fu_2710_p1;
wire   [63:0] zext_ln332_7_fu_2730_p1;
wire   [63:0] zext_ln331_fu_2754_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln332_fu_2762_p1;
wire   [63:0] zext_ln333_fu_2770_p1;
wire   [63:0] zext_ln334_fu_2778_p1;
wire   [63:0] zext_ln336_fu_2786_p1;
wire   [63:0] zext_ln334_7_fu_2810_p1;
wire   [63:0] zext_ln336_7_fu_2833_p1;
wire   [63:0] zext_ln335_fu_2847_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln337_fu_2855_p1;
wire   [63:0] zext_ln332_1_fu_2863_p1;
wire   [63:0] zext_ln333_1_fu_2871_p1;
wire   [63:0] zext_ln334_1_fu_2879_p1;
wire   [63:0] zext_ln331_1_fu_2896_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln335_1_fu_2904_p1;
wire   [63:0] zext_ln336_1_fu_2912_p1;
wire   [63:0] zext_ln337_1_fu_2920_p1;
wire   [63:0] zext_ln334_2_fu_2937_p1;
wire   [63:0] zext_ln331_2_fu_2945_p1;
wire   [63:0] zext_ln332_2_fu_2953_p1;
wire   [63:0] zext_ln333_2_fu_2961_p1;
wire   [63:0] zext_ln336_2_fu_2978_p1;
wire   [63:0] zext_ln337_2_fu_2987_p1;
wire   [63:0] zext_ln335_2_fu_2995_p1;
wire   [63:0] zext_ln331_3_fu_3003_p1;
wire   [63:0] zext_ln332_3_fu_3011_p1;
wire   [63:0] zext_ln333_3_fu_3020_p1;
wire   [63:0] zext_ln334_3_fu_3028_p1;
wire   [63:0] zext_ln336_3_fu_3036_p1;
wire   [63:0] zext_ln335_3_fu_3044_p1;
wire   [63:0] zext_ln337_3_fu_3052_p1;
reg   [6:0] tid_fu_174;
wire   [6:0] add_ln325_fu_2026_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_1;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg   [31:0] grp_fu_1777_p0;
wire   [33:0] grp_fu_1777_p1;
reg   [31:0] grp_fu_1782_p0;
wire   [33:0] grp_fu_1782_p1;
wire   [31:0] grp_fu_1787_p0;
wire   [33:0] grp_fu_1787_p1;
wire   [64:0] grp_fu_1777_p2;
wire   [64:0] grp_fu_1782_p2;
wire   [0:0] tmp_52_fu_1941_p3;
wire   [31:0] zext_ln326_fu_1937_p1;
wire   [2:0] or_ln4_fu_1949_p3;
wire   [31:0] grp_fu_1969_p0;
wire   [3:0] grp_fu_1969_p1;
wire   [3:0] grp_fu_1975_p1;
wire   [5:0] grp_fu_1997_p0;
wire   [3:0] grp_fu_1997_p1;
wire   [5:0] grp_fu_2020_p0;
wire   [3:0] grp_fu_2020_p1;
wire   [2:0] grp_fu_1975_p2;
wire   [2:0] grp_fu_1997_p2;
wire   [2:0] grp_fu_2020_p2;
wire   [5:0] mul_ln172_fu_2060_p0;
wire   [7:0] mul_ln172_fu_2060_p1;
wire   [12:0] mul_ln172_fu_2060_p2;
wire   [7:0] shl_ln8_fu_2076_p3;
wire   [7:0] or_ln_fu_2095_p3;
wire   [5:0] mul_ln172_1_fu_2110_p0;
wire   [7:0] mul_ln172_1_fu_2110_p1;
wire   [12:0] mul_ln172_1_fu_2110_p2;
wire   [7:0] shl_ln330_1_fu_2126_p3;
wire   [5:0] mul_ln172_2_fu_2141_p0;
wire   [7:0] mul_ln172_2_fu_2141_p1;
wire   [12:0] mul_ln172_2_fu_2141_p2;
wire   [8:0] mul_ln331_fu_2160_p0;
wire   [10:0] mul_ln331_fu_2160_p1;
wire   [18:0] mul_ln331_fu_2160_p2;
wire   [7:0] or_ln1_fu_2181_p3;
wire   [7:0] add_ln334_fu_2193_p2;
wire   [7:0] mul_ln334_fu_2202_p0;
wire   [9:0] mul_ln334_fu_2202_p1;
wire   [16:0] mul_ln334_fu_2202_p2;
wire   [7:0] or_ln2_fu_2223_p3;
wire   [7:0] or_ln3_fu_2244_p3;
wire   [20:0] tmp_51_fu_2256_p1;
wire  signed [20:0] grp_fu_3060_p3;
wire   [7:0] shl_ln330_2_fu_2269_p3;
wire   [8:0] mul_ln333_fu_2287_p0;
wire   [10:0] mul_ln333_fu_2287_p1;
wire   [18:0] mul_ln333_fu_2287_p2;
wire  signed [8:0] sext_ln335_fu_2303_p1;
wire   [8:0] mul_ln335_fu_2310_p0;
wire   [10:0] mul_ln335_fu_2310_p1;
wire   [18:0] mul_ln335_fu_2310_p2;
wire   [8:0] mul_ln331_1_fu_2332_p0;
wire   [10:0] mul_ln331_1_fu_2332_p1;
wire   [18:0] mul_ln331_1_fu_2332_p2;
wire   [7:0] or_ln332_1_fu_2348_p3;
wire   [16:0] tmp_30_fu_2371_p1;
wire  signed [16:0] grp_fu_3069_p3;
wire   [8:0] mul_ln333_1_fu_2383_p0;
wire   [10:0] mul_ln333_1_fu_2383_p1;
wire   [18:0] mul_ln333_1_fu_2383_p2;
wire   [7:0] or_ln334_1_fu_2399_p3;
wire   [7:0] add_ln334_1_fu_2411_p2;
wire   [7:0] mul_ln334_1_fu_2420_p0;
wire   [9:0] mul_ln334_1_fu_2420_p1;
wire   [16:0] mul_ln334_1_fu_2420_p2;
wire  signed [8:0] sext_ln335_1_fu_2436_p1;
wire   [8:0] mul_ln335_1_fu_2443_p0;
wire   [10:0] mul_ln335_1_fu_2443_p1;
wire   [18:0] mul_ln335_1_fu_2443_p2;
wire   [7:0] or_ln336_1_fu_2459_p3;
wire   [18:0] tmp_34_fu_2494_p1;
wire  signed [18:0] grp_fu_3078_p3;
wire   [8:0] mul_ln331_2_fu_2517_p0;
wire   [10:0] mul_ln331_2_fu_2517_p1;
wire   [18:0] mul_ln331_2_fu_2517_p2;
wire   [7:0] or_ln332_2_fu_2533_p3;
wire   [8:0] mul_ln333_2_fu_2548_p0;
wire   [10:0] mul_ln333_2_fu_2548_p1;
wire   [18:0] mul_ln333_2_fu_2548_p2;
wire   [7:0] add_ln334_2_fu_2564_p2;
wire   [7:0] mul_ln334_2_fu_2574_p0;
wire   [9:0] mul_ln334_2_fu_2574_p1;
wire   [16:0] mul_ln334_2_fu_2574_p2;
wire   [20:0] tmp_35_fu_2606_p1;
wire  signed [20:0] grp_fu_3086_p3;
wire   [7:0] or_ln334_2_fu_2626_p3;
wire  signed [8:0] sext_ln335_2_fu_2639_p1;
wire   [8:0] mul_ln335_2_fu_2646_p0;
wire   [10:0] mul_ln335_2_fu_2646_p1;
wire   [18:0] mul_ln335_2_fu_2646_p2;
wire   [7:0] or_ln336_2_fu_2662_p3;
wire   [2:0] grp_fu_1969_p2;
wire   [16:0] tmp_38_fu_2701_p1;
wire  signed [16:0] grp_fu_3095_p3;
wire   [7:0] or_ln332_3_fu_2723_p3;
wire   [18:0] tmp_42_fu_2794_p1;
wire  signed [18:0] grp_fu_3103_p3;
wire   [7:0] or_ln334_3_fu_2803_p3;
wire   [64:0] grp_fu_1787_p2;
wire   [7:0] or_ln336_3_fu_2826_p3;
wire   [20:0] tmp_43_fu_2887_p1;
wire  signed [20:0] grp_fu_3111_p3;
wire   [16:0] tmp_46_fu_2928_p1;
wire  signed [16:0] grp_fu_3120_p3;
wire   [18:0] tmp_50_fu_2969_p1;
wire  signed [18:0] grp_fu_3128_p3;
wire   [6:0] tmp_50_fu_2969_p4;
wire   [5:0] grp_fu_3060_p0;
wire   [8:0] grp_fu_3060_p1;
wire   [10:0] grp_fu_3060_p2;
wire   [5:0] grp_fu_3069_p0;
wire   [6:0] grp_fu_3069_p1;
wire   [8:0] grp_fu_3069_p2;
wire   [5:0] grp_fu_3078_p0;
wire   [7:0] grp_fu_3078_p1;
wire   [9:0] grp_fu_3078_p2;
wire   [5:0] grp_fu_3086_p0;
wire   [8:0] grp_fu_3086_p1;
wire   [10:0] grp_fu_3086_p2;
wire   [5:0] grp_fu_3095_p0;
wire   [6:0] grp_fu_3095_p1;
wire   [8:0] grp_fu_3095_p2;
wire   [5:0] grp_fu_3103_p0;
wire   [7:0] grp_fu_3103_p1;
wire   [9:0] grp_fu_3103_p2;
wire   [5:0] grp_fu_3111_p0;
wire   [8:0] grp_fu_3111_p1;
wire   [10:0] grp_fu_3111_p2;
wire   [5:0] grp_fu_3120_p0;
wire   [6:0] grp_fu_3120_p1;
wire   [8:0] grp_fu_3120_p2;
wire   [5:0] grp_fu_3128_p0;
wire   [7:0] grp_fu_3128_p1;
wire   [9:0] grp_fu_3128_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage3;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [64:0] grp_fu_1787_p00;
wire   [9:0] grp_fu_3060_p00;
wire   [7:0] grp_fu_3069_p00;
wire   [9:0] grp_fu_3086_p00;
wire   [9:0] grp_fu_3111_p00;
wire   [12:0] mul_ln172_1_fu_2110_p00;
wire   [12:0] mul_ln172_2_fu_2141_p00;
wire   [12:0] mul_ln172_fu_2060_p00;
wire   [18:0] mul_ln331_1_fu_2332_p00;
wire   [18:0] mul_ln331_2_fu_2517_p00;
wire   [18:0] mul_ln331_fu_2160_p00;
wire   [18:0] mul_ln333_1_fu_2383_p00;
wire   [18:0] mul_ln333_2_fu_2548_p00;
wire   [18:0] mul_ln333_fu_2287_p00;
wire   [16:0] mul_ln334_1_fu_2420_p00;
wire   [16:0] mul_ln334_2_fu_2574_p00;
wire   [16:0] mul_ln334_fu_2202_p00;
wire   [18:0] mul_ln335_1_fu_2443_p00;
wire   [18:0] mul_ln335_2_fu_2646_p00;
wire   [18:0] mul_ln335_fu_2310_p00;
reg    ap_condition_2136;
reg    ap_condition_2140;
reg    ap_condition_2144;
reg    ap_condition_2148;
reg    ap_condition_2153;
reg    ap_condition_2157;
reg    ap_condition_2161;
reg    ap_condition_2166;
reg    ap_condition_2171;
reg    ap_condition_2175;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_174 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U546(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1777_p0),.din1(grp_fu_1777_p1),.ce(1'b1),.dout(grp_fu_1777_p2));
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U547(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1782_p0),.din1(grp_fu_1782_p1),.ce(1'b1),.dout(grp_fu_1782_p2));
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U548(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1787_p0),.din1(grp_fu_1787_p1),.ce(1'b1),.dout(grp_fu_1787_p2));
fft1D_512_urem_32ns_4ns_3_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_32ns_4ns_3_36_1_U549(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1969_p0),.din1(grp_fu_1969_p1),.ce(1'b1),.dout(grp_fu_1969_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U550(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_3154),.din1(grp_fu_1975_p1),.ce(1'b1),.dout(grp_fu_1975_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U551(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1997_p0),.din1(grp_fu_1997_p1),.ce(1'b1),.dout(grp_fu_1997_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U552(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2020_p0),.din1(grp_fu_2020_p1),.ce(1'b1),.dout(grp_fu_2020_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U553(.din0(mul_ln172_fu_2060_p0),.din1(mul_ln172_fu_2060_p1),.dout(mul_ln172_fu_2060_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U554(.din0(mul_ln172_1_fu_2110_p0),.din1(mul_ln172_1_fu_2110_p1),.dout(mul_ln172_1_fu_2110_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U555(.din0(mul_ln172_2_fu_2141_p0),.din1(mul_ln172_2_fu_2141_p1),.dout(mul_ln172_2_fu_2141_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U556(.din0(mul_ln331_fu_2160_p0),.din1(mul_ln331_fu_2160_p1),.dout(mul_ln331_fu_2160_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U557(.din0(mul_ln334_fu_2202_p0),.din1(mul_ln334_fu_2202_p1),.dout(mul_ln334_fu_2202_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U558(.din0(mul_ln333_fu_2287_p0),.din1(mul_ln333_fu_2287_p1),.dout(mul_ln333_fu_2287_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U559(.din0(mul_ln335_fu_2310_p0),.din1(mul_ln335_fu_2310_p1),.dout(mul_ln335_fu_2310_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U560(.din0(mul_ln331_1_fu_2332_p0),.din1(mul_ln331_1_fu_2332_p1),.dout(mul_ln331_1_fu_2332_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U561(.din0(mul_ln333_1_fu_2383_p0),.din1(mul_ln333_1_fu_2383_p1),.dout(mul_ln333_1_fu_2383_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U562(.din0(mul_ln334_1_fu_2420_p0),.din1(mul_ln334_1_fu_2420_p1),.dout(mul_ln334_1_fu_2420_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U563(.din0(mul_ln335_1_fu_2443_p0),.din1(mul_ln335_1_fu_2443_p1),.dout(mul_ln335_1_fu_2443_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U564(.din0(mul_ln331_2_fu_2517_p0),.din1(mul_ln331_2_fu_2517_p1),.dout(mul_ln331_2_fu_2517_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U565(.din0(mul_ln333_2_fu_2548_p0),.din1(mul_ln333_2_fu_2548_p1),.dout(mul_ln333_2_fu_2548_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U566(.din0(mul_ln334_2_fu_2574_p0),.din1(mul_ln334_2_fu_2574_p1),.dout(mul_ln334_2_fu_2574_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U567(.din0(mul_ln335_2_fu_2646_p0),.din1(mul_ln335_2_fu_2646_p1),.dout(mul_ln335_2_fu_2646_p2));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U568(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3060_p0),.din1(grp_fu_3060_p1),.din2(grp_fu_3060_p2),.ce(1'b1),.dout(grp_fu_3060_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U569(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3069_p0),.din1(grp_fu_3069_p1),.din2(grp_fu_3069_p2),.ce(1'b1),.dout(grp_fu_3069_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U570(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3078_p0),.din1(grp_fu_3078_p1),.din2(grp_fu_3078_p2),.ce(1'b1),.dout(grp_fu_3078_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U571(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3086_p0),.din1(grp_fu_3086_p1),.din2(grp_fu_3086_p2),.ce(1'b1),.dout(grp_fu_3086_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U572(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3095_p0),.din1(grp_fu_3095_p1),.din2(grp_fu_3095_p2),.ce(1'b1),.dout(grp_fu_3095_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U573(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3103_p0),.din1(grp_fu_3103_p1),.din2(grp_fu_3103_p2),.ce(1'b1),.dout(grp_fu_3103_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U574(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3111_p0),.din1(grp_fu_3111_p1),.din2(grp_fu_3111_p2),.ce(1'b1),.dout(grp_fu_3111_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U575(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3120_p0),.din1(grp_fu_3120_p1),.din2(grp_fu_3120_p2),.ce(1'b1),.dout(grp_fu_3120_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U576(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3128_p0),.din1(grp_fu_3128_p1),.din2(grp_fu_3128_p2),.ce(1'b1),.dout(grp_fu_3128_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1858 <= DATA_y_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1858 <= DATA_y_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1873 <= DATA_y_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1873 <= DATA_y_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_1902 <= DATA_y_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1902 <= DATA_y_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_174 <= 7'd0;
    end else if (((tmp_reg_3150 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_174 <= add_ln325_fu_2026_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_load_10_reg_3772 <= DATA_y_1_q1;
        DATA_y_1_load_11_reg_3781 <= DATA_y_1_q0;
        DATA_y_load_10_reg_3758 <= DATA_y_q0;
        tmp_57_reg_3748 <= {{grp_fu_1782_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_load_12_reg_3840 <= DATA_y_1_q1;
        DATA_y_1_load_13_reg_3849 <= DATA_y_1_q0;
        tmp_54_reg_3800 <= {{grp_fu_1777_p2[64:35]}};
        tmp_56_reg_3805 <= {{grp_fu_1782_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_y_1_load_15_reg_3873 <= DATA_y_1_q0;
        tmp_59_reg_3868 <= {{grp_fu_1777_p2[64:35]}};
        tmp_60_reg_3882 <= {{grp_fu_1782_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_1_reg_3382 <= DATA_y_1_q0;
        DATA_y_1_load_reg_3373 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_load_2_reg_3447 <= DATA_y_1_q1;
        DATA_y_1_load_3_reg_3456 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_load_4_reg_3530 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_load_6_reg_3604 <= DATA_y_1_q1;
        DATA_y_1_load_7_reg_3613 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_1_load_8_reg_3695 <= DATA_y_1_q1;
        DATA_y_1_load_9_reg_3704 <= DATA_y_1_q0;
        DATA_y_load_7_reg_3686 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln331_1_reg_3338[8 : 1] <= add_ln331_1_fu_2238_p2[8 : 1];
        add_ln333_reg_3297 <= add_ln333_fu_2176_p2;
        add_ln335_reg_3317 <= add_ln335_fu_2218_p2;
        tmp_29_reg_3292 <= {{mul_ln331_fu_2160_p2[18:12]}};
        tmp_32_reg_3307 <= {{mul_ln334_fu_2202_p2[16:11]}};
        tmp_51_reg_3353 <= {{tmp_51_fu_2256_p1[20:13]}};
        trunc_ln172_1_reg_3222 <= trunc_ln172_1_fu_2040_p1;
        trunc_ln172_1_reg_3222_pp0_iter2_reg <= trunc_ln172_1_reg_3222;
        trunc_ln172_1_reg_3222_pp0_iter3_reg <= trunc_ln172_1_reg_3222_pp0_iter2_reg;
        zext_ln172_10_reg_3332[5 : 1] <= zext_ln172_10_fu_2235_p1[5 : 1];
        zext_ln330_2_reg_3343[7 : 4] <= zext_ln330_2_fu_2251_p1[7 : 4];
        zext_ln330_3_reg_3363[7 : 4] <= zext_ln330_3_fu_2276_p1[7 : 4];
        zext_ln334_4_reg_3302[7 : 2] <= zext_ln334_4_fu_2188_p1[7 : 2];
        zext_ln336_4_reg_3322[7 : 2] <= zext_ln336_4_fu_2230_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln331_2_reg_3520[8 : 2] <= add_ln331_2_fu_2474_p2[8 : 2];
        add_ln333_2_reg_3525[8 : 2] <= add_ln333_2_fu_2480_p2[8 : 2];
        offset_2_reg_3209[5 : 2] <= offset_2_fu_2012_p3[5 : 2];
        offset_2_reg_3209_pp0_iter1_reg[5 : 2] <= offset_2_reg_3209[5 : 2];
        offset_2_reg_3209_pp0_iter2_reg[5 : 2] <= offset_2_reg_3209_pp0_iter1_reg[5 : 2];
        offset_2_reg_3209_pp0_iter3_reg[5 : 2] <= offset_2_reg_3209_pp0_iter2_reg[5 : 2];
        tmp_20_reg_3197 <= {{tid_1_reg_3143[5:2]}};
        tmp_20_reg_3197_pp0_iter1_reg <= tmp_20_reg_3197;
        tmp_20_reg_3197_pp0_iter2_reg <= tmp_20_reg_3197_pp0_iter1_reg;
        tmp_20_reg_3197_pp0_iter3_reg <= tmp_20_reg_3197_pp0_iter2_reg;
        tmp_30_reg_3465 <= {{tmp_30_fu_2371_p1[16:11]}};
        tmp_39_reg_3480 <= {{mul_ln333_1_fu_2383_p2[18:12]}};
        tmp_40_reg_3490 <= {{mul_ln334_1_fu_2420_p2[16:11]}};
        tmp_41_reg_3500 <= {{mul_ln335_1_fu_2443_p2[18:12]}};
        zext_ln172_14_reg_3515[5 : 2] <= zext_ln172_14_fu_2471_p1[5 : 2];
        zext_ln334_5_reg_3485[7 : 3] <= zext_ln334_5_fu_2406_p1[7 : 3];
        zext_ln336_5_reg_3505[7 : 3] <= zext_ln336_5_fu_2466_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln331_3_reg_3661 <= add_ln331_3_fu_2678_p2;
        add_ln333_3_reg_3671 <= add_ln333_3_fu_2687_p2;
        add_ln335_3_reg_3681 <= add_ln335_3_fu_2696_p2;
        tmp_35_reg_3622 <= {{tmp_35_fu_2606_p1[20:13]}};
        tmp_49_reg_3642 <= {{mul_ln335_2_fu_2646_p2[18:12]}};
        trunc_ln172_3_reg_3657 <= trunc_ln172_3_fu_2674_p1;
        zext_ln336_6_reg_3647[7 : 4] <= zext_ln336_6_fu_2669_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln331_reg_3257 <= add_ln331_fu_2089_p2;
        offset_3_reg_3167 <= offset_3_fu_1957_p5;
        offset_3_reg_3167_pp0_iter1_reg <= offset_3_reg_3167;
        offset_3_reg_3167_pp0_iter2_reg <= offset_3_reg_3167_pp0_iter1_reg;
        offset_3_reg_3167_pp0_iter3_reg <= offset_3_reg_3167_pp0_iter2_reg;
        offset_reg_3154 <= offset_fu_1933_p1;
        offset_reg_3154_pp0_iter1_reg <= offset_reg_3154;
        offset_reg_3154_pp0_iter2_reg <= offset_reg_3154_pp0_iter1_reg;
        offset_reg_3154_pp0_iter3_reg <= offset_reg_3154_pp0_iter2_reg;
        tid_1_reg_3143 <= ap_sig_allocacmp_tid_1;
        tmp_28_reg_3242 <= {{mul_ln172_fu_2060_p2[12:9]}};
        tmp_36_reg_3272 <= {{mul_ln172_1_fu_2110_p2[12:9]}};
        tmp_44_reg_3287 <= {{mul_ln172_2_fu_2141_p2[12:9]}};
        tmp_reg_3150 <= ap_sig_allocacmp_tid_1[32'd6];
        tmp_reg_3150_pp0_iter1_reg <= tmp_reg_3150;
        tmp_reg_3150_pp0_iter2_reg <= tmp_reg_3150_pp0_iter1_reg;
        tmp_reg_3150_pp0_iter3_reg <= tmp_reg_3150_pp0_iter2_reg;
        trunc_ln172_reg_3218 <= trunc_ln172_fu_2036_p1;
        trunc_ln172_reg_3218_pp0_iter2_reg <= trunc_ln172_reg_3218;
        trunc_ln172_reg_3218_pp0_iter3_reg <= trunc_ln172_reg_3218_pp0_iter2_reg;
        zext_ln172_5_reg_3230[5 : 0] <= zext_ln172_5_fu_2051_p1[5 : 0];
        zext_ln172_6_reg_3236[5 : 0] <= zext_ln172_6_fu_2054_p1[5 : 0];
        zext_ln330_1_reg_3277[7 : 3] <= zext_ln330_1_fu_2133_p1[7 : 3];
        zext_ln332_4_reg_3262[7 : 2] <= zext_ln332_4_fu_2102_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln332_3_reg_3594 <= add_ln332_3_fu_2596_p2;
        add_ln334_3_reg_3599 <= add_ln334_3_fu_2601_p2;
        add_ln335_2_reg_3589[7 : 2] <= add_ln335_2_fu_2590_p2[7 : 2];
        tmp_34_reg_3539 <= {{tmp_34_fu_2494_p1[18:12]}};
        tmp_45_reg_3564 <= {{mul_ln331_2_fu_2517_p2[18:12]}};
        tmp_47_reg_3579 <= {{mul_ln333_2_fu_2548_p2[18:12]}};
        tmp_48_reg_3584 <= {{mul_ln334_2_fu_2574_p2[16:11]}};
        zext_ln172_13_reg_3554[5 : 2] <= zext_ln172_13_fu_2511_p1[5 : 2];
        zext_ln332_6_reg_3569[7 : 4] <= zext_ln332_6_fu_2540_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln333_1_reg_3437[8 : 1] <= add_ln333_1_fu_2360_p2[8 : 1];
        add_ln335_1_reg_3442[7 : 1] <= add_ln335_1_fu_2365_p2[7 : 1];
        offset_1_reg_3188[5 : 1] <= offset_1_fu_1989_p3[5 : 1];
        offset_1_reg_3188_pp0_iter1_reg[5 : 1] <= offset_1_reg_3188[5 : 1];
        offset_1_reg_3188_pp0_iter2_reg[5 : 1] <= offset_1_reg_3188_pp0_iter1_reg[5 : 1];
        offset_1_reg_3188_pp0_iter3_reg[5 : 1] <= offset_1_reg_3188_pp0_iter2_reg[5 : 1];
        tmp_31_reg_3396 <= {{mul_ln333_fu_2287_p2[18:12]}};
        tmp_33_reg_3406 <= {{mul_ln335_fu_2310_p2[18:12]}};
        tmp_37_reg_3422 <= {{mul_ln331_1_fu_2332_p2[18:12]}};
        tmp_s_reg_3180 <= {{tid_1_reg_3143[5:1]}};
        tmp_s_reg_3180_pp0_iter1_reg <= tmp_s_reg_3180;
        tmp_s_reg_3180_pp0_iter2_reg <= tmp_s_reg_3180_pp0_iter1_reg;
        tmp_s_reg_3180_pp0_iter3_reg <= tmp_s_reg_3180_pp0_iter2_reg;
        trunc_ln172_2_reg_3226 <= trunc_ln172_2_fu_2044_p1;
        trunc_ln172_2_reg_3226_pp0_iter2_reg <= trunc_ln172_2_reg_3226;
        trunc_ln172_2_reg_3226_pp0_iter3_reg <= trunc_ln172_2_reg_3226_pp0_iter2_reg;
        zext_ln172_9_reg_3411[5 : 1] <= zext_ln172_9_fu_2326_p1[5 : 1];
        zext_ln332_5_reg_3427[7 : 3] <= zext_ln332_5_fu_2355_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln336_3_reg_3767 <= add_ln336_3_fu_2744_p2;
        add_ln337_3_reg_3790 <= add_ln337_3_fu_2749_p2;
        tmp_38_reg_3713 <= {{tmp_38_fu_2701_p1[16:11]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1812 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1826 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1840 <= {{grp_fu_1777_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1844 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1888 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_42_reg_3795 <= {{tmp_42_fu_2794_p1[18:12]}};
        tmp_58_reg_3820 <= {{grp_fu_1787_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_43_reg_3863 <= {{tmp_43_fu_2887_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_46_reg_3887 <= {{tmp_46_fu_2928_p1[16:11]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address0_local = zext_ln336_7_fu_2833_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address0_local = zext_ln332_7_fu_2730_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address0_local = zext_ln336_6_fu_2669_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address0_local = zext_ln332_6_fu_2540_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address0_local = zext_ln336_5_fu_2466_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address0_local = zext_ln332_5_fu_2355_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln336_4_fu_2230_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln332_4_fu_2102_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address1_local = zext_ln334_7_fu_2810_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address1_local = zext_ln330_3_reg_3363;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address1_local = zext_ln334_6_fu_2633_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address1_local = zext_ln330_2_reg_3343;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address1_local = zext_ln334_5_fu_2406_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address1_local = zext_ln330_1_reg_3277;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln334_4_fu_2188_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln330_fu_2083_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address0_local = zext_ln336_7_fu_2833_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address0_local = zext_ln332_7_fu_2730_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address0_local = zext_ln334_6_fu_2633_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address0_local = zext_ln336_5_reg_3505;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address0_local = zext_ln332_5_reg_3427;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address0_local = zext_ln334_4_reg_3302;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln330_3_fu_2276_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln330_1_fu_2133_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address1_local = zext_ln334_7_fu_2810_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address1_local = zext_ln336_6_reg_3647;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address1_local = zext_ln332_6_reg_3569;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address1_local = zext_ln334_5_reg_3485;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address1_local = zext_ln336_4_reg_3322;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address1_local = zext_ln332_4_reg_3262;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln330_2_fu_2251_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln330_fu_2083_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3150 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_3150_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_174;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1777_p0 = zext_ln336_11_fu_2839_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1777_p0 = zext_ln331_7_fu_2719_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1777_p0 = zext_ln332_11_fu_2683_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1777_p0 = zext_ln172_16_fu_2265_p1;
        end else begin
            grp_fu_1777_p0 = 'bx;
        end
    end else begin
        grp_fu_1777_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1782_p0 = zext_ln337_7_fu_2843_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1782_p0 = zext_ln333_7_fu_2736_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1782_p0 = zext_ln334_11_fu_2692_p1;
        end else begin
            grp_fu_1782_p0 = 'bx;
        end
    end else begin
        grp_fu_1782_p0 = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln335_3_fu_3044_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln337_3_fu_3052_p1;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln332_3_fu_3011_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln334_3_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln331_3_fu_3003_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln333_3_fu_3020_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln336_3_fu_3036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln335_2_fu_2995_p1;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln332_2_fu_2953_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln337_2_fu_2987_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln331_2_fu_2945_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln333_2_fu_2961_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln336_2_fu_2978_p1;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln335_1_fu_2904_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln337_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln331_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln336_1_fu_2912_p1;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln335_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln337_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln172_1_fu_2503_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_1_address1_local = zext_ln334_2_fu_2937_p1;
        end else if ((1'b1 == ap_condition_2166)) begin
            smem_1_address1_local = zext_ln332_1_fu_2863_p1;
        end else if ((1'b1 == ap_condition_2161)) begin
            smem_1_address1_local = zext_ln334_1_fu_2879_p1;
        end else if ((1'b1 == ap_condition_2157)) begin
            smem_1_address1_local = zext_ln333_1_fu_2871_p1;
        end else if ((1'b1 == ap_condition_2153)) begin
            smem_1_address1_local = zext_ln332_fu_2762_p1;
        end else if ((1'b1 == ap_condition_2148)) begin
            smem_1_address1_local = zext_ln334_fu_2778_p1;
        end else if ((1'b1 == ap_condition_2144)) begin
            smem_1_address1_local = zext_ln331_fu_2754_p1;
        end else if ((1'b1 == ap_condition_2140)) begin
            smem_1_address1_local = zext_ln333_fu_2770_p1;
        end else if ((1'b1 == ap_condition_2136)) begin
            smem_1_address1_local = zext_ln336_fu_2786_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln172_3_fu_2710_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln172_2_fu_2618_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address1_local = zext_ln172_fu_2486_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 ==ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_1_load_15_reg_3873;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_1_load_12_reg_3840;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_1_load_13_reg_3849;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_1_load_10_reg_3772;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_11_reg_3781;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_8_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_9_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1812;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_y_1_load_6_reg_3604;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_y_1_load_7_reg_3613;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_y_1_load_4_reg_3530;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_y_load_7_reg_3686;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d0_local = DATA_y_1_load_2_reg_3447;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d0_local = DATA_y_1_load_3_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = reg_1826;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d1_local = DATA_y_load_10_reg_3758;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d1_local = reg_1826;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d1_local = reg_1902;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = DATA_y_1_load_reg_3373;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = DATA_y_1_load_1_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d1_local = reg_1858;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_1_d1_local = reg_1844;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d1_local = reg_1812;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 ==ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) |((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg== 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg== 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln337_3_fu_3052_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln335_3_fu_3044_p1;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln331_3_fu_3003_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln333_3_fu_3020_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln334_3_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln336_3_fu_3036_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln332_3_fu_3011_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln335_2_fu_2995_p1;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln331_2_fu_2945_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln333_2_fu_2961_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln337_2_fu_2987_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln336_2_fu_2978_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln332_2_fu_2953_p1;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln331_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln337_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln336_1_fu_2912_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln335_1_fu_2904_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln337_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln335_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln172_1_fu_2503_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_2_address1_local = zext_ln334_2_fu_2937_p1;
        end else if ((1'b1 == ap_condition_2161)) begin
            smem_2_address1_local = zext_ln333_1_fu_2871_p1;
        end else if ((1'b1 == ap_condition_2175)) begin
            smem_2_address1_local = zext_ln334_1_fu_2879_p1;
        end else if ((1'b1 == ap_condition_2171)) begin
            smem_2_address1_local = zext_ln332_1_fu_2863_p1;
        end else if ((1'b1 == ap_condition_2153)) begin
            smem_2_address1_local = zext_ln331_fu_2754_p1;
        end else if ((1'b1 == ap_condition_2148)) begin
            smem_2_address1_local = zext_ln333_fu_2770_p1;
        end else if ((1'b1 == ap_condition_2144)) begin
            smem_2_address1_local = zext_ln334_fu_2778_p1;
        end else if ((1'b1 == ap_condition_2140)) begin
            smem_2_address1_local = zext_ln336_fu_2786_p1;
        end else if ((1'b1 == ap_condition_2136)) begin
            smem_2_address1_local = zext_ln332_fu_2762_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_2_address1_local = zext_ln172_3_fu_2710_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_2_address1_local = zext_ln172_2_fu_2618_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_2_address1_local = zext_ln172_fu_2486_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_1_load_15_reg_3873;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = reg_1902;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_1_load_12_reg_3840;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_1_load_13_reg_3849;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_1_load_10_reg_3772;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_1_load_8_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_1_load_9_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_1_load_11_reg_3781;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1812;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1858;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_y_1_load_4_reg_3530;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_y_1_load_7_reg_3613;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_y_load_7_reg_3686;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_y_1_load_6_reg_3604;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d0_local = DATA_y_1_load_3_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d0_local = DATA_y_1_load_2_reg_3447;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = reg_1826;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d1_local = DATA_y_load_10_reg_3758;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d1_local = reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d1_local = reg_1826;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = DATA_y_1_load_reg_3373;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = DATA_y_1_load_1_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d1_local = reg_1858;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_2_d1_local = reg_1844;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d1_local = reg_1812;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg== 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln337_3_fu_3052_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln335_3_fu_3044_p1;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln334_3_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln336_3_fu_3036_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln333_3_fu_3020_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln332_3_fu_3011_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln331_3_fu_3003_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln335_2_fu_2995_p1;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln337_2_fu_2987_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln336_2_fu_2978_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln333_2_fu_2961_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln332_2_fu_2953_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln331_2_fu_2945_p1;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln337_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln336_1_fu_2912_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln335_1_fu_2904_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln331_1_fu_2896_p1;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address0_local = zext_ln337_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address0_local = zext_ln335_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln172_1_fu_2503_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_3_address1_local = zext_ln334_2_fu_2937_p1;
        end else if ((1'b1 == ap_condition_2166)) begin
            smem_3_address1_local = zext_ln334_1_fu_2879_p1;
        end else if ((1'b1 == ap_condition_2175)) begin
            smem_3_address1_local = zext_ln333_1_fu_2871_p1;
        end else if ((1'b1 == ap_condition_2157)) begin
            smem_3_address1_local = zext_ln332_1_fu_2863_p1;
        end else if ((1'b1 == ap_condition_2153)) begin
            smem_3_address1_local = zext_ln334_fu_2778_p1;
        end else if ((1'b1 == ap_condition_2148)) begin
            smem_3_address1_local = zext_ln336_fu_2786_p1;
        end else if ((1'b1 == ap_condition_2144)) begin
            smem_3_address1_local = zext_ln333_fu_2770_p1;
        end else if ((1'b1 == ap_condition_2140)) begin
            smem_3_address1_local = zext_ln332_fu_2762_p1;
        end else if ((1'b1 == ap_condition_2136)) begin
            smem_3_address1_local = zext_ln331_fu_2754_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_3_address1_local = zext_ln172_3_fu_2710_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_3_address1_local = zext_ln172_2_fu_2618_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_3_address1_local = zext_ln172_fu_2486_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 ==ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_1_load_15_reg_3873;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = reg_1902;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_1_load_13_reg_3849;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_1_load_12_reg_3840;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_1_load_10_reg_3772;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_1_load_11_reg_3781;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1812;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_1_load_9_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_1_load_8_reg_3695;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = DATA_y_1_load_7_reg_3613;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = DATA_y_load_7_reg_3686;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = DATA_y_1_load_6_reg_3604;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = DATA_y_1_load_4_reg_3530;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d0_local = DATA_y_1_load_3_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d0_local = DATA_y_1_load_2_reg_3447;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d0_local = reg_1826;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d1_local = DATA_y_load_10_reg_3758;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d1_local = reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d1_local = reg_1826;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = DATA_y_1_load_1_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = DATA_y_1_load_reg_3373;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_d1_local = reg_1858;
    end else if (((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_3_d1_local = reg_1844;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_d1_local = reg_1812;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 ==ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg== 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln335_3_fu_3044_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln337_3_fu_3052_p1;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln333_3_fu_3020_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln332_3_fu_3011_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln336_3_fu_3036_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln331_3_fu_3003_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln334_3_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln335_2_fu_2995_p1;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln333_2_fu_2961_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln332_2_fu_2953_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln336_2_fu_2978_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln331_2_fu_2945_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln337_2_fu_2987_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln335_1_fu_2904_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln336_1_fu_2912_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln331_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln337_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address0_local = zext_ln335_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address0_local = zext_ln337_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln172_1_fu_2503_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_4_address1_local = zext_ln334_2_fu_2937_p1;
        end else if ((1'b1 == ap_condition_2166)) begin
            smem_4_address1_local = zext_ln333_1_fu_2871_p1;
        end else if ((1'b1 == ap_condition_2161)) begin
            smem_4_address1_local = zext_ln332_1_fu_2863_p1;
        end else if ((1'b1 == ap_condition_2171)) begin
            smem_4_address1_local = zext_ln334_1_fu_2879_p1;
        end else if ((1'b1 == ap_condition_2153)) begin
            smem_4_address1_local = zext_ln333_fu_2770_p1;
        end else if ((1'b1 == ap_condition_2148)) begin
            smem_4_address1_local = zext_ln332_fu_2762_p1;
        end else if ((1'b1 == ap_condition_2144)) begin
            smem_4_address1_local = zext_ln336_fu_2786_p1;
        end else if ((1'b1 == ap_condition_2140)) begin
            smem_4_address1_local = zext_ln331_fu_2754_p1;
        end else if ((1'b1 == ap_condition_2136)) begin
            smem_4_address1_local = zext_ln334_fu_2778_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_4_address1_local = zext_ln172_3_fu_2710_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_4_address1_local = zext_ln172_2_fu_2618_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_4_address1_local = zext_ln172_fu_2486_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_1_load_15_reg_3873;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_1_load_13_reg_3849;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_1_load_12_reg_3840;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_1_load_10_reg_3772;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_1_load_9_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1812;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_1_load_8_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_1_load_11_reg_3781;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = DATA_y_1_load_6_reg_3604;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = DATA_y_load_7_reg_3686;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = DATA_y_1_load_4_reg_3530;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = DATA_y_1_load_7_reg_3613;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d0_local = DATA_y_1_load_2_reg_3447;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d0_local = DATA_y_1_load_3_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = reg_1826;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d1_local = DATA_y_load_10_reg_3758;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d1_local = reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d1_local = reg_1826;
    end else if ((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = DATA_y_1_load_1_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = DATA_y_1_load_reg_3373;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_d1_local = reg_1858;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_4_d1_local = reg_1844;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_d1_local = reg_1812;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657== 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg== 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 ==ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln335_3_fu_3044_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln337_3_fu_3052_p1;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln336_3_fu_3036_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln331_3_fu_3003_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln332_3_fu_3011_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln334_3_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln333_3_fu_3020_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln335_2_fu_2995_p1;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln336_2_fu_2978_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln331_2_fu_2945_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln332_2_fu_2953_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln337_2_fu_2987_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln333_2_fu_2961_p1;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln336_1_fu_2912_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln331_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln335_1_fu_2904_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln337_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln335_fu_2847_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln337_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln172_1_fu_2503_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_address1_local = zext_ln334_2_fu_2937_p1;
        end else if ((1'b1 == ap_condition_2175)) begin
            smem_address1_local = zext_ln332_1_fu_2863_p1;
        end else if ((1'b1 == ap_condition_2157)) begin
            smem_address1_local = zext_ln334_1_fu_2879_p1;
        end else if ((1'b1 == ap_condition_2171)) begin
            smem_address1_local = zext_ln333_1_fu_2871_p1;
        end else if ((1'b1 == ap_condition_2153)) begin
            smem_address1_local = zext_ln336_fu_2786_p1;
        end else if ((1'b1 == ap_condition_2148)) begin
            smem_address1_local = zext_ln331_fu_2754_p1;
        end else if ((1'b1 == ap_condition_2144)) begin
            smem_address1_local = zext_ln332_fu_2762_p1;
        end else if ((1'b1 == ap_condition_2140)) begin
            smem_address1_local = zext_ln334_fu_2778_p1;
        end else if ((1'b1 == ap_condition_2136)) begin
            smem_address1_local = zext_ln333_fu_2770_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln172_3_fu_2710_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln172_2_fu_2618_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln172_fu_2486_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_1_load_15_reg_3873;
    end else if ((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_1_load_12_reg_3840;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_1_load_13_reg_3849;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_1_load_10_reg_3772;
    end else if ((~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1812;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_1_load_8_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_1_load_11_reg_3781;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_1_load_9_reg_3704;
    end else if ((~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_y_load_7_reg_3686;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_y_1_load_4_reg_3530;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_y_1_load_6_reg_3604;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_y_1_load_7_reg_3613;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d0_local = DATA_y_1_load_2_reg_3447;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d0_local = DATA_y_1_load_3_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = reg_1826;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d1_local = DATA_y_load_10_reg_3758;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d1_local = reg_1826;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d1_local = reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = DATA_y_1_load_reg_3373;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = DATA_y_1_load_1_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = reg_1858;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d1_local = reg_1844;
    end else if (((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d1_local = reg_1812;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3657 == 3'd2) & ~(trunc_ln172_3_reg_3657 == 3'd1) & ~(trunc_ln172_3_reg_3657 == 3'd0) & ~(trunc_ln172_3_reg_3657 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3657 == 3'd3) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_3226_pp0_iter3_reg== 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_3_reg_3657 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage3) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln325_fu_2026_p2 = (tid_1_reg_3143 + 7'd4);
assign add_ln331_1_fu_2238_p2 = ($signed(zext_ln172_10_fu_2235_p1) + $signed(9'd288));
assign add_ln331_2_fu_2474_p2 = ($signed(zext_ln172_14_fu_2471_p1) + $signed(9'd288));
assign add_ln331_3_fu_2678_p2 = (offset_3_reg_3167_pp0_iter3_reg + 32'd288);
assign add_ln331_fu_2089_p2 = ($signed(zext_ln172_6_fu_2054_p1) + $signed(9'd288));
assign add_ln332_3_fu_2596_p2 = (offset_3_reg_3167_pp0_iter3_reg + 32'd72);
assign add_ln333_1_fu_2360_p2 = ($signed(zext_ln172_10_reg_3332) + $signed(9'd360));
assign add_ln333_2_fu_2480_p2 = ($signed(zext_ln172_14_fu_2471_p1) + $signed(9'd360));
assign add_ln333_3_fu_2687_p2 = (offset_3_reg_3167_pp0_iter3_reg + 32'd360);
assign add_ln333_fu_2176_p2 = ($signed(zext_ln172_6_reg_3236) + $signed(9'd360));
assign add_ln334_1_fu_2411_p2 = ($signed(zext_ln172_9_reg_3411) + $signed(8'd144));
assign add_ln334_2_fu_2564_p2 = ($signed(zext_ln172_13_fu_2511_p1) + $signed(8'd144));
assign add_ln334_3_fu_2601_p2 = (offset_3_reg_3167_pp0_iter3_reg + 32'd144);
assign add_ln334_fu_2193_p2 = ($signed(zext_ln172_5_reg_3230) + $signed(8'd144));
assign add_ln335_1_fu_2365_p2 = ($signed(zext_ln172_9_fu_2326_p1) + $signed(8'd176));
assign add_ln335_2_fu_2590_p2 = ($signed(zext_ln172_13_fu_2511_p1) + $signed(8'd176));
assign add_ln335_3_fu_2696_p2 = (offset_3_reg_3167_pp0_iter3_reg + 32'd432);
assign add_ln335_fu_2218_p2 = ($signed(zext_ln172_5_reg_3230) + $signed(8'd176));
assign add_ln336_3_fu_2744_p2 = (offset_3_reg_3167_pp0_iter3_reg + 32'd216);
assign add_ln337_3_fu_2749_p2 = (offset_3_reg_3167_pp0_iter3_reg + 32'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
always @ (*) begin
    ap_condition_2136 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2140 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2144 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2148 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2153 = (~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3218_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2157 = ((1'b0 == ap_block_pp0_stage8) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_2161 = ((1'b0 == ap_block_pp0_stage8) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_2166 = (~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_2171 = ((1'b0 == ap_block_pp0_stage8) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_2175 = ((1'b0 == ap_block_pp0_stage8) & (trunc_ln172_1_reg_3222_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign grp_fu_1777_p1 = 65'd6871947674;
assign grp_fu_1782_p1 = 65'd6871947674;
assign grp_fu_1787_p0 = grp_fu_1787_p00;
assign grp_fu_1787_p00 = add_ln335_3_reg_3681;
assign grp_fu_1787_p1 = 65'd6871947674;
assign grp_fu_1969_p0 = {{zext_ln326_fu_1937_p1[31:3]}, {or_ln4_fu_1949_p3}};
assign grp_fu_1969_p1 = 32'd5;
assign grp_fu_1975_p1 = 6'd5;
assign grp_fu_1997_p0 = {{tmp_s_fu_1980_p4}, {1'd1}};
assign grp_fu_1997_p1 = 6'd5;
assign grp_fu_2020_p0 = {{tmp_20_fu_2003_p4}, {2'd2}};
assign grp_fu_2020_p1 = 6'd5;
assign grp_fu_3060_p0 = grp_fu_3060_p00;
assign grp_fu_3060_p00 = offset_2_reg_3209_pp0_iter2_reg;
assign grp_fu_3060_p1 = 10'd504;
assign grp_fu_3060_p2 = 21'd1639;
assign grp_fu_3069_p0 = grp_fu_3069_p00;
assign grp_fu_3069_p00 = offset_reg_3154_pp0_iter2_reg;
assign grp_fu_3069_p1 = 8'd72;
assign grp_fu_3069_p2 = 17'd410;
assign grp_fu_3078_p0 = zext_ln172_6_reg_3236;
assign grp_fu_3078_p1 = 9'd216;
assign grp_fu_3078_p2 = 19'd820;
assign grp_fu_3086_p0 = grp_fu_3086_p00;
assign grp_fu_3086_p00 = offset_reg_3154_pp0_iter3_reg;
assign grp_fu_3086_p1 = 10'd504;
assign grp_fu_3086_p2 = 21'd1639;
assign grp_fu_3095_p0 = zext_ln172_9_reg_3411;
assign grp_fu_3095_p1 = 8'd72;
assign grp_fu_3095_p2 = 17'd410;
assign grp_fu_3103_p0 = zext_ln172_10_reg_3332;
assign grp_fu_3103_p1 = 9'd216;
assign grp_fu_3103_p2 = 19'd820;
assign grp_fu_3111_p0 = grp_fu_3111_p00;
assign grp_fu_3111_p00 = offset_1_reg_3188_pp0_iter3_reg;
assign grp_fu_3111_p1 = 10'd504;
assign grp_fu_3111_p2 = 21'd1639;
assign grp_fu_3120_p0 = zext_ln172_13_reg_3554;
assign grp_fu_3120_p1 = 8'd72;
assign grp_fu_3120_p2 = 17'd410;
assign grp_fu_3128_p0 = zext_ln172_14_reg_3515;
assign grp_fu_3128_p1 = 9'd216;
assign grp_fu_3128_p2 = 19'd820;
assign mul_ln172_1_fu_2110_p0 = mul_ln172_1_fu_2110_p00;
assign mul_ln172_1_fu_2110_p00 = offset_1_reg_3188_pp0_iter2_reg;
assign mul_ln172_1_fu_2110_p1 = 13'd103;
assign mul_ln172_2_fu_2141_p0 = mul_ln172_2_fu_2141_p00;
assign mul_ln172_2_fu_2141_p00 = offset_2_reg_3209_pp0_iter2_reg;
assign mul_ln172_2_fu_2141_p1 = 13'd103;
assign mul_ln172_fu_2060_p0 = mul_ln172_fu_2060_p00;
assign mul_ln172_fu_2060_p00 = offset_reg_3154_pp0_iter2_reg;
assign mul_ln172_fu_2060_p1 = 13'd103;
assign mul_ln331_1_fu_2332_p0 = mul_ln331_1_fu_2332_p00;
assign mul_ln331_1_fu_2332_p00 = add_ln331_1_reg_3338;
assign mul_ln331_1_fu_2332_p1 = 19'd820;
assign mul_ln331_2_fu_2517_p0 = mul_ln331_2_fu_2517_p00;
assign mul_ln331_2_fu_2517_p00 = add_ln331_2_reg_3520;
assign mul_ln331_2_fu_2517_p1 = 19'd820;
assign mul_ln331_fu_2160_p0 = mul_ln331_fu_2160_p00;
assign mul_ln331_fu_2160_p00 = add_ln331_reg_3257;
assign mul_ln331_fu_2160_p1 = 19'd820;
assign mul_ln333_1_fu_2383_p0 = mul_ln333_1_fu_2383_p00;
assign mul_ln333_1_fu_2383_p00 = add_ln333_1_reg_3437;
assign mul_ln333_1_fu_2383_p1 = 19'd820;
assign mul_ln333_2_fu_2548_p0 = mul_ln333_2_fu_2548_p00;
assign mul_ln333_2_fu_2548_p00 = add_ln333_2_reg_3525;
assign mul_ln333_2_fu_2548_p1 = 19'd820;
assign mul_ln333_fu_2287_p0 = mul_ln333_fu_2287_p00;
assign mul_ln333_fu_2287_p00 = add_ln333_reg_3297;
assign mul_ln333_fu_2287_p1 = 19'd820;
assign mul_ln334_1_fu_2420_p0 = mul_ln334_1_fu_2420_p00;
assign mul_ln334_1_fu_2420_p00 = add_ln334_1_fu_2411_p2;
assign mul_ln334_1_fu_2420_p1 = 17'd410;
assign mul_ln334_2_fu_2574_p0 = mul_ln334_2_fu_2574_p00;
assign mul_ln334_2_fu_2574_p00 = add_ln334_2_fu_2564_p2;
assign mul_ln334_2_fu_2574_p1 = 17'd410;
assign mul_ln334_fu_2202_p0 = mul_ln334_fu_2202_p00;
assign mul_ln334_fu_2202_p00 = add_ln334_fu_2193_p2;
assign mul_ln334_fu_2202_p1 = 17'd410;
assign mul_ln335_1_fu_2443_p0 = mul_ln335_1_fu_2443_p00;
assign mul_ln335_1_fu_2443_p00 = $unsigned(sext_ln335_1_fu_2436_p1);
assign mul_ln335_1_fu_2443_p1 = 19'd820;
assign mul_ln335_2_fu_2646_p0 = mul_ln335_2_fu_2646_p00;
assign mul_ln335_2_fu_2646_p00 = $unsigned(sext_ln335_2_fu_2639_p1);
assign mul_ln335_2_fu_2646_p1 = 19'd820;
assign mul_ln335_fu_2310_p0 = mul_ln335_fu_2310_p00;
assign mul_ln335_fu_2310_p00 = $unsigned(sext_ln335_fu_2303_p1);
assign mul_ln335_fu_2310_p1 = 19'd820;
assign offset_1_fu_1989_p3 = {{tmp_s_fu_1980_p4}, {1'd1}};
assign offset_2_fu_2012_p3 = {{tmp_20_fu_2003_p4}, {2'd2}};
assign offset_3_fu_1957_p5 = {{zext_ln326_fu_1937_p1[31:3]}, {or_ln4_fu_1949_p3}};
assign offset_fu_1933_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln1_fu_2181_p3 = {{offset_reg_3154_pp0_iter3_reg}, {2'd1}};
assign or_ln2_fu_2223_p3 = {{offset_reg_3154_pp0_iter3_reg}, {2'd3}};
assign or_ln332_1_fu_2348_p3 = {{tmp_s_reg_3180_pp0_iter2_reg}, {3'd6}};
assign or_ln332_2_fu_2533_p3 = {{tmp_20_reg_3197_pp0_iter3_reg}, {4'd10}};
assign or_ln332_3_fu_2723_p3 = {{tmp_20_reg_3197_pp0_iter3_reg}, {4'd14}};
assign or_ln334_1_fu_2399_p3 = {{tmp_s_reg_3180_pp0_iter3_reg}, {3'd5}};
assign or_ln334_2_fu_2626_p3 = {{tmp_20_reg_3197_pp0_iter3_reg}, {4'd9}};
assign or_ln334_3_fu_2803_p3 = {{tmp_20_reg_3197_pp0_iter3_reg}, {4'd13}};
assign or_ln336_1_fu_2459_p3 = {{tmp_s_reg_3180_pp0_iter3_reg}, {3'd7}};
assign or_ln336_2_fu_2662_p3 = {{tmp_20_reg_3197_pp0_iter3_reg}, {4'd11}};
assign or_ln336_3_fu_2826_p3 = {{tmp_20_reg_3197_pp0_iter3_reg}, {4'd15}};
assign or_ln3_fu_2244_p3 = {{tmp_20_reg_3197_pp0_iter2_reg}, {4'd8}};
assign or_ln4_fu_1949_p3 = {{tmp_52_fu_1941_p3}, {2'd3}};
assign or_ln_fu_2095_p3 = {{offset_reg_3154_pp0_iter2_reg}, {2'd2}};
assign sext_ln335_1_fu_2436_p1 = $signed(add_ln335_1_reg_3442);
assign sext_ln335_2_fu_2639_p1 = $signed(add_ln335_2_reg_3589);
assign sext_ln335_fu_2303_p1 = $signed(add_ln335_reg_3317);
assign shl_ln330_1_fu_2126_p3 = {{tmp_s_reg_3180_pp0_iter2_reg}, {3'd4}};
assign shl_ln330_2_fu_2269_p3 = {{tmp_20_reg_3197_pp0_iter2_reg}, {4'd12}};
assign shl_ln8_fu_2076_p3 = {{offset_reg_3154_pp0_iter2_reg}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = smem_2_d1_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = smem_3_d1_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_d1 = smem_4_d1_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_4_we1 = smem_4_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_20_fu_2003_p4 = {{tid_1_reg_3143[5:2]}};
assign tmp_30_fu_2371_p1 = grp_fu_3069_p3;
assign tmp_34_fu_2494_p1 = grp_fu_3078_p3;
assign tmp_35_fu_2606_p1 = grp_fu_3086_p3;
assign tmp_38_fu_2701_p1 = grp_fu_3095_p3;
assign tmp_42_fu_2794_p1 = grp_fu_3103_p3;
assign tmp_43_fu_2887_p1 = grp_fu_3111_p3;
assign tmp_46_fu_2928_p1 = grp_fu_3120_p3;
assign tmp_50_fu_2969_p1 = grp_fu_3128_p3;
assign tmp_50_fu_2969_p4 = {{tmp_50_fu_2969_p1[18:12]}};
assign tmp_51_fu_2256_p1 = grp_fu_3060_p3;
assign tmp_52_fu_1941_p3 = ap_sig_allocacmp_tid_1[32'd2];
assign tmp_s_fu_1980_p4 = {{tid_1_reg_3143[5:1]}};
assign trunc_ln172_1_fu_2040_p1 = grp_fu_1997_p2[2:0];
assign trunc_ln172_2_fu_2044_p1 = grp_fu_2020_p2[2:0];
assign trunc_ln172_3_fu_2674_p1 = grp_fu_1969_p2[2:0];
assign trunc_ln172_fu_2036_p1 = grp_fu_1975_p2[2:0];
assign zext_ln172_10_fu_2235_p1 = offset_1_reg_3188_pp0_iter2_reg;
assign zext_ln172_13_fu_2511_p1 = offset_2_reg_3209_pp0_iter3_reg;
assign zext_ln172_14_fu_2471_p1 = offset_2_reg_3209_pp0_iter2_reg;
assign zext_ln172_16_fu_2265_p1 = offset_3_reg_3167_pp0_iter3_reg;
assign zext_ln172_1_fu_2503_p1 = tmp_36_reg_3272;
assign zext_ln172_2_fu_2618_p1 = tmp_44_reg_3287;
assign zext_ln172_3_fu_2710_p1 = reg_1840;
assign zext_ln172_5_fu_2051_p1 = offset_reg_3154_pp0_iter2_reg;
assign zext_ln172_6_fu_2054_p1 = offset_reg_3154_pp0_iter2_reg;
assign zext_ln172_9_fu_2326_p1 = offset_1_reg_3188_pp0_iter2_reg;
assign zext_ln172_fu_2486_p1 = tmp_28_reg_3242;
assign zext_ln326_fu_1937_p1 = offset_fu_1933_p1;
assign zext_ln330_1_fu_2133_p1 = shl_ln330_1_fu_2126_p3;
assign zext_ln330_2_fu_2251_p1 = or_ln3_fu_2244_p3;
assign zext_ln330_3_fu_2276_p1 = shl_ln330_2_fu_2269_p3;
assign zext_ln330_fu_2083_p1 = shl_ln8_fu_2076_p3;
assign zext_ln331_1_fu_2896_p1 = tmp_37_reg_3422;
assign zext_ln331_2_fu_2945_p1 = tmp_45_reg_3564;
assign zext_ln331_3_fu_3003_p1 = tmp_54_reg_3800;
assign zext_ln331_7_fu_2719_p1 = add_ln331_3_reg_3661;
assign zext_ln331_fu_2754_p1 = tmp_29_reg_3292;
assign zext_ln332_11_fu_2683_p1 = add_ln332_3_reg_3594;
assign zext_ln332_1_fu_2863_p1 = tmp_38_reg_3713;
assign zext_ln332_2_fu_2953_p1 = tmp_46_reg_3887;
assign zext_ln332_3_fu_3011_p1 = reg_1840;
assign zext_ln332_4_fu_2102_p1 = or_ln_fu_2095_p3;
assign zext_ln332_5_fu_2355_p1 = or_ln332_1_fu_2348_p3;
assign zext_ln332_6_fu_2540_p1 = or_ln332_2_fu_2533_p3;
assign zext_ln332_7_fu_2730_p1 = or_ln332_3_fu_2723_p3;
assign zext_ln332_fu_2762_p1 = tmp_30_reg_3465;
assign zext_ln333_1_fu_2871_p1 = tmp_39_reg_3480;
assign zext_ln333_2_fu_2961_p1 = tmp_47_reg_3579;
assign zext_ln333_3_fu_3020_p1 = tmp_56_reg_3805;
assign zext_ln333_7_fu_2736_p1 = add_ln333_3_reg_3671;
assign zext_ln333_fu_2770_p1 = tmp_31_reg_3396;
assign zext_ln334_11_fu_2692_p1 = add_ln334_3_reg_3599;
assign zext_ln334_1_fu_2879_p1 = tmp_40_reg_3490;
assign zext_ln334_2_fu_2937_p1 = tmp_48_reg_3584;
assign zext_ln334_3_fu_3028_p1 = tmp_57_reg_3748;
assign zext_ln334_4_fu_2188_p1 = or_ln1_fu_2181_p3;
assign zext_ln334_5_fu_2406_p1 = or_ln334_1_fu_2399_p3;
assign zext_ln334_6_fu_2633_p1 = or_ln334_2_fu_2626_p3;
assign zext_ln334_7_fu_2810_p1 = or_ln334_3_fu_2803_p3;
assign zext_ln334_fu_2778_p1 = tmp_32_reg_3307;
assign zext_ln335_1_fu_2904_p1 = tmp_41_reg_3500;
assign zext_ln335_2_fu_2995_p1 = tmp_49_reg_3642;
assign zext_ln335_3_fu_3044_p1 = tmp_58_reg_3820;
assign zext_ln335_fu_2847_p1 = tmp_33_reg_3406;
assign zext_ln336_11_fu_2839_p1 = add_ln336_3_reg_3767;
assign zext_ln336_1_fu_2912_p1 = tmp_42_reg_3795;
assign zext_ln336_2_fu_2978_p1 = tmp_50_fu_2969_p4;
assign zext_ln336_3_fu_3036_p1 = tmp_59_reg_3868;
assign zext_ln336_4_fu_2230_p1 = or_ln2_fu_2223_p3;
assign zext_ln336_5_fu_2466_p1 = or_ln336_1_fu_2459_p3;
assign zext_ln336_6_fu_2669_p1 = or_ln336_2_fu_2662_p3;
assign zext_ln336_7_fu_2833_p1 = or_ln336_3_fu_2826_p3;
assign zext_ln336_fu_2786_p1 = tmp_34_reg_3539;
assign zext_ln337_1_fu_2920_p1 = tmp_43_reg_3863;
assign zext_ln337_2_fu_2987_p1 = tmp_51_reg_3353;
assign zext_ln337_3_fu_3052_p1 = tmp_60_reg_3882;
assign zext_ln337_7_fu_2843_p1 = add_ln337_3_reg_3790;
assign zext_ln337_fu_2855_p1 = tmp_35_reg_3622;
always @ (posedge ap_clk) begin
    offset_1_reg_3188[0] <= 1'b1;
    offset_1_reg_3188_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_3188_pp0_iter2_reg[0] <= 1'b1;
    offset_1_reg_3188_pp0_iter3_reg[0] <= 1'b1;
    offset_2_reg_3209[1:0] <= 2'b10;
    offset_2_reg_3209_pp0_iter1_reg[1:0] <= 2'b10;
    offset_2_reg_3209_pp0_iter2_reg[1:0] <= 2'b10;
    offset_2_reg_3209_pp0_iter3_reg[1:0] <= 2'b10;
    zext_ln172_5_reg_3230[7:6] <= 2'b00;
    zext_ln172_6_reg_3236[8:6] <= 3'b000;
    zext_ln332_4_reg_3262[1:0] <= 2'b10;
    zext_ln332_4_reg_3262[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln330_1_reg_3277[2:0] <= 3'b100;
    zext_ln330_1_reg_3277[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln334_4_reg_3302[1:0] <= 2'b01;
    zext_ln334_4_reg_3302[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln336_4_reg_3322[1:0] <= 2'b11;
    zext_ln336_4_reg_3322[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_10_reg_3332[0] <= 1'b1;
    zext_ln172_10_reg_3332[8:6] <= 3'b000;
    add_ln331_1_reg_3338[0] <= 1'b1;
    zext_ln330_2_reg_3343[3:0] <= 4'b1000;
    zext_ln330_2_reg_3343[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln330_3_reg_3363[3:0] <= 4'b1100;
    zext_ln330_3_reg_3363[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_9_reg_3411[0] <= 1'b1;
    zext_ln172_9_reg_3411[7:6] <= 2'b00;
    zext_ln332_5_reg_3427[2:0] <= 3'b110;
    zext_ln332_5_reg_3427[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln333_1_reg_3437[0] <= 1'b1;
    add_ln335_1_reg_3442[0] <= 1'b1;
    zext_ln334_5_reg_3485[2:0] <= 3'b101;
    zext_ln334_5_reg_3485[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln336_5_reg_3505[2:0] <= 3'b111;
    zext_ln336_5_reg_3505[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_14_reg_3515[1:0] <= 2'b10;
    zext_ln172_14_reg_3515[8:6] <= 3'b000;
    add_ln331_2_reg_3520[1:0] <= 2'b10;
    add_ln333_2_reg_3525[1:0] <= 2'b10;
    zext_ln172_13_reg_3554[1:0] <= 2'b10;
    zext_ln172_13_reg_3554[7:6] <= 2'b00;
    zext_ln332_6_reg_3569[3:0] <= 4'b1010;
    zext_ln332_6_reg_3569[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln335_2_reg_3589[1:0] <= 2'b10;
    zext_ln336_6_reg_3647[3:0] <= 4'b1011;
    zext_ln336_6_reg_3647[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 