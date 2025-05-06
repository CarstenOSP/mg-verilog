
module fft1D_512_fft1D_512_Pipeline_loop4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,grp_fu_389_p_din0,grp_fu_389_p_din1,grp_fu_389_p_dout0,grp_fu_389_p_ce,grp_fu_393_p_din0,grp_fu_393_p_din1,grp_fu_393_p_dout0,grp_fu_393_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [7:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] smem_address1;
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
output  [31:0] grp_fu_389_p_din0;
output  [33:0] grp_fu_389_p_din1;
input  [64:0] grp_fu_389_p_dout0;
output   grp_fu_389_p_ce;
output  [31:0] grp_fu_393_p_din0;
output  [33:0] grp_fu_393_p_din1;
input  [64:0] grp_fu_393_p_dout0;
output   grp_fu_393_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_2536;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1253;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_1263;
reg   [63:0] reg_1273;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_1283;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_1294;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_1304;
reg   [63:0] reg_1312;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_1322;
reg   [63:0] reg_1329;
reg   [6:0] tid_reg_2529;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_2536_pp0_iter1_reg;
wire   [5:0] offset_fu_1356_p1;
reg   [5:0] offset_reg_2540;
reg   [5:0] offset_reg_2540_pp0_iter1_reg;
wire   [31:0] offset_6_fu_1380_p5;
reg   [31:0] offset_6_reg_2553;
reg   [31:0] offset_6_reg_2553_pp0_iter1_reg;
wire   [4:0] tmp_41_fu_1403_p4;
reg   [4:0] tmp_41_reg_2566;
reg   [4:0] tmp_41_reg_2566_pp0_iter1_reg;
wire   [5:0] offset_4_fu_1412_p3;
reg   [5:0] offset_4_reg_2574;
reg   [5:0] offset_4_reg_2574_pp0_iter1_reg;
wire   [3:0] tmp_s_fu_1426_p4;
reg   [3:0] tmp_s_reg_2583;
reg   [3:0] tmp_s_reg_2583_pp0_iter1_reg;
wire   [5:0] offset_5_fu_1435_p3;
reg   [5:0] offset_5_reg_2597;
reg   [5:0] offset_5_reg_2597_pp0_iter1_reg;
wire   [1:0] trunc_ln172_fu_1459_p1;
reg   [1:0] trunc_ln172_reg_2606;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [1:0] trunc_ln172_4_fu_1463_p1;
reg   [1:0] trunc_ln172_4_reg_2610;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [1:0] trunc_ln172_5_fu_1467_p1;
reg   [1:0] trunc_ln172_5_reg_2614;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [1:0] trunc_ln172_5_reg_2614_pp0_iter1_reg;
wire   [8:0] zext_ln172_19_fu_1471_p1;
reg   [8:0] zext_ln172_19_reg_2618;
reg   [4:0] tmp_80_reg_2624;
wire   [8:0] zext_ln172_23_fu_1506_p1;
reg   [8:0] zext_ln172_23_reg_2639;
reg   [4:0] tmp_88_reg_2645;
wire   [8:0] add_ln210_1_fu_1541_p2;
reg   [8:0] add_ln210_1_reg_2660;
wire   [8:0] add_ln210_fu_1547_p2;
reg   [8:0] add_ln210_reg_2665;
reg   [5:0] tmp_82_reg_2675;
reg   [7:0] tmp_89_reg_2685;
reg   [7:0] tmp_81_reg_2700;
wire   [8:0] add_ln212_fu_1648_p2;
reg   [8:0] add_ln212_reg_2705;
reg   [5:0] tmp_90_reg_2720;
wire   [8:0] add_ln212_1_fu_1695_p2;
reg   [8:0] add_ln212_1_reg_2725;
reg   [7:0] tmp_83_reg_2740;
reg   [7:0] tmp_86_reg_2750;
reg   [7:0] tmp_91_reg_2760;
reg   [63:0] DATA_y_1_load_2_reg_2775;
reg   [6:0] tmp_84_reg_2782;
wire   [7:0] add_ln214_fu_1836_p2;
reg   [7:0] add_ln214_reg_2787;
reg   [6:0] tmp_92_reg_2792;
wire   [7:0] add_ln214_1_fu_1877_p2;
reg   [7:0] add_ln214_1_reg_2797;
reg   [7:0] tmp_94_reg_2802;
wire   [7:0] zext_ln172_26_fu_1892_p1;
reg   [7:0] zext_ln172_26_reg_2807;
wire   [63:0] zext_ln211_6_fu_1915_p1;
reg   [63:0] zext_ln211_6_reg_2823;
wire   [63:0] zext_ln209_3_fu_1927_p1;
reg   [63:0] zext_ln209_3_reg_2833;
reg   [63:0] DATA_y_load_7_reg_2843;
reg   [63:0] DATA_y_1_load_7_reg_2850;
reg   [7:0] tmp_85_reg_2857;
reg   [8:0] tmp_87_reg_2862;
reg   [7:0] tmp_93_reg_2867;
wire   [8:0] zext_ln172_27_fu_1999_p1;
reg   [8:0] zext_ln172_27_reg_2872;
wire   [63:0] zext_ln215_6_fu_2022_p1;
reg   [63:0] zext_ln215_6_reg_2893;
reg   [63:0] DATA_y_load_12_reg_2903;
reg   [63:0] DATA_y_1_load_9_reg_2910;
reg   [8:0] tmp_95_reg_2917;
reg   [4:0] tmp_96_reg_2922;
wire   [8:0] add_ln210_2_fu_2070_p2;
reg   [8:0] add_ln210_2_reg_2927;
wire   [8:0] add_ln212_2_fu_2075_p2;
reg   [8:0] add_ln212_2_reg_2932;
wire   [64:0] zext_ln172_29_fu_2080_p1;
reg   [63:0] DATA_y_load_9_reg_2962;
reg   [63:0] DATA_y_load_10_reg_2969;
reg   [7:0] tmp_97_reg_2976;
reg   [6:0] tmp_98_reg_2981;
reg   [7:0] tmp_99_reg_2986;
wire   [7:0] add_ln214_2_fu_2156_p2;
reg   [7:0] add_ln214_2_reg_2991;
reg   [7:0] smem_addr_69_reg_2996;
reg   [7:0] smem_1_addr_69_reg_3001;
reg   [7:0] smem_2_addr_69_reg_3006;
reg   [63:0] DATA_y_1_load_12_reg_3031;
reg   [63:0] DATA_y_1_load_13_reg_3038;
reg   [6:0] tmp_100_reg_3045;
reg   [7:0] tmp_101_reg_3050;
reg   [7:0] tmp_102_reg_3055;
wire   [31:0] add_ln210_3_fu_2263_p2;
reg   [31:0] add_ln210_3_reg_3060;
wire   [31:0] add_ln211_1_fu_2268_p2;
reg   [31:0] add_ln211_1_reg_3065;
reg   [63:0] DATA_y_load_15_reg_3070;
reg   [63:0] DATA_y_1_load_15_reg_3077;
reg   [8:0] tmp_103_reg_3084;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [64:0] zext_ln210_7_fu_2294_p1;
wire   [64:0] zext_ln211_11_fu_2298_p1;
wire   [31:0] add_ln212_3_fu_2302_p2;
reg   [31:0] add_ln212_3_reg_3099;
wire   [31:0] add_ln213_3_fu_2307_p2;
reg   [31:0] add_ln213_3_reg_3104;
reg   [7:0] smem_addr_70_reg_3109;
reg   [7:0] smem_1_addr_70_reg_3114;
reg   [7:0] smem_2_addr_70_reg_3119;
reg   [7:0] smem_addr_71_reg_3124;
reg   [7:0] smem_1_addr_71_reg_3129;
reg   [7:0] smem_2_addr_71_reg_3134;
wire   [64:0] zext_ln212_7_fu_2338_p1;
wire   [64:0] zext_ln213_11_fu_2342_p1;
wire   [31:0] add_ln214_3_fu_2346_p2;
reg   [31:0] add_ln214_3_reg_3149;
wire   [31:0] add_ln215_3_fu_2351_p2;
reg   [31:0] add_ln215_3_reg_3154;
wire   [1:0] trunc_ln172_6_fu_2362_p1;
reg   [1:0] trunc_ln172_6_reg_3159;
reg   [7:0] smem_addr_72_reg_3163;
reg   [7:0] smem_1_addr_72_reg_3168;
reg   [7:0] smem_2_addr_72_reg_3173;
reg   [7:0] smem_addr_73_reg_3178;
reg   [7:0] smem_1_addr_73_reg_3183;
reg   [7:0] smem_2_addr_73_reg_3188;
wire   [64:0] zext_ln214_7_fu_2380_p1;
wire   [64:0] zext_ln215_11_fu_2384_p1;
wire   [31:0] add_ln216_3_fu_2388_p2;
reg   [31:0] add_ln216_3_reg_3203;
reg   [7:0] smem_addr_74_reg_3208;
reg   [7:0] smem_1_addr_74_reg_3213;
reg   [7:0] smem_2_addr_74_reg_3218;
reg   [7:0] smem_addr_75_reg_3223;
reg   [7:0] smem_1_addr_75_reg_3228;
reg   [7:0] smem_2_addr_75_reg_3233;
wire   [64:0] zext_ln216_7_fu_2407_p1;
reg   [7:0] smem_addr_76_reg_3243;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [7:0] smem_1_addr_76_reg_3248;
reg   [7:0] smem_2_addr_76_reg_3253;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln209_fu_1500_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln209_1_fu_1535_p1;
wire   [63:0] zext_ln211_4_fu_1559_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln211_5_fu_1620_p1;
wire   [63:0] zext_ln213_4_fu_1660_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln213_5_fu_1707_p1;
wire   [63:0] zext_ln172_8_fu_1713_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln215_4_fu_1745_p1;
wire   [63:0] zext_ln172_9_fu_1763_p1;
wire   [63:0] zext_ln215_5_fu_1795_p1;
wire   [63:0] zext_ln211_fu_1804_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln210_1_fu_1845_p1;
wire   [63:0] zext_ln209_2_fu_1902_p1;
wire   [63:0] zext_ln210_fu_1932_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln211_1_fu_1970_p1;
wire   [63:0] zext_ln213_6_fu_2009_p1;
wire   [63:0] zext_ln212_fu_2027_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln212_1_fu_2033_p1;
wire   [63:0] zext_ln211_7_fu_2091_p1;
wire   [63:0] zext_ln213_fu_2097_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln213_1_fu_2103_p1;
wire   [63:0] zext_ln172_11_fu_2161_p1;
wire   [63:0] zext_ln213_7_fu_2175_p1;
wire   [63:0] zext_ln215_7_fu_2188_p1;
wire   [63:0] zext_ln215_fu_2194_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln214_1_fu_2200_p1;
wire   [63:0] zext_ln214_fu_2273_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln215_1_fu_2279_p1;
wire   [63:0] zext_ln216_fu_2312_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln172_10_fu_2318_p1;
wire   [63:0] zext_ln210_3_fu_2324_p1;
wire   [63:0] zext_ln211_3_fu_2331_p1;
wire   [63:0] zext_ln216_1_fu_2356_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln212_3_fu_2366_p1;
wire   [63:0] zext_ln213_3_fu_2373_p1;
wire   [63:0] zext_ln214_3_fu_2393_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln215_3_fu_2400_p1;
wire   [63:0] zext_ln210_2_fu_2411_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln216_3_fu_2417_p1;
wire   [63:0] zext_ln211_2_fu_2424_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln212_2_fu_2430_p1;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln213_2_fu_2436_p1;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln214_2_fu_2442_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln215_2_fu_2448_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln216_2_fu_2454_p1;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19;
reg   [6:0] tid_3_fu_174;
wire   [6:0] add_ln204_fu_1449_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage18_11001;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage20;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_block_pp0_stage21;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage23;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg   [31:0] grp_fu_1223_p0;
reg   [31:0] grp_fu_1228_p0;
wire   [0:0] tmp_104_fu_1364_p3;
wire   [31:0] zext_ln205_fu_1360_p1;
wire   [2:0] or_ln18_fu_1372_p3;
wire   [31:0] grp_fu_1392_p0;
wire   [2:0] grp_fu_1392_p1;
wire   [2:0] grp_fu_1398_p1;
wire   [5:0] grp_fu_1420_p0;
wire   [2:0] grp_fu_1420_p1;
wire   [5:0] grp_fu_1443_p0;
wire   [2:0] grp_fu_1443_p1;
wire   [1:0] grp_fu_1398_p2;
wire   [1:0] grp_fu_1420_p2;
wire   [1:0] grp_fu_1443_p2;
wire   [5:0] mul_ln172_fu_1477_p0;
wire   [7:0] mul_ln172_fu_1477_p1;
wire   [12:0] mul_ln172_fu_1477_p2;
wire   [7:0] shl_ln3_fu_1493_p3;
wire   [5:0] mul_ln172_4_fu_1512_p0;
wire   [7:0] mul_ln172_4_fu_1512_p1;
wire   [12:0] mul_ln172_4_fu_1512_p2;
wire   [7:0] shl_ln209_1_fu_1528_p3;
wire   [7:0] or_ln_fu_1552_p3;
wire   [6:0] zext_ln211_8_cast_fu_1565_p4;
wire   [6:0] mul_ln211_fu_1578_p0;
wire   [8:0] mul_ln211_fu_1578_p1;
wire   [14:0] mul_ln211_fu_1578_p2;
wire   [8:0] mul_ln210_1_fu_1597_p0;
wire   [10:0] mul_ln210_1_fu_1597_p1;
wire   [18:0] mul_ln210_1_fu_1597_p2;
wire   [7:0] or_ln211_1_fu_1613_p3;
wire   [8:0] mul_ln210_fu_1632_p0;
wire   [10:0] mul_ln210_fu_1632_p1;
wire   [18:0] mul_ln210_fu_1632_p2;
wire   [7:0] or_ln15_fu_1653_p3;
wire   [6:0] zext_ln211_9_cast_fu_1666_p4;
wire   [6:0] mul_ln211_1_fu_1679_p0;
wire   [8:0] mul_ln211_1_fu_1679_p1;
wire   [14:0] mul_ln211_1_fu_1679_p2;
wire   [7:0] or_ln213_1_fu_1700_p3;
wire   [8:0] mul_ln212_fu_1722_p0;
wire   [10:0] mul_ln212_fu_1722_p1;
wire   [18:0] mul_ln212_fu_1722_p2;
wire   [7:0] or_ln16_fu_1738_p3;
wire   [18:0] tmp_86_fu_1751_p1;
wire  signed [18:0] grp_fu_2460_p3;
wire   [8:0] mul_ln212_1_fu_1772_p0;
wire   [10:0] mul_ln212_1_fu_1772_p1;
wire   [18:0] mul_ln212_1_fu_1772_p2;
wire   [7:0] or_ln215_1_fu_1788_p3;
wire   [7:0] zext_ln172_18_fu_1801_p1;
wire   [7:0] add_ln213_fu_1810_p2;
wire   [7:0] mul_ln213_fu_1820_p0;
wire   [9:0] mul_ln213_fu_1820_p1;
wire   [16:0] mul_ln213_fu_1820_p2;
wire   [7:0] zext_ln172_22_fu_1842_p1;
wire   [7:0] add_ln213_1_fu_1851_p2;
wire   [7:0] mul_ln213_1_fu_1861_p0;
wire   [9:0] mul_ln213_1_fu_1861_p1;
wire   [16:0] mul_ln213_1_fu_1861_p2;
wire   [18:0] tmp_94_fu_1883_p1;
wire  signed [18:0] grp_fu_2469_p3;
wire   [7:0] or_ln17_fu_1895_p3;
wire   [7:0] or_ln211_2_fu_1908_p3;
wire   [7:0] shl_ln209_2_fu_1920_p3;
wire  signed [8:0] sext_ln214_fu_1938_p1;
wire   [8:0] mul_ln214_fu_1945_p0;
wire   [10:0] mul_ln214_fu_1945_p1;
wire   [18:0] mul_ln214_fu_1945_p2;
wire   [20:0] tmp_87_fu_1961_p1;
wire  signed [20:0] grp_fu_2477_p3;
wire  signed [8:0] sext_ln214_1_fu_1976_p1;
wire   [8:0] mul_ln214_1_fu_1983_p0;
wire   [10:0] mul_ln214_1_fu_1983_p1;
wire   [18:0] mul_ln214_1_fu_1983_p2;
wire   [7:0] or_ln213_2_fu_2002_p3;
wire   [7:0] or_ln215_2_fu_2015_p3;
wire   [20:0] tmp_95_fu_2039_p1;
wire  signed [20:0] grp_fu_2486_p3;
wire   [5:0] mul_ln172_5_fu_2054_p0;
wire   [7:0] mul_ln172_5_fu_2054_p1;
wire   [12:0] mul_ln172_5_fu_2054_p2;
wire   [7:0] or_ln211_3_fu_2084_p3;
wire   [8:0] mul_ln210_2_fu_2112_p0;
wire   [10:0] mul_ln210_2_fu_2112_p1;
wire   [18:0] mul_ln210_2_fu_2112_p2;
wire   [16:0] tmp_98_fu_2128_p1;
wire  signed [16:0] grp_fu_2495_p3;
wire   [8:0] mul_ln212_2_fu_2140_p0;
wire   [10:0] mul_ln212_2_fu_2140_p1;
wire   [18:0] mul_ln212_2_fu_2140_p2;
wire   [30:0] grp_fu_1233_p4;
wire   [7:0] or_ln213_3_fu_2168_p3;
wire   [7:0] or_ln215_3_fu_2181_p3;
wire   [7:0] add_ln213_2_fu_2206_p2;
wire   [7:0] mul_ln213_2_fu_2215_p0;
wire   [9:0] mul_ln213_2_fu_2215_p1;
wire   [16:0] mul_ln213_2_fu_2215_p2;
wire  signed [8:0] sext_ln214_2_fu_2231_p1;
wire   [8:0] mul_ln214_2_fu_2238_p0;
wire   [10:0] mul_ln214_2_fu_2238_p1;
wire   [18:0] mul_ln214_2_fu_2238_p2;
wire   [18:0] tmp_102_fu_2254_p1;
wire  signed [18:0] grp_fu_2504_p3;
wire   [20:0] tmp_103_fu_2285_p1;
wire  signed [20:0] grp_fu_2513_p3;
wire   [30:0] grp_fu_1243_p4;
wire   [1:0] grp_fu_1392_p2;
wire   [5:0] grp_fu_2460_p0;
wire   [7:0] grp_fu_2460_p1;
wire   [9:0] grp_fu_2460_p2;
wire   [5:0] grp_fu_2469_p0;
wire   [7:0] grp_fu_2469_p1;
wire   [9:0] grp_fu_2469_p2;
wire   [5:0] grp_fu_2477_p0;
wire   [8:0] grp_fu_2477_p1;
wire   [10:0] grp_fu_2477_p2;
wire   [5:0] grp_fu_2486_p0;
wire   [8:0] grp_fu_2486_p1;
wire   [10:0] grp_fu_2486_p2;
wire   [5:0] grp_fu_2495_p0;
wire   [6:0] grp_fu_2495_p1;
wire   [8:0] grp_fu_2495_p2;
wire   [5:0] grp_fu_2504_p0;
wire   [7:0] grp_fu_2504_p1;
wire   [9:0] grp_fu_2504_p2;
wire   [5:0] grp_fu_2513_p0;
wire   [8:0] grp_fu_2513_p1;
wire   [10:0] grp_fu_2513_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [23:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] grp_fu_2460_p00;
wire   [9:0] grp_fu_2477_p00;
wire   [9:0] grp_fu_2486_p00;
wire   [7:0] grp_fu_2495_p00;
wire   [8:0] grp_fu_2504_p00;
wire   [9:0] grp_fu_2513_p00;
wire   [12:0] mul_ln172_4_fu_1512_p00;
wire   [12:0] mul_ln172_5_fu_2054_p00;
wire   [12:0] mul_ln172_fu_1477_p00;
wire   [18:0] mul_ln210_1_fu_1597_p00;
wire   [18:0] mul_ln210_2_fu_2112_p00;
wire   [18:0] mul_ln210_fu_1632_p00;
wire   [14:0] mul_ln211_1_fu_1679_p00;
wire   [14:0] mul_ln211_fu_1578_p00;
wire   [18:0] mul_ln212_1_fu_1772_p00;
wire   [18:0] mul_ln212_2_fu_2140_p00;
wire   [18:0] mul_ln212_fu_1722_p00;
wire   [16:0] mul_ln213_1_fu_1861_p00;
wire   [16:0] mul_ln213_2_fu_2215_p00;
wire   [16:0] mul_ln213_fu_1820_p00;
wire   [18:0] mul_ln214_1_fu_1983_p00;
wire   [18:0] mul_ln214_2_fu_2238_p00;
wire   [18:0] mul_ln214_fu_1945_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_3_fu_174 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_3ns_2_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_32ns_3ns_2_36_1_U256(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1392_p0),.din1(grp_fu_1392_p1),.ce(1'b1),.dout(grp_fu_1392_p2));
fft1D_512_urem_6ns_3ns_2_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_1_U257(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_2540),.din1(grp_fu_1398_p1),.ce(1'b1),.dout(grp_fu_1398_p2));
fft1D_512_urem_6ns_3ns_2_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_1_U258(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1420_p0),.din1(grp_fu_1420_p1),.ce(1'b1),.dout(grp_fu_1420_p2));
fft1D_512_urem_6ns_3ns_2_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_1_U259(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1443_p0),.din1(grp_fu_1443_p1),.ce(1'b1),.dout(grp_fu_1443_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U260(.din0(mul_ln172_fu_1477_p0),.din1(mul_ln172_fu_1477_p1),.dout(mul_ln172_fu_1477_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U261(.din0(mul_ln172_4_fu_1512_p0),.din1(mul_ln172_4_fu_1512_p1),.dout(mul_ln172_4_fu_1512_p2));
fft1D_512_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U262(.din0(mul_ln211_fu_1578_p0),.din1(mul_ln211_fu_1578_p1),.dout(mul_ln211_fu_1578_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U263(.din0(mul_ln210_1_fu_1597_p0),.din1(mul_ln210_1_fu_1597_p1),.dout(mul_ln210_1_fu_1597_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U264(.din0(mul_ln210_fu_1632_p0),.din1(mul_ln210_fu_1632_p1),.dout(mul_ln210_fu_1632_p2));
fft1D_512_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U265(.din0(mul_ln211_1_fu_1679_p0),.din1(mul_ln211_1_fu_1679_p1),.dout(mul_ln211_1_fu_1679_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U266(.din0(mul_ln212_fu_1722_p0),.din1(mul_ln212_fu_1722_p1),.dout(mul_ln212_fu_1722_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U267(.din0(mul_ln212_1_fu_1772_p0),.din1(mul_ln212_1_fu_1772_p1),.dout(mul_ln212_1_fu_1772_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U268(.din0(mul_ln213_fu_1820_p0),.din1(mul_ln213_fu_1820_p1),.dout(mul_ln213_fu_1820_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U269(.din0(mul_ln213_1_fu_1861_p0),.din1(mul_ln213_1_fu_1861_p1),.dout(mul_ln213_1_fu_1861_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U270(.din0(mul_ln214_fu_1945_p0),.din1(mul_ln214_fu_1945_p1),.dout(mul_ln214_fu_1945_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U271(.din0(mul_ln214_1_fu_1983_p0),.din1(mul_ln214_1_fu_1983_p1),.dout(mul_ln214_1_fu_1983_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U272(.din0(mul_ln172_5_fu_2054_p0),.din1(mul_ln172_5_fu_2054_p1),.dout(mul_ln172_5_fu_2054_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U273(.din0(mul_ln210_2_fu_2112_p0),.din1(mul_ln210_2_fu_2112_p1),.dout(mul_ln210_2_fu_2112_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U274(.din0(mul_ln212_2_fu_2140_p0),.din1(mul_ln212_2_fu_2140_p1),.dout(mul_ln212_2_fu_2140_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U275(.din0(mul_ln213_2_fu_2215_p0),.din1(mul_ln213_2_fu_2215_p1),.dout(mul_ln213_2_fu_2215_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U276(.din0(mul_ln214_2_fu_2238_p0),.din1(mul_ln214_2_fu_2238_p1),.dout(mul_ln214_2_fu_2238_p2));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2460_p0),.din1(grp_fu_2460_p1),.din2(grp_fu_2460_p2),.ce(1'b1),.dout(grp_fu_2460_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2469_p0),.din1(grp_fu_2469_p1),.din2(grp_fu_2469_p2),.ce(1'b1),.dout(grp_fu_2469_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U279(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2477_p0),.din1(grp_fu_2477_p1),.din2(grp_fu_2477_p2),.ce(1'b1),.dout(grp_fu_2477_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U280(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2486_p0),.din1(grp_fu_2486_p1),.din2(grp_fu_2486_p2),.ce(1'b1),.dout(grp_fu_2486_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U281(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2495_p0),.din1(grp_fu_2495_p1),.din2(grp_fu_2495_p2),.ce(1'b1),.dout(grp_fu_2495_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U282(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2504_p0),.din1(grp_fu_2504_p1),.din2(grp_fu_2504_p2),.ce(1'b1),.dout(grp_fu_2504_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U283(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2513_p0),.din1(grp_fu_2513_p1),.din2(grp_fu_2513_p2),.ce(1'b1),.dout(grp_fu_2513_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_1283 <= DATA_y_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1283 <= DATA_y_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1304 <= DATA_y_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1304 <= DATA_y_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_1329 <= DATA_y_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1329 <= DATA_y_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_3_fu_174 <= 7'd0;
    end else if (((tmp_reg_2536 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_3_fu_174 <= add_ln204_fu_1449_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_load_12_reg_3031 <= DATA_y_1_q1;
        DATA_y_1_load_13_reg_3038 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_y_1_load_15_reg_3077 <= DATA_y_1_q0;
        DATA_y_load_15_reg_3070 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_load_2_reg_2775 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_load_7_reg_2850 <= DATA_y_1_q0;
        DATA_y_load_7_reg_2843 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_1_load_9_reg_2910 <= DATA_y_1_q0;
        DATA_y_load_12_reg_2903 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_load_10_reg_2969 <= DATA_y_q0;
        DATA_y_load_9_reg_2962 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln210_1_reg_2660[8 : 1] <= add_ln210_1_fu_1541_p2[8 : 1];
        offset_6_reg_2553 <= offset_6_fu_1380_p5;
        offset_6_reg_2553_pp0_iter1_reg <= offset_6_reg_2553;
        offset_reg_2540 <= offset_fu_1356_p1;
        offset_reg_2540_pp0_iter1_reg <= offset_reg_2540;
        tid_reg_2529 <= ap_sig_allocacmp_tid;
        tmp_80_reg_2624 <= {{mul_ln172_fu_1477_p2[12:8]}};
        tmp_88_reg_2645 <= {{mul_ln172_4_fu_1512_p2[12:8]}};
        tmp_reg_2536 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_2536_pp0_iter1_reg <= tmp_reg_2536;
        zext_ln172_19_reg_2618[5 : 0] <= zext_ln172_19_fu_1471_p1[5 : 0];
        zext_ln172_23_reg_2639[5 : 1] <= zext_ln172_23_fu_1506_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln210_2_reg_2927[8 : 2] <= add_ln210_2_fu_2070_p2[8 : 2];
        add_ln212_2_reg_2932[8 : 2] <= add_ln212_2_fu_2075_p2[8 : 2];
        tmp_95_reg_2917 <= {{tmp_95_fu_2039_p1[20:12]}};
        tmp_96_reg_2922 <= {{mul_ln172_5_fu_2054_p2[12:8]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln210_3_reg_3060 <= add_ln210_3_fu_2263_p2;
        add_ln211_1_reg_3065 <= add_ln211_1_fu_2268_p2;
        tmp_100_reg_3045 <= {{mul_ln213_2_fu_2215_p2[16:10]}};
        tmp_101_reg_3050 <= {{mul_ln214_2_fu_2238_p2[18:11]}};
        tmp_102_reg_3055 <= {{tmp_102_fu_2254_p1[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln210_reg_2665 <= add_ln210_fu_1547_p2;
        tmp_82_reg_2675 <= {{mul_ln211_fu_1578_p2[14:9]}};
        tmp_89_reg_2685 <= {{mul_ln210_1_fu_1597_p2[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln212_1_reg_2725[8 : 1] <= add_ln212_1_fu_1695_p2[8 : 1];
        add_ln212_reg_2705 <= add_ln212_fu_1648_p2;
        offset_4_reg_2574[5 : 1] <= offset_4_fu_1412_p3[5 : 1];
        offset_4_reg_2574_pp0_iter1_reg[5 : 1] <= offset_4_reg_2574[5 : 1];
        tmp_41_reg_2566 <= {{tid_reg_2529[5:1]}};
        tmp_41_reg_2566_pp0_iter1_reg <= tmp_41_reg_2566;
        tmp_81_reg_2700 <= {{mul_ln210_fu_1632_p2[18:11]}};
        tmp_90_reg_2720 <= {{mul_ln211_1_fu_1679_p2[14:9]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln212_3_reg_3099 <= add_ln212_3_fu_2302_p2;
        add_ln213_3_reg_3104 <= add_ln213_3_fu_2307_p2;
        tmp_103_reg_3084 <= {{tmp_103_fu_2285_p1[20:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln214_1_reg_2797[7 : 1] <= add_ln214_1_fu_1877_p2[7 : 1];
        add_ln214_reg_2787 <= add_ln214_fu_1836_p2;
        tmp_84_reg_2782 <= {{mul_ln213_fu_1820_p2[16:10]}};
        tmp_92_reg_2792 <= {{mul_ln213_1_fu_1861_p2[16:10]}};
        tmp_94_reg_2802 <= {{tmp_94_fu_1883_p1[18:11]}};
        zext_ln172_26_reg_2807[5 : 2] <= zext_ln172_26_fu_1892_p1[5 : 2];
        zext_ln209_3_reg_2833[7 : 4] <= zext_ln209_3_fu_1927_p1[7 : 4];
        zext_ln211_6_reg_2823[7 : 4] <= zext_ln211_6_fu_1915_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln214_2_reg_2991[7 : 2] <= add_ln214_2_fu_2156_p2[7 : 2];
        smem_1_addr_69_reg_3001 <= zext_ln172_11_fu_2161_p1;
        smem_2_addr_69_reg_3006 <= zext_ln172_11_fu_2161_p1;
        smem_addr_69_reg_2996 <= zext_ln172_11_fu_2161_p1;
        tmp_97_reg_2976 <= {{mul_ln210_2_fu_2112_p2[18:11]}};
        tmp_98_reg_2981 <= {{tmp_98_fu_2128_p1[16:10]}};
        tmp_99_reg_2986 <= {{mul_ln212_2_fu_2140_p2[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln214_3_reg_3149 <= add_ln214_3_fu_2346_p2;
        add_ln215_3_reg_3154 <= add_ln215_3_fu_2351_p2;
        smem_1_addr_70_reg_3114 <= zext_ln210_3_fu_2324_p1;
        smem_1_addr_71_reg_3129 <= zext_ln211_3_fu_2331_p1;
        smem_2_addr_70_reg_3119 <= zext_ln210_3_fu_2324_p1;
        smem_2_addr_71_reg_3134 <= zext_ln211_3_fu_2331_p1;
        smem_addr_70_reg_3109 <= zext_ln210_3_fu_2324_p1;
        smem_addr_71_reg_3124 <= zext_ln211_3_fu_2331_p1;
        trunc_ln172_reg_2606 <= trunc_ln172_fu_1459_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln216_3_reg_3203 <= add_ln216_3_fu_2388_p2;
        smem_1_addr_72_reg_3168 <= zext_ln212_3_fu_2366_p1;
        smem_1_addr_73_reg_3183 <= zext_ln213_3_fu_2373_p1;
        smem_2_addr_72_reg_3173 <= zext_ln212_3_fu_2366_p1;
        smem_2_addr_73_reg_3188 <= zext_ln213_3_fu_2373_p1;
        smem_addr_72_reg_3163 <= zext_ln212_3_fu_2366_p1;
        smem_addr_73_reg_3178 <= zext_ln213_3_fu_2373_p1;
        trunc_ln172_4_reg_2610 <= trunc_ln172_4_fu_1463_p1;
        trunc_ln172_6_reg_3159 <= trunc_ln172_6_fu_2362_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_5_reg_2597[5 : 2] <= offset_5_fu_1435_p3[5 : 2];
        offset_5_reg_2597_pp0_iter1_reg[5 : 2] <= offset_5_reg_2597[5 : 2];
        tmp_83_reg_2740 <= {{mul_ln212_fu_1722_p2[18:11]}};
        tmp_86_reg_2750 <= {{tmp_86_fu_1751_p1[18:11]}};
        tmp_91_reg_2760 <= {{mul_ln212_1_fu_1772_p2[18:11]}};
        tmp_s_reg_2583 <= {{tid_reg_2529[5:2]}};
        tmp_s_reg_2583_pp0_iter1_reg <= tmp_s_reg_2583;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1253 <= DATA_y_q1;
        reg_1263 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1273 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1294 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1312 <= DATA_y_1_q1;
        reg_1322 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_addr_74_reg_3213 <= zext_ln214_3_fu_2393_p1;
        smem_1_addr_75_reg_3228 <= zext_ln215_3_fu_2400_p1;
        smem_2_addr_74_reg_3218 <= zext_ln214_3_fu_2393_p1;
        smem_2_addr_75_reg_3233 <= zext_ln215_3_fu_2400_p1;
        smem_addr_74_reg_3208 <= zext_ln214_3_fu_2393_p1;
        smem_addr_75_reg_3223 <= zext_ln215_3_fu_2400_p1;
        trunc_ln172_5_reg_2614 <= trunc_ln172_5_fu_1467_p1;
        trunc_ln172_5_reg_2614_pp0_iter1_reg <= trunc_ln172_5_reg_2614;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_addr_76_reg_3248 <= zext_ln216_3_fu_2417_p1;
        smem_2_addr_76_reg_3253 <= zext_ln216_3_fu_2417_p1;
        smem_addr_76_reg_3243 <= zext_ln216_3_fu_2417_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_85_reg_2857 <= {{mul_ln214_fu_1945_p2[18:11]}};
        tmp_87_reg_2862 <= {{tmp_87_fu_1961_p1[20:12]}};
        tmp_93_reg_2867 <= {{mul_ln214_1_fu_1983_p2[18:11]}};
        zext_ln172_27_reg_2872[5 : 2] <= zext_ln172_27_fu_1999_p1[5 : 2];
        zext_ln215_6_reg_2893[7 : 4] <= zext_ln215_6_fu_2022_p1[7 : 4];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address0_local = zext_ln215_7_fu_2188_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address0_local = zext_ln211_7_fu_2091_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address0_local = zext_ln215_6_fu_2022_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address0_local = zext_ln211_6_fu_1915_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address0_local = zext_ln215_5_fu_1795_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address0_local = zext_ln213_5_fu_1707_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln211_5_fu_1620_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln209_1_fu_1535_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address1_local = zext_ln213_7_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address1_local = zext_ln209_3_reg_2833;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address1_local = zext_ln213_6_fu_2009_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address1_local = zext_ln209_2_fu_1902_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address1_local = zext_ln215_4_fu_1745_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address1_local = zext_ln213_4_fu_1660_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln211_4_fu_1559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln209_fu_1500_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address0_local = zext_ln215_7_fu_2188_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address0_local = zext_ln211_7_fu_2091_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address0_local = zext_ln213_6_fu_2009_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address0_local = zext_ln209_3_fu_1927_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address0_local = zext_ln215_5_fu_1795_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address0_local = zext_ln213_5_fu_1707_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln211_5_fu_1620_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln209_1_fu_1535_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address1_local = zext_ln213_7_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address1_local = zext_ln215_6_reg_2893;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address1_local = zext_ln211_6_reg_2823;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address1_local = zext_ln209_2_fu_1902_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address1_local = zext_ln215_4_fu_1745_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address1_local = zext_ln213_4_fu_1660_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln211_4_fu_1559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln209_fu_1500_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2536 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_2536_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_3_fu_174;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_1223_p0 = zext_ln216_7_fu_2407_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_1223_p0 = zext_ln214_7_fu_2380_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1223_p0 = zext_ln212_7_fu_2338_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1223_p0 = zext_ln210_7_fu_2294_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1223_p0 = zext_ln172_29_fu_2080_p1;
        end else begin
            grp_fu_1223_p0 = 'bx;
        end
    end else begin
        grp_fu_1223_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_1228_p0 = zext_ln215_11_fu_2384_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1228_p0 = zext_ln213_11_fu_2342_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1228_p0 = zext_ln211_11_fu_2298_p1;
        end else begin
            grp_fu_1228_p0 = 'bx;
        end
    end else begin
        grp_fu_1228_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = smem_1_addr_76_reg_3248;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = smem_1_addr_75_reg_3228;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = smem_1_addr_74_reg_3213;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        smem_1_address0_local = smem_1_addr_72_reg_3168;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_1_address0_local = smem_1_addr_70_reg_3114;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_1_address0_local = zext_ln215_2_fu_2448_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_1_address0_local = zext_ln213_2_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address0_local = zext_ln211_2_fu_2424_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address0_local = zext_ln216_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln214_fu_2273_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln215_fu_2194_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln213_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln212_fu_2027_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln210_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln211_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_9_fu_1763_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            smem_1_address1_local = smem_1_addr_73_reg_3183;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            smem_1_address1_local = smem_1_addr_71_reg_3129;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            smem_1_address1_local = zext_ln216_2_fu_2454_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            smem_1_address1_local = zext_ln214_2_fu_2442_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            smem_1_address1_local = zext_ln212_2_fu_2430_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            smem_1_address1_local = zext_ln210_2_fu_2411_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_1_address1_local = smem_1_addr_69_reg_3001;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            smem_1_address1_local = zext_ln216_1_fu_2356_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_1_address1_local = zext_ln172_10_fu_2318_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_1_address1_local = zext_ln215_1_fu_2279_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_1_address1_local = zext_ln214_1_fu_2200_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address1_local = zext_ln213_1_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln212_1_fu_2033_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln211_1_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address1_local = zext_ln210_1_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln172_8_fu_1713_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_1_load_15_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_load_15_reg_3070;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        smem_1_d0_local = DATA_y_1_load_13_reg_3038;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_1_d0_local = DATA_y_1_load_12_reg_3031;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_1_d0_local = DATA_y_load_10_reg_2969;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d0_local = DATA_y_load_9_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d0_local = reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_y_1_load_2_reg_2775;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_1_d0_local = reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d0_local = reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = reg_1273;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d0_local = reg_1294;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = reg_1263;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        smem_1_d1_local = reg_1294;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_1_d1_local = reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d1_local = DATA_y_1_load_9_reg_2910;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d1_local = reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d1_local = DATA_y_load_12_reg_2903;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d1_local = DATA_y_1_load_7_reg_2850;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d1_local = DATA_y_load_7_reg_2843;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d1_local = reg_1329;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_1_d1_local = reg_1263;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_d1_local = reg_1322;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_1_d1_local = reg_1304;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d1_local = reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d1_local = reg_1253;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage22_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1== ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))| ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage21_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd1) & (1'b1== ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage23_11001) & (trunc_ln172_6_reg_3159 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = smem_2_addr_76_reg_3253;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = smem_2_addr_75_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = smem_2_addr_74_reg_3218;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        smem_2_address0_local = smem_2_addr_72_reg_3173;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_2_address0_local = smem_2_addr_70_reg_3119;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_2_address0_local = zext_ln215_2_fu_2448_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_2_address0_local = zext_ln213_2_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address0_local = zext_ln211_2_fu_2424_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address0_local = zext_ln216_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln214_fu_2273_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln215_fu_2194_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln213_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln212_fu_2027_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln210_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln211_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_9_fu_1763_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            smem_2_address1_local = smem_2_addr_73_reg_3188;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            smem_2_address1_local = smem_2_addr_71_reg_3134;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            smem_2_address1_local = zext_ln216_2_fu_2454_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            smem_2_address1_local = zext_ln214_2_fu_2442_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            smem_2_address1_local = zext_ln212_2_fu_2430_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            smem_2_address1_local = zext_ln210_2_fu_2411_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_2_address1_local = smem_2_addr_69_reg_3006;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            smem_2_address1_local = zext_ln216_1_fu_2356_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_2_address1_local = zext_ln172_10_fu_2318_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_2_address1_local = zext_ln215_1_fu_2279_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_2_address1_local = zext_ln214_1_fu_2200_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_2_address1_local = zext_ln213_1_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_2_address1_local = zext_ln212_1_fu_2033_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_2_address1_local = zext_ln211_1_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_2_address1_local = zext_ln210_1_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address1_local = zext_ln172_8_fu_1713_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_1_load_15_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_load_15_reg_3070;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        smem_2_d0_local = DATA_y_1_load_13_reg_3038;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_2_d0_local = DATA_y_1_load_12_reg_3031;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_2_d0_local = DATA_y_load_10_reg_2969;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d0_local = DATA_y_load_9_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d0_local = reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_y_1_load_2_reg_2775;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_2_d0_local = reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d0_local = reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = reg_1273;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d0_local = reg_1294;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = reg_1263;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        smem_2_d1_local = reg_1294;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_2_d1_local = reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d1_local = DATA_y_1_load_9_reg_2910;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d1_local = reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d1_local = DATA_y_load_12_reg_2903;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d1_local = DATA_y_1_load_7_reg_2850;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d1_local = DATA_y_load_7_reg_2843;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d1_local = reg_1329;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_2_d1_local = reg_1263;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_2_d1_local = reg_1322;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_2_d1_local = reg_1304;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d1_local = reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d1_local = reg_1253;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | (~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | (~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln172_6_reg_3159 == 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | (~(trunc_ln172_6_reg_3159 == 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | (~(trunc_ln172_6_reg_3159== 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_6_reg_3159 == 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_6_reg_3159 == 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | (~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | (~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln172_6_reg_3159 == 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))| (~(trunc_ln172_6_reg_3159 == 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln172_6_reg_3159 == 2'd1) & ~(trunc_ln172_6_reg_3159 == 2'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | (~(trunc_ln172_5_reg_2614 == 2'd1) & ~(trunc_ln172_5_reg_2614 == 2'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage6_11001) &(ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln172_4_reg_2610 == 2'd1) & ~(trunc_ln172_4_reg_2610 == 2'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_reg_2606 == 2'd1) & ~(trunc_ln172_reg_2606 == 2'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = smem_addr_76_reg_3243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = smem_addr_75_reg_3223;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = smem_addr_74_reg_3208;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        smem_address0_local = smem_addr_72_reg_3163;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_address0_local = smem_addr_70_reg_3109;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_address0_local = zext_ln215_2_fu_2448_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_address0_local = zext_ln213_2_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address0_local = zext_ln211_2_fu_2424_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address0_local = zext_ln216_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln214_fu_2273_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln215_fu_2194_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln213_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln212_fu_2027_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln210_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln211_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_9_fu_1763_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            smem_address1_local = smem_addr_73_reg_3178;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            smem_address1_local = smem_addr_71_reg_3124;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            smem_address1_local = zext_ln216_2_fu_2454_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            smem_address1_local = zext_ln214_2_fu_2442_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            smem_address1_local = zext_ln212_2_fu_2430_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            smem_address1_local = zext_ln210_2_fu_2411_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_address1_local = smem_addr_69_reg_2996;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            smem_address1_local = zext_ln216_1_fu_2356_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_address1_local = zext_ln172_10_fu_2318_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_address1_local = zext_ln215_1_fu_2279_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_address1_local = zext_ln214_1_fu_2200_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address1_local = zext_ln213_1_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln212_1_fu_2033_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln211_1_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln210_1_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln172_8_fu_1713_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_1_load_15_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_load_15_reg_3070;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        smem_d0_local = DATA_y_1_load_13_reg_3038;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_d0_local = DATA_y_1_load_12_reg_3031;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_d0_local = DATA_y_load_10_reg_2969;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d0_local = DATA_y_load_9_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d0_local = reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_y_1_load_2_reg_2775;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_d0_local = reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = reg_1273;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d0_local = reg_1294;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = reg_1263;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        smem_d1_local = reg_1294;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_d1_local = reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d1_local = DATA_y_1_load_9_reg_2910;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d1_local = reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d1_local = DATA_y_load_12_reg_2903;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d1_local = DATA_y_1_load_7_reg_2850;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d1_local = DATA_y_load_7_reg_2843;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d1_local = reg_1329;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_d1_local = reg_1263;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_d1_local = reg_1322;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d1_local = reg_1304;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d1_local = reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d1_local = reg_1253;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage22_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1== ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))| ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage21_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_5_reg_2614 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_4_reg_2610 == 2'd0) & (1'b1== ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2606 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage23_11001) & (trunc_ln172_6_reg_3159 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
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
assign add_ln204_fu_1449_p2 = (tid_reg_2529 + 7'd4);
assign add_ln210_1_fu_1541_p2 = ($signed(zext_ln172_23_fu_1506_p1) + $signed(9'd264));
assign add_ln210_2_fu_2070_p2 = ($signed(zext_ln172_27_reg_2872) + $signed(9'd264));
assign add_ln210_3_fu_2263_p2 = (offset_6_reg_2553_pp0_iter1_reg + 32'd264);
assign add_ln210_fu_1547_p2 = ($signed(zext_ln172_19_reg_2618) + $signed(9'd264));
assign add_ln211_1_fu_2268_p2 = (offset_6_reg_2553_pp0_iter1_reg + 32'd66);
assign add_ln212_1_fu_1695_p2 = ($signed(zext_ln172_23_reg_2639) + $signed(9'd330));
assign add_ln212_2_fu_2075_p2 = ($signed(zext_ln172_27_reg_2872) + $signed(9'd330));
assign add_ln212_3_fu_2302_p2 = (offset_6_reg_2553_pp0_iter1_reg + 32'd330);
assign add_ln212_fu_1648_p2 = ($signed(zext_ln172_19_reg_2618) + $signed(9'd330));
assign add_ln213_1_fu_1851_p2 = ($signed(zext_ln172_22_fu_1842_p1) + $signed(8'd132));
assign add_ln213_2_fu_2206_p2 = ($signed(zext_ln172_26_reg_2807) + $signed(8'd132));
assign add_ln213_3_fu_2307_p2 = (offset_6_reg_2553_pp0_iter1_reg + 32'd132);
assign add_ln213_fu_1810_p2 = ($signed(zext_ln172_18_fu_1801_p1) + $signed(8'd132));
assign add_ln214_1_fu_1877_p2 = ($signed(zext_ln172_22_fu_1842_p1) + $signed(8'd140));
assign add_ln214_2_fu_2156_p2 = ($signed(zext_ln172_26_reg_2807) + $signed(8'd140));
assign add_ln214_3_fu_2346_p2 = (offset_6_reg_2553_pp0_iter1_reg + 32'd396);
assign add_ln214_fu_1836_p2 = ($signed(zext_ln172_18_fu_1801_p1) + $signed(8'd140));
assign add_ln215_3_fu_2351_p2 = (offset_6_reg_2553_pp0_iter1_reg + 32'd198);
assign add_ln216_3_fu_2388_p2 = (offset_6_reg_2553_pp0_iter1_reg + 32'd462);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
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
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_ready = ap_ready_sig;
assign grp_fu_1233_p4 = {{grp_fu_389_p_dout0[64:34]}};
assign grp_fu_1243_p4 = {{grp_fu_393_p_dout0[64:34]}};
assign grp_fu_1392_p0 = {{zext_ln205_fu_1360_p1[31:3]}, {or_ln18_fu_1372_p3}};
assign grp_fu_1392_p1 = 32'd3;
assign grp_fu_1398_p1 = 6'd3;
assign grp_fu_1420_p0 = {{tmp_41_fu_1403_p4}, {1'd1}};
assign grp_fu_1420_p1 = 6'd3;
assign grp_fu_1443_p0 = {{tmp_s_fu_1426_p4}, {2'd2}};
assign grp_fu_1443_p1 = 6'd3;
assign grp_fu_2460_p0 = grp_fu_2460_p00;
assign grp_fu_2460_p00 = offset_reg_2540;
assign grp_fu_2460_p1 = 9'd198;
assign grp_fu_2460_p2 = 19'd683;
assign grp_fu_2469_p0 = zext_ln172_23_reg_2639;
assign grp_fu_2469_p1 = 9'd198;
assign grp_fu_2469_p2 = 19'd683;
assign grp_fu_2477_p0 = grp_fu_2477_p00;
assign grp_fu_2477_p00 = offset_reg_2540_pp0_iter1_reg;
assign grp_fu_2477_p1 = 10'd462;
assign grp_fu_2477_p2 = 21'd1366;
assign grp_fu_2486_p0 = grp_fu_2486_p00;
assign grp_fu_2486_p00 = offset_4_reg_2574_pp0_iter1_reg;
assign grp_fu_2486_p1 = 10'd462;
assign grp_fu_2486_p2 = 21'd1366;
assign grp_fu_2495_p0 = grp_fu_2495_p00;
assign grp_fu_2495_p00 = offset_5_reg_2597_pp0_iter1_reg;
assign grp_fu_2495_p1 = 8'd66;
assign grp_fu_2495_p2 = 17'd342;
assign grp_fu_2504_p0 = grp_fu_2504_p00;
assign grp_fu_2504_p00 = offset_5_reg_2597_pp0_iter1_reg;
assign grp_fu_2504_p1 = 9'd198;
assign grp_fu_2504_p2 = 19'd683;
assign grp_fu_2513_p0 = grp_fu_2513_p00;
assign grp_fu_2513_p00 = offset_5_reg_2597_pp0_iter1_reg;
assign grp_fu_2513_p1 = 10'd462;
assign grp_fu_2513_p2 = 21'd1366;
assign grp_fu_389_p_ce = 1'b1;
assign grp_fu_389_p_din0 = grp_fu_1223_p0;
assign grp_fu_389_p_din1 = 65'd5726623062;
assign grp_fu_393_p_ce = 1'b1;
assign grp_fu_393_p_din0 = grp_fu_1228_p0;
assign grp_fu_393_p_din1 = 65'd5726623062;
assign mul_ln172_4_fu_1512_p0 = mul_ln172_4_fu_1512_p00;
assign mul_ln172_4_fu_1512_p00 = offset_4_reg_2574;
assign mul_ln172_4_fu_1512_p1 = 13'd86;
assign mul_ln172_5_fu_2054_p0 = mul_ln172_5_fu_2054_p00;
assign mul_ln172_5_fu_2054_p00 = offset_5_reg_2597_pp0_iter1_reg;
assign mul_ln172_5_fu_2054_p1 = 13'd86;
assign mul_ln172_fu_1477_p0 = mul_ln172_fu_1477_p00;
assign mul_ln172_fu_1477_p00 = offset_reg_2540;
assign mul_ln172_fu_1477_p1 = 13'd86;
assign mul_ln210_1_fu_1597_p0 = mul_ln210_1_fu_1597_p00;
assign mul_ln210_1_fu_1597_p00 = add_ln210_1_reg_2660;
assign mul_ln210_1_fu_1597_p1 = 19'd683;
assign mul_ln210_2_fu_2112_p0 = mul_ln210_2_fu_2112_p00;
assign mul_ln210_2_fu_2112_p00 = add_ln210_2_reg_2927;
assign mul_ln210_2_fu_2112_p1 = 19'd683;
assign mul_ln210_fu_1632_p0 = mul_ln210_fu_1632_p00;
assign mul_ln210_fu_1632_p00 = add_ln210_reg_2665;
assign mul_ln210_fu_1632_p1 = 19'd683;
assign mul_ln211_1_fu_1679_p0 = mul_ln211_1_fu_1679_p00;
assign mul_ln211_1_fu_1679_p00 = zext_ln211_9_cast_fu_1666_p4;
assign mul_ln211_1_fu_1679_p1 = 15'd171;
assign mul_ln211_fu_1578_p0 = mul_ln211_fu_1578_p00;
assign mul_ln211_fu_1578_p00 = zext_ln211_8_cast_fu_1565_p4;
assign mul_ln211_fu_1578_p1 = 15'd171;
assign mul_ln212_1_fu_1772_p0 = mul_ln212_1_fu_1772_p00;
assign mul_ln212_1_fu_1772_p00 = add_ln212_1_reg_2725;
assign mul_ln212_1_fu_1772_p1 = 19'd683;
assign mul_ln212_2_fu_2140_p0 = mul_ln212_2_fu_2140_p00;
assign mul_ln212_2_fu_2140_p00 = add_ln212_2_reg_2932;
assign mul_ln212_2_fu_2140_p1 = 19'd683;
assign mul_ln212_fu_1722_p0 = mul_ln212_fu_1722_p00;
assign mul_ln212_fu_1722_p00 = add_ln212_reg_2705;
assign mul_ln212_fu_1722_p1 = 19'd683;
assign mul_ln213_1_fu_1861_p0 = mul_ln213_1_fu_1861_p00;
assign mul_ln213_1_fu_1861_p00 = add_ln213_1_fu_1851_p2;
assign mul_ln213_1_fu_1861_p1 = 17'd342;
assign mul_ln213_2_fu_2215_p0 = mul_ln213_2_fu_2215_p00;
assign mul_ln213_2_fu_2215_p00 = add_ln213_2_fu_2206_p2;
assign mul_ln213_2_fu_2215_p1 = 17'd342;
assign mul_ln213_fu_1820_p0 = mul_ln213_fu_1820_p00;
assign mul_ln213_fu_1820_p00 = add_ln213_fu_1810_p2;
assign mul_ln213_fu_1820_p1 = 17'd342;
assign mul_ln214_1_fu_1983_p0 = mul_ln214_1_fu_1983_p00;
assign mul_ln214_1_fu_1983_p00 = $unsigned(sext_ln214_1_fu_1976_p1);
assign mul_ln214_1_fu_1983_p1 = 19'd683;
assign mul_ln214_2_fu_2238_p0 = mul_ln214_2_fu_2238_p00;
assign mul_ln214_2_fu_2238_p00 = $unsigned(sext_ln214_2_fu_2231_p1);
assign mul_ln214_2_fu_2238_p1 = 19'd683;
assign mul_ln214_fu_1945_p0 = mul_ln214_fu_1945_p00;
assign mul_ln214_fu_1945_p00 = $unsigned(sext_ln214_fu_1938_p1);
assign mul_ln214_fu_1945_p1 = 19'd683;
assign offset_4_fu_1412_p3 = {{tmp_41_fu_1403_p4}, {1'd1}};
assign offset_5_fu_1435_p3 = {{tmp_s_fu_1426_p4}, {2'd2}};
assign offset_6_fu_1380_p5 = {{zext_ln205_fu_1360_p1[31:3]}, {or_ln18_fu_1372_p3}};
assign offset_fu_1356_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln15_fu_1653_p3 = {{offset_reg_2540_pp0_iter1_reg}, {2'd1}};
assign or_ln16_fu_1738_p3 = {{offset_reg_2540_pp0_iter1_reg}, {2'd3}};
assign or_ln17_fu_1895_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd8}};
assign or_ln18_fu_1372_p3 = {{tmp_104_fu_1364_p3}, {2'd3}};
assign or_ln211_1_fu_1613_p3 = {{tmp_41_reg_2566}, {3'd6}};
assign or_ln211_2_fu_1908_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd10}};
assign or_ln211_3_fu_2084_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd14}};
assign or_ln213_1_fu_1700_p3 = {{tmp_41_reg_2566}, {3'd5}};
assign or_ln213_2_fu_2002_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd9}};
assign or_ln213_3_fu_2168_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd13}};
assign or_ln215_1_fu_1788_p3 = {{tmp_41_reg_2566_pp0_iter1_reg}, {3'd7}};
assign or_ln215_2_fu_2015_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd11}};
assign or_ln215_3_fu_2181_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd15}};
assign or_ln_fu_1552_p3 = {{offset_reg_2540_pp0_iter1_reg}, {2'd2}};
assign sext_ln214_1_fu_1976_p1 = $signed(add_ln214_1_reg_2797);
assign sext_ln214_2_fu_2231_p1 = $signed(add_ln214_2_reg_2991);
assign sext_ln214_fu_1938_p1 = $signed(add_ln214_reg_2787);
assign shl_ln209_1_fu_1528_p3 = {{tmp_41_reg_2566}, {3'd4}};
assign shl_ln209_2_fu_1920_p3 = {{tmp_s_reg_2583_pp0_iter1_reg}, {4'd12}};
assign shl_ln3_fu_1493_p3 = {{offset_reg_2540}, {2'd0}};
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_102_fu_2254_p1 = grp_fu_2504_p3;
assign tmp_103_fu_2285_p1 = grp_fu_2513_p3;
assign tmp_104_fu_1364_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_41_fu_1403_p4 = {{tid_reg_2529[5:1]}};
assign tmp_86_fu_1751_p1 = grp_fu_2460_p3;
assign tmp_87_fu_1961_p1 = grp_fu_2477_p3;
assign tmp_94_fu_1883_p1 = grp_fu_2469_p3;
assign tmp_95_fu_2039_p1 = grp_fu_2486_p3;
assign tmp_98_fu_2128_p1 = grp_fu_2495_p3;
assign tmp_s_fu_1426_p4 = {{tid_reg_2529[5:2]}};
assign trunc_ln172_4_fu_1463_p1 = grp_fu_1420_p2[1:0];
assign trunc_ln172_5_fu_1467_p1 = grp_fu_1443_p2[1:0];
assign trunc_ln172_6_fu_2362_p1 = grp_fu_1392_p2[1:0];
assign trunc_ln172_fu_1459_p1 = grp_fu_1398_p2[1:0];
assign zext_ln172_10_fu_2318_p1 = tmp_96_reg_2922;
assign zext_ln172_11_fu_2161_p1 = grp_fu_1233_p4;
assign zext_ln172_18_fu_1801_p1 = offset_reg_2540_pp0_iter1_reg;
assign zext_ln172_19_fu_1471_p1 = offset_reg_2540;
assign zext_ln172_22_fu_1842_p1 = offset_4_reg_2574_pp0_iter1_reg;
assign zext_ln172_23_fu_1506_p1 = offset_4_reg_2574;
assign zext_ln172_26_fu_1892_p1 = offset_5_reg_2597_pp0_iter1_reg;
assign zext_ln172_27_fu_1999_p1 = offset_5_reg_2597_pp0_iter1_reg;
assign zext_ln172_29_fu_2080_p1 = offset_6_reg_2553_pp0_iter1_reg;
assign zext_ln172_8_fu_1713_p1 = tmp_80_reg_2624;
assign zext_ln172_9_fu_1763_p1 = tmp_88_reg_2645;
assign zext_ln205_fu_1360_p1 = offset_fu_1356_p1;
assign zext_ln209_1_fu_1535_p1 = shl_ln209_1_fu_1528_p3;
assign zext_ln209_2_fu_1902_p1 = or_ln17_fu_1895_p3;
assign zext_ln209_3_fu_1927_p1 = shl_ln209_2_fu_1920_p3;
assign zext_ln209_fu_1500_p1 = shl_ln3_fu_1493_p3;
assign zext_ln210_1_fu_1845_p1 = tmp_89_reg_2685;
assign zext_ln210_2_fu_2411_p1 = tmp_97_reg_2976;
assign zext_ln210_3_fu_2324_p1 = grp_fu_1233_p4;
assign zext_ln210_7_fu_2294_p1 = add_ln210_3_reg_3060;
assign zext_ln210_fu_1932_p1 = tmp_81_reg_2700;
assign zext_ln211_11_fu_2298_p1 = add_ln211_1_reg_3065;
assign zext_ln211_1_fu_1970_p1 = tmp_90_reg_2720;
assign zext_ln211_2_fu_2424_p1 = tmp_98_reg_2981;
assign zext_ln211_3_fu_2331_p1 = grp_fu_1243_p4;
assign zext_ln211_4_fu_1559_p1 = or_ln_fu_1552_p3;
assign zext_ln211_5_fu_1620_p1 = or_ln211_1_fu_1613_p3;
assign zext_ln211_6_fu_1915_p1 = or_ln211_2_fu_1908_p3;
assign zext_ln211_7_fu_2091_p1 = or_ln211_3_fu_2084_p3;
assign zext_ln211_8_cast_fu_1565_p4 = {{{{1'd1}, {tmp_s_reg_2583}}}, {2'd2}};
assign zext_ln211_9_cast_fu_1666_p4 = {{{{1'd1}, {tmp_s_reg_2583}}}, {2'd3}};
assign zext_ln211_fu_1804_p1 = tmp_82_reg_2675;
assign zext_ln212_1_fu_2033_p1 = tmp_91_reg_2760;
assign zext_ln212_2_fu_2430_p1 = tmp_99_reg_2986;
assign zext_ln212_3_fu_2366_p1 = grp_fu_1233_p4;
assign zext_ln212_7_fu_2338_p1 = add_ln212_3_reg_3099;
assign zext_ln212_fu_2027_p1 = tmp_83_reg_2740;
assign zext_ln213_11_fu_2342_p1 = add_ln213_3_reg_3104;
assign zext_ln213_1_fu_2103_p1 = tmp_92_reg_2792;
assign zext_ln213_2_fu_2436_p1 = tmp_100_reg_3045;
assign zext_ln213_3_fu_2373_p1 = grp_fu_1243_p4;
assign zext_ln213_4_fu_1660_p1 = or_ln15_fu_1653_p3;
assign zext_ln213_5_fu_1707_p1 = or_ln213_1_fu_1700_p3;
assign zext_ln213_6_fu_2009_p1 = or_ln213_2_fu_2002_p3;
assign zext_ln213_7_fu_2175_p1 = or_ln213_3_fu_2168_p3;
assign zext_ln213_fu_2097_p1 = tmp_84_reg_2782;
assign zext_ln214_1_fu_2200_p1 = tmp_93_reg_2867;
assign zext_ln214_2_fu_2442_p1 = tmp_101_reg_3050;
assign zext_ln214_3_fu_2393_p1 = grp_fu_1233_p4;
assign zext_ln214_7_fu_2380_p1 = add_ln214_3_reg_3149;
assign zext_ln214_fu_2273_p1 = tmp_85_reg_2857;
assign zext_ln215_11_fu_2384_p1 = add_ln215_3_reg_3154;
assign zext_ln215_1_fu_2279_p1 = tmp_94_reg_2802;
assign zext_ln215_2_fu_2448_p1 = tmp_102_reg_3055;
assign zext_ln215_3_fu_2400_p1 = grp_fu_1243_p4;
assign zext_ln215_4_fu_1745_p1 = or_ln16_fu_1738_p3;
assign zext_ln215_5_fu_1795_p1 = or_ln215_1_fu_1788_p3;
assign zext_ln215_6_fu_2022_p1 = or_ln215_2_fu_2015_p3;
assign zext_ln215_7_fu_2188_p1 = or_ln215_3_fu_2181_p3;
assign zext_ln215_fu_2194_p1 = tmp_86_reg_2750;
assign zext_ln216_1_fu_2356_p1 = tmp_95_reg_2917;
assign zext_ln216_2_fu_2454_p1 = tmp_103_reg_3084;
assign zext_ln216_3_fu_2417_p1 = grp_fu_1233_p4;
assign zext_ln216_7_fu_2407_p1 = add_ln216_3_reg_3203;
assign zext_ln216_fu_2312_p1 = tmp_87_reg_2862;
always @ (posedge ap_clk) begin
    offset_4_reg_2574[0] <= 1'b1;
    offset_4_reg_2574_pp0_iter1_reg[0] <= 1'b1;
    offset_5_reg_2597[1:0] <= 2'b10;
    offset_5_reg_2597_pp0_iter1_reg[1:0] <= 2'b10;
    zext_ln172_19_reg_2618[8:6] <= 3'b000;
    zext_ln172_23_reg_2639[0] <= 1'b1;
    zext_ln172_23_reg_2639[8:6] <= 3'b000;
    add_ln210_1_reg_2660[0] <= 1'b1;
    add_ln212_1_reg_2725[0] <= 1'b1;
    add_ln214_1_reg_2797[0] <= 1'b1;
    zext_ln172_26_reg_2807[1:0] <= 2'b10;
    zext_ln172_26_reg_2807[7:6] <= 2'b00;
    zext_ln211_6_reg_2823[3:0] <= 4'b1010;
    zext_ln211_6_reg_2823[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln209_3_reg_2833[3:0] <= 4'b1100;
    zext_ln209_3_reg_2833[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_27_reg_2872[1:0] <= 2'b10;
    zext_ln172_27_reg_2872[8:6] <= 3'b000;
    zext_ln215_6_reg_2893[3:0] <= 4'b1011;
    zext_ln215_6_reg_2893[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln210_2_reg_2927[1:0] <= 2'b10;
    add_ln212_2_reg_2932[1:0] <= 2'b00;
    add_ln214_2_reg_2991[1:0] <= 2'b10;
end
endmodule 
