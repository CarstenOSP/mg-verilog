
module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_3_address1,sol_3_ce1,sol_3_we1,sol_3_d1,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_2_address1,sol_2_ce1,sol_2_we1,sol_2_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,r,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,indvars_iv_next333,tmp_4,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,tmp);  
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
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_3_address1;
output   sol_3_ce1;
output   sol_3_we1;
output  [31:0] sol_3_d1;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_2_address1;
output   sol_2_ce1;
output   sol_2_we1;
output  [31:0] sol_2_d1;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_1_address1;
output   sol_1_ce1;
output   sol_1_we1;
output  [31:0] sol_1_d1;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [10:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
input  [6:0] r;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
input  [6:0] indvars_iv_next333;
input  [6:0] tmp_4;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [12:0] tmp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln8_reg_3320;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_920;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg  signed [31:0] reg_930;
wire    ap_block_pp0_stage7_11001;
reg  signed [31:0] reg_938;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg  signed [31:0] reg_948;
reg  signed [31:0] reg_957;
reg  signed [31:0] reg_967;
reg  signed [31:0] reg_975;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg  signed [31:0] reg_986;
reg  signed [31:0] reg_994;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg  signed [31:0] reg_1003;
reg  signed [31:0] reg_1013;
reg  signed [31:0] reg_1023;
reg  signed [31:0] reg_1032;
reg  signed [31:0] reg_1042;
wire   [31:0] grp_fu_848_p2;
reg   [31:0] reg_1053;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_852_p2;
reg   [31:0] reg_1057;
wire   [31:0] grp_fu_856_p2;
reg   [31:0] reg_1061;
wire   [31:0] grp_fu_860_p2;
reg   [31:0] reg_1065;
wire   [31:0] grp_fu_864_p2;
reg   [31:0] reg_1069;
wire   [31:0] grp_fu_868_p2;
reg   [31:0] reg_1073;
wire   [31:0] grp_fu_872_p2;
reg   [31:0] reg_1077;
wire   [31:0] grp_fu_876_p2;
reg   [31:0] reg_1081;
wire   [31:0] grp_fu_880_p2;
reg   [31:0] reg_1085;
wire   [31:0] grp_fu_884_p2;
reg   [31:0] reg_1089;
wire   [31:0] grp_fu_888_p2;
reg   [31:0] reg_1093;
wire   [31:0] grp_fu_892_p2;
reg   [31:0] reg_1097;
wire   [31:0] grp_fu_896_p2;
reg   [31:0] reg_1101;
wire   [31:0] grp_fu_900_p2;
reg   [31:0] reg_1105;
wire   [31:0] grp_fu_904_p2;
reg   [31:0] reg_1109;
wire   [31:0] grp_fu_908_p2;
reg   [31:0] reg_1113;
wire   [31:0] grp_fu_912_p2;
reg   [31:0] reg_1117;
wire   [31:0] grp_fu_916_p2;
reg   [31:0] reg_1121;
reg  signed [31:0] reg_1125;
reg  signed [31:0] reg_1134;
reg   [31:0] reg_1145;
reg   [31:0] reg_1149;
reg   [31:0] reg_1153;
reg   [31:0] reg_1157;
reg   [31:0] reg_1161;
reg   [31:0] reg_1165;
reg   [31:0] reg_1169;
reg   [31:0] reg_1173;
reg   [31:0] reg_1177;
reg   [31:0] reg_1181;
reg   [31:0] reg_1185;
reg  signed [31:0] reg_1189;
reg   [31:0] reg_1198;
reg   [31:0] reg_1202;
reg   [31:0] reg_1206;
reg   [31:0] reg_1210;
reg  signed [31:0] reg_1214;
reg   [31:0] reg_1221;
reg   [31:0] reg_1225;
reg   [31:0] reg_1229;
reg   [5:0] c_1_reg_2903;
wire   [63:0] zext_ln12_fu_1259_p1;
reg   [63:0] zext_ln12_reg_2908;
reg   [63:0] zext_ln12_reg_2908_pp0_iter1_reg;
wire   [63:0] zext_ln12_1_fu_1272_p1;
reg   [63:0] zext_ln12_1_reg_2919;
wire   [63:0] zext_ln12_2_fu_1286_p1;
reg   [63:0] zext_ln12_2_reg_2930;
wire   [12:0] or_ln8_cast_fu_1301_p1;
reg   [12:0] or_ln8_cast_reg_2960;
wire   [12:0] tmp_7_fu_1305_p3;
reg   [12:0] tmp_7_reg_2966;
wire   [12:0] empty_fu_1334_p2;
reg   [12:0] empty_reg_2981;
wire   [12:0] zext_ln12_6_fu_1348_p1;
reg   [12:0] zext_ln12_6_reg_2993;
reg   [2:0] tmp_s_reg_3004;
reg   [1:0] tmp_1_reg_3013;
reg   [0:0] tmp_2_reg_3027;
wire   [12:0] tmp_8_fu_1401_p3;
reg   [12:0] tmp_8_reg_3041;
wire   [63:0] zext_ln12_10_fu_1494_p1;
reg   [63:0] zext_ln12_10_reg_3071;
reg   [63:0] zext_ln12_10_reg_3071_pp0_iter1_reg;
wire   [63:0] zext_ln12_11_fu_1508_p1;
reg   [63:0] zext_ln12_11_reg_3084;
reg  signed [31:0] orig_0_load_5_reg_3104;
reg  signed [31:0] orig_1_load_5_reg_3111;
reg   [10:0] lshr_ln12_9_reg_3143;
wire   [12:0] zext_ln12_17_fu_1600_p1;
reg   [12:0] zext_ln12_17_reg_3148;
wire   [63:0] zext_ln12_21_fu_1633_p1;
reg   [63:0] zext_ln12_21_reg_3159;
reg   [63:0] zext_ln12_21_reg_3159_pp0_iter1_reg;
reg   [10:0] lshr_ln12_11_reg_3178;
wire   [63:0] zext_ln12_23_fu_1695_p1;
reg   [63:0] zext_ln12_23_reg_3188;
reg   [10:0] lshr_ln12_14_reg_3218;
wire   [12:0] zext_ln12_28_fu_1779_p1;
reg   [12:0] zext_ln12_28_reg_3223;
wire   [31:0] add_ln13_5_fu_1809_p2;
reg   [31:0] add_ln13_5_reg_3234;
wire   [31:0] add_ln13_17_fu_1815_p2;
reg   [31:0] add_ln13_17_reg_3239;
wire   [31:0] add_ln13_24_fu_1821_p2;
reg   [31:0] add_ln13_24_reg_3244;
reg  signed [31:0] orig_2_load_7_reg_3249;
reg  signed [31:0] orig_2_load_8_reg_3256;
reg  signed [31:0] orig_3_load_7_reg_3263;
reg  signed [31:0] orig_1_load_9_reg_3275;
reg   [10:0] lshr_ln12_17_reg_3287;
wire   [63:0] zext_ln12_32_fu_1868_p1;
reg   [63:0] zext_ln12_32_reg_3292;
reg   [63:0] zext_ln12_32_reg_3292_pp0_iter1_reg;
wire   [63:0] zext_ln12_33_fu_1882_p1;
reg   [63:0] zext_ln12_33_reg_3305;
wire   [0:0] icmp_ln8_fu_1894_p2;
reg   [0:0] icmp_ln8_reg_3320_pp0_iter1_reg;
reg   [10:0] lshr_ln12_20_reg_3334;
reg   [10:0] lshr_ln12_22_reg_3344;
reg   [10:0] lshr_ln12_23_reg_3349;
wire   [31:0] add_ln13_13_fu_2026_p2;
reg   [31:0] add_ln13_13_reg_3359;
wire   [31:0] add_ln13_21_fu_2038_p2;
reg   [31:0] add_ln13_21_reg_3364;
wire   [31:0] add_ln13_25_fu_2044_p2;
reg   [31:0] add_ln13_25_reg_3369;
wire   [31:0] add_ln13_29_fu_2056_p2;
reg   [31:0] add_ln13_29_reg_3374;
wire   [31:0] add_ln13_32_fu_2062_p2;
reg   [31:0] add_ln13_32_reg_3379;
reg   [31:0] mul_ln13_46_reg_3384;
reg   [31:0] mul_ln13_52_reg_3389;
reg   [31:0] mul_ln13_60_reg_3399;
reg   [31:0] mul_ln13_69_reg_3409;
reg  signed [31:0] orig_3_load_8_reg_3414;
reg  signed [31:0] orig_2_load_10_reg_3425;
reg  signed [31:0] orig_3_load_9_reg_3436;
reg  signed [31:0] orig_0_load_12_reg_3453;
wire   [31:0] add_ln13_6_fu_2104_p2;
reg   [31:0] add_ln13_6_reg_3468;
wire   [31:0] add_ln13_9_fu_2109_p2;
reg   [31:0] add_ln13_9_reg_3473;
wire   [31:0] add_ln13_14_fu_2121_p2;
reg   [31:0] add_ln13_14_reg_3478;
wire   [31:0] add_ln13_22_fu_2132_p2;
reg   [31:0] add_ln13_22_reg_3483;
wire   [31:0] add_ln13_30_fu_2143_p2;
reg   [31:0] add_ln13_30_reg_3488;
wire   [31:0] add_ln13_37_fu_2154_p2;
reg   [31:0] add_ln13_37_reg_3493;
wire   [31:0] add_ln13_40_fu_2160_p2;
reg   [31:0] add_ln13_40_reg_3498;
wire   [31:0] add_ln13_45_fu_2170_p2;
reg   [31:0] add_ln13_45_reg_3503;
reg  signed [31:0] orig_0_load_8_reg_3508;
reg  signed [31:0] orig_1_load_8_reg_3514;
reg  signed [31:0] orig_0_load_11_reg_3520;
reg   [31:0] mul_ln13_90_reg_3527;
reg   [31:0] mul_ln13_96_reg_3532;
reg   [31:0] mul_ln13_105_reg_3542;
reg  signed [31:0] orig_3_load_11_reg_3547;
wire   [31:0] temp_3_fu_2192_p2;
reg   [31:0] temp_3_reg_3573;
wire   [31:0] add_ln13_38_fu_2203_p2;
reg   [31:0] add_ln13_38_reg_3578;
wire   [31:0] add_ln13_46_fu_2214_p2;
reg   [31:0] add_ln13_46_reg_3583;
wire   [31:0] add_ln13_48_fu_2219_p2;
reg   [31:0] add_ln13_48_reg_3588;
wire   [31:0] add_ln13_49_fu_2225_p2;
reg   [31:0] add_ln13_49_reg_3593;
wire   [31:0] add_ln13_57_fu_2231_p2;
reg   [31:0] add_ln13_57_reg_3598;
wire   [31:0] add_ln13_69_fu_2243_p2;
reg   [31:0] add_ln13_69_reg_3603;
reg   [31:0] mul_ln13_83_reg_3608;
reg   [31:0] mul_ln13_108_reg_3613;
reg   [31:0] mul_ln13_109_reg_3618;
reg   [31:0] mul_ln13_126_reg_3623;
reg   [31:0] mul_ln13_135_reg_3628;
reg   [31:0] mul_ln13_11_reg_3633;
wire   [31:0] add_ln13_56_fu_2259_p2;
reg   [31:0] add_ln13_56_reg_3638;
wire   [31:0] add_ln13_64_fu_2265_p2;
reg   [31:0] add_ln13_64_reg_3643;
wire   [31:0] add_ln13_77_fu_2277_p2;
reg   [31:0] add_ln13_77_reg_3648;
reg   [31:0] mul_ln13_111_reg_3653;
reg   [31:0] mul_ln13_118_reg_3658;
reg   [31:0] mul_ln13_120_reg_3663;
reg   [31:0] mul_ln13_125_reg_3668;
reg   [31:0] mul_ln13_132_reg_3673;
reg   [31:0] mul_ln13_134_reg_3678;
wire   [31:0] temp_2_fu_2294_p2;
reg   [31:0] temp_2_reg_3683;
wire   [31:0] add_ln13_53_fu_2305_p2;
reg   [31:0] add_ln13_53_reg_3688;
wire   [31:0] add_ln13_61_fu_2317_p2;
reg   [31:0] add_ln13_61_reg_3693;
wire   [31:0] add_ln13_70_fu_2329_p2;
reg   [31:0] add_ln13_70_reg_3698;
wire   [31:0] add_ln13_72_fu_2334_p2;
reg   [31:0] add_ln13_72_reg_3703;
wire   [31:0] add_ln13_78_fu_2346_p2;
reg   [31:0] add_ln13_78_reg_3708;
wire   [31:0] add_ln13_85_fu_2357_p2;
reg   [31:0] add_ln13_85_reg_3713;
wire   [31:0] add_ln13_101_fu_2366_p2;
reg   [31:0] add_ln13_101_reg_3718;
wire   [31:0] add_ln13_109_fu_2375_p2;
reg   [31:0] add_ln13_109_reg_3723;
reg   [31:0] mul_ln13_138_reg_3728;
reg   [31:0] mul_ln13_143_reg_3733;
reg   [31:0] mul_ln13_2_reg_3738;
wire   [31:0] add_ln13_54_fu_2386_p2;
reg   [31:0] add_ln13_54_reg_3743;
wire   [31:0] add_ln13_62_fu_2396_p2;
reg   [31:0] add_ln13_62_reg_3748;
wire   [31:0] add_ln13_80_fu_2401_p2;
reg   [31:0] add_ln13_80_reg_3753;
wire   [31:0] add_ln13_81_fu_2407_p2;
reg   [31:0] add_ln13_81_reg_3758;
wire   [31:0] add_ln13_86_fu_2418_p2;
reg   [31:0] add_ln13_86_reg_3763;
wire   [31:0] add_ln13_88_fu_2423_p2;
reg   [31:0] add_ln13_88_reg_3768;
wire   [31:0] add_ln13_89_fu_2429_p2;
reg   [31:0] add_ln13_89_reg_3773;
wire   [31:0] add_ln13_93_fu_2441_p2;
reg   [31:0] add_ln13_93_reg_3778;
wire   [31:0] add_ln13_96_fu_2447_p2;
reg   [31:0] add_ln13_96_reg_3783;
wire   [31:0] add_ln13_102_fu_2459_p2;
reg   [31:0] add_ln13_102_reg_3788;
wire   [31:0] add_ln13_110_fu_2469_p2;
reg   [31:0] add_ln13_110_reg_3793;
wire   [31:0] add_ln13_117_fu_2480_p2;
reg   [31:0] add_ln13_117_reg_3798;
wire   [31:0] add_ln13_125_fu_2490_p2;
reg   [31:0] add_ln13_125_reg_3803;
wire   [31:0] temp_fu_2512_p2;
reg   [31:0] temp_reg_3808;
wire   [31:0] temp_1_fu_2527_p2;
reg   [31:0] temp_1_reg_3813;
wire   [31:0] temp_4_fu_2543_p2;
reg   [31:0] temp_4_reg_3818;
wire   [31:0] temp_5_fu_2559_p2;
reg   [31:0] temp_5_reg_3823;
wire   [31:0] temp_6_fu_2568_p2;
reg   [31:0] temp_6_reg_3828;
wire   [31:0] temp_7_fu_2577_p2;
reg   [31:0] temp_7_reg_3833;
wire   [31:0] temp_8_fu_2593_p2;
reg   [31:0] temp_8_reg_3838;
wire   [31:0] temp_9_fu_2608_p2;
reg   [31:0] temp_9_reg_3843;
wire   [31:0] temp_10_fu_2617_p2;
reg   [31:0] temp_10_reg_3848;
wire   [31:0] add_ln13_94_fu_2627_p2;
reg   [31:0] add_ln13_94_reg_3853;
wire   [31:0] temp_12_fu_2643_p2;
reg   [31:0] temp_12_reg_3858;
wire   [31:0] temp_13_fu_2666_p2;
reg   [31:0] temp_13_reg_3863;
wire   [31:0] add_ln13_112_fu_2671_p2;
reg   [31:0] add_ln13_112_reg_3868;
wire   [31:0] add_ln13_113_fu_2677_p2;
reg   [31:0] add_ln13_113_reg_3873;
wire   [31:0] add_ln13_118_fu_2687_p2;
reg   [31:0] add_ln13_118_reg_3878;
wire   [31:0] add_ln13_120_fu_2692_p2;
reg   [31:0] add_ln13_120_reg_3883;
wire   [31:0] add_ln13_121_fu_2698_p2;
reg   [31:0] add_ln13_121_reg_3888;
wire   [31:0] add_ln13_126_fu_2709_p2;
reg   [31:0] add_ln13_126_reg_3893;
wire   [31:0] temp_11_fu_2718_p2;
reg   [31:0] temp_11_reg_3898;
wire   [31:0] temp_14_fu_2727_p2;
reg   [31:0] temp_14_reg_3903;
wire   [31:0] temp_15_fu_2736_p2;
reg   [31:0] temp_15_reg_3908;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_3_fu_1329_p1;
wire   [63:0] zext_ln12_7_fu_1368_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_4_fu_1423_p1;
wire   [63:0] zext_ln12_5_fu_1442_p1;
wire   [63:0] zext_ln12_8_fu_1462_p1;
wire   [63:0] zext_ln12_9_fu_1481_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_12_fu_1521_p1;
wire   [63:0] zext_ln12_14_fu_1553_p1;
wire   [63:0] zext_ln12_15_fu_1573_p1;
wire   [63:0] zext_ln12_18_fu_1619_p1;
wire   [63:0] zext_ln12_19_fu_1652_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln12_22_fu_1680_p1;
wire   [63:0] zext_ln12_25_fu_1729_p1;
wire   [63:0] zext_ln12_26_fu_1749_p1;
wire   [63:0] zext_ln12_29_fu_1798_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln12_30_fu_1841_p1;
wire   [63:0] zext_ln12_35_fu_1919_p1;
wire   [63:0] zext_ln12_36_fu_1939_p1;
wire   [63:0] zext_ln12_39_fu_1985_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln12_16_fu_2068_p1;
wire   [63:0] zext_ln12_20_fu_2072_p1;
wire   [63:0] zext_ln12_27_fu_2076_p1;
wire   [63:0] zext_ln12_34_fu_2088_p1;
wire   [63:0] zext_ln12_40_fu_2094_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln12_31_fu_2176_p1;
wire   [63:0] zext_ln12_37_fu_2180_p1;
wire   [63:0] zext_ln12_41_fu_2184_p1;
wire    ap_block_pp0_stage7;
reg   [5:0] c_fu_134;
wire   [5:0] add_ln8_fu_2249_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_c_1;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg   [10:0] sol_3_address0_local;
reg    sol_3_we1_local;
reg    sol_3_ce1_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
reg    sol_2_ce0_local;
reg   [10:0] sol_2_address0_local;
reg    sol_2_we1_local;
reg   [31:0] sol_2_d1_local;
reg    sol_2_ce1_local;
reg   [10:0] sol_2_address1_local;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
reg    sol_0_ce0_local;
reg   [10:0] sol_0_address0_local;
reg    sol_0_we1_local;
reg   [31:0] sol_0_d1_local;
reg    sol_0_ce1_local;
reg   [10:0] sol_0_address1_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
reg    sol_1_ce0_local;
reg   [10:0] sol_1_address0_local;
reg    sol_1_we1_local;
reg   [31:0] sol_1_d1_local;
reg    sol_1_ce1_local;
reg   [10:0] sol_1_address1_local;
reg  signed [31:0] grp_fu_848_p0;
reg  signed [31:0] grp_fu_848_p1;
reg  signed [31:0] grp_fu_852_p0;
reg  signed [31:0] grp_fu_852_p1;
reg  signed [31:0] grp_fu_856_p0;
reg  signed [31:0] grp_fu_856_p1;
reg  signed [31:0] grp_fu_860_p0;
reg  signed [31:0] grp_fu_860_p1;
reg  signed [31:0] grp_fu_864_p0;
reg  signed [31:0] grp_fu_864_p1;
reg  signed [31:0] grp_fu_868_p0;
reg  signed [31:0] grp_fu_868_p1;
reg  signed [31:0] grp_fu_872_p0;
reg  signed [31:0] grp_fu_872_p1;
reg  signed [31:0] grp_fu_876_p0;
reg  signed [31:0] grp_fu_876_p1;
reg  signed [31:0] grp_fu_880_p0;
reg  signed [31:0] grp_fu_880_p1;
reg  signed [31:0] grp_fu_884_p0;
reg  signed [31:0] grp_fu_884_p1;
reg  signed [31:0] grp_fu_888_p0;
reg  signed [31:0] grp_fu_888_p1;
reg  signed [31:0] grp_fu_892_p0;
reg  signed [31:0] grp_fu_892_p1;
reg  signed [31:0] grp_fu_896_p0;
reg  signed [31:0] grp_fu_896_p1;
reg  signed [31:0] grp_fu_900_p0;
reg  signed [31:0] grp_fu_900_p1;
reg  signed [31:0] grp_fu_904_p0;
reg  signed [31:0] grp_fu_904_p1;
reg  signed [31:0] grp_fu_908_p0;
reg  signed [31:0] grp_fu_908_p1;
reg  signed [31:0] grp_fu_912_p0;
reg  signed [31:0] grp_fu_912_p1;
reg  signed [31:0] grp_fu_916_p0;
reg  signed [31:0] grp_fu_916_p1;
wire   [3:0] lshr_ln_fu_1241_p4;
wire   [10:0] add_ln_fu_1251_p3;
wire   [10:0] add_ln5_fu_1264_p3;
wire   [10:0] add_ln5_1_fu_1278_p3;
wire   [5:0] or_ln8_fu_1293_p3;
wire   [12:0] add_ln12_fu_1313_p2;
wire   [10:0] lshr_ln12_1_fu_1319_p4;
wire   [5:0] or_ln8_1_fu_1340_p3;
wire   [12:0] add_ln12_3_fu_1352_p2;
wire   [10:0] lshr_ln12_4_fu_1358_p4;
wire   [12:0] add_ln12_1_fu_1408_p2;
wire   [10:0] lshr_ln12_2_fu_1413_p4;
wire   [12:0] add_ln12_2_fu_1428_p2;
wire   [10:0] lshr_ln12_3_fu_1432_p4;
wire   [12:0] add_ln12_4_fu_1447_p2;
wire   [10:0] lshr_ln12_5_fu_1452_p4;
wire   [12:0] add_ln12_5_fu_1467_p2;
wire   [10:0] lshr_ln12_6_fu_1471_p4;
wire   [10:0] add_ln12_7_fu_1486_p4;
wire   [10:0] add_ln12_8_fu_1500_p4;
wire   [10:0] add_ln12_9_fu_1513_p4;
wire   [5:0] or_ln8_2_fu_1527_p3;
wire   [12:0] zext_ln12_13_fu_1534_p1;
wire   [12:0] add_ln12_6_fu_1538_p2;
wire   [10:0] lshr_ln12_7_fu_1543_p4;
wire   [12:0] add_ln12_10_fu_1558_p2;
wire   [10:0] lshr_ln12_8_fu_1563_p4;
wire   [12:0] add_ln12_11_fu_1578_p2;
wire   [5:0] or_ln8_3_fu_1593_p3;
wire   [12:0] add_ln12_12_fu_1604_p2;
wire   [10:0] lshr_ln12_s_fu_1609_p4;
wire   [10:0] add_ln12_s_fu_1624_p5;
wire   [12:0] add_ln12_13_fu_1638_p2;
wire   [10:0] lshr_ln12_10_fu_1642_p4;
wire   [12:0] add_ln12_14_fu_1657_p2;
wire   [10:0] add_ln12_15_fu_1671_p5;
wire   [10:0] add_ln12_16_fu_1686_p5;
wire   [5:0] or_ln8_4_fu_1700_p5;
wire   [12:0] zext_ln12_24_fu_1710_p1;
wire   [12:0] add_ln12_17_fu_1714_p2;
wire   [10:0] lshr_ln12_12_fu_1719_p4;
wire   [12:0] add_ln12_18_fu_1734_p2;
wire   [10:0] lshr_ln12_13_fu_1739_p4;
wire   [12:0] add_ln12_19_fu_1754_p2;
wire   [5:0] or_ln8_5_fu_1769_p5;
wire   [12:0] add_ln12_20_fu_1783_p2;
wire   [10:0] lshr_ln12_15_fu_1788_p4;
wire   [31:0] add_ln13_4_fu_1803_p2;
wire   [12:0] add_ln12_21_fu_1827_p2;
wire   [10:0] lshr_ln12_16_fu_1831_p4;
wire   [12:0] add_ln12_22_fu_1846_p2;
wire   [10:0] add_ln12_23_fu_1860_p4;
wire   [10:0] add_ln12_24_fu_1874_p4;
wire   [5:0] or_ln8_6_fu_1887_p3;
wire   [12:0] zext_ln8_fu_1900_p1;
wire   [12:0] add_ln12_26_fu_1904_p2;
wire   [10:0] lshr_ln12_18_fu_1909_p4;
wire   [12:0] add_ln12_27_fu_1924_p2;
wire   [10:0] lshr_ln12_19_fu_1929_p4;
wire   [12:0] add_ln12_28_fu_1944_p2;
wire   [5:0] or_ln8_7_fu_1959_p3;
wire   [12:0] zext_ln12_38_fu_1966_p1;
wire   [12:0] add_ln12_29_fu_1970_p2;
wire   [10:0] lshr_ln12_21_fu_1975_p4;
wire   [12:0] add_ln12_30_fu_1990_p2;
wire   [12:0] add_ln12_31_fu_2005_p2;
wire   [31:0] add_ln13_12_fu_2020_p2;
wire   [31:0] add_ln13_20_fu_2032_p2;
wire   [31:0] add_ln13_28_fu_2050_p2;
wire   [10:0] add_ln12_25_fu_2080_p4;
wire   [31:0] add_ln13_3_fu_2098_p2;
wire   [31:0] add_ln13_11_fu_2115_p2;
wire   [31:0] add_ln13_19_fu_2126_p2;
wire   [31:0] add_ln13_27_fu_2137_p2;
wire   [31:0] add_ln13_36_fu_2148_p2;
wire   [31:0] add_ln13_44_fu_2165_p2;
wire   [31:0] add_ln13_26_fu_2188_p2;
wire   [31:0] add_ln13_35_fu_2197_p2;
wire   [31:0] add_ln13_43_fu_2208_p2;
wire   [31:0] add_ln13_68_fu_2237_p2;
wire   [31:0] add_ln13_76_fu_2271_p2;
wire   [31:0] add_ln13_16_fu_2283_p2;
wire   [31:0] add_ln13_18_fu_2289_p2;
wire   [31:0] add_ln13_52_fu_2299_p2;
wire   [31:0] add_ln13_60_fu_2311_p2;
wire   [31:0] add_ln13_67_fu_2323_p2;
wire   [31:0] add_ln13_75_fu_2340_p2;
wire   [31:0] add_ln13_84_fu_2351_p2;
wire   [31:0] add_ln13_100_fu_2362_p2;
wire   [31:0] add_ln13_108_fu_2371_p2;
wire   [31:0] add_ln13_51_fu_2381_p2;
wire   [31:0] add_ln13_59_fu_2391_p2;
wire   [31:0] add_ln13_83_fu_2413_p2;
wire   [31:0] add_ln13_92_fu_2435_p2;
wire   [31:0] add_ln13_99_fu_2453_p2;
wire   [31:0] add_ln13_107_fu_2464_p2;
wire   [31:0] add_ln13_116_fu_2474_p2;
wire   [31:0] add_ln13_124_fu_2485_p2;
wire   [31:0] add_ln13_1_fu_2500_p2;
wire   [31:0] add_ln13_fu_2495_p2;
wire   [31:0] add_ln13_2_fu_2506_p2;
wire   [31:0] add_ln13_8_fu_2517_p2;
wire   [31:0] add_ln13_10_fu_2522_p2;
wire   [31:0] add_ln13_33_fu_2532_p2;
wire   [31:0] add_ln13_34_fu_2538_p2;
wire   [31:0] add_ln13_41_fu_2548_p2;
wire   [31:0] add_ln13_42_fu_2554_p2;
wire   [31:0] add_ln13_50_fu_2564_p2;
wire   [31:0] add_ln13_58_fu_2573_p2;
wire   [31:0] add_ln13_65_fu_2582_p2;
wire   [31:0] add_ln13_66_fu_2588_p2;
wire   [31:0] add_ln13_73_fu_2598_p2;
wire   [31:0] add_ln13_74_fu_2603_p2;
wire   [31:0] add_ln13_82_fu_2613_p2;
wire   [31:0] add_ln13_91_fu_2622_p2;
wire   [31:0] add_ln13_97_fu_2632_p2;
wire   [31:0] add_ln13_98_fu_2638_p2;
wire   [31:0] add_ln13_105_fu_2654_p2;
wire   [31:0] add_ln13_104_fu_2648_p2;
wire   [31:0] add_ln13_106_fu_2660_p2;
wire   [31:0] add_ln13_115_fu_2683_p2;
wire   [31:0] add_ln13_123_fu_2704_p2;
wire   [31:0] add_ln13_90_fu_2714_p2;
wire   [31:0] add_ln13_114_fu_2723_p2;
wire   [31:0] add_ln13_122_fu_2732_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage6;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_134 = 6'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_848_p0),.din1(grp_fu_848_p1),.ce(1'b1),.dout(grp_fu_848_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_852_p0),.din1(grp_fu_852_p1),.ce(1'b1),.dout(grp_fu_852_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_856_p0),.din1(grp_fu_856_p1),.ce(1'b1),.dout(grp_fu_856_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_860_p0),.din1(grp_fu_860_p1),.ce(1'b1),.dout(grp_fu_860_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_864_p0),.din1(grp_fu_864_p1),.ce(1'b1),.dout(grp_fu_864_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_868_p0),.din1(grp_fu_868_p1),.ce(1'b1),.dout(grp_fu_868_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_872_p0),.din1(grp_fu_872_p1),.ce(1'b1),.dout(grp_fu_872_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_876_p0),.din1(grp_fu_876_p1),.ce(1'b1),.dout(grp_fu_876_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_880_p0),.din1(grp_fu_880_p1),.ce(1'b1),.dout(grp_fu_880_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_884_p0),.din1(grp_fu_884_p1),.ce(1'b1),.dout(grp_fu_884_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_888_p0),.din1(grp_fu_888_p1),.ce(1'b1),.dout(grp_fu_888_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_892_p0),.din1(grp_fu_892_p1),.ce(1'b1),.dout(grp_fu_892_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_896_p0),.din1(grp_fu_896_p1),.ce(1'b1),.dout(grp_fu_896_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_900_p0),.din1(grp_fu_900_p1),.ce(1'b1),.dout(grp_fu_900_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_904_p0),.din1(grp_fu_904_p1),.ce(1'b1),.dout(grp_fu_904_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_908_p0),.din1(grp_fu_908_p1),.ce(1'b1),.dout(grp_fu_908_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_912_p0),.din1(grp_fu_912_p1),.ce(1'b1),.dout(grp_fu_912_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_916_p0),.din1(grp_fu_916_p1),.ce(1'b1),.dout(grp_fu_916_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage6) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_134 <= 6'd0;
    end else if (((icmp_ln8_reg_3320 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        c_fu_134 <= add_ln8_fu_2249_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_1003 <= orig_0_q0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1003 <= orig_0_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1042 <= orig_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1042 <= orig_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1134 <= orig_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1134 <= orig_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1189 <= orig_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1189 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_938 <= orig_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_938 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_975 <= orig_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_975 <= orig_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_101_reg_3718 <= add_ln13_101_fu_2366_p2;
        add_ln13_109_reg_3723 <= add_ln13_109_fu_2375_p2;
        add_ln13_53_reg_3688 <= add_ln13_53_fu_2305_p2;
        add_ln13_61_reg_3693 <= add_ln13_61_fu_2317_p2;
        add_ln13_70_reg_3698 <= add_ln13_70_fu_2329_p2;
        add_ln13_72_reg_3703 <= add_ln13_72_fu_2334_p2;
        add_ln13_78_reg_3708 <= add_ln13_78_fu_2346_p2;
        add_ln13_85_reg_3713 <= add_ln13_85_fu_2357_p2;
        temp_2_reg_3683 <= temp_2_fu_2294_p2;
        tmp_8_reg_3041[12 : 6] <= tmp_8_fu_1401_p3[12 : 6];
        zext_ln12_10_reg_3071[10 : 1] <= zext_ln12_10_fu_1494_p1[10 : 1];
        zext_ln12_10_reg_3071_pp0_iter1_reg[10 : 1] <= zext_ln12_10_reg_3071[10 : 1];
        zext_ln12_11_reg_3084[10 : 1] <= zext_ln12_11_fu_1508_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_102_reg_3788 <= add_ln13_102_fu_2459_p2;
        add_ln13_110_reg_3793 <= add_ln13_110_fu_2469_p2;
        add_ln13_117_reg_3798 <= add_ln13_117_fu_2480_p2;
        add_ln13_125_reg_3803 <= add_ln13_125_fu_2490_p2;
        add_ln13_54_reg_3743 <= add_ln13_54_fu_2386_p2;
        add_ln13_62_reg_3748 <= add_ln13_62_fu_2396_p2;
        add_ln13_80_reg_3753 <= add_ln13_80_fu_2401_p2;
        add_ln13_81_reg_3758 <= add_ln13_81_fu_2407_p2;
        add_ln13_86_reg_3763 <= add_ln13_86_fu_2418_p2;
        add_ln13_88_reg_3768 <= add_ln13_88_fu_2423_p2;
        add_ln13_89_reg_3773 <= add_ln13_89_fu_2429_p2;
        add_ln13_93_reg_3778 <= add_ln13_93_fu_2441_p2;
        add_ln13_96_reg_3783 <= add_ln13_96_fu_2447_p2;
        lshr_ln12_9_reg_3143 <= {{add_ln12_11_fu_1578_p2[12:2]}};
        zext_ln12_17_reg_3148[5 : 3] <= zext_ln12_17_fu_1600_p1[5 : 3];
        zext_ln12_21_reg_3159[0] <= zext_ln12_21_fu_1633_p1[0];
zext_ln12_21_reg_3159[10 : 2] <= zext_ln12_21_fu_1633_p1[10 : 2];
        zext_ln12_21_reg_3159_pp0_iter1_reg[0] <= zext_ln12_21_reg_3159[0];
zext_ln12_21_reg_3159_pp0_iter1_reg[10 : 2] <= zext_ln12_21_reg_3159[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln13_112_reg_3868 <= add_ln13_112_fu_2671_p2;
        add_ln13_113_reg_3873 <= add_ln13_113_fu_2677_p2;
        add_ln13_118_reg_3878 <= add_ln13_118_fu_2687_p2;
        add_ln13_120_reg_3883 <= add_ln13_120_fu_2692_p2;
        add_ln13_121_reg_3888 <= add_ln13_121_fu_2698_p2;
        add_ln13_126_reg_3893 <= add_ln13_126_fu_2709_p2;
        add_ln13_94_reg_3853 <= add_ln13_94_fu_2627_p2;
        lshr_ln12_11_reg_3178 <= {{add_ln12_14_fu_1657_p2[12:2]}};
        lshr_ln12_14_reg_3218 <= {{add_ln12_19_fu_1754_p2[12:2]}};
        temp_10_reg_3848 <= temp_10_fu_2617_p2;
        temp_12_reg_3858 <= temp_12_fu_2643_p2;
        temp_13_reg_3863 <= temp_13_fu_2666_p2;
        temp_1_reg_3813 <= temp_1_fu_2527_p2;
        temp_4_reg_3818 <= temp_4_fu_2543_p2;
        temp_5_reg_3823 <= temp_5_fu_2559_p2;
        temp_6_reg_3828 <= temp_6_fu_2568_p2;
        temp_7_reg_3833 <= temp_7_fu_2577_p2;
        temp_8_reg_3838 <= temp_8_fu_2593_p2;
        temp_9_reg_3843 <= temp_9_fu_2608_p2;
        temp_reg_3808 <= temp_fu_2512_p2;
        zext_ln12_23_reg_3188[0] <= zext_ln12_23_fu_1695_p1[0];
zext_ln12_23_reg_3188[10 : 2] <= zext_ln12_23_fu_1695_p1[10 : 2];
        zext_ln12_28_reg_3223[2] <= zext_ln12_28_fu_1779_p1[2];
zext_ln12_28_reg_3223[5 : 4] <= zext_ln12_28_fu_1779_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln13_13_reg_3359 <= add_ln13_13_fu_2026_p2;
        add_ln13_21_reg_3364 <= add_ln13_21_fu_2038_p2;
        add_ln13_25_reg_3369 <= add_ln13_25_fu_2044_p2;
        add_ln13_29_reg_3374 <= add_ln13_29_fu_2056_p2;
        add_ln13_32_reg_3379 <= add_ln13_32_fu_2062_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln13_14_reg_3478 <= add_ln13_14_fu_2121_p2;
        add_ln13_22_reg_3483 <= add_ln13_22_fu_2132_p2;
        add_ln13_30_reg_3488 <= add_ln13_30_fu_2143_p2;
        add_ln13_37_reg_3493 <= add_ln13_37_fu_2154_p2;
        add_ln13_40_reg_3498 <= add_ln13_40_fu_2160_p2;
        add_ln13_45_reg_3503 <= add_ln13_45_fu_2170_p2;
        add_ln13_6_reg_3468 <= add_ln13_6_fu_2104_p2;
        add_ln13_9_reg_3473 <= add_ln13_9_fu_2109_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln13_17_reg_3239 <= add_ln13_17_fu_1815_p2;
        add_ln13_24_reg_3244 <= add_ln13_24_fu_1821_p2;
        add_ln13_5_reg_3234 <= add_ln13_5_fu_1809_p2;
        icmp_ln8_reg_3320 <= icmp_ln8_fu_1894_p2;
        icmp_ln8_reg_3320_pp0_iter1_reg <= icmp_ln8_reg_3320;
        lshr_ln12_17_reg_3287 <= {{add_ln12_22_fu_1846_p2[12:2]}};
        lshr_ln12_20_reg_3334 <= {{add_ln12_28_fu_1944_p2[12:2]}};
        lshr_ln12_22_reg_3344 <= {{add_ln12_30_fu_1990_p2[12:2]}};
        lshr_ln12_23_reg_3349 <= {{add_ln12_31_fu_2005_p2[12:2]}};
        temp_11_reg_3898 <= temp_11_fu_2718_p2;
        temp_14_reg_3903 <= temp_14_fu_2727_p2;
        temp_15_reg_3908 <= temp_15_fu_2736_p2;
        zext_ln12_32_reg_3292[10 : 2] <= zext_ln12_32_fu_1868_p1[10 : 2];
        zext_ln12_32_reg_3292_pp0_iter1_reg[10 : 2] <= zext_ln12_32_reg_3292[10 : 2];
        zext_ln12_33_reg_3305[10 : 2] <= zext_ln12_33_fu_1882_p1[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln13_38_reg_3578 <= add_ln13_38_fu_2203_p2;
        add_ln13_46_reg_3583 <= add_ln13_46_fu_2214_p2;
        add_ln13_48_reg_3588 <= add_ln13_48_fu_2219_p2;
        add_ln13_49_reg_3593 <= add_ln13_49_fu_2225_p2;
        add_ln13_57_reg_3598 <= add_ln13_57_fu_2231_p2;
        add_ln13_69_reg_3603 <= add_ln13_69_fu_2243_p2;
        temp_3_reg_3573 <= temp_3_fu_2192_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_56_reg_3638 <= add_ln13_56_fu_2259_p2;
        add_ln13_64_reg_3643 <= add_ln13_64_fu_2265_p2;
        add_ln13_77_reg_3648 <= add_ln13_77_fu_2277_p2;
        c_1_reg_2903 <= ap_sig_allocacmp_c_1;
        empty_reg_2981 <= empty_fu_1334_p2;
        or_ln8_cast_reg_2960[5 : 2] <= or_ln8_cast_fu_1301_p1[5 : 2];
        tmp_1_reg_3013 <= {{ap_sig_allocacmp_c_1[5:4]}};
        tmp_2_reg_3027 <= ap_sig_allocacmp_c_1[32'd2];
        tmp_7_reg_2966[12 : 6] <= tmp_7_fu_1305_p3[12 : 6];
        tmp_s_reg_3004 <= {{ap_sig_allocacmp_c_1[5:3]}};
        zext_ln12_1_reg_2919[10 : 0] <= zext_ln12_1_fu_1272_p1[10 : 0];
        zext_ln12_2_reg_2930[10 : 0] <= zext_ln12_2_fu_1286_p1[10 : 0];
        zext_ln12_6_reg_2993[5 : 2] <= zext_ln12_6_fu_1348_p1[5 : 2];
        zext_ln12_reg_2908[10 : 0] <= zext_ln12_fu_1259_p1[10 : 0];
        zext_ln12_reg_2908_pp0_iter1_reg[10 : 0] <= zext_ln12_reg_2908[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln13_105_reg_3542 <= grp_fu_916_p2;
        mul_ln13_90_reg_3527 <= grp_fu_900_p2;
        mul_ln13_96_reg_3532 <= grp_fu_908_p2;
        orig_0_load_11_reg_3520 <= orig_0_q0;
        orig_0_load_8_reg_3508 <= orig_0_q1;
        orig_1_load_8_reg_3514 <= orig_1_q1;
        orig_3_load_11_reg_3547 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln13_108_reg_3613 <= grp_fu_884_p2;
        mul_ln13_109_reg_3618 <= grp_fu_888_p2;
        mul_ln13_126_reg_3623 <= grp_fu_904_p2;
        mul_ln13_135_reg_3628 <= grp_fu_912_p2;
        mul_ln13_83_reg_3608 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_111_reg_3653 <= grp_fu_892_p2;
        mul_ln13_118_reg_3658 <= grp_fu_896_p2;
        mul_ln13_11_reg_3633 <= grp_fu_852_p2;
        mul_ln13_120_reg_3663 <= grp_fu_900_p2;
        mul_ln13_125_reg_3668 <= grp_fu_904_p2;
        mul_ln13_132_reg_3673 <= grp_fu_908_p2;
        mul_ln13_134_reg_3678 <= grp_fu_912_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_138_reg_3728 <= grp_fu_912_p2;
        mul_ln13_143_reg_3733 <= grp_fu_916_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_2_reg_3738 <= grp_fu_848_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln13_46_reg_3384 <= grp_fu_860_p2;
        mul_ln13_52_reg_3389 <= grp_fu_876_p2;
        mul_ln13_60_reg_3399 <= grp_fu_900_p2;
        mul_ln13_69_reg_3409 <= grp_fu_912_p2;
        orig_0_load_12_reg_3453 <= orig_0_q1;
        orig_2_load_10_reg_3425 <= orig_2_q0;
        orig_3_load_8_reg_3414 <= orig_3_q1;
        orig_3_load_9_reg_3436 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_5_reg_3104 <= orig_0_q0;
        orig_1_load_5_reg_3111 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_1_load_9_reg_3275 <= orig_1_q0;
        orig_2_load_7_reg_3249 <= orig_2_q1;
        orig_2_load_8_reg_3256 <= orig_2_q0;
        orig_3_load_7_reg_3263 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1013 <= orig_1_q1;
        reg_1023 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1032 <= orig_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1053 <= grp_fu_848_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1057 <= grp_fu_852_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1061 <= grp_fu_856_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1065 <= grp_fu_860_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1069 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1073 <= grp_fu_868_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1077 <= grp_fu_872_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1081 <= grp_fu_876_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1085 <= grp_fu_880_p2;
        reg_1101 <= grp_fu_896_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1089 <= grp_fu_884_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1093 <= grp_fu_888_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1097 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1105 <= grp_fu_900_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1109 <= grp_fu_904_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1113 <= grp_fu_908_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1117 <= grp_fu_912_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1121 <= grp_fu_916_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1125 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1145 <= grp_fu_848_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1149 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1153 <= grp_fu_868_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1157 <= grp_fu_872_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1161 <= grp_fu_876_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1165 <= grp_fu_880_p2;
        reg_1185 <= grp_fu_908_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1169 <= grp_fu_884_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1173 <= grp_fu_896_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1177 <= grp_fu_900_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1181 <= grp_fu_904_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1198 <= grp_fu_880_p2;
        reg_1214 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1202 <= grp_fu_888_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1206 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1210 <= grp_fu_916_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1221 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1225 <= grp_fu_856_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1229 <= grp_fu_852_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_920 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_930 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_948 <= orig_2_q0;
        reg_957 <= orig_3_q1;
        reg_967 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_986 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_994 <= orig_3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3320 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_3320_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
        ap_sig_allocacmp_c_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_848_p0 = reg_1189;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_848_p0 = reg_930;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_848_p0 = reg_957;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_848_p0 = reg_938;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_848_p0 = reg_994;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_848_p0 = reg_920;
    end else begin
        grp_fu_848_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_848_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_848_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_848_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_848_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_848_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_848_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_848_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_848_p1 = filter_load_5;
    end else begin
        grp_fu_848_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_852_p0 = reg_1214;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_852_p0 = reg_920;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_852_p0 = reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_852_p0 = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_852_p0 = reg_938;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_852_p0 = reg_1003;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_852_p0 = reg_948;
    end else begin
        grp_fu_852_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_852_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_852_p1 = filter_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_852_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_852_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_852_p1 = filter_load_8;
    end else begin
        grp_fu_852_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_856_p0 = orig_2_load_8_reg_3256;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_856_p0 = reg_1189;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_856_p0 = reg_920;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_856_p0 = orig_0_load_5_reg_3104;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_856_p0 = reg_930;
    end else begin
        grp_fu_856_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_856_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_856_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_856_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_856_p1 = filter_load_6;
    end else begin
        grp_fu_856_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_860_p0 = orig_0_load_5_reg_3104;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_860_p0 = orig_2_load_7_reg_3249;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_860_p0 = orig_0_load_8_reg_3508;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_860_p0 = reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_860_p0 = reg_930;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_860_p0 = reg_957;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_860_p0 = reg_994;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_860_p0 = reg_938;
    end else begin
        grp_fu_860_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_860_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_860_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_860_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_860_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_860_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_860_p1 = filter_load_7;
    end else begin
        grp_fu_860_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_864_p0 = orig_1_load_5_reg_3111;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_864_p0 = reg_975;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_864_p0 = orig_1_load_8_reg_3514;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_864_p0 = reg_948;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_864_p0 = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_864_p0 = reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_864_p0 = reg_1013;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_864_p0 = reg_957;
    end else begin
        grp_fu_864_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_864_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_864_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_864_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_864_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_864_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_864_p1 = filter_load_2;
    end else begin
        grp_fu_864_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_868_p0 = reg_1134;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_868_p0 = orig_0_load_8_reg_3508;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_868_p0 = orig_3_load_8_reg_3414;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_868_p0 = orig_1_load_5_reg_3111;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_868_p0 = reg_967;
    end else begin
        grp_fu_868_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_868_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_868_p1 = filter_load_6;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_868_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_868_p1 = filter_load_5;
    end else begin
        grp_fu_868_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_872_p0 = orig_1_load_8_reg_3514;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_872_p0 = reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_872_p0 = orig_2_load_7_reg_3249;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_872_p0 = reg_986;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_872_p0 = reg_994;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_872_p0 = reg_938;
    end else begin
        grp_fu_872_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_872_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_872_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_872_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_872_p1 = filter_load_6;
    end else begin
        grp_fu_872_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_876_p0 = orig_0_load_11_reg_3520;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_876_p0 = reg_1189;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_876_p0 = orig_3_load_8_reg_3414;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_876_p0 = orig_2_load_8_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_876_p0 = reg_1013;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_876_p0 = reg_1003;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_876_p0 = reg_920;
    end else begin
        grp_fu_876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_876_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_876_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_876_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_876_p1 = filter_load_3;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_876_p1 = filter_load_4;
    end else begin
        grp_fu_876_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_880_p0 = reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_880_p0 = orig_3_load_7_reg_3263;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_880_p0 = reg_994;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_880_p0 = reg_1013;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_880_p0 = reg_1189;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_880_p0 = reg_920;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_880_p0 = orig_0_load_5_reg_3104;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_880_p0 = reg_948;
    end else begin
        grp_fu_880_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_880_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_880_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_880_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_880_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_880_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_880_p1 = filter_load_7;
    end else begin
        grp_fu_880_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_884_p0 = reg_1013;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_884_p0 = orig_1_load_9_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_884_p0 = orig_0_load_11_reg_3520;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_884_p0 = reg_994;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_884_p0 = reg_930;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_884_p0 = reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_884_p0 = reg_975;
    end else begin
        grp_fu_884_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_884_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_884_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_884_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_884_p1 = filter_load_2;
    end else begin
        grp_fu_884_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_888_p0 = orig_3_load_9_reg_3436;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_888_p0 = reg_975;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_888_p0 = orig_0_load_11_reg_3520;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_888_p0 = orig_2_load_10_reg_3425;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_888_p0 = orig_3_load_7_reg_3263;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_888_p0 = reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_888_p0 = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_888_p0 = reg_957;
    end else begin
        grp_fu_888_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_888_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_888_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_888_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_888_p1 = filter_load_1;
    end else begin
        grp_fu_888_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_892_p0 = reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_892_p0 = reg_1003;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_892_p0 = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_892_p0 = reg_1013;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_892_p0 = orig_2_load_7_reg_3249;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_892_p0 = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_892_p0 = reg_986;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_892_p0 = reg_948;
    end else begin
        grp_fu_892_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_892_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_892_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_892_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_892_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_892_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_892_p1 = filter_load_6;
    end else begin
        grp_fu_892_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_896_p0 = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_896_p0 = reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_896_p0 = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_896_p0 = orig_3_load_9_reg_3436;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_896_p0 = orig_2_load_8_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_896_p0 = reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_896_p0 = reg_975;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_896_p0 = reg_967;
    end else begin
        grp_fu_896_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_896_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_896_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_896_p1 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_896_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_896_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_896_p1 = filter_load_4;
    end else begin
        grp_fu_896_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_900_p0 = reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_900_p0 = orig_3_load_11_reg_3547;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_900_p0 = orig_2_load_10_reg_3425;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_900_p0 = reg_975;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_900_p0 = reg_957;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_900_p0 = reg_1013;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_900_p0 = reg_920;
    end else begin
        grp_fu_900_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_900_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_900_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_900_p1 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_900_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_900_p1 = filter_load_3;
    end else begin
        grp_fu_900_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_904_p0 = orig_1_load_9_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_904_p0 = reg_1032;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_904_p0 = orig_0_load_12_reg_3453;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_904_p0 = reg_967;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_904_p0 = reg_1003;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_904_p0 = reg_986;
    end else begin
        grp_fu_904_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_904_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_904_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_904_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_904_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_904_p1 = filter_load_3;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_904_p1 = filter_load_2;
    end else begin
        grp_fu_904_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_908_p0 = orig_3_load_9_reg_3436;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_908_p0 = reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_908_p0 = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_908_p0 = reg_1214;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_908_p0 = orig_3_load_7_reg_3263;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_908_p0 = reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_908_p0 = orig_1_load_5_reg_3111;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_908_p0 = reg_975;
    end else begin
        grp_fu_908_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_908_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_908_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_908_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_908_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_908_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_908_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_908_p1 = filter_load_1;
    end else begin
        grp_fu_908_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_912_p0 = orig_3_load_11_reg_3547;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_912_p0 = reg_938;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_912_p0 = orig_1_load_9_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_912_p0 = reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_912_p0 = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_912_p0 = reg_957;
    end else begin
        grp_fu_912_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_912_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_912_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_912_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_912_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_912_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_912_p1 = filter_load;
    end else begin
        grp_fu_912_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_916_p0 = reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_916_p0 = reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_916_p0 = reg_986;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_916_p0 = reg_1214;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_916_p0 = reg_1003;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_916_p0 = reg_948;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_916_p0 = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_916_p0 = reg_967;
    end else begin
        grp_fu_916_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_916_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_916_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_916_p1 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_916_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_916_p1 = filter_load_3;
    end else begin
        grp_fu_916_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_0_address0_local = zext_ln12_1_reg_2919;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address0_local = zext_ln12_37_fu_2180_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address0_local = zext_ln12_27_fu_2076_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln12_36_fu_1939_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln12_26_fu_1749_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln12_15_fu_1573_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln12_5_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln12_3_fu_1329_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address1_local = zext_ln12_reg_2908;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address1_local = zext_ln12_16_fu_2068_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln12_35_fu_1919_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln12_25_fu_1729_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_14_fu_1553_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_4_fu_1423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_2_fu_1286_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_1_address0_local = zext_ln12_reg_2908;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address0_local = zext_ln12_41_fu_2184_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address0_local = zext_ln12_40_fu_2094_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address0_local = zext_ln12_39_fu_1985_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address0_local = zext_ln12_29_fu_1798_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln12_18_fu_1619_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln12_9_fu_1481_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln12_7_fu_1368_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address1_local = zext_ln12_31_fu_2176_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address1_local = zext_ln12_20_fu_2072_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln12_30_fu_1841_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln12_19_fu_1652_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln12_1_reg_2919;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln12_8_fu_1462_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_2_fu_1286_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_2_address0_local = zext_ln12_34_fu_2088_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address0_local = zext_ln12_33_fu_1882_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address0_local = zext_ln12_23_fu_1695_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln12_21_fu_1633_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln12_11_fu_1508_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln12_2_fu_1286_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_2_address1_local = zext_ln12_reg_2908;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address1_local = zext_ln12_32_fu_1868_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address1_local = zext_ln12_22_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = zext_ln12_12_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln12_10_fu_1494_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = zext_ln12_1_fu_1272_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_3_address0_local = zext_ln12_34_fu_2088_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address0_local = zext_ln12_32_fu_1868_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address0_local = zext_ln12_22_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address0_local = zext_ln12_12_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln12_10_fu_1494_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address0_local = zext_ln12_1_fu_1272_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_3_address1_local = zext_ln12_33_reg_3305;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address1_local = zext_ln12_23_reg_3188;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address1_local = zext_ln12_21_reg_3159;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = zext_ln12_11_reg_3084;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln12_2_reg_2930;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = zext_ln12_fu_1259_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_0_address0_local = zext_ln12_21_reg_3159_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_0_address0_local = zext_ln12_reg_2908_pp0_iter1_reg;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            sol_0_address1_local = zext_ln12_32_reg_3292_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_0_address1_local = zext_ln12_10_reg_3071_pp0_iter1_reg;
        end else begin
            sol_0_address1_local = 'bx;
        end
    end else begin
        sol_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        sol_0_ce1_local = 1'b1;
    end else begin
        sol_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_0_d0_local = temp_8_reg_3838;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_0_d0_local = temp_reg_3808;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            sol_0_d1_local = temp_12_reg_3858;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_0_d1_local = temp_4_reg_3818;
        end else begin
            sol_0_d1_local = 'bx;
        end
    end else begin
        sol_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        sol_0_we1_local = 1'b1;
    end else begin
        sol_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_address0_local = zext_ln12_21_reg_3159_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_1_address0_local = zext_ln12_reg_2908_pp0_iter1_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            sol_1_address1_local = zext_ln12_32_reg_3292_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_address1_local = zext_ln12_10_reg_3071_pp0_iter1_reg;
        end else begin
            sol_1_address1_local = 'bx;
        end
    end else begin
        sol_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        sol_1_ce1_local = 1'b1;
    end else begin
        sol_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_d0_local = temp_9_reg_3843;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_1_d0_local = temp_1_reg_3813;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            sol_1_d1_local = temp_13_reg_3863;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_d1_local = temp_5_reg_3823;
        end else begin
            sol_1_d1_local = 'bx;
        end
    end else begin
        sol_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        sol_1_we1_local = 1'b1;
    end else begin
        sol_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_2_address0_local = zext_ln12_21_reg_3159_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_2_address0_local = zext_ln12_reg_2908_pp0_iter1_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_2_address1_local = zext_ln12_32_reg_3292_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_2_address1_local = zext_ln12_10_reg_3071_pp0_iter1_reg;
        end else begin
            sol_2_address1_local = 'bx;
        end
    end else begin
        sol_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        sol_2_ce1_local = 1'b1;
    end else begin
        sol_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_2_d0_local = temp_10_reg_3848;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_2_d0_local = temp_2_reg_3683;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_2_d1_local = temp_14_reg_3903;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_2_d1_local = temp_6_reg_3828;
        end else begin
            sol_2_d1_local = 'bx;
        end
    end else begin
        sol_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_3320_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_2_we1_local = 1'b1;
    end else begin
        sol_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_3_address0_local = zext_ln12_32_reg_3292_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_3_address0_local = zext_ln12_10_reg_3071_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_3_address0_local = zext_ln12_reg_2908;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sol_3_ce1_local = 1'b1;
    end else begin
        sol_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_3_d0_local = temp_15_reg_3908;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_3_d0_local = temp_7_reg_3833;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_3_d0_local = temp_3_reg_3573;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_3320_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sol_3_we1_local = 1'b1;
    end else begin
        sol_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage6) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
assign add_ln12_10_fu_1558_p2 = (zext_ln12_13_fu_1534_p1 + tmp_8_reg_3041);
assign add_ln12_11_fu_1578_p2 = (zext_ln12_13_fu_1534_p1 + empty_reg_2981);
assign add_ln12_12_fu_1604_p2 = (zext_ln12_17_fu_1600_p1 + tmp_7_reg_2966);
assign add_ln12_13_fu_1638_p2 = (zext_ln12_17_reg_3148 + tmp_8_reg_3041);
assign add_ln12_14_fu_1657_p2 = (zext_ln12_17_reg_3148 + empty_reg_2981);
assign add_ln12_15_fu_1671_p5 = {{{{indvars_iv_next333}, {tmp_1_reg_3013}}, {1'd1}}, {tmp_2_reg_3027}};
assign add_ln12_16_fu_1686_p5 = {{{{tmp_4}, {tmp_1_reg_3013}}, {1'd1}}, {tmp_2_reg_3027}};
assign add_ln12_17_fu_1714_p2 = (zext_ln12_24_fu_1710_p1 + tmp_7_reg_2966);
assign add_ln12_18_fu_1734_p2 = (zext_ln12_24_fu_1710_p1 + tmp_8_reg_3041);
assign add_ln12_19_fu_1754_p2 = (zext_ln12_24_fu_1710_p1 + empty_reg_2981);
assign add_ln12_1_fu_1408_p2 = (or_ln8_cast_reg_2960 + tmp_8_fu_1401_p3);
assign add_ln12_20_fu_1783_p2 = (zext_ln12_28_fu_1779_p1 + tmp_7_reg_2966);
assign add_ln12_21_fu_1827_p2 = (zext_ln12_28_reg_3223 + tmp_8_reg_3041);
assign add_ln12_22_fu_1846_p2 = (zext_ln12_28_reg_3223 + empty_reg_2981);
assign add_ln12_23_fu_1860_p4 = {{{r}, {tmp_1_reg_3013}}, {2'd3}};
assign add_ln12_24_fu_1874_p4 = {{{indvars_iv_next333}, {tmp_1_reg_3013}}, {2'd3}};
assign add_ln12_25_fu_2080_p4 = {{{tmp_4}, {tmp_1_reg_3013}}, {2'd3}};
assign add_ln12_26_fu_1904_p2 = (zext_ln8_fu_1900_p1 + tmp_7_reg_2966);
assign add_ln12_27_fu_1924_p2 = (zext_ln8_fu_1900_p1 + tmp_8_reg_3041);
assign add_ln12_28_fu_1944_p2 = (zext_ln8_fu_1900_p1 + empty_reg_2981);
assign add_ln12_29_fu_1970_p2 = (zext_ln12_38_fu_1966_p1 + tmp_7_reg_2966);
assign add_ln12_2_fu_1428_p2 = (or_ln8_cast_reg_2960 + empty_reg_2981);
assign add_ln12_30_fu_1990_p2 = (zext_ln12_38_fu_1966_p1 + tmp_8_reg_3041);
assign add_ln12_31_fu_2005_p2 = (zext_ln12_38_fu_1966_p1 + empty_reg_2981);
assign add_ln12_3_fu_1352_p2 = (zext_ln12_6_fu_1348_p1 + tmp_7_fu_1305_p3);
assign add_ln12_4_fu_1447_p2 = (zext_ln12_6_reg_2993 + tmp_8_fu_1401_p3);
assign add_ln12_5_fu_1467_p2 = (zext_ln12_6_reg_2993 + empty_reg_2981);
assign add_ln12_6_fu_1538_p2 = (zext_ln12_13_fu_1534_p1 + tmp_7_reg_2966);
assign add_ln12_7_fu_1486_p4 = {{{r}, {tmp_s_reg_3004}}, {1'd1}};
assign add_ln12_8_fu_1500_p4 = {{{indvars_iv_next333}, {tmp_s_reg_3004}}, {1'd1}};
assign add_ln12_9_fu_1513_p4 = {{{tmp_4}, {tmp_s_reg_3004}}, {1'd1}};
assign add_ln12_fu_1313_p2 = (or_ln8_cast_fu_1301_p1 + tmp_7_fu_1305_p3);
assign add_ln12_s_fu_1624_p5 = {{{{r}, {tmp_1_reg_3013}}, {1'd1}}, {tmp_2_reg_3027}};
assign add_ln13_100_fu_2362_p2 = (mul_ln13_109_reg_3618 + mul_ln13_111_reg_3653);
assign add_ln13_101_fu_2366_p2 = (add_ln13_100_fu_2362_p2 + mul_ln13_108_reg_3613);
assign add_ln13_102_fu_2459_p2 = (add_ln13_101_reg_3718 + add_ln13_99_fu_2453_p2);
assign add_ln13_104_fu_2648_p2 = (reg_1169 + reg_1181);
assign add_ln13_105_fu_2654_p2 = (reg_1085 + reg_1105);
assign add_ln13_106_fu_2660_p2 = (add_ln13_105_fu_2654_p2 + add_ln13_104_fu_2648_p2);
assign add_ln13_107_fu_2464_p2 = (reg_1177 + mul_ln13_125_reg_3668);
assign add_ln13_108_fu_2371_p2 = (mul_ln13_118_reg_3658 + mul_ln13_120_reg_3663);
assign add_ln13_109_fu_2375_p2 = (add_ln13_108_fu_2371_p2 + reg_1173);
assign add_ln13_10_fu_2522_p2 = (add_ln13_9_reg_3473 + add_ln13_8_fu_2517_p2);
assign add_ln13_110_fu_2469_p2 = (add_ln13_109_reg_3723 + add_ln13_107_fu_2464_p2);
assign add_ln13_112_fu_2671_p2 = (reg_1177 + reg_1206);
assign add_ln13_113_fu_2677_p2 = (reg_1101 + reg_1202);
assign add_ln13_114_fu_2723_p2 = (add_ln13_113_reg_3873 + add_ln13_112_reg_3868);
assign add_ln13_115_fu_2683_p2 = (mul_ln13_132_reg_3673 + mul_ln13_134_reg_3678);
assign add_ln13_116_fu_2474_p2 = (reg_1185 + reg_1113);
assign add_ln13_117_fu_2480_p2 = (add_ln13_116_fu_2474_p2 + mul_ln13_126_reg_3623);
assign add_ln13_118_fu_2687_p2 = (add_ln13_117_reg_3798 + add_ln13_115_fu_2683_p2);
assign add_ln13_11_fu_2115_p2 = (reg_1077 + reg_1085);
assign add_ln13_120_fu_2692_p2 = (reg_1210 + reg_1113);
assign add_ln13_121_fu_2698_p2 = (reg_1117 + reg_1109);
assign add_ln13_122_fu_2732_p2 = (add_ln13_121_reg_3888 + add_ln13_120_reg_3883);
assign add_ln13_123_fu_2704_p2 = (reg_1121 + mul_ln13_143_reg_3733);
assign add_ln13_124_fu_2485_p2 = (reg_1210 + mul_ln13_138_reg_3728);
assign add_ln13_125_fu_2490_p2 = (add_ln13_124_fu_2485_p2 + mul_ln13_135_reg_3628);
assign add_ln13_126_fu_2709_p2 = (add_ln13_125_reg_3803 + add_ln13_123_fu_2704_p2);
assign add_ln13_12_fu_2020_p2 = (reg_1073 + reg_1145);
assign add_ln13_13_fu_2026_p2 = (add_ln13_12_fu_2020_p2 + reg_1069);
assign add_ln13_14_fu_2121_p2 = (add_ln13_13_reg_3359 + add_ln13_11_fu_2115_p2);
assign add_ln13_16_fu_2283_p2 = (reg_1105 + reg_1225);
assign add_ln13_17_fu_1815_p2 = (reg_1097 + reg_1093);
assign add_ln13_18_fu_2289_p2 = (add_ln13_17_reg_3239 + add_ln13_16_fu_2283_p2);
assign add_ln13_19_fu_2126_p2 = (reg_1101 + reg_1065);
assign add_ln13_1_fu_2500_p2 = (reg_1053 + reg_1229);
assign add_ln13_20_fu_2032_p2 = (reg_1057 + reg_1061);
assign add_ln13_21_fu_2038_p2 = (add_ln13_20_fu_2032_p2 + reg_1089);
assign add_ln13_22_fu_2132_p2 = (add_ln13_21_reg_3364 + add_ln13_19_fu_2126_p2);
assign add_ln13_24_fu_1821_p2 = (reg_1121 + reg_1117);
assign add_ln13_25_fu_2044_p2 = (reg_1157 + reg_1113);
assign add_ln13_26_fu_2188_p2 = (add_ln13_25_reg_3369 + add_ln13_24_reg_3244);
assign add_ln13_27_fu_2137_p2 = (reg_1161 + reg_1165);
assign add_ln13_28_fu_2050_p2 = (reg_1149 + reg_1153);
assign add_ln13_29_fu_2056_p2 = (add_ln13_28_fu_2050_p2 + reg_1109);
assign add_ln13_2_fu_2506_p2 = (add_ln13_1_fu_2500_p2 + add_ln13_fu_2495_p2);
assign add_ln13_30_fu_2143_p2 = (add_ln13_29_reg_3374 + add_ln13_27_fu_2137_p2);
assign add_ln13_32_fu_2062_p2 = (reg_1181 + reg_1173);
assign add_ln13_33_fu_2532_p2 = (reg_1065 + reg_1097);
assign add_ln13_34_fu_2538_p2 = (add_ln13_33_fu_2532_p2 + add_ln13_32_reg_3379);
assign add_ln13_35_fu_2197_p2 = (reg_1177 + reg_1185);
assign add_ln13_36_fu_2148_p2 = (reg_1093 + reg_1061);
assign add_ln13_37_fu_2154_p2 = (add_ln13_36_fu_2148_p2 + reg_1169);
assign add_ln13_38_fu_2203_p2 = (add_ln13_37_reg_3493 + add_ln13_35_fu_2197_p2);
assign add_ln13_3_fu_2098_p2 = (reg_1145 + reg_1053);
assign add_ln13_40_fu_2160_p2 = (mul_ln13_52_reg_3389 + reg_1157);
assign add_ln13_41_fu_2548_p2 = (reg_1149 + reg_1069);
assign add_ln13_42_fu_2554_p2 = (add_ln13_41_fu_2548_p2 + add_ln13_40_reg_3498);
assign add_ln13_43_fu_2208_p2 = (reg_1121 + reg_1198);
assign add_ln13_44_fu_2165_p2 = (mul_ln13_46_reg_3384 + reg_1073);
assign add_ln13_45_fu_2170_p2 = (add_ln13_44_fu_2165_p2 + reg_1117);
assign add_ln13_46_fu_2214_p2 = (add_ln13_45_reg_3503 + add_ln13_43_fu_2208_p2);
assign add_ln13_48_fu_2219_p2 = (reg_1057 + reg_1173);
assign add_ln13_49_fu_2225_p2 = (reg_1053 + reg_1206);
assign add_ln13_4_fu_1803_p2 = (reg_1065 + reg_1057);
assign add_ln13_50_fu_2564_p2 = (add_ln13_49_reg_3593 + add_ln13_48_reg_3588);
assign add_ln13_51_fu_2381_p2 = (mul_ln13_60_reg_3399 + reg_1109);
assign add_ln13_52_fu_2299_p2 = (reg_1202 + reg_1065);
assign add_ln13_53_fu_2305_p2 = (add_ln13_52_fu_2299_p2 + reg_1089);
assign add_ln13_54_fu_2386_p2 = (add_ln13_53_reg_3688 + add_ln13_51_fu_2381_p2);
assign add_ln13_56_fu_2259_p2 = (reg_1053 + reg_1149);
assign add_ln13_57_fu_2231_p2 = (reg_1073 + reg_1065);
assign add_ln13_58_fu_2573_p2 = (add_ln13_57_reg_3598 + add_ln13_56_reg_3638);
assign add_ln13_59_fu_2391_p2 = (mul_ln13_69_reg_3409 + reg_1073);
assign add_ln13_5_fu_1809_p2 = (add_ln13_4_fu_1803_p2 + reg_1061);
assign add_ln13_60_fu_2311_p2 = (reg_1061 + reg_1149);
assign add_ln13_61_fu_2317_p2 = (add_ln13_60_fu_2311_p2 + reg_1113);
assign add_ln13_62_fu_2396_p2 = (add_ln13_61_reg_3693 + add_ln13_59_fu_2391_p2);
assign add_ln13_64_fu_2265_p2 = (reg_1065 + reg_1225);
assign add_ln13_65_fu_2582_p2 = (reg_1073 + reg_1057);
assign add_ln13_66_fu_2588_p2 = (add_ln13_65_fu_2582_p2 + add_ln13_64_reg_3643);
assign add_ln13_67_fu_2323_p2 = (reg_1085 + reg_1157);
assign add_ln13_68_fu_2237_p2 = (reg_1077 + reg_1081);
assign add_ln13_69_fu_2243_p2 = (add_ln13_68_fu_2237_p2 + reg_1210);
assign add_ln13_6_fu_2104_p2 = (add_ln13_5_reg_3234 + add_ln13_3_fu_2098_p2);
assign add_ln13_70_fu_2329_p2 = (add_ln13_69_reg_3603 + add_ln13_67_fu_2323_p2);
assign add_ln13_72_fu_2334_p2 = (reg_1161 + reg_1077);
assign add_ln13_73_fu_2598_p2 = (reg_1077 + mul_ln13_83_reg_3608);
assign add_ln13_74_fu_2603_p2 = (add_ln13_73_fu_2598_p2 + add_ln13_72_reg_3703);
assign add_ln13_75_fu_2340_p2 = (reg_1221 + reg_1101);
assign add_ln13_76_fu_2271_p2 = (reg_1093 + reg_1073);
assign add_ln13_77_fu_2277_p2 = (add_ln13_76_fu_2271_p2 + reg_1169);
assign add_ln13_78_fu_2346_p2 = (add_ln13_77_reg_3648 + add_ln13_75_fu_2340_p2);
assign add_ln13_80_fu_2401_p2 = (reg_1065 + reg_1229);
assign add_ln13_81_fu_2407_p2 = (reg_1061 + reg_1198);
assign add_ln13_82_fu_2613_p2 = (add_ln13_81_reg_3758 + add_ln13_80_reg_3753);
assign add_ln13_83_fu_2413_p2 = (mul_ln13_96_reg_3532 + reg_1081);
assign add_ln13_84_fu_2351_p2 = (reg_1181 + reg_1169);
assign add_ln13_85_fu_2357_p2 = (add_ln13_84_fu_2351_p2 + mul_ln13_90_reg_3527);
assign add_ln13_86_fu_2418_p2 = (add_ln13_85_reg_3713 + add_ln13_83_fu_2413_p2);
assign add_ln13_88_fu_2423_p2 = (reg_1085 + reg_1077);
assign add_ln13_89_fu_2429_p2 = (reg_1161 + reg_1149);
assign add_ln13_8_fu_2517_p2 = (mul_ln13_11_reg_3633 + reg_1061);
assign add_ln13_90_fu_2714_p2 = (add_ln13_89_reg_3773 + add_ln13_88_reg_3768);
assign add_ln13_91_fu_2622_p2 = (mul_ln13_105_reg_3542 + reg_1093);
assign add_ln13_92_fu_2435_p2 = (reg_1165 + reg_1153);
assign add_ln13_93_fu_2441_p2 = (add_ln13_92_fu_2435_p2 + reg_1117);
assign add_ln13_94_fu_2627_p2 = (add_ln13_93_reg_3778 + add_ln13_91_fu_2622_p2);
assign add_ln13_96_fu_2447_p2 = (reg_1221 + reg_1202);
assign add_ln13_97_fu_2632_p2 = (reg_1081 + reg_1089);
assign add_ln13_98_fu_2638_p2 = (add_ln13_97_fu_2632_p2 + add_ln13_96_reg_3783);
assign add_ln13_99_fu_2453_p2 = (reg_1206 + reg_1101);
assign add_ln13_9_fu_2109_p2 = (reg_1057 + reg_1081);
assign add_ln13_fu_2495_p2 = (mul_ln13_2_reg_3738 + reg_1145);
assign add_ln5_1_fu_1278_p3 = {{tmp_4}, {lshr_ln_fu_1241_p4}};
assign add_ln5_fu_1264_p3 = {{indvars_iv_next333}, {lshr_ln_fu_1241_p4}};
assign add_ln8_fu_2249_p2 = (c_1_reg_2903 + 6'd16);
assign add_ln_fu_1251_p3 = {{r}, {lshr_ln_fu_1241_p4}};
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
assign empty_fu_1334_p2 = (tmp + 13'd130);
assign icmp_ln8_fu_1894_p2 = ((or_ln8_6_fu_1887_p3 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln12_10_fu_1642_p4 = {{add_ln12_13_fu_1638_p2[12:2]}};
assign lshr_ln12_12_fu_1719_p4 = {{add_ln12_17_fu_1714_p2[12:2]}};
assign lshr_ln12_13_fu_1739_p4 = {{add_ln12_18_fu_1734_p2[12:2]}};
assign lshr_ln12_15_fu_1788_p4 = {{add_ln12_20_fu_1783_p2[12:2]}};
assign lshr_ln12_16_fu_1831_p4 = {{add_ln12_21_fu_1827_p2[12:2]}};
assign lshr_ln12_18_fu_1909_p4 = {{add_ln12_26_fu_1904_p2[12:2]}};
assign lshr_ln12_19_fu_1929_p4 = {{add_ln12_27_fu_1924_p2[12:2]}};
assign lshr_ln12_1_fu_1319_p4 = {{add_ln12_fu_1313_p2[12:2]}};
assign lshr_ln12_21_fu_1975_p4 = {{add_ln12_29_fu_1970_p2[12:2]}};
assign lshr_ln12_2_fu_1413_p4 = {{add_ln12_1_fu_1408_p2[12:2]}};
assign lshr_ln12_3_fu_1432_p4 = {{add_ln12_2_fu_1428_p2[12:2]}};
assign lshr_ln12_4_fu_1358_p4 = {{add_ln12_3_fu_1352_p2[12:2]}};
assign lshr_ln12_5_fu_1452_p4 = {{add_ln12_4_fu_1447_p2[12:2]}};
assign lshr_ln12_6_fu_1471_p4 = {{add_ln12_5_fu_1467_p2[12:2]}};
assign lshr_ln12_7_fu_1543_p4 = {{add_ln12_6_fu_1538_p2[12:2]}};
assign lshr_ln12_8_fu_1563_p4 = {{add_ln12_10_fu_1558_p2[12:2]}};
assign lshr_ln12_s_fu_1609_p4 = {{add_ln12_12_fu_1604_p2[12:2]}};
assign lshr_ln_fu_1241_p4 = {{ap_sig_allocacmp_c_1[5:2]}};
assign or_ln8_1_fu_1340_p3 = {{lshr_ln_fu_1241_p4}, {2'd3}};
assign or_ln8_2_fu_1527_p3 = {{tmp_s_reg_3004}, {3'd6}};
assign or_ln8_3_fu_1593_p3 = {{tmp_s_reg_3004}, {3'd7}};
assign or_ln8_4_fu_1700_p5 = {{{{tmp_1_reg_3013}, {1'd1}}, {tmp_2_reg_3027}}, {2'd2}};
assign or_ln8_5_fu_1769_p5 = {{{{tmp_1_reg_3013}, {1'd1}}, {tmp_2_reg_3027}}, {2'd3}};
assign or_ln8_6_fu_1887_p3 = {{tmp_1_reg_3013}, {4'd14}};
assign or_ln8_7_fu_1959_p3 = {{tmp_1_reg_3013}, {4'd15}};
assign or_ln8_cast_fu_1301_p1 = or_ln8_fu_1293_p3;
assign or_ln8_fu_1293_p3 = {{lshr_ln_fu_1241_p4}, {2'd2}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_address1 = sol_0_address1_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_ce1 = sol_0_ce1_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_d1 = sol_0_d1_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_0_we1 = sol_0_we1_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_address1 = sol_1_address1_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_ce1 = sol_1_ce1_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_d1 = sol_1_d1_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_1_we1 = sol_1_we1_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_address1 = sol_2_address1_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_ce1 = sol_2_ce1_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_d1 = sol_2_d1_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_2_we1 = sol_2_we1_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_address1 = zext_ln12_21_reg_3159_pp0_iter1_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_ce1 = sol_3_ce1_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_d1 = temp_11_reg_3898;
assign sol_3_we0 = sol_3_we0_local;
assign sol_3_we1 = sol_3_we1_local;
assign temp_10_fu_2617_p2 = (add_ln13_86_reg_3763 + add_ln13_82_fu_2613_p2);
assign temp_11_fu_2718_p2 = (add_ln13_94_reg_3853 + add_ln13_90_fu_2714_p2);
assign temp_12_fu_2643_p2 = (add_ln13_102_reg_3788 + add_ln13_98_fu_2638_p2);
assign temp_13_fu_2666_p2 = (add_ln13_110_reg_3793 + add_ln13_106_fu_2660_p2);
assign temp_14_fu_2727_p2 = (add_ln13_118_reg_3878 + add_ln13_114_fu_2723_p2);
assign temp_15_fu_2736_p2 = (add_ln13_126_reg_3893 + add_ln13_122_fu_2732_p2);
assign temp_1_fu_2527_p2 = (add_ln13_14_reg_3478 + add_ln13_10_fu_2522_p2);
assign temp_2_fu_2294_p2 = (add_ln13_22_reg_3483 + add_ln13_18_fu_2289_p2);
assign temp_3_fu_2192_p2 = (add_ln13_30_reg_3488 + add_ln13_26_fu_2188_p2);
assign temp_4_fu_2543_p2 = (add_ln13_38_reg_3578 + add_ln13_34_fu_2538_p2);
assign temp_5_fu_2559_p2 = (add_ln13_46_reg_3583 + add_ln13_42_fu_2554_p2);
assign temp_6_fu_2568_p2 = (add_ln13_54_reg_3743 + add_ln13_50_fu_2564_p2);
assign temp_7_fu_2577_p2 = (add_ln13_62_reg_3748 + add_ln13_58_fu_2573_p2);
assign temp_8_fu_2593_p2 = (add_ln13_70_reg_3698 + add_ln13_66_fu_2588_p2);
assign temp_9_fu_2608_p2 = (add_ln13_78_reg_3708 + add_ln13_74_fu_2603_p2);
assign temp_fu_2512_p2 = (add_ln13_6_reg_3468 + add_ln13_2_fu_2506_p2);
assign tmp_7_fu_1305_p3 = {{r}, {6'd2}};
assign tmp_8_fu_1401_p3 = {{indvars_iv_next333}, {6'd2}};
assign zext_ln12_10_fu_1494_p1 = add_ln12_7_fu_1486_p4;
assign zext_ln12_11_fu_1508_p1 = add_ln12_8_fu_1500_p4;
assign zext_ln12_12_fu_1521_p1 = add_ln12_9_fu_1513_p4;
assign zext_ln12_13_fu_1534_p1 = or_ln8_2_fu_1527_p3;
assign zext_ln12_14_fu_1553_p1 = lshr_ln12_7_fu_1543_p4;
assign zext_ln12_15_fu_1573_p1 = lshr_ln12_8_fu_1563_p4;
assign zext_ln12_16_fu_2068_p1 = lshr_ln12_9_reg_3143;
assign zext_ln12_17_fu_1600_p1 = or_ln8_3_fu_1593_p3;
assign zext_ln12_18_fu_1619_p1 = lshr_ln12_s_fu_1609_p4;
assign zext_ln12_19_fu_1652_p1 = lshr_ln12_10_fu_1642_p4;
assign zext_ln12_1_fu_1272_p1 = add_ln5_fu_1264_p3;
assign zext_ln12_20_fu_2072_p1 = lshr_ln12_11_reg_3178;
assign zext_ln12_21_fu_1633_p1 = add_ln12_s_fu_1624_p5;
assign zext_ln12_22_fu_1680_p1 = add_ln12_15_fu_1671_p5;
assign zext_ln12_23_fu_1695_p1 = add_ln12_16_fu_1686_p5;
assign zext_ln12_24_fu_1710_p1 = or_ln8_4_fu_1700_p5;
assign zext_ln12_25_fu_1729_p1 = lshr_ln12_12_fu_1719_p4;
assign zext_ln12_26_fu_1749_p1 = lshr_ln12_13_fu_1739_p4;
assign zext_ln12_27_fu_2076_p1 = lshr_ln12_14_reg_3218;
assign zext_ln12_28_fu_1779_p1 = or_ln8_5_fu_1769_p5;
assign zext_ln12_29_fu_1798_p1 = lshr_ln12_15_fu_1788_p4;
assign zext_ln12_2_fu_1286_p1 = add_ln5_1_fu_1278_p3;
assign zext_ln12_30_fu_1841_p1 = lshr_ln12_16_fu_1831_p4;
assign zext_ln12_31_fu_2176_p1 = lshr_ln12_17_reg_3287;
assign zext_ln12_32_fu_1868_p1 = add_ln12_23_fu_1860_p4;
assign zext_ln12_33_fu_1882_p1 = add_ln12_24_fu_1874_p4;
assign zext_ln12_34_fu_2088_p1 = add_ln12_25_fu_2080_p4;
assign zext_ln12_35_fu_1919_p1 = lshr_ln12_18_fu_1909_p4;
assign zext_ln12_36_fu_1939_p1 = lshr_ln12_19_fu_1929_p4;
assign zext_ln12_37_fu_2180_p1 = lshr_ln12_20_reg_3334;
assign zext_ln12_38_fu_1966_p1 = or_ln8_7_fu_1959_p3;
assign zext_ln12_39_fu_1985_p1 = lshr_ln12_21_fu_1975_p4;
assign zext_ln12_3_fu_1329_p1 = lshr_ln12_1_fu_1319_p4;
assign zext_ln12_40_fu_2094_p1 = lshr_ln12_22_reg_3344;
assign zext_ln12_41_fu_2184_p1 = lshr_ln12_23_reg_3349;
assign zext_ln12_4_fu_1423_p1 = lshr_ln12_2_fu_1413_p4;
assign zext_ln12_5_fu_1442_p1 = lshr_ln12_3_fu_1432_p4;
assign zext_ln12_6_fu_1348_p1 = or_ln8_1_fu_1340_p3;
assign zext_ln12_7_fu_1368_p1 = lshr_ln12_4_fu_1358_p4;
assign zext_ln12_8_fu_1462_p1 = lshr_ln12_5_fu_1452_p4;
assign zext_ln12_9_fu_1481_p1 = lshr_ln12_6_fu_1471_p4;
assign zext_ln12_fu_1259_p1 = add_ln_fu_1251_p3;
assign zext_ln8_fu_1900_p1 = or_ln8_6_fu_1887_p3;
always @ (posedge ap_clk) begin
    zext_ln12_reg_2908[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2908_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_2919[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_2930[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    or_ln8_cast_reg_2960[1:0] <= 2'b10;
    or_ln8_cast_reg_2960[12:6] <= 7'b0000000;
    tmp_7_reg_2966[5:0] <= 6'b000010;
    zext_ln12_6_reg_2993[1:0] <= 2'b11;
    zext_ln12_6_reg_2993[12:6] <= 7'b0000000;
    tmp_8_reg_3041[5:0] <= 6'b000010;
    zext_ln12_10_reg_3071[0] <= 1'b1;
    zext_ln12_10_reg_3071[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_10_reg_3071_pp0_iter1_reg[0] <= 1'b1;
    zext_ln12_10_reg_3071_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_11_reg_3084[0] <= 1'b1;
    zext_ln12_11_reg_3084[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_17_reg_3148[2:0] <= 3'b111;
    zext_ln12_17_reg_3148[12:6] <= 7'b0000000;
    zext_ln12_21_reg_3159[1] <= 1'b1;
    zext_ln12_21_reg_3159[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_21_reg_3159_pp0_iter1_reg[1] <= 1'b1;
    zext_ln12_21_reg_3159_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_23_reg_3188[1] <= 1'b1;
    zext_ln12_23_reg_3188[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_28_reg_3223[1:0] <= 2'b11;
    zext_ln12_28_reg_3223[3:3] <= 1'b1;
    zext_ln12_28_reg_3223[12:6] <= 7'b0000000;
    zext_ln12_32_reg_3292[1:0] <= 2'b11;
    zext_ln12_32_reg_3292[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_32_reg_3292_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln12_32_reg_3292_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_33_reg_3305[1:0] <= 2'b11;
    zext_ln12_33_reg_3305[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 
