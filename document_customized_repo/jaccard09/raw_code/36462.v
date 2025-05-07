module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,tmp,tmp_2,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,tmp_1,tmp_3,empty,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,r,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,indvars_iv_next173,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [8:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [8:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [8:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [8:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [8:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [8:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [8:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [8:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [8:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [8:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [8:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [8:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [8:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [8:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [8:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [12:0] tmp;
input  [8:0] tmp_2;
output  [8:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [8:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [8:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [8:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [8:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [8:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [8:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [8:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [8:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [8:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [8:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [8:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
input  [12:0] tmp_1;
input  [8:0] tmp_3;
input  [12:0] empty;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [8:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [8:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [8:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [8:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
input  [6:0] r;
output  [8:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [8:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [8:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [8:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
input  [6:0] indvars_iv_next173;
output  [8:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [8:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [8:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [8:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [8:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [8:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [8:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [8:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [8:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [8:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [8:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [8:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln8_reg_3147;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_1216_p2;
reg   [31:0] reg_1354;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_1228_p2;
reg   [31:0] reg_1358;
wire   [31:0] grp_fu_1232_p2;
reg   [31:0] reg_1362;
wire   [31:0] grp_fu_1236_p2;
reg   [31:0] reg_1366;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_1240_p2;
reg   [31:0] reg_1370;
wire   [31:0] grp_fu_1244_p2;
reg   [31:0] reg_1374;
wire   [31:0] grp_fu_1248_p2;
reg   [31:0] reg_1378;
wire   [31:0] grp_fu_1252_p2;
reg   [31:0] reg_1382;
wire   [31:0] grp_fu_1264_p2;
reg   [31:0] reg_1386;
wire   [31:0] grp_fu_1272_p2;
reg   [31:0] reg_1390;
wire   [31:0] grp_fu_1276_p2;
reg   [31:0] reg_1394;
wire   [31:0] grp_fu_1280_p2;
reg   [31:0] reg_1398;
wire   [31:0] grp_fu_1292_p2;
reg   [31:0] reg_1402;
wire   [31:0] grp_fu_1296_p2;
reg   [31:0] reg_1406;
wire   [31:0] grp_fu_1308_p2;
reg   [31:0] reg_1410;
wire   [31:0] grp_fu_1220_p2;
reg   [31:0] reg_1414;
wire   [31:0] grp_fu_1224_p2;
reg   [31:0] reg_1418;
wire   [31:0] grp_fu_1256_p2;
reg   [31:0] reg_1422;
wire   [31:0] grp_fu_1260_p2;
reg   [31:0] reg_1426;
wire   [31:0] grp_fu_1300_p2;
reg   [31:0] reg_1430;
wire   [63:0] zext_ln12_fu_1470_p1;
reg   [63:0] zext_ln12_reg_2886;
reg   [63:0] zext_ln12_reg_2886_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_2886_pp0_iter2_reg;
wire   [0:0] icmp_ln12_fu_1476_p2;
reg   [0:0] icmp_ln12_reg_2918;
wire   [63:0] zext_ln12_2_fu_1510_p1;
reg   [63:0] zext_ln12_2_reg_2972;
wire   [8:0] add_ln5_1_fu_1545_p2;
reg   [8:0] add_ln5_1_reg_3008;
reg   [8:0] lshr_ln12_3_reg_3013;
wire   [0:0] icmp_ln16_fu_1560_p2;
reg   [0:0] icmp_ln16_reg_3018;
reg   [0:0] icmp_ln16_reg_3018_pp0_iter1_reg;
reg   [0:0] icmp_ln16_reg_3018_pp0_iter2_reg;
reg   [8:0] lshr_ln12_5_reg_3032;
reg   [8:0] lshr_ln12_9_reg_3067;
reg   [8:0] lshr_ln12_11_reg_3092;
reg   [8:0] lshr_ln12_13_reg_3107;
reg   [8:0] lshr_ln12_15_reg_3122;
reg   [8:0] lshr_ln12_16_reg_3127;
wire   [12:0] or_ln8_7_fu_1970_p3;
reg   [12:0] or_ln8_7_reg_3142;
wire   [0:0] icmp_ln8_fu_1978_p2;
reg   [0:0] icmp_ln8_reg_3147_pp0_iter1_reg;
reg   [0:0] icmp_ln8_reg_3147_pp0_iter2_reg;
reg   [8:0] lshr_ln12_18_reg_3151;
reg   [8:0] lshr_ln12_19_reg_3156;
reg   [8:0] lshr_ln12_21_reg_3171;
reg   [8:0] lshr_ln12_24_reg_3176;
reg   [8:0] lshr_ln12_25_reg_3181;
reg   [8:0] lshr_ln12_26_reg_3186;
wire  signed [31:0] select_ln12_fu_2119_p3;
reg  signed [31:0] select_ln12_reg_3191;
wire  signed [31:0] select_ln12_1_fu_2126_p3;
reg  signed [31:0] select_ln12_1_reg_3196;
wire  signed [31:0] select_ln12_2_fu_2133_p3;
reg  signed [31:0] select_ln12_2_reg_3202;
wire  signed [31:0] select_ln12_3_fu_2140_p3;
reg  signed [31:0] select_ln12_3_reg_3209;
wire  signed [31:0] select_ln12_4_fu_2147_p3;
reg  signed [31:0] select_ln12_4_reg_3214;
wire  signed [31:0] select_ln12_5_fu_2154_p3;
reg  signed [31:0] select_ln12_5_reg_3220;
wire  signed [31:0] select_ln12_9_fu_2168_p3;
reg  signed [31:0] select_ln12_9_reg_3247;
wire  signed [31:0] select_ln12_11_fu_2180_p3;
reg  signed [31:0] select_ln12_11_reg_3264;
wire  signed [31:0] select_ln12_12_fu_2187_p3;
reg  signed [31:0] select_ln12_12_reg_3271;
wire  signed [31:0] select_ln12_13_fu_2194_p3;
reg  signed [31:0] select_ln12_13_reg_3278;
wire  signed [31:0] select_ln12_15_fu_2206_p3;
reg  signed [31:0] select_ln12_15_reg_3295;
wire  signed [31:0] select_ln12_16_fu_2213_p3;
reg  signed [31:0] select_ln12_16_reg_3302;
wire  signed [31:0] select_ln12_18_fu_2225_p3;
reg  signed [31:0] select_ln12_18_reg_3319;
wire  signed [31:0] select_ln12_20_fu_2232_p3;
reg  signed [31:0] select_ln12_20_reg_3325;
wire  signed [31:0] select_ln12_23_fu_2244_p3;
reg  signed [31:0] select_ln12_23_reg_3341;
wire  signed [31:0] select_ln12_28_fu_2261_p3;
reg  signed [31:0] select_ln12_28_reg_3386;
reg   [8:0] lshr_ln12_22_reg_3402;
reg   [8:0] lshr_ln12_23_reg_3407;
wire  signed [31:0] select_ln12_7_fu_2315_p3;
reg  signed [31:0] select_ln12_7_reg_3432;
wire  signed [31:0] select_ln12_8_fu_2322_p3;
reg  signed [31:0] select_ln12_8_reg_3438;
wire  signed [31:0] select_ln12_10_fu_2329_p3;
reg  signed [31:0] select_ln12_10_reg_3445;
wire  signed [31:0] select_ln12_14_fu_2336_p3;
reg  signed [31:0] select_ln12_14_reg_3452;
wire  signed [31:0] select_ln12_17_fu_2343_p3;
reg  signed [31:0] select_ln12_17_reg_3459;
wire  signed [31:0] grp_fu_1312_p3;
reg  signed [31:0] select_ln12_21_reg_3476;
wire  signed [31:0] grp_fu_1319_p3;
reg  signed [31:0] select_ln12_24_reg_3491;
wire  signed [31:0] grp_fu_1326_p3;
reg  signed [31:0] select_ln12_25_reg_3496;
wire  signed [31:0] grp_fu_1333_p3;
reg  signed [31:0] select_ln12_26_reg_3502;
wire  signed [31:0] grp_fu_1340_p3;
reg  signed [31:0] select_ln12_27_reg_3508;
wire  signed [31:0] select_ln12_29_fu_2360_p3;
reg  signed [31:0] select_ln12_29_reg_3513;
wire  signed [31:0] grp_fu_1347_p3;
reg  signed [31:0] select_ln12_35_reg_3569;
wire  signed [31:0] select_ln12_6_fu_2387_p3;
reg  signed [31:0] select_ln12_6_reg_3574;
reg   [31:0] mul_ln13_2_reg_3579;
reg   [31:0] mul_ln13_4_reg_3584;
reg   [31:0] mul_ln13_22_reg_3589;
reg   [31:0] mul_ln13_25_reg_3594;
wire   [31:0] grp_fu_1268_p2;
reg   [31:0] mul_ln13_31_reg_3599;
reg  signed [31:0] select_ln12_19_reg_3604;
wire   [31:0] grp_fu_1284_p2;
reg   [31:0] mul_ln13_40_reg_3610;
wire   [31:0] grp_fu_1288_p2;
reg   [31:0] mul_ln13_43_reg_3615;
reg  signed [31:0] select_ln12_22_reg_3620;
reg   [31:0] mul_ln13_49_reg_3625;
wire   [31:0] grp_fu_1304_p2;
reg   [31:0] mul_ln13_52_reg_3630;
reg  signed [31:0] select_ln12_30_reg_3635;
reg  signed [31:0] select_ln12_31_reg_3640;
reg  signed [31:0] select_ln12_32_reg_3646;
wire  signed [31:0] select_ln12_33_fu_2394_p3;
reg  signed [31:0] select_ln12_33_reg_3652;
reg  signed [31:0] select_ln12_34_reg_3657;
reg   [31:0] mul_ln13_1_reg_3662;
reg   [31:0] mul_ln13_8_reg_3667;
reg   [31:0] mul_ln13_9_reg_3672;
reg   [31:0] mul_ln13_14_reg_3677;
wire   [31:0] add_ln13_13_fu_2407_p2;
reg   [31:0] add_ln13_13_reg_3682;
reg   [31:0] mul_ln13_19_reg_3687;
reg   [31:0] mul_ln13_30_reg_3692;
reg   [31:0] mul_ln13_34_reg_3697;
reg   [31:0] mul_ln13_41_reg_3702;
reg   [31:0] mul_ln13_50_reg_3707;
reg   [31:0] mul_ln13_54_reg_3712;
reg   [31:0] mul_ln13_56_reg_3717;
reg   [31:0] mul_ln13_58_reg_3722;
reg   [31:0] mul_ln13_61_reg_3727;
reg   [31:0] mul_ln13_65_reg_3732;
reg   [31:0] mul_ln13_67_reg_3737;
reg   [31:0] mul_ln13_69_reg_3742;
wire   [31:0] add_ln13_1_fu_2413_p2;
reg   [31:0] add_ln13_1_reg_3747;
wire   [31:0] add_ln13_5_fu_2424_p2;
reg   [31:0] add_ln13_5_reg_3752;
wire   [31:0] add_ln13_8_fu_2430_p2;
reg   [31:0] add_ln13_8_reg_3757;
wire   [31:0] add_ln13_9_fu_2435_p2;
reg   [31:0] add_ln13_9_reg_3762;
wire   [31:0] add_ln13_14_fu_2446_p2;
reg   [31:0] add_ln13_14_reg_3767;
wire   [31:0] add_ln13_16_fu_2451_p2;
reg   [31:0] add_ln13_16_reg_3772;
wire   [31:0] add_ln13_21_fu_2462_p2;
reg   [31:0] add_ln13_21_reg_3777;
wire   [31:0] add_ln13_29_fu_2473_p2;
reg   [31:0] add_ln13_29_reg_3782;
wire   [31:0] add_ln13_37_fu_2484_p2;
reg   [31:0] add_ln13_37_reg_3787;
reg   [31:0] mul_ln13_51_reg_3792;
wire   [31:0] add_ln13_45_fu_2495_p2;
reg   [31:0] add_ln13_45_reg_3797;
reg   [31:0] mul_ln13_59_reg_3802;
reg   [31:0] mul_ln13_60_reg_3807;
reg   [31:0] mul_ln13_68_reg_3812;
wire   [31:0] add_ln13_61_fu_2507_p2;
reg   [31:0] add_ln13_61_reg_3817;
wire   [31:0] add_ln13_fu_2512_p2;
reg   [31:0] add_ln13_reg_3822;
wire   [31:0] add_ln13_6_fu_2521_p2;
reg   [31:0] add_ln13_6_reg_3827;
wire   [31:0] temp_1_fu_2530_p2;
reg   [31:0] temp_1_reg_3832;
wire   [31:0] add_ln13_17_fu_2535_p2;
reg   [31:0] add_ln13_17_reg_3838;
wire   [31:0] add_ln13_22_fu_2545_p2;
reg   [31:0] add_ln13_22_reg_3843;
wire   [31:0] add_ln13_24_fu_2550_p2;
reg   [31:0] add_ln13_24_reg_3848;
wire   [31:0] add_ln13_25_fu_2556_p2;
reg   [31:0] add_ln13_25_reg_3853;
wire   [31:0] add_ln13_30_fu_2566_p2;
reg   [31:0] add_ln13_30_reg_3858;
wire   [31:0] add_ln13_32_fu_2571_p2;
reg   [31:0] add_ln13_32_reg_3863;
wire   [31:0] add_ln13_33_fu_2577_p2;
reg   [31:0] add_ln13_33_reg_3868;
wire   [31:0] add_ln13_38_fu_2587_p2;
reg   [31:0] add_ln13_38_reg_3873;
wire   [31:0] add_ln13_40_fu_2592_p2;
reg   [31:0] add_ln13_40_reg_3878;
wire   [31:0] add_ln13_41_fu_2598_p2;
reg   [31:0] add_ln13_41_reg_3883;
wire   [31:0] add_ln13_46_fu_2607_p2;
reg   [31:0] add_ln13_46_reg_3888;
wire   [31:0] add_ln13_48_fu_2612_p2;
reg   [31:0] add_ln13_48_reg_3893;
wire   [31:0] add_ln13_49_fu_2617_p2;
reg   [31:0] add_ln13_49_reg_3898;
wire   [31:0] add_ln13_53_fu_2627_p2;
reg   [31:0] add_ln13_53_reg_3903;
wire   [31:0] add_ln13_56_fu_2632_p2;
reg   [31:0] add_ln13_56_reg_3908;
wire   [31:0] add_ln13_57_fu_2638_p2;
reg   [31:0] add_ln13_57_reg_3913;
wire   [31:0] add_ln13_62_fu_2647_p2;
reg   [31:0] add_ln13_62_reg_3918;
wire   [31:0] temp_fu_2656_p2;
reg   [31:0] temp_reg_3923;
wire   [31:0] temp_2_fu_2665_p2;
reg   [31:0] temp_2_reg_3929;
wire   [31:0] temp_3_fu_2674_p2;
reg   [31:0] temp_3_reg_3935;
wire   [31:0] temp_4_fu_2683_p2;
reg   [31:0] temp_4_reg_3941;
wire   [31:0] temp_5_fu_2692_p2;
reg   [31:0] temp_5_reg_3947;
wire   [31:0] add_ln13_54_fu_2701_p2;
reg   [31:0] add_ln13_54_reg_3953;
wire   [31:0] temp_7_fu_2710_p2;
reg   [31:0] temp_7_reg_3958;
wire   [31:0] temp_6_fu_2719_p2;
reg   [31:0] temp_6_reg_3964;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_1492_p1;
wire   [63:0] zext_ln12_3_fu_1526_p1;
wire   [63:0] zext_ln12_6_fu_1599_p1;
wire   [63:0] zext_ln12_8_fu_1635_p1;
wire   [63:0] zext_ln12_9_fu_1682_p1;
wire   [63:0] zext_ln12_10_fu_1711_p1;
wire   [63:0] zext_ln12_12_fu_1762_p1;
wire   [63:0] zext_ln12_13_fu_1784_p1;
wire   [63:0] zext_ln12_15_fu_1839_p1;
wire   [63:0] zext_ln12_17_fu_1875_p1;
wire   [63:0] zext_ln12_20_fu_1946_p1;
wire   [63:0] zext_ln12_23_fu_2030_p1;
wire   [63:0] zext_ln12_5_fu_2161_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_7_fu_2175_p1;
wire   [63:0] zext_ln12_11_fu_2201_p1;
wire   [63:0] zext_ln12_14_fu_2220_p1;
wire   [63:0] zext_ln12_18_fu_2239_p1;
wire   [63:0] zext_ln12_21_fu_2251_p1;
wire   [63:0] zext_ln12_22_fu_2256_p1;
wire   [63:0] zext_ln12_24_fu_2268_p1;
wire   [63:0] zext_ln12_29_fu_2303_p1;
wire   [63:0] zext_ln12_4_fu_2308_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_16_fu_2350_p1;
wire   [63:0] zext_ln12_19_fu_2355_p1;
wire   [63:0] zext_ln12_25_fu_2367_p1;
wire   [63:0] zext_ln12_26_fu_2372_p1;
wire   [63:0] zext_ln12_27_fu_2377_p1;
wire   [63:0] zext_ln12_28_fu_2382_p1;
reg   [63:0] c_fu_188;
wire   [63:0] add_ln8_fu_2108_p2;
wire    ap_loop_init;
reg    orig_0_ce1_local;
reg   [8:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [8:0] orig_0_address0_local;
reg    orig_8_ce1_local;
reg   [8:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [8:0] orig_8_address0_local;
reg    orig_1_ce1_local;
reg   [8:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [8:0] orig_1_address0_local;
reg    orig_9_ce1_local;
reg   [8:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [8:0] orig_9_address0_local;
reg    orig_2_ce1_local;
reg    orig_2_ce0_local;
reg   [8:0] orig_2_address0_local;
reg    orig_10_ce1_local;
reg    orig_10_ce0_local;
reg   [8:0] orig_10_address0_local;
reg    orig_3_ce1_local;
reg    orig_3_ce0_local;
reg   [8:0] orig_3_address0_local;
reg    orig_11_ce1_local;
reg    orig_11_ce0_local;
reg   [8:0] orig_11_address0_local;
reg    orig_4_ce1_local;
reg    orig_4_ce0_local;
reg   [8:0] orig_4_address0_local;
reg    orig_12_ce1_local;
reg    orig_12_ce0_local;
reg   [8:0] orig_12_address0_local;
reg    orig_5_ce1_local;
reg    orig_5_ce0_local;
reg   [8:0] orig_5_address0_local;
reg    orig_13_ce1_local;
reg    orig_13_ce0_local;
reg   [8:0] orig_13_address0_local;
reg    orig_6_ce1_local;
reg   [8:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [8:0] orig_6_address0_local;
reg    orig_14_ce1_local;
reg   [8:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [8:0] orig_14_address0_local;
reg    orig_7_ce1_local;
reg   [8:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [8:0] orig_7_address0_local;
reg    orig_15_ce1_local;
reg   [8:0] orig_15_address1_local;
reg    orig_15_ce0_local;
reg   [8:0] orig_15_address0_local;
reg    sol_9_we0_local;
reg    sol_9_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_8_we0_local;
reg    sol_8_ce0_local;
reg    sol_10_we0_local;
reg    sol_10_ce0_local;
reg    sol_11_we0_local;
reg    sol_11_ce0_local;
reg    sol_12_we0_local;
reg    sol_12_ce0_local;
reg    sol_13_we0_local;
reg    sol_13_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_15_we0_local;
reg    sol_15_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg    sol_14_we0_local;
reg    sol_14_ce0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg  signed [31:0] grp_fu_1216_p0;
reg  signed [31:0] grp_fu_1216_p1;
reg  signed [31:0] grp_fu_1220_p0;
reg  signed [31:0] grp_fu_1220_p1;
reg  signed [31:0] grp_fu_1224_p0;
reg  signed [31:0] grp_fu_1224_p1;
reg  signed [31:0] grp_fu_1228_p0;
reg  signed [31:0] grp_fu_1228_p1;
reg  signed [31:0] grp_fu_1232_p0;
reg  signed [31:0] grp_fu_1232_p1;
reg  signed [31:0] grp_fu_1236_p0;
reg  signed [31:0] grp_fu_1236_p1;
reg  signed [31:0] grp_fu_1240_p0;
reg  signed [31:0] grp_fu_1240_p1;
reg  signed [31:0] grp_fu_1244_p0;
reg  signed [31:0] grp_fu_1244_p1;
reg  signed [31:0] grp_fu_1248_p0;
reg  signed [31:0] grp_fu_1248_p1;
reg  signed [31:0] grp_fu_1252_p0;
reg  signed [31:0] grp_fu_1252_p1;
reg  signed [31:0] grp_fu_1256_p0;
reg  signed [31:0] grp_fu_1256_p1;
reg  signed [31:0] grp_fu_1260_p0;
reg  signed [31:0] grp_fu_1260_p1;
reg  signed [31:0] grp_fu_1264_p0;
reg  signed [31:0] grp_fu_1264_p1;
reg  signed [31:0] grp_fu_1268_p0;
reg  signed [31:0] grp_fu_1268_p1;
reg  signed [31:0] grp_fu_1272_p0;
reg  signed [31:0] grp_fu_1272_p1;
reg  signed [31:0] grp_fu_1276_p0;
reg  signed [31:0] grp_fu_1276_p1;
reg  signed [31:0] grp_fu_1280_p0;
reg  signed [31:0] grp_fu_1280_p1;
reg  signed [31:0] grp_fu_1284_p0;
reg  signed [31:0] grp_fu_1284_p1;
reg  signed [31:0] grp_fu_1288_p0;
reg  signed [31:0] grp_fu_1288_p1;
reg  signed [31:0] grp_fu_1292_p0;
reg  signed [31:0] grp_fu_1292_p1;
reg  signed [31:0] grp_fu_1296_p0;
reg  signed [31:0] grp_fu_1296_p1;
reg  signed [31:0] grp_fu_1300_p0;
reg  signed [31:0] grp_fu_1300_p1;
reg  signed [31:0] grp_fu_1304_p0;
reg  signed [31:0] grp_fu_1304_p1;
reg  signed [31:0] grp_fu_1308_p0;
reg  signed [31:0] grp_fu_1308_p1;
wire   [12:0] trunc_ln8_1_fu_1446_p1;
wire   [8:0] trunc_ln_fu_1455_p4;
wire   [8:0] add_ln12_fu_1465_p2;
wire   [3:0] trunc_ln8_fu_1442_p1;
wire   [12:0] empty_11_fu_1450_p2;
wire   [8:0] lshr_ln12_1_fu_1482_p4;
wire   [8:0] add_ln5_fu_1505_p2;
wire   [12:0] empty_12_fu_1500_p2;
wire   [8:0] lshr_ln12_2_fu_1516_p4;
wire   [8:0] add_ln5_2_fu_1539_p2;
wire   [12:0] empty_13_fu_1534_p2;
wire   [11:0] tmp_4_fu_1566_p4;
wire   [12:0] or_ln8_fu_1576_p3;
wire   [12:0] empty_14_fu_1584_p2;
wire   [8:0] lshr_ln12_4_fu_1589_p4;
wire   [12:0] empty_15_fu_1605_p2;
wire   [12:0] empty_16_fu_1620_p2;
wire   [8:0] lshr_ln12_6_fu_1625_p4;
wire   [10:0] tmp_5_fu_1641_p4;
wire   [12:0] or_ln8_1_fu_1651_p3;
wire   [12:0] tmp_7_fu_1659_p3;
wire   [12:0] add_ln12_1_fu_1666_p2;
wire   [8:0] lshr_ln12_7_fu_1672_p4;
wire   [12:0] tmp_8_fu_1688_p3;
wire   [12:0] add_ln12_2_fu_1695_p2;
wire   [8:0] lshr_ln12_8_fu_1701_p4;
wire   [12:0] empty_17_fu_1717_p2;
wire   [12:0] add_ln12_3_fu_1722_p2;
wire   [12:0] or_ln8_2_fu_1738_p3;
wire   [12:0] add_ln12_4_fu_1746_p2;
wire   [8:0] lshr_ln12_s_fu_1752_p4;
wire   [12:0] add_ln12_5_fu_1768_p2;
wire   [8:0] lshr_ln12_10_fu_1774_p4;
wire   [12:0] add_ln12_6_fu_1790_p2;
wire   [9:0] tmp_s_fu_1806_p4;
wire   [12:0] or_ln8_3_fu_1816_p3;
wire   [12:0] empty_18_fu_1824_p2;
wire   [8:0] lshr_ln12_12_fu_1829_p4;
wire   [12:0] empty_19_fu_1845_p2;
wire   [12:0] empty_20_fu_1860_p2;
wire   [8:0] lshr_ln12_14_fu_1865_p4;
wire   [0:0] tmp_9_fu_1881_p3;
wire   [12:0] or_ln8_4_fu_1889_p5;
wire   [12:0] empty_21_fu_1901_p2;
wire   [12:0] empty_22_fu_1916_p2;
wire   [12:0] empty_23_fu_1931_p2;
wire   [8:0] lshr_ln12_17_fu_1936_p4;
wire   [60:0] tmp_10_fu_1952_p4;
wire   [63:0] or_ln8_5_fu_1962_p3;
wire   [12:0] empty_24_fu_1984_p2;
wire   [12:0] add_ln12_7_fu_1999_p2;
wire   [12:0] empty_25_fu_2015_p2;
wire   [8:0] lshr_ln12_20_fu_2020_p4;
wire   [12:0] add_ln12_8_fu_2036_p2;
wire   [12:0] or_ln8_6_fu_2052_p3;
wire   [12:0] add_ln12_10_fu_2060_p2;
wire   [12:0] add_ln12_11_fu_2076_p2;
wire   [12:0] add_ln12_12_fu_2092_p2;
wire   [12:0] empty_26_fu_2273_p2;
wire   [12:0] add_ln12_9_fu_2287_p2;
wire   [31:0] add_ln13_12_fu_2401_p2;
wire   [31:0] add_ln13_4_fu_2418_p2;
wire   [31:0] add_ln13_11_fu_2440_p2;
wire   [31:0] add_ln13_20_fu_2456_p2;
wire   [31:0] add_ln13_28_fu_2468_p2;
wire   [31:0] add_ln13_36_fu_2479_p2;
wire   [31:0] add_ln13_44_fu_2490_p2;
wire   [31:0] add_ln13_60_fu_2501_p2;
wire   [31:0] add_ln13_3_fu_2517_p2;
wire   [31:0] add_ln13_10_fu_2526_p2;
wire   [31:0] add_ln13_19_fu_2541_p2;
wire   [31:0] add_ln13_27_fu_2562_p2;
wire   [31:0] add_ln13_35_fu_2583_p2;
wire   [31:0] add_ln13_43_fu_2603_p2;
wire   [31:0] add_ln13_52_fu_2622_p2;
wire   [31:0] add_ln13_59_fu_2643_p2;
wire   [31:0] add_ln13_2_fu_2652_p2;
wire   [31:0] add_ln13_18_fu_2661_p2;
wire   [31:0] add_ln13_26_fu_2670_p2;
wire   [31:0] add_ln13_34_fu_2679_p2;
wire   [31:0] add_ln13_42_fu_2688_p2;
wire   [31:0] add_ln13_51_fu_2697_p2;
wire   [31:0] add_ln13_58_fu_2706_p2;
wire   [31:0] add_ln13_50_fu_2715_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_188 = 64'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1216_p0),.din1(grp_fu_1216_p1),.ce(1'b1),.dout(grp_fu_1216_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1220_p0),.din1(grp_fu_1220_p1),.ce(1'b1),.dout(grp_fu_1220_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1224_p0),.din1(grp_fu_1224_p1),.ce(1'b1),.dout(grp_fu_1224_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1228_p0),.din1(grp_fu_1228_p1),.ce(1'b1),.dout(grp_fu_1228_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1232_p0),.din1(grp_fu_1232_p1),.ce(1'b1),.dout(grp_fu_1232_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1236_p0),.din1(grp_fu_1236_p1),.ce(1'b1),.dout(grp_fu_1236_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1240_p0),.din1(grp_fu_1240_p1),.ce(1'b1),.dout(grp_fu_1240_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1244_p0),.din1(grp_fu_1244_p1),.ce(1'b1),.dout(grp_fu_1244_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1248_p0),.din1(grp_fu_1248_p1),.ce(1'b1),.dout(grp_fu_1248_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1252_p0),.din1(grp_fu_1252_p1),.ce(1'b1),.dout(grp_fu_1252_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1256_p0),.din1(grp_fu_1256_p1),.ce(1'b1),.dout(grp_fu_1256_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1260_p0),.din1(grp_fu_1260_p1),.ce(1'b1),.dout(grp_fu_1260_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1264_p0),.din1(grp_fu_1264_p1),.ce(1'b1),.dout(grp_fu_1264_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1268_p0),.din1(grp_fu_1268_p1),.ce(1'b1),.dout(grp_fu_1268_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1272_p0),.din1(grp_fu_1272_p1),.ce(1'b1),.dout(grp_fu_1272_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1276_p0),.din1(grp_fu_1276_p1),.ce(1'b1),.dout(grp_fu_1276_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1280_p0),.din1(grp_fu_1280_p1),.ce(1'b1),.dout(grp_fu_1280_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1284_p0),.din1(grp_fu_1284_p1),.ce(1'b1),.dout(grp_fu_1284_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1288_p0),.din1(grp_fu_1288_p1),.ce(1'b1),.dout(grp_fu_1288_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1292_p0),.din1(grp_fu_1292_p1),.ce(1'b1),.dout(grp_fu_1292_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1296_p0),.din1(grp_fu_1296_p1),.ce(1'b1),.dout(grp_fu_1296_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1300_p0),.din1(grp_fu_1300_p1),.ce(1'b1),.dout(grp_fu_1300_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1304_p0),.din1(grp_fu_1304_p1),.ce(1'b1),.dout(grp_fu_1304_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1308_p0),.din1(grp_fu_1308_p1),.ce(1'b1),.dout(grp_fu_1308_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_188 <= 64'd0;
    end else if (((icmp_ln8_fu_1978_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c_fu_188 <= add_ln8_fu_2108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_13_reg_3682 <= add_ln13_13_fu_2407_p2;
        add_ln13_54_reg_3953 <= add_ln13_54_fu_2701_p2;
        lshr_ln12_22_reg_3402 <= {{empty_26_fu_2273_p2[12:4]}};
        lshr_ln12_23_reg_3407 <= {{add_ln12_9_fu_2287_p2[12:4]}};
        select_ln12_11_reg_3264 <= select_ln12_11_fu_2180_p3;
        select_ln12_12_reg_3271 <= select_ln12_12_fu_2187_p3;
        select_ln12_13_reg_3278 <= select_ln12_13_fu_2194_p3;
        select_ln12_15_reg_3295 <= select_ln12_15_fu_2206_p3;
        select_ln12_16_reg_3302 <= select_ln12_16_fu_2213_p3;
        select_ln12_18_reg_3319 <= select_ln12_18_fu_2225_p3;
        select_ln12_1_reg_3196 <= select_ln12_1_fu_2126_p3;
        select_ln12_20_reg_3325 <= select_ln12_20_fu_2232_p3;
        select_ln12_23_reg_3341 <= select_ln12_23_fu_2244_p3;
        select_ln12_28_reg_3386 <= select_ln12_28_fu_2261_p3;
        select_ln12_2_reg_3202 <= select_ln12_2_fu_2133_p3;
        select_ln12_3_reg_3209 <= select_ln12_3_fu_2140_p3;
        select_ln12_4_reg_3214 <= select_ln12_4_fu_2147_p3;
        select_ln12_5_reg_3220 <= select_ln12_5_fu_2154_p3;
        select_ln12_9_reg_3247 <= select_ln12_9_fu_2168_p3;
        select_ln12_reg_3191 <= select_ln12_fu_2119_p3;
        temp_2_reg_3929 <= temp_2_fu_2665_p2;
        temp_3_reg_3935 <= temp_3_fu_2674_p2;
        temp_4_reg_3941 <= temp_4_fu_2683_p2;
        temp_5_reg_3947 <= temp_5_fu_2692_p2;
        temp_7_reg_3958 <= temp_7_fu_2710_p2;
        temp_reg_3923 <= temp_fu_2656_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_14_reg_3767 <= add_ln13_14_fu_2446_p2;
        add_ln13_16_reg_3772 <= add_ln13_16_fu_2451_p2;
        add_ln13_1_reg_3747 <= add_ln13_1_fu_2413_p2;
        add_ln13_21_reg_3777 <= add_ln13_21_fu_2462_p2;
        add_ln13_29_reg_3782 <= add_ln13_29_fu_2473_p2;
        add_ln13_37_reg_3787 <= add_ln13_37_fu_2484_p2;
        add_ln13_45_reg_3797 <= add_ln13_45_fu_2495_p2;
        add_ln13_5_reg_3752 <= add_ln13_5_fu_2424_p2;
        add_ln13_61_reg_3817 <= add_ln13_61_fu_2507_p2;
        add_ln13_8_reg_3757 <= add_ln13_8_fu_2430_p2;
        add_ln13_9_reg_3762 <= add_ln13_9_fu_2435_p2;
        select_ln12_10_reg_3445 <= select_ln12_10_fu_2329_p3;
        select_ln12_14_reg_3452 <= select_ln12_14_fu_2336_p3;
        select_ln12_17_reg_3459 <= select_ln12_17_fu_2343_p3;
        select_ln12_29_reg_3513 <= select_ln12_29_fu_2360_p3;
        select_ln12_7_reg_3432 <= select_ln12_7_fu_2315_p3;
        select_ln12_8_reg_3438 <= select_ln12_8_fu_2322_p3;
        temp_6_reg_3964 <= temp_6_fu_2719_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_17_reg_3838 <= add_ln13_17_fu_2535_p2;
        add_ln13_22_reg_3843 <= add_ln13_22_fu_2545_p2;
        add_ln13_24_reg_3848 <= add_ln13_24_fu_2550_p2;
        add_ln13_25_reg_3853 <= add_ln13_25_fu_2556_p2;
        add_ln13_30_reg_3858 <= add_ln13_30_fu_2566_p2;
        add_ln13_32_reg_3863 <= add_ln13_32_fu_2571_p2;
        add_ln13_33_reg_3868 <= add_ln13_33_fu_2577_p2;
        add_ln13_38_reg_3873 <= add_ln13_38_fu_2587_p2;
        add_ln13_40_reg_3878 <= add_ln13_40_fu_2592_p2;
        add_ln13_41_reg_3883 <= add_ln13_41_fu_2598_p2;
        add_ln13_46_reg_3888 <= add_ln13_46_fu_2607_p2;
        add_ln13_48_reg_3893 <= add_ln13_48_fu_2612_p2;
        add_ln13_49_reg_3898 <= add_ln13_49_fu_2617_p2;
        add_ln13_53_reg_3903 <= add_ln13_53_fu_2627_p2;
        add_ln13_56_reg_3908 <= add_ln13_56_fu_2632_p2;
        add_ln13_57_reg_3913 <= add_ln13_57_fu_2638_p2;
        add_ln13_62_reg_3918 <= add_ln13_62_fu_2647_p2;
        add_ln13_6_reg_3827 <= add_ln13_6_fu_2521_p2;
        add_ln13_reg_3822 <= add_ln13_fu_2512_p2;
        add_ln5_1_reg_3008 <= add_ln5_1_fu_1545_p2;
        icmp_ln12_reg_2918 <= icmp_ln12_fu_1476_p2;
        icmp_ln16_reg_3018 <= icmp_ln16_fu_1560_p2;
        icmp_ln16_reg_3018_pp0_iter1_reg <= icmp_ln16_reg_3018;
        icmp_ln16_reg_3018_pp0_iter2_reg <= icmp_ln16_reg_3018_pp0_iter1_reg;
        icmp_ln8_reg_3147 <= icmp_ln8_fu_1978_p2;
        icmp_ln8_reg_3147_pp0_iter1_reg <= icmp_ln8_reg_3147;
        icmp_ln8_reg_3147_pp0_iter2_reg <= icmp_ln8_reg_3147_pp0_iter1_reg;
        lshr_ln12_11_reg_3092 <= {{add_ln12_6_fu_1790_p2[12:4]}};
        lshr_ln12_13_reg_3107 <= {{empty_19_fu_1845_p2[12:4]}};
        lshr_ln12_15_reg_3122 <= {{empty_21_fu_1901_p2[12:4]}};
        lshr_ln12_16_reg_3127 <= {{empty_22_fu_1916_p2[12:4]}};
        lshr_ln12_18_reg_3151 <= {{empty_24_fu_1984_p2[12:4]}};
        lshr_ln12_19_reg_3156 <= {{add_ln12_7_fu_1999_p2[12:4]}};
        lshr_ln12_21_reg_3171 <= {{add_ln12_8_fu_2036_p2[12:4]}};
        lshr_ln12_24_reg_3176 <= {{add_ln12_10_fu_2060_p2[12:4]}};
        lshr_ln12_25_reg_3181 <= {{add_ln12_11_fu_2076_p2[12:4]}};
        lshr_ln12_26_reg_3186 <= {{add_ln12_12_fu_2092_p2[12:4]}};
        lshr_ln12_3_reg_3013 <= {{empty_13_fu_1534_p2[12:4]}};
        lshr_ln12_5_reg_3032 <= {{empty_15_fu_1605_p2[12:4]}};
        lshr_ln12_9_reg_3067 <= {{add_ln12_3_fu_1722_p2[12:4]}};
        or_ln8_7_reg_3142[12 : 3] <= or_ln8_7_fu_1970_p3[12 : 3];
        select_ln12_33_reg_3652 <= select_ln12_33_fu_2394_p3;
        select_ln12_6_reg_3574 <= select_ln12_6_fu_2387_p3;
        temp_1_reg_3832 <= temp_1_fu_2530_p2;
        zext_ln12_2_reg_2972[8 : 0] <= zext_ln12_2_fu_1510_p1[8 : 0];
        zext_ln12_reg_2886[8 : 0] <= zext_ln12_fu_1470_p1[8 : 0];
        zext_ln12_reg_2886_pp0_iter1_reg[8 : 0] <= zext_ln12_reg_2886[8 : 0];
        zext_ln12_reg_2886_pp0_iter2_reg[8 : 0] <= zext_ln12_reg_2886_pp0_iter1_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_14_reg_3677 <= grp_fu_1240_p2;
        mul_ln13_19_reg_3687 <= grp_fu_1252_p2;
        mul_ln13_1_reg_3662 <= grp_fu_1216_p2;
        mul_ln13_30_reg_3692 <= grp_fu_1264_p2;
        mul_ln13_34_reg_3697 <= grp_fu_1268_p2;
        mul_ln13_41_reg_3702 <= grp_fu_1272_p2;
        mul_ln13_50_reg_3707 <= grp_fu_1276_p2;
        mul_ln13_54_reg_3712 <= grp_fu_1280_p2;
        mul_ln13_56_reg_3717 <= grp_fu_1284_p2;
        mul_ln13_58_reg_3722 <= grp_fu_1288_p2;
        mul_ln13_61_reg_3727 <= grp_fu_1292_p2;
        mul_ln13_65_reg_3732 <= grp_fu_1296_p2;
        mul_ln13_67_reg_3737 <= grp_fu_1304_p2;
        mul_ln13_69_reg_3742 <= grp_fu_1308_p2;
        mul_ln13_8_reg_3667 <= grp_fu_1228_p2;
        mul_ln13_9_reg_3672 <= grp_fu_1232_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_22_reg_3589 <= grp_fu_1256_p2;
        mul_ln13_25_reg_3594 <= grp_fu_1260_p2;
        mul_ln13_2_reg_3579 <= grp_fu_1220_p2;
        mul_ln13_31_reg_3599 <= grp_fu_1268_p2;
        mul_ln13_40_reg_3610 <= grp_fu_1284_p2;
        mul_ln13_43_reg_3615 <= grp_fu_1288_p2;
        mul_ln13_49_reg_3625 <= grp_fu_1300_p2;
        mul_ln13_4_reg_3584 <= grp_fu_1224_p2;
        mul_ln13_52_reg_3630 <= grp_fu_1304_p2;
        select_ln12_19_reg_3604 <= grp_fu_1319_p3;
        select_ln12_22_reg_3620 <= grp_fu_1312_p3;
        select_ln12_30_reg_3635 <= grp_fu_1340_p3;
        select_ln12_31_reg_3640 <= grp_fu_1326_p3;
        select_ln12_32_reg_3646 <= grp_fu_1333_p3;
        select_ln12_34_reg_3657 <= grp_fu_1347_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_51_reg_3792 <= grp_fu_1268_p2;
        mul_ln13_59_reg_3802 <= grp_fu_1284_p2;
        mul_ln13_60_reg_3807 <= grp_fu_1288_p2;
        mul_ln13_68_reg_3812 <= grp_fu_1304_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1354 <= grp_fu_1216_p2;
        reg_1358 <= grp_fu_1228_p2;
        reg_1362 <= grp_fu_1232_p2;
        reg_1370 <= grp_fu_1240_p2;
        reg_1382 <= grp_fu_1252_p2;
        reg_1386 <= grp_fu_1264_p2;
        reg_1390 <= grp_fu_1272_p2;
        reg_1394 <= grp_fu_1276_p2;
        reg_1398 <= grp_fu_1280_p2;
        reg_1402 <= grp_fu_1292_p2;
        reg_1406 <= grp_fu_1296_p2;
        reg_1410 <= grp_fu_1308_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1366 <= grp_fu_1236_p2;
        reg_1374 <= grp_fu_1244_p2;
        reg_1378 <= grp_fu_1248_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1414 <= grp_fu_1220_p2;
        reg_1418 <= grp_fu_1224_p2;
        reg_1422 <= grp_fu_1256_p2;
        reg_1426 <= grp_fu_1260_p2;
        reg_1430 <= grp_fu_1300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln12_21_reg_3476 <= grp_fu_1312_p3;
        select_ln12_24_reg_3491 <= grp_fu_1319_p3;
        select_ln12_25_reg_3496 <= grp_fu_1326_p3;
        select_ln12_26_reg_3502 <= grp_fu_1333_p3;
        select_ln12_27_reg_3508 <= grp_fu_1340_p3;
        select_ln12_35_reg_3569 <= grp_fu_1347_p3;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3147 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3147_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1216_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1216_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1216_p0 = filter_load_2;
        end else begin
            grp_fu_1216_p0 = 'bx;
        end
    end else begin
        grp_fu_1216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1216_p1 = select_ln12_6_reg_3574;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1216_p1 = select_ln12_5_reg_3220;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1216_p1 = select_ln12_2_reg_3202;
        end else begin
            grp_fu_1216_p1 = 'bx;
        end
    end else begin
        grp_fu_1216_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1220_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1220_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1220_p0 = filter_load_1;
        end else begin
            grp_fu_1220_p0 = 'bx;
        end
    end else begin
        grp_fu_1220_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1220_p1 = select_ln12_10_reg_3445;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1220_p1 = select_ln12_8_reg_3438;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1220_p1 = select_ln12_1_reg_3196;
        end else begin
            grp_fu_1220_p1 = 'bx;
        end
    end else begin
        grp_fu_1220_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1224_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1224_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1224_p0 = filter_load;
        end else begin
            grp_fu_1224_p0 = 'bx;
        end
    end else begin
        grp_fu_1224_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1224_p1 = select_ln12_11_reg_3264;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1224_p1 = select_ln12_4_reg_3214;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1224_p1 = select_ln12_reg_3191;
        end else begin
            grp_fu_1224_p1 = 'bx;
        end
    end else begin
        grp_fu_1224_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1228_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1228_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1228_p0 = filter_load_3;
        end else begin
            grp_fu_1228_p0 = 'bx;
        end
    end else begin
        grp_fu_1228_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1228_p1 = select_ln12_15_reg_3295;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1228_p1 = select_ln12_7_reg_3432;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1228_p1 = select_ln12_3_reg_3209;
        end else begin
            grp_fu_1228_p1 = 'bx;
        end
    end else begin
        grp_fu_1228_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1232_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1232_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1232_p0 = filter_load_1;
        end else begin
            grp_fu_1232_p0 = 'bx;
        end
    end else begin
        grp_fu_1232_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1232_p1 = select_ln12_16_reg_3302;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1232_p1 = select_ln12_9_reg_3247;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1232_p1 = select_ln12_2_reg_3202;
        end else begin
            grp_fu_1232_p1 = 'bx;
        end
    end else begin
        grp_fu_1232_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1236_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1236_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1236_p0 = filter_load_8;
        end else begin
            grp_fu_1236_p0 = 'bx;
        end
    end else begin
        grp_fu_1236_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1236_p1 = select_ln12_13_reg_3278;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1236_p1 = select_ln12_10_reg_3445;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1236_p1 = select_ln12_11_reg_3264;
        end else begin
            grp_fu_1236_p1 = 'bx;
        end
    end else begin
        grp_fu_1236_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1240_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1240_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1240_p0 = filter_load;
        end else begin
            grp_fu_1240_p0 = 'bx;
        end
    end else begin
        grp_fu_1240_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1240_p1 = select_ln12_14_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1240_p1 = select_ln12_7_reg_3432;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1240_p1 = select_ln12_1_reg_3196;
        end else begin
            grp_fu_1240_p1 = 'bx;
        end
    end else begin
        grp_fu_1240_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1244_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1244_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1244_p0 = filter_load_4;
        end else begin
            grp_fu_1244_p0 = 'bx;
        end
    end else begin
        grp_fu_1244_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1244_p1 = select_ln12_18_reg_3319;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1244_p1 = select_ln12_8_reg_3438;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1244_p1 = select_ln12_5_reg_3220;
        end else begin
            grp_fu_1244_p1 = 'bx;
        end
    end else begin
        grp_fu_1244_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1248_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1248_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1248_p0 = filter_load_3;
        end else begin
            grp_fu_1248_p0 = 'bx;
        end
    end else begin
        grp_fu_1248_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1248_p1 = select_ln12_19_reg_3604;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1248_p1 = select_ln12_12_reg_3271;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1248_p1 = select_ln12_4_reg_3214;
        end else begin
            grp_fu_1248_p1 = 'bx;
        end
    end else begin
        grp_fu_1248_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1252_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1252_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1252_p0 = filter_load_1;
        end else begin
            grp_fu_1252_p0 = 'bx;
        end
    end else begin
        grp_fu_1252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1252_p1 = select_ln12_16_reg_3302;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1252_p1 = select_ln12_13_reg_3278;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1252_p1 = select_ln12_9_reg_3247;
        end else begin
            grp_fu_1252_p1 = 'bx;
        end
    end else begin
        grp_fu_1252_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1256_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1256_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1256_p0 = filter_load;
        end else begin
            grp_fu_1256_p0 = 'bx;
        end
    end else begin
        grp_fu_1256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1256_p1 = select_ln12_17_reg_3459;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1256_p1 = select_ln12_14_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1256_p1 = select_ln12_2_reg_3202;
        end else begin
            grp_fu_1256_p1 = 'bx;
        end
    end else begin
        grp_fu_1256_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1260_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1260_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1260_p0 = filter_load_3;
        end else begin
            grp_fu_1260_p0 = 'bx;
        end
    end else begin
        grp_fu_1260_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1260_p1 = select_ln12_21_reg_3476;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1260_p1 = select_ln12_8_reg_3438;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1260_p1 = select_ln12_5_reg_3220;
        end else begin
            grp_fu_1260_p1 = 'bx;
        end
    end else begin
        grp_fu_1260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1264_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1264_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1264_p0 = filter_load_1;
        end else begin
            grp_fu_1264_p0 = 'bx;
        end
    end else begin
        grp_fu_1264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1264_p1 = select_ln12_22_reg_3620;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1264_p1 = select_ln12_17_reg_3459;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1264_p1 = select_ln12_12_reg_3271;
        end else begin
            grp_fu_1264_p1 = 'bx;
        end
    end else begin
        grp_fu_1264_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1268_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1268_p0 = filter_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1268_p0 = filter_load;
        end else begin
            grp_fu_1268_p0 = 'bx;
        end
    end else begin
        grp_fu_1268_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1268_p1 = select_ln12_19_reg_3604;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1268_p1 = select_ln12_10_reg_3445;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1268_p1 = select_ln12_9_reg_3247;
        end else begin
            grp_fu_1268_p1 = 'bx;
        end
    end else begin
        grp_fu_1268_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1272_p0 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1272_p0 = filter_load_6;
    end else begin
        grp_fu_1272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1272_p1 = select_ln12_20_reg_3325;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1272_p1 = select_ln12_14_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1272_p1 = select_ln12_11_reg_3264;
        end else begin
            grp_fu_1272_p1 = 'bx;
        end
    end else begin
        grp_fu_1272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1276_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1276_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1276_p0 = filter_load_1;
        end else begin
            grp_fu_1276_p0 = 'bx;
        end
    end else begin
        grp_fu_1276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1276_p1 = select_ln12_29_reg_3513;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1276_p1 = select_ln12_17_reg_3459;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1276_p1 = select_ln12_15_reg_3295;
        end else begin
            grp_fu_1276_p1 = 'bx;
        end
    end else begin
        grp_fu_1276_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1280_p0 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1280_p0 = filter_load_8;
    end else begin
        grp_fu_1280_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1280_p1 = select_ln12_32_reg_3646;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1280_p1 = select_ln12_26_reg_3502;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1280_p1 = select_ln12_20_reg_3325;
        end else begin
            grp_fu_1280_p1 = 'bx;
        end
    end else begin
        grp_fu_1280_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1284_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1284_p0 = filter_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1284_p0 = filter_load;
        end else begin
            grp_fu_1284_p0 = 'bx;
        end
    end else begin
        grp_fu_1284_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1284_p1 = select_ln12_30_reg_3635;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1284_p1 = select_ln12_25_reg_3496;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1284_p1 = select_ln12_12_reg_3271;
        end else begin
            grp_fu_1284_p1 = 'bx;
        end
    end else begin
        grp_fu_1284_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1288_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1288_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1288_p0 = filter_load_3;
        end else begin
            grp_fu_1288_p0 = 'bx;
        end
    end else begin
        grp_fu_1288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1288_p1 = select_ln12_28_reg_3386;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1288_p1 = select_ln12_24_reg_3491;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1288_p1 = select_ln12_13_reg_3278;
        end else begin
            grp_fu_1288_p1 = 'bx;
        end
    end else begin
        grp_fu_1288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1292_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1292_p0 = filter_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1292_p0 = filter_load_1;
        end else begin
            grp_fu_1292_p0 = 'bx;
        end
    end else begin
        grp_fu_1292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1292_p1 = select_ln12_31_reg_3640;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1292_p1 = select_ln12_27_reg_3508;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1292_p1 = select_ln12_18_reg_3319;
        end else begin
            grp_fu_1292_p1 = 'bx;
        end
    end else begin
        grp_fu_1292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1296_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1296_p0 = filter_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1296_p0 = filter_load_8;
        end else begin
            grp_fu_1296_p0 = 'bx;
        end
    end else begin
        grp_fu_1296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1296_p1 = select_ln12_33_reg_3652;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1296_p1 = select_ln12_26_reg_3502;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1296_p1 = select_ln12_23_reg_3341;
        end else begin
            grp_fu_1296_p1 = 'bx;
        end
    end else begin
        grp_fu_1296_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1300_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1300_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1300_p0 = filter_load;
        end else begin
            grp_fu_1300_p0 = 'bx;
        end
    end else begin
        grp_fu_1300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1300_p1 = select_ln12_34_reg_3657;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1300_p1 = select_ln12_35_reg_3569;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1300_p1 = select_ln12_15_reg_3295;
        end else begin
            grp_fu_1300_p1 = 'bx;
        end
    end else begin
        grp_fu_1300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1304_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1304_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1304_p0 = filter_load_3;
        end else begin
            grp_fu_1304_p0 = 'bx;
        end
    end else begin
        grp_fu_1304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1304_p1 = select_ln12_31_reg_3640;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1304_p1 = select_ln12_25_reg_3496;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1304_p1 = select_ln12_16_reg_3302;
        end else begin
            grp_fu_1304_p1 = 'bx;
        end
    end else begin
        grp_fu_1304_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1308_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1308_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1308_p0 = filter_load_3;
        end else begin
            grp_fu_1308_p0 = 'bx;
        end
    end else begin
        grp_fu_1308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1308_p1 = select_ln12_32_reg_3646;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1308_p1 = select_ln12_29_reg_3513;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1308_p1 = select_ln12_28_reg_3386;
        end else begin
            grp_fu_1308_p1 = 'bx;
        end
    end else begin
        grp_fu_1308_p1 = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_26_fu_2372_p1;
    end else if (((icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_4_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln12_22_fu_2256_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_2_fu_1510_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_24_fu_2268_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_fu_1470_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_10_address0_local = zext_ln12_5_fu_2161_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_10_address0_local = zext_ln12_3_fu_1526_p1;
        end else begin
            orig_10_address0_local = 'bx;
        end
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_11_address0_local = zext_ln12_7_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_11_address0_local = zext_ln12_8_fu_1635_p1;
        end else begin
            orig_11_address0_local = 'bx;
        end
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_12_address0_local = zext_ln12_11_fu_2201_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_12_address0_local = zext_ln12_10_fu_1711_p1;
        end else begin
            orig_12_address0_local = 'bx;
        end
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_13_address0_local = zext_ln12_14_fu_2220_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_13_address0_local = zext_ln12_13_fu_1784_p1;
        end else begin
            orig_13_address0_local = 'bx;
        end
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_4_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address0_local = zext_ln12_2_reg_2972;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_17_fu_1875_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address1_local = zext_ln12_16_fu_2350_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address1_local = zext_ln12_reg_2886;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address1_local = zext_ln12_15_fu_1839_p1;
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_25_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address0_local = zext_ln12_21_fu_2251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_23_fu_2030_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address1_local = zext_ln12_19_fu_2355_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address1_local = zext_ln12_18_fu_2239_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address1_local = zext_ln12_20_fu_1946_p1;
    end else begin
        orig_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_28_fu_2382_p1;
    end else if (((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_29_fu_2303_p1;
    end else if (((icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_5_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_3_fu_1526_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln12_27_fu_2377_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address1_local = zext_ln12_1_fu_1492_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln12_5_fu_2161_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln12_3_fu_1526_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address0_local = zext_ln12_7_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln12_8_fu_1635_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address0_local = zext_ln12_11_fu_2201_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address0_local = zext_ln12_10_fu_1711_p1;
        end else begin
            orig_4_address0_local = 'bx;
        end
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_5_address0_local = zext_ln12_14_fu_2220_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_5_address0_local = zext_ln12_13_fu_1784_p1;
        end else begin
            orig_5_address0_local = 'bx;
        end
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_4_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln12_2_reg_2972;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_17_fu_1875_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address1_local = zext_ln12_16_fu_2350_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln12_reg_2886;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address1_local = zext_ln12_15_fu_1839_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_25_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln12_21_fu_2251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_23_fu_2030_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address1_local = zext_ln12_19_fu_2355_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln12_18_fu_2239_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address1_local = zext_ln12_20_fu_1946_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_26_fu_2372_p1;
    end else if (((icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_4_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address0_local = zext_ln12_22_fu_2256_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_2_fu_1510_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_8_address1_local = zext_ln12_24_fu_2268_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_8_address1_local = zext_ln12_fu_1470_p1;
        end else begin
            orig_8_address1_local = 'bx;
        end
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_28_fu_2382_p1;
    end else if (((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address0_local = zext_ln12_29_fu_2303_p1;
    end else if (((icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address0_local = zext_ln12_5_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_3_fu_1526_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address1_local = zext_ln12_27_fu_2377_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address1_local = zext_ln12_1_fu_1492_p1;
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_3147 == 1'd1) & (icmp_ln12_reg_2918 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln12_reg_2918 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_ce0_local = 1'b1;
    end else begin
        sol_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_13_ce0_local = 1'b1;
    end else begin
        sol_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_15_ce0_local = 1'b1;
    end else begin
        sol_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3147_pp0_iter2_reg == 1'd1) & (icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_15_we0_local = 1'b1;
    end else begin
        sol_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3147_pp0_iter2_reg == 1'd1) & (icmp_ln16_reg_3018_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_ce0_local = 1'b1;
    end else begin
        sol_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_reg_3018_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_10_fu_2060_p2 = (or_ln8_6_fu_2052_p3 + tmp_7_fu_1659_p3);
assign add_ln12_11_fu_2076_p2 = (or_ln8_6_fu_2052_p3 + tmp_8_fu_1688_p3);
assign add_ln12_12_fu_2092_p2 = (or_ln8_6_fu_2052_p3 + empty_17_fu_1717_p2);
assign add_ln12_1_fu_1666_p2 = (or_ln8_1_fu_1651_p3 + tmp_7_fu_1659_p3);
assign add_ln12_2_fu_1695_p2 = (or_ln8_1_fu_1651_p3 + tmp_8_fu_1688_p3);
assign add_ln12_3_fu_1722_p2 = (or_ln8_1_fu_1651_p3 + empty_17_fu_1717_p2);
assign add_ln12_4_fu_1746_p2 = (or_ln8_2_fu_1738_p3 + tmp_7_fu_1659_p3);
assign add_ln12_5_fu_1768_p2 = (or_ln8_2_fu_1738_p3 + tmp_8_fu_1688_p3);
assign add_ln12_6_fu_1790_p2 = (or_ln8_2_fu_1738_p3 + empty_17_fu_1717_p2);
assign add_ln12_7_fu_1999_p2 = (empty_24_fu_1984_p2 + 13'd2);
assign add_ln12_8_fu_2036_p2 = (empty_25_fu_2015_p2 + 13'd2);
assign add_ln12_9_fu_2287_p2 = (empty_26_fu_2273_p2 + 13'd2);
assign add_ln12_fu_1465_p2 = (trunc_ln_fu_1455_p4 + tmp_2);
assign add_ln13_10_fu_2526_p2 = (add_ln13_9_reg_3762 + add_ln13_8_reg_3757);
assign add_ln13_11_fu_2440_p2 = (reg_1370 + reg_1362);
assign add_ln13_12_fu_2401_p2 = (reg_1378 + reg_1366);
assign add_ln13_13_fu_2407_p2 = (add_ln13_12_fu_2401_p2 + reg_1374);
assign add_ln13_14_fu_2446_p2 = (add_ln13_13_reg_3682 + add_ln13_11_fu_2440_p2);
assign add_ln13_16_fu_2451_p2 = (reg_1378 + mul_ln13_19_reg_3687);
assign add_ln13_17_fu_2535_p2 = (reg_1418 + reg_1414);
assign add_ln13_18_fu_2661_p2 = (add_ln13_17_reg_3838 + add_ln13_16_reg_3772);
assign add_ln13_19_fu_2541_p2 = (mul_ln13_22_reg_3589 + mul_ln13_25_reg_3594);
assign add_ln13_1_fu_2413_p2 = (mul_ln13_1_reg_3662 + reg_1418);
assign add_ln13_20_fu_2456_p2 = (reg_1426 + reg_1422);
assign add_ln13_21_fu_2462_p2 = (add_ln13_20_fu_2456_p2 + reg_1382);
assign add_ln13_22_fu_2545_p2 = (add_ln13_21_reg_3777 + add_ln13_19_fu_2541_p2);
assign add_ln13_24_fu_2550_p2 = (reg_1358 + reg_1362);
assign add_ln13_25_fu_2556_p2 = (reg_1370 + reg_1366);
assign add_ln13_26_fu_2670_p2 = (add_ln13_25_reg_3853 + add_ln13_24_reg_3848);
assign add_ln13_27_fu_2562_p2 = (mul_ln13_31_reg_3599 + mul_ln13_34_reg_3697);
assign add_ln13_28_fu_2468_p2 = (reg_1390 + mul_ln13_30_reg_3692);
assign add_ln13_29_fu_2473_p2 = (add_ln13_28_fu_2468_p2 + reg_1386);
assign add_ln13_2_fu_2652_p2 = (add_ln13_1_reg_3747 + add_ln13_reg_3822);
assign add_ln13_30_fu_2566_p2 = (add_ln13_29_reg_3782 + add_ln13_27_fu_2562_p2);
assign add_ln13_32_fu_2571_p2 = (reg_1374 + reg_1378);
assign add_ln13_33_fu_2577_p2 = (reg_1422 + reg_1382);
assign add_ln13_34_fu_2679_p2 = (add_ln13_33_reg_3868 + add_ln13_32_reg_3863);
assign add_ln13_35_fu_2583_p2 = (mul_ln13_40_reg_3610 + mul_ln13_43_reg_3615);
assign add_ln13_36_fu_2479_p2 = (mul_ln13_41_reg_3702 + reg_1398);
assign add_ln13_37_fu_2484_p2 = (add_ln13_36_fu_2479_p2 + reg_1394);
assign add_ln13_38_fu_2587_p2 = (add_ln13_37_reg_3787 + add_ln13_35_fu_2583_p2);
assign add_ln13_3_fu_2517_p2 = (mul_ln13_4_reg_3584 + mul_ln13_2_reg_3579);
assign add_ln13_40_fu_2592_p2 = (reg_1426 + reg_1386);
assign add_ln13_41_fu_2598_p2 = (reg_1390 + mul_ln13_51_reg_3792);
assign add_ln13_42_fu_2688_p2 = (add_ln13_41_reg_3883 + add_ln13_40_reg_3878);
assign add_ln13_43_fu_2603_p2 = (mul_ln13_49_reg_3625 + mul_ln13_52_reg_3630);
assign add_ln13_44_fu_2490_p2 = (mul_ln13_50_reg_3707 + reg_1406);
assign add_ln13_45_fu_2495_p2 = (add_ln13_44_fu_2490_p2 + reg_1402);
assign add_ln13_46_fu_2607_p2 = (add_ln13_45_reg_3797 + add_ln13_43_fu_2603_p2);
assign add_ln13_48_fu_2612_p2 = (mul_ln13_59_reg_3802 + reg_1402);
assign add_ln13_49_fu_2617_p2 = (reg_1394 + mul_ln13_60_reg_3807);
assign add_ln13_4_fu_2418_p2 = (reg_1354 + reg_1414);
assign add_ln13_50_fu_2715_p2 = (add_ln13_49_reg_3898 + add_ln13_48_reg_3893);
assign add_ln13_51_fu_2697_p2 = (mul_ln13_58_reg_3722 + mul_ln13_56_reg_3717);
assign add_ln13_52_fu_2622_p2 = (mul_ln13_54_reg_3712 + reg_1398);
assign add_ln13_53_fu_2627_p2 = (add_ln13_52_fu_2622_p2 + mul_ln13_61_reg_3727);
assign add_ln13_54_fu_2701_p2 = (add_ln13_53_reg_3903 + add_ln13_51_fu_2697_p2);
assign add_ln13_56_fu_2632_p2 = (reg_1406 + reg_1430);
assign add_ln13_57_fu_2638_p2 = (reg_1410 + mul_ln13_68_reg_3812);
assign add_ln13_58_fu_2706_p2 = (add_ln13_57_reg_3913 + add_ln13_56_reg_3908);
assign add_ln13_59_fu_2643_p2 = (mul_ln13_67_reg_3737 + mul_ln13_65_reg_3732);
assign add_ln13_5_fu_2424_p2 = (add_ln13_4_fu_2418_p2 + reg_1358);
assign add_ln13_60_fu_2501_p2 = (reg_1410 + reg_1430);
assign add_ln13_61_fu_2507_p2 = (add_ln13_60_fu_2501_p2 + mul_ln13_69_reg_3742);
assign add_ln13_62_fu_2647_p2 = (add_ln13_61_reg_3817 + add_ln13_59_fu_2643_p2);
assign add_ln13_6_fu_2521_p2 = (add_ln13_5_reg_3752 + add_ln13_3_fu_2517_p2);
assign add_ln13_8_fu_2430_p2 = (mul_ln13_9_reg_3672 + reg_1366);
assign add_ln13_9_fu_2435_p2 = (reg_1374 + mul_ln13_14_reg_3677);
assign add_ln13_fu_2512_p2 = (reg_1354 + mul_ln13_8_reg_3667);
assign add_ln5_1_fu_1545_p2 = (add_ln5_2_fu_1539_p2 + tmp_2);
assign add_ln5_2_fu_1539_p2 = (trunc_ln_fu_1455_p4 + 9'd8);
assign add_ln5_fu_1505_p2 = (trunc_ln_fu_1455_p4 + tmp_3);
assign add_ln8_fu_2108_p2 = (c_fu_188 + 64'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_11_fu_1450_p2 = (trunc_ln8_1_fu_1446_p1 + tmp);
assign empty_12_fu_1500_p2 = (trunc_ln8_1_fu_1446_p1 + tmp_1);
assign empty_13_fu_1534_p2 = (trunc_ln8_1_fu_1446_p1 + empty);
assign empty_14_fu_1584_p2 = (or_ln8_fu_1576_p3 + tmp);
assign empty_15_fu_1605_p2 = (or_ln8_fu_1576_p3 + tmp_1);
assign empty_16_fu_1620_p2 = (or_ln8_fu_1576_p3 + empty);
assign empty_17_fu_1717_p2 = (tmp + 13'd130);
assign empty_18_fu_1824_p2 = (or_ln8_3_fu_1816_p3 + tmp);
assign empty_19_fu_1845_p2 = (or_ln8_3_fu_1816_p3 + tmp_1);
assign empty_20_fu_1860_p2 = (or_ln8_3_fu_1816_p3 + empty);
assign empty_21_fu_1901_p2 = (or_ln8_4_fu_1889_p5 + tmp);
assign empty_22_fu_1916_p2 = (or_ln8_4_fu_1889_p5 + tmp_1);
assign empty_23_fu_1931_p2 = (or_ln8_4_fu_1889_p5 + empty);
assign empty_24_fu_1984_p2 = (or_ln8_7_fu_1970_p3 + tmp);
assign empty_25_fu_2015_p2 = (or_ln8_7_fu_1970_p3 + tmp_1);
assign empty_26_fu_2273_p2 = (or_ln8_7_reg_3142 + empty);
assign grp_fu_1312_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_15_q1 : orig_7_q1);
assign grp_fu_1319_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_14_q1 : orig_6_q1);
assign grp_fu_1326_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_15_q0 : orig_7_q0);
assign grp_fu_1333_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_0_q0 : orig_8_q0);
assign grp_fu_1340_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_14_q0 : orig_6_q0);
assign grp_fu_1347_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_1_q0 : orig_9_q0);
assign icmp_ln12_fu_1476_p2 = ((trunc_ln8_fu_1442_p1 != 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1560_p2 = ((trunc_ln8_fu_1442_p1 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_1978_p2 = (($signed(or_ln8_5_fu_1962_p3) < $signed(64'd62)) ? 1'b1 : 1'b0);
assign lshr_ln12_10_fu_1774_p4 = {{add_ln12_5_fu_1768_p2[12:4]}};
assign lshr_ln12_12_fu_1829_p4 = {{empty_18_fu_1824_p2[12:4]}};
assign lshr_ln12_14_fu_1865_p4 = {{empty_20_fu_1860_p2[12:4]}};
assign lshr_ln12_17_fu_1936_p4 = {{empty_23_fu_1931_p2[12:4]}};
assign lshr_ln12_1_fu_1482_p4 = {{empty_11_fu_1450_p2[12:4]}};
assign lshr_ln12_20_fu_2020_p4 = {{empty_25_fu_2015_p2[12:4]}};
assign lshr_ln12_2_fu_1516_p4 = {{empty_12_fu_1500_p2[12:4]}};
assign lshr_ln12_4_fu_1589_p4 = {{empty_14_fu_1584_p2[12:4]}};
assign lshr_ln12_6_fu_1625_p4 = {{empty_16_fu_1620_p2[12:4]}};
assign lshr_ln12_7_fu_1672_p4 = {{add_ln12_1_fu_1666_p2[12:4]}};
assign lshr_ln12_8_fu_1701_p4 = {{add_ln12_2_fu_1695_p2[12:4]}};
assign lshr_ln12_s_fu_1752_p4 = {{add_ln12_4_fu_1746_p2[12:4]}};
assign or_ln8_1_fu_1651_p3 = {{tmp_5_fu_1641_p4}, {2'd2}};
assign or_ln8_2_fu_1738_p3 = {{tmp_5_fu_1641_p4}, {2'd3}};
assign or_ln8_3_fu_1816_p3 = {{tmp_s_fu_1806_p4}, {3'd4}};
assign or_ln8_4_fu_1889_p5 = {{{{tmp_s_fu_1806_p4}, {1'd1}}, {tmp_9_fu_1881_p3}}, {1'd1}};
assign or_ln8_5_fu_1962_p3 = {{tmp_10_fu_1952_p4}, {3'd6}};
assign or_ln8_6_fu_2052_p3 = {{tmp_s_fu_1806_p4}, {3'd7}};
assign or_ln8_7_fu_1970_p3 = {{tmp_s_fu_1806_p4}, {3'd6}};
assign or_ln8_fu_1576_p3 = {{tmp_4_fu_1566_p4}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_10_address0 = orig_10_address0_local;
assign orig_10_address1 = zext_ln12_1_fu_1492_p1;
assign orig_10_ce0 = orig_10_ce0_local;
assign orig_10_ce1 = orig_10_ce1_local;
assign orig_11_address0 = orig_11_address0_local;
assign orig_11_address1 = zext_ln12_6_fu_1599_p1;
assign orig_11_ce0 = orig_11_ce0_local;
assign orig_11_ce1 = orig_11_ce1_local;
assign orig_12_address0 = orig_12_address0_local;
assign orig_12_address1 = zext_ln12_9_fu_1682_p1;
assign orig_12_ce0 = orig_12_ce0_local;
assign orig_12_ce1 = orig_12_ce1_local;
assign orig_13_address0 = orig_13_address0_local;
assign orig_13_address1 = zext_ln12_12_fu_1762_p1;
assign orig_13_ce0 = orig_13_ce0_local;
assign orig_13_ce1 = orig_13_ce1_local;
assign orig_14_address0 = orig_14_address0_local;
assign orig_14_address1 = orig_14_address1_local;
assign orig_14_ce0 = orig_14_ce0_local;
assign orig_14_ce1 = orig_14_ce1_local;
assign orig_15_address0 = orig_15_address0_local;
assign orig_15_address1 = orig_15_address1_local;
assign orig_15_ce0 = orig_15_ce0_local;
assign orig_15_ce1 = orig_15_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = zext_ln12_1_fu_1492_p1;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = zext_ln12_6_fu_1599_p1;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = zext_ln12_9_fu_1682_p1;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = zext_ln12_12_fu_1762_p1;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign orig_8_address0 = orig_8_address0_local;
assign orig_8_address1 = orig_8_address1_local;
assign orig_8_ce0 = orig_8_ce0_local;
assign orig_8_ce1 = orig_8_ce1_local;
assign orig_9_address0 = orig_9_address0_local;
assign orig_9_address1 = orig_9_address1_local;
assign orig_9_ce0 = orig_9_ce0_local;
assign orig_9_ce1 = orig_9_ce1_local;
assign select_ln12_10_fu_2329_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_11_q0 : orig_3_q0);
assign select_ln12_11_fu_2180_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_11_q0 : orig_3_q0);
assign select_ln12_12_fu_2187_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_12_q1 : orig_4_q1);
assign select_ln12_13_fu_2194_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_12_q0 : orig_4_q0);
assign select_ln12_14_fu_2336_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_12_q0 : orig_4_q0);
assign select_ln12_15_fu_2206_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_13_q1 : orig_5_q1);
assign select_ln12_16_fu_2213_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_13_q0 : orig_5_q0);
assign select_ln12_17_fu_2343_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_13_q0 : orig_5_q0);
assign select_ln12_18_fu_2225_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_14_q1 : orig_6_q1);
assign select_ln12_1_fu_2126_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_9_q1 : orig_1_q1);
assign select_ln12_20_fu_2232_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_14_q0 : orig_6_q0);
assign select_ln12_23_fu_2244_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_15_q1 : orig_7_q1);
assign select_ln12_28_fu_2261_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_15_q0 : orig_7_q0);
assign select_ln12_29_fu_2360_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_0_q1 : orig_8_q1);
assign select_ln12_2_fu_2133_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_10_q1 : orig_2_q1);
assign select_ln12_33_fu_2394_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_1_q1 : orig_9_q1);
assign select_ln12_3_fu_2140_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_8_q0 : orig_0_q0);
assign select_ln12_4_fu_2147_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_9_q0 : orig_1_q0);
assign select_ln12_5_fu_2154_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_10_q0 : orig_2_q0);
assign select_ln12_6_fu_2387_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_8_q0 : orig_0_q0);
assign select_ln12_7_fu_2315_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_9_q0 : orig_1_q0);
assign select_ln12_8_fu_2322_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_10_q0 : orig_2_q0);
assign select_ln12_9_fu_2168_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_11_q1 : orig_3_q1);
assign select_ln12_fu_2119_p3 = ((icmp_ln12_reg_2918[0:0] == 1'b1) ? orig_8_q1 : orig_0_q1);
assign sol_0_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_3923;
assign sol_0_we0 = sol_0_we0_local;
assign sol_10_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_d0 = temp_2_reg_3929;
assign sol_10_we0 = sol_10_we0_local;
assign sol_11_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_d0 = temp_3_reg_3935;
assign sol_11_we0 = sol_11_we0_local;
assign sol_12_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_d0 = temp_4_reg_3941;
assign sol_12_we0 = sol_12_we0_local;
assign sol_13_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_d0 = temp_5_reg_3947;
assign sol_13_we0 = sol_13_we0_local;
assign sol_14_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_d0 = temp_6_reg_3964;
assign sol_14_we0 = sol_14_we0_local;
assign sol_15_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_15_ce0 = sol_15_ce0_local;
assign sol_15_d0 = temp_7_reg_3958;
assign sol_15_we0 = sol_15_we0_local;
assign sol_1_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_3832;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_2_reg_3929;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_3_reg_3935;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_4_reg_3941;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_5_reg_3947;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_6_reg_3964;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_7_reg_3958;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_d0 = temp_reg_3923;
assign sol_8_we0 = sol_8_we0_local;
assign sol_9_address0 = zext_ln12_reg_2886_pp0_iter2_reg;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_d0 = temp_1_reg_3832;
assign sol_9_we0 = sol_9_we0_local;
assign temp_1_fu_2530_p2 = (add_ln13_14_reg_3767 + add_ln13_10_fu_2526_p2);
assign temp_2_fu_2665_p2 = (add_ln13_22_reg_3843 + add_ln13_18_fu_2661_p2);
assign temp_3_fu_2674_p2 = (add_ln13_30_reg_3858 + add_ln13_26_fu_2670_p2);
assign temp_4_fu_2683_p2 = (add_ln13_38_reg_3873 + add_ln13_34_fu_2679_p2);
assign temp_5_fu_2692_p2 = (add_ln13_46_reg_3888 + add_ln13_42_fu_2688_p2);
assign temp_6_fu_2719_p2 = (add_ln13_54_reg_3953 + add_ln13_50_fu_2715_p2);
assign temp_7_fu_2710_p2 = (add_ln13_62_reg_3918 + add_ln13_58_fu_2706_p2);
assign temp_fu_2656_p2 = (add_ln13_6_reg_3827 + add_ln13_2_fu_2652_p2);
assign tmp_10_fu_1952_p4 = {{c_fu_188[63:3]}};
assign tmp_4_fu_1566_p4 = {{c_fu_188[12:1]}};
assign tmp_5_fu_1641_p4 = {{c_fu_188[12:2]}};
assign tmp_7_fu_1659_p3 = {{r}, {6'd2}};
assign tmp_8_fu_1688_p3 = {{indvars_iv_next173}, {6'd2}};
assign tmp_9_fu_1881_p3 = c_fu_188[32'd1];
assign tmp_s_fu_1806_p4 = {{c_fu_188[12:3]}};
assign trunc_ln8_1_fu_1446_p1 = c_fu_188[12:0];
assign trunc_ln8_fu_1442_p1 = c_fu_188[3:0];
assign trunc_ln_fu_1455_p4 = {{c_fu_188[12:4]}};
assign zext_ln12_10_fu_1711_p1 = lshr_ln12_8_fu_1701_p4;
assign zext_ln12_11_fu_2201_p1 = lshr_ln12_9_reg_3067;
assign zext_ln12_12_fu_1762_p1 = lshr_ln12_s_fu_1752_p4;
assign zext_ln12_13_fu_1784_p1 = lshr_ln12_10_fu_1774_p4;
assign zext_ln12_14_fu_2220_p1 = lshr_ln12_11_reg_3092;
assign zext_ln12_15_fu_1839_p1 = lshr_ln12_12_fu_1829_p4;
assign zext_ln12_16_fu_2350_p1 = lshr_ln12_13_reg_3107;
assign zext_ln12_17_fu_1875_p1 = lshr_ln12_14_fu_1865_p4;
assign zext_ln12_18_fu_2239_p1 = lshr_ln12_15_reg_3122;
assign zext_ln12_19_fu_2355_p1 = lshr_ln12_16_reg_3127;
assign zext_ln12_1_fu_1492_p1 = lshr_ln12_1_fu_1482_p4;
assign zext_ln12_20_fu_1946_p1 = lshr_ln12_17_fu_1936_p4;
assign zext_ln12_21_fu_2251_p1 = lshr_ln12_18_reg_3151;
assign zext_ln12_22_fu_2256_p1 = lshr_ln12_19_reg_3156;
assign zext_ln12_23_fu_2030_p1 = lshr_ln12_20_fu_2020_p4;
assign zext_ln12_24_fu_2268_p1 = lshr_ln12_21_reg_3171;
assign zext_ln12_25_fu_2367_p1 = lshr_ln12_22_reg_3402;
assign zext_ln12_26_fu_2372_p1 = lshr_ln12_23_reg_3407;
assign zext_ln12_27_fu_2377_p1 = lshr_ln12_24_reg_3176;
assign zext_ln12_28_fu_2382_p1 = lshr_ln12_25_reg_3181;
assign zext_ln12_29_fu_2303_p1 = lshr_ln12_26_reg_3186;
assign zext_ln12_2_fu_1510_p1 = add_ln5_fu_1505_p2;
assign zext_ln12_3_fu_1526_p1 = lshr_ln12_2_fu_1516_p4;
assign zext_ln12_4_fu_2308_p1 = add_ln5_1_reg_3008;
assign zext_ln12_5_fu_2161_p1 = lshr_ln12_3_reg_3013;
assign zext_ln12_6_fu_1599_p1 = lshr_ln12_4_fu_1589_p4;
assign zext_ln12_7_fu_2175_p1 = lshr_ln12_5_reg_3032;
assign zext_ln12_8_fu_1635_p1 = lshr_ln12_6_fu_1625_p4;
assign zext_ln12_9_fu_1682_p1 = lshr_ln12_7_fu_1672_p4;
assign zext_ln12_fu_1470_p1 = add_ln12_fu_1465_p2;
always @ (posedge ap_clk) begin
    zext_ln12_reg_2886[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2886_pp0_iter1_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2886_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_2972[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    or_ln8_7_reg_3142[2:0] <= 3'b110;
end
endmodule 