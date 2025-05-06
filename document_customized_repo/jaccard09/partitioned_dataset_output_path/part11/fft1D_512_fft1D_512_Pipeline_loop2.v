
module fft1D_512_fft1D_512_Pipeline_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,grp_fu_413_p_din0,grp_fu_413_p_din1,grp_fu_413_p_dout0,grp_fu_413_p_ce,grp_fu_417_p_din0,grp_fu_417_p_din1,grp_fu_417_p_dout0,grp_fu_417_p_ce,grp_fu_421_p_din0,grp_fu_421_p_din1,grp_fu_421_p_dout0,grp_fu_421_p_ce);  
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
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [31:0] grp_fu_413_p_din0;
output  [33:0] grp_fu_413_p_din1;
input  [64:0] grp_fu_413_p_dout0;
output   grp_fu_413_p_ce;
output  [31:0] grp_fu_417_p_din0;
output  [33:0] grp_fu_417_p_din1;
input  [64:0] grp_fu_417_p_dout0;
output   grp_fu_417_p_ce;
output  [31:0] grp_fu_421_p_din0;
output  [33:0] grp_fu_421_p_din1;
input  [64:0] grp_fu_421_p_dout0;
output   grp_fu_421_p_ce;
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
reg   [0:0] tmp_reg_3208;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1867;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_1877;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [29:0] reg_1892;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_1896;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_1911;
reg   [63:0] reg_1925;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_1940;
reg   [63:0] reg_1949;
reg   [6:0] tid_reg_3201;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_3208_pp0_iter1_reg;
reg   [0:0] tmp_reg_3208_pp0_iter2_reg;
wire   [5:0] offset_fu_1974_p1;
reg   [5:0] offset_reg_3212;
reg   [5:0] offset_reg_3212_pp0_iter1_reg;
reg   [5:0] offset_reg_3212_pp0_iter2_reg;
wire   [31:0] offset_3_fu_1998_p5;
reg   [31:0] offset_3_reg_3225;
reg   [31:0] offset_3_reg_3225_pp0_iter1_reg;
reg   [31:0] offset_3_reg_3225_pp0_iter2_reg;
reg   [31:0] offset_3_reg_3225_pp0_iter3_reg;
wire   [4:0] tmp_66_fu_2021_p4;
reg   [4:0] tmp_66_reg_3238;
reg   [4:0] tmp_66_reg_3238_pp0_iter1_reg;
reg   [4:0] tmp_66_reg_3238_pp0_iter2_reg;
wire   [5:0] offset_1_fu_2030_p3;
reg   [5:0] offset_1_reg_3246;
reg   [5:0] offset_1_reg_3246_pp0_iter1_reg;
reg   [5:0] offset_1_reg_3246_pp0_iter2_reg;
wire   [3:0] tmp_s_fu_2044_p4;
reg   [3:0] tmp_s_reg_3255;
reg   [3:0] tmp_s_reg_3255_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_3255_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_3255_pp0_iter3_reg;
wire   [5:0] offset_2_fu_2053_p3;
reg   [5:0] offset_2_reg_3269;
reg   [5:0] offset_2_reg_3269_pp0_iter1_reg;
reg   [5:0] offset_2_reg_3269_pp0_iter2_reg;
reg   [5:0] offset_2_reg_3269_pp0_iter3_reg;
wire   [2:0] trunc_ln172_fu_2077_p1;
reg   [2:0] trunc_ln172_reg_3278;
reg   [2:0] trunc_ln172_reg_3278_pp0_iter2_reg;
reg   [2:0] trunc_ln172_reg_3278_pp0_iter3_reg;
wire   [2:0] trunc_ln172_7_fu_2081_p1;
reg   [2:0] trunc_ln172_7_reg_3282;
reg   [2:0] trunc_ln172_7_reg_3282_pp0_iter2_reg;
reg   [2:0] trunc_ln172_7_reg_3282_pp0_iter3_reg;
wire   [2:0] trunc_ln172_8_fu_2085_p1;
reg   [2:0] trunc_ln172_8_reg_3286;
reg   [2:0] trunc_ln172_8_reg_3286_pp0_iter2_reg;
reg   [2:0] trunc_ln172_8_reg_3286_pp0_iter3_reg;
wire   [8:0] zext_ln172_16_fu_2092_p1;
reg   [8:0] zext_ln172_16_reg_3290;
wire   [8:0] add_ln179_fu_2095_p2;
reg   [8:0] add_ln179_reg_3296;
wire   [7:0] zext_ln172_15_fu_2101_p1;
reg   [7:0] zext_ln172_15_reg_3301;
wire   [63:0] zext_ln178_fu_2111_p1;
reg   [63:0] zext_ln178_reg_3306;
reg   [6:0] tmp_167_reg_3316;
wire   [8:0] add_ln181_fu_2135_p2;
reg   [8:0] add_ln181_reg_3321;
reg   [5:0] tmp_170_reg_3326;
wire   [63:0] zext_ln184_4_fu_2173_p1;
reg   [63:0] zext_ln184_4_reg_3331;
reg   [63:0] DATA_x_load_reg_3341;
reg   [6:0] tmp_169_reg_3350;
wire   [7:0] zext_ln172_19_fu_2197_p1;
reg   [7:0] zext_ln172_19_reg_3355;
wire   [8:0] zext_ln172_20_fu_2200_p1;
reg   [8:0] zext_ln172_20_reg_3360;
wire   [63:0] zext_ln178_1_fu_2210_p1;
reg   [63:0] zext_ln178_1_reg_3365;
wire   [8:0] add_ln179_1_fu_2215_p2;
reg   [8:0] add_ln179_1_reg_3375;
reg   [5:0] tmp_178_reg_3380;
reg   [63:0] DATA_x_load_3_reg_3385;
reg   [7:0] tmp_173_reg_3394;
reg   [6:0] tmp_175_reg_3399;
wire   [8:0] add_ln181_1_fu_2278_p2;
reg   [8:0] add_ln181_1_reg_3404;
wire   [63:0] zext_ln182_5_fu_2290_p1;
reg   [63:0] zext_ln182_5_reg_3409;
reg   [63:0] DATA_x_load_4_reg_3429;
reg   [6:0] tmp_172_reg_3438;
reg   [6:0] tmp_177_reg_3443;
reg   [63:0] DATA_x_load_6_reg_3448;
reg   [63:0] DATA_x_load_7_reg_3457;
reg   [6:0] tmp_180_reg_3466;
wire   [8:0] zext_ln172_24_fu_2345_p1;
reg   [8:0] zext_ln172_24_reg_3471;
reg   [7:0] tmp_181_reg_3477;
reg   [6:0] tmp_188_reg_3482;
reg   [7:0] tmp_189_reg_3487;
reg   [3:0] tmp_166_reg_3492;
wire   [63:0] zext_ln180_4_fu_2404_p1;
reg   [63:0] zext_ln180_4_reg_3502;
reg   [4:0] tmp_168_reg_3512;
wire   [63:0] zext_ln182_4_fu_2445_p1;
reg   [63:0] zext_ln182_4_reg_3517;
reg   [3:0] tmp_174_reg_3532;
wire   [7:0] add_ln183_fu_2501_p2;
reg   [7:0] add_ln183_reg_3547;
reg   [4:0] tmp_176_reg_3552;
reg   [6:0] tmp_171_reg_3557;
wire   [63:0] zext_ln180_5_fu_2597_p1;
reg   [63:0] zext_ln180_5_reg_3567;
wire   [7:0] add_ln183_1_fu_2610_p2;
reg   [7:0] add_ln183_1_reg_3582;
reg   [6:0] tmp_179_reg_3592;
reg   [3:0] tmp_182_reg_3597;
wire   [8:0] add_ln179_2_fu_2729_p2;
reg   [8:0] add_ln179_2_reg_3612;
wire   [63:0] zext_ln180_6_fu_2741_p1;
reg   [63:0] zext_ln180_6_reg_3617;
wire   [8:0] add_ln181_2_fu_2746_p2;
reg   [8:0] add_ln181_2_reg_3627;
reg   [5:0] tmp_186_reg_3632;
wire   [7:0] add_ln183_2_fu_2777_p2;
reg   [7:0] add_ln183_2_reg_3637;
wire   [64:0] zext_ln172_33_fu_2783_p1;
wire   [63:0] zext_ln178_3_fu_2794_p1;
reg   [63:0] zext_ln178_3_reg_3647;
reg   [6:0] tmp_183_reg_3657;
reg   [6:0] tmp_185_reg_3667;
reg   [6:0] tmp_187_reg_3682;
wire   [63:0] zext_ln184_6_fu_2888_p1;
reg   [63:0] zext_ln184_6_reg_3687;
wire   [2:0] trunc_ln172_9_fu_2893_p1;
reg   [2:0] trunc_ln172_9_reg_3697;
wire   [31:0] add_ln179_3_fu_2897_p2;
reg   [31:0] add_ln179_3_reg_3701;
wire   [31:0] add_ln180_1_fu_2902_p2;
reg   [31:0] add_ln180_1_reg_3706;
wire   [31:0] add_ln182_3_fu_2907_p2;
reg   [31:0] add_ln182_3_reg_3711;
wire   [64:0] zext_ln179_7_fu_2921_p1;
wire   [64:0] zext_ln180_11_fu_2938_p1;
wire   [31:0] add_ln181_3_fu_2942_p2;
reg   [31:0] add_ln181_3_reg_3746;
wire   [64:0] zext_ln182_11_fu_2947_p1;
wire   [31:0] add_ln183_3_fu_2951_p2;
reg   [31:0] add_ln183_3_reg_3756;
wire   [31:0] add_ln184_3_fu_2956_p2;
reg   [31:0] add_ln184_3_reg_3761;
reg   [29:0] tmp_193_reg_3766;
wire   [64:0] zext_ln181_7_fu_3011_p1;
reg   [29:0] tmp_195_reg_3781;
wire   [64:0] zext_ln183_7_fu_3028_p1;
wire   [64:0] zext_ln184_11_fu_3045_p1;
wire   [31:0] add_ln185_3_fu_3049_p2;
reg   [31:0] add_ln185_3_reg_3811;
reg   [29:0] tmp_194_reg_3816;
reg   [29:0] tmp_196_reg_3821;
reg   [63:0] DATA_x_load_15_reg_3826;
reg   [29:0] tmp_197_reg_3835;
wire   [64:0] zext_ln185_7_fu_3070_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln184_5_fu_2302_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_fu_2469_p1;
wire   [63:0] zext_ln179_fu_2477_p1;
wire   [63:0] zext_ln180_fu_2485_p1;
wire   [63:0] zext_ln182_fu_2493_p1;
wire   [63:0] zext_ln184_fu_2506_p1;
wire   [63:0] zext_ln181_fu_2543_p1;
wire   [63:0] zext_ln185_fu_2574_p1;
wire   [63:0] zext_ln172_1_fu_2582_p1;
wire   [63:0] zext_ln182_1_fu_2602_p1;
wire   [63:0] zext_ln184_1_fu_2615_p1;
wire   [63:0] zext_ln183_fu_2623_p1;
wire   [63:0] zext_ln179_1_fu_2631_p1;
wire   [63:0] zext_ln180_1_fu_2639_p1;
wire   [63:0] zext_ln185_1_fu_2670_p1;
wire   [63:0] zext_ln181_1_fu_2697_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln183_1_fu_2705_p1;
wire   [63:0] zext_ln178_2_fu_2723_p1;
wire   [63:0] zext_ln172_2_fu_2799_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln182_6_fu_2852_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln172_3_fu_2912_p1;
wire   [63:0] zext_ln180_7_fu_2932_p1;
wire   [63:0] zext_ln179_2_fu_2961_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln180_2_fu_2978_p1;
wire   [63:0] zext_ln181_2_fu_2987_p1;
wire   [63:0] zext_ln182_2_fu_2995_p1;
wire   [63:0] zext_ln184_2_fu_3003_p1;
wire   [63:0] zext_ln182_7_fu_3022_p1;
wire   [63:0] zext_ln184_7_fu_3039_p1;
wire   [63:0] zext_ln183_2_fu_3054_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln185_2_fu_3062_p1;
wire   [63:0] zext_ln179_3_fu_3074_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln180_3_fu_3083_p1;
wire   [63:0] zext_ln181_3_fu_3091_p1;
wire   [63:0] zext_ln182_3_fu_3099_p1;
wire   [63:0] zext_ln184_3_fu_3107_p1;
wire   [63:0] zext_ln183_3_fu_3115_p1;
wire   [63:0] zext_ln185_3_fu_3123_p1;
reg   [6:0] tid_1_fu_184;
wire   [6:0] add_ln174_fu_2067_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg   [31:0] grp_fu_1822_p0;
reg   [31:0] grp_fu_1827_p0;
reg   [31:0] grp_fu_1832_p0;
wire   [0:0] tmp_190_fu_1982_p3;
wire   [31:0] zext_ln175_fu_1978_p1;
wire   [2:0] or_ln12_fu_1990_p3;
wire   [31:0] grp_fu_2010_p0;
wire   [3:0] grp_fu_2010_p1;
wire   [3:0] grp_fu_2016_p1;
wire   [5:0] grp_fu_2038_p0;
wire   [3:0] grp_fu_2038_p1;
wire   [5:0] grp_fu_2061_p0;
wire   [3:0] grp_fu_2061_p1;
wire   [2:0] grp_fu_2016_p2;
wire   [2:0] grp_fu_2038_p2;
wire   [2:0] grp_fu_2061_p2;
wire   [7:0] shl_ln1_fu_2104_p3;
wire   [8:0] mul_ln179_fu_2119_p0;
wire   [10:0] mul_ln179_fu_2119_p1;
wire   [18:0] mul_ln179_fu_2119_p2;
wire   [7:0] add_ln182_fu_2140_p2;
wire   [7:0] mul_ln182_fu_2150_p0;
wire   [9:0] mul_ln182_fu_2150_p1;
wire   [16:0] mul_ln182_fu_2150_p2;
wire   [7:0] or_ln10_fu_2166_p3;
wire   [8:0] mul_ln181_fu_2181_p0;
wire   [10:0] mul_ln181_fu_2181_p1;
wire   [18:0] mul_ln181_fu_2181_p2;
wire   [7:0] shl_ln178_1_fu_2203_p3;
wire   [7:0] add_ln182_1_fu_2221_p2;
wire   [7:0] mul_ln182_1_fu_2231_p0;
wire   [9:0] mul_ln182_1_fu_2231_p1;
wire   [16:0] mul_ln182_1_fu_2231_p2;
wire   [20:0] tmp_173_fu_2247_p1;
wire  signed [20:0] grp_fu_3132_p3;
wire   [8:0] mul_ln179_1_fu_2262_p0;
wire   [10:0] mul_ln179_1_fu_2262_p1;
wire   [18:0] mul_ln179_1_fu_2262_p2;
wire   [7:0] or_ln182_1_fu_2283_p3;
wire   [7:0] or_ln184_1_fu_2295_p3;
wire   [18:0] tmp_172_fu_2308_p1;
wire  signed [18:0] grp_fu_3141_p3;
wire   [8:0] mul_ln181_1_fu_2320_p0;
wire   [10:0] mul_ln181_1_fu_2320_p1;
wire   [18:0] mul_ln181_1_fu_2320_p2;
wire   [18:0] tmp_180_fu_2336_p1;
wire  signed [18:0] grp_fu_3149_p3;
wire   [20:0] tmp_181_fu_2348_p1;
wire  signed [20:0] grp_fu_3158_p3;
wire   [18:0] tmp_188_fu_2360_p1;
wire  signed [18:0] grp_fu_3167_p3;
wire   [20:0] tmp_189_fu_2369_p1;
wire  signed [20:0] grp_fu_3176_p3;
wire   [5:0] mul_ln172_fu_2381_p0;
wire   [7:0] mul_ln172_fu_2381_p1;
wire   [12:0] mul_ln172_fu_2381_p2;
wire   [7:0] or_ln8_fu_2397_p3;
wire   [6:0] zext_ln180_8_cast_fu_2409_p4;
wire   [6:0] mul_ln180_fu_2422_p0;
wire   [8:0] mul_ln180_fu_2422_p1;
wire   [14:0] mul_ln180_fu_2422_p2;
wire   [7:0] or_ln9_fu_2438_p3;
wire   [5:0] mul_ln172_1_fu_2453_p0;
wire   [7:0] mul_ln172_1_fu_2453_p1;
wire   [12:0] mul_ln172_1_fu_2453_p2;
wire   [6:0] zext_ln180_9_cast_fu_2514_p4;
wire   [6:0] mul_ln180_1_fu_2527_p0;
wire   [8:0] mul_ln180_1_fu_2527_p1;
wire   [14:0] mul_ln180_1_fu_2527_p2;
wire  signed [8:0] sext_ln183_fu_2551_p1;
wire   [8:0] mul_ln183_fu_2558_p0;
wire   [10:0] mul_ln183_fu_2558_p1;
wire   [18:0] mul_ln183_fu_2558_p2;
wire   [7:0] or_ln180_1_fu_2590_p3;
wire  signed [8:0] sext_ln183_1_fu_2647_p1;
wire   [8:0] mul_ln183_1_fu_2654_p0;
wire   [10:0] mul_ln183_1_fu_2654_p1;
wire   [18:0] mul_ln183_1_fu_2654_p2;
wire   [5:0] mul_ln172_2_fu_2681_p0;
wire   [7:0] mul_ln172_2_fu_2681_p1;
wire   [12:0] mul_ln172_2_fu_2681_p2;
wire   [7:0] or_ln11_fu_2716_p3;
wire   [7:0] or_ln180_2_fu_2734_p3;
wire   [7:0] zext_ln172_23_fu_2713_p1;
wire   [7:0] add_ln182_2_fu_2751_p2;
wire   [7:0] mul_ln182_2_fu_2761_p0;
wire   [9:0] mul_ln182_2_fu_2761_p1;
wire   [16:0] mul_ln182_2_fu_2761_p2;
wire   [7:0] shl_ln178_2_fu_2787_p3;
wire   [8:0] mul_ln179_2_fu_2810_p0;
wire   [10:0] mul_ln179_2_fu_2810_p1;
wire   [18:0] mul_ln179_2_fu_2810_p2;
wire   [8:0] mul_ln181_2_fu_2829_p0;
wire   [10:0] mul_ln181_2_fu_2829_p1;
wire   [18:0] mul_ln181_2_fu_2829_p2;
wire   [7:0] or_ln182_2_fu_2845_p3;
wire  signed [8:0] sext_ln183_2_fu_2858_p1;
wire   [8:0] mul_ln183_2_fu_2865_p0;
wire   [10:0] mul_ln183_2_fu_2865_p1;
wire   [18:0] mul_ln183_2_fu_2865_p2;
wire   [7:0] or_ln184_2_fu_2881_p3;
wire   [2:0] grp_fu_2010_p2;
wire   [7:0] or_ln180_3_fu_2925_p3;
wire   [16:0] tmp_184_fu_2969_p1;
wire  signed [16:0] grp_fu_3185_p3;
wire   [5:0] tmp_184_fu_2969_p4;
wire   [7:0] or_ln182_3_fu_3015_p3;
wire   [7:0] or_ln184_3_fu_3032_p3;
wire   [5:0] grp_fu_3132_p0;
wire   [8:0] grp_fu_3132_p1;
wire   [10:0] grp_fu_3132_p2;
wire   [5:0] grp_fu_3141_p0;
wire   [7:0] grp_fu_3141_p1;
wire   [9:0] grp_fu_3141_p2;
wire   [5:0] grp_fu_3149_p0;
wire   [7:0] grp_fu_3149_p1;
wire   [9:0] grp_fu_3149_p2;
wire   [5:0] grp_fu_3158_p0;
wire   [8:0] grp_fu_3158_p1;
wire   [10:0] grp_fu_3158_p2;
wire   [5:0] grp_fu_3167_p0;
wire   [7:0] grp_fu_3167_p1;
wire   [9:0] grp_fu_3167_p2;
wire   [5:0] grp_fu_3176_p0;
wire   [8:0] grp_fu_3176_p1;
wire   [10:0] grp_fu_3176_p2;
wire   [5:0] grp_fu_3185_p0;
wire   [6:0] grp_fu_3185_p1;
wire   [8:0] grp_fu_3185_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [9:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_3132_p00;
wire   [9:0] grp_fu_3158_p00;
wire   [8:0] grp_fu_3167_p00;
wire   [9:0] grp_fu_3176_p00;
wire   [12:0] mul_ln172_1_fu_2453_p00;
wire   [12:0] mul_ln172_2_fu_2681_p00;
wire   [12:0] mul_ln172_fu_2381_p00;
wire   [18:0] mul_ln179_1_fu_2262_p00;
wire   [18:0] mul_ln179_2_fu_2810_p00;
wire   [18:0] mul_ln179_fu_2119_p00;
wire   [14:0] mul_ln180_1_fu_2527_p00;
wire   [14:0] mul_ln180_fu_2422_p00;
wire   [18:0] mul_ln181_1_fu_2320_p00;
wire   [18:0] mul_ln181_2_fu_2829_p00;
wire   [18:0] mul_ln181_fu_2181_p00;
wire   [16:0] mul_ln182_1_fu_2231_p00;
wire   [16:0] mul_ln182_2_fu_2761_p00;
wire   [16:0] mul_ln182_fu_2150_p00;
wire   [18:0] mul_ln183_1_fu_2654_p00;
wire   [18:0] mul_ln183_2_fu_2865_p00;
wire   [18:0] mul_ln183_fu_2558_p00;
reg    ap_condition_2167;
reg    ap_condition_2171;
reg    ap_condition_2175;
reg    ap_condition_2179;
reg    ap_condition_2184;
reg    ap_condition_2188;
reg    ap_condition_2192;
reg    ap_condition_2196;
reg    ap_condition_2200;
reg    ap_condition_2204;
reg    ap_condition_2208;
reg    ap_condition_2213;
reg    ap_condition_2217;
reg    ap_condition_2221;
reg    ap_condition_2225;
reg    ap_condition_2229;
reg    ap_condition_2233;
reg    ap_condition_2237;
reg    ap_condition_2241;
reg    ap_condition_2245;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_1_fu_184 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_4ns_3_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_32ns_4ns_3_36_1_U159(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2010_p0),.din1(grp_fu_2010_p1),.ce(1'b1),.dout(grp_fu_2010_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U160(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_3212),.din1(grp_fu_2016_p1),.ce(1'b1),.dout(grp_fu_2016_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U161(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2038_p0),.din1(grp_fu_2038_p1),.ce(1'b1),.dout(grp_fu_2038_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U162(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2061_p0),.din1(grp_fu_2061_p1),.ce(1'b1),.dout(grp_fu_2061_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U163(.din0(mul_ln179_fu_2119_p0),.din1(mul_ln179_fu_2119_p1),.dout(mul_ln179_fu_2119_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U164(.din0(mul_ln182_fu_2150_p0),.din1(mul_ln182_fu_2150_p1),.dout(mul_ln182_fu_2150_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U165(.din0(mul_ln181_fu_2181_p0),.din1(mul_ln181_fu_2181_p1),.dout(mul_ln181_fu_2181_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U166(.din0(mul_ln182_1_fu_2231_p0),.din1(mul_ln182_1_fu_2231_p1),.dout(mul_ln182_1_fu_2231_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U167(.din0(mul_ln179_1_fu_2262_p0),.din1(mul_ln179_1_fu_2262_p1),.dout(mul_ln179_1_fu_2262_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U168(.din0(mul_ln181_1_fu_2320_p0),.din1(mul_ln181_1_fu_2320_p1),.dout(mul_ln181_1_fu_2320_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U169(.din0(mul_ln172_fu_2381_p0),.din1(mul_ln172_fu_2381_p1),.dout(mul_ln172_fu_2381_p2));
fft1D_512_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U170(.din0(mul_ln180_fu_2422_p0),.din1(mul_ln180_fu_2422_p1),.dout(mul_ln180_fu_2422_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U171(.din0(mul_ln172_1_fu_2453_p0),.din1(mul_ln172_1_fu_2453_p1),.dout(mul_ln172_1_fu_2453_p2));
fft1D_512_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U172(.din0(mul_ln180_1_fu_2527_p0),.din1(mul_ln180_1_fu_2527_p1),.dout(mul_ln180_1_fu_2527_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U173(.din0(mul_ln183_fu_2558_p0),.din1(mul_ln183_fu_2558_p1),.dout(mul_ln183_fu_2558_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U174(.din0(mul_ln183_1_fu_2654_p0),.din1(mul_ln183_1_fu_2654_p1),.dout(mul_ln183_1_fu_2654_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U175(.din0(mul_ln172_2_fu_2681_p0),.din1(mul_ln172_2_fu_2681_p1),.dout(mul_ln172_2_fu_2681_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U176(.din0(mul_ln182_2_fu_2761_p0),.din1(mul_ln182_2_fu_2761_p1),.dout(mul_ln182_2_fu_2761_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U177(.din0(mul_ln179_2_fu_2810_p0),.din1(mul_ln179_2_fu_2810_p1),.dout(mul_ln179_2_fu_2810_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U178(.din0(mul_ln181_2_fu_2829_p0),.din1(mul_ln181_2_fu_2829_p1),.dout(mul_ln181_2_fu_2829_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U179(.din0(mul_ln183_2_fu_2865_p0),.din1(mul_ln183_2_fu_2865_p1),.dout(mul_ln183_2_fu_2865_p2));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U180(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3132_p0),.din1(grp_fu_3132_p1),.din2(grp_fu_3132_p2),.ce(1'b1),.dout(grp_fu_3132_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U181(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3141_p0),.din1(grp_fu_3141_p1),.din2(grp_fu_3141_p2),.ce(1'b1),.dout(grp_fu_3141_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U182(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3149_p0),.din1(grp_fu_3149_p1),.din2(grp_fu_3149_p2),.ce(1'b1),.dout(grp_fu_3149_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U183(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3158_p0),.din1(grp_fu_3158_p1),.din2(grp_fu_3158_p2),.ce(1'b1),.dout(grp_fu_3158_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3167_p0),.din1(grp_fu_3167_p1),.din2(grp_fu_3167_p2),.ce(1'b1),.dout(grp_fu_3167_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3176_p0),.din1(grp_fu_3176_p1),.din2(grp_fu_3176_p2),.ce(1'b1),.dout(grp_fu_3176_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U186(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3185_p0),.din1(grp_fu_3185_p1),.din2(grp_fu_3185_p2),.ce(1'b1),.dout(grp_fu_3185_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_1867 <= DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1867 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1877 <= DATA_x_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1877 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        reg_1896 <= DATA_x_q1;
    end else if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1896 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_1925 <= DATA_x_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1925 <= DATA_x_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_1_fu_184 <= 7'd0;
    end else if (((tmp_reg_3208 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_1_fu_184 <= add_ln174_fu_2067_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_x_load_15_reg_3826 <= DATA_x_q0;
        tmp_194_reg_3816 <= {{grp_fu_413_p_dout0[64:35]}};
        tmp_196_reg_3821 <= {{grp_fu_417_p_dout0[64:35]}};
        tmp_197_reg_3835 <= {{grp_fu_421_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_load_3_reg_3385 <= DATA_x_q0;
        DATA_x_load_reg_3341 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_load_4_reg_3429 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_load_6_reg_3448 <= DATA_x_q1;
        DATA_x_load_7_reg_3457 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln179_1_reg_3375[8 : 1] <= add_ln179_1_fu_2215_p2[8 : 1];
        add_ln183_1_reg_3582[7 : 1] <= add_ln183_1_fu_2610_p2[7 : 1];
        offset_1_reg_3246[5 : 1] <= offset_1_fu_2030_p3[5 : 1];
        offset_1_reg_3246_pp0_iter1_reg[5 : 1] <= offset_1_reg_3246[5 : 1];
        offset_1_reg_3246_pp0_iter2_reg[5 : 1] <= offset_1_reg_3246_pp0_iter1_reg[5 : 1];
        tmp_169_reg_3350 <= {{mul_ln181_fu_2181_p2[18:12]}};
        tmp_171_reg_3557 <= {{mul_ln183_fu_2558_p2[18:12]}};
        tmp_178_reg_3380 <= {{mul_ln182_1_fu_2231_p2[16:11]}};
        tmp_66_reg_3238 <= {{tid_reg_3201[5:1]}};
        tmp_66_reg_3238_pp0_iter1_reg <= tmp_66_reg_3238;
        tmp_66_reg_3238_pp0_iter2_reg <= tmp_66_reg_3238_pp0_iter1_reg;
        trunc_ln172_8_reg_3286 <= trunc_ln172_8_fu_2085_p1;
        trunc_ln172_8_reg_3286_pp0_iter2_reg <= trunc_ln172_8_reg_3286;
        trunc_ln172_8_reg_3286_pp0_iter3_reg <= trunc_ln172_8_reg_3286_pp0_iter2_reg;
        zext_ln172_19_reg_3355[5 : 1] <= zext_ln172_19_fu_2197_p1[5 : 1];
        zext_ln172_20_reg_3360[5 : 1] <= zext_ln172_20_fu_2200_p1[5 : 1];
        zext_ln178_1_reg_3365[7 : 3] <= zext_ln178_1_fu_2210_p1[7 : 3];
        zext_ln180_5_reg_3567[7 : 3] <= zext_ln180_5_fu_2597_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln179_2_reg_3612[8 : 2] <= add_ln179_2_fu_2729_p2[8 : 2];
        add_ln181_2_reg_3627[8 : 2] <= add_ln181_2_fu_2746_p2[8 : 2];
        add_ln183_2_reg_3637[7 : 2] <= add_ln183_2_fu_2777_p2[7 : 2];
        tmp_172_reg_3438 <= {{tmp_172_fu_2308_p1[18:12]}};
        tmp_177_reg_3443 <= {{mul_ln181_1_fu_2320_p2[18:12]}};
        tmp_186_reg_3632 <= {{mul_ln182_2_fu_2761_p2[16:11]}};
        zext_ln178_3_reg_3647[7 : 4] <= zext_ln178_3_fu_2794_p1[7 : 4];
        zext_ln180_6_reg_3617[7 : 4] <= zext_ln180_6_fu_2741_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln179_3_reg_3701 <= add_ln179_3_fu_2897_p2;
        add_ln180_1_reg_3706 <= add_ln180_1_fu_2902_p2;
        add_ln182_3_reg_3711 <= add_ln182_3_fu_2907_p2;
        tmp_180_reg_3466 <= {{tmp_180_fu_2336_p1[18:12]}};
        tmp_183_reg_3657 <= {{mul_ln179_2_fu_2810_p2[18:12]}};
        tmp_185_reg_3667 <= {{mul_ln181_2_fu_2829_p2[18:12]}};
        tmp_187_reg_3682 <= {{mul_ln183_2_fu_2865_p2[18:12]}};
        trunc_ln172_9_reg_3697 <= trunc_ln172_9_fu_2893_p1;
        zext_ln172_24_reg_3471[5 : 2] <= zext_ln172_24_fu_2345_p1[5 : 2];
        zext_ln184_6_reg_3687[7 : 4] <= zext_ln184_6_fu_2888_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln179_reg_3296 <= add_ln179_fu_2095_p2;
        offset_3_reg_3225 <= offset_3_fu_1998_p5;
        offset_3_reg_3225_pp0_iter1_reg <= offset_3_reg_3225;
        offset_3_reg_3225_pp0_iter2_reg <= offset_3_reg_3225_pp0_iter1_reg;
        offset_3_reg_3225_pp0_iter3_reg <= offset_3_reg_3225_pp0_iter2_reg;
        offset_reg_3212 <= offset_fu_1974_p1;
        offset_reg_3212_pp0_iter1_reg <= offset_reg_3212;
        offset_reg_3212_pp0_iter2_reg <= offset_reg_3212_pp0_iter1_reg;
        tid_reg_3201 <= ap_sig_allocacmp_tid;
        tmp_166_reg_3492 <= {{mul_ln172_fu_2381_p2[12:9]}};
        tmp_168_reg_3512 <= {{mul_ln180_fu_2422_p2[14:10]}};
        tmp_174_reg_3532 <= {{mul_ln172_1_fu_2453_p2[12:9]}};
        tmp_reg_3208 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_3208_pp0_iter1_reg <= tmp_reg_3208;
        tmp_reg_3208_pp0_iter2_reg <= tmp_reg_3208_pp0_iter1_reg;
        trunc_ln172_reg_3278 <= trunc_ln172_fu_2077_p1;
        trunc_ln172_reg_3278_pp0_iter2_reg <= trunc_ln172_reg_3278;
        trunc_ln172_reg_3278_pp0_iter3_reg <= trunc_ln172_reg_3278_pp0_iter2_reg;
        zext_ln172_16_reg_3290[5 : 0] <= zext_ln172_16_fu_2092_p1[5 : 0];
        zext_ln180_4_reg_3502[7 : 2] <= zext_ln180_4_fu_2404_p1[7 : 2];
        zext_ln182_4_reg_3517[7 : 2] <= zext_ln182_4_fu_2445_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln181_1_reg_3404[8 : 1] <= add_ln181_1_fu_2278_p2[8 : 1];
        offset_2_reg_3269[5 : 2] <= offset_2_fu_2053_p3[5 : 2];
        offset_2_reg_3269_pp0_iter1_reg[5 : 2] <= offset_2_reg_3269[5 : 2];
        offset_2_reg_3269_pp0_iter2_reg[5 : 2] <= offset_2_reg_3269_pp0_iter1_reg[5 : 2];
        offset_2_reg_3269_pp0_iter3_reg[5 : 2] <= offset_2_reg_3269_pp0_iter2_reg[5 : 2];
        tmp_173_reg_3394 <= {{tmp_173_fu_2247_p1[20:13]}};
        tmp_175_reg_3399 <= {{mul_ln179_1_fu_2262_p2[18:12]}};
        tmp_179_reg_3592 <= {{mul_ln183_1_fu_2654_p2[18:12]}};
        tmp_182_reg_3597 <= {{mul_ln172_2_fu_2681_p2[12:9]}};
        tmp_s_reg_3255 <= {{tid_reg_3201[5:2]}};
        tmp_s_reg_3255_pp0_iter1_reg <= tmp_s_reg_3255;
        tmp_s_reg_3255_pp0_iter2_reg <= tmp_s_reg_3255_pp0_iter1_reg;
        tmp_s_reg_3255_pp0_iter3_reg <= tmp_s_reg_3255_pp0_iter2_reg;
        zext_ln182_5_reg_3409[7 : 3] <= zext_ln182_5_fu_2290_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln181_3_reg_3746 <= add_ln181_3_fu_2942_p2;
        add_ln183_3_reg_3756 <= add_ln183_3_fu_2951_p2;
        add_ln184_3_reg_3761 <= add_ln184_3_fu_2956_p2;
        tmp_181_reg_3477 <= {{tmp_181_fu_2348_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln181_reg_3321 <= add_ln181_fu_2135_p2;
        add_ln183_reg_3547 <= add_ln183_fu_2501_p2;
        tmp_167_reg_3316 <= {{mul_ln179_fu_2119_p2[18:12]}};
        tmp_170_reg_3326 <= {{mul_ln182_fu_2150_p2[16:11]}};
        tmp_176_reg_3552 <= {{mul_ln180_1_fu_2527_p2[14:10]}};
        trunc_ln172_7_reg_3282 <= trunc_ln172_7_fu_2081_p1;
        trunc_ln172_7_reg_3282_pp0_iter2_reg <= trunc_ln172_7_reg_3282;
        trunc_ln172_7_reg_3282_pp0_iter3_reg <= trunc_ln172_7_reg_3282_pp0_iter2_reg;
        zext_ln172_15_reg_3301[5 : 0] <= zext_ln172_15_fu_2101_p1[5 : 0];
        zext_ln178_reg_3306[7 : 2] <= zext_ln178_fu_2111_p1[7 : 2];
        zext_ln184_4_reg_3331[7 : 2] <= zext_ln184_4_fu_2173_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln185_3_reg_3811 <= add_ln185_3_fu_3049_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1892 <= {{grp_fu_413_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1911 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1940 <= DATA_x_1_q1;
        reg_1949 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_188_reg_3482 <= {{tmp_188_fu_2360_p1[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_189_reg_3487 <= {{tmp_189_fu_2369_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_193_reg_3766 <= {{grp_fu_417_p_dout0[64:35]}};
        tmp_195_reg_3781 <= {{grp_fu_421_p_dout0[64:35]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_1_address0_local = zext_ln184_7_fu_3039_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_1_address0_local = zext_ln180_7_fu_2932_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_1_address0_local = zext_ln184_6_fu_2888_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_1_address0_local = zext_ln180_6_fu_2741_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln180_5_reg_3567;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln182_5_reg_3409;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln182_4_reg_3517;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln184_4_reg_3331;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln182_7_fu_3022_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln178_3_reg_3647;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln182_6_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln178_2_fu_2723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln178_1_reg_3365;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln180_4_reg_3502;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln178_reg_3306;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln184_5_fu_2302_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln184_7_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln180_7_fu_2932_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln182_6_fu_2852_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln178_3_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln180_5_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln182_4_fu_2445_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln184_5_fu_2302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln184_4_fu_2173_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln182_7_fu_3022_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln184_6_reg_3687;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln180_6_reg_3617;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln178_2_fu_2723_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln180_4_fu_2404_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln182_5_fu_2290_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln178_1_fu_2210_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln178_fu_2111_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3208 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_3208_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_1_fu_184;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1822_p0 = zext_ln185_7_fu_3070_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1822_p0 = zext_ln181_7_fu_3011_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1822_p0 = zext_ln179_7_fu_2921_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1822_p0 = zext_ln172_33_fu_2783_p1;
        end else begin
            grp_fu_1822_p0 = 'bx;
        end
    end else begin
        grp_fu_1822_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1827_p0 = zext_ln183_7_fu_3028_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1827_p0 = zext_ln180_11_fu_2938_p1;
        end else begin
            grp_fu_1827_p0 = 'bx;
        end
    end else begin
        grp_fu_1827_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1832_p0 = zext_ln184_11_fu_3045_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1832_p0 = zext_ln182_11_fu_2947_p1;
        end else begin
            grp_fu_1832_p0 = 'bx;
        end
    end else begin
        grp_fu_1832_p0 = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln185_3_fu_3123_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln183_3_fu_3115_p1;
    end else if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln182_3_fu_3099_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln181_3_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln179_3_fu_3074_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln184_3_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln180_3_fu_3083_p1;
    end else if ((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln185_2_fu_3062_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln183_2_fu_3054_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln183_fu_2623_p1;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln182_1_fu_2602_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln184_1_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln172_1_fu_2582_p1;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln182_fu_2493_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln179_fu_2477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln184_fu_2506_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln180_fu_2485_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_fu_2469_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_2213)) begin
            smem_1_address1_local = zext_ln182_2_fu_2995_p1;
        end else if ((1'b1 == ap_condition_2208)) begin
            smem_1_address1_local = zext_ln181_2_fu_2987_p1;
        end else if ((1'b1 == ap_condition_2204)) begin
            smem_1_address1_local = zext_ln179_2_fu_2961_p1;
        end else if ((1'b1 == ap_condition_2200)) begin
            smem_1_address1_local = zext_ln184_2_fu_3003_p1;
        end else if ((1'b1 == ap_condition_2196)) begin
            smem_1_address1_local = zext_ln180_2_fu_2978_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln172_3_fu_2912_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln172_2_fu_2799_p1;
        end else if ((1'b1 == ap_condition_2192)) begin
            smem_1_address1_local = zext_ln181_1_fu_2697_p1;
        end else if ((1'b1 == ap_condition_2188)) begin
            smem_1_address1_local = zext_ln183_1_fu_2705_p1;
        end else if ((1'b1 == ap_condition_2184)) begin
            smem_1_address1_local = zext_ln185_1_fu_2670_p1;
        end else if ((1'b1 == ap_condition_2179)) begin
            smem_1_address1_local = zext_ln179_1_fu_2631_p1;
        end else if ((1'b1 == ap_condition_2175)) begin
            smem_1_address1_local = zext_ln180_1_fu_2639_p1;
        end else if ((1'b1 == ap_condition_2171)) begin
            smem_1_address1_local = zext_ln185_fu_2574_p1;
        end else if ((1'b1 == ap_condition_2167)) begin
            smem_1_address1_local = zext_ln181_fu_2543_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001)& (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_x_load_15_reg_3826;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = reg_1896;
    end else if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_1_d0_local = reg_1949;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_d0_local = reg_1940;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_d0_local = reg_1877;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_load_6_reg_3448;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_load_7_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_load_4_reg_3429;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_3_reg_3385;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_reg_3341;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_1911;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_d1_local = reg_1896;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_1_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d1_local = DATA_x_1_q0;
    end else if (((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d1_local = reg_1867;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d1_local = DATA_x_q0;
    end else if (((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_1_d1_local = reg_1877;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d1_local = DATA_x_1_q1;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001)& (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln183_3_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln185_3_fu_3123_p1;
    end else if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln184_3_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln180_3_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln181_3_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln179_3_fu_3074_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln182_3_fu_3099_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln183_2_fu_3054_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln185_2_fu_3062_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln183_fu_2623_p1;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln184_1_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln182_1_fu_2602_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln172_1_fu_2582_p1;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln184_fu_2506_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln179_fu_2477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln182_fu_2493_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln180_fu_2485_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_fu_2469_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_2213)) begin
            smem_2_address1_local = zext_ln184_2_fu_3003_p1;
        end else if ((1'b1 == ap_condition_2208)) begin
            smem_2_address1_local = zext_ln180_2_fu_2978_p1;
        end else if ((1'b1 == ap_condition_2204)) begin
            smem_2_address1_local = zext_ln181_2_fu_2987_p1;
        end else if ((1'b1 == ap_condition_2200)) begin
            smem_2_address1_local = zext_ln179_2_fu_2961_p1;
        end else if ((1'b1 == ap_condition_2196)) begin
            smem_2_address1_local = zext_ln182_2_fu_2995_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_2_address1_local = zext_ln172_3_fu_2912_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_2_address1_local = zext_ln172_2_fu_2799_p1;
        end else if ((1'b1 == ap_condition_2192)) begin
            smem_2_address1_local = zext_ln183_1_fu_2705_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_2_address1_local = zext_ln181_1_fu_2697_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_2_address1_local = zext_ln180_1_fu_2639_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_2_address1_local = zext_ln179_1_fu_2631_p1;
        end else if ((1'b1 == ap_condition_2175)) begin
            smem_2_address1_local = zext_ln185_1_fu_2670_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_2_address1_local = zext_ln181_fu_2543_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_2_address1_local = zext_ln185_fu_2574_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 ==ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg== 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_x_load_15_reg_3826;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = reg_1925;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_d0_local = reg_1940;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_d0_local = reg_1949;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_d0_local = reg_1877;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_7_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_6_reg_3448;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_4_reg_3429;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_3_reg_3385;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_reg_3341;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = reg_1925;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_2_d1_local = reg_1896;
    end else if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_2_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d1_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d1_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_d1_local = reg_1867;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d1_local = DATA_x_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d1_local = reg_1877;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) &(1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln185_3_fu_3123_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln183_3_fu_3115_p1;
    end else if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln179_3_fu_3074_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln182_3_fu_3099_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln180_3_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln181_3_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln184_3_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address0_local = zext_ln185_2_fu_3062_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address0_local = zext_ln183_2_fu_3054_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln183_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln182_1_fu_2602_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln184_1_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln172_1_fu_2582_p1;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln179_fu_2477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln182_fu_2493_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln184_fu_2506_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln180_fu_2485_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_fu_2469_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_2213)) begin
            smem_3_address1_local = zext_ln179_2_fu_2961_p1;
        end else if ((1'b1 == ap_condition_2208)) begin
            smem_3_address1_local = zext_ln182_2_fu_2995_p1;
        end else if ((1'b1 == ap_condition_2204)) begin
            smem_3_address1_local = zext_ln180_2_fu_2978_p1;
        end else if ((1'b1 == ap_condition_2200)) begin
            smem_3_address1_local = zext_ln181_2_fu_2987_p1;
        end else if ((1'b1 == ap_condition_2196)) begin
            smem_3_address1_local = zext_ln184_2_fu_3003_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_3_address1_local = zext_ln172_3_fu_2912_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_3_address1_local = zext_ln172_2_fu_2799_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_3_address1_local = zext_ln183_1_fu_2705_p1;
        end else if ((1'b1 == ap_condition_2241)) begin
            smem_3_address1_local = zext_ln181_1_fu_2697_p1;
        end else if ((1'b1 == ap_condition_2184)) begin
            smem_3_address1_local = zext_ln179_1_fu_2631_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_3_address1_local = zext_ln185_1_fu_2670_p1;
        end else if ((1'b1 == ap_condition_2179)) begin
            smem_3_address1_local = zext_ln180_1_fu_2639_p1;
        end else if ((1'b1 == ap_condition_2167)) begin
            smem_3_address1_local = zext_ln185_fu_2574_p1;
        end else if ((1'b1 == ap_condition_2237)) begin
            smem_3_address1_local = zext_ln181_fu_2543_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_d0_local = DATA_x_load_15_reg_3826;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_d0_local = reg_1949;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_d0_local = reg_1940;
    end else if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_d0_local = reg_1877;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_load_6_reg_3448;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_load_7_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_load_4_reg_3429;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_load_3_reg_3385;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_load_reg_3341;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = reg_1911;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_3_d1_local = reg_1896;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_3_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d1_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_d1_local = reg_1867;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d1_local = DATA_x_q0;
    end else if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d1_local = reg_1877;
    end else if (((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d1_local = DATA_x_1_q1;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg== 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln185_3_fu_3123_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln183_3_fu_3115_p1;
    end else if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln181_3_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln184_3_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln182_3_fu_3099_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln180_3_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln179_3_fu_3074_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address0_local = zext_ln185_2_fu_3062_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address0_local = zext_ln183_2_fu_3054_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln183_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln184_1_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln182_1_fu_2602_p1;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln172_1_fu_2582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln184_fu_2506_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln182_fu_2493_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln179_fu_2477_p1;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln180_fu_2485_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_2213)) begin
            smem_4_address1_local = zext_ln181_2_fu_2987_p1;
        end else if ((1'b1 == ap_condition_2208)) begin
            smem_4_address1_local = zext_ln184_2_fu_3003_p1;
        end else if ((1'b1 == ap_condition_2204)) begin
            smem_4_address1_local = zext_ln182_2_fu_2995_p1;
        end else if ((1'b1 == ap_condition_2200)) begin
            smem_4_address1_local = zext_ln180_2_fu_2978_p1;
        end else if ((1'b1 == ap_condition_2196)) begin
            smem_4_address1_local = zext_ln179_2_fu_2961_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_4_address1_local = zext_ln172_3_fu_2912_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_4_address1_local = zext_ln172_2_fu_2799_p1;
        end else if ((1'b1 == ap_condition_2245)) begin
            smem_4_address1_local = zext_ln181_1_fu_2697_p1;
        end else if ((1'b1 == ap_condition_2241)) begin
            smem_4_address1_local = zext_ln183_1_fu_2705_p1;
        end else if ((1'b1 == ap_condition_2179)) begin
            smem_4_address1_local = zext_ln185_1_fu_2670_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_4_address1_local = zext_ln180_1_fu_2639_p1;
        end else if ((1'b1 == ap_condition_2175)) begin
            smem_4_address1_local = zext_ln179_1_fu_2631_p1;
        end else if ((1'b1 == ap_condition_2171)) begin
            smem_4_address1_local = zext_ln181_fu_2543_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_4_address1_local = zext_ln185_fu_2574_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = DATA_x_load_15_reg_3826;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_d0_local = reg_1896;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_d0_local = reg_1949;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_d0_local = reg_1940;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_d0_local = reg_1877;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_7_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_6_reg_3448;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_4_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_load_3_reg_3385;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_q1;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_load_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_q1;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = reg_1925;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_4_d1_local = reg_1896;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_4_d1_local = DATA_x_q1;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d1_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_d1_local = reg_1867;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d1_local = DATA_x_q0;
    end else if (((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_d1_local = DATA_x_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d1_local = reg_1877;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) &(1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg== 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 ==ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln183_3_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln185_3_fu_3123_p1;
    end else if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln180_3_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln179_3_fu_3074_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln184_3_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln182_3_fu_3099_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln181_3_fu_3091_p1;
    end else if ((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln183_2_fu_3054_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln185_2_fu_3062_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln183_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln184_1_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln182_1_fu_2602_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln172_1_fu_2582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln179_fu_2477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln184_fu_2506_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln182_fu_2493_p1;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln180_fu_2485_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_fu_2469_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_2213)) begin
            smem_address1_local = zext_ln180_2_fu_2978_p1;
        end else if ((1'b1 == ap_condition_2208)) begin
            smem_address1_local = zext_ln179_2_fu_2961_p1;
        end else if ((1'b1 == ap_condition_2204)) begin
            smem_address1_local = zext_ln184_2_fu_3003_p1;
        end else if ((1'b1 == ap_condition_2200)) begin
            smem_address1_local = zext_ln182_2_fu_2995_p1;
        end else if ((1'b1 == ap_condition_2196)) begin
            smem_address1_local = zext_ln181_2_fu_2987_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln172_3_fu_2912_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln172_2_fu_2799_p1;
        end else if ((1'b1 == ap_condition_2245)) begin
            smem_address1_local = zext_ln183_1_fu_2705_p1;
        end else if ((1'b1 == ap_condition_2188)) begin
            smem_address1_local = zext_ln181_1_fu_2697_p1;
        end else if ((1'b1 == ap_condition_2184)) begin
            smem_address1_local = zext_ln180_1_fu_2639_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_address1_local = zext_ln179_1_fu_2631_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_address1_local = zext_ln185_1_fu_2670_p1;
        end else if ((1'b1 == ap_condition_2237)) begin
            smem_address1_local = zext_ln185_fu_2574_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_address1_local = zext_ln181_fu_2543_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0== ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_x_load_15_reg_3826;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = reg_1911;
    end else if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_d0_local = reg_1940;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_d0_local = reg_1949;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_d0_local = reg_1877;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_7_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_6_reg_3448;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_4_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_3_reg_3385;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q0;
    end else if ((~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_reg_3341;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = reg_1911;
    end else if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_d1_local = reg_1896;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d1_local = DATA_x_1_q0;
    end else if ((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d1_local = DATA_x_q0;
    end else if (((~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_d1_local = reg_1867;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d1_local = reg_1877;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d1_local = DATA_x_1_q1;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_9_reg_3697 == 3'd1) & ~(trunc_ln172_9_reg_3697 == 3'd2) & ~(trunc_ln172_9_reg_3697 == 3'd0) & ~(trunc_ln172_9_reg_3697 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697== 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_9_reg_3697 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_9_reg_3697 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln174_fu_2067_p2 = (tid_reg_3201 + 7'd4);
assign add_ln179_1_fu_2215_p2 = ($signed(zext_ln172_20_fu_2200_p1) + $signed(9'd264));
assign add_ln179_2_fu_2729_p2 = ($signed(zext_ln172_24_reg_3471) + $signed(9'd264));
assign add_ln179_3_fu_2897_p2 = (offset_3_reg_3225_pp0_iter3_reg + 32'd264);
assign add_ln179_fu_2095_p2 = ($signed(zext_ln172_16_fu_2092_p1) + $signed(9'd264));
assign add_ln180_1_fu_2902_p2 = (offset_3_reg_3225_pp0_iter3_reg + 32'd66);
assign add_ln181_1_fu_2278_p2 = ($signed(zext_ln172_20_reg_3360) + $signed(9'd330));
assign add_ln181_2_fu_2746_p2 = ($signed(zext_ln172_24_reg_3471) + $signed(9'd330));
assign add_ln181_3_fu_2942_p2 = (offset_3_reg_3225_pp0_iter3_reg + 32'd330);
assign add_ln181_fu_2135_p2 = ($signed(zext_ln172_16_reg_3290) + $signed(9'd330));
assign add_ln182_1_fu_2221_p2 = ($signed(zext_ln172_19_fu_2197_p1) + $signed(8'd132));
assign add_ln182_2_fu_2751_p2 = ($signed(zext_ln172_23_fu_2713_p1) + $signed(8'd132));
assign add_ln182_3_fu_2907_p2 = (offset_3_reg_3225_pp0_iter3_reg + 32'd132);
assign add_ln182_fu_2140_p2 = ($signed(zext_ln172_15_fu_2101_p1) + $signed(8'd132));
assign add_ln183_1_fu_2610_p2 = ($signed(zext_ln172_19_reg_3355) + $signed(8'd140));
assign add_ln183_2_fu_2777_p2 = ($signed(zext_ln172_23_fu_2713_p1) + $signed(8'd140));
assign add_ln183_3_fu_2951_p2 = (offset_3_reg_3225_pp0_iter3_reg + 32'd396);
assign add_ln183_fu_2501_p2 = ($signed(zext_ln172_15_reg_3301) + $signed(8'd140));
assign add_ln184_3_fu_2956_p2 = (offset_3_reg_3225_pp0_iter3_reg + 32'd198);
assign add_ln185_3_fu_3049_p2 = (offset_3_reg_3225_pp0_iter3_reg + 32'd462);
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
    ap_condition_2167 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2171 = (~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2175 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2179 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2184 = (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2188 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2192 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2196 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2200 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2204 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2208 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2213 = (~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_8_reg_3286_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2217 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2221 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2225 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2229 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2233 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2237 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3278_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2241 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2245 = (~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd2) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd1) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd0) & ~(trunc_ln172_7_reg_3282_pp0_iter3_reg == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign grp_fu_2010_p0 = {{zext_ln175_fu_1978_p1[31:3]}, {or_ln12_fu_1990_p3}};
assign grp_fu_2010_p1 = 32'd5;
assign grp_fu_2016_p1 = 6'd5;
assign grp_fu_2038_p0 = {{tmp_66_fu_2021_p4}, {1'd1}};
assign grp_fu_2038_p1 = 6'd5;
assign grp_fu_2061_p0 = {{tmp_s_fu_2044_p4}, {2'd2}};
assign grp_fu_2061_p1 = 6'd5;
assign grp_fu_3132_p0 = grp_fu_3132_p00;
assign grp_fu_3132_p00 = offset_reg_3212_pp0_iter1_reg;
assign grp_fu_3132_p1 = 10'd462;
assign grp_fu_3132_p2 = 21'd1639;
assign grp_fu_3141_p0 = zext_ln172_16_reg_3290;
assign grp_fu_3141_p1 = 9'd198;
assign grp_fu_3141_p2 = 19'd820;
assign grp_fu_3149_p0 = zext_ln172_20_fu_2200_p1;
assign grp_fu_3149_p1 = 9'd198;
assign grp_fu_3149_p2 = 19'd820;
assign grp_fu_3158_p0 = grp_fu_3158_p00;
assign grp_fu_3158_p00 = offset_1_reg_3246_pp0_iter2_reg;
assign grp_fu_3158_p1 = 10'd462;
assign grp_fu_3158_p2 = 21'd1639;
assign grp_fu_3167_p0 = grp_fu_3167_p00;
assign grp_fu_3167_p00 = offset_2_reg_3269_pp0_iter2_reg;
assign grp_fu_3167_p1 = 9'd198;
assign grp_fu_3167_p2 = 19'd820;
assign grp_fu_3176_p0 = grp_fu_3176_p00;
assign grp_fu_3176_p00 = offset_2_reg_3269_pp0_iter2_reg;
assign grp_fu_3176_p1 = 10'd462;
assign grp_fu_3176_p2 = 21'd1639;
assign grp_fu_3185_p0 = zext_ln172_23_fu_2713_p1;
assign grp_fu_3185_p1 = 8'd66;
assign grp_fu_3185_p2 = 17'd410;
assign grp_fu_413_p_ce = 1'b1;
assign grp_fu_413_p_din0 = grp_fu_1822_p0;
assign grp_fu_413_p_din1 = 65'd6871947674;
assign grp_fu_417_p_ce = 1'b1;
assign grp_fu_417_p_din0 = grp_fu_1827_p0;
assign grp_fu_417_p_din1 = 65'd6871947674;
assign grp_fu_421_p_ce = 1'b1;
assign grp_fu_421_p_din0 = grp_fu_1832_p0;
assign grp_fu_421_p_din1 = 65'd6871947674;
assign mul_ln172_1_fu_2453_p0 = mul_ln172_1_fu_2453_p00;
assign mul_ln172_1_fu_2453_p00 = offset_1_reg_3246_pp0_iter2_reg;
assign mul_ln172_1_fu_2453_p1 = 13'd103;
assign mul_ln172_2_fu_2681_p0 = mul_ln172_2_fu_2681_p00;
assign mul_ln172_2_fu_2681_p00 = offset_2_reg_3269_pp0_iter2_reg;
assign mul_ln172_2_fu_2681_p1 = 13'd103;
assign mul_ln172_fu_2381_p0 = mul_ln172_fu_2381_p00;
assign mul_ln172_fu_2381_p00 = offset_reg_3212_pp0_iter2_reg;
assign mul_ln172_fu_2381_p1 = 13'd103;
assign mul_ln179_1_fu_2262_p0 = mul_ln179_1_fu_2262_p00;
assign mul_ln179_1_fu_2262_p00 = add_ln179_1_reg_3375;
assign mul_ln179_1_fu_2262_p1 = 19'd820;
assign mul_ln179_2_fu_2810_p0 = mul_ln179_2_fu_2810_p00;
assign mul_ln179_2_fu_2810_p00 = add_ln179_2_reg_3612;
assign mul_ln179_2_fu_2810_p1 = 19'd820;
assign mul_ln179_fu_2119_p0 = mul_ln179_fu_2119_p00;
assign mul_ln179_fu_2119_p00 = add_ln179_reg_3296;
assign mul_ln179_fu_2119_p1 = 19'd820;
assign mul_ln180_1_fu_2527_p0 = mul_ln180_1_fu_2527_p00;
assign mul_ln180_1_fu_2527_p00 = zext_ln180_9_cast_fu_2514_p4;
assign mul_ln180_1_fu_2527_p1 = 15'd205;
assign mul_ln180_fu_2422_p0 = mul_ln180_fu_2422_p00;
assign mul_ln180_fu_2422_p00 = zext_ln180_8_cast_fu_2409_p4;
assign mul_ln180_fu_2422_p1 = 15'd205;
assign mul_ln181_1_fu_2320_p0 = mul_ln181_1_fu_2320_p00;
assign mul_ln181_1_fu_2320_p00 = add_ln181_1_reg_3404;
assign mul_ln181_1_fu_2320_p1 = 19'd820;
assign mul_ln181_2_fu_2829_p0 = mul_ln181_2_fu_2829_p00;
assign mul_ln181_2_fu_2829_p00 = add_ln181_2_reg_3627;
assign mul_ln181_2_fu_2829_p1 = 19'd820;
assign mul_ln181_fu_2181_p0 = mul_ln181_fu_2181_p00;
assign mul_ln181_fu_2181_p00 = add_ln181_reg_3321;
assign mul_ln181_fu_2181_p1 = 19'd820;
assign mul_ln182_1_fu_2231_p0 = mul_ln182_1_fu_2231_p00;
assign mul_ln182_1_fu_2231_p00 = add_ln182_1_fu_2221_p2;
assign mul_ln182_1_fu_2231_p1 = 17'd410;
assign mul_ln182_2_fu_2761_p0 = mul_ln182_2_fu_2761_p00;
assign mul_ln182_2_fu_2761_p00 = add_ln182_2_fu_2751_p2;
assign mul_ln182_2_fu_2761_p1 = 17'd410;
assign mul_ln182_fu_2150_p0 = mul_ln182_fu_2150_p00;
assign mul_ln182_fu_2150_p00 = add_ln182_fu_2140_p2;
assign mul_ln182_fu_2150_p1 = 17'd410;
assign mul_ln183_1_fu_2654_p0 = mul_ln183_1_fu_2654_p00;
assign mul_ln183_1_fu_2654_p00 = $unsigned(sext_ln183_1_fu_2647_p1);
assign mul_ln183_1_fu_2654_p1 = 19'd820;
assign mul_ln183_2_fu_2865_p0 = mul_ln183_2_fu_2865_p00;
assign mul_ln183_2_fu_2865_p00 = $unsigned(sext_ln183_2_fu_2858_p1);
assign mul_ln183_2_fu_2865_p1 = 19'd820;
assign mul_ln183_fu_2558_p0 = mul_ln183_fu_2558_p00;
assign mul_ln183_fu_2558_p00 = $unsigned(sext_ln183_fu_2551_p1);
assign mul_ln183_fu_2558_p1 = 19'd820;
assign offset_1_fu_2030_p3 = {{tmp_66_fu_2021_p4}, {1'd1}};
assign offset_2_fu_2053_p3 = {{tmp_s_fu_2044_p4}, {2'd2}};
assign offset_3_fu_1998_p5 = {{zext_ln175_fu_1978_p1[31:3]}, {or_ln12_fu_1990_p3}};
assign offset_fu_1974_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln10_fu_2166_p3 = {{offset_reg_3212_pp0_iter2_reg}, {2'd3}};
assign or_ln11_fu_2716_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd8}};
assign or_ln12_fu_1990_p3 = {{tmp_190_fu_1982_p3}, {2'd3}};
assign or_ln180_1_fu_2590_p3 = {{tmp_66_reg_3238_pp0_iter2_reg}, {3'd6}};
assign or_ln180_2_fu_2734_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd10}};
assign or_ln180_3_fu_2925_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd14}};
assign or_ln182_1_fu_2283_p3 = {{tmp_66_reg_3238_pp0_iter2_reg}, {3'd5}};
assign or_ln182_2_fu_2845_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd9}};
assign or_ln182_3_fu_3015_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd13}};
assign or_ln184_1_fu_2295_p3 = {{tmp_66_reg_3238_pp0_iter2_reg}, {3'd7}};
assign or_ln184_2_fu_2881_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd11}};
assign or_ln184_3_fu_3032_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd15}};
assign or_ln8_fu_2397_p3 = {{offset_reg_3212_pp0_iter2_reg}, {2'd2}};
assign or_ln9_fu_2438_p3 = {{offset_reg_3212_pp0_iter2_reg}, {2'd1}};
assign sext_ln183_1_fu_2647_p1 = $signed(add_ln183_1_reg_3582);
assign sext_ln183_2_fu_2858_p1 = $signed(add_ln183_2_reg_3637);
assign sext_ln183_fu_2551_p1 = $signed(add_ln183_reg_3547);
assign shl_ln178_1_fu_2203_p3 = {{tmp_66_reg_3238_pp0_iter1_reg}, {3'd4}};
assign shl_ln178_2_fu_2787_p3 = {{tmp_s_reg_3255_pp0_iter3_reg}, {4'd12}};
assign shl_ln1_fu_2104_p3 = {{offset_reg_3212_pp0_iter2_reg}, {2'd0}};
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
assign tmp_172_fu_2308_p1 = grp_fu_3141_p3;
assign tmp_173_fu_2247_p1 = grp_fu_3132_p3;
assign tmp_180_fu_2336_p1 = grp_fu_3149_p3;
assign tmp_181_fu_2348_p1 = grp_fu_3158_p3;
assign tmp_184_fu_2969_p1 = grp_fu_3185_p3;
assign tmp_184_fu_2969_p4 = {{tmp_184_fu_2969_p1[16:11]}};
assign tmp_188_fu_2360_p1 = grp_fu_3167_p3;
assign tmp_189_fu_2369_p1 = grp_fu_3176_p3;
assign tmp_190_fu_1982_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_66_fu_2021_p4 = {{tid_reg_3201[5:1]}};
assign tmp_s_fu_2044_p4 = {{tid_reg_3201[5:2]}};
assign trunc_ln172_7_fu_2081_p1 = grp_fu_2038_p2[2:0];
assign trunc_ln172_8_fu_2085_p1 = grp_fu_2061_p2[2:0];
assign trunc_ln172_9_fu_2893_p1 = grp_fu_2010_p2[2:0];
assign trunc_ln172_fu_2077_p1 = grp_fu_2016_p2[2:0];
assign zext_ln172_15_fu_2101_p1 = offset_reg_3212_pp0_iter2_reg;
assign zext_ln172_16_fu_2092_p1 = offset_reg_3212_pp0_iter1_reg;
assign zext_ln172_19_fu_2197_p1 = offset_1_reg_3246_pp0_iter1_reg;
assign zext_ln172_1_fu_2582_p1 = tmp_174_reg_3532;
assign zext_ln172_20_fu_2200_p1 = offset_1_reg_3246_pp0_iter1_reg;
assign zext_ln172_23_fu_2713_p1 = offset_2_reg_3269_pp0_iter3_reg;
assign zext_ln172_24_fu_2345_p1 = offset_2_reg_3269_pp0_iter2_reg;
assign zext_ln172_2_fu_2799_p1 = tmp_182_reg_3597;
assign zext_ln172_33_fu_2783_p1 = offset_3_reg_3225_pp0_iter3_reg;
assign zext_ln172_3_fu_2912_p1 = reg_1892;
assign zext_ln172_fu_2469_p1 = tmp_166_reg_3492;
assign zext_ln175_fu_1978_p1 = offset_fu_1974_p1;
assign zext_ln178_1_fu_2210_p1 = shl_ln178_1_fu_2203_p3;
assign zext_ln178_2_fu_2723_p1 = or_ln11_fu_2716_p3;
assign zext_ln178_3_fu_2794_p1 = shl_ln178_2_fu_2787_p3;
assign zext_ln178_fu_2111_p1 = shl_ln1_fu_2104_p3;
assign zext_ln179_1_fu_2631_p1 = tmp_175_reg_3399;
assign zext_ln179_2_fu_2961_p1 = tmp_183_reg_3657;
assign zext_ln179_3_fu_3074_p1 = reg_1892;
assign zext_ln179_7_fu_2921_p1 = add_ln179_3_reg_3701;
assign zext_ln179_fu_2477_p1 = tmp_167_reg_3316;
assign zext_ln180_11_fu_2938_p1 = add_ln180_1_reg_3706;
assign zext_ln180_1_fu_2639_p1 = tmp_176_reg_3552;
assign zext_ln180_2_fu_2978_p1 = tmp_184_fu_2969_p4;
assign zext_ln180_3_fu_3083_p1 = tmp_193_reg_3766;
assign zext_ln180_4_fu_2404_p1 = or_ln8_fu_2397_p3;
assign zext_ln180_5_fu_2597_p1 = or_ln180_1_fu_2590_p3;
assign zext_ln180_6_fu_2741_p1 = or_ln180_2_fu_2734_p3;
assign zext_ln180_7_fu_2932_p1 = or_ln180_3_fu_2925_p3;
assign zext_ln180_8_cast_fu_2409_p4 = {{{{1'd1}, {tmp_s_reg_3255_pp0_iter2_reg}}}, {2'd2}};
assign zext_ln180_9_cast_fu_2514_p4 = {{{{1'd1}, {tmp_s_reg_3255_pp0_iter2_reg}}}, {2'd3}};
assign zext_ln180_fu_2485_p1 = tmp_168_reg_3512;
assign zext_ln181_1_fu_2697_p1 = tmp_177_reg_3443;
assign zext_ln181_2_fu_2987_p1 = tmp_185_reg_3667;
assign zext_ln181_3_fu_3091_p1 = tmp_194_reg_3816;
assign zext_ln181_7_fu_3011_p1 = add_ln181_3_reg_3746;
assign zext_ln181_fu_2543_p1 = tmp_169_reg_3350;
assign zext_ln182_11_fu_2947_p1 = add_ln182_3_reg_3711;
assign zext_ln182_1_fu_2602_p1 = tmp_178_reg_3380;
assign zext_ln182_2_fu_2995_p1 = tmp_186_reg_3632;
assign zext_ln182_3_fu_3099_p1 = tmp_195_reg_3781;
assign zext_ln182_4_fu_2445_p1 = or_ln9_fu_2438_p3;
assign zext_ln182_5_fu_2290_p1 = or_ln182_1_fu_2283_p3;
assign zext_ln182_6_fu_2852_p1 = or_ln182_2_fu_2845_p3;
assign zext_ln182_7_fu_3022_p1 = or_ln182_3_fu_3015_p3;
assign zext_ln182_fu_2493_p1 = tmp_170_reg_3326;
assign zext_ln183_1_fu_2705_p1 = tmp_179_reg_3592;
assign zext_ln183_2_fu_3054_p1 = tmp_187_reg_3682;
assign zext_ln183_3_fu_3115_p1 = tmp_196_reg_3821;
assign zext_ln183_7_fu_3028_p1 = add_ln183_3_reg_3756;
assign zext_ln183_fu_2623_p1 = tmp_171_reg_3557;
assign zext_ln184_11_fu_3045_p1 = add_ln184_3_reg_3761;
assign zext_ln184_1_fu_2615_p1 = tmp_180_reg_3466;
assign zext_ln184_2_fu_3003_p1 = tmp_188_reg_3482;
assign zext_ln184_3_fu_3107_p1 = tmp_197_reg_3835;
assign zext_ln184_4_fu_2173_p1 = or_ln10_fu_2166_p3;
assign zext_ln184_5_fu_2302_p1 = or_ln184_1_fu_2295_p3;
assign zext_ln184_6_fu_2888_p1 = or_ln184_2_fu_2881_p3;
assign zext_ln184_7_fu_3039_p1 = or_ln184_3_fu_3032_p3;
assign zext_ln184_fu_2506_p1 = tmp_172_reg_3438;
assign zext_ln185_1_fu_2670_p1 = tmp_181_reg_3477;
assign zext_ln185_2_fu_3062_p1 = tmp_189_reg_3487;
assign zext_ln185_3_fu_3123_p1 = reg_1892;
assign zext_ln185_7_fu_3070_p1 = add_ln185_3_reg_3811;
assign zext_ln185_fu_2574_p1 = tmp_173_reg_3394;
always @ (posedge ap_clk) begin
    offset_1_reg_3246[0] <= 1'b1;
    offset_1_reg_3246_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_3246_pp0_iter2_reg[0] <= 1'b1;
    offset_2_reg_3269[1:0] <= 2'b10;
    offset_2_reg_3269_pp0_iter1_reg[1:0] <= 2'b10;
    offset_2_reg_3269_pp0_iter2_reg[1:0] <= 2'b10;
    offset_2_reg_3269_pp0_iter3_reg[1:0] <= 2'b10;
    zext_ln172_16_reg_3290[8:6] <= 3'b000;
    zext_ln172_15_reg_3301[7:6] <= 2'b00;
    zext_ln178_reg_3306[1:0] <= 2'b00;
    zext_ln178_reg_3306[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln184_4_reg_3331[1:0] <= 2'b11;
    zext_ln184_4_reg_3331[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_19_reg_3355[0] <= 1'b1;
    zext_ln172_19_reg_3355[7:6] <= 2'b00;
    zext_ln172_20_reg_3360[0] <= 1'b1;
    zext_ln172_20_reg_3360[8:6] <= 3'b000;
    zext_ln178_1_reg_3365[2:0] <= 3'b100;
    zext_ln178_1_reg_3365[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln179_1_reg_3375[0] <= 1'b1;
    add_ln181_1_reg_3404[0] <= 1'b1;
    zext_ln182_5_reg_3409[2:0] <= 3'b101;
    zext_ln182_5_reg_3409[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_24_reg_3471[1:0] <= 2'b10;
    zext_ln172_24_reg_3471[8:6] <= 3'b000;
    zext_ln180_4_reg_3502[1:0] <= 2'b10;
    zext_ln180_4_reg_3502[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln182_4_reg_3517[1:0] <= 2'b01;
    zext_ln182_4_reg_3517[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln180_5_reg_3567[2:0] <= 3'b110;
    zext_ln180_5_reg_3567[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln183_1_reg_3582[0] <= 1'b1;
    add_ln179_2_reg_3612[1:0] <= 2'b10;
    zext_ln180_6_reg_3617[3:0] <= 4'b1010;
    zext_ln180_6_reg_3617[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln181_2_reg_3627[1:0] <= 2'b00;
    add_ln183_2_reg_3637[1:0] <= 2'b10;
    zext_ln178_3_reg_3647[3:0] <= 4'b1100;
    zext_ln178_3_reg_3647[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln184_6_reg_3687[3:0] <= 4'b1011;
    zext_ln184_6_reg_3687[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
