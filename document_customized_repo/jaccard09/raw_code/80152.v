module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,grp_fu_389_p_din0,grp_fu_389_p_din1,grp_fu_389_p_dout0,grp_fu_389_p_ce,grp_fu_393_p_din0,grp_fu_393_p_din1,grp_fu_393_p_dout0,grp_fu_393_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 21'd1;
parameter    ap_ST_fsm_pp0_stage1 = 21'd2;
parameter    ap_ST_fsm_pp0_stage2 = 21'd4;
parameter    ap_ST_fsm_pp0_stage3 = 21'd8;
parameter    ap_ST_fsm_pp0_stage4 = 21'd16;
parameter    ap_ST_fsm_pp0_stage5 = 21'd32;
parameter    ap_ST_fsm_pp0_stage6 = 21'd64;
parameter    ap_ST_fsm_pp0_stage7 = 21'd128;
parameter    ap_ST_fsm_pp0_stage8 = 21'd256;
parameter    ap_ST_fsm_pp0_stage9 = 21'd512;
parameter    ap_ST_fsm_pp0_stage10 = 21'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 21'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 21'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 21'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 21'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 21'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 21'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 21'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 21'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 21'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 21'd1048576;
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
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_subdone;
reg   [0:0] tmp_reg_2424;
reg    ap_condition_exit_pp0_iter0_stage20;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1249;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [6:0] tid_1_reg_2417;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_2424_pp0_iter1_reg;
wire   [5:0] offset_fu_1273_p1;
reg   [5:0] offset_reg_2428;
reg   [5:0] offset_reg_2428_pp0_iter1_reg;
wire   [31:0] offset_3_fu_1297_p5;
reg   [31:0] offset_3_reg_2441;
reg   [31:0] offset_3_reg_2441_pp0_iter1_reg;
wire   [4:0] tmp_s_fu_1320_p4;
reg   [4:0] tmp_s_reg_2454;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [4:0] tmp_s_reg_2454_pp0_iter1_reg;
wire   [5:0] offset_1_fu_1329_p3;
reg   [5:0] offset_1_reg_2462;
reg   [5:0] offset_1_reg_2462_pp0_iter1_reg;
wire   [3:0] tmp_20_fu_1343_p4;
reg   [3:0] tmp_20_reg_2471;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [3:0] tmp_20_reg_2471_pp0_iter1_reg;
reg   [3:0] tmp_20_reg_2471_pp0_iter2_reg;
wire   [5:0] offset_2_fu_1352_p3;
reg   [5:0] offset_2_reg_2483;
reg   [5:0] offset_2_reg_2483_pp0_iter1_reg;
wire   [1:0] trunc_ln172_fu_1376_p1;
reg   [1:0] trunc_ln172_reg_2492;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [1:0] trunc_ln172_reg_2492_pp0_iter1_reg;
wire   [1:0] trunc_ln172_1_fu_1380_p1;
reg   [1:0] trunc_ln172_1_reg_2496;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [1:0] trunc_ln172_1_reg_2496_pp0_iter1_reg;
wire   [1:0] trunc_ln172_2_fu_1384_p1;
reg   [1:0] trunc_ln172_2_reg_2500;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [1:0] trunc_ln172_2_reg_2500_pp0_iter1_reg;
wire   [7:0] zext_ln172_1_fu_1388_p1;
reg   [7:0] zext_ln172_1_reg_2504;
reg   [4:0] tmp_28_reg_2510;
reg   [4:0] tmp_36_reg_2525;
wire   [8:0] zext_ln172_2_fu_1455_p1;
reg   [8:0] zext_ln172_2_reg_2540;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] DATA_y_load_reg_2546;
wire   [8:0] add_ln331_fu_1458_p2;
reg   [8:0] add_ln331_reg_2553;
wire   [63:0] zext_ln332_4_fu_1471_p1;
reg   [63:0] zext_ln332_4_reg_2558;
wire   [7:0] zext_ln172_6_fu_1476_p1;
reg   [7:0] zext_ln172_6_reg_2568;
wire   [8:0] zext_ln172_7_fu_1479_p1;
reg   [8:0] zext_ln172_7_reg_2574;
wire   [8:0] add_ln331_1_fu_1482_p2;
reg   [8:0] add_ln331_1_reg_2580;
reg   [4:0] tmp_44_reg_2585;
wire   [64:0] zext_ln172_15_fu_1520_p1;
wire   [63:0] zext_ln330_3_fu_1531_p1;
reg   [63:0] zext_ln330_3_reg_2605;
reg   [63:0] DATA_y_load_4_reg_2615;
reg   [63:0] DATA_y_1_load_reg_2622;
reg   [63:0] DATA_y_1_load_4_reg_2629;
reg   [7:0] tmp_29_reg_2636;
wire   [8:0] add_ln333_fu_1555_p2;
reg   [8:0] add_ln333_reg_2646;
reg   [7:0] tmp_37_reg_2651;
wire   [7:0] zext_ln172_11_fu_1592_p1;
reg   [7:0] zext_ln172_11_reg_2666;
wire   [8:0] zext_ln172_12_fu_1595_p1;
reg   [8:0] zext_ln172_12_reg_2672;
wire   [8:0] add_ln331_2_fu_1598_p2;
reg   [8:0] add_ln331_2_reg_2678;
wire   [63:0] zext_ln332_6_fu_1611_p1;
reg   [63:0] zext_ln332_6_reg_2683;
reg   [7:0] smem_addr_24_reg_2693;
reg   [7:0] smem_1_addr_24_reg_2698;
reg   [7:0] smem_2_addr_24_reg_2703;
reg   [63:0] DATA_y_load_8_reg_2708;
reg   [63:0] DATA_y_load_12_reg_2715;
reg   [63:0] DATA_y_1_load_1_reg_2722;
reg   [63:0] DATA_y_1_load_8_reg_2729;
reg   [6:0] tmp_30_reg_2736;
reg   [7:0] tmp_31_reg_2741;
wire   [8:0] add_ln333_1_fu_1664_p2;
reg   [8:0] add_ln333_1_reg_2756;
wire   [63:0] zext_ln334_5_fu_1676_p1;
reg   [63:0] zext_ln334_5_reg_2761;
reg   [7:0] tmp_45_reg_2771;
wire   [8:0] add_ln333_2_fu_1700_p2;
reg   [8:0] add_ln333_2_reg_2781;
reg   [63:0] DATA_y_load_1_reg_2786;
reg   [63:0] DATA_y_load_5_reg_2793;
reg   [63:0] DATA_y_1_load_5_reg_2800;
reg   [63:0] DATA_y_1_load_9_reg_2807;
reg   [6:0] tmp_38_reg_2814;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] tmp_39_reg_2819;
reg   [7:0] tmp_47_reg_2829;
reg   [63:0] DATA_y_load_2_reg_2844;
reg   [63:0] DATA_y_load_9_reg_2851;
reg   [63:0] DATA_y_1_load_2_reg_2858;
reg   [63:0] DATA_y_1_load_6_reg_2865;
reg   [6:0] tmp_32_reg_2872;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] add_ln335_fu_1790_p2;
reg   [7:0] add_ln335_reg_2877;
wire   [63:0] zext_ln336_4_fu_1802_p1;
reg   [63:0] zext_ln336_4_reg_2882;
reg   [6:0] tmp_40_reg_2892;
reg   [6:0] tmp_46_reg_2907;
wire   [63:0] zext_ln336_6_fu_1861_p1;
reg   [63:0] zext_ln336_6_reg_2912;
reg   [63:0] DATA_y_load_6_reg_2922;
reg   [63:0] DATA_y_load_10_reg_2929;
reg   [63:0] DATA_y_1_load_10_reg_2936;
reg   [7:0] tmp_33_reg_2943;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [7:0] tmp_34_reg_2948;
wire   [7:0] add_ln335_1_fu_1901_p2;
reg   [7:0] add_ln335_1_reg_2953;
reg   [6:0] tmp_48_reg_2958;
wire   [7:0] add_ln335_2_fu_1931_p2;
reg   [7:0] add_ln335_2_reg_2963;
reg   [63:0] DATA_y_load_3_reg_2978;
reg   [63:0] DATA_y_load_7_reg_2985;
reg   [63:0] DATA_y_1_load_7_reg_2992;
reg   [63:0] DATA_y_1_load_11_reg_2999;
reg   [7:0] tmp_41_reg_3006;
reg   [7:0] tmp_42_reg_3011;
reg   [7:0] tmp_49_reg_3016;
wire   [31:0] add_ln331_3_fu_1994_p2;
reg   [31:0] add_ln331_3_reg_3021;
wire   [31:0] add_ln332_3_fu_1999_p2;
reg   [31:0] add_ln332_3_reg_3026;
reg   [63:0] DATA_y_load_11_reg_3031;
reg   [63:0] DATA_y_1_load_12_reg_3038;
reg   [7:0] tmp_50_reg_3045;
wire   [64:0] zext_ln331_7_fu_2016_p1;
wire   [64:0] zext_ln332_11_fu_2020_p1;
wire   [31:0] add_ln333_3_fu_2024_p2;
reg   [31:0] add_ln333_3_reg_3060;
wire   [31:0] add_ln334_3_fu_2029_p2;
reg   [31:0] add_ln334_3_reg_3065;
reg   [8:0] tmp_35_reg_3070;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [7:0] smem_addr_25_reg_3075;
reg   [7:0] smem_1_addr_25_reg_3080;
reg   [7:0] smem_2_addr_25_reg_3085;
reg   [7:0] smem_addr_26_reg_3090;
reg   [7:0] smem_1_addr_26_reg_3095;
reg   [7:0] smem_2_addr_26_reg_3100;
wire   [64:0] zext_ln333_7_fu_2057_p1;
wire   [64:0] zext_ln334_11_fu_2061_p1;
wire   [31:0] add_ln335_3_fu_2065_p2;
reg   [31:0] add_ln335_3_reg_3115;
wire   [31:0] add_ln336_3_fu_2070_p2;
reg   [31:0] add_ln336_3_reg_3120;
reg   [8:0] tmp_43_reg_3125;
reg   [7:0] smem_addr_27_reg_3130;
reg   [7:0] smem_1_addr_27_reg_3135;
reg   [7:0] smem_2_addr_27_reg_3140;
reg   [7:0] smem_addr_28_reg_3145;
reg   [7:0] smem_1_addr_28_reg_3150;
reg   [7:0] smem_2_addr_28_reg_3155;
wire   [64:0] zext_ln335_7_fu_2098_p1;
wire   [64:0] zext_ln336_11_fu_2102_p1;
wire   [31:0] add_ln337_3_fu_2106_p2;
reg   [31:0] add_ln337_3_reg_3170;
reg   [8:0] tmp_51_reg_3175;
reg   [7:0] smem_addr_29_reg_3180;
reg   [7:0] smem_1_addr_29_reg_3185;
reg   [7:0] smem_2_addr_29_reg_3190;
reg   [7:0] smem_addr_30_reg_3195;
reg   [7:0] smem_1_addr_30_reg_3200;
reg   [7:0] smem_2_addr_30_reg_3205;
wire   [64:0] zext_ln337_7_fu_2134_p1;
reg   [7:0] smem_addr_31_reg_3215;
reg   [7:0] smem_1_addr_31_reg_3220;
reg   [7:0] smem_2_addr_31_reg_3225;
wire   [1:0] trunc_ln172_3_fu_2163_p1;
reg   [1:0] trunc_ln172_3_reg_3230;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] DATA_y_load_14_reg_3269;
reg   [63:0] DATA_y_load_15_reg_3276;
reg   [63:0] DATA_y_1_load_15_reg_3283;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage12_subdone;
wire   [63:0] zext_ln330_fu_1417_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln330_1_fu_1449_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln330_2_fu_1514_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln332_5_fu_1586_p1;
wire   [63:0] zext_ln172_16_fu_1616_p1;
wire   [63:0] zext_ln334_4_fu_1658_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln334_6_fu_1759_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln336_5_fu_1839_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln331_3_fu_2043_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln332_3_fu_2050_p1;
wire   [63:0] zext_ln333_3_fu_2084_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln334_3_fu_2091_p1;
wire   [63:0] zext_ln335_3_fu_2120_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln336_3_fu_2127_p1;
wire   [63:0] zext_ln337_3_fu_2138_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln172_4_fu_2145_p1;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln172_9_fu_2151_p1;
wire   [63:0] zext_ln172_14_fu_2157_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln331_1_fu_2167_p1;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln331_2_fu_2173_p1;
wire   [63:0] zext_ln332_1_fu_2179_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln332_2_fu_2185_p1;
wire   [63:0] zext_ln333_1_fu_2191_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln333_2_fu_2197_p1;
wire   [63:0] zext_ln334_1_fu_2203_p1;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln334_2_fu_2209_p1;
wire   [63:0] zext_ln331_fu_2215_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln335_2_fu_2221_p1;
wire   [63:0] zext_ln332_fu_2227_p1;
wire   [63:0] zext_ln336_2_fu_2233_p1;
wire   [63:0] zext_ln333_fu_2239_p1;
wire   [63:0] zext_ln337_2_fu_2245_p1;
wire   [63:0] zext_ln334_fu_2251_p1;
wire   [63:0] zext_ln335_1_fu_2257_p1;
wire   [63:0] zext_ln335_fu_2263_p1;
wire   [63:0] zext_ln336_1_fu_2269_p1;
wire   [63:0] zext_ln336_fu_2275_p1;
wire   [63:0] zext_ln337_1_fu_2281_p1;
wire   [63:0] zext_ln337_fu_2287_p1;
wire   [63:0] zext_ln332_7_fu_2300_p1;
wire   [63:0] zext_ln334_7_fu_2313_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln336_7_fu_2326_p1;
reg   [6:0] tid_fu_164;
wire   [6:0] add_ln325_fu_1366_p2;
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
reg    smem_1_we1_local;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage18_11001;
wire    ap_block_pp0_stage19_11001;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage8;
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
reg   [31:0] grp_fu_1219_p0;
reg   [31:0] grp_fu_1224_p0;
wire   [0:0] tmp_52_fu_1281_p3;
wire   [31:0] zext_ln326_fu_1277_p1;
wire   [2:0] or_ln4_fu_1289_p3;
wire   [31:0] grp_fu_1309_p0;
wire   [2:0] grp_fu_1309_p1;
wire   [2:0] grp_fu_1315_p1;
wire   [5:0] grp_fu_1337_p0;
wire   [2:0] grp_fu_1337_p1;
wire   [5:0] grp_fu_1360_p0;
wire   [2:0] grp_fu_1360_p1;
wire   [1:0] grp_fu_1315_p2;
wire   [1:0] grp_fu_1337_p2;
wire   [1:0] grp_fu_1360_p2;
wire   [5:0] mul_ln172_fu_1394_p0;
wire   [7:0] mul_ln172_fu_1394_p1;
wire   [12:0] mul_ln172_fu_1394_p2;
wire   [7:0] shl_ln8_fu_1410_p3;
wire   [5:0] mul_ln172_1_fu_1426_p0;
wire   [7:0] mul_ln172_1_fu_1426_p1;
wire   [12:0] mul_ln172_1_fu_1426_p2;
wire   [7:0] shl_ln330_1_fu_1442_p3;
wire   [7:0] or_ln_fu_1464_p3;
wire   [5:0] mul_ln172_2_fu_1491_p0;
wire   [7:0] mul_ln172_2_fu_1491_p1;
wire   [12:0] mul_ln172_2_fu_1491_p2;
wire   [7:0] or_ln3_fu_1507_p3;
wire   [7:0] shl_ln330_2_fu_1524_p3;
wire   [8:0] mul_ln331_fu_1539_p0;
wire   [10:0] mul_ln331_fu_1539_p1;
wire   [18:0] mul_ln331_fu_1539_p2;
wire   [8:0] mul_ln331_1_fu_1563_p0;
wire   [10:0] mul_ln331_1_fu_1563_p1;
wire   [18:0] mul_ln331_1_fu_1563_p2;
wire   [7:0] or_ln332_1_fu_1579_p3;
wire   [7:0] or_ln332_2_fu_1604_p3;
wire   [30:0] grp_fu_1229_p4;
wire   [16:0] tmp_30_fu_1623_p1;
wire  signed [16:0] grp_fu_2332_p3;
wire   [8:0] mul_ln333_fu_1635_p0;
wire   [10:0] mul_ln333_fu_1635_p1;
wire   [18:0] mul_ln333_fu_1635_p2;
wire   [7:0] or_ln1_fu_1651_p3;
wire   [7:0] or_ln334_1_fu_1669_p3;
wire   [8:0] mul_ln331_2_fu_1684_p0;
wire   [10:0] mul_ln331_2_fu_1684_p1;
wire   [18:0] mul_ln331_2_fu_1684_p2;
wire   [16:0] tmp_38_fu_1705_p1;
wire  signed [16:0] grp_fu_2341_p3;
wire   [8:0] mul_ln333_1_fu_1717_p0;
wire   [10:0] mul_ln333_1_fu_1717_p1;
wire   [18:0] mul_ln333_1_fu_1717_p2;
wire   [8:0] mul_ln333_2_fu_1736_p0;
wire   [10:0] mul_ln333_2_fu_1736_p1;
wire   [18:0] mul_ln333_2_fu_1736_p2;
wire   [7:0] or_ln334_2_fu_1752_p3;
wire   [7:0] add_ln334_fu_1765_p2;
wire   [7:0] mul_ln334_fu_1774_p0;
wire   [9:0] mul_ln334_fu_1774_p1;
wire   [16:0] mul_ln334_fu_1774_p2;
wire   [7:0] or_ln2_fu_1795_p3;
wire   [7:0] add_ln334_1_fu_1807_p2;
wire   [7:0] mul_ln334_1_fu_1816_p0;
wire   [9:0] mul_ln334_1_fu_1816_p1;
wire   [16:0] mul_ln334_1_fu_1816_p2;
wire   [7:0] or_ln336_1_fu_1832_p3;
wire   [16:0] tmp_46_fu_1845_p1;
wire  signed [16:0] grp_fu_2350_p3;
wire   [7:0] or_ln336_2_fu_1854_p3;
wire  signed [8:0] sext_ln335_fu_1869_p1;
wire   [8:0] mul_ln335_fu_1876_p0;
wire   [10:0] mul_ln335_fu_1876_p1;
wire   [18:0] mul_ln335_fu_1876_p2;
wire   [18:0] tmp_34_fu_1892_p1;
wire  signed [18:0] grp_fu_2359_p3;
wire   [7:0] add_ln334_2_fu_1906_p2;
wire   [7:0] mul_ln334_2_fu_1915_p0;
wire   [9:0] mul_ln334_2_fu_1915_p1;
wire   [16:0] mul_ln334_2_fu_1915_p2;
wire  signed [8:0] sext_ln335_1_fu_1939_p1;
wire   [8:0] mul_ln335_1_fu_1946_p0;
wire   [10:0] mul_ln335_1_fu_1946_p1;
wire   [18:0] mul_ln335_1_fu_1946_p2;
wire   [18:0] tmp_42_fu_1962_p1;
wire  signed [18:0] grp_fu_2367_p3;
wire  signed [8:0] sext_ln335_2_fu_1971_p1;
wire   [8:0] mul_ln335_2_fu_1978_p0;
wire   [10:0] mul_ln335_2_fu_1978_p1;
wire   [18:0] mul_ln335_2_fu_1978_p2;
wire   [18:0] tmp_50_fu_2007_p1;
wire  signed [18:0] grp_fu_2375_p3;
wire   [20:0] tmp_35_fu_2034_p1;
wire  signed [20:0] grp_fu_2383_p3;
wire   [30:0] grp_fu_1239_p4;
wire   [20:0] tmp_43_fu_2075_p1;
wire  signed [20:0] grp_fu_2392_p3;
wire   [20:0] tmp_51_fu_2111_p1;
wire  signed [20:0] grp_fu_2401_p3;
wire   [1:0] grp_fu_1309_p2;
wire   [7:0] or_ln332_3_fu_2293_p3;
wire   [7:0] or_ln334_3_fu_2306_p3;
wire   [7:0] or_ln336_3_fu_2319_p3;
wire   [5:0] grp_fu_2332_p0;
wire   [6:0] grp_fu_2332_p1;
wire   [8:0] grp_fu_2332_p2;
wire   [5:0] grp_fu_2341_p0;
wire   [6:0] grp_fu_2341_p1;
wire   [8:0] grp_fu_2341_p2;
wire   [5:0] grp_fu_2350_p0;
wire   [6:0] grp_fu_2350_p1;
wire   [8:0] grp_fu_2350_p2;
wire   [5:0] grp_fu_2359_p0;
wire   [7:0] grp_fu_2359_p1;
wire   [9:0] grp_fu_2359_p2;
wire   [5:0] grp_fu_2367_p0;
wire   [7:0] grp_fu_2367_p1;
wire   [9:0] grp_fu_2367_p2;
wire   [5:0] grp_fu_2375_p0;
wire   [7:0] grp_fu_2375_p1;
wire   [9:0] grp_fu_2375_p2;
wire   [5:0] grp_fu_2383_p0;
wire   [8:0] grp_fu_2383_p1;
wire   [10:0] grp_fu_2383_p2;
wire   [5:0] grp_fu_2392_p0;
wire   [8:0] grp_fu_2392_p1;
wire   [10:0] grp_fu_2392_p2;
wire   [5:0] grp_fu_2401_p0;
wire   [8:0] grp_fu_2401_p1;
wire   [10:0] grp_fu_2401_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage12;
reg    ap_idle_pp0_0to0;
reg   [20:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_2332_p00;
wire   [7:0] grp_fu_2341_p00;
wire   [7:0] grp_fu_2350_p00;
wire   [9:0] grp_fu_2383_p00;
wire   [9:0] grp_fu_2392_p00;
wire   [9:0] grp_fu_2401_p00;
wire   [12:0] mul_ln172_1_fu_1426_p00;
wire   [12:0] mul_ln172_2_fu_1491_p00;
wire   [12:0] mul_ln172_fu_1394_p00;
wire   [18:0] mul_ln331_1_fu_1563_p00;
wire   [18:0] mul_ln331_2_fu_1684_p00;
wire   [18:0] mul_ln331_fu_1539_p00;
wire   [18:0] mul_ln333_1_fu_1717_p00;
wire   [18:0] mul_ln333_2_fu_1736_p00;
wire   [18:0] mul_ln333_fu_1635_p00;
wire   [16:0] mul_ln334_1_fu_1816_p00;
wire   [16:0] mul_ln334_2_fu_1915_p00;
wire   [16:0] mul_ln334_fu_1774_p00;
wire   [18:0] mul_ln335_1_fu_1946_p00;
wire   [18:0] mul_ln335_2_fu_1978_p00;
wire   [18:0] mul_ln335_fu_1876_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_164 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_3ns_2_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_32ns_3ns_2_36_1_U393(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1309_p0),.din1(grp_fu_1309_p1),.ce(1'b1),.dout(grp_fu_1309_p2));
fft1D_512_urem_6ns_3ns_2_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_1_U394(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_2428),.din1(grp_fu_1315_p1),.ce(1'b1),.dout(grp_fu_1315_p2));
fft1D_512_urem_6ns_3ns_2_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_1_U395(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1337_p0),.din1(grp_fu_1337_p1),.ce(1'b1),.dout(grp_fu_1337_p2));
fft1D_512_urem_6ns_3ns_2_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_1_U396(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1360_p0),.din1(grp_fu_1360_p1),.ce(1'b1),.dout(grp_fu_1360_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U397(.din0(mul_ln172_fu_1394_p0),.din1(mul_ln172_fu_1394_p1),.dout(mul_ln172_fu_1394_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U398(.din0(mul_ln172_1_fu_1426_p0),.din1(mul_ln172_1_fu_1426_p1),.dout(mul_ln172_1_fu_1426_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U399(.din0(mul_ln172_2_fu_1491_p0),.din1(mul_ln172_2_fu_1491_p1),.dout(mul_ln172_2_fu_1491_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U400(.din0(mul_ln331_fu_1539_p0),.din1(mul_ln331_fu_1539_p1),.dout(mul_ln331_fu_1539_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U401(.din0(mul_ln331_1_fu_1563_p0),.din1(mul_ln331_1_fu_1563_p1),.dout(mul_ln331_1_fu_1563_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U402(.din0(mul_ln333_fu_1635_p0),.din1(mul_ln333_fu_1635_p1),.dout(mul_ln333_fu_1635_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U403(.din0(mul_ln331_2_fu_1684_p0),.din1(mul_ln331_2_fu_1684_p1),.dout(mul_ln331_2_fu_1684_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U404(.din0(mul_ln333_1_fu_1717_p0),.din1(mul_ln333_1_fu_1717_p1),.dout(mul_ln333_1_fu_1717_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U405(.din0(mul_ln333_2_fu_1736_p0),.din1(mul_ln333_2_fu_1736_p1),.dout(mul_ln333_2_fu_1736_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U406(.din0(mul_ln334_fu_1774_p0),.din1(mul_ln334_fu_1774_p1),.dout(mul_ln334_fu_1774_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U407(.din0(mul_ln334_1_fu_1816_p0),.din1(mul_ln334_1_fu_1816_p1),.dout(mul_ln334_1_fu_1816_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U408(.din0(mul_ln335_fu_1876_p0),.din1(mul_ln335_fu_1876_p1),.dout(mul_ln335_fu_1876_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U409(.din0(mul_ln334_2_fu_1915_p0),.din1(mul_ln334_2_fu_1915_p1),.dout(mul_ln334_2_fu_1915_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U410(.din0(mul_ln335_1_fu_1946_p0),.din1(mul_ln335_1_fu_1946_p1),.dout(mul_ln335_1_fu_1946_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U411(.din0(mul_ln335_2_fu_1978_p0),.din1(mul_ln335_2_fu_1978_p1),.dout(mul_ln335_2_fu_1978_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U412(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2332_p0),.din1(grp_fu_2332_p1),.din2(grp_fu_2332_p2),.ce(1'b1),.dout(grp_fu_2332_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U413(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2341_p0),.din1(grp_fu_2341_p1),.din2(grp_fu_2341_p2),.ce(1'b1),.dout(grp_fu_2341_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U414(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2350_p0),.din1(grp_fu_2350_p1),.din2(grp_fu_2350_p2),.ce(1'b1),.dout(grp_fu_2350_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U415(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2359_p0),.din1(grp_fu_2359_p1),.din2(grp_fu_2359_p2),.ce(1'b1),.dout(grp_fu_2359_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U416(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2367_p0),.din1(grp_fu_2367_p1),.din2(grp_fu_2367_p2),.ce(1'b1),.dout(grp_fu_2367_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U417(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2375_p0),.din1(grp_fu_2375_p1),.din2(grp_fu_2375_p2),.ce(1'b1),.dout(grp_fu_2375_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U418(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2383_p0),.din1(grp_fu_2383_p1),.din2(grp_fu_2383_p2),.ce(1'b1),.dout(grp_fu_2383_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U419(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2392_p0),.din1(grp_fu_2392_p1),.din2(grp_fu_2392_p2),.ce(1'b1),.dout(grp_fu_2392_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U420(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2401_p0),.din1(grp_fu_2401_p1),.din2(grp_fu_2401_p2),.ce(1'b1),.dout(grp_fu_2401_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage20),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage20)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage20_subdone) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage20_subdone) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage12) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_1249 <= DATA_y_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1249 <= DATA_y_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_164 <= 7'd0;
    end else if (((tmp_reg_2424 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_164 <= add_ln325_fu_1366_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_1_load_10_reg_2936 <= DATA_y_1_q1;
        DATA_y_load_10_reg_2929 <= DATA_y_q0;
        DATA_y_load_6_reg_2922 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_load_11_reg_2999 <= DATA_y_1_q0;
        DATA_y_1_load_7_reg_2992 <= DATA_y_1_q1;
        DATA_y_load_3_reg_2978 <= DATA_y_q1;
        DATA_y_load_7_reg_2985 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_load_12_reg_3038 <= DATA_y_1_q1;
        DATA_y_load_11_reg_3031 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_y_1_load_15_reg_3283 <= DATA_y_1_q0;
        DATA_y_load_14_reg_3269 <= DATA_y_q1;
        DATA_y_load_15_reg_3276 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_load_1_reg_2722 <= DATA_y_1_q1;
        DATA_y_1_load_8_reg_2729 <= DATA_y_1_q0;
        DATA_y_load_12_reg_2715 <= DATA_y_q0;
        DATA_y_load_8_reg_2708 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_load_2_reg_2858 <= DATA_y_1_q1;
        DATA_y_1_load_6_reg_2865 <= DATA_y_1_q0;
        DATA_y_load_2_reg_2844 <= DATA_y_q1;
        DATA_y_load_9_reg_2851 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_4_reg_2629 <= DATA_y_1_q0;
        DATA_y_1_load_reg_2622 <= DATA_y_1_q1;
        DATA_y_load_4_reg_2615 <= DATA_y_q0;
        DATA_y_load_reg_2546 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_load_5_reg_2800 <= DATA_y_1_q1;
        DATA_y_1_load_9_reg_2807 <= DATA_y_1_q0;
        DATA_y_load_1_reg_2786 <= DATA_y_q1;
        DATA_y_load_5_reg_2793 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln331_1_reg_2580[8 : 1] <= add_ln331_1_fu_1482_p2[8 : 1];
        add_ln331_reg_2553 <= add_ln331_fu_1458_p2;
        tmp_44_reg_2585 <= {{mul_ln172_2_fu_1491_p2[12:8]}};
        zext_ln172_2_reg_2540[5 : 0] <= zext_ln172_2_fu_1455_p1[5 : 0];
        zext_ln172_6_reg_2568[5 : 1] <= zext_ln172_6_fu_1476_p1[5 : 1];
        zext_ln172_7_reg_2574[5 : 1] <= zext_ln172_7_fu_1479_p1[5 : 1];
        zext_ln330_3_reg_2605[7 : 4] <= zext_ln330_3_fu_1531_p1[7 : 4];
        zext_ln332_4_reg_2558[7 : 2] <= zext_ln332_4_fu_1471_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln331_2_reg_2678[8 : 2] <= add_ln331_2_fu_1598_p2[8 : 2];
        add_ln333_reg_2646 <= add_ln333_fu_1555_p2;
        offset_1_reg_2462[5 : 1] <= offset_1_fu_1329_p3[5 : 1];
        offset_1_reg_2462_pp0_iter1_reg[5 : 1] <= offset_1_reg_2462[5 : 1];
        smem_1_addr_24_reg_2698 <= zext_ln172_16_fu_1616_p1;
        smem_2_addr_24_reg_2703 <= zext_ln172_16_fu_1616_p1;
        smem_addr_24_reg_2693 <= zext_ln172_16_fu_1616_p1;
        tmp_29_reg_2636 <= {{mul_ln331_fu_1539_p2[18:11]}};
        tmp_37_reg_2651 <= {{mul_ln331_1_fu_1563_p2[18:11]}};
        tmp_s_reg_2454 <= {{tid_1_reg_2417[5:1]}};
        tmp_s_reg_2454_pp0_iter1_reg <= tmp_s_reg_2454;
        zext_ln172_11_reg_2666[5 : 2] <= zext_ln172_11_fu_1592_p1[5 : 2];
        zext_ln172_12_reg_2672[5 : 2] <= zext_ln172_12_fu_1595_p1[5 : 2];
        zext_ln332_6_reg_2683[7 : 4] <= zext_ln332_6_fu_1611_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln331_3_reg_3021 <= add_ln331_3_fu_1994_p2;
        add_ln332_3_reg_3026 <= add_ln332_3_fu_1999_p2;
        tmp_41_reg_3006 <= {{mul_ln335_1_fu_1946_p2[18:11]}};
        tmp_42_reg_3011 <= {{tmp_42_fu_1962_p1[18:11]}};
        tmp_49_reg_3016 <= {{mul_ln335_2_fu_1978_p2[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln333_1_reg_2756[8 : 1] <= add_ln333_1_fu_1664_p2[8 : 1];
        add_ln333_2_reg_2781[8 : 2] <= add_ln333_2_fu_1700_p2[8 : 2];
        offset_2_reg_2483[5 : 2] <= offset_2_fu_1352_p3[5 : 2];
        offset_2_reg_2483_pp0_iter1_reg[5 : 2] <= offset_2_reg_2483[5 : 2];
        tmp_20_reg_2471 <= {{tid_1_reg_2417[5:2]}};
        tmp_20_reg_2471_pp0_iter1_reg <= tmp_20_reg_2471;
        tmp_20_reg_2471_pp0_iter2_reg <= tmp_20_reg_2471_pp0_iter1_reg;
        tmp_30_reg_2736 <= {{tmp_30_fu_1623_p1[16:10]}};
        tmp_31_reg_2741 <= {{mul_ln333_fu_1635_p2[18:11]}};
        tmp_45_reg_2771 <= {{mul_ln331_2_fu_1684_p2[18:11]}};
        zext_ln334_5_reg_2761[7 : 3] <= zext_ln334_5_fu_1676_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln333_3_reg_3060 <= add_ln333_3_fu_2024_p2;
        add_ln334_3_reg_3065 <= add_ln334_3_fu_2029_p2;
        tmp_50_reg_3045 <= {{tmp_50_fu_2007_p1[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln335_1_reg_2953[7 : 1] <= add_ln335_1_fu_1901_p2[7 : 1];
        add_ln335_2_reg_2963[7 : 2] <= add_ln335_2_fu_1931_p2[7 : 2];
        tmp_33_reg_2943 <= {{mul_ln335_fu_1876_p2[18:11]}};
        tmp_34_reg_2948 <= {{tmp_34_fu_1892_p1[18:11]}};
        tmp_48_reg_2958 <= {{mul_ln334_2_fu_1915_p2[16:10]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln335_3_reg_3115 <= add_ln335_3_fu_2065_p2;
        add_ln336_3_reg_3120 <= add_ln336_3_fu_2070_p2;
        smem_1_addr_25_reg_3080 <= zext_ln331_3_fu_2043_p1;
        smem_1_addr_26_reg_3095 <= zext_ln332_3_fu_2050_p1;
        smem_2_addr_25_reg_3085 <= zext_ln331_3_fu_2043_p1;
        smem_2_addr_26_reg_3100 <= zext_ln332_3_fu_2050_p1;
        smem_addr_25_reg_3075 <= zext_ln331_3_fu_2043_p1;
        smem_addr_26_reg_3090 <= zext_ln332_3_fu_2050_p1;
        tmp_35_reg_3070 <= {{tmp_35_fu_2034_p1[20:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln335_reg_2877 <= add_ln335_fu_1790_p2;
        tmp_32_reg_2872 <= {{mul_ln334_fu_1774_p2[16:10]}};
        tmp_40_reg_2892 <= {{mul_ln334_1_fu_1816_p2[16:10]}};
        tmp_46_reg_2907 <= {{tmp_46_fu_1845_p1[16:10]}};
        zext_ln336_4_reg_2882[7 : 2] <= zext_ln336_4_fu_1802_p1[7 : 2];
        zext_ln336_6_reg_2912[7 : 4] <= zext_ln336_6_fu_1861_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln337_3_reg_3170 <= add_ln337_3_fu_2106_p2;
        smem_1_addr_27_reg_3135 <= zext_ln333_3_fu_2084_p1;
        smem_1_addr_28_reg_3150 <= zext_ln334_3_fu_2091_p1;
        smem_2_addr_27_reg_3140 <= zext_ln333_3_fu_2084_p1;
        smem_2_addr_28_reg_3155 <= zext_ln334_3_fu_2091_p1;
        smem_addr_27_reg_3130 <= zext_ln333_3_fu_2084_p1;
        smem_addr_28_reg_3145 <= zext_ln334_3_fu_2091_p1;
        tmp_43_reg_3125 <= {{tmp_43_fu_2075_p1[20:12]}};
        trunc_ln172_reg_2492 <= trunc_ln172_fu_1376_p1;
        trunc_ln172_reg_2492_pp0_iter1_reg <= trunc_ln172_reg_2492;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_3_reg_2441 <= offset_3_fu_1297_p5;
        offset_3_reg_2441_pp0_iter1_reg <= offset_3_reg_2441;
        offset_reg_2428 <= offset_fu_1273_p1;
        offset_reg_2428_pp0_iter1_reg <= offset_reg_2428;
        tid_1_reg_2417 <= ap_sig_allocacmp_tid_1;
        tmp_28_reg_2510 <= {{mul_ln172_fu_1394_p2[12:8]}};
        tmp_36_reg_2525 <= {{mul_ln172_1_fu_1426_p2[12:8]}};
        tmp_reg_2424 <= ap_sig_allocacmp_tid_1[32'd6];
        tmp_reg_2424_pp0_iter1_reg <= tmp_reg_2424;
        zext_ln172_1_reg_2504[5 : 0] <= zext_ln172_1_fu_1388_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_addr_29_reg_3185 <= zext_ln335_3_fu_2120_p1;
        smem_1_addr_30_reg_3200 <= zext_ln336_3_fu_2127_p1;
        smem_2_addr_29_reg_3190 <= zext_ln335_3_fu_2120_p1;
        smem_2_addr_30_reg_3205 <= zext_ln336_3_fu_2127_p1;
        smem_addr_29_reg_3180 <= zext_ln335_3_fu_2120_p1;
        smem_addr_30_reg_3195 <= zext_ln336_3_fu_2127_p1;
        tmp_51_reg_3175 <= {{tmp_51_fu_2111_p1[20:12]}};
        trunc_ln172_1_reg_2496 <= trunc_ln172_1_fu_1380_p1;
        trunc_ln172_1_reg_2496_pp0_iter1_reg <= trunc_ln172_1_reg_2496;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_addr_31_reg_3220 <= zext_ln337_3_fu_2138_p1;
        smem_2_addr_31_reg_3225 <= zext_ln337_3_fu_2138_p1;
        smem_addr_31_reg_3215 <= zext_ln337_3_fu_2138_p1;
        trunc_ln172_2_reg_2500 <= trunc_ln172_2_fu_1384_p1;
        trunc_ln172_2_reg_2500_pp0_iter1_reg <= trunc_ln172_2_reg_2500;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_38_reg_2814 <= {{tmp_38_fu_1705_p1[16:10]}};
        tmp_39_reg_2819 <= {{mul_ln333_1_fu_1717_p2[18:11]}};
        tmp_47_reg_2829 <= {{mul_ln333_2_fu_1736_p2[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        trunc_ln172_3_reg_3230 <= trunc_ln172_3_fu_2163_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_address0_local = zext_ln336_7_fu_2326_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_address0_local = zext_ln332_7_fu_2300_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_address0_local = zext_ln336_4_reg_2882;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_1_address0_local = zext_ln336_6_fu_1861_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_address0_local = zext_ln334_5_fu_1676_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address0_local = zext_ln332_6_fu_1611_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln330_2_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address0_local = zext_ln330_1_fu_1449_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_address1_local = zext_ln334_7_fu_2313_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_address1_local = zext_ln330_3_reg_2605;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_1_address1_local = zext_ln336_5_fu_1839_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_address1_local = zext_ln334_6_fu_1759_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_address1_local = zext_ln334_4_fu_1658_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address1_local = zext_ln332_5_fu_1586_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address1_local = zext_ln332_4_fu_1471_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address1_local = zext_ln330_fu_1417_p1;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_address0_local = zext_ln336_7_fu_2326_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_address0_local = zext_ln332_7_fu_2300_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_address0_local = zext_ln336_5_fu_1839_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_address0_local = zext_ln334_6_fu_1759_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_address0_local = zext_ln332_6_reg_2683;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address0_local = zext_ln332_5_fu_1586_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln330_3_fu_1531_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_address0_local = zext_ln330_1_fu_1449_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_address1_local = zext_ln334_7_fu_2313_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_address1_local = zext_ln336_6_reg_2912;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_address1_local = zext_ln336_4_fu_1802_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_address1_local = zext_ln334_5_reg_2761;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_address1_local = zext_ln334_4_fu_1658_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address1_local = zext_ln332_4_reg_2558;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address1_local = zext_ln330_2_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_address1_local = zext_ln330_fu_1417_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2424 == 1'd1) & (1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (tmp_reg_2424_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_164;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_1219_p0 = zext_ln337_7_fu_2134_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1219_p0 = zext_ln335_7_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1219_p0 = zext_ln333_7_fu_2057_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1219_p0 = zext_ln331_7_fu_2016_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1219_p0 = zext_ln172_15_fu_1520_p1;
        end else begin
            grp_fu_1219_p0 = 'bx;
        end
    end else begin
        grp_fu_1219_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1224_p0 = zext_ln336_11_fu_2102_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1224_p0 = zext_ln334_11_fu_2061_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1224_p0 = zext_ln332_11_fu_2020_p1;
        end else begin
            grp_fu_1224_p0 = 'bx;
        end
    end else begin
        grp_fu_1224_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address0_local = smem_1_addr_30_reg_3200;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = smem_1_addr_28_reg_3150;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = smem_1_addr_26_reg_3095;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln337_fu_2287_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln337_1_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln336_1_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln335_1_fu_2257_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln337_2_fu_2245_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln336_2_fu_2233_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_1_address0_local = zext_ln335_2_fu_2221_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_1_address0_local = zext_ln334_2_fu_2209_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_1_address0_local = zext_ln333_2_fu_2197_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_1_address0_local = zext_ln332_2_fu_2185_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_1_address0_local = zext_ln331_2_fu_2173_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address0_local = zext_ln172_14_fu_2157_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address0_local = zext_ln172_9_fu_2151_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address1_local = smem_1_addr_31_reg_3220;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address1_local = smem_1_addr_29_reg_3185;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address1_local = smem_1_addr_27_reg_3135;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = smem_1_addr_25_reg_3080;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln336_fu_2275_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln335_fu_2263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln334_fu_2251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln333_fu_2239_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln332_fu_2227_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_1_address1_local = zext_ln331_fu_2215_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_1_address1_local = zext_ln334_1_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_1_address1_local = zext_ln333_1_fu_2191_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_1_address1_local = zext_ln332_1_fu_2179_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_1_address1_local = zext_ln331_1_fu_2167_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address1_local = smem_1_addr_24_reg_2698;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address1_local = zext_ln172_4_fu_2145_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d0_local = DATA_y_load_15_reg_3276;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_y_load_14_reg_3269;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = DATA_y_1_load_7_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_load_7_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_1_load_6_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_1_load_11_reg_2999;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_load_11_reg_3031;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_1_d0_local = DATA_y_1_load_10_reg_2936;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_1_d0_local = DATA_y_load_10_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_1_d0_local = DATA_y_1_load_9_reg_2807;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_1_d0_local = DATA_y_load_9_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_1_d0_local = DATA_y_1_load_8_reg_2729;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d0_local = DATA_y_load_8_reg_2708;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d0_local = DATA_y_load_4_reg_2615;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d1_local = DATA_y_1_load_15_reg_3283;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        smem_1_d1_local = reg_1249;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d1_local = DATA_y_1_load_12_reg_3038;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d1_local = DATA_y_load_3_reg_2978;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d1_local = DATA_y_1_load_2_reg_2858;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = DATA_y_load_2_reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_1_load_1_reg_2722;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_y_load_1_reg_2786;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_1_d1_local = DATA_y_1_load_reg_2622;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_1_d1_local = DATA_y_load_6_reg_2922;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_1_d1_local = DATA_y_1_load_5_reg_2800;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_1_d1_local = DATA_y_load_5_reg_2793;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_1_d1_local = DATA_y_1_load_4_reg_2629;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d1_local = DATA_y_load_12_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d1_local = DATA_y_load_reg_2546;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg== 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) &(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_3_reg_3230 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address0_local = smem_2_addr_30_reg_3205;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = smem_2_addr_28_reg_3155;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = smem_2_addr_26_reg_3100;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln337_fu_2287_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln337_1_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln336_1_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln335_1_fu_2257_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln337_2_fu_2245_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln336_2_fu_2233_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_2_address0_local = zext_ln335_2_fu_2221_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_2_address0_local = zext_ln334_2_fu_2209_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_2_address0_local = zext_ln333_2_fu_2197_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_2_address0_local = zext_ln332_2_fu_2185_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_2_address0_local = zext_ln331_2_fu_2173_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address0_local = zext_ln172_14_fu_2157_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address0_local = zext_ln172_9_fu_2151_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address1_local = smem_2_addr_31_reg_3225;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address1_local = smem_2_addr_29_reg_3190;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address1_local = smem_2_addr_27_reg_3140;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = smem_2_addr_25_reg_3085;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln336_fu_2275_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln335_fu_2263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln334_fu_2251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln333_fu_2239_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln332_fu_2227_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_2_address1_local = zext_ln331_fu_2215_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_2_address1_local = zext_ln334_1_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_2_address1_local = zext_ln333_1_fu_2191_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_2_address1_local = zext_ln332_1_fu_2179_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_2_address1_local = zext_ln331_1_fu_2167_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address1_local = smem_2_addr_24_reg_2703;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address1_local = zext_ln172_4_fu_2145_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d0_local = DATA_y_load_15_reg_3276;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_y_load_14_reg_3269;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = DATA_y_1_load_7_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_load_7_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_1_load_6_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_1_load_11_reg_2999;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_load_11_reg_3031;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_2_d0_local = DATA_y_1_load_10_reg_2936;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_2_d0_local = DATA_y_load_10_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_2_d0_local = DATA_y_1_load_9_reg_2807;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_2_d0_local = DATA_y_load_9_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_2_d0_local = DATA_y_1_load_8_reg_2729;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d0_local = DATA_y_load_8_reg_2708;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d0_local = DATA_y_load_4_reg_2615;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d1_local = DATA_y_1_load_15_reg_3283;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        smem_2_d1_local = reg_1249;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d1_local = DATA_y_1_load_12_reg_3038;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d1_local = DATA_y_load_3_reg_2978;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d1_local = DATA_y_1_load_2_reg_2858;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = DATA_y_load_2_reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_1_load_1_reg_2722;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_y_load_1_reg_2786;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_2_d1_local = DATA_y_1_load_reg_2622;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_2_d1_local = DATA_y_load_6_reg_2922;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_2_d1_local = DATA_y_1_load_5_reg_2800;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_2_d1_local = DATA_y_load_5_reg_2793;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_2_d1_local = DATA_y_1_load_4_reg_2629;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d1_local = DATA_y_load_12_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d1_local = DATA_y_load_reg_2546;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg== 2'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_2_reg_2500_pp0_iter1_reg== 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg== 2'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_3_reg_3230 == 2'd1) & ~(trunc_ln172_3_reg_3230 == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage19_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | (~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage13_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd1) & ~(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address0_local = smem_addr_30_reg_3195;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = smem_addr_28_reg_3145;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = smem_addr_26_reg_3090;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln337_fu_2287_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln337_1_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln336_1_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln335_1_fu_2257_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln337_2_fu_2245_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln336_2_fu_2233_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_address0_local = zext_ln335_2_fu_2221_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_address0_local = zext_ln334_2_fu_2209_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_address0_local = zext_ln333_2_fu_2197_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_address0_local = zext_ln332_2_fu_2185_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_address0_local = zext_ln331_2_fu_2173_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address0_local = zext_ln172_14_fu_2157_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address0_local = zext_ln172_9_fu_2151_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address1_local = smem_addr_31_reg_3215;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address1_local = smem_addr_29_reg_3180;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address1_local = smem_addr_27_reg_3130;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = smem_addr_25_reg_3075;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln336_fu_2275_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln335_fu_2263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln334_fu_2251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln333_fu_2239_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln332_fu_2227_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_address1_local = zext_ln331_fu_2215_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_address1_local = zext_ln334_1_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_address1_local = zext_ln333_1_fu_2191_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_address1_local = zext_ln332_1_fu_2179_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_address1_local = zext_ln331_1_fu_2167_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address1_local = smem_addr_24_reg_2693;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address1_local = zext_ln172_4_fu_2145_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d0_local = DATA_y_load_15_reg_3276;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_y_load_14_reg_3269;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = DATA_y_1_load_7_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_load_7_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_1_load_6_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_1_load_11_reg_2999;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_load_11_reg_3031;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_d0_local = DATA_y_1_load_10_reg_2936;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_d0_local = DATA_y_load_10_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_d0_local = DATA_y_1_load_9_reg_2807;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_d0_local = DATA_y_load_9_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_d0_local = DATA_y_1_load_8_reg_2729;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d0_local = DATA_y_load_8_reg_2708;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d0_local = DATA_y_load_4_reg_2615;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d1_local = DATA_y_1_load_15_reg_3283;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        smem_d1_local = reg_1249;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = DATA_y_1_load_12_reg_3038;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d1_local = DATA_y_load_3_reg_2978;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d1_local = DATA_y_1_load_2_reg_2858;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = DATA_y_load_2_reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_1_load_1_reg_2722;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_y_load_1_reg_2786;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        smem_d1_local = DATA_y_1_load_reg_2622;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        smem_d1_local = DATA_y_load_6_reg_2922;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        smem_d1_local = DATA_y_1_load_5_reg_2800;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        smem_d1_local = DATA_y_load_5_reg_2793;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        smem_d1_local = DATA_y_1_load_4_reg_2629;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d1_local = DATA_y_load_12_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d1_local = DATA_y_load_reg_2546;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_2500_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_1_reg_2496_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg== 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) &(trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_2492_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_3_reg_3230 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage12) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
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
assign add_ln325_fu_1366_p2 = (tid_1_reg_2417 + 7'd4);
assign add_ln331_1_fu_1482_p2 = ($signed(zext_ln172_7_fu_1479_p1) + $signed(9'd288));
assign add_ln331_2_fu_1598_p2 = ($signed(zext_ln172_12_fu_1595_p1) + $signed(9'd288));
assign add_ln331_3_fu_1994_p2 = (offset_3_reg_2441_pp0_iter1_reg + 32'd288);
assign add_ln331_fu_1458_p2 = ($signed(zext_ln172_2_fu_1455_p1) + $signed(9'd288));
assign add_ln332_3_fu_1999_p2 = (offset_3_reg_2441_pp0_iter1_reg + 32'd72);
assign add_ln333_1_fu_1664_p2 = ($signed(zext_ln172_7_reg_2574) + $signed(9'd360));
assign add_ln333_2_fu_1700_p2 = ($signed(zext_ln172_12_reg_2672) + $signed(9'd360));
assign add_ln333_3_fu_2024_p2 = (offset_3_reg_2441_pp0_iter1_reg + 32'd360);
assign add_ln333_fu_1555_p2 = ($signed(zext_ln172_2_reg_2540) + $signed(9'd360));
assign add_ln334_1_fu_1807_p2 = ($signed(zext_ln172_6_reg_2568) + $signed(8'd144));
assign add_ln334_2_fu_1906_p2 = ($signed(zext_ln172_11_reg_2666) + $signed(8'd144));
assign add_ln334_3_fu_2029_p2 = (offset_3_reg_2441_pp0_iter1_reg + 32'd144);
assign add_ln334_fu_1765_p2 = ($signed(zext_ln172_1_reg_2504) + $signed(8'd144));
assign add_ln335_1_fu_1901_p2 = ($signed(zext_ln172_6_reg_2568) + $signed(8'd176));
assign add_ln335_2_fu_1931_p2 = ($signed(zext_ln172_11_reg_2666) + $signed(8'd176));
assign add_ln335_3_fu_2065_p2 = (offset_3_reg_2441_pp0_iter1_reg + 32'd432);
assign add_ln335_fu_1790_p2 = ($signed(zext_ln172_1_reg_2504) + $signed(8'd176));
assign add_ln336_3_fu_2070_p2 = (offset_3_reg_2441_pp0_iter1_reg + 32'd216);
assign add_ln337_3_fu_2106_p2 = (offset_3_reg_2441_pp0_iter1_reg + 32'd504);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage20;
assign ap_ready = ap_ready_sig;
assign grp_fu_1229_p4 = {{grp_fu_389_p_dout0[64:34]}};
assign grp_fu_1239_p4 = {{grp_fu_393_p_dout0[64:34]}};
assign grp_fu_1309_p0 = {{zext_ln326_fu_1277_p1[31:3]}, {or_ln4_fu_1289_p3}};
assign grp_fu_1309_p1 = 32'd3;
assign grp_fu_1315_p1 = 6'd3;
assign grp_fu_1337_p0 = {{tmp_s_fu_1320_p4}, {1'd1}};
assign grp_fu_1337_p1 = 6'd3;
assign grp_fu_1360_p0 = {{tmp_20_fu_1343_p4}, {2'd2}};
assign grp_fu_1360_p1 = 6'd3;
assign grp_fu_2332_p0 = grp_fu_2332_p00;
assign grp_fu_2332_p00 = offset_reg_2428;
assign grp_fu_2332_p1 = 8'd72;
assign grp_fu_2332_p2 = 17'd342;
assign grp_fu_2341_p0 = grp_fu_2341_p00;
assign grp_fu_2341_p00 = offset_1_reg_2462;
assign grp_fu_2341_p1 = 8'd72;
assign grp_fu_2341_p2 = 17'd342;
assign grp_fu_2350_p0 = grp_fu_2350_p00;
assign grp_fu_2350_p00 = offset_2_reg_2483;
assign grp_fu_2350_p1 = 8'd72;
assign grp_fu_2350_p2 = 17'd342;
assign grp_fu_2359_p0 = zext_ln172_2_reg_2540;
assign grp_fu_2359_p1 = 9'd216;
assign grp_fu_2359_p2 = 19'd683;
assign grp_fu_2367_p0 = zext_ln172_7_reg_2574;
assign grp_fu_2367_p1 = 9'd216;
assign grp_fu_2367_p2 = 19'd683;
assign grp_fu_2375_p0 = zext_ln172_12_reg_2672;
assign grp_fu_2375_p1 = 9'd216;
assign grp_fu_2375_p2 = 19'd683;
assign grp_fu_2383_p0 = grp_fu_2383_p00;
assign grp_fu_2383_p00 = offset_reg_2428_pp0_iter1_reg;
assign grp_fu_2383_p1 = 10'd504;
assign grp_fu_2383_p2 = 21'd1366;
assign grp_fu_2392_p0 = grp_fu_2392_p00;
assign grp_fu_2392_p00 = offset_1_reg_2462_pp0_iter1_reg;
assign grp_fu_2392_p1 = 10'd504;
assign grp_fu_2392_p2 = 21'd1366;
assign grp_fu_2401_p0 = grp_fu_2401_p00;
assign grp_fu_2401_p00 = offset_2_reg_2483_pp0_iter1_reg;
assign grp_fu_2401_p1 = 10'd504;
assign grp_fu_2401_p2 = 21'd1366;
assign grp_fu_389_p_ce = 1'b1;
assign grp_fu_389_p_din0 = grp_fu_1219_p0;
assign grp_fu_389_p_din1 = 65'd5726623062;
assign grp_fu_393_p_ce = 1'b1;
assign grp_fu_393_p_din0 = grp_fu_1224_p0;
assign grp_fu_393_p_din1 = 65'd5726623062;
assign mul_ln172_1_fu_1426_p0 = mul_ln172_1_fu_1426_p00;
assign mul_ln172_1_fu_1426_p00 = offset_1_reg_2462;
assign mul_ln172_1_fu_1426_p1 = 13'd86;
assign mul_ln172_2_fu_1491_p0 = mul_ln172_2_fu_1491_p00;
assign mul_ln172_2_fu_1491_p00 = offset_2_reg_2483;
assign mul_ln172_2_fu_1491_p1 = 13'd86;
assign mul_ln172_fu_1394_p0 = mul_ln172_fu_1394_p00;
assign mul_ln172_fu_1394_p00 = offset_reg_2428;
assign mul_ln172_fu_1394_p1 = 13'd86;
assign mul_ln331_1_fu_1563_p0 = mul_ln331_1_fu_1563_p00;
assign mul_ln331_1_fu_1563_p00 = add_ln331_1_reg_2580;
assign mul_ln331_1_fu_1563_p1 = 19'd683;
assign mul_ln331_2_fu_1684_p0 = mul_ln331_2_fu_1684_p00;
assign mul_ln331_2_fu_1684_p00 = add_ln331_2_reg_2678;
assign mul_ln331_2_fu_1684_p1 = 19'd683;
assign mul_ln331_fu_1539_p0 = mul_ln331_fu_1539_p00;
assign mul_ln331_fu_1539_p00 = add_ln331_reg_2553;
assign mul_ln331_fu_1539_p1 = 19'd683;
assign mul_ln333_1_fu_1717_p0 = mul_ln333_1_fu_1717_p00;
assign mul_ln333_1_fu_1717_p00 = add_ln333_1_reg_2756;
assign mul_ln333_1_fu_1717_p1 = 19'd683;
assign mul_ln333_2_fu_1736_p0 = mul_ln333_2_fu_1736_p00;
assign mul_ln333_2_fu_1736_p00 = add_ln333_2_reg_2781;
assign mul_ln333_2_fu_1736_p1 = 19'd683;
assign mul_ln333_fu_1635_p0 = mul_ln333_fu_1635_p00;
assign mul_ln333_fu_1635_p00 = add_ln333_reg_2646;
assign mul_ln333_fu_1635_p1 = 19'd683;
assign mul_ln334_1_fu_1816_p0 = mul_ln334_1_fu_1816_p00;
assign mul_ln334_1_fu_1816_p00 = add_ln334_1_fu_1807_p2;
assign mul_ln334_1_fu_1816_p1 = 17'd342;
assign mul_ln334_2_fu_1915_p0 = mul_ln334_2_fu_1915_p00;
assign mul_ln334_2_fu_1915_p00 = add_ln334_2_fu_1906_p2;
assign mul_ln334_2_fu_1915_p1 = 17'd342;
assign mul_ln334_fu_1774_p0 = mul_ln334_fu_1774_p00;
assign mul_ln334_fu_1774_p00 = add_ln334_fu_1765_p2;
assign mul_ln334_fu_1774_p1 = 17'd342;
assign mul_ln335_1_fu_1946_p0 = mul_ln335_1_fu_1946_p00;
assign mul_ln335_1_fu_1946_p00 = $unsigned(sext_ln335_1_fu_1939_p1);
assign mul_ln335_1_fu_1946_p1 = 19'd683;
assign mul_ln335_2_fu_1978_p0 = mul_ln335_2_fu_1978_p00;
assign mul_ln335_2_fu_1978_p00 = $unsigned(sext_ln335_2_fu_1971_p1);
assign mul_ln335_2_fu_1978_p1 = 19'd683;
assign mul_ln335_fu_1876_p0 = mul_ln335_fu_1876_p00;
assign mul_ln335_fu_1876_p00 = $unsigned(sext_ln335_fu_1869_p1);
assign mul_ln335_fu_1876_p1 = 19'd683;
assign offset_1_fu_1329_p3 = {{tmp_s_fu_1320_p4}, {1'd1}};
assign offset_2_fu_1352_p3 = {{tmp_20_fu_1343_p4}, {2'd2}};
assign offset_3_fu_1297_p5 = {{zext_ln326_fu_1277_p1[31:3]}, {or_ln4_fu_1289_p3}};
assign offset_fu_1273_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln1_fu_1651_p3 = {{offset_reg_2428_pp0_iter1_reg}, {2'd1}};
assign or_ln2_fu_1795_p3 = {{offset_reg_2428_pp0_iter1_reg}, {2'd3}};
assign or_ln332_1_fu_1579_p3 = {{tmp_s_reg_2454}, {3'd6}};
assign or_ln332_2_fu_1604_p3 = {{tmp_20_reg_2471}, {4'd10}};
assign or_ln332_3_fu_2293_p3 = {{tmp_20_reg_2471_pp0_iter2_reg}, {4'd14}};
assign or_ln334_1_fu_1669_p3 = {{tmp_s_reg_2454_pp0_iter1_reg}, {3'd5}};
assign or_ln334_2_fu_1752_p3 = {{tmp_20_reg_2471_pp0_iter1_reg}, {4'd9}};
assign or_ln334_3_fu_2306_p3 = {{tmp_20_reg_2471_pp0_iter2_reg}, {4'd13}};
assign or_ln336_1_fu_1832_p3 = {{tmp_s_reg_2454_pp0_iter1_reg}, {3'd7}};
assign or_ln336_2_fu_1854_p3 = {{tmp_20_reg_2471_pp0_iter1_reg}, {4'd11}};
assign or_ln336_3_fu_2319_p3 = {{tmp_20_reg_2471_pp0_iter2_reg}, {4'd15}};
assign or_ln3_fu_1507_p3 = {{tmp_20_reg_2471}, {4'd8}};
assign or_ln4_fu_1289_p3 = {{tmp_52_fu_1281_p3}, {2'd3}};
assign or_ln_fu_1464_p3 = {{offset_reg_2428_pp0_iter1_reg}, {2'd2}};
assign sext_ln335_1_fu_1939_p1 = $signed(add_ln335_1_reg_2953);
assign sext_ln335_2_fu_1971_p1 = $signed(add_ln335_2_reg_2963);
assign sext_ln335_fu_1869_p1 = $signed(add_ln335_reg_2877);
assign shl_ln330_1_fu_1442_p3 = {{tmp_s_reg_2454}, {3'd4}};
assign shl_ln330_2_fu_1524_p3 = {{tmp_20_reg_2471}, {4'd12}};
assign shl_ln8_fu_1410_p3 = {{offset_reg_2428}, {2'd0}};
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
assign tmp_20_fu_1343_p4 = {{tid_1_reg_2417[5:2]}};
assign tmp_30_fu_1623_p1 = grp_fu_2332_p3;
assign tmp_34_fu_1892_p1 = grp_fu_2359_p3;
assign tmp_35_fu_2034_p1 = grp_fu_2383_p3;
assign tmp_38_fu_1705_p1 = grp_fu_2341_p3;
assign tmp_42_fu_1962_p1 = grp_fu_2367_p3;
assign tmp_43_fu_2075_p1 = grp_fu_2392_p3;
assign tmp_46_fu_1845_p1 = grp_fu_2350_p3;
assign tmp_50_fu_2007_p1 = grp_fu_2375_p3;
assign tmp_51_fu_2111_p1 = grp_fu_2401_p3;
assign tmp_52_fu_1281_p3 = ap_sig_allocacmp_tid_1[32'd2];
assign tmp_s_fu_1320_p4 = {{tid_1_reg_2417[5:1]}};
assign trunc_ln172_1_fu_1380_p1 = grp_fu_1337_p2[1:0];
assign trunc_ln172_2_fu_1384_p1 = grp_fu_1360_p2[1:0];
assign trunc_ln172_3_fu_2163_p1 = grp_fu_1309_p2[1:0];
assign trunc_ln172_fu_1376_p1 = grp_fu_1315_p2[1:0];
assign zext_ln172_11_fu_1592_p1 = offset_2_reg_2483;
assign zext_ln172_12_fu_1595_p1 = offset_2_reg_2483;
assign zext_ln172_14_fu_2157_p1 = tmp_44_reg_2585;
assign zext_ln172_15_fu_1520_p1 = offset_3_reg_2441_pp0_iter1_reg;
assign zext_ln172_16_fu_1616_p1 = grp_fu_1229_p4;
assign zext_ln172_1_fu_1388_p1 = offset_reg_2428;
assign zext_ln172_2_fu_1455_p1 = offset_reg_2428_pp0_iter1_reg;
assign zext_ln172_4_fu_2145_p1 = tmp_28_reg_2510;
assign zext_ln172_6_fu_1476_p1 = offset_1_reg_2462;
assign zext_ln172_7_fu_1479_p1 = offset_1_reg_2462;
assign zext_ln172_9_fu_2151_p1 = tmp_36_reg_2525;
assign zext_ln326_fu_1277_p1 = offset_fu_1273_p1;
assign zext_ln330_1_fu_1449_p1 = shl_ln330_1_fu_1442_p3;
assign zext_ln330_2_fu_1514_p1 = or_ln3_fu_1507_p3;
assign zext_ln330_3_fu_1531_p1 = shl_ln330_2_fu_1524_p3;
assign zext_ln330_fu_1417_p1 = shl_ln8_fu_1410_p3;
assign zext_ln331_1_fu_2167_p1 = tmp_37_reg_2651;
assign zext_ln331_2_fu_2173_p1 = tmp_45_reg_2771;
assign zext_ln331_3_fu_2043_p1 = grp_fu_1229_p4;
assign zext_ln331_7_fu_2016_p1 = add_ln331_3_reg_3021;
assign zext_ln331_fu_2215_p1 = tmp_29_reg_2636;
assign zext_ln332_11_fu_2020_p1 = add_ln332_3_reg_3026;
assign zext_ln332_1_fu_2179_p1 = tmp_38_reg_2814;
assign zext_ln332_2_fu_2185_p1 = tmp_46_reg_2907;
assign zext_ln332_3_fu_2050_p1 = grp_fu_1239_p4;
assign zext_ln332_4_fu_1471_p1 = or_ln_fu_1464_p3;
assign zext_ln332_5_fu_1586_p1 = or_ln332_1_fu_1579_p3;
assign zext_ln332_6_fu_1611_p1 = or_ln332_2_fu_1604_p3;
assign zext_ln332_7_fu_2300_p1 = or_ln332_3_fu_2293_p3;
assign zext_ln332_fu_2227_p1 = tmp_30_reg_2736;
assign zext_ln333_1_fu_2191_p1 = tmp_39_reg_2819;
assign zext_ln333_2_fu_2197_p1 = tmp_47_reg_2829;
assign zext_ln333_3_fu_2084_p1 = grp_fu_1229_p4;
assign zext_ln333_7_fu_2057_p1 = add_ln333_3_reg_3060;
assign zext_ln333_fu_2239_p1 = tmp_31_reg_2741;
assign zext_ln334_11_fu_2061_p1 = add_ln334_3_reg_3065;
assign zext_ln334_1_fu_2203_p1 = tmp_40_reg_2892;
assign zext_ln334_2_fu_2209_p1 = tmp_48_reg_2958;
assign zext_ln334_3_fu_2091_p1 = grp_fu_1239_p4;
assign zext_ln334_4_fu_1658_p1 = or_ln1_fu_1651_p3;
assign zext_ln334_5_fu_1676_p1 = or_ln334_1_fu_1669_p3;
assign zext_ln334_6_fu_1759_p1 = or_ln334_2_fu_1752_p3;
assign zext_ln334_7_fu_2313_p1 = or_ln334_3_fu_2306_p3;
assign zext_ln334_fu_2251_p1 = tmp_32_reg_2872;
assign zext_ln335_1_fu_2257_p1 = tmp_41_reg_3006;
assign zext_ln335_2_fu_2221_p1 = tmp_49_reg_3016;
assign zext_ln335_3_fu_2120_p1 = grp_fu_1229_p4;
assign zext_ln335_7_fu_2098_p1 = add_ln335_3_reg_3115;
assign zext_ln335_fu_2263_p1 = tmp_33_reg_2943;
assign zext_ln336_11_fu_2102_p1 = add_ln336_3_reg_3120;
assign zext_ln336_1_fu_2269_p1 = tmp_42_reg_3011;
assign zext_ln336_2_fu_2233_p1 = tmp_50_reg_3045;
assign zext_ln336_3_fu_2127_p1 = grp_fu_1239_p4;
assign zext_ln336_4_fu_1802_p1 = or_ln2_fu_1795_p3;
assign zext_ln336_5_fu_1839_p1 = or_ln336_1_fu_1832_p3;
assign zext_ln336_6_fu_1861_p1 = or_ln336_2_fu_1854_p3;
assign zext_ln336_7_fu_2326_p1 = or_ln336_3_fu_2319_p3;
assign zext_ln336_fu_2275_p1 = tmp_34_reg_2948;
assign zext_ln337_1_fu_2281_p1 = tmp_43_reg_3125;
assign zext_ln337_2_fu_2245_p1 = tmp_51_reg_3175;
assign zext_ln337_3_fu_2138_p1 = grp_fu_1229_p4;
assign zext_ln337_7_fu_2134_p1 = add_ln337_3_reg_3170;
assign zext_ln337_fu_2287_p1 = tmp_35_reg_3070;
always @ (posedge ap_clk) begin
    offset_1_reg_2462[0] <= 1'b1;
    offset_1_reg_2462_pp0_iter1_reg[0] <= 1'b1;
    offset_2_reg_2483[1:0] <= 2'b10;
    offset_2_reg_2483_pp0_iter1_reg[1:0] <= 2'b10;
    zext_ln172_1_reg_2504[7:6] <= 2'b00;
    zext_ln172_2_reg_2540[8:6] <= 3'b000;
    zext_ln332_4_reg_2558[1:0] <= 2'b10;
    zext_ln332_4_reg_2558[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_6_reg_2568[0] <= 1'b1;
    zext_ln172_6_reg_2568[7:6] <= 2'b00;
    zext_ln172_7_reg_2574[0] <= 1'b1;
    zext_ln172_7_reg_2574[8:6] <= 3'b000;
    add_ln331_1_reg_2580[0] <= 1'b1;
    zext_ln330_3_reg_2605[3:0] <= 4'b1100;
    zext_ln330_3_reg_2605[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_11_reg_2666[1:0] <= 2'b10;
    zext_ln172_11_reg_2666[7:6] <= 2'b00;
    zext_ln172_12_reg_2672[1:0] <= 2'b10;
    zext_ln172_12_reg_2672[8:6] <= 3'b000;
    add_ln331_2_reg_2678[1:0] <= 2'b10;
    zext_ln332_6_reg_2683[3:0] <= 4'b1010;
    zext_ln332_6_reg_2683[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln333_1_reg_2756[0] <= 1'b1;
    zext_ln334_5_reg_2761[2:0] <= 3'b101;
    zext_ln334_5_reg_2761[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln333_2_reg_2781[1:0] <= 2'b10;
    zext_ln336_4_reg_2882[1:0] <= 2'b11;
    zext_ln336_4_reg_2882[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln336_6_reg_2912[3:0] <= 4'b1011;
    zext_ln336_6_reg_2912[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln335_1_reg_2953[0] <= 1'b1;
    add_ln335_2_reg_2963[1:0] <= 2'b10;
end
endmodule 