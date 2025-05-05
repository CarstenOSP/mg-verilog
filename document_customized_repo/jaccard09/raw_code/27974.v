module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_12_address1,smem_12_ce1,smem_12_we1,smem_12_d1,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_11_address1,smem_11_ce1,smem_11_we1,smem_11_d1,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_10_address1,smem_10_ce1,smem_10_we1,smem_10_d1,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_8_address1,smem_8_ce1,smem_8_we1,smem_8_d1,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [5:0] smem_12_address1;
output   smem_12_ce1;
output   smem_12_we1;
output  [63:0] smem_12_d1;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [5:0] smem_11_address1;
output   smem_11_ce1;
output   smem_11_we1;
output  [63:0] smem_11_d1;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
output   smem_10_we1;
output  [63:0] smem_10_d1;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [5:0] smem_9_address1;
output   smem_9_ce1;
output   smem_9_we1;
output  [63:0] smem_9_d1;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [5:0] smem_8_address1;
output   smem_8_ce1;
output   smem_8_we1;
output  [63:0] smem_8_d1;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [5:0] smem_7_address1;
output   smem_7_ce1;
output   smem_7_we1;
output  [63:0] smem_7_d1;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [5:0] smem_6_address1;
output   smem_6_ce1;
output   smem_6_we1;
output  [63:0] smem_6_d1;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [5:0] smem_5_address1;
output   smem_5_ce1;
output   smem_5_we1;
output  [63:0] smem_5_d1;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [5:0] smem_4_address1;
output   smem_4_ce1;
output   smem_4_we1;
output  [63:0] smem_4_d1;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [5:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [5:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [5:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_2978;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_3_reg_2971;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_3_reg_2971_pp0_iter1_reg;
reg   [6:0] tid_3_reg_2971_pp0_iter2_reg;
reg   [6:0] tid_3_reg_2971_pp0_iter3_reg;
reg   [6:0] tid_3_reg_2971_pp0_iter4_reg;
reg   [0:0] tmp_reg_2978_pp0_iter1_reg;
reg   [0:0] tmp_reg_2978_pp0_iter2_reg;
reg   [0:0] tmp_reg_2978_pp0_iter3_reg;
reg   [0:0] tmp_reg_2978_pp0_iter4_reg;
wire   [5:0] offset_fu_2232_p1;
reg   [5:0] offset_reg_2982;
reg   [5:0] offset_reg_2982_pp0_iter1_reg;
reg   [5:0] offset_reg_2982_pp0_iter2_reg;
reg   [5:0] offset_reg_2982_pp0_iter3_reg;
reg   [5:0] offset_reg_2982_pp0_iter4_reg;
wire   [4:0] tmp_s_fu_2242_p4;
reg   [4:0] tmp_s_reg_2992;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] tmp_s_reg_2992_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_2992_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_2992_pp0_iter3_reg;
wire   [5:0] offset_3_fu_2251_p3;
reg   [5:0] offset_3_reg_2998;
reg   [5:0] offset_3_reg_2998_pp0_iter1_reg;
reg   [5:0] offset_3_reg_2998_pp0_iter2_reg;
reg   [5:0] offset_3_reg_2998_pp0_iter3_reg;
reg   [5:0] offset_3_reg_2998_pp0_iter4_reg;
wire   [7:0] zext_ln172_13_fu_2281_p1;
reg   [7:0] zext_ln172_13_reg_3007;
reg   [7:0] zext_ln172_13_reg_3007_pp0_iter5_reg;
wire   [8:0] add_ln299_fu_2287_p2;
reg   [8:0] add_ln299_reg_3012;
wire   [8:0] add_ln301_fu_2293_p2;
reg   [8:0] add_ln301_reg_3017;
wire   [7:0] add_ln303_fu_2299_p2;
reg   [7:0] add_ln303_reg_3022;
wire   [3:0] trunc_ln172_fu_2305_p1;
reg   [3:0] trunc_ln172_reg_3027;
reg   [3:0] trunc_ln172_reg_3027_pp0_iter5_reg;
reg   [5:0] tmp_65_reg_3031;
wire   [63:0] zext_ln300_2_fu_2335_p1;
reg   [63:0] zext_ln300_2_reg_3036;
reg   [5:0] tmp_67_reg_3048;
reg   [5:0] tmp_69_reg_3053;
wire   [7:0] zext_ln172_17_fu_2382_p1;
reg   [7:0] zext_ln172_17_reg_3058;
wire   [8:0] zext_ln172_18_fu_2385_p1;
reg   [8:0] zext_ln172_18_reg_3063;
wire   [63:0] zext_ln298_1_fu_2395_p1;
reg   [63:0] zext_ln298_1_reg_3068;
wire   [63:0] zext_ln300_3_fu_2407_p1;
reg   [63:0] zext_ln300_3_reg_3075;
wire   [8:0] add_ln301_1_fu_2412_p2;
reg   [8:0] add_ln301_1_reg_3082;
wire   [7:0] add_ln303_1_fu_2418_p2;
reg   [7:0] add_ln303_1_reg_3092;
reg   [2:0] tmp_64_reg_3102;
reg   [2:0] tmp_72_reg_3142;
wire   [3:0] trunc_ln172_3_fu_2475_p1;
reg   [3:0] trunc_ln172_3_reg_3147;
wire   [8:0] add_ln299_1_fu_2479_p2;
reg   [8:0] add_ln299_1_reg_3156;
reg   [63:0] DATA_x_load_1_reg_3161;
reg   [5:0] tmp_75_reg_3178;
reg   [4:0] tmp_76_reg_3183;
reg   [5:0] tmp_77_reg_3188;
reg   [63:0] DATA_x_3_load_2_reg_3193;
reg   [63:0] DATA_x_3_load_3_reg_3210;
reg   [6:0] tmp_79_reg_3227;
reg   [4:0] tmp_68_reg_3232;
reg   [5:0] tmp_73_reg_3242;
reg   [63:0] DATA_x_2_load_reg_3267;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln298_fu_2448_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_3_fu_2560_p1;
wire   [63:0] zext_ln299_fu_2576_p1;
wire   [63:0] zext_ln300_fu_2601_p1;
wire   [63:0] zext_ln301_fu_2618_p1;
wire   [63:0] zext_ln303_fu_2659_p1;
wire   [63:0] zext_ln304_fu_2684_p1;
wire   [63:0] zext_ln305_fu_2710_p1;
wire   [63:0] zext_ln172_4_fu_2727_p1;
wire   [63:0] zext_ln303_1_fu_2762_p1;
wire   [63:0] zext_ln305_1_fu_2778_p1;
wire   [63:0] zext_ln302_fu_2794_p1;
wire   [63:0] zext_ln299_1_fu_2810_p1;
wire   [63:0] zext_ln300_1_fu_2835_p1;
wire   [63:0] zext_ln301_1_fu_2852_p1;
wire   [63:0] zext_ln302_1_fu_2868_p1;
wire   [63:0] zext_ln304_1_fu_2893_p1;
reg   [6:0] tid_fu_150;
wire   [6:0] add_ln294_fu_2265_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_11_we1_local;
reg   [63:0] smem_11_d1_local;
reg    smem_11_ce1_local;
reg   [5:0] smem_11_address1_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_10_we1_local;
reg   [63:0] smem_10_d1_local;
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_9_we1_local;
reg   [63:0] smem_9_d1_local;
reg    smem_9_ce1_local;
reg   [5:0] smem_9_address1_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_8_we1_local;
reg   [63:0] smem_8_d1_local;
reg    smem_8_ce1_local;
reg   [5:0] smem_8_address1_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_7_we1_local;
reg   [63:0] smem_7_d1_local;
reg    smem_7_ce1_local;
reg   [5:0] smem_7_address1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_6_we1_local;
reg   [63:0] smem_6_d1_local;
reg    smem_6_ce1_local;
reg   [5:0] smem_6_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [5:0] smem_5_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [5:0] smem_4_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [5:0] smem_3_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [5:0] smem_2_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [5:0] smem_1_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [5:0] smem_address1_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
reg    smem_12_we1_local;
reg   [63:0] smem_12_d1_local;
reg    smem_12_ce1_local;
reg   [5:0] smem_12_address1_local;
wire   [5:0] grp_fu_2236_p0;
wire   [4:0] grp_fu_2236_p1;
wire   [5:0] grp_fu_2259_p0;
wire   [4:0] grp_fu_2259_p1;
wire   [8:0] zext_ln172_14_fu_2284_p1;
wire   [3:0] grp_fu_2236_p2;
wire   [8:0] mul_ln299_fu_2312_p0;
wire   [10:0] mul_ln299_fu_2312_p1;
wire   [18:0] mul_ln299_fu_2312_p2;
wire   [6:0] or_ln9_fu_2328_p3;
wire   [8:0] mul_ln301_fu_2343_p0;
wire   [10:0] mul_ln301_fu_2343_p1;
wire   [18:0] mul_ln301_fu_2343_p2;
wire  signed [8:0] sext_ln303_fu_2359_p1;
wire   [8:0] mul_ln303_fu_2366_p0;
wire   [10:0] mul_ln303_fu_2366_p1;
wire   [18:0] mul_ln303_fu_2366_p2;
wire   [6:0] or_ln_fu_2388_p3;
wire   [6:0] or_ln300_1_fu_2400_p3;
wire   [5:0] mul_ln172_fu_2427_p0;
wire   [7:0] mul_ln172_fu_2427_p1;
wire   [12:0] mul_ln172_fu_2427_p2;
wire   [6:0] shl_ln298_fu_2443_p2;
wire   [5:0] mul_ln172_3_fu_2459_p0;
wire   [7:0] mul_ln172_3_fu_2459_p1;
wire   [12:0] mul_ln172_3_fu_2459_p2;
wire   [3:0] grp_fu_2259_p2;
wire   [8:0] mul_ln301_1_fu_2487_p0;
wire   [10:0] mul_ln301_1_fu_2487_p1;
wire   [18:0] mul_ln301_1_fu_2487_p2;
wire   [7:0] add_ln302_1_fu_2503_p2;
wire   [7:0] mul_ln302_1_fu_2512_p0;
wire   [9:0] mul_ln302_1_fu_2512_p1;
wire   [16:0] mul_ln302_1_fu_2512_p2;
wire  signed [8:0] sext_ln303_1_fu_2528_p1;
wire   [8:0] mul_ln303_1_fu_2535_p0;
wire   [10:0] mul_ln303_1_fu_2535_p1;
wire   [18:0] mul_ln303_1_fu_2535_p2;
wire   [20:0] tmp_79_fu_2551_p1;
wire  signed [20:0] grp_fu_2910_p3;
wire   [16:0] tmp_66_fu_2592_p1;
wire  signed [16:0] grp_fu_2919_p3;
wire   [4:0] tmp_66_fu_2592_p4;
wire   [7:0] add_ln302_fu_2634_p2;
wire   [7:0] mul_ln302_fu_2643_p0;
wire   [9:0] mul_ln302_fu_2643_p1;
wire   [16:0] mul_ln302_fu_2643_p2;
wire   [18:0] tmp_70_fu_2675_p1;
wire  signed [18:0] grp_fu_2928_p3;
wire   [5:0] tmp_70_fu_2675_p4;
wire   [20:0] tmp_71_fu_2701_p1;
wire  signed [20:0] grp_fu_2937_p3;
wire   [6:0] tmp_71_fu_2701_p4;
wire   [8:0] mul_ln299_1_fu_2746_p0;
wire   [10:0] mul_ln299_1_fu_2746_p1;
wire   [18:0] mul_ln299_1_fu_2746_p2;
wire   [16:0] tmp_74_fu_2826_p1;
wire  signed [16:0] grp_fu_2946_p3;
wire   [4:0] tmp_74_fu_2826_p4;
wire   [18:0] tmp_78_fu_2884_p1;
wire  signed [18:0] grp_fu_2955_p3;
wire   [5:0] tmp_78_fu_2884_p4;
wire   [5:0] grp_fu_2910_p0;
wire   [8:0] grp_fu_2910_p1;
wire   [10:0] grp_fu_2910_p2;
wire   [5:0] grp_fu_2919_p0;
wire   [6:0] grp_fu_2919_p1;
wire   [8:0] grp_fu_2919_p2;
wire   [5:0] grp_fu_2928_p0;
wire   [7:0] grp_fu_2928_p1;
wire   [9:0] grp_fu_2928_p2;
wire   [5:0] grp_fu_2937_p0;
wire   [8:0] grp_fu_2937_p1;
wire   [10:0] grp_fu_2937_p2;
wire   [5:0] grp_fu_2946_p0;
wire   [6:0] grp_fu_2946_p1;
wire   [8:0] grp_fu_2946_p2;
wire   [5:0] grp_fu_2955_p0;
wire   [7:0] grp_fu_2955_p1;
wire   [9:0] grp_fu_2955_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage0;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_2910_p00;
wire   [9:0] grp_fu_2937_p00;
wire   [12:0] mul_ln172_3_fu_2459_p00;
wire   [12:0] mul_ln172_fu_2427_p00;
wire   [18:0] mul_ln299_1_fu_2746_p00;
wire   [18:0] mul_ln299_fu_2312_p00;
wire   [18:0] mul_ln301_1_fu_2487_p00;
wire   [18:0] mul_ln301_fu_2343_p00;
wire   [16:0] mul_ln302_1_fu_2512_p00;
wire   [16:0] mul_ln302_fu_2643_p00;
wire   [18:0] mul_ln303_1_fu_2535_p00;
wire   [18:0] mul_ln303_fu_2366_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_150 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U213(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2236_p0),.din1(grp_fu_2236_p1),.ce(1'b1),.dout(grp_fu_2236_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U214(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2259_p0),.din1(grp_fu_2259_p1),.ce(1'b1),.dout(grp_fu_2259_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U215(.din0(mul_ln299_fu_2312_p0),.din1(mul_ln299_fu_2312_p1),.dout(mul_ln299_fu_2312_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U216(.din0(mul_ln301_fu_2343_p0),.din1(mul_ln301_fu_2343_p1),.dout(mul_ln301_fu_2343_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U217(.din0(mul_ln303_fu_2366_p0),.din1(mul_ln303_fu_2366_p1),.dout(mul_ln303_fu_2366_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U218(.din0(mul_ln172_fu_2427_p0),.din1(mul_ln172_fu_2427_p1),.dout(mul_ln172_fu_2427_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U219(.din0(mul_ln172_3_fu_2459_p0),.din1(mul_ln172_3_fu_2459_p1),.dout(mul_ln172_3_fu_2459_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U220(.din0(mul_ln301_1_fu_2487_p0),.din1(mul_ln301_1_fu_2487_p1),.dout(mul_ln301_1_fu_2487_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U221(.din0(mul_ln302_1_fu_2512_p0),.din1(mul_ln302_1_fu_2512_p1),.dout(mul_ln302_1_fu_2512_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U222(.din0(mul_ln303_1_fu_2535_p0),.din1(mul_ln303_1_fu_2535_p1),.dout(mul_ln303_1_fu_2535_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U223(.din0(mul_ln302_fu_2643_p0),.din1(mul_ln302_fu_2643_p1),.dout(mul_ln302_fu_2643_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U224(.din0(mul_ln299_1_fu_2746_p0),.din1(mul_ln299_1_fu_2746_p1),.dout(mul_ln299_1_fu_2746_p2));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2910_p0),.din1(grp_fu_2910_p1),.din2(grp_fu_2910_p2),.ce(1'b1),.dout(grp_fu_2910_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U226(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2919_p0),.din1(grp_fu_2919_p1),.din2(grp_fu_2919_p2),.ce(1'b1),.dout(grp_fu_2919_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U227(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2928_p0),.din1(grp_fu_2928_p1),.din2(grp_fu_2928_p2),.ce(1'b1),.dout(grp_fu_2928_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U228(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2937_p0),.din1(grp_fu_2937_p1),.din2(grp_fu_2937_p2),.ce(1'b1),.dout(grp_fu_2937_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U229(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2946_p0),.din1(grp_fu_2946_p1),.din2(grp_fu_2946_p2),.ce(1'b1),.dout(grp_fu_2946_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U230(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2955_p0),.din1(grp_fu_2955_p1),.din2(grp_fu_2955_p2),.ce(1'b1),.dout(grp_fu_2955_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_150 <= 7'd0;
    end else if (((tmp_reg_2978 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_150 <= add_ln294_fu_2265_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_load_reg_3267 <= DATA_x_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_load_2_reg_3193 <= DATA_x_3_q1;
        DATA_x_3_load_3_reg_3210 <= DATA_x_3_q0;
        DATA_x_load_1_reg_3161 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_1_reg_3156[8 : 1] <= add_ln299_1_fu_2479_p2[8 : 1];
        add_ln299_reg_3012 <= add_ln299_fu_2287_p2;
        add_ln301_reg_3017 <= add_ln301_fu_2293_p2;
        add_ln303_reg_3022 <= add_ln303_fu_2299_p2;
        offset_reg_2982 <= offset_fu_2232_p1;
        offset_reg_2982_pp0_iter1_reg <= offset_reg_2982;
        offset_reg_2982_pp0_iter2_reg <= offset_reg_2982_pp0_iter1_reg;
        offset_reg_2982_pp0_iter3_reg <= offset_reg_2982_pp0_iter2_reg;
        offset_reg_2982_pp0_iter4_reg <= offset_reg_2982_pp0_iter3_reg;
        tid_3_reg_2971 <= ap_sig_allocacmp_tid_3;
        tid_3_reg_2971_pp0_iter1_reg <= tid_3_reg_2971;
        tid_3_reg_2971_pp0_iter2_reg <= tid_3_reg_2971_pp0_iter1_reg;
        tid_3_reg_2971_pp0_iter3_reg <= tid_3_reg_2971_pp0_iter2_reg;
        tid_3_reg_2971_pp0_iter4_reg <= tid_3_reg_2971_pp0_iter3_reg;
        tmp_64_reg_3102 <= {{mul_ln172_fu_2427_p2[12:10]}};
        tmp_72_reg_3142 <= {{mul_ln172_3_fu_2459_p2[12:10]}};
        tmp_75_reg_3178 <= {{mul_ln301_1_fu_2487_p2[18:13]}};
        tmp_76_reg_3183 <= {{mul_ln302_1_fu_2512_p2[16:12]}};
        tmp_77_reg_3188 <= {{mul_ln303_1_fu_2535_p2[18:13]}};
        tmp_79_reg_3227 <= {{tmp_79_fu_2551_p1[20:14]}};
        tmp_reg_2978 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_2978_pp0_iter1_reg <= tmp_reg_2978;
        tmp_reg_2978_pp0_iter2_reg <= tmp_reg_2978_pp0_iter1_reg;
        tmp_reg_2978_pp0_iter3_reg <= tmp_reg_2978_pp0_iter2_reg;
        tmp_reg_2978_pp0_iter4_reg <= tmp_reg_2978_pp0_iter3_reg;
        trunc_ln172_3_reg_3147 <= trunc_ln172_3_fu_2475_p1;
        zext_ln172_13_reg_3007[5 : 0] <= zext_ln172_13_fu_2281_p1[5 : 0];
        zext_ln172_13_reg_3007_pp0_iter5_reg[5 : 0] <= zext_ln172_13_reg_3007[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln301_1_reg_3082[8 : 1] <= add_ln301_1_fu_2412_p2[8 : 1];
        add_ln303_1_reg_3092[7 : 1] <= add_ln303_1_fu_2418_p2[7 : 1];
        offset_3_reg_2998[5 : 1] <= offset_3_fu_2251_p3[5 : 1];
        offset_3_reg_2998_pp0_iter1_reg[5 : 1] <= offset_3_reg_2998[5 : 1];
        offset_3_reg_2998_pp0_iter2_reg[5 : 1] <= offset_3_reg_2998_pp0_iter1_reg[5 : 1];
        offset_3_reg_2998_pp0_iter3_reg[5 : 1] <= offset_3_reg_2998_pp0_iter2_reg[5 : 1];
        offset_3_reg_2998_pp0_iter4_reg[5 : 1] <= offset_3_reg_2998_pp0_iter3_reg[5 : 1];
        tmp_65_reg_3031 <= {{mul_ln299_fu_2312_p2[18:13]}};
        tmp_67_reg_3048 <= {{mul_ln301_fu_2343_p2[18:13]}};
        tmp_68_reg_3232 <= {{mul_ln302_fu_2643_p2[16:12]}};
        tmp_69_reg_3053 <= {{mul_ln303_fu_2366_p2[18:13]}};
        tmp_73_reg_3242 <= {{mul_ln299_1_fu_2746_p2[18:13]}};
        tmp_s_reg_2992 <= {{tid_3_reg_2971[5:1]}};
        tmp_s_reg_2992_pp0_iter1_reg <= tmp_s_reg_2992;
        tmp_s_reg_2992_pp0_iter2_reg <= tmp_s_reg_2992_pp0_iter1_reg;
        tmp_s_reg_2992_pp0_iter3_reg <= tmp_s_reg_2992_pp0_iter2_reg;
        trunc_ln172_reg_3027 <= trunc_ln172_fu_2305_p1;
        trunc_ln172_reg_3027_pp0_iter5_reg <= trunc_ln172_reg_3027;
        zext_ln172_17_reg_3058[5 : 1] <= zext_ln172_17_fu_2382_p1[5 : 1];
        zext_ln172_18_reg_3063[5 : 1] <= zext_ln172_18_fu_2385_p1[5 : 1];
        zext_ln298_1_reg_3068[6 : 2] <= zext_ln298_1_fu_2395_p1[6 : 2];
        zext_ln300_2_reg_3036[6 : 1] <= zext_ln300_2_fu_2335_p1[6 : 1];
        zext_ln300_3_reg_3075[6 : 2] <= zext_ln300_3_fu_2407_p1[6 : 2];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln300_3_reg_3075;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_2_reg_3036;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln298_1_reg_3068;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_2448_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln300_3_reg_3075;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln300_2_reg_3036;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln298_1_reg_3068;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln298_fu_2448_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln300_2_reg_3036;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln300_3_fu_2407_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln298_fu_2448_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln298_1_fu_2395_p1;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln300_3_reg_3075;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln298_1_reg_3068;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln298_fu_2448_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln300_2_fu_2335_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2978 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (tmp_reg_2978_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
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
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_q1;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_q0;
    end else begin
        smem_10_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we1_local = 1'b1;
    end else begin
        smem_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_q1;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_x_q0;
    end else begin
        smem_11_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_we1_local = 1'b1;
    end else begin
        smem_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_12_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_12_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_12_d0_local = DATA_x_q1;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_12_d1_local = DATA_x_q0;
    end else begin
        smem_12_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_we1_local = 1'b1;
    end else begin
        smem_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))))) begin
        smem_1_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q1;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_q0;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_2_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_2_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_2_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_2_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_q0;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_q1;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_q0;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_q1;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_q0;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_load_1_reg_3161;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_q1;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_q0;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_6_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_6_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_6_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_6_d0_local = DATA_x_load_1_reg_3161;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d0_local = DATA_x_2_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_q1;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_q0;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_7_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_7_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))))) begin
        smem_7_d0_local = DATA_x_2_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_q1;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_q0;
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_8_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_8_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))))) begin
        smem_8_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_q1;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_q0;
    end else begin
        smem_8_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_we1_local = 1'b1;
    end else begin
        smem_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_9_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_9_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13) | ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15)))))) begin
        smem_9_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_q1;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_9_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_x_q0;
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3027 == 4'd12) | ((trunc_ln172_reg_3027 == 4'd13)| ((trunc_ln172_reg_3027 == 4'd14) | (trunc_ln172_reg_3027 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_address0_local = zext_ln302_1_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln299_1_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln301_1_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln304_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln300_1_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln299_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln303_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln305_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln301_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln304_fu_2684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln300_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_3_fu_2560_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln302_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln303_1_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln305_1_fu_2778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln172_4_fu_2727_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15)))))) begin
        smem_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_1_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_x_2_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_3_load_2_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_3_load_3_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_q0;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3027 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_3_reg_3147 == 4'd12) | ((trunc_ln172_3_reg_3147 == 4'd13) | ((trunc_ln172_3_reg_3147 == 4'd14) | (trunc_ln172_3_reg_3147 == 4'd15))))))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_3_reg_3147 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3027_pp0_iter5_reg == 4'd12) | ((trunc_ln172_reg_3027_pp0_iter5_reg == 4'd13) | ((trunc_ln172_reg_3027_pp0_iter5_reg == 4'd14) | (trunc_ln172_reg_3027_pp0_iter5_reg == 4'd15))))))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_2265_p2 = (tid_3_reg_2971 + 7'd2);
assign add_ln299_1_fu_2479_p2 = ($signed(zext_ln172_18_reg_3063) + $signed(9'd288));
assign add_ln299_fu_2287_p2 = ($signed(zext_ln172_14_fu_2284_p1) + $signed(9'd288));
assign add_ln301_1_fu_2412_p2 = ($signed(zext_ln172_18_fu_2385_p1) + $signed(9'd360));
assign add_ln301_fu_2293_p2 = ($signed(zext_ln172_14_fu_2284_p1) + $signed(9'd360));
assign add_ln302_1_fu_2503_p2 = ($signed(zext_ln172_17_reg_3058) + $signed(8'd144));
assign add_ln302_fu_2634_p2 = ($signed(zext_ln172_13_reg_3007_pp0_iter5_reg) + $signed(8'd144));
assign add_ln303_1_fu_2418_p2 = ($signed(zext_ln172_17_fu_2382_p1) + $signed(8'd176));
assign add_ln303_fu_2299_p2 = ($signed(zext_ln172_13_fu_2281_p1) + $signed(8'd176));
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
assign grp_fu_2236_p0 = ap_sig_allocacmp_tid_3[5:0];
assign grp_fu_2236_p1 = 6'd13;
assign grp_fu_2259_p0 = {{tmp_s_fu_2242_p4}, {1'd1}};
assign grp_fu_2259_p1 = 6'd13;
assign grp_fu_2910_p0 = grp_fu_2910_p00;
assign grp_fu_2910_p00 = offset_3_reg_2998_pp0_iter2_reg;
assign grp_fu_2910_p1 = 10'd504;
assign grp_fu_2910_p2 = 21'd1261;
assign grp_fu_2919_p0 = zext_ln172_13_fu_2281_p1;
assign grp_fu_2919_p1 = 8'd72;
assign grp_fu_2919_p2 = 17'd316;
assign grp_fu_2928_p0 = zext_ln172_14_fu_2284_p1;
assign grp_fu_2928_p1 = 9'd216;
assign grp_fu_2928_p2 = 19'd631;
assign grp_fu_2937_p0 = grp_fu_2937_p00;
assign grp_fu_2937_p00 = offset_reg_2982_pp0_iter3_reg;
assign grp_fu_2937_p1 = 10'd504;
assign grp_fu_2937_p2 = 21'd1261;
assign grp_fu_2946_p0 = zext_ln172_17_fu_2382_p1;
assign grp_fu_2946_p1 = 8'd72;
assign grp_fu_2946_p2 = 17'd316;
assign grp_fu_2955_p0 = zext_ln172_18_fu_2385_p1;
assign grp_fu_2955_p1 = 9'd216;
assign grp_fu_2955_p2 = 19'd631;
assign mul_ln172_3_fu_2459_p0 = mul_ln172_3_fu_2459_p00;
assign mul_ln172_3_fu_2459_p00 = offset_3_reg_2998_pp0_iter4_reg;
assign mul_ln172_3_fu_2459_p1 = 13'd79;
assign mul_ln172_fu_2427_p0 = mul_ln172_fu_2427_p00;
assign mul_ln172_fu_2427_p00 = offset_reg_2982_pp0_iter4_reg;
assign mul_ln172_fu_2427_p1 = 13'd79;
assign mul_ln299_1_fu_2746_p0 = mul_ln299_1_fu_2746_p00;
assign mul_ln299_1_fu_2746_p00 = add_ln299_1_reg_3156;
assign mul_ln299_1_fu_2746_p1 = 19'd631;
assign mul_ln299_fu_2312_p0 = mul_ln299_fu_2312_p00;
assign mul_ln299_fu_2312_p00 = add_ln299_reg_3012;
assign mul_ln299_fu_2312_p1 = 19'd631;
assign mul_ln301_1_fu_2487_p0 = mul_ln301_1_fu_2487_p00;
assign mul_ln301_1_fu_2487_p00 = add_ln301_1_reg_3082;
assign mul_ln301_1_fu_2487_p1 = 19'd631;
assign mul_ln301_fu_2343_p0 = mul_ln301_fu_2343_p00;
assign mul_ln301_fu_2343_p00 = add_ln301_reg_3017;
assign mul_ln301_fu_2343_p1 = 19'd631;
assign mul_ln302_1_fu_2512_p0 = mul_ln302_1_fu_2512_p00;
assign mul_ln302_1_fu_2512_p00 = add_ln302_1_fu_2503_p2;
assign mul_ln302_1_fu_2512_p1 = 17'd316;
assign mul_ln302_fu_2643_p0 = mul_ln302_fu_2643_p00;
assign mul_ln302_fu_2643_p00 = add_ln302_fu_2634_p2;
assign mul_ln302_fu_2643_p1 = 17'd316;
assign mul_ln303_1_fu_2535_p0 = mul_ln303_1_fu_2535_p00;
assign mul_ln303_1_fu_2535_p00 = $unsigned(sext_ln303_1_fu_2528_p1);
assign mul_ln303_1_fu_2535_p1 = 19'd631;
assign mul_ln303_fu_2366_p0 = mul_ln303_fu_2366_p00;
assign mul_ln303_fu_2366_p00 = $unsigned(sext_ln303_fu_2359_p1);
assign mul_ln303_fu_2366_p1 = 19'd631;
assign offset_3_fu_2251_p3 = {{tmp_s_fu_2242_p4}, {1'd1}};
assign offset_fu_2232_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln300_1_fu_2400_p3 = {{tmp_s_reg_2992_pp0_iter3_reg}, {2'd3}};
assign or_ln9_fu_2328_p3 = {{offset_reg_2982_pp0_iter4_reg}, {1'd1}};
assign or_ln_fu_2388_p3 = {{tmp_s_reg_2992_pp0_iter3_reg}, {2'd2}};
assign sext_ln303_1_fu_2528_p1 = $signed(add_ln303_1_reg_3092);
assign sext_ln303_fu_2359_p1 = $signed(add_ln303_reg_3022);
assign shl_ln298_fu_2443_p2 = tid_3_reg_2971_pp0_iter4_reg << 7'd1;
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_d1 = smem_10_d1_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_10_we1 = smem_10_we1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_d1 = smem_11_d1_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_11_we1 = smem_11_we1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = smem_12_address1_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_d1 = smem_12_d1_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_12_we1 = smem_12_we1_local;
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
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_d1 = smem_5_d1_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_5_we1 = smem_5_we1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_d1 = smem_6_d1_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_6_we1 = smem_6_we1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_d1 = smem_7_d1_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_7_we1 = smem_7_we1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_d1 = smem_8_d1_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_8_we1 = smem_8_we1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_d1 = smem_9_d1_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_9_we1 = smem_9_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_66_fu_2592_p1 = grp_fu_2919_p3;
assign tmp_66_fu_2592_p4 = {{tmp_66_fu_2592_p1[16:12]}};
assign tmp_70_fu_2675_p1 = grp_fu_2928_p3;
assign tmp_70_fu_2675_p4 = {{tmp_70_fu_2675_p1[18:13]}};
assign tmp_71_fu_2701_p1 = grp_fu_2937_p3;
assign tmp_71_fu_2701_p4 = {{tmp_71_fu_2701_p1[20:14]}};
assign tmp_74_fu_2826_p1 = grp_fu_2946_p3;
assign tmp_74_fu_2826_p4 = {{tmp_74_fu_2826_p1[16:12]}};
assign tmp_78_fu_2884_p1 = grp_fu_2955_p3;
assign tmp_78_fu_2884_p4 = {{tmp_78_fu_2884_p1[18:13]}};
assign tmp_79_fu_2551_p1 = grp_fu_2910_p3;
assign tmp_s_fu_2242_p4 = {{tid_3_reg_2971[5:1]}};
assign trunc_ln172_3_fu_2475_p1 = grp_fu_2259_p2[3:0];
assign trunc_ln172_fu_2305_p1 = grp_fu_2236_p2[3:0];
assign zext_ln172_13_fu_2281_p1 = offset_reg_2982_pp0_iter3_reg;
assign zext_ln172_14_fu_2284_p1 = offset_reg_2982_pp0_iter3_reg;
assign zext_ln172_17_fu_2382_p1 = offset_3_reg_2998_pp0_iter3_reg;
assign zext_ln172_18_fu_2385_p1 = offset_3_reg_2998_pp0_iter3_reg;
assign zext_ln172_3_fu_2560_p1 = tmp_64_reg_3102;
assign zext_ln172_4_fu_2727_p1 = tmp_72_reg_3142;
assign zext_ln298_1_fu_2395_p1 = or_ln_fu_2388_p3;
assign zext_ln298_fu_2448_p1 = shl_ln298_fu_2443_p2;
assign zext_ln299_1_fu_2810_p1 = tmp_73_reg_3242;
assign zext_ln299_fu_2576_p1 = tmp_65_reg_3031;
assign zext_ln300_1_fu_2835_p1 = tmp_74_fu_2826_p4;
assign zext_ln300_2_fu_2335_p1 = or_ln9_fu_2328_p3;
assign zext_ln300_3_fu_2407_p1 = or_ln300_1_fu_2400_p3;
assign zext_ln300_fu_2601_p1 = tmp_66_fu_2592_p4;
assign zext_ln301_1_fu_2852_p1 = tmp_75_reg_3178;
assign zext_ln301_fu_2618_p1 = tmp_67_reg_3048;
assign zext_ln302_1_fu_2868_p1 = tmp_76_reg_3183;
assign zext_ln302_fu_2794_p1 = tmp_68_reg_3232;
assign zext_ln303_1_fu_2762_p1 = tmp_77_reg_3188;
assign zext_ln303_fu_2659_p1 = tmp_69_reg_3053;
assign zext_ln304_1_fu_2893_p1 = tmp_78_fu_2884_p4;
assign zext_ln304_fu_2684_p1 = tmp_70_fu_2675_p4;
assign zext_ln305_1_fu_2778_p1 = tmp_79_reg_3227;
assign zext_ln305_fu_2710_p1 = tmp_71_fu_2701_p4;
always @ (posedge ap_clk) begin
    offset_3_reg_2998[0] <= 1'b1;
    offset_3_reg_2998_pp0_iter1_reg[0] <= 1'b1;
    offset_3_reg_2998_pp0_iter2_reg[0] <= 1'b1;
    offset_3_reg_2998_pp0_iter3_reg[0] <= 1'b1;
    offset_3_reg_2998_pp0_iter4_reg[0] <= 1'b1;
    zext_ln172_13_reg_3007[7:6] <= 2'b00;
    zext_ln172_13_reg_3007_pp0_iter5_reg[7:6] <= 2'b00;
    zext_ln300_2_reg_3036[0] <= 1'b1;
    zext_ln300_2_reg_3036[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_17_reg_3058[0] <= 1'b1;
    zext_ln172_17_reg_3058[7:6] <= 2'b00;
    zext_ln172_18_reg_3063[0] <= 1'b1;
    zext_ln172_18_reg_3063[8:6] <= 3'b000;
    zext_ln298_1_reg_3068[1:0] <= 2'b10;
    zext_ln298_1_reg_3068[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln300_3_reg_3075[1:0] <= 2'b11;
    zext_ln300_3_reg_3075[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln301_1_reg_3082[0] <= 1'b1;
    add_ln303_1_reg_3092[0] <= 1'b1;
    add_ln299_1_reg_3156[0] <= 1'b1;
end
endmodule 