module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
output   smem_12_we0;
output  [63:0] smem_12_d0;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_2898;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [28:0] reg_2252;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_3_reg_2891;
reg   [6:0] tid_3_reg_2891_pp0_iter1_reg;
reg   [6:0] tid_3_reg_2891_pp0_iter2_reg;
reg   [6:0] tid_3_reg_2891_pp0_iter3_reg;
reg   [6:0] tid_3_reg_2891_pp0_iter4_reg;
reg   [6:0] tid_3_reg_2891_pp0_iter5_reg;
reg   [6:0] tid_3_reg_2891_pp0_iter6_reg;
reg   [6:0] tid_3_reg_2891_pp0_iter7_reg;
reg   [0:0] tmp_reg_2898_pp0_iter1_reg;
reg   [0:0] tmp_reg_2898_pp0_iter2_reg;
reg   [0:0] tmp_reg_2898_pp0_iter3_reg;
reg   [0:0] tmp_reg_2898_pp0_iter4_reg;
reg   [0:0] tmp_reg_2898_pp0_iter5_reg;
reg   [0:0] tmp_reg_2898_pp0_iter6_reg;
reg   [0:0] tmp_reg_2898_pp0_iter7_reg;
reg   [0:0] tmp_reg_2898_pp0_iter8_reg;
wire   [5:0] offset_fu_2272_p1;
reg   [5:0] offset_reg_2902;
reg   [5:0] offset_reg_2902_pp0_iter1_reg;
reg   [5:0] offset_reg_2902_pp0_iter2_reg;
reg   [5:0] offset_reg_2902_pp0_iter3_reg;
reg   [5:0] offset_reg_2902_pp0_iter4_reg;
reg   [5:0] offset_reg_2902_pp0_iter5_reg;
reg   [5:0] offset_reg_2902_pp0_iter6_reg;
reg   [5:0] offset_reg_2902_pp0_iter7_reg;
reg   [5:0] offset_reg_2902_pp0_iter8_reg;
wire   [31:0] offset_4_fu_2298_p5;
reg   [31:0] offset_4_reg_2911;
reg   [31:0] offset_4_reg_2911_pp0_iter1_reg;
reg   [31:0] offset_4_reg_2911_pp0_iter2_reg;
reg   [31:0] offset_4_reg_2911_pp0_iter3_reg;
reg   [31:0] offset_4_reg_2911_pp0_iter4_reg;
reg   [31:0] offset_4_reg_2911_pp0_iter5_reg;
reg   [31:0] offset_4_reg_2911_pp0_iter6_reg;
reg   [31:0] offset_4_reg_2911_pp0_iter7_reg;
reg   [31:0] offset_4_reg_2911_pp0_iter8_reg;
wire   [3:0] grp_fu_2316_p2;
reg   [3:0] urem_ln172_3_reg_2924;
reg   [3:0] urem_ln172_3_reg_2924_pp0_iter3_reg;
reg   [3:0] urem_ln172_3_reg_2924_pp0_iter4_reg;
reg   [3:0] urem_ln172_3_reg_2924_pp0_iter5_reg;
reg   [3:0] urem_ln172_3_reg_2924_pp0_iter6_reg;
reg   [3:0] urem_ln172_3_reg_2924_pp0_iter7_reg;
wire   [63:0] zext_ln294_fu_2331_p1;
reg   [63:0] zext_ln294_reg_2929;
wire   [7:0] zext_ln172_21_fu_2335_p1;
reg   [7:0] zext_ln172_21_reg_2940;
wire   [8:0] zext_ln172_22_fu_2338_p1;
reg   [8:0] zext_ln172_22_reg_2946;
reg   [2:0] tmp_70_reg_2951;
wire   [8:0] add_ln299_fu_2360_p2;
reg   [8:0] add_ln299_reg_2961;
wire   [8:0] add_ln301_fu_2366_p2;
reg   [8:0] add_ln301_reg_2966;
wire   [63:0] zext_ln296_fu_2389_p1;
reg   [63:0] zext_ln296_reg_2971;
reg   [63:0] DATA_x_load_reg_2987;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] tmp_71_reg_3004;
reg   [5:0] tmp_73_reg_3009;
reg   [4:0] tmp_74_reg_3014;
wire   [7:0] add_ln303_fu_2457_p2;
reg   [7:0] add_ln303_reg_3019;
wire   [64:0] zext_ln172_23_fu_2462_p1;
wire   [31:0] add_ln299_1_fu_2466_p2;
reg   [31:0] add_ln299_1_reg_3029;
wire   [31:0] add_ln300_1_fu_2471_p2;
reg   [31:0] add_ln300_1_reg_3034;
wire   [31:0] add_ln301_1_fu_2476_p2;
reg   [31:0] add_ln301_1_reg_3039;
reg   [63:0] DATA_x_load_1_reg_3044;
wire   [3:0] trunc_ln172_fu_2484_p1;
reg   [3:0] trunc_ln172_reg_3061;
reg   [5:0] tmp_75_reg_3065;
wire   [64:0] zext_ln299_3_fu_2510_p1;
wire   [64:0] zext_ln300_3_fu_2514_p1;
wire   [64:0] zext_ln301_3_fu_2518_p1;
wire   [31:0] add_ln302_1_fu_2522_p2;
reg   [31:0] add_ln302_1_reg_3085;
wire   [31:0] add_ln303_1_fu_2527_p2;
reg   [31:0] add_ln303_1_reg_3090;
wire   [31:0] add_ln304_1_fu_2532_p2;
reg   [31:0] add_ln304_1_reg_3095;
wire   [31:0] add_ln305_1_fu_2537_p2;
reg   [31:0] add_ln305_1_reg_3100;
reg   [4:0] tmp_72_reg_3105;
wire    ap_block_pp0_stage3_11001;
wire   [3:0] trunc_ln172_5_fu_2567_p1;
reg   [3:0] trunc_ln172_5_reg_3110;
reg   [28:0] tmp_79_reg_3114;
reg   [28:0] tmp_80_reg_3119;
reg   [28:0] tmp_81_reg_3124;
wire   [64:0] zext_ln302_3_fu_2571_p1;
wire   [64:0] zext_ln303_3_fu_2575_p1;
wire   [64:0] zext_ln304_3_fu_2579_p1;
reg   [5:0] tmp_76_reg_3179;
reg   [28:0] tmp_83_reg_3214;
reg   [28:0] tmp_84_reg_3224;
reg   [28:0] tmp_85_reg_3234;
reg   [63:0] DATA_x_1_load_1_reg_3239;
reg   [63:0] DATA_x_4_load_1_reg_3256;
reg   [63:0] DATA_x_5_load_1_reg_3273;
reg   [63:0] DATA_x_2_load_1_reg_3290;
reg   [63:0] DATA_x_3_load_1_reg_3307;
reg   [63:0] DATA_x_6_load_1_reg_3324;
reg   [63:0] DATA_x_7_load_1_reg_3341;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_3_fu_2542_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_4_fu_2596_p1;
wire   [63:0] zext_ln299_fu_2623_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln300_fu_2639_p1;
wire   [63:0] zext_ln301_fu_2655_p1;
wire   [63:0] zext_ln302_fu_2671_p1;
wire   [63:0] zext_ln303_fu_2687_p1;
wire   [63:0] zext_ln304_fu_2703_p1;
wire   [63:0] zext_ln305_fu_2728_p1;
wire   [63:0] zext_ln299_1_fu_2745_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln300_1_fu_2761_p1;
wire   [63:0] zext_ln301_1_fu_2777_p1;
wire   [63:0] zext_ln302_1_fu_2793_p1;
wire   [63:0] zext_ln303_1_fu_2810_p1;
wire   [63:0] zext_ln304_1_fu_2826_p1;
wire   [63:0] zext_ln305_1_fu_2842_p1;
reg   [6:0] tid_fu_178;
wire   [6:0] add_ln294_fu_2321_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_ce0_local;
reg   [31:0] grp_fu_2202_p0;
wire   [33:0] grp_fu_2202_p1;
reg   [31:0] grp_fu_2207_p0;
wire   [33:0] grp_fu_2207_p1;
reg   [31:0] grp_fu_2212_p0;
wire   [33:0] grp_fu_2212_p1;
wire   [31:0] grp_fu_2217_p0;
wire   [33:0] grp_fu_2217_p1;
wire   [64:0] grp_fu_2202_p2;
wire   [64:0] grp_fu_2207_p2;
wire   [64:0] grp_fu_2212_p2;
wire   [1:0] tmp_30_fu_2280_p4;
wire   [31:0] zext_ln295_fu_2276_p1;
wire   [2:0] or_ln4_fu_2290_p3;
wire   [31:0] grp_fu_2310_p0;
wire   [4:0] grp_fu_2310_p1;
wire   [4:0] grp_fu_2316_p1;
wire   [5:0] mul_ln172_3_fu_2344_p0;
wire   [7:0] mul_ln172_3_fu_2344_p1;
wire   [12:0] mul_ln172_3_fu_2344_p2;
wire   [4:0] tmp_s_fu_2372_p4;
wire   [5:0] or_ln3_fu_2381_p3;
wire   [8:0] mul_ln299_fu_2397_p0;
wire   [10:0] mul_ln299_fu_2397_p1;
wire   [18:0] mul_ln299_fu_2397_p2;
wire   [8:0] mul_ln301_fu_2416_p0;
wire   [10:0] mul_ln301_fu_2416_p1;
wire   [18:0] mul_ln301_fu_2416_p2;
wire   [7:0] add_ln302_fu_2432_p2;
wire   [7:0] mul_ln302_fu_2441_p0;
wire   [9:0] mul_ln302_fu_2441_p1;
wire   [16:0] mul_ln302_fu_2441_p2;
wire  signed [8:0] sext_ln303_fu_2487_p1;
wire   [8:0] mul_ln303_fu_2494_p0;
wire   [10:0] mul_ln303_fu_2494_p1;
wire   [18:0] mul_ln303_fu_2494_p2;
wire   [16:0] tmp_72_fu_2558_p1;
wire  signed [16:0] grp_fu_2858_p3;
wire   [3:0] grp_fu_2310_p2;
wire   [18:0] tmp_76_fu_2587_p1;
wire  signed [18:0] grp_fu_2867_p3;
wire   [64:0] grp_fu_2217_p2;
wire   [20:0] tmp_77_fu_2719_p1;
wire  signed [20:0] grp_fu_2875_p3;
wire   [6:0] tmp_77_fu_2719_p4;
wire   [5:0] grp_fu_2858_p0;
wire   [6:0] grp_fu_2858_p1;
wire   [8:0] grp_fu_2858_p2;
wire   [5:0] grp_fu_2867_p0;
wire   [7:0] grp_fu_2867_p1;
wire   [9:0] grp_fu_2867_p2;
wire   [5:0] grp_fu_2875_p0;
wire   [8:0] grp_fu_2875_p1;
wire   [10:0] grp_fu_2875_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter8_stage2;
reg    ap_idle_pp0_0to7;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to9;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [64:0] grp_fu_2217_p00;
wire   [7:0] grp_fu_2858_p00;
wire   [9:0] grp_fu_2875_p00;
wire   [12:0] mul_ln172_3_fu_2344_p00;
wire   [18:0] mul_ln299_fu_2397_p00;
wire   [18:0] mul_ln301_fu_2416_p00;
wire   [16:0] mul_ln302_fu_2441_p00;
wire   [18:0] mul_ln303_fu_2494_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_178 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2202_p0),.din1(grp_fu_2202_p1),.ce(1'b1),.dout(grp_fu_2202_p2));
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U246(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2207_p0),.din1(grp_fu_2207_p1),.ce(1'b1),.dout(grp_fu_2207_p2));
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U247(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2212_p0),.din1(grp_fu_2212_p1),.ce(1'b1),.dout(grp_fu_2212_p2));
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U248(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2217_p0),.din1(grp_fu_2217_p1),.ce(1'b1),.dout(grp_fu_2217_p2));
fft1D_512_urem_32ns_5ns_4_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_32ns_5ns_4_36_1_U249(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2310_p0),.din1(grp_fu_2310_p1),.ce(1'b1),.dout(grp_fu_2310_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U250(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_2902),.din1(grp_fu_2316_p1),.ce(1'b1),.dout(grp_fu_2316_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U251(.din0(mul_ln172_3_fu_2344_p0),.din1(mul_ln172_3_fu_2344_p1),.dout(mul_ln172_3_fu_2344_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U252(.din0(mul_ln299_fu_2397_p0),.din1(mul_ln299_fu_2397_p1),.dout(mul_ln299_fu_2397_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U253(.din0(mul_ln301_fu_2416_p0),.din1(mul_ln301_fu_2416_p1),.dout(mul_ln301_fu_2416_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U254(.din0(mul_ln302_fu_2441_p0),.din1(mul_ln302_fu_2441_p1),.dout(mul_ln302_fu_2441_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U255(.din0(mul_ln303_fu_2494_p0),.din1(mul_ln303_fu_2494_p1),.dout(mul_ln303_fu_2494_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U256(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2858_p0),.din1(grp_fu_2858_p1),.din2(grp_fu_2858_p2),.ce(1'b1),.dout(grp_fu_2858_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U257(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2867_p0),.din1(grp_fu_2867_p1),.din2(grp_fu_2867_p2),.ce(1'b1),.dout(grp_fu_2867_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U258(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2875_p0),.din1(grp_fu_2875_p1),.din2(grp_fu_2875_p2),.ce(1'b1),.dout(grp_fu_2875_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_178 <= 7'd0;
    end else if (((tmp_reg_2898 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_178 <= add_ln294_fu_2321_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_1_reg_3239 <= DATA_x_1_q0;
        DATA_x_2_load_1_reg_3290 <= DATA_x_2_q0;
        DATA_x_3_load_1_reg_3307 <= DATA_x_3_q0;
        DATA_x_4_load_1_reg_3256 <= DATA_x_4_q0;
        DATA_x_5_load_1_reg_3273 <= DATA_x_5_q0;
        DATA_x_6_load_1_reg_3324 <= DATA_x_6_q0;
        DATA_x_7_load_1_reg_3341 <= DATA_x_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_load_1_reg_3044 <= DATA_x_q0;
        DATA_x_load_reg_2987 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln299_1_reg_3029 <= add_ln299_1_fu_2466_p2;
        add_ln300_1_reg_3034 <= add_ln300_1_fu_2471_p2;
        add_ln301_1_reg_3039 <= add_ln301_1_fu_2476_p2;
        add_ln303_reg_3019 <= add_ln303_fu_2457_p2;
        tmp_71_reg_3004 <= {{mul_ln299_fu_2397_p2[18:13]}};
        tmp_73_reg_3009 <= {{mul_ln301_fu_2416_p2[18:13]}};
        tmp_74_reg_3014 <= {{mul_ln302_fu_2441_p2[16:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_reg_2961 <= add_ln299_fu_2360_p2;
        add_ln301_reg_2966 <= add_ln301_fu_2366_p2;
        offset_4_reg_2911 <= offset_4_fu_2298_p5;
        offset_4_reg_2911_pp0_iter1_reg <= offset_4_reg_2911;
        offset_4_reg_2911_pp0_iter2_reg <= offset_4_reg_2911_pp0_iter1_reg;
        offset_4_reg_2911_pp0_iter3_reg <= offset_4_reg_2911_pp0_iter2_reg;
        offset_4_reg_2911_pp0_iter4_reg <= offset_4_reg_2911_pp0_iter3_reg;
        offset_4_reg_2911_pp0_iter5_reg <= offset_4_reg_2911_pp0_iter4_reg;
        offset_4_reg_2911_pp0_iter6_reg <= offset_4_reg_2911_pp0_iter5_reg;
        offset_4_reg_2911_pp0_iter7_reg <= offset_4_reg_2911_pp0_iter6_reg;
        offset_4_reg_2911_pp0_iter8_reg <= offset_4_reg_2911_pp0_iter7_reg;
        offset_reg_2902 <= offset_fu_2272_p1;
        offset_reg_2902_pp0_iter1_reg <= offset_reg_2902;
        offset_reg_2902_pp0_iter2_reg <= offset_reg_2902_pp0_iter1_reg;
        offset_reg_2902_pp0_iter3_reg <= offset_reg_2902_pp0_iter2_reg;
        offset_reg_2902_pp0_iter4_reg <= offset_reg_2902_pp0_iter3_reg;
        offset_reg_2902_pp0_iter5_reg <= offset_reg_2902_pp0_iter4_reg;
        offset_reg_2902_pp0_iter6_reg <= offset_reg_2902_pp0_iter5_reg;
        offset_reg_2902_pp0_iter7_reg <= offset_reg_2902_pp0_iter6_reg;
        offset_reg_2902_pp0_iter8_reg <= offset_reg_2902_pp0_iter7_reg;
        tid_3_reg_2891 <= ap_sig_allocacmp_tid_3;
        tid_3_reg_2891_pp0_iter1_reg <= tid_3_reg_2891;
        tid_3_reg_2891_pp0_iter2_reg <= tid_3_reg_2891_pp0_iter1_reg;
        tid_3_reg_2891_pp0_iter3_reg <= tid_3_reg_2891_pp0_iter2_reg;
        tid_3_reg_2891_pp0_iter4_reg <= tid_3_reg_2891_pp0_iter3_reg;
        tid_3_reg_2891_pp0_iter5_reg <= tid_3_reg_2891_pp0_iter4_reg;
        tid_3_reg_2891_pp0_iter6_reg <= tid_3_reg_2891_pp0_iter5_reg;
        tid_3_reg_2891_pp0_iter7_reg <= tid_3_reg_2891_pp0_iter6_reg;
        tmp_70_reg_2951 <= {{mul_ln172_3_fu_2344_p2[12:10]}};
        tmp_76_reg_3179 <= {{tmp_76_fu_2587_p1[18:13]}};
        tmp_85_reg_3234 <= {{grp_fu_2217_p2[64:36]}};
        tmp_reg_2898 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_2898_pp0_iter1_reg <= tmp_reg_2898;
        tmp_reg_2898_pp0_iter2_reg <= tmp_reg_2898_pp0_iter1_reg;
        tmp_reg_2898_pp0_iter3_reg <= tmp_reg_2898_pp0_iter2_reg;
        tmp_reg_2898_pp0_iter4_reg <= tmp_reg_2898_pp0_iter3_reg;
        tmp_reg_2898_pp0_iter5_reg <= tmp_reg_2898_pp0_iter4_reg;
        tmp_reg_2898_pp0_iter6_reg <= tmp_reg_2898_pp0_iter5_reg;
        tmp_reg_2898_pp0_iter7_reg <= tmp_reg_2898_pp0_iter6_reg;
        tmp_reg_2898_pp0_iter8_reg <= tmp_reg_2898_pp0_iter7_reg;
        zext_ln172_21_reg_2940[5 : 0] <= zext_ln172_21_fu_2335_p1[5 : 0];
        zext_ln172_22_reg_2946[5 : 0] <= zext_ln172_22_fu_2338_p1[5 : 0];
        zext_ln294_reg_2929[6 : 0] <= zext_ln294_fu_2331_p1[6 : 0];
        zext_ln296_reg_2971[5 : 1] <= zext_ln296_fu_2389_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln302_1_reg_3085 <= add_ln302_1_fu_2522_p2;
        add_ln303_1_reg_3090 <= add_ln303_1_fu_2527_p2;
        add_ln304_1_reg_3095 <= add_ln304_1_fu_2532_p2;
        add_ln305_1_reg_3100 <= add_ln305_1_fu_2537_p2;
        tmp_75_reg_3065 <= {{mul_ln303_fu_2494_p2[18:13]}};
        trunc_ln172_reg_3061 <= trunc_ln172_fu_2484_p1;
        urem_ln172_3_reg_2924 <= grp_fu_2316_p2;
        urem_ln172_3_reg_2924_pp0_iter3_reg <= urem_ln172_3_reg_2924;
        urem_ln172_3_reg_2924_pp0_iter4_reg <= urem_ln172_3_reg_2924_pp0_iter3_reg;
        urem_ln172_3_reg_2924_pp0_iter5_reg <= urem_ln172_3_reg_2924_pp0_iter4_reg;
        urem_ln172_3_reg_2924_pp0_iter6_reg <= urem_ln172_3_reg_2924_pp0_iter5_reg;
        urem_ln172_3_reg_2924_pp0_iter7_reg <= urem_ln172_3_reg_2924_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2252 <= {{grp_fu_2202_p2[64:36]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_72_reg_3105 <= {{tmp_72_fu_2558_p1[16:12]}};
        trunc_ln172_5_reg_3110 <= trunc_ln172_5_fu_2567_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_79_reg_3114 <= {{grp_fu_2202_p2[64:36]}};
        tmp_80_reg_3119 <= {{grp_fu_2207_p2[64:36]}};
        tmp_81_reg_3124 <= {{grp_fu_2212_p2[64:36]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_83_reg_3214 <= {{grp_fu_2207_p2[64:36]}};
        tmp_84_reg_3224 <= {{grp_fu_2212_p2[64:36]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2898 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (tmp_reg_2898_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter8_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter8_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to7 = 1'b1;
    end else begin
        ap_idle_pp0_0to7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_178;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_2202_p0 = zext_ln302_3_fu_2571_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_2202_p0 = zext_ln299_3_fu_2510_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_2202_p0 = zext_ln172_23_fu_2462_p1;
        end else begin
            grp_fu_2202_p0 = 'bx;
        end
    end else begin
        grp_fu_2202_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_2207_p0 = zext_ln303_3_fu_2575_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_2207_p0 = zext_ln300_3_fu_2514_p1;
        end else begin
            grp_fu_2207_p0 = 'bx;
        end
    end else begin
        grp_fu_2207_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_2212_p0 = zext_ln304_3_fu_2579_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_2212_p0 = zext_ln301_3_fu_2518_p1;
        end else begin
            grp_fu_2212_p0 = 'bx;
        end
    end else begin
        grp_fu_2212_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_11_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_11_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_11_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_12_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_12_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_12_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_1_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_1_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110== 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_2_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_2_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_2_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_2_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110== 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_6_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_6_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_6_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_6_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110== 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_7_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_7_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_7_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_7_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110== 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_8_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_8_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_8_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_8_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110== 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_9_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_9_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_9_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_9_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110== 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_address0_local = zext_ln302_1_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln299_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln303_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln305_1_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln301_1_fu_2777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln304_1_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln300_1_fu_2761_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_address0_local = zext_ln302_fu_2671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln299_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln303_fu_2687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln305_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln301_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln304_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln300_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_4_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_3_fu_2542_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15)))))) begin
        smem_d0_local = DATA_x_2_load_1_reg_3290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_load_1_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_3_load_1_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_7_load_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_5_load_1_reg_3273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_6_load_1_reg_3324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_4_load_1_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15)))))) begin
        smem_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_load_1_reg_3044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_load_reg_2987;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_3061 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_3061 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3061 == 4'd12) | ((trunc_ln172_reg_3061 == 4'd13) | ((trunc_ln172_reg_3061 == 4'd14) | (trunc_ln172_reg_3061 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110== 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_3110 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3110 == 4'd12) | ((trunc_ln172_5_reg_3110 == 4'd13) | ((trunc_ln172_5_reg_3110 == 4'd14) | (trunc_ln172_5_reg_3110 == 4'd15))))))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = zext_ln296_reg_2971;
assign DATA_x_1_address1 = zext_ln294_reg_2929;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = zext_ln296_reg_2971;
assign DATA_x_2_address1 = zext_ln294_reg_2929;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = zext_ln296_reg_2971;
assign DATA_x_3_address1 = zext_ln294_reg_2929;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = zext_ln296_reg_2971;
assign DATA_x_4_address1 = zext_ln294_reg_2929;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = zext_ln296_reg_2971;
assign DATA_x_5_address1 = zext_ln294_reg_2929;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = zext_ln296_reg_2971;
assign DATA_x_6_address1 = zext_ln294_reg_2929;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = zext_ln296_reg_2971;
assign DATA_x_7_address1 = zext_ln294_reg_2929;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_address0 = zext_ln296_fu_2389_p1;
assign DATA_x_address1 = zext_ln294_fu_2331_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_2321_p2 = (tid_3_reg_2891 + 7'd2);
assign add_ln299_1_fu_2466_p2 = (offset_4_reg_2911_pp0_iter8_reg + 32'd288);
assign add_ln299_fu_2360_p2 = ($signed(zext_ln172_22_fu_2338_p1) + $signed(9'd288));
assign add_ln300_1_fu_2471_p2 = (offset_4_reg_2911_pp0_iter8_reg + 32'd72);
assign add_ln301_1_fu_2476_p2 = (offset_4_reg_2911_pp0_iter8_reg + 32'd360);
assign add_ln301_fu_2366_p2 = ($signed(zext_ln172_22_fu_2338_p1) + $signed(9'd360));
assign add_ln302_1_fu_2522_p2 = (offset_4_reg_2911_pp0_iter8_reg + 32'd144);
assign add_ln302_fu_2432_p2 = ($signed(zext_ln172_21_reg_2940) + $signed(8'd144));
assign add_ln303_1_fu_2527_p2 = (offset_4_reg_2911_pp0_iter8_reg + 32'd432);
assign add_ln303_fu_2457_p2 = ($signed(zext_ln172_21_reg_2940) + $signed(8'd176));
assign add_ln304_1_fu_2532_p2 = (offset_4_reg_2911_pp0_iter8_reg + 32'd216);
assign add_ln305_1_fu_2537_p2 = (offset_4_reg_2911_pp0_iter8_reg + 32'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_2202_p1 = 65'd5286113596;
assign grp_fu_2207_p1 = 65'd5286113596;
assign grp_fu_2212_p1 = 65'd5286113596;
assign grp_fu_2217_p0 = grp_fu_2217_p00;
assign grp_fu_2217_p00 = add_ln305_1_reg_3100;
assign grp_fu_2217_p1 = 65'd5286113596;
assign grp_fu_2310_p0 = {{zext_ln295_fu_2276_p1[31:3]}, {or_ln4_fu_2290_p3}};
assign grp_fu_2310_p1 = 32'd13;
assign grp_fu_2316_p1 = 6'd13;
assign grp_fu_2858_p0 = grp_fu_2858_p00;
assign grp_fu_2858_p00 = offset_reg_2902_pp0_iter7_reg;
assign grp_fu_2858_p1 = 8'd72;
assign grp_fu_2858_p2 = 17'd316;
assign grp_fu_2867_p0 = zext_ln172_22_reg_2946;
assign grp_fu_2867_p1 = 9'd216;
assign grp_fu_2867_p2 = 19'd631;
assign grp_fu_2875_p0 = grp_fu_2875_p00;
assign grp_fu_2875_p00 = offset_reg_2902_pp0_iter8_reg;
assign grp_fu_2875_p1 = 10'd504;
assign grp_fu_2875_p2 = 21'd1261;
assign mul_ln172_3_fu_2344_p0 = mul_ln172_3_fu_2344_p00;
assign mul_ln172_3_fu_2344_p00 = offset_reg_2902_pp0_iter7_reg;
assign mul_ln172_3_fu_2344_p1 = 13'd79;
assign mul_ln299_fu_2397_p0 = mul_ln299_fu_2397_p00;
assign mul_ln299_fu_2397_p00 = add_ln299_reg_2961;
assign mul_ln299_fu_2397_p1 = 19'd631;
assign mul_ln301_fu_2416_p0 = mul_ln301_fu_2416_p00;
assign mul_ln301_fu_2416_p00 = add_ln301_reg_2966;
assign mul_ln301_fu_2416_p1 = 19'd631;
assign mul_ln302_fu_2441_p0 = mul_ln302_fu_2441_p00;
assign mul_ln302_fu_2441_p00 = add_ln302_fu_2432_p2;
assign mul_ln302_fu_2441_p1 = 17'd316;
assign mul_ln303_fu_2494_p0 = mul_ln303_fu_2494_p00;
assign mul_ln303_fu_2494_p00 = $unsigned(sext_ln303_fu_2487_p1);
assign mul_ln303_fu_2494_p1 = 19'd631;
assign offset_4_fu_2298_p5 = {{zext_ln295_fu_2276_p1[31:3]}, {or_ln4_fu_2290_p3}};
assign offset_fu_2272_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln3_fu_2381_p3 = {{tmp_s_fu_2372_p4}, {1'd1}};
assign or_ln4_fu_2290_p3 = {{tmp_30_fu_2280_p4}, {1'd1}};
assign sext_ln303_fu_2487_p1 = $signed(add_ln303_reg_3019);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_30_fu_2280_p4 = {{ap_sig_allocacmp_tid_3[2:1]}};
assign tmp_72_fu_2558_p1 = grp_fu_2858_p3;
assign tmp_76_fu_2587_p1 = grp_fu_2867_p3;
assign tmp_77_fu_2719_p1 = grp_fu_2875_p3;
assign tmp_77_fu_2719_p4 = {{tmp_77_fu_2719_p1[20:14]}};
assign tmp_s_fu_2372_p4 = {{tid_3_reg_2891_pp0_iter7_reg[5:1]}};
assign trunc_ln172_5_fu_2567_p1 = grp_fu_2310_p2[3:0];
assign trunc_ln172_fu_2484_p1 = urem_ln172_3_reg_2924_pp0_iter7_reg[3:0];
assign zext_ln172_21_fu_2335_p1 = offset_reg_2902_pp0_iter7_reg;
assign zext_ln172_22_fu_2338_p1 = offset_reg_2902_pp0_iter7_reg;
assign zext_ln172_23_fu_2462_p1 = offset_4_reg_2911_pp0_iter8_reg;
assign zext_ln172_3_fu_2542_p1 = tmp_70_reg_2951;
assign zext_ln172_4_fu_2596_p1 = reg_2252;
assign zext_ln294_fu_2331_p1 = tid_3_reg_2891_pp0_iter7_reg;
assign zext_ln295_fu_2276_p1 = offset_fu_2272_p1;
assign zext_ln296_fu_2389_p1 = or_ln3_fu_2381_p3;
assign zext_ln299_1_fu_2745_p1 = tmp_79_reg_3114;
assign zext_ln299_3_fu_2510_p1 = add_ln299_1_reg_3029;
assign zext_ln299_fu_2623_p1 = tmp_71_reg_3004;
assign zext_ln300_1_fu_2761_p1 = tmp_80_reg_3119;
assign zext_ln300_3_fu_2514_p1 = add_ln300_1_reg_3034;
assign zext_ln300_fu_2639_p1 = tmp_72_reg_3105;
assign zext_ln301_1_fu_2777_p1 = tmp_81_reg_3124;
assign zext_ln301_3_fu_2518_p1 = add_ln301_1_reg_3039;
assign zext_ln301_fu_2655_p1 = tmp_73_reg_3009;
assign zext_ln302_1_fu_2793_p1 = reg_2252;
assign zext_ln302_3_fu_2571_p1 = add_ln302_1_reg_3085;
assign zext_ln302_fu_2671_p1 = tmp_74_reg_3014;
assign zext_ln303_1_fu_2810_p1 = tmp_83_reg_3214;
assign zext_ln303_3_fu_2575_p1 = add_ln303_1_reg_3090;
assign zext_ln303_fu_2687_p1 = tmp_75_reg_3065;
assign zext_ln304_1_fu_2826_p1 = tmp_84_reg_3224;
assign zext_ln304_3_fu_2579_p1 = add_ln304_1_reg_3095;
assign zext_ln304_fu_2703_p1 = tmp_76_reg_3179;
assign zext_ln305_1_fu_2842_p1 = tmp_85_reg_3234;
assign zext_ln305_fu_2728_p1 = tmp_77_fu_2719_p4;
always @ (posedge ap_clk) begin
    zext_ln294_reg_2929[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_21_reg_2940[7:6] <= 2'b00;
    zext_ln172_22_reg_2946[8:6] <= 3'b000;
    zext_ln296_reg_2971[0] <= 1'b1;
    zext_ln296_reg_2971[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 