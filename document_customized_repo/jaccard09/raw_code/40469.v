module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0); 
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
output  [5:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
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
reg   [0:0] tmp_reg_3728;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_3719;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_3719_pp0_iter1_reg;
reg   [6:0] tid_2_reg_3719_pp0_iter2_reg;
reg   [6:0] tid_2_reg_3719_pp0_iter3_reg;
reg   [6:0] tid_2_reg_3719_pp0_iter4_reg;
reg   [6:0] tid_2_reg_3719_pp0_iter5_reg;
reg   [6:0] tid_2_reg_3719_pp0_iter6_reg;
reg   [6:0] tid_2_reg_3719_pp0_iter7_reg;
reg   [0:0] tmp_reg_3728_pp0_iter1_reg;
reg   [0:0] tmp_reg_3728_pp0_iter2_reg;
reg   [0:0] tmp_reg_3728_pp0_iter3_reg;
reg   [0:0] tmp_reg_3728_pp0_iter4_reg;
reg   [0:0] tmp_reg_3728_pp0_iter5_reg;
reg   [0:0] tmp_reg_3728_pp0_iter6_reg;
wire   [2:0] tmp_81_fu_2061_p4;
reg   [2:0] tmp_81_reg_3732;
wire   [8:0] offset_fu_2075_p3;
reg   [8:0] offset_reg_3737;
reg   [8:0] offset_reg_3737_pp0_iter1_reg;
reg   [8:0] offset_reg_3737_pp0_iter2_reg;
reg   [8:0] offset_reg_3737_pp0_iter3_reg;
reg   [8:0] offset_reg_3737_pp0_iter4_reg;
reg   [8:0] offset_reg_3737_pp0_iter5_reg;
wire   [8:0] offset_1_fu_2098_p4;
reg   [8:0] offset_1_reg_3744;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_1_reg_3744_pp0_iter1_reg;
reg   [8:0] offset_1_reg_3744_pp0_iter2_reg;
reg   [8:0] offset_1_reg_3744_pp0_iter3_reg;
reg   [8:0] offset_1_reg_3744_pp0_iter4_reg;
reg   [8:0] offset_1_reg_3744_pp0_iter5_reg;
reg   [5:0] tmp_82_reg_3751;
wire   [3:0] trunc_ln172_fu_2148_p1;
reg   [3:0] trunc_ln172_reg_3756;
reg   [5:0] tmp_91_reg_4288;
wire   [3:0] trunc_ln172_1_fu_2369_p1;
reg   [3:0] trunc_ln172_1_reg_4293;
wire   [63:0] tmp_s_fu_2373_p29;
reg   [63:0] tmp_s_reg_4305;
wire   [63:0] tmp_15_fu_2432_p29;
reg   [63:0] tmp_15_reg_4310;
wire   [63:0] tmp_16_fu_2491_p29;
reg   [63:0] tmp_16_reg_4315;
wire   [63:0] tmp_17_fu_2550_p29;
reg   [63:0] tmp_17_reg_4320;
wire   [63:0] tmp_18_fu_2609_p29;
reg   [63:0] tmp_18_reg_4325;
wire   [63:0] tmp_19_fu_2668_p29;
reg   [63:0] tmp_19_reg_4330;
wire   [63:0] tmp_20_fu_2727_p29;
reg   [63:0] tmp_20_reg_4335;
wire   [63:0] tmp_21_fu_2786_p29;
reg   [63:0] tmp_21_reg_4340;
wire   [63:0] tmp_22_fu_3075_p29;
reg   [63:0] tmp_22_reg_4865;
reg   [4:0] tmp_23_reg_4870;
wire   [63:0] tmp_24_fu_3143_p29;
reg   [63:0] tmp_24_reg_4876;
wire   [63:0] tmp_25_fu_3202_p29;
reg   [63:0] tmp_25_reg_4881;
wire   [63:0] tmp_26_fu_3261_p29;
reg   [63:0] tmp_26_reg_4886;
wire   [63:0] tmp_27_fu_3320_p29;
reg   [63:0] tmp_27_reg_4891;
wire   [63:0] tmp_28_fu_3379_p29;
reg   [63:0] tmp_28_reg_4896;
wire   [63:0] tmp_29_fu_3438_p29;
reg   [63:0] tmp_29_reg_4901;
wire   [63:0] tmp_30_fu_3497_p29;
reg   [63:0] tmp_30_reg_4906;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_2_fu_2152_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_2177_p1;
wire   [63:0] zext_ln316_fu_2203_p1;
wire   [63:0] zext_ln317_fu_2229_p1;
wire   [63:0] zext_ln318_fu_2255_p1;
wire   [63:0] zext_ln319_fu_2281_p1;
wire   [63:0] zext_ln320_fu_2307_p1;
wire   [63:0] zext_ln321_fu_2333_p1;
wire   [63:0] zext_ln172_5_fu_2845_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_1_fu_2870_p1;
wire   [63:0] zext_ln316_1_fu_2896_p1;
wire   [63:0] zext_ln317_1_fu_2922_p1;
wire   [63:0] zext_ln318_1_fu_2948_p1;
wire   [63:0] zext_ln319_1_fu_2974_p1;
wire   [63:0] zext_ln320_1_fu_3000_p1;
wire   [63:0] zext_ln321_1_fu_3026_p1;
wire   [63:0] zext_ln314_fu_3051_p1;
wire   [63:0] zext_ln315_2_fu_3067_p1;
wire   [63:0] zext_ln314_1_fu_3563_p1;
wire   [63:0] zext_ln315_3_fu_3578_p1;
reg   [6:0] tid_fu_148;
wire   [6:0] add_ln309_fu_2113_p2;
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
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
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
wire   [5:0] trunc_ln312_fu_2071_p1;
wire   [8:0] grp_fu_2083_p0;
wire   [4:0] grp_fu_2083_p1;
wire   [4:0] tmp_90_fu_2089_p4;
wire   [8:0] grp_fu_2107_p0;
wire   [4:0] grp_fu_2107_p1;
wire   [8:0] mul_ln172_fu_2132_p0;
wire   [10:0] mul_ln172_fu_2132_p1;
wire   [18:0] mul_ln172_fu_2132_p2;
wire   [3:0] grp_fu_2083_p2;
wire   [20:0] tmp_83_fu_2168_p1;
wire  signed [20:0] grp_fu_3586_p3;
wire   [6:0] tmp_83_fu_2168_p4;
wire   [20:0] tmp_84_fu_2194_p1;
wire  signed [20:0] grp_fu_3595_p3;
wire   [6:0] tmp_84_fu_2194_p4;
wire   [20:0] tmp_85_fu_2220_p1;
wire  signed [20:0] grp_fu_3604_p3;
wire   [6:0] tmp_85_fu_2220_p4;
wire   [20:0] tmp_86_fu_2246_p1;
wire  signed [20:0] grp_fu_3613_p3;
wire   [6:0] tmp_86_fu_2246_p4;
wire   [20:0] tmp_87_fu_2272_p1;
wire  signed [20:0] grp_fu_3622_p3;
wire   [6:0] tmp_87_fu_2272_p4;
wire   [20:0] tmp_88_fu_2298_p1;
wire  signed [20:0] grp_fu_3631_p3;
wire   [6:0] tmp_88_fu_2298_p4;
wire   [20:0] tmp_89_fu_2324_p1;
wire  signed [20:0] grp_fu_3640_p3;
wire   [6:0] tmp_89_fu_2324_p4;
wire   [8:0] mul_ln172_1_fu_2353_p0;
wire   [10:0] mul_ln172_1_fu_2353_p1;
wire   [18:0] mul_ln172_1_fu_2353_p2;
wire   [3:0] grp_fu_2107_p2;
wire   [63:0] tmp_s_fu_2373_p27;
wire   [63:0] tmp_15_fu_2432_p27;
wire   [63:0] tmp_16_fu_2491_p27;
wire   [63:0] tmp_17_fu_2550_p27;
wire   [63:0] tmp_18_fu_2609_p27;
wire   [63:0] tmp_19_fu_2668_p27;
wire   [63:0] tmp_20_fu_2727_p27;
wire   [63:0] tmp_21_fu_2786_p27;
wire   [20:0] tmp_92_fu_2861_p1;
wire  signed [20:0] grp_fu_3649_p3;
wire   [6:0] tmp_92_fu_2861_p4;
wire   [20:0] tmp_93_fu_2887_p1;
wire  signed [20:0] grp_fu_3658_p3;
wire   [6:0] tmp_93_fu_2887_p4;
wire   [20:0] tmp_94_fu_2913_p1;
wire  signed [20:0] grp_fu_3667_p3;
wire   [6:0] tmp_94_fu_2913_p4;
wire   [20:0] tmp_95_fu_2939_p1;
wire  signed [20:0] grp_fu_3676_p3;
wire   [6:0] tmp_95_fu_2939_p4;
wire   [20:0] tmp_96_fu_2965_p1;
wire  signed [20:0] grp_fu_3685_p3;
wire   [6:0] tmp_96_fu_2965_p4;
wire   [20:0] tmp_97_fu_2991_p1;
wire  signed [20:0] grp_fu_3694_p3;
wire   [6:0] tmp_97_fu_2991_p4;
wire   [20:0] tmp_98_fu_3017_p1;
wire  signed [20:0] grp_fu_3703_p3;
wire   [6:0] tmp_98_fu_3017_p4;
wire   [6:0] shl_ln314_fu_3046_p2;
wire   [5:0] trunc_ln314_fu_3043_p1;
wire   [6:0] or_ln_fu_3059_p3;
wire   [63:0] tmp_22_fu_3075_p27;
wire   [63:0] tmp_24_fu_3143_p27;
wire   [63:0] tmp_25_fu_3202_p27;
wire   [63:0] tmp_26_fu_3261_p27;
wire   [63:0] tmp_27_fu_3320_p27;
wire   [63:0] tmp_28_fu_3379_p27;
wire   [63:0] tmp_29_fu_3438_p27;
wire   [63:0] tmp_30_fu_3497_p27;
wire   [6:0] or_ln3_fu_3556_p3;
wire   [6:0] or_ln315_1_fu_3571_p3;
wire   [8:0] grp_fu_3586_p0;
wire   [9:0] zext_ln172_fu_2123_p1;
wire   [5:0] grp_fu_3586_p1;
wire   [10:0] grp_fu_3586_p2;
wire   [8:0] grp_fu_3595_p0;
wire   [3:0] grp_fu_3595_p1;
wire   [10:0] grp_fu_3595_p2;
wire   [8:0] grp_fu_3604_p0;
wire   [5:0] grp_fu_3604_p1;
wire   [10:0] grp_fu_3604_p2;
wire   [8:0] grp_fu_3613_p0;
wire   [4:0] grp_fu_3613_p1;
wire   [10:0] grp_fu_3613_p2;
wire   [8:0] grp_fu_3622_p0;
wire   [5:0] grp_fu_3622_p1;
wire   [10:0] grp_fu_3622_p2;
wire   [8:0] grp_fu_3631_p0;
wire   [4:0] grp_fu_3631_p1;
wire   [10:0] grp_fu_3631_p2;
wire   [8:0] grp_fu_3640_p0;
wire   [5:0] grp_fu_3640_p1;
wire   [10:0] grp_fu_3640_p2;
wire   [8:0] grp_fu_3649_p0;
wire   [9:0] zext_ln172_3_fu_2126_p1;
wire   [5:0] grp_fu_3649_p1;
wire   [10:0] grp_fu_3649_p2;
wire   [8:0] grp_fu_3658_p0;
wire   [3:0] grp_fu_3658_p1;
wire   [10:0] grp_fu_3658_p2;
wire   [8:0] grp_fu_3667_p0;
wire   [5:0] grp_fu_3667_p1;
wire   [10:0] grp_fu_3667_p2;
wire   [8:0] grp_fu_3676_p0;
wire   [4:0] grp_fu_3676_p1;
wire   [10:0] grp_fu_3676_p2;
wire   [8:0] grp_fu_3685_p0;
wire   [5:0] grp_fu_3685_p1;
wire   [10:0] grp_fu_3685_p2;
wire   [8:0] grp_fu_3694_p0;
wire   [4:0] grp_fu_3694_p1;
wire   [10:0] grp_fu_3694_p2;
wire   [8:0] grp_fu_3703_p0;
wire   [5:0] grp_fu_3703_p1;
wire   [10:0] grp_fu_3703_p2;
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
wire   [18:0] mul_ln172_1_fu_2353_p00;
wire   [18:0] mul_ln172_fu_2132_p00;
wire   [3:0] tmp_s_fu_2373_p1;
wire   [3:0] tmp_s_fu_2373_p3;
wire   [3:0] tmp_s_fu_2373_p5;
wire   [3:0] tmp_s_fu_2373_p7;
wire   [3:0] tmp_s_fu_2373_p9;
wire   [3:0] tmp_s_fu_2373_p11;
wire   [3:0] tmp_s_fu_2373_p13;
wire   [3:0] tmp_s_fu_2373_p15;
wire  signed [3:0] tmp_s_fu_2373_p17;
wire  signed [3:0] tmp_s_fu_2373_p19;
wire  signed [3:0] tmp_s_fu_2373_p21;
wire  signed [3:0] tmp_s_fu_2373_p23;
wire  signed [3:0] tmp_s_fu_2373_p25;
wire   [3:0] tmp_15_fu_2432_p1;
wire  signed [3:0] tmp_15_fu_2432_p3;
wire  signed [3:0] tmp_15_fu_2432_p5;
wire  signed [3:0] tmp_15_fu_2432_p7;
wire  signed [3:0] tmp_15_fu_2432_p9;
wire  signed [3:0] tmp_15_fu_2432_p11;
wire   [3:0] tmp_15_fu_2432_p13;
wire   [3:0] tmp_15_fu_2432_p15;
wire   [3:0] tmp_15_fu_2432_p17;
wire   [3:0] tmp_15_fu_2432_p19;
wire   [3:0] tmp_15_fu_2432_p21;
wire   [3:0] tmp_15_fu_2432_p23;
wire   [3:0] tmp_15_fu_2432_p25;
wire   [3:0] tmp_16_fu_2491_p1;
wire   [3:0] tmp_16_fu_2491_p3;
wire   [3:0] tmp_16_fu_2491_p5;
wire  signed [3:0] tmp_16_fu_2491_p7;
wire  signed [3:0] tmp_16_fu_2491_p9;
wire  signed [3:0] tmp_16_fu_2491_p11;
wire  signed [3:0] tmp_16_fu_2491_p13;
wire  signed [3:0] tmp_16_fu_2491_p15;
wire   [3:0] tmp_16_fu_2491_p17;
wire   [3:0] tmp_16_fu_2491_p19;
wire   [3:0] tmp_16_fu_2491_p21;
wire   [3:0] tmp_16_fu_2491_p23;
wire   [3:0] tmp_16_fu_2491_p25;
wire  signed [3:0] tmp_17_fu_2550_p1;
wire   [3:0] tmp_17_fu_2550_p3;
wire   [3:0] tmp_17_fu_2550_p5;
wire   [3:0] tmp_17_fu_2550_p7;
wire   [3:0] tmp_17_fu_2550_p9;
wire   [3:0] tmp_17_fu_2550_p11;
wire   [3:0] tmp_17_fu_2550_p13;
wire   [3:0] tmp_17_fu_2550_p15;
wire   [3:0] tmp_17_fu_2550_p17;
wire  signed [3:0] tmp_17_fu_2550_p19;
wire  signed [3:0] tmp_17_fu_2550_p21;
wire  signed [3:0] tmp_17_fu_2550_p23;
wire  signed [3:0] tmp_17_fu_2550_p25;
wire  signed [3:0] tmp_18_fu_2609_p1;
wire  signed [3:0] tmp_18_fu_2609_p3;
wire  signed [3:0] tmp_18_fu_2609_p5;
wire   [3:0] tmp_18_fu_2609_p7;
wire   [3:0] tmp_18_fu_2609_p9;
wire   [3:0] tmp_18_fu_2609_p11;
wire   [3:0] tmp_18_fu_2609_p13;
wire   [3:0] tmp_18_fu_2609_p15;
wire   [3:0] tmp_18_fu_2609_p17;
wire   [3:0] tmp_18_fu_2609_p19;
wire   [3:0] tmp_18_fu_2609_p21;
wire  signed [3:0] tmp_18_fu_2609_p23;
wire  signed [3:0] tmp_18_fu_2609_p25;
wire   [3:0] tmp_19_fu_2668_p1;
wire   [3:0] tmp_19_fu_2668_p3;
wire   [3:0] tmp_19_fu_2668_p5;
wire   [3:0] tmp_19_fu_2668_p7;
wire  signed [3:0] tmp_19_fu_2668_p9;
wire  signed [3:0] tmp_19_fu_2668_p11;
wire  signed [3:0] tmp_19_fu_2668_p13;
wire  signed [3:0] tmp_19_fu_2668_p15;
wire  signed [3:0] tmp_19_fu_2668_p17;
wire   [3:0] tmp_19_fu_2668_p19;
wire   [3:0] tmp_19_fu_2668_p21;
wire   [3:0] tmp_19_fu_2668_p23;
wire   [3:0] tmp_19_fu_2668_p25;
wire   [3:0] tmp_20_fu_2727_p1;
wire   [3:0] tmp_20_fu_2727_p3;
wire   [3:0] tmp_20_fu_2727_p5;
wire   [3:0] tmp_20_fu_2727_p7;
wire   [3:0] tmp_20_fu_2727_p9;
wire   [3:0] tmp_20_fu_2727_p11;
wire  signed [3:0] tmp_20_fu_2727_p13;
wire  signed [3:0] tmp_20_fu_2727_p15;
wire  signed [3:0] tmp_20_fu_2727_p17;
wire  signed [3:0] tmp_20_fu_2727_p19;
wire  signed [3:0] tmp_20_fu_2727_p21;
wire   [3:0] tmp_20_fu_2727_p23;
wire   [3:0] tmp_20_fu_2727_p25;
wire  signed [3:0] tmp_21_fu_2786_p1;
wire  signed [3:0] tmp_21_fu_2786_p3;
wire  signed [3:0] tmp_21_fu_2786_p5;
wire  signed [3:0] tmp_21_fu_2786_p7;
wire   [3:0] tmp_21_fu_2786_p9;
wire   [3:0] tmp_21_fu_2786_p11;
wire   [3:0] tmp_21_fu_2786_p13;
wire   [3:0] tmp_21_fu_2786_p15;
wire   [3:0] tmp_21_fu_2786_p17;
wire   [3:0] tmp_21_fu_2786_p19;
wire   [3:0] tmp_21_fu_2786_p21;
wire   [3:0] tmp_21_fu_2786_p23;
wire  signed [3:0] tmp_21_fu_2786_p25;
wire   [3:0] tmp_22_fu_3075_p1;
wire   [3:0] tmp_22_fu_3075_p3;
wire   [3:0] tmp_22_fu_3075_p5;
wire   [3:0] tmp_22_fu_3075_p7;
wire   [3:0] tmp_22_fu_3075_p9;
wire   [3:0] tmp_22_fu_3075_p11;
wire   [3:0] tmp_22_fu_3075_p13;
wire   [3:0] tmp_22_fu_3075_p15;
wire  signed [3:0] tmp_22_fu_3075_p17;
wire  signed [3:0] tmp_22_fu_3075_p19;
wire  signed [3:0] tmp_22_fu_3075_p21;
wire  signed [3:0] tmp_22_fu_3075_p23;
wire  signed [3:0] tmp_22_fu_3075_p25;
wire   [3:0] tmp_24_fu_3143_p1;
wire  signed [3:0] tmp_24_fu_3143_p3;
wire  signed [3:0] tmp_24_fu_3143_p5;
wire  signed [3:0] tmp_24_fu_3143_p7;
wire  signed [3:0] tmp_24_fu_3143_p9;
wire  signed [3:0] tmp_24_fu_3143_p11;
wire   [3:0] tmp_24_fu_3143_p13;
wire   [3:0] tmp_24_fu_3143_p15;
wire   [3:0] tmp_24_fu_3143_p17;
wire   [3:0] tmp_24_fu_3143_p19;
wire   [3:0] tmp_24_fu_3143_p21;
wire   [3:0] tmp_24_fu_3143_p23;
wire   [3:0] tmp_24_fu_3143_p25;
wire   [3:0] tmp_25_fu_3202_p1;
wire   [3:0] tmp_25_fu_3202_p3;
wire   [3:0] tmp_25_fu_3202_p5;
wire  signed [3:0] tmp_25_fu_3202_p7;
wire  signed [3:0] tmp_25_fu_3202_p9;
wire  signed [3:0] tmp_25_fu_3202_p11;
wire  signed [3:0] tmp_25_fu_3202_p13;
wire  signed [3:0] tmp_25_fu_3202_p15;
wire   [3:0] tmp_25_fu_3202_p17;
wire   [3:0] tmp_25_fu_3202_p19;
wire   [3:0] tmp_25_fu_3202_p21;
wire   [3:0] tmp_25_fu_3202_p23;
wire   [3:0] tmp_25_fu_3202_p25;
wire  signed [3:0] tmp_26_fu_3261_p1;
wire   [3:0] tmp_26_fu_3261_p3;
wire   [3:0] tmp_26_fu_3261_p5;
wire   [3:0] tmp_26_fu_3261_p7;
wire   [3:0] tmp_26_fu_3261_p9;
wire   [3:0] tmp_26_fu_3261_p11;
wire   [3:0] tmp_26_fu_3261_p13;
wire   [3:0] tmp_26_fu_3261_p15;
wire   [3:0] tmp_26_fu_3261_p17;
wire  signed [3:0] tmp_26_fu_3261_p19;
wire  signed [3:0] tmp_26_fu_3261_p21;
wire  signed [3:0] tmp_26_fu_3261_p23;
wire  signed [3:0] tmp_26_fu_3261_p25;
wire  signed [3:0] tmp_27_fu_3320_p1;
wire  signed [3:0] tmp_27_fu_3320_p3;
wire  signed [3:0] tmp_27_fu_3320_p5;
wire   [3:0] tmp_27_fu_3320_p7;
wire   [3:0] tmp_27_fu_3320_p9;
wire   [3:0] tmp_27_fu_3320_p11;
wire   [3:0] tmp_27_fu_3320_p13;
wire   [3:0] tmp_27_fu_3320_p15;
wire   [3:0] tmp_27_fu_3320_p17;
wire   [3:0] tmp_27_fu_3320_p19;
wire   [3:0] tmp_27_fu_3320_p21;
wire  signed [3:0] tmp_27_fu_3320_p23;
wire  signed [3:0] tmp_27_fu_3320_p25;
wire   [3:0] tmp_28_fu_3379_p1;
wire   [3:0] tmp_28_fu_3379_p3;
wire   [3:0] tmp_28_fu_3379_p5;
wire   [3:0] tmp_28_fu_3379_p7;
wire  signed [3:0] tmp_28_fu_3379_p9;
wire  signed [3:0] tmp_28_fu_3379_p11;
wire  signed [3:0] tmp_28_fu_3379_p13;
wire  signed [3:0] tmp_28_fu_3379_p15;
wire  signed [3:0] tmp_28_fu_3379_p17;
wire   [3:0] tmp_28_fu_3379_p19;
wire   [3:0] tmp_28_fu_3379_p21;
wire   [3:0] tmp_28_fu_3379_p23;
wire   [3:0] tmp_28_fu_3379_p25;
wire   [3:0] tmp_29_fu_3438_p1;
wire   [3:0] tmp_29_fu_3438_p3;
wire   [3:0] tmp_29_fu_3438_p5;
wire   [3:0] tmp_29_fu_3438_p7;
wire   [3:0] tmp_29_fu_3438_p9;
wire   [3:0] tmp_29_fu_3438_p11;
wire  signed [3:0] tmp_29_fu_3438_p13;
wire  signed [3:0] tmp_29_fu_3438_p15;
wire  signed [3:0] tmp_29_fu_3438_p17;
wire  signed [3:0] tmp_29_fu_3438_p19;
wire  signed [3:0] tmp_29_fu_3438_p21;
wire   [3:0] tmp_29_fu_3438_p23;
wire   [3:0] tmp_29_fu_3438_p25;
wire  signed [3:0] tmp_30_fu_3497_p1;
wire  signed [3:0] tmp_30_fu_3497_p3;
wire  signed [3:0] tmp_30_fu_3497_p5;
wire  signed [3:0] tmp_30_fu_3497_p7;
wire   [3:0] tmp_30_fu_3497_p9;
wire   [3:0] tmp_30_fu_3497_p11;
wire   [3:0] tmp_30_fu_3497_p13;
wire   [3:0] tmp_30_fu_3497_p15;
wire   [3:0] tmp_30_fu_3497_p17;
wire   [3:0] tmp_30_fu_3497_p19;
wire   [3:0] tmp_30_fu_3497_p21;
wire   [3:0] tmp_30_fu_3497_p23;
wire  signed [3:0] tmp_30_fu_3497_p25;
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
#0 tid_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U248(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2083_p0),.din1(grp_fu_2083_p1),.ce(1'b1),.dout(grp_fu_2083_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U249(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2107_p0),.din1(grp_fu_2107_p1),.ce(1'b1),.dout(grp_fu_2107_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U250(.din0(mul_ln172_fu_2132_p0),.din1(mul_ln172_fu_2132_p1),.dout(mul_ln172_fu_2132_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U251(.din0(mul_ln172_1_fu_2353_p0),.din1(mul_ln172_1_fu_2353_p1),.dout(mul_ln172_1_fu_2353_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U252(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_s_fu_2373_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_s_fu_2373_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U253(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_15_fu_2432_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_15_fu_2432_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U254(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_16_fu_2491_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_16_fu_2491_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U255(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_17_fu_2550_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_17_fu_2550_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U256(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_18_fu_2609_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_18_fu_2609_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U257(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_19_fu_2668_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_19_fu_2668_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U258(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_20_fu_2727_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_20_fu_2727_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U259(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_21_fu_2786_p27),.sel(trunc_ln172_reg_3756),.dout(tmp_21_fu_2786_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U260(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_22_fu_3075_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_22_fu_3075_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U261(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_24_fu_3143_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_24_fu_3143_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U262(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_25_fu_3202_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_25_fu_3202_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U263(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_26_fu_3261_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_26_fu_3261_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U264(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_27_fu_3320_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_27_fu_3320_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U265(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_28_fu_3379_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_28_fu_3379_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U266(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_29_fu_3438_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_29_fu_3438_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U267(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_30_fu_3497_p27),.sel(trunc_ln172_1_reg_4293),.dout(tmp_30_fu_3497_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3586_p0),.din1(grp_fu_3586_p1),.din2(grp_fu_3586_p2),.ce(1'b1),.dout(grp_fu_3586_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3595_p0),.din1(grp_fu_3595_p1),.din2(grp_fu_3595_p2),.ce(1'b1),.dout(grp_fu_3595_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3604_p0),.din1(grp_fu_3604_p1),.din2(grp_fu_3604_p2),.ce(1'b1),.dout(grp_fu_3604_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3613_p0),.din1(grp_fu_3613_p1),.din2(grp_fu_3613_p2),.ce(1'b1),.dout(grp_fu_3613_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3622_p0),.din1(grp_fu_3622_p1),.din2(grp_fu_3622_p2),.ce(1'b1),.dout(grp_fu_3622_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3631_p0),.din1(grp_fu_3631_p1),.din2(grp_fu_3631_p2),.ce(1'b1),.dout(grp_fu_3631_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3640_p0),.din1(grp_fu_3640_p1),.din2(grp_fu_3640_p2),.ce(1'b1),.dout(grp_fu_3640_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U275(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3649_p0),.din1(grp_fu_3649_p1),.din2(grp_fu_3649_p2),.ce(1'b1),.dout(grp_fu_3649_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U276(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3658_p0),.din1(grp_fu_3658_p1),.din2(grp_fu_3658_p2),.ce(1'b1),.dout(grp_fu_3658_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3667_p0),.din1(grp_fu_3667_p1),.din2(grp_fu_3667_p2),.ce(1'b1),.dout(grp_fu_3667_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3676_p0),.din1(grp_fu_3676_p1),.din2(grp_fu_3676_p2),.ce(1'b1),.dout(grp_fu_3676_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U279(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3685_p0),.din1(grp_fu_3685_p1),.din2(grp_fu_3685_p2),.ce(1'b1),.dout(grp_fu_3685_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U280(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3694_p0),.din1(grp_fu_3694_p1),.din2(grp_fu_3694_p2),.ce(1'b1),.dout(grp_fu_3694_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U281(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3703_p0),.din1(grp_fu_3703_p1),.din2(grp_fu_3703_p2),.ce(1'b1),.dout(grp_fu_3703_p3));
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
        tid_fu_148 <= 7'd0;
    end else if (((tmp_reg_3728 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_148 <= add_ln309_fu_2113_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_1_reg_3744[8 : 1] <= offset_1_fu_2098_p4[8 : 1];
        offset_1_reg_3744_pp0_iter1_reg[8 : 1] <= offset_1_reg_3744[8 : 1];
        offset_1_reg_3744_pp0_iter2_reg[8 : 1] <= offset_1_reg_3744_pp0_iter1_reg[8 : 1];
        offset_1_reg_3744_pp0_iter3_reg[8 : 1] <= offset_1_reg_3744_pp0_iter2_reg[8 : 1];
        offset_1_reg_3744_pp0_iter4_reg[8 : 1] <= offset_1_reg_3744_pp0_iter3_reg[8 : 1];
        offset_1_reg_3744_pp0_iter5_reg[8 : 1] <= offset_1_reg_3744_pp0_iter4_reg[8 : 1];
        tmp_22_reg_4865 <= tmp_22_fu_3075_p29;
        tmp_23_reg_4870 <= {{tid_2_reg_3719_pp0_iter7_reg[5:1]}};
        tmp_24_reg_4876 <= tmp_24_fu_3143_p29;
        tmp_25_reg_4881 <= tmp_25_fu_3202_p29;
        tmp_26_reg_4886 <= tmp_26_fu_3261_p29;
        tmp_27_reg_4891 <= tmp_27_fu_3320_p29;
        tmp_28_reg_4896 <= tmp_28_fu_3379_p29;
        tmp_29_reg_4901 <= tmp_29_fu_3438_p29;
        tmp_30_reg_4906 <= tmp_30_fu_3497_p29;
        tmp_91_reg_4288 <= {{mul_ln172_1_fu_2353_p2[18:13]}};
        trunc_ln172_1_reg_4293 <= trunc_ln172_1_fu_2369_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_3737 <= offset_fu_2075_p3;
        offset_reg_3737_pp0_iter1_reg <= offset_reg_3737;
        offset_reg_3737_pp0_iter2_reg <= offset_reg_3737_pp0_iter1_reg;
        offset_reg_3737_pp0_iter3_reg <= offset_reg_3737_pp0_iter2_reg;
        offset_reg_3737_pp0_iter4_reg <= offset_reg_3737_pp0_iter3_reg;
        offset_reg_3737_pp0_iter5_reg <= offset_reg_3737_pp0_iter4_reg;
        tid_2_reg_3719 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_3719_pp0_iter1_reg <= tid_2_reg_3719;
        tid_2_reg_3719_pp0_iter2_reg <= tid_2_reg_3719_pp0_iter1_reg;
        tid_2_reg_3719_pp0_iter3_reg <= tid_2_reg_3719_pp0_iter2_reg;
        tid_2_reg_3719_pp0_iter4_reg <= tid_2_reg_3719_pp0_iter3_reg;
        tid_2_reg_3719_pp0_iter5_reg <= tid_2_reg_3719_pp0_iter4_reg;
        tid_2_reg_3719_pp0_iter6_reg <= tid_2_reg_3719_pp0_iter5_reg;
        tid_2_reg_3719_pp0_iter7_reg <= tid_2_reg_3719_pp0_iter6_reg;
        tmp_15_reg_4310 <= tmp_15_fu_2432_p29;
        tmp_16_reg_4315 <= tmp_16_fu_2491_p29;
        tmp_17_reg_4320 <= tmp_17_fu_2550_p29;
        tmp_18_reg_4325 <= tmp_18_fu_2609_p29;
        tmp_19_reg_4330 <= tmp_19_fu_2668_p29;
        tmp_20_reg_4335 <= tmp_20_fu_2727_p29;
        tmp_21_reg_4340 <= tmp_21_fu_2786_p29;
        tmp_81_reg_3732 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_82_reg_3751 <= {{mul_ln172_fu_2132_p2[18:13]}};
        tmp_reg_3728 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_3728_pp0_iter1_reg <= tmp_reg_3728;
        tmp_reg_3728_pp0_iter2_reg <= tmp_reg_3728_pp0_iter1_reg;
        tmp_reg_3728_pp0_iter3_reg <= tmp_reg_3728_pp0_iter2_reg;
        tmp_reg_3728_pp0_iter4_reg <= tmp_reg_3728_pp0_iter3_reg;
        tmp_reg_3728_pp0_iter5_reg <= tmp_reg_3728_pp0_iter4_reg;
        tmp_reg_3728_pp0_iter6_reg <= tmp_reg_3728_pp0_iter5_reg;
        tmp_s_reg_4305 <= tmp_s_fu_2373_p29;
        trunc_ln172_reg_3756 <= trunc_ln172_fu_2148_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_3_fu_3578_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_2_fu_3067_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_3563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_fu_3051_p1;
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
        DATA_x_1_d0_local = tmp_26_reg_4886;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_17_reg_4320;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_25_reg_4881;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_16_reg_4315;
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
        DATA_x_2_address0_local = zext_ln315_3_fu_3578_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln315_2_fu_3067_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln314_1_fu_3563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln314_fu_3051_p1;
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
        DATA_x_2_d0_local = tmp_28_reg_4896;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_19_reg_4330;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_27_reg_4891;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = tmp_18_reg_4325;
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
        DATA_x_3_address0_local = zext_ln315_3_fu_3578_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln315_2_fu_3067_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln314_1_fu_3563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln314_fu_3051_p1;
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
        DATA_x_3_d0_local = tmp_30_reg_4906;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_21_reg_4340;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = tmp_29_reg_4901;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_20_reg_4335;
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
        DATA_x_address0_local = zext_ln315_3_fu_3578_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_2_fu_3067_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln314_1_fu_3563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_fu_3051_p1;
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
        DATA_x_d0_local = tmp_24_reg_4876;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_15_reg_4310;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_22_reg_4865;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_s_reg_4305;
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
    if (((tmp_reg_3728 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (tmp_reg_3728_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid_2 = tid_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd11) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_1_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_1_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_1_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_1_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_1_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_1_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_1_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_5_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln321_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln320_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln319_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln318_fu_2255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln317_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln316_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln315_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_2_fu_2152_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3756 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd12) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd10) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd9) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293== 4'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4293 == 4'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign add_ln309_fu_2113_p2 = (tid_2_reg_3719 + 7'd2);
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
assign grp_fu_2083_p0 = {{tmp_81_fu_2061_p4}, {trunc_ln312_fu_2071_p1}};
assign grp_fu_2083_p1 = 9'd13;
assign grp_fu_2107_p0 = {{{tmp_81_reg_3732}, {tmp_90_fu_2089_p4}}, {1'd1}};
assign grp_fu_2107_p1 = 9'd13;
assign grp_fu_3586_p0 = zext_ln172_fu_2123_p1;
assign grp_fu_3586_p1 = 10'd32;
assign grp_fu_3586_p2 = 21'd1261;
assign grp_fu_3595_p0 = zext_ln172_fu_2123_p1;
assign grp_fu_3595_p1 = 10'd8;
assign grp_fu_3595_p2 = 21'd1261;
assign grp_fu_3604_p0 = zext_ln172_fu_2123_p1;
assign grp_fu_3604_p1 = 10'd40;
assign grp_fu_3604_p2 = 21'd1261;
assign grp_fu_3613_p0 = zext_ln172_fu_2123_p1;
assign grp_fu_3613_p1 = 10'd16;
assign grp_fu_3613_p2 = 21'd1261;
assign grp_fu_3622_p0 = zext_ln172_fu_2123_p1;
assign grp_fu_3622_p1 = 10'd48;
assign grp_fu_3622_p2 = 21'd1261;
assign grp_fu_3631_p0 = zext_ln172_fu_2123_p1;
assign grp_fu_3631_p1 = 10'd24;
assign grp_fu_3631_p2 = 21'd1261;
assign grp_fu_3640_p0 = zext_ln172_fu_2123_p1;
assign grp_fu_3640_p1 = 10'd56;
assign grp_fu_3640_p2 = 21'd1261;
assign grp_fu_3649_p0 = zext_ln172_3_fu_2126_p1;
assign grp_fu_3649_p1 = 10'd32;
assign grp_fu_3649_p2 = 21'd1261;
assign grp_fu_3658_p0 = zext_ln172_3_fu_2126_p1;
assign grp_fu_3658_p1 = 10'd8;
assign grp_fu_3658_p2 = 21'd1261;
assign grp_fu_3667_p0 = zext_ln172_3_fu_2126_p1;
assign grp_fu_3667_p1 = 10'd40;
assign grp_fu_3667_p2 = 21'd1261;
assign grp_fu_3676_p0 = zext_ln172_3_fu_2126_p1;
assign grp_fu_3676_p1 = 10'd16;
assign grp_fu_3676_p2 = 21'd1261;
assign grp_fu_3685_p0 = zext_ln172_3_fu_2126_p1;
assign grp_fu_3685_p1 = 10'd48;
assign grp_fu_3685_p2 = 21'd1261;
assign grp_fu_3694_p0 = zext_ln172_3_fu_2126_p1;
assign grp_fu_3694_p1 = 10'd24;
assign grp_fu_3694_p2 = 21'd1261;
assign grp_fu_3703_p0 = zext_ln172_3_fu_2126_p1;
assign grp_fu_3703_p1 = 10'd56;
assign grp_fu_3703_p2 = 21'd1261;
assign mul_ln172_1_fu_2353_p0 = mul_ln172_1_fu_2353_p00;
assign mul_ln172_1_fu_2353_p00 = offset_1_reg_3744_pp0_iter5_reg;
assign mul_ln172_1_fu_2353_p1 = 19'd631;
assign mul_ln172_fu_2132_p0 = mul_ln172_fu_2132_p00;
assign mul_ln172_fu_2132_p00 = offset_reg_3737_pp0_iter5_reg;
assign mul_ln172_fu_2132_p1 = 19'd631;
assign offset_1_fu_2098_p4 = {{{tmp_81_reg_3732}, {tmp_90_fu_2089_p4}}, {1'd1}};
assign offset_fu_2075_p3 = {{tmp_81_fu_2061_p4}, {trunc_ln312_fu_2071_p1}};
assign or_ln315_1_fu_3571_p3 = {{tmp_23_reg_4870}, {2'd3}};
assign or_ln3_fu_3556_p3 = {{tmp_23_reg_4870}, {2'd2}};
assign or_ln_fu_3059_p3 = {{trunc_ln314_fu_3043_p1}, {1'd1}};
assign shl_ln314_fu_3046_p2 = tid_2_reg_3719_pp0_iter7_reg << 7'd1;
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_ce0 = smem_12_ce0_local;
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
assign tmp_15_fu_2432_p27 = 'bx;
assign tmp_16_fu_2491_p27 = 'bx;
assign tmp_17_fu_2550_p27 = 'bx;
assign tmp_18_fu_2609_p27 = 'bx;
assign tmp_19_fu_2668_p27 = 'bx;
assign tmp_20_fu_2727_p27 = 'bx;
assign tmp_21_fu_2786_p27 = 'bx;
assign tmp_22_fu_3075_p27 = 'bx;
assign tmp_24_fu_3143_p27 = 'bx;
assign tmp_25_fu_3202_p27 = 'bx;
assign tmp_26_fu_3261_p27 = 'bx;
assign tmp_27_fu_3320_p27 = 'bx;
assign tmp_28_fu_3379_p27 = 'bx;
assign tmp_29_fu_3438_p27 = 'bx;
assign tmp_30_fu_3497_p27 = 'bx;
assign tmp_81_fu_2061_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_83_fu_2168_p1 = grp_fu_3586_p3;
assign tmp_83_fu_2168_p4 = {{tmp_83_fu_2168_p1[20:14]}};
assign tmp_84_fu_2194_p1 = grp_fu_3595_p3;
assign tmp_84_fu_2194_p4 = {{tmp_84_fu_2194_p1[20:14]}};
assign tmp_85_fu_2220_p1 = grp_fu_3604_p3;
assign tmp_85_fu_2220_p4 = {{tmp_85_fu_2220_p1[20:14]}};
assign tmp_86_fu_2246_p1 = grp_fu_3613_p3;
assign tmp_86_fu_2246_p4 = {{tmp_86_fu_2246_p1[20:14]}};
assign tmp_87_fu_2272_p1 = grp_fu_3622_p3;
assign tmp_87_fu_2272_p4 = {{tmp_87_fu_2272_p1[20:14]}};
assign tmp_88_fu_2298_p1 = grp_fu_3631_p3;
assign tmp_88_fu_2298_p4 = {{tmp_88_fu_2298_p1[20:14]}};
assign tmp_89_fu_2324_p1 = grp_fu_3640_p3;
assign tmp_89_fu_2324_p4 = {{tmp_89_fu_2324_p1[20:14]}};
assign tmp_90_fu_2089_p4 = {{tid_2_reg_3719[5:1]}};
assign tmp_92_fu_2861_p1 = grp_fu_3649_p3;
assign tmp_92_fu_2861_p4 = {{tmp_92_fu_2861_p1[20:14]}};
assign tmp_93_fu_2887_p1 = grp_fu_3658_p3;
assign tmp_93_fu_2887_p4 = {{tmp_93_fu_2887_p1[20:14]}};
assign tmp_94_fu_2913_p1 = grp_fu_3667_p3;
assign tmp_94_fu_2913_p4 = {{tmp_94_fu_2913_p1[20:14]}};
assign tmp_95_fu_2939_p1 = grp_fu_3676_p3;
assign tmp_95_fu_2939_p4 = {{tmp_95_fu_2939_p1[20:14]}};
assign tmp_96_fu_2965_p1 = grp_fu_3685_p3;
assign tmp_96_fu_2965_p4 = {{tmp_96_fu_2965_p1[20:14]}};
assign tmp_97_fu_2991_p1 = grp_fu_3694_p3;
assign tmp_97_fu_2991_p4 = {{tmp_97_fu_2991_p1[20:14]}};
assign tmp_98_fu_3017_p1 = grp_fu_3703_p3;
assign tmp_98_fu_3017_p4 = {{tmp_98_fu_3017_p1[20:14]}};
assign tmp_s_fu_2373_p27 = 'bx;
assign trunc_ln172_1_fu_2369_p1 = grp_fu_2107_p2[3:0];
assign trunc_ln172_fu_2148_p1 = grp_fu_2083_p2[3:0];
assign trunc_ln312_fu_2071_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_3043_p1 = tid_2_reg_3719_pp0_iter7_reg[5:0];
assign zext_ln172_2_fu_2152_p1 = tmp_82_reg_3751;
assign zext_ln172_3_fu_2126_p1 = offset_1_reg_3744_pp0_iter4_reg;
assign zext_ln172_5_fu_2845_p1 = tmp_91_reg_4288;
assign zext_ln172_fu_2123_p1 = offset_reg_3737_pp0_iter4_reg;
assign zext_ln314_1_fu_3563_p1 = or_ln3_fu_3556_p3;
assign zext_ln314_fu_3051_p1 = shl_ln314_fu_3046_p2;
assign zext_ln315_1_fu_2870_p1 = tmp_92_fu_2861_p4;
assign zext_ln315_2_fu_3067_p1 = or_ln_fu_3059_p3;
assign zext_ln315_3_fu_3578_p1 = or_ln315_1_fu_3571_p3;
assign zext_ln315_fu_2177_p1 = tmp_83_fu_2168_p4;
assign zext_ln316_1_fu_2896_p1 = tmp_93_fu_2887_p4;
assign zext_ln316_fu_2203_p1 = tmp_84_fu_2194_p4;
assign zext_ln317_1_fu_2922_p1 = tmp_94_fu_2913_p4;
assign zext_ln317_fu_2229_p1 = tmp_85_fu_2220_p4;
assign zext_ln318_1_fu_2948_p1 = tmp_95_fu_2939_p4;
assign zext_ln318_fu_2255_p1 = tmp_86_fu_2246_p4;
assign zext_ln319_1_fu_2974_p1 = tmp_96_fu_2965_p4;
assign zext_ln319_fu_2281_p1 = tmp_87_fu_2272_p4;
assign zext_ln320_1_fu_3000_p1 = tmp_97_fu_2991_p4;
assign zext_ln320_fu_2307_p1 = tmp_88_fu_2298_p4;
assign zext_ln321_1_fu_3026_p1 = tmp_98_fu_3017_p4;
assign zext_ln321_fu_2333_p1 = tmp_89_fu_2324_p4;
always @ (posedge ap_clk) begin
    offset_1_reg_3744[0] <= 1'b1;
    offset_1_reg_3744_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_3744_pp0_iter2_reg[0] <= 1'b1;
    offset_1_reg_3744_pp0_iter3_reg[0] <= 1'b1;
    offset_1_reg_3744_pp0_iter4_reg[0] <= 1'b1;
    offset_1_reg_3744_pp0_iter5_reg[0] <= 1'b1;
end
endmodule 