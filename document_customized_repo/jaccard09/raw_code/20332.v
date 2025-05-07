module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_10_address1,smem_10_ce1,smem_10_we1,smem_10_d1,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_8_address1,smem_8_ce1,smem_8_we1,smem_8_d1,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
reg   [0:0] tmp_reg_2646;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_3_reg_2639;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_3_reg_2639_pp0_iter1_reg;
reg   [6:0] tid_3_reg_2639_pp0_iter2_reg;
reg   [6:0] tid_3_reg_2639_pp0_iter3_reg;
reg   [6:0] tid_3_reg_2639_pp0_iter4_reg;
reg   [0:0] tmp_reg_2646_pp0_iter1_reg;
reg   [0:0] tmp_reg_2646_pp0_iter2_reg;
reg   [0:0] tmp_reg_2646_pp0_iter3_reg;
reg   [0:0] tmp_reg_2646_pp0_iter4_reg;
wire   [5:0] offset_fu_1932_p1;
reg   [5:0] offset_reg_2650;
reg   [5:0] offset_reg_2650_pp0_iter1_reg;
reg   [5:0] offset_reg_2650_pp0_iter2_reg;
reg   [5:0] offset_reg_2650_pp0_iter3_reg;
reg   [5:0] offset_reg_2650_pp0_iter4_reg;
wire   [4:0] tmp_s_fu_1942_p4;
reg   [4:0] tmp_s_reg_2660;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] tmp_s_reg_2660_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_2660_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_2660_pp0_iter3_reg;
wire   [5:0] offset_2_fu_1951_p3;
reg   [5:0] offset_2_reg_2666;
reg   [5:0] offset_2_reg_2666_pp0_iter1_reg;
reg   [5:0] offset_2_reg_2666_pp0_iter2_reg;
reg   [5:0] offset_2_reg_2666_pp0_iter3_reg;
reg   [5:0] offset_2_reg_2666_pp0_iter4_reg;
wire   [7:0] zext_ln172_10_fu_1981_p1;
reg   [7:0] zext_ln172_10_reg_2675;
reg   [7:0] zext_ln172_10_reg_2675_pp0_iter5_reg;
wire   [8:0] add_ln299_fu_1987_p2;
reg   [8:0] add_ln299_reg_2680;
wire   [8:0] add_ln301_fu_1993_p2;
reg   [8:0] add_ln301_reg_2685;
wire   [7:0] add_ln303_fu_1999_p2;
reg   [7:0] add_ln303_reg_2690;
wire   [3:0] trunc_ln172_fu_2005_p1;
reg   [3:0] trunc_ln172_reg_2695;
reg   [3:0] trunc_ln172_reg_2695_pp0_iter5_reg;
reg   [5:0] tmp_54_reg_2699;
wire   [63:0] zext_ln300_2_fu_2035_p1;
reg   [63:0] zext_ln300_2_reg_2704;
reg   [5:0] tmp_56_reg_2716;
reg   [5:0] tmp_58_reg_2721;
wire   [7:0] zext_ln172_16_fu_2082_p1;
reg   [7:0] zext_ln172_16_reg_2726;
wire   [8:0] zext_ln172_17_fu_2085_p1;
reg   [8:0] zext_ln172_17_reg_2731;
wire   [63:0] zext_ln298_1_fu_2095_p1;
reg   [63:0] zext_ln298_1_reg_2736;
wire   [63:0] zext_ln300_3_fu_2107_p1;
reg   [63:0] zext_ln300_3_reg_2743;
wire   [8:0] add_ln301_1_fu_2112_p2;
reg   [8:0] add_ln301_1_reg_2750;
wire   [7:0] add_ln303_1_fu_2118_p2;
reg   [7:0] add_ln303_1_reg_2760;
reg   [2:0] tmp_53_reg_2770;
reg   [2:0] tmp_61_reg_2810;
wire   [3:0] trunc_ln172_2_fu_2175_p1;
reg   [3:0] trunc_ln172_2_reg_2815;
wire   [8:0] add_ln299_1_fu_2179_p2;
reg   [8:0] add_ln299_1_reg_2824;
reg   [63:0] DATA_x_load_1_reg_2829;
reg   [5:0] tmp_64_reg_2844;
reg   [4:0] tmp_65_reg_2849;
reg   [5:0] tmp_66_reg_2854;
reg   [63:0] DATA_x_3_load_2_reg_2859;
reg   [63:0] DATA_x_3_load_3_reg_2874;
reg   [6:0] tmp_68_reg_2889;
reg   [4:0] tmp_57_reg_2894;
reg   [5:0] tmp_62_reg_2904;
reg   [63:0] DATA_x_2_load_reg_2929;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln298_fu_2148_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_12_fu_2260_p1;
wire   [63:0] zext_ln299_fu_2274_p1;
wire   [63:0] zext_ln300_fu_2297_p1;
wire   [63:0] zext_ln301_fu_2312_p1;
wire   [63:0] zext_ln303_fu_2351_p1;
wire   [63:0] zext_ln304_fu_2374_p1;
wire   [63:0] zext_ln305_fu_2398_p1;
wire   [63:0] zext_ln172_13_fu_2413_p1;
wire   [63:0] zext_ln303_1_fu_2446_p1;
wire   [63:0] zext_ln305_1_fu_2460_p1;
wire   [63:0] zext_ln302_fu_2474_p1;
wire   [63:0] zext_ln299_1_fu_2488_p1;
wire   [63:0] zext_ln300_1_fu_2511_p1;
wire   [63:0] zext_ln301_1_fu_2526_p1;
wire   [63:0] zext_ln302_1_fu_2540_p1;
wire   [63:0] zext_ln304_1_fu_2563_p1;
reg   [6:0] tid_fu_142;
wire   [6:0] add_ln294_fu_1965_p2;
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
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_10_we1_local;
reg   [63:0] smem_10_d1_local;
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
wire   [5:0] grp_fu_1936_p0;
wire   [4:0] grp_fu_1936_p1;
wire   [5:0] grp_fu_1959_p0;
wire   [4:0] grp_fu_1959_p1;
wire   [8:0] zext_ln172_11_fu_1984_p1;
wire   [3:0] grp_fu_1936_p2;
wire   [8:0] mul_ln299_fu_2012_p0;
wire   [10:0] mul_ln299_fu_2012_p1;
wire   [18:0] mul_ln299_fu_2012_p2;
wire   [6:0] or_ln_fu_2028_p3;
wire   [8:0] mul_ln301_fu_2043_p0;
wire   [10:0] mul_ln301_fu_2043_p1;
wire   [18:0] mul_ln301_fu_2043_p2;
wire  signed [8:0] sext_ln303_fu_2059_p1;
wire   [8:0] mul_ln303_fu_2066_p0;
wire   [10:0] mul_ln303_fu_2066_p1;
wire   [18:0] mul_ln303_fu_2066_p2;
wire   [6:0] or_ln2_fu_2088_p3;
wire   [6:0] or_ln300_1_fu_2100_p3;
wire   [5:0] mul_ln172_fu_2127_p0;
wire   [7:0] mul_ln172_fu_2127_p1;
wire   [12:0] mul_ln172_fu_2127_p2;
wire   [6:0] shl_ln298_fu_2143_p2;
wire   [5:0] mul_ln172_2_fu_2159_p0;
wire   [7:0] mul_ln172_2_fu_2159_p1;
wire   [12:0] mul_ln172_2_fu_2159_p2;
wire   [3:0] grp_fu_1959_p2;
wire   [8:0] mul_ln301_1_fu_2187_p0;
wire   [10:0] mul_ln301_1_fu_2187_p1;
wire   [18:0] mul_ln301_1_fu_2187_p2;
wire   [7:0] add_ln302_1_fu_2203_p2;
wire   [7:0] mul_ln302_1_fu_2212_p0;
wire   [9:0] mul_ln302_1_fu_2212_p1;
wire   [16:0] mul_ln302_1_fu_2212_p2;
wire  signed [8:0] sext_ln303_1_fu_2228_p1;
wire   [8:0] mul_ln303_1_fu_2235_p0;
wire   [10:0] mul_ln303_1_fu_2235_p1;
wire   [18:0] mul_ln303_1_fu_2235_p2;
wire   [20:0] tmp_68_fu_2251_p1;
wire  signed [20:0] grp_fu_2578_p3;
wire   [16:0] tmp_55_fu_2288_p1;
wire  signed [16:0] grp_fu_2587_p3;
wire   [4:0] tmp_55_fu_2288_p4;
wire   [7:0] add_ln302_fu_2326_p2;
wire   [7:0] mul_ln302_fu_2335_p0;
wire   [9:0] mul_ln302_fu_2335_p1;
wire   [16:0] mul_ln302_fu_2335_p2;
wire   [18:0] tmp_59_fu_2365_p1;
wire  signed [18:0] grp_fu_2596_p3;
wire   [5:0] tmp_59_fu_2365_p4;
wire   [20:0] tmp_60_fu_2389_p1;
wire  signed [20:0] grp_fu_2605_p3;
wire   [6:0] tmp_60_fu_2389_p4;
wire   [8:0] mul_ln299_1_fu_2430_p0;
wire   [10:0] mul_ln299_1_fu_2430_p1;
wire   [18:0] mul_ln299_1_fu_2430_p2;
wire   [16:0] tmp_63_fu_2502_p1;
wire  signed [16:0] grp_fu_2614_p3;
wire   [4:0] tmp_63_fu_2502_p4;
wire   [18:0] tmp_67_fu_2554_p1;
wire  signed [18:0] grp_fu_2623_p3;
wire   [5:0] tmp_67_fu_2554_p4;
wire   [5:0] grp_fu_2578_p0;
wire   [8:0] grp_fu_2578_p1;
wire   [10:0] grp_fu_2578_p2;
wire   [5:0] grp_fu_2587_p0;
wire   [6:0] grp_fu_2587_p1;
wire   [8:0] grp_fu_2587_p2;
wire   [5:0] grp_fu_2596_p0;
wire   [7:0] grp_fu_2596_p1;
wire   [9:0] grp_fu_2596_p2;
wire   [5:0] grp_fu_2605_p0;
wire   [8:0] grp_fu_2605_p1;
wire   [10:0] grp_fu_2605_p2;
wire   [5:0] grp_fu_2614_p0;
wire   [6:0] grp_fu_2614_p1;
wire   [8:0] grp_fu_2614_p2;
wire   [5:0] grp_fu_2623_p0;
wire   [7:0] grp_fu_2623_p1;
wire   [9:0] grp_fu_2623_p2;
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
wire   [9:0] grp_fu_2578_p00;
wire   [9:0] grp_fu_2605_p00;
wire   [12:0] mul_ln172_2_fu_2159_p00;
wire   [12:0] mul_ln172_fu_2127_p00;
wire   [18:0] mul_ln299_1_fu_2430_p00;
wire   [18:0] mul_ln299_fu_2012_p00;
wire   [18:0] mul_ln301_1_fu_2187_p00;
wire   [18:0] mul_ln301_fu_2043_p00;
wire   [16:0] mul_ln302_1_fu_2212_p00;
wire   [16:0] mul_ln302_fu_2335_p00;
wire   [18:0] mul_ln303_1_fu_2235_p00;
wire   [18:0] mul_ln303_fu_2066_p00;
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
#0 tid_fu_142 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U489(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1936_p0),.din1(grp_fu_1936_p1),.ce(1'b1),.dout(grp_fu_1936_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U490(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1959_p0),.din1(grp_fu_1959_p1),.ce(1'b1),.dout(grp_fu_1959_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U491(.din0(mul_ln299_fu_2012_p0),.din1(mul_ln299_fu_2012_p1),.dout(mul_ln299_fu_2012_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U492(.din0(mul_ln301_fu_2043_p0),.din1(mul_ln301_fu_2043_p1),.dout(mul_ln301_fu_2043_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U493(.din0(mul_ln303_fu_2066_p0),.din1(mul_ln303_fu_2066_p1),.dout(mul_ln303_fu_2066_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U494(.din0(mul_ln172_fu_2127_p0),.din1(mul_ln172_fu_2127_p1),.dout(mul_ln172_fu_2127_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U495(.din0(mul_ln172_2_fu_2159_p0),.din1(mul_ln172_2_fu_2159_p1),.dout(mul_ln172_2_fu_2159_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U496(.din0(mul_ln301_1_fu_2187_p0),.din1(mul_ln301_1_fu_2187_p1),.dout(mul_ln301_1_fu_2187_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U497(.din0(mul_ln302_1_fu_2212_p0),.din1(mul_ln302_1_fu_2212_p1),.dout(mul_ln302_1_fu_2212_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U498(.din0(mul_ln303_1_fu_2235_p0),.din1(mul_ln303_1_fu_2235_p1),.dout(mul_ln303_1_fu_2235_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U499(.din0(mul_ln302_fu_2335_p0),.din1(mul_ln302_fu_2335_p1),.dout(mul_ln302_fu_2335_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U500(.din0(mul_ln299_1_fu_2430_p0),.din1(mul_ln299_1_fu_2430_p1),.dout(mul_ln299_1_fu_2430_p2));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U501(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2578_p0),.din1(grp_fu_2578_p1),.din2(grp_fu_2578_p2),.ce(1'b1),.dout(grp_fu_2578_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U502(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2587_p0),.din1(grp_fu_2587_p1),.din2(grp_fu_2587_p2),.ce(1'b1),.dout(grp_fu_2587_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U503(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2596_p0),.din1(grp_fu_2596_p1),.din2(grp_fu_2596_p2),.ce(1'b1),.dout(grp_fu_2596_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U504(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2605_p0),.din1(grp_fu_2605_p1),.din2(grp_fu_2605_p2),.ce(1'b1),.dout(grp_fu_2605_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U505(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2614_p0),.din1(grp_fu_2614_p1),.din2(grp_fu_2614_p2),.ce(1'b1),.dout(grp_fu_2614_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U506(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2623_p0),.din1(grp_fu_2623_p1),.din2(grp_fu_2623_p2),.ce(1'b1),.dout(grp_fu_2623_p3));
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
        tid_fu_142 <= 7'd0;
    end else if (((tmp_reg_2646 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_142 <= add_ln294_fu_1965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_load_reg_2929 <= DATA_x_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_load_2_reg_2859 <= DATA_x_3_q1;
        DATA_x_3_load_3_reg_2874 <= DATA_x_3_q0;
        DATA_x_load_1_reg_2829 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_1_reg_2824[8 : 1] <= add_ln299_1_fu_2179_p2[8 : 1];
        add_ln299_reg_2680 <= add_ln299_fu_1987_p2;
        add_ln301_reg_2685 <= add_ln301_fu_1993_p2;
        add_ln303_reg_2690 <= add_ln303_fu_1999_p2;
        offset_reg_2650 <= offset_fu_1932_p1;
        offset_reg_2650_pp0_iter1_reg <= offset_reg_2650;
        offset_reg_2650_pp0_iter2_reg <= offset_reg_2650_pp0_iter1_reg;
        offset_reg_2650_pp0_iter3_reg <= offset_reg_2650_pp0_iter2_reg;
        offset_reg_2650_pp0_iter4_reg <= offset_reg_2650_pp0_iter3_reg;
        tid_3_reg_2639 <= ap_sig_allocacmp_tid_3;
        tid_3_reg_2639_pp0_iter1_reg <= tid_3_reg_2639;
        tid_3_reg_2639_pp0_iter2_reg <= tid_3_reg_2639_pp0_iter1_reg;
        tid_3_reg_2639_pp0_iter3_reg <= tid_3_reg_2639_pp0_iter2_reg;
        tid_3_reg_2639_pp0_iter4_reg <= tid_3_reg_2639_pp0_iter3_reg;
        tmp_53_reg_2770 <= {{mul_ln172_fu_2127_p2[12:10]}};
        tmp_61_reg_2810 <= {{mul_ln172_2_fu_2159_p2[12:10]}};
        tmp_64_reg_2844 <= {{mul_ln301_1_fu_2187_p2[18:13]}};
        tmp_65_reg_2849 <= {{mul_ln302_1_fu_2212_p2[16:12]}};
        tmp_66_reg_2854 <= {{mul_ln303_1_fu_2235_p2[18:13]}};
        tmp_68_reg_2889 <= {{tmp_68_fu_2251_p1[20:14]}};
        tmp_reg_2646 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_2646_pp0_iter1_reg <= tmp_reg_2646;
        tmp_reg_2646_pp0_iter2_reg <= tmp_reg_2646_pp0_iter1_reg;
        tmp_reg_2646_pp0_iter3_reg <= tmp_reg_2646_pp0_iter2_reg;
        tmp_reg_2646_pp0_iter4_reg <= tmp_reg_2646_pp0_iter3_reg;
        trunc_ln172_2_reg_2815 <= trunc_ln172_2_fu_2175_p1;
        zext_ln172_10_reg_2675[5 : 0] <= zext_ln172_10_fu_1981_p1[5 : 0];
        zext_ln172_10_reg_2675_pp0_iter5_reg[5 : 0] <= zext_ln172_10_reg_2675[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln301_1_reg_2750[8 : 1] <= add_ln301_1_fu_2112_p2[8 : 1];
        add_ln303_1_reg_2760[7 : 1] <= add_ln303_1_fu_2118_p2[7 : 1];
        offset_2_reg_2666[5 : 1] <= offset_2_fu_1951_p3[5 : 1];
        offset_2_reg_2666_pp0_iter1_reg[5 : 1] <= offset_2_reg_2666[5 : 1];
        offset_2_reg_2666_pp0_iter2_reg[5 : 1] <= offset_2_reg_2666_pp0_iter1_reg[5 : 1];
        offset_2_reg_2666_pp0_iter3_reg[5 : 1] <= offset_2_reg_2666_pp0_iter2_reg[5 : 1];
        offset_2_reg_2666_pp0_iter4_reg[5 : 1] <= offset_2_reg_2666_pp0_iter3_reg[5 : 1];
        tmp_54_reg_2699 <= {{mul_ln299_fu_2012_p2[18:13]}};
        tmp_56_reg_2716 <= {{mul_ln301_fu_2043_p2[18:13]}};
        tmp_57_reg_2894 <= {{mul_ln302_fu_2335_p2[16:12]}};
        tmp_58_reg_2721 <= {{mul_ln303_fu_2066_p2[18:13]}};
        tmp_62_reg_2904 <= {{mul_ln299_1_fu_2430_p2[18:13]}};
        tmp_s_reg_2660 <= {{tid_3_reg_2639[5:1]}};
        tmp_s_reg_2660_pp0_iter1_reg <= tmp_s_reg_2660;
        tmp_s_reg_2660_pp0_iter2_reg <= tmp_s_reg_2660_pp0_iter1_reg;
        tmp_s_reg_2660_pp0_iter3_reg <= tmp_s_reg_2660_pp0_iter2_reg;
        trunc_ln172_reg_2695 <= trunc_ln172_fu_2005_p1;
        trunc_ln172_reg_2695_pp0_iter5_reg <= trunc_ln172_reg_2695;
        zext_ln172_16_reg_2726[5 : 1] <= zext_ln172_16_fu_2082_p1[5 : 1];
        zext_ln172_17_reg_2731[5 : 1] <= zext_ln172_17_fu_2085_p1[5 : 1];
        zext_ln298_1_reg_2736[6 : 2] <= zext_ln298_1_fu_2095_p1[6 : 2];
        zext_ln300_2_reg_2704[6 : 1] <= zext_ln300_2_fu_2035_p1[6 : 1];
        zext_ln300_3_reg_2743[6 : 2] <= zext_ln300_3_fu_2107_p1[6 : 2];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln300_3_reg_2743;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_2_reg_2704;
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
            DATA_x_1_address1_local = zext_ln298_1_reg_2736;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_2148_p1;
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
            DATA_x_2_address0_local = zext_ln300_3_reg_2743;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln300_2_reg_2704;
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
            DATA_x_2_address1_local = zext_ln298_1_reg_2736;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln298_fu_2148_p1;
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
        DATA_x_3_address0_local = zext_ln300_2_reg_2704;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln300_3_fu_2107_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln298_fu_2148_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln298_1_fu_2095_p1;
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
            DATA_x_address0_local = zext_ln300_3_reg_2743;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln298_1_reg_2736;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln298_fu_2148_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln300_2_fu_2035_p1;
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
    if (((tmp_reg_2646 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (tmp_reg_2646_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid_3 = tid_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln302_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln303_fu_2351_p1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln303_1_fu_2446_p1;
    end else if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_3_q1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_q1;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_3_load_2_reg_2859;
    end else if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_q0;
    end else begin
        smem_10_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we1_local = 1'b1;
    end else begin
        smem_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln302_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln300_1_fu_2511_p1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_q0;
    end else if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q1;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_q0;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln302_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln300_1_fu_2511_p1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln302_fu_2474_p1;
    end else if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_q0;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_x_2_load_reg_2929;
    end else if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_q0;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln302_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_q1;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_q0;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln302_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_load_1_reg_2829;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_q1;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_q0;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln302_1_fu_2540_p1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_2_q1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_load_1_reg_2829;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_d0_local = DATA_x_2_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_q1;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_q0;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln302_1_fu_2540_p1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_2_q1;
    end else if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d0_local = DATA_x_2_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_q1;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_q0;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln302_1_fu_2540_p1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_2_q1;
    end else if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_q1;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_q0;
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln302_1_fu_2540_p1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln302_fu_2474_p1;
    end else if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_2_q1;
    end else if ((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_q1;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d1_local = DATA_x_2_load_reg_2929;
    end else if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_q0;
    end else begin
        smem_8_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_2695 == 4'd4) & ~(trunc_ln172_reg_2695 == 4'd5) & ~(trunc_ln172_reg_2695 == 4'd8) & ~(trunc_ln172_reg_2695 == 4'd0) & ~(trunc_ln172_reg_2695 == 4'd1) & ~(trunc_ln172_reg_2695 == 4'd2) & ~(trunc_ln172_reg_2695 == 4'd3) & ~(trunc_ln172_reg_2695 == 4'd6) & ~(trunc_ln172_reg_2695 == 4'd7) & ~(trunc_ln172_reg_2695 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_we1_local = 1'b1;
    end else begin
        smem_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln302_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_q1;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_x_q0;
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2695_pp0_iter5_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln302_1_fu_2540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln299_1_fu_2488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln301_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln304_1_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln300_1_fu_2511_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln299_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln303_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln305_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln301_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln304_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln300_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_12_fu_2260_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln302_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln303_1_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln305_1_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln172_13_fu_2413_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_x_2_load_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_3_load_2_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_3_load_3_reg_2874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_q0;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_2_reg_2815 == 4'd4) & ~(trunc_ln172_2_reg_2815 == 4'd5) & ~(trunc_ln172_2_reg_2815 == 4'd8) & ~(trunc_ln172_2_reg_2815 == 4'd1) & ~(trunc_ln172_2_reg_2815 == 4'd2) & ~(trunc_ln172_2_reg_2815 == 4'd3) & ~(trunc_ln172_2_reg_2815 == 4'd7) & ~(trunc_ln172_2_reg_2815 == 4'd0) & ~(trunc_ln172_2_reg_2815 == 4'd6) & ~(trunc_ln172_2_reg_2815 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_2695 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_2815 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd0) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd1) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd2) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd3) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd4) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd5) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd6) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd7) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd8) & ~(trunc_ln172_reg_2695_pp0_iter5_reg == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign add_ln294_fu_1965_p2 = (tid_3_reg_2639 + 7'd2);
assign add_ln299_1_fu_2179_p2 = ($signed(zext_ln172_17_reg_2731) + $signed(9'd288));
assign add_ln299_fu_1987_p2 = ($signed(zext_ln172_11_fu_1984_p1) + $signed(9'd288));
assign add_ln301_1_fu_2112_p2 = ($signed(zext_ln172_17_fu_2085_p1) + $signed(9'd360));
assign add_ln301_fu_1993_p2 = ($signed(zext_ln172_11_fu_1984_p1) + $signed(9'd360));
assign add_ln302_1_fu_2203_p2 = ($signed(zext_ln172_16_reg_2726) + $signed(8'd144));
assign add_ln302_fu_2326_p2 = ($signed(zext_ln172_10_reg_2675_pp0_iter5_reg) + $signed(8'd144));
assign add_ln303_1_fu_2118_p2 = ($signed(zext_ln172_16_fu_2082_p1) + $signed(8'd176));
assign add_ln303_fu_1999_p2 = ($signed(zext_ln172_10_fu_1981_p1) + $signed(8'd176));
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
assign grp_fu_1936_p0 = ap_sig_allocacmp_tid_3[5:0];
assign grp_fu_1936_p1 = 6'd11;
assign grp_fu_1959_p0 = {{tmp_s_fu_1942_p4}, {1'd1}};
assign grp_fu_1959_p1 = 6'd11;
assign grp_fu_2578_p0 = grp_fu_2578_p00;
assign grp_fu_2578_p00 = offset_2_reg_2666_pp0_iter2_reg;
assign grp_fu_2578_p1 = 10'd504;
assign grp_fu_2578_p2 = 21'd1490;
assign grp_fu_2587_p0 = zext_ln172_10_fu_1981_p1;
assign grp_fu_2587_p1 = 8'd72;
assign grp_fu_2587_p2 = 17'd373;
assign grp_fu_2596_p0 = zext_ln172_11_fu_1984_p1;
assign grp_fu_2596_p1 = 9'd216;
assign grp_fu_2596_p2 = 19'd745;
assign grp_fu_2605_p0 = grp_fu_2605_p00;
assign grp_fu_2605_p00 = offset_reg_2650_pp0_iter3_reg;
assign grp_fu_2605_p1 = 10'd504;
assign grp_fu_2605_p2 = 21'd1490;
assign grp_fu_2614_p0 = zext_ln172_16_fu_2082_p1;
assign grp_fu_2614_p1 = 8'd72;
assign grp_fu_2614_p2 = 17'd373;
assign grp_fu_2623_p0 = zext_ln172_17_fu_2085_p1;
assign grp_fu_2623_p1 = 9'd216;
assign grp_fu_2623_p2 = 19'd745;
assign mul_ln172_2_fu_2159_p0 = mul_ln172_2_fu_2159_p00;
assign mul_ln172_2_fu_2159_p00 = offset_2_reg_2666_pp0_iter4_reg;
assign mul_ln172_2_fu_2159_p1 = 13'd94;
assign mul_ln172_fu_2127_p0 = mul_ln172_fu_2127_p00;
assign mul_ln172_fu_2127_p00 = offset_reg_2650_pp0_iter4_reg;
assign mul_ln172_fu_2127_p1 = 13'd94;
assign mul_ln299_1_fu_2430_p0 = mul_ln299_1_fu_2430_p00;
assign mul_ln299_1_fu_2430_p00 = add_ln299_1_reg_2824;
assign mul_ln299_1_fu_2430_p1 = 19'd745;
assign mul_ln299_fu_2012_p0 = mul_ln299_fu_2012_p00;
assign mul_ln299_fu_2012_p00 = add_ln299_reg_2680;
assign mul_ln299_fu_2012_p1 = 19'd745;
assign mul_ln301_1_fu_2187_p0 = mul_ln301_1_fu_2187_p00;
assign mul_ln301_1_fu_2187_p00 = add_ln301_1_reg_2750;
assign mul_ln301_1_fu_2187_p1 = 19'd745;
assign mul_ln301_fu_2043_p0 = mul_ln301_fu_2043_p00;
assign mul_ln301_fu_2043_p00 = add_ln301_reg_2685;
assign mul_ln301_fu_2043_p1 = 19'd745;
assign mul_ln302_1_fu_2212_p0 = mul_ln302_1_fu_2212_p00;
assign mul_ln302_1_fu_2212_p00 = add_ln302_1_fu_2203_p2;
assign mul_ln302_1_fu_2212_p1 = 17'd373;
assign mul_ln302_fu_2335_p0 = mul_ln302_fu_2335_p00;
assign mul_ln302_fu_2335_p00 = add_ln302_fu_2326_p2;
assign mul_ln302_fu_2335_p1 = 17'd373;
assign mul_ln303_1_fu_2235_p0 = mul_ln303_1_fu_2235_p00;
assign mul_ln303_1_fu_2235_p00 = $unsigned(sext_ln303_1_fu_2228_p1);
assign mul_ln303_1_fu_2235_p1 = 19'd745;
assign mul_ln303_fu_2066_p0 = mul_ln303_fu_2066_p00;
assign mul_ln303_fu_2066_p00 = $unsigned(sext_ln303_fu_2059_p1);
assign mul_ln303_fu_2066_p1 = 19'd745;
assign offset_2_fu_1951_p3 = {{tmp_s_fu_1942_p4}, {1'd1}};
assign offset_fu_1932_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln2_fu_2088_p3 = {{tmp_s_reg_2660_pp0_iter3_reg}, {2'd2}};
assign or_ln300_1_fu_2100_p3 = {{tmp_s_reg_2660_pp0_iter3_reg}, {2'd3}};
assign or_ln_fu_2028_p3 = {{offset_reg_2650_pp0_iter4_reg}, {1'd1}};
assign sext_ln303_1_fu_2228_p1 = $signed(add_ln303_1_reg_2760);
assign sext_ln303_fu_2059_p1 = $signed(add_ln303_reg_2690);
assign shl_ln298_fu_2143_p2 = tid_3_reg_2639_pp0_iter4_reg << 7'd1;
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_d1 = smem_10_d1_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_10_we1 = smem_10_we1_local;
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
assign tmp_55_fu_2288_p1 = grp_fu_2587_p3;
assign tmp_55_fu_2288_p4 = {{tmp_55_fu_2288_p1[16:12]}};
assign tmp_59_fu_2365_p1 = grp_fu_2596_p3;
assign tmp_59_fu_2365_p4 = {{tmp_59_fu_2365_p1[18:13]}};
assign tmp_60_fu_2389_p1 = grp_fu_2605_p3;
assign tmp_60_fu_2389_p4 = {{tmp_60_fu_2389_p1[20:14]}};
assign tmp_63_fu_2502_p1 = grp_fu_2614_p3;
assign tmp_63_fu_2502_p4 = {{tmp_63_fu_2502_p1[16:12]}};
assign tmp_67_fu_2554_p1 = grp_fu_2623_p3;
assign tmp_67_fu_2554_p4 = {{tmp_67_fu_2554_p1[18:13]}};
assign tmp_68_fu_2251_p1 = grp_fu_2578_p3;
assign tmp_s_fu_1942_p4 = {{tid_3_reg_2639[5:1]}};
assign trunc_ln172_2_fu_2175_p1 = grp_fu_1959_p2[3:0];
assign trunc_ln172_fu_2005_p1 = grp_fu_1936_p2[3:0];
assign zext_ln172_10_fu_1981_p1 = offset_reg_2650_pp0_iter3_reg;
assign zext_ln172_11_fu_1984_p1 = offset_reg_2650_pp0_iter3_reg;
assign zext_ln172_12_fu_2260_p1 = tmp_53_reg_2770;
assign zext_ln172_13_fu_2413_p1 = tmp_61_reg_2810;
assign zext_ln172_16_fu_2082_p1 = offset_2_reg_2666_pp0_iter3_reg;
assign zext_ln172_17_fu_2085_p1 = offset_2_reg_2666_pp0_iter3_reg;
assign zext_ln298_1_fu_2095_p1 = or_ln2_fu_2088_p3;
assign zext_ln298_fu_2148_p1 = shl_ln298_fu_2143_p2;
assign zext_ln299_1_fu_2488_p1 = tmp_62_reg_2904;
assign zext_ln299_fu_2274_p1 = tmp_54_reg_2699;
assign zext_ln300_1_fu_2511_p1 = tmp_63_fu_2502_p4;
assign zext_ln300_2_fu_2035_p1 = or_ln_fu_2028_p3;
assign zext_ln300_3_fu_2107_p1 = or_ln300_1_fu_2100_p3;
assign zext_ln300_fu_2297_p1 = tmp_55_fu_2288_p4;
assign zext_ln301_1_fu_2526_p1 = tmp_64_reg_2844;
assign zext_ln301_fu_2312_p1 = tmp_56_reg_2716;
assign zext_ln302_1_fu_2540_p1 = tmp_65_reg_2849;
assign zext_ln302_fu_2474_p1 = tmp_57_reg_2894;
assign zext_ln303_1_fu_2446_p1 = tmp_66_reg_2854;
assign zext_ln303_fu_2351_p1 = tmp_58_reg_2721;
assign zext_ln304_1_fu_2563_p1 = tmp_67_fu_2554_p4;
assign zext_ln304_fu_2374_p1 = tmp_59_fu_2365_p4;
assign zext_ln305_1_fu_2460_p1 = tmp_68_reg_2889;
assign zext_ln305_fu_2398_p1 = tmp_60_fu_2389_p4;
always @ (posedge ap_clk) begin
    offset_2_reg_2666[0] <= 1'b1;
    offset_2_reg_2666_pp0_iter1_reg[0] <= 1'b1;
    offset_2_reg_2666_pp0_iter2_reg[0] <= 1'b1;
    offset_2_reg_2666_pp0_iter3_reg[0] <= 1'b1;
    offset_2_reg_2666_pp0_iter4_reg[0] <= 1'b1;
    zext_ln172_10_reg_2675[7:6] <= 2'b00;
    zext_ln172_10_reg_2675_pp0_iter5_reg[7:6] <= 2'b00;
    zext_ln300_2_reg_2704[0] <= 1'b1;
    zext_ln300_2_reg_2704[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_16_reg_2726[0] <= 1'b1;
    zext_ln172_16_reg_2726[7:6] <= 2'b00;
    zext_ln172_17_reg_2731[0] <= 1'b1;
    zext_ln172_17_reg_2731[8:6] <= 3'b000;
    zext_ln298_1_reg_2736[1:0] <= 2'b10;
    zext_ln298_1_reg_2736[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln300_3_reg_2743[1:0] <= 2'b11;
    zext_ln300_3_reg_2743[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln301_1_reg_2750[0] <= 1'b1;
    add_ln303_1_reg_2760[0] <= 1'b1;
    add_ln299_1_reg_2824[0] <= 1'b1;
end
endmodule 