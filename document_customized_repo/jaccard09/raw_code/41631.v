module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1); 
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
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [7:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [7:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_2873;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_1214_p9;
reg   [63:0] reg_1328;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_1233_p9;
reg   [63:0] reg_1334;
reg   [6:0] tid_2_reg_2863;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_2863_pp0_iter1_reg;
reg   [6:0] tid_2_reg_2863_pp0_iter2_reg;
reg   [0:0] tmp_reg_2873_pp0_iter1_reg;
wire   [2:0] tmp_35_fu_1356_p4;
reg   [2:0] tmp_35_reg_2877;
wire   [8:0] offset_fu_1370_p3;
reg   [8:0] offset_reg_2884;
wire   [8:0] offset_1_fu_1393_p4;
reg   [8:0] offset_1_reg_2891;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [8:0] offset_2_fu_1408_p4;
reg   [8:0] offset_2_reg_2898;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [8:0] offset_3_fu_1423_p4;
reg   [8:0] offset_3_reg_2905;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] tmp_36_reg_2912;
wire   [9:0] zext_ln172_7_fu_1470_p1;
reg   [9:0] zext_ln172_7_reg_2917;
reg   [7:0] tmp_45_reg_2922;
wire   [9:0] zext_ln172_13_fu_1495_p1;
reg   [9:0] zext_ln172_13_reg_2927;
reg   [7:0] tmp_55_reg_2933;
reg   [8:0] tmp_37_reg_2938;
reg   [8:0] tmp_38_reg_2943;
reg   [8:0] tmp_39_reg_2948;
reg   [8:0] tmp_40_reg_2953;
reg   [8:0] tmp_41_reg_2958;
reg   [8:0] tmp_42_reg_2963;
reg   [8:0] tmp_43_reg_2968;
reg   [8:0] tmp_46_reg_2973;
reg   [8:0] tmp_47_reg_2978;
reg   [8:0] tmp_48_reg_2983;
reg   [8:0] tmp_49_reg_2988;
reg   [8:0] tmp_50_reg_2993;
reg   [8:0] tmp_51_reg_2998;
reg   [7:0] tmp_73_reg_3003;
wire   [1:0] trunc_ln172_fu_1653_p1;
reg   [1:0] trunc_ln172_reg_3008;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [8:0] tmp_52_reg_3018;
reg   [8:0] tmp_58_reg_3023;
reg   [8:0] tmp_60_reg_3028;
reg   [8:0] tmp_62_reg_3033;
reg   [8:0] tmp_64_reg_3038;
reg   [8:0] tmp_66_reg_3043;
reg   [8:0] tmp_68_reg_3048;
reg   [8:0] tmp_70_reg_3053;
reg   [8:0] tmp_82_reg_3058;
reg   [8:0] tmp_83_reg_3063;
reg   [8:0] tmp_84_reg_3068;
reg   [8:0] tmp_85_reg_3073;
reg   [8:0] tmp_86_reg_3078;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [1:0] trunc_ln172_1_fu_1810_p1;
reg   [1:0] trunc_ln172_1_reg_3173;
reg   [8:0] tmp_87_reg_3185;
reg   [8:0] tmp_88_reg_3190;
wire   [63:0] tmp_21_fu_1832_p9;
reg   [63:0] tmp_21_reg_3195;
wire   [63:0] tmp_22_fu_1851_p9;
reg   [63:0] tmp_22_reg_3200;
wire   [63:0] tmp_23_fu_1870_p9;
reg   [63:0] tmp_23_reg_3205;
wire   [63:0] tmp_24_fu_1889_p9;
reg   [63:0] tmp_24_reg_3210;
wire   [1:0] grp_fu_1417_p2;
reg   [1:0] urem_ln172_2_reg_3290;
wire   [5:0] trunc_ln314_fu_1938_p1;
reg   [5:0] trunc_ln314_reg_3295;
wire   [63:0] tmp_27_fu_1969_p9;
reg   [63:0] tmp_27_reg_3301;
wire   [63:0] tmp_29_fu_1988_p9;
reg   [63:0] tmp_29_reg_3306;
wire   [63:0] tmp_31_fu_2013_p9;
reg   [63:0] tmp_31_reg_3326;
wire   [1:0] trunc_ln172_2_fu_2056_p1;
reg   [1:0] trunc_ln172_2_reg_3391;
wire   [1:0] grp_fu_1432_p2;
reg   [1:0] urem_ln172_3_reg_3401;
wire   [63:0] tmp_30_fu_2085_p9;
reg   [63:0] tmp_30_reg_3406;
wire   [63:0] tmp_32_fu_2104_p9;
reg   [63:0] tmp_32_reg_3411;
wire   [63:0] tmp_33_fu_2123_p9;
reg   [63:0] tmp_33_reg_3416;
wire   [63:0] tmp_34_fu_2142_p9;
reg   [63:0] tmp_34_reg_3421;
wire   [63:0] tmp_53_fu_2161_p9;
reg   [63:0] tmp_53_reg_3426;
wire   [1:0] trunc_ln172_3_fu_2216_p1;
reg   [1:0] trunc_ln172_3_reg_3521;
wire   [4:0] tmp_28_fu_2219_p4;
reg   [4:0] tmp_28_reg_3531;
wire   [63:0] grp_fu_1252_p9;
reg   [63:0] tmp_56_reg_3537;
reg   [3:0] tmp_57_reg_3542;
wire   [63:0] grp_fu_1271_p9;
reg   [63:0] tmp_59_reg_3554;
wire   [63:0] tmp_61_fu_2265_p9;
reg   [63:0] tmp_61_reg_3559;
wire   [63:0] tmp_63_fu_2284_p9;
reg   [63:0] tmp_63_reg_3564;
wire   [63:0] tmp_65_fu_2303_p9;
reg   [63:0] tmp_65_reg_3569;
wire   [63:0] tmp_67_fu_2322_p9;
reg   [63:0] tmp_67_reg_3574;
reg   [63:0] tmp_69_reg_3654;
reg   [63:0] tmp_71_reg_3659;
wire   [63:0] grp_fu_1290_p9;
reg   [63:0] tmp_74_reg_3664;
wire   [63:0] grp_fu_1309_p9;
reg   [63:0] tmp_75_reg_3669;
wire   [63:0] tmp_77_fu_2403_p9;
reg   [63:0] tmp_77_reg_3689;
reg   [63:0] tmp_76_reg_3754;
wire   [63:0] tmp_78_fu_2472_p9;
reg   [63:0] tmp_78_reg_3759;
reg   [63:0] tmp_79_reg_3764;
wire   [63:0] tmp_80_fu_2491_p9;
reg   [63:0] tmp_80_reg_3769;
wire   [63:0] tmp_81_fu_2510_p9;
reg   [63:0] tmp_81_reg_3774;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln172_6_fu_1774_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln315_fu_1780_p1;
wire   [63:0] zext_ln316_fu_1786_p1;
wire   [63:0] zext_ln317_fu_1792_p1;
wire   [63:0] zext_ln318_fu_1798_p1;
wire   [63:0] zext_ln319_fu_1804_p1;
wire   [63:0] zext_ln320_fu_1908_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln321_fu_1914_p1;
wire   [63:0] zext_ln172_9_fu_1920_p1;
wire   [63:0] zext_ln315_1_fu_1926_p1;
wire   [63:0] zext_ln317_1_fu_1932_p1;
wire   [63:0] zext_ln314_fu_1949_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln315_4_fu_1963_p1;
wire   [63:0] zext_ln316_1_fu_2007_p1;
wire   [63:0] zext_ln318_1_fu_2032_p1;
wire   [63:0] zext_ln319_1_fu_2038_p1;
wire   [63:0] zext_ln320_1_fu_2044_p1;
wire   [63:0] zext_ln321_1_fu_2050_p1;
wire   [63:0] zext_ln318_4_fu_2066_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_4_fu_2079_p1;
wire   [63:0] zext_ln172_12_fu_2180_p1;
wire   [63:0] zext_ln315_2_fu_2186_p1;
wire   [63:0] zext_ln316_2_fu_2192_p1;
wire   [63:0] zext_ln317_2_fu_2198_p1;
wire   [63:0] zext_ln318_2_fu_2204_p1;
wire   [63:0] zext_ln319_2_fu_2210_p1;
wire   [63:0] zext_ln314_1_fu_2236_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_5_fu_2250_p1;
wire   [63:0] zext_ln320_2_fu_2341_p1;
wire   [63:0] zext_ln321_2_fu_2347_p1;
wire   [63:0] zext_ln172_15_fu_2353_p1;
wire   [63:0] zext_ln315_3_fu_2359_p1;
wire   [63:0] zext_ln317_3_fu_2365_p1;
wire   [63:0] zext_ln318_5_fu_2378_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln319_5_fu_2391_p1;
wire   [63:0] zext_ln316_3_fu_2397_p1;
wire   [63:0] zext_ln318_3_fu_2422_p1;
wire   [63:0] zext_ln319_3_fu_2428_p1;
wire   [63:0] zext_ln320_3_fu_2434_p1;
wire   [63:0] zext_ln321_3_fu_2440_p1;
wire   [63:0] zext_ln314_2_fu_2453_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_6_fu_2466_p1;
wire   [63:0] zext_ln318_6_fu_2536_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln319_6_fu_2549_p1;
wire   [63:0] zext_ln314_3_fu_2562_p1;
wire   [63:0] zext_ln315_7_fu_2575_p1;
wire   [63:0] zext_ln318_7_fu_2588_p1;
wire   [63:0] zext_ln319_7_fu_2601_p1;
reg   [6:0] tid_fu_132;
wire   [6:0] add_ln309_fu_1438_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [63:0] grp_fu_1214_p7;
wire   [63:0] grp_fu_1233_p7;
wire   [63:0] grp_fu_1252_p7;
wire   [63:0] grp_fu_1271_p7;
wire   [63:0] grp_fu_1290_p7;
wire   [63:0] grp_fu_1309_p7;
wire   [5:0] trunc_ln312_fu_1366_p1;
wire   [8:0] grp_fu_1378_p0;
wire   [2:0] grp_fu_1378_p1;
wire   [4:0] tmp_44_fu_1384_p4;
wire   [8:0] grp_fu_1402_p0;
wire   [2:0] grp_fu_1402_p1;
wire   [3:0] grp_fu_1205_p4;
wire   [8:0] grp_fu_1417_p0;
wire   [2:0] grp_fu_1417_p1;
wire   [8:0] grp_fu_1432_p0;
wire   [2:0] grp_fu_1432_p1;
wire   [8:0] mul_ln172_fu_1454_p0;
wire   [10:0] mul_ln172_fu_1454_p1;
wire   [18:0] mul_ln172_fu_1454_p2;
wire   [8:0] mul_ln172_1_fu_1476_p0;
wire   [10:0] mul_ln172_1_fu_1476_p1;
wire   [18:0] mul_ln172_1_fu_1476_p2;
wire   [8:0] mul_ln172_2_fu_1501_p0;
wire   [10:0] mul_ln172_2_fu_1501_p1;
wire   [18:0] mul_ln172_2_fu_1501_p2;
wire   [20:0] tmp_37_fu_1517_p1;
wire  signed [20:0] grp_fu_2607_p3;
wire   [20:0] tmp_38_fu_1526_p1;
wire  signed [20:0] grp_fu_2616_p3;
wire   [20:0] tmp_39_fu_1535_p1;
wire  signed [20:0] grp_fu_2625_p3;
wire   [20:0] tmp_40_fu_1544_p1;
wire  signed [20:0] grp_fu_2634_p3;
wire   [20:0] tmp_41_fu_1553_p1;
wire  signed [20:0] grp_fu_2643_p3;
wire   [20:0] tmp_42_fu_1562_p1;
wire  signed [20:0] grp_fu_2652_p3;
wire   [20:0] tmp_43_fu_1571_p1;
wire  signed [20:0] grp_fu_2661_p3;
wire   [20:0] tmp_46_fu_1580_p1;
wire  signed [20:0] grp_fu_2670_p3;
wire   [20:0] tmp_47_fu_1589_p1;
wire  signed [20:0] grp_fu_2679_p3;
wire   [20:0] tmp_48_fu_1598_p1;
wire  signed [20:0] grp_fu_2688_p3;
wire   [20:0] tmp_49_fu_1607_p1;
wire  signed [20:0] grp_fu_2697_p3;
wire   [20:0] tmp_50_fu_1616_p1;
wire  signed [20:0] grp_fu_2706_p3;
wire   [20:0] tmp_51_fu_1625_p1;
wire  signed [20:0] grp_fu_2715_p3;
wire   [8:0] mul_ln172_3_fu_1637_p0;
wire   [10:0] mul_ln172_3_fu_1637_p1;
wire   [18:0] mul_ln172_3_fu_1637_p2;
wire   [1:0] grp_fu_1378_p2;
wire   [20:0] tmp_52_fu_1657_p1;
wire  signed [20:0] grp_fu_2724_p3;
wire   [20:0] tmp_58_fu_1666_p1;
wire  signed [20:0] grp_fu_2732_p3;
wire   [20:0] tmp_60_fu_1675_p1;
wire  signed [20:0] grp_fu_2741_p3;
wire   [20:0] tmp_62_fu_1684_p1;
wire  signed [20:0] grp_fu_2750_p3;
wire   [20:0] tmp_64_fu_1693_p1;
wire  signed [20:0] grp_fu_2759_p3;
wire   [20:0] tmp_66_fu_1702_p1;
wire  signed [20:0] grp_fu_2768_p3;
wire   [20:0] tmp_68_fu_1711_p1;
wire  signed [20:0] grp_fu_2777_p3;
wire   [20:0] tmp_70_fu_1720_p1;
wire  signed [20:0] grp_fu_2786_p3;
wire   [20:0] tmp_82_fu_1729_p1;
wire  signed [20:0] grp_fu_2795_p3;
wire   [20:0] tmp_83_fu_1738_p1;
wire  signed [20:0] grp_fu_2804_p3;
wire   [20:0] tmp_84_fu_1747_p1;
wire  signed [20:0] grp_fu_2813_p3;
wire   [20:0] tmp_85_fu_1756_p1;
wire  signed [20:0] grp_fu_2822_p3;
wire   [20:0] tmp_86_fu_1765_p1;
wire  signed [20:0] grp_fu_2831_p3;
wire   [1:0] grp_fu_1402_p2;
wire   [20:0] tmp_87_fu_1814_p1;
wire  signed [20:0] grp_fu_2840_p3;
wire   [20:0] tmp_88_fu_1823_p1;
wire  signed [20:0] grp_fu_2848_p3;
wire   [63:0] tmp_21_fu_1832_p7;
wire   [63:0] tmp_22_fu_1851_p7;
wire   [63:0] tmp_23_fu_1870_p7;
wire   [63:0] tmp_24_fu_1889_p7;
wire   [7:0] shl_ln7_fu_1941_p3;
wire   [7:0] or_ln_fu_1955_p3;
wire   [63:0] tmp_27_fu_1969_p7;
wire   [63:0] tmp_29_fu_1988_p7;
wire   [63:0] tmp_31_fu_2013_p7;
wire   [7:0] or_ln3_fu_2059_p3;
wire   [7:0] or_ln4_fu_2072_p3;
wire   [63:0] tmp_30_fu_2085_p7;
wire   [63:0] tmp_32_fu_2104_p7;
wire   [63:0] tmp_33_fu_2123_p7;
wire   [63:0] tmp_34_fu_2142_p7;
wire   [63:0] tmp_53_fu_2161_p7;
wire   [7:0] shl_ln314_1_fu_2228_p3;
wire   [7:0] or_ln315_1_fu_2242_p3;
wire   [63:0] tmp_61_fu_2265_p7;
wire   [63:0] tmp_63_fu_2284_p7;
wire   [63:0] tmp_65_fu_2303_p7;
wire   [63:0] tmp_67_fu_2322_p7;
wire   [7:0] or_ln318_1_fu_2371_p3;
wire   [7:0] or_ln319_1_fu_2384_p3;
wire   [63:0] tmp_77_fu_2403_p7;
wire   [7:0] or_ln5_fu_2446_p3;
wire   [7:0] or_ln315_2_fu_2459_p3;
wire   [63:0] tmp_78_fu_2472_p7;
wire   [63:0] tmp_80_fu_2491_p7;
wire   [63:0] tmp_81_fu_2510_p7;
wire   [7:0] or_ln318_2_fu_2529_p3;
wire   [7:0] or_ln319_2_fu_2542_p3;
wire   [7:0] shl_ln314_2_fu_2555_p3;
wire   [7:0] or_ln315_3_fu_2568_p3;
wire   [7:0] or_ln318_3_fu_2581_p3;
wire   [7:0] or_ln319_3_fu_2594_p3;
wire   [8:0] grp_fu_2607_p0;
wire   [9:0] zext_ln172_fu_1448_p1;
wire   [5:0] grp_fu_2607_p1;
wire   [10:0] grp_fu_2607_p2;
wire   [8:0] grp_fu_2616_p0;
wire   [3:0] grp_fu_2616_p1;
wire   [10:0] grp_fu_2616_p2;
wire   [8:0] grp_fu_2625_p0;
wire   [5:0] grp_fu_2625_p1;
wire   [10:0] grp_fu_2625_p2;
wire   [8:0] grp_fu_2634_p0;
wire   [4:0] grp_fu_2634_p1;
wire   [10:0] grp_fu_2634_p2;
wire   [8:0] grp_fu_2643_p0;
wire   [5:0] grp_fu_2643_p1;
wire   [10:0] grp_fu_2643_p2;
wire   [8:0] grp_fu_2652_p0;
wire   [4:0] grp_fu_2652_p1;
wire   [10:0] grp_fu_2652_p2;
wire   [8:0] grp_fu_2661_p0;
wire   [5:0] grp_fu_2661_p1;
wire   [10:0] grp_fu_2661_p2;
wire   [8:0] grp_fu_2670_p0;
wire   [5:0] grp_fu_2670_p1;
wire   [10:0] grp_fu_2670_p2;
wire   [8:0] grp_fu_2679_p0;
wire   [3:0] grp_fu_2679_p1;
wire   [10:0] grp_fu_2679_p2;
wire   [8:0] grp_fu_2688_p0;
wire   [5:0] grp_fu_2688_p1;
wire   [10:0] grp_fu_2688_p2;
wire   [8:0] grp_fu_2697_p0;
wire   [4:0] grp_fu_2697_p1;
wire   [10:0] grp_fu_2697_p2;
wire   [8:0] grp_fu_2706_p0;
wire   [5:0] grp_fu_2706_p1;
wire   [10:0] grp_fu_2706_p2;
wire   [8:0] grp_fu_2715_p0;
wire   [4:0] grp_fu_2715_p1;
wire   [10:0] grp_fu_2715_p2;
wire   [8:0] grp_fu_2724_p0;
wire   [5:0] grp_fu_2724_p1;
wire   [10:0] grp_fu_2724_p2;
wire   [8:0] grp_fu_2732_p0;
wire   [9:0] zext_ln172_10_fu_1492_p1;
wire   [5:0] grp_fu_2732_p1;
wire   [10:0] grp_fu_2732_p2;
wire   [8:0] grp_fu_2741_p0;
wire   [3:0] grp_fu_2741_p1;
wire   [10:0] grp_fu_2741_p2;
wire   [8:0] grp_fu_2750_p0;
wire   [5:0] grp_fu_2750_p1;
wire   [10:0] grp_fu_2750_p2;
wire   [8:0] grp_fu_2759_p0;
wire   [4:0] grp_fu_2759_p1;
wire   [10:0] grp_fu_2759_p2;
wire   [8:0] grp_fu_2768_p0;
wire   [5:0] grp_fu_2768_p1;
wire   [10:0] grp_fu_2768_p2;
wire   [8:0] grp_fu_2777_p0;
wire   [4:0] grp_fu_2777_p1;
wire   [10:0] grp_fu_2777_p2;
wire   [8:0] grp_fu_2786_p0;
wire   [5:0] grp_fu_2786_p1;
wire   [10:0] grp_fu_2786_p2;
wire   [8:0] grp_fu_2795_p0;
wire   [5:0] grp_fu_2795_p1;
wire   [10:0] grp_fu_2795_p2;
wire   [8:0] grp_fu_2804_p0;
wire   [3:0] grp_fu_2804_p1;
wire   [10:0] grp_fu_2804_p2;
wire   [8:0] grp_fu_2813_p0;
wire   [5:0] grp_fu_2813_p1;
wire   [10:0] grp_fu_2813_p2;
wire   [8:0] grp_fu_2822_p0;
wire   [4:0] grp_fu_2822_p1;
wire   [10:0] grp_fu_2822_p2;
wire   [8:0] grp_fu_2831_p0;
wire   [5:0] grp_fu_2831_p1;
wire   [10:0] grp_fu_2831_p2;
wire   [8:0] grp_fu_2840_p0;
wire   [4:0] grp_fu_2840_p1;
wire   [10:0] grp_fu_2840_p2;
wire   [8:0] grp_fu_2848_p0;
wire   [5:0] grp_fu_2848_p1;
wire   [10:0] grp_fu_2848_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage6;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_1_fu_1476_p00;
wire   [18:0] mul_ln172_2_fu_1501_p00;
wire   [18:0] mul_ln172_3_fu_1637_p00;
wire   [18:0] mul_ln172_fu_1454_p00;
wire   [1:0] grp_fu_1214_p1;
wire   [1:0] grp_fu_1214_p3;
wire  signed [1:0] grp_fu_1214_p5;
wire   [1:0] grp_fu_1233_p1;
wire  signed [1:0] grp_fu_1233_p3;
wire   [1:0] grp_fu_1233_p5;
wire   [1:0] grp_fu_1252_p1;
wire   [1:0] grp_fu_1252_p3;
wire  signed [1:0] grp_fu_1252_p5;
wire   [1:0] grp_fu_1271_p1;
wire  signed [1:0] grp_fu_1271_p3;
wire   [1:0] grp_fu_1271_p5;
wire   [1:0] grp_fu_1290_p1;
wire   [1:0] grp_fu_1290_p3;
wire  signed [1:0] grp_fu_1290_p5;
wire   [1:0] grp_fu_1309_p1;
wire  signed [1:0] grp_fu_1309_p3;
wire   [1:0] grp_fu_1309_p5;
wire   [1:0] tmp_21_fu_1832_p1;
wire  signed [1:0] tmp_21_fu_1832_p3;
wire   [1:0] tmp_21_fu_1832_p5;
wire  signed [1:0] tmp_22_fu_1851_p1;
wire   [1:0] tmp_22_fu_1851_p3;
wire   [1:0] tmp_22_fu_1851_p5;
wire  signed [1:0] tmp_23_fu_1870_p1;
wire   [1:0] tmp_23_fu_1870_p3;
wire   [1:0] tmp_23_fu_1870_p5;
wire   [1:0] tmp_24_fu_1889_p1;
wire   [1:0] tmp_24_fu_1889_p3;
wire  signed [1:0] tmp_24_fu_1889_p5;
wire   [1:0] tmp_27_fu_1969_p1;
wire   [1:0] tmp_27_fu_1969_p3;
wire  signed [1:0] tmp_27_fu_1969_p5;
wire   [1:0] tmp_29_fu_1988_p1;
wire  signed [1:0] tmp_29_fu_1988_p3;
wire   [1:0] tmp_29_fu_1988_p5;
wire  signed [1:0] tmp_31_fu_2013_p1;
wire   [1:0] tmp_31_fu_2013_p3;
wire   [1:0] tmp_31_fu_2013_p5;
wire   [1:0] tmp_30_fu_2085_p1;
wire  signed [1:0] tmp_30_fu_2085_p3;
wire   [1:0] tmp_30_fu_2085_p5;
wire  signed [1:0] tmp_32_fu_2104_p1;
wire   [1:0] tmp_32_fu_2104_p3;
wire   [1:0] tmp_32_fu_2104_p5;
wire   [1:0] tmp_33_fu_2123_p1;
wire   [1:0] tmp_33_fu_2123_p3;
wire  signed [1:0] tmp_33_fu_2123_p5;
wire   [1:0] tmp_34_fu_2142_p1;
wire   [1:0] tmp_34_fu_2142_p3;
wire  signed [1:0] tmp_34_fu_2142_p5;
wire   [1:0] tmp_53_fu_2161_p1;
wire  signed [1:0] tmp_53_fu_2161_p3;
wire   [1:0] tmp_53_fu_2161_p5;
wire   [1:0] tmp_61_fu_2265_p1;
wire  signed [1:0] tmp_61_fu_2265_p3;
wire   [1:0] tmp_61_fu_2265_p5;
wire  signed [1:0] tmp_63_fu_2284_p1;
wire   [1:0] tmp_63_fu_2284_p3;
wire   [1:0] tmp_63_fu_2284_p5;
wire  signed [1:0] tmp_65_fu_2303_p1;
wire   [1:0] tmp_65_fu_2303_p3;
wire   [1:0] tmp_65_fu_2303_p5;
wire   [1:0] tmp_67_fu_2322_p1;
wire   [1:0] tmp_67_fu_2322_p3;
wire  signed [1:0] tmp_67_fu_2322_p5;
wire  signed [1:0] tmp_77_fu_2403_p1;
wire   [1:0] tmp_77_fu_2403_p3;
wire   [1:0] tmp_77_fu_2403_p5;
wire  signed [1:0] tmp_78_fu_2472_p1;
wire   [1:0] tmp_78_fu_2472_p3;
wire   [1:0] tmp_78_fu_2472_p5;
wire   [1:0] tmp_80_fu_2491_p1;
wire   [1:0] tmp_80_fu_2491_p3;
wire  signed [1:0] tmp_80_fu_2491_p5;
wire   [1:0] tmp_81_fu_2510_p1;
wire  signed [1:0] tmp_81_fu_2510_p3;
wire   [1:0] tmp_81_fu_2510_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U374(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_1214_p7),.sel(trunc_ln172_reg_3008),.dout(grp_fu_1214_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U375(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_1233_p7),.sel(trunc_ln172_reg_3008),.dout(grp_fu_1233_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U376(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_1252_p7),.sel(trunc_ln172_2_reg_3391),.dout(grp_fu_1252_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U377(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_1271_p7),.sel(trunc_ln172_2_reg_3391),.dout(grp_fu_1271_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U378(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(grp_fu_1290_p7),.sel(trunc_ln172_3_reg_3521),.dout(grp_fu_1290_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U379(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(grp_fu_1309_p7),.sel(trunc_ln172_3_reg_3521),.dout(grp_fu_1309_p9));
fft1D_512_urem_9ns_3ns_2_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1378_p0),.din1(grp_fu_1378_p1),.ce(1'b1),.dout(grp_fu_1378_p2));
fft1D_512_urem_9ns_3ns_2_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1402_p0),.din1(grp_fu_1402_p1),.ce(1'b1),.dout(grp_fu_1402_p2));
fft1D_512_urem_9ns_3ns_2_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1417_p0),.din1(grp_fu_1417_p1),.ce(1'b1),.dout(grp_fu_1417_p2));
fft1D_512_urem_9ns_3ns_2_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1432_p0),.din1(grp_fu_1432_p1),.ce(1'b1),.dout(grp_fu_1432_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U384(.din0(mul_ln172_fu_1454_p0),.din1(mul_ln172_fu_1454_p1),.dout(mul_ln172_fu_1454_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U385(.din0(mul_ln172_1_fu_1476_p0),.din1(mul_ln172_1_fu_1476_p1),.dout(mul_ln172_1_fu_1476_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U386(.din0(mul_ln172_2_fu_1501_p0),.din1(mul_ln172_2_fu_1501_p1),.dout(mul_ln172_2_fu_1501_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U387(.din0(mul_ln172_3_fu_1637_p0),.din1(mul_ln172_3_fu_1637_p1),.dout(mul_ln172_3_fu_1637_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U388(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_21_fu_1832_p7),.sel(trunc_ln172_reg_3008),.dout(tmp_21_fu_1832_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U389(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_22_fu_1851_p7),.sel(trunc_ln172_reg_3008),.dout(tmp_22_fu_1851_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U390(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_23_fu_1870_p7),.sel(trunc_ln172_reg_3008),.dout(tmp_23_fu_1870_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U391(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_24_fu_1889_p7),.sel(trunc_ln172_reg_3008),.dout(tmp_24_fu_1889_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U392(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_27_fu_1969_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_27_fu_1969_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U393(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_29_fu_1988_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_29_fu_1988_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U394(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_31_fu_2013_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_31_fu_2013_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U395(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_30_fu_2085_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_30_fu_2085_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U396(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_32_fu_2104_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_32_fu_2104_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U397(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_33_fu_2123_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_33_fu_2123_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U398(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_34_fu_2142_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_34_fu_2142_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U399(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_53_fu_2161_p7),.sel(trunc_ln172_1_reg_3173),.dout(tmp_53_fu_2161_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U400(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_61_fu_2265_p7),.sel(trunc_ln172_2_reg_3391),.dout(tmp_61_fu_2265_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U401(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_63_fu_2284_p7),.sel(trunc_ln172_2_reg_3391),.dout(tmp_63_fu_2284_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U402(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_65_fu_2303_p7),.sel(trunc_ln172_2_reg_3391),.dout(tmp_65_fu_2303_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U403(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_67_fu_2322_p7),.sel(trunc_ln172_2_reg_3391),.dout(tmp_67_fu_2322_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U404(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_77_fu_2403_p7),.sel(trunc_ln172_3_reg_3521),.dout(tmp_77_fu_2403_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U405(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_78_fu_2472_p7),.sel(trunc_ln172_3_reg_3521),.dout(tmp_78_fu_2472_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U406(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_80_fu_2491_p7),.sel(trunc_ln172_3_reg_3521),.dout(tmp_80_fu_2491_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U407(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_81_fu_2510_p7),.sel(trunc_ln172_3_reg_3521),.dout(tmp_81_fu_2510_p9));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U408(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2607_p0),.din1(grp_fu_2607_p1),.din2(grp_fu_2607_p2),.ce(1'b1),.dout(grp_fu_2607_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U409(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2616_p0),.din1(grp_fu_2616_p1),.din2(grp_fu_2616_p2),.ce(1'b1),.dout(grp_fu_2616_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U410(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2625_p0),.din1(grp_fu_2625_p1),.din2(grp_fu_2625_p2),.ce(1'b1),.dout(grp_fu_2625_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U411(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2634_p0),.din1(grp_fu_2634_p1),.din2(grp_fu_2634_p2),.ce(1'b1),.dout(grp_fu_2634_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U412(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2643_p0),.din1(grp_fu_2643_p1),.din2(grp_fu_2643_p2),.ce(1'b1),.dout(grp_fu_2643_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U413(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2652_p0),.din1(grp_fu_2652_p1),.din2(grp_fu_2652_p2),.ce(1'b1),.dout(grp_fu_2652_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U414(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2661_p0),.din1(grp_fu_2661_p1),.din2(grp_fu_2661_p2),.ce(1'b1),.dout(grp_fu_2661_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U415(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2670_p0),.din1(grp_fu_2670_p1),.din2(grp_fu_2670_p2),.ce(1'b1),.dout(grp_fu_2670_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U416(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2679_p0),.din1(grp_fu_2679_p1),.din2(grp_fu_2679_p2),.ce(1'b1),.dout(grp_fu_2679_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U417(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2688_p0),.din1(grp_fu_2688_p1),.din2(grp_fu_2688_p2),.ce(1'b1),.dout(grp_fu_2688_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U418(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2697_p0),.din1(grp_fu_2697_p1),.din2(grp_fu_2697_p2),.ce(1'b1),.dout(grp_fu_2697_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U419(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2706_p0),.din1(grp_fu_2706_p1),.din2(grp_fu_2706_p2),.ce(1'b1),.dout(grp_fu_2706_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U420(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2715_p0),.din1(grp_fu_2715_p1),.din2(grp_fu_2715_p2),.ce(1'b1),.dout(grp_fu_2715_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U421(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2724_p0),.din1(grp_fu_2724_p1),.din2(grp_fu_2724_p2),.ce(1'b1),.dout(grp_fu_2724_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U422(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2732_p0),.din1(grp_fu_2732_p1),.din2(grp_fu_2732_p2),.ce(1'b1),.dout(grp_fu_2732_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U423(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2741_p0),.din1(grp_fu_2741_p1),.din2(grp_fu_2741_p2),.ce(1'b1),.dout(grp_fu_2741_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U424(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2750_p0),.din1(grp_fu_2750_p1),.din2(grp_fu_2750_p2),.ce(1'b1),.dout(grp_fu_2750_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U425(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2759_p0),.din1(grp_fu_2759_p1),.din2(grp_fu_2759_p2),.ce(1'b1),.dout(grp_fu_2759_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U426(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2768_p0),.din1(grp_fu_2768_p1),.din2(grp_fu_2768_p2),.ce(1'b1),.dout(grp_fu_2768_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U427(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2777_p0),.din1(grp_fu_2777_p1),.din2(grp_fu_2777_p2),.ce(1'b1),.dout(grp_fu_2777_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U428(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2786_p0),.din1(grp_fu_2786_p1),.din2(grp_fu_2786_p2),.ce(1'b1),.dout(grp_fu_2786_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U429(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2795_p0),.din1(grp_fu_2795_p1),.din2(grp_fu_2795_p2),.ce(1'b1),.dout(grp_fu_2795_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U430(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2804_p0),.din1(grp_fu_2804_p1),.din2(grp_fu_2804_p2),.ce(1'b1),.dout(grp_fu_2804_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U431(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2813_p0),.din1(grp_fu_2813_p1),.din2(grp_fu_2813_p2),.ce(1'b1),.dout(grp_fu_2813_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U432(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2822_p0),.din1(grp_fu_2822_p1),.din2(grp_fu_2822_p2),.ce(1'b1),.dout(grp_fu_2822_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U433(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2831_p0),.din1(grp_fu_2831_p1),.din2(grp_fu_2831_p2),.ce(1'b1),.dout(grp_fu_2831_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U434(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2840_p0),.din1(grp_fu_2840_p1),.din2(grp_fu_2840_p2),.ce(1'b1),.dout(grp_fu_2840_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U435(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2848_p0),.din1(grp_fu_2848_p1),.din2(grp_fu_2848_p2),.ce(1'b1),.dout(grp_fu_2848_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage6) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_132 <= 7'd0;
    end else if (((tmp_reg_2873 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_fu_132 <= add_ln309_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_1_reg_2891[8 : 1] <= offset_1_fu_1393_p4[8 : 1];
        tmp_28_reg_3531 <= {{tid_2_reg_2863_pp0_iter2_reg[5:1]}};
        tmp_45_reg_2922 <= {{mul_ln172_1_fu_1476_p2[18:11]}};
        tmp_57_reg_3542 <= {{tid_2_reg_2863_pp0_iter2_reg[5:2]}};
        tmp_61_reg_3559 <= tmp_61_fu_2265_p9;
        tmp_63_reg_3564 <= tmp_63_fu_2284_p9;
        tmp_65_reg_3569 <= tmp_65_fu_2303_p9;
        tmp_67_reg_3574 <= tmp_67_fu_2322_p9;
        zext_ln172_13_reg_2927[8 : 2] <= zext_ln172_13_fu_1495_p1[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_2_reg_2898[8 : 2] <= offset_2_fu_1408_p4[8 : 2];
        tmp_55_reg_2933 <= {{mul_ln172_2_fu_1501_p2[18:11]}};
        tmp_77_reg_3689 <= tmp_77_fu_2403_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_3_reg_2905[8 : 2] <= offset_3_fu_1423_p4[8 : 2];
        tmp_37_reg_2938 <= {{tmp_37_fu_1517_p1[20:12]}};
        tmp_38_reg_2943 <= {{tmp_38_fu_1526_p1[20:12]}};
        tmp_39_reg_2948 <= {{tmp_39_fu_1535_p1[20:12]}};
        tmp_40_reg_2953 <= {{tmp_40_fu_1544_p1[20:12]}};
        tmp_41_reg_2958 <= {{tmp_41_fu_1553_p1[20:12]}};
        tmp_42_reg_2963 <= {{tmp_42_fu_1562_p1[20:12]}};
        tmp_43_reg_2968 <= {{tmp_43_fu_1571_p1[20:12]}};
        tmp_46_reg_2973 <= {{tmp_46_fu_1580_p1[20:12]}};
        tmp_47_reg_2978 <= {{tmp_47_fu_1589_p1[20:12]}};
        tmp_48_reg_2983 <= {{tmp_48_fu_1598_p1[20:12]}};
        tmp_49_reg_2988 <= {{tmp_49_fu_1607_p1[20:12]}};
        tmp_50_reg_2993 <= {{tmp_50_fu_1616_p1[20:12]}};
        tmp_51_reg_2998 <= {{tmp_51_fu_1625_p1[20:12]}};
        tmp_73_reg_3003 <= {{mul_ln172_3_fu_1637_p2[18:11]}};
        tmp_78_reg_3759 <= tmp_78_fu_2472_p9;
        tmp_80_reg_3769 <= tmp_80_fu_2491_p9;
        tmp_81_reg_3774 <= tmp_81_fu_2510_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_2884 <= offset_fu_1370_p3;
        tid_2_reg_2863 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_2863_pp0_iter1_reg <= tid_2_reg_2863;
        tid_2_reg_2863_pp0_iter2_reg <= tid_2_reg_2863_pp0_iter1_reg;
        tmp_30_reg_3406 <= tmp_30_fu_2085_p9;
        tmp_32_reg_3411 <= tmp_32_fu_2104_p9;
        tmp_33_reg_3416 <= tmp_33_fu_2123_p9;
        tmp_34_reg_3421 <= tmp_34_fu_2142_p9;
        tmp_35_reg_2877 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_36_reg_2912 <= {{mul_ln172_fu_1454_p2[18:11]}};
        tmp_53_reg_3426 <= tmp_53_fu_2161_p9;
        tmp_reg_2873 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_2873_pp0_iter1_reg <= tmp_reg_2873;
        trunc_ln172_3_reg_3521 <= trunc_ln172_3_fu_2216_p1;
        zext_ln172_7_reg_2917[8 : 1] <= zext_ln172_7_fu_1470_p1[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1328 <= grp_fu_1214_p9;
        reg_1334 <= grp_fu_1233_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_21_reg_3195 <= tmp_21_fu_1832_p9;
        tmp_22_reg_3200 <= tmp_22_fu_1851_p9;
        tmp_23_reg_3205 <= tmp_23_fu_1870_p9;
        tmp_24_reg_3210 <= tmp_24_fu_1889_p9;
        urem_ln172_2_reg_3290 <= grp_fu_1417_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_27_reg_3301 <= tmp_27_fu_1969_p9;
        tmp_29_reg_3306 <= tmp_29_fu_1988_p9;
        tmp_31_reg_3326 <= tmp_31_fu_2013_p9;
        trunc_ln172_2_reg_3391 <= trunc_ln172_2_fu_2056_p1;
        trunc_ln314_reg_3295 <= trunc_ln314_fu_1938_p1;
        urem_ln172_3_reg_3401 <= grp_fu_1432_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_52_reg_3018 <= {{tmp_52_fu_1657_p1[20:12]}};
        tmp_58_reg_3023 <= {{tmp_58_fu_1666_p1[20:12]}};
        tmp_60_reg_3028 <= {{tmp_60_fu_1675_p1[20:12]}};
        tmp_62_reg_3033 <= {{tmp_62_fu_1684_p1[20:12]}};
        tmp_64_reg_3038 <= {{tmp_64_fu_1693_p1[20:12]}};
        tmp_66_reg_3043 <= {{tmp_66_fu_1702_p1[20:12]}};
        tmp_68_reg_3048 <= {{tmp_68_fu_1711_p1[20:12]}};
        tmp_70_reg_3053 <= {{tmp_70_fu_1720_p1[20:12]}};
        tmp_82_reg_3058 <= {{tmp_82_fu_1729_p1[20:12]}};
        tmp_83_reg_3063 <= {{tmp_83_fu_1738_p1[20:12]}};
        tmp_84_reg_3068 <= {{tmp_84_fu_1747_p1[20:12]}};
        tmp_85_reg_3073 <= {{tmp_85_fu_1756_p1[20:12]}};
        tmp_86_reg_3078 <= {{tmp_86_fu_1765_p1[20:12]}};
        trunc_ln172_reg_3008 <= trunc_ln172_fu_1653_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_56_reg_3537 <= grp_fu_1252_p9;
        tmp_59_reg_3554 <= grp_fu_1271_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_69_reg_3654 <= grp_fu_1252_p9;
        tmp_71_reg_3659 <= grp_fu_1271_p9;
        tmp_74_reg_3664 <= grp_fu_1290_p9;
        tmp_75_reg_3669 <= grp_fu_1309_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_76_reg_3754 <= grp_fu_1309_p9;
        tmp_79_reg_3764 <= grp_fu_1290_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_87_reg_3185 <= {{tmp_87_fu_1814_p1[20:12]}};
        tmp_88_reg_3190 <= {{tmp_88_fu_1823_p1[20:12]}};
        trunc_ln172_1_reg_3173 <= trunc_ln172_1_fu_1810_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln319_7_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln315_7_fu_2575_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln319_6_fu_2549_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_6_fu_2466_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln319_5_fu_2391_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_5_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_4_fu_2079_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln315_4_fu_1963_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln318_7_fu_2588_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln314_3_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln318_6_fu_2536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_2_fu_2453_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln318_5_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_2236_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_4_fu_2066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln314_fu_1949_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d0_local = tmp_81_reg_3774;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d0_local = tmp_77_reg_3689;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d0_local = tmp_71_reg_3659;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_63_reg_3564;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_53_reg_3426;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_31_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d0_local = tmp_22_reg_3200;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d1_local = tmp_80_reg_3769;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d1_local = tmp_76_reg_3754;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d1_local = tmp_69_reg_3654;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_61_reg_3559;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_34_reg_3421;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_30_reg_3406;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = reg_1328;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d1_local = tmp_21_reg_3195;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln319_7_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln315_7_fu_2575_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln319_6_fu_2549_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_6_fu_2466_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln319_5_fu_2391_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_5_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_4_fu_2079_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln315_4_fu_1963_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln318_7_fu_2588_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln314_3_fu_2562_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln318_6_fu_2536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_2_fu_2453_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln318_5_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_1_fu_2236_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_4_fu_2066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln314_fu_1949_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d0_local = tmp_79_reg_3764;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d0_local = tmp_75_reg_3669;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d0_local = tmp_67_reg_3574;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_59_reg_3554;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_33_reg_3416;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_29_reg_3306;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_24_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d0_local = reg_1334;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d1_local = tmp_78_reg_3759;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d1_local = tmp_74_reg_3664;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d1_local = tmp_65_reg_3569;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_56_reg_3537;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_32_reg_3411;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_27_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_23_reg_3205;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d1_local = reg_1328;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2873 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_2873_pp0_iter1_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln319_3_fu_2428_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln316_3_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln317_3_fu_2365_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln315_3_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_15_fu_2353_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_2_fu_2210_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_2_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_2_fu_2192_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln319_1_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln316_1_fu_2007_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln317_1_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln315_1_fu_1926_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln172_9_fu_1920_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln319_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln318_fu_1798_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln316_fu_1786_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln321_3_fu_2440_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln320_3_fu_2434_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln318_3_fu_2422_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln321_2_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln320_2_fu_2341_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln317_2_fu_2198_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln315_2_fu_2186_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_12_fu_2180_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln321_1_fu_2050_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln320_1_fu_2044_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln318_1_fu_2032_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln321_fu_1914_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln320_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln317_fu_1792_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln315_fu_1780_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln172_6_fu_1774_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173== 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln319_3_fu_2428_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln316_3_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln317_3_fu_2365_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln315_3_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_15_fu_2353_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_2_fu_2210_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_2_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_2_fu_2192_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln319_1_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln316_1_fu_2007_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln317_1_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln315_1_fu_1926_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln172_9_fu_1920_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln319_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln318_fu_1798_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln316_fu_1786_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln321_3_fu_2440_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln320_3_fu_2434_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln318_3_fu_2422_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln321_2_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln320_2_fu_2341_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln317_2_fu_2198_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln315_2_fu_2186_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_12_fu_2180_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln321_1_fu_2050_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln320_1_fu_2044_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln318_1_fu_2032_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln321_fu_1914_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln320_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln317_fu_1792_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln315_fu_1780_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln172_6_fu_1774_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173== 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln319_3_fu_2428_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln316_3_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln317_3_fu_2365_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln315_3_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_15_fu_2353_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_2_fu_2210_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_2_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_2_fu_2192_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln319_1_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln316_1_fu_2007_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln317_1_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln315_1_fu_1926_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln172_9_fu_1920_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln319_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln318_fu_1798_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln316_fu_1786_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln321_3_fu_2440_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln320_3_fu_2434_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln318_3_fu_2422_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln321_2_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln320_2_fu_2341_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln317_2_fu_2198_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln315_2_fu_2186_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_12_fu_2180_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln321_1_fu_2050_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln320_1_fu_2044_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln318_1_fu_2032_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln321_fu_1914_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln320_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln317_fu_1792_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln315_fu_1780_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln172_6_fu_1774_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173== 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_3_reg_3521 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_2_reg_3391 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_1_reg_3173 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (trunc_ln172_reg_3008 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_3008 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1438_p2 = (tid_2_reg_2863 + 7'd4);
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
assign grp_fu_1205_p4 = {{tid_2_reg_2863[5:2]}};
assign grp_fu_1214_p7 = 'bx;
assign grp_fu_1233_p7 = 'bx;
assign grp_fu_1252_p7 = 'bx;
assign grp_fu_1271_p7 = 'bx;
assign grp_fu_1290_p7 = 'bx;
assign grp_fu_1309_p7 = 'bx;
assign grp_fu_1378_p0 = {{tmp_35_fu_1356_p4}, {trunc_ln312_fu_1366_p1}};
assign grp_fu_1378_p1 = 9'd3;
assign grp_fu_1402_p0 = {{{tmp_35_reg_2877}, {tmp_44_fu_1384_p4}}, {1'd1}};
assign grp_fu_1402_p1 = 9'd3;
assign grp_fu_1417_p0 = {{{tmp_35_reg_2877}, {grp_fu_1205_p4}}, {2'd2}};
assign grp_fu_1417_p1 = 9'd3;
assign grp_fu_1432_p0 = {{{tmp_35_reg_2877}, {grp_fu_1205_p4}}, {2'd3}};
assign grp_fu_1432_p1 = 9'd3;
assign grp_fu_2607_p0 = zext_ln172_fu_1448_p1;
assign grp_fu_2607_p1 = 10'd32;
assign grp_fu_2607_p2 = 21'd1366;
assign grp_fu_2616_p0 = zext_ln172_fu_1448_p1;
assign grp_fu_2616_p1 = 10'd8;
assign grp_fu_2616_p2 = 21'd1366;
assign grp_fu_2625_p0 = zext_ln172_fu_1448_p1;
assign grp_fu_2625_p1 = 10'd40;
assign grp_fu_2625_p2 = 21'd1366;
assign grp_fu_2634_p0 = zext_ln172_fu_1448_p1;
assign grp_fu_2634_p1 = 10'd16;
assign grp_fu_2634_p2 = 21'd1366;
assign grp_fu_2643_p0 = zext_ln172_fu_1448_p1;
assign grp_fu_2643_p1 = 10'd48;
assign grp_fu_2643_p2 = 21'd1366;
assign grp_fu_2652_p0 = zext_ln172_fu_1448_p1;
assign grp_fu_2652_p1 = 10'd24;
assign grp_fu_2652_p2 = 21'd1366;
assign grp_fu_2661_p0 = zext_ln172_fu_1448_p1;
assign grp_fu_2661_p1 = 10'd56;
assign grp_fu_2661_p2 = 21'd1366;
assign grp_fu_2670_p0 = zext_ln172_7_fu_1470_p1;
assign grp_fu_2670_p1 = 10'd32;
assign grp_fu_2670_p2 = 21'd1366;
assign grp_fu_2679_p0 = zext_ln172_7_fu_1470_p1;
assign grp_fu_2679_p1 = 10'd8;
assign grp_fu_2679_p2 = 21'd1366;
assign grp_fu_2688_p0 = zext_ln172_7_fu_1470_p1;
assign grp_fu_2688_p1 = 10'd40;
assign grp_fu_2688_p2 = 21'd1366;
assign grp_fu_2697_p0 = zext_ln172_7_fu_1470_p1;
assign grp_fu_2697_p1 = 10'd16;
assign grp_fu_2697_p2 = 21'd1366;
assign grp_fu_2706_p0 = zext_ln172_7_fu_1470_p1;
assign grp_fu_2706_p1 = 10'd48;
assign grp_fu_2706_p2 = 21'd1366;
assign grp_fu_2715_p0 = zext_ln172_7_fu_1470_p1;
assign grp_fu_2715_p1 = 10'd24;
assign grp_fu_2715_p2 = 21'd1366;
assign grp_fu_2724_p0 = zext_ln172_7_reg_2917;
assign grp_fu_2724_p1 = 10'd56;
assign grp_fu_2724_p2 = 21'd1366;
assign grp_fu_2732_p0 = zext_ln172_10_fu_1492_p1;
assign grp_fu_2732_p1 = 10'd32;
assign grp_fu_2732_p2 = 21'd1366;
assign grp_fu_2741_p0 = zext_ln172_10_fu_1492_p1;
assign grp_fu_2741_p1 = 10'd8;
assign grp_fu_2741_p2 = 21'd1366;
assign grp_fu_2750_p0 = zext_ln172_10_fu_1492_p1;
assign grp_fu_2750_p1 = 10'd40;
assign grp_fu_2750_p2 = 21'd1366;
assign grp_fu_2759_p0 = zext_ln172_10_fu_1492_p1;
assign grp_fu_2759_p1 = 10'd16;
assign grp_fu_2759_p2 = 21'd1366;
assign grp_fu_2768_p0 = zext_ln172_10_fu_1492_p1;
assign grp_fu_2768_p1 = 10'd48;
assign grp_fu_2768_p2 = 21'd1366;
assign grp_fu_2777_p0 = zext_ln172_10_fu_1492_p1;
assign grp_fu_2777_p1 = 10'd24;
assign grp_fu_2777_p2 = 21'd1366;
assign grp_fu_2786_p0 = zext_ln172_10_fu_1492_p1;
assign grp_fu_2786_p1 = 10'd56;
assign grp_fu_2786_p2 = 21'd1366;
assign grp_fu_2795_p0 = zext_ln172_13_fu_1495_p1;
assign grp_fu_2795_p1 = 10'd32;
assign grp_fu_2795_p2 = 21'd1366;
assign grp_fu_2804_p0 = zext_ln172_13_fu_1495_p1;
assign grp_fu_2804_p1 = 10'd8;
assign grp_fu_2804_p2 = 21'd1366;
assign grp_fu_2813_p0 = zext_ln172_13_fu_1495_p1;
assign grp_fu_2813_p1 = 10'd40;
assign grp_fu_2813_p2 = 21'd1366;
assign grp_fu_2822_p0 = zext_ln172_13_fu_1495_p1;
assign grp_fu_2822_p1 = 10'd16;
assign grp_fu_2822_p2 = 21'd1366;
assign grp_fu_2831_p0 = zext_ln172_13_fu_1495_p1;
assign grp_fu_2831_p1 = 10'd48;
assign grp_fu_2831_p2 = 21'd1366;
assign grp_fu_2840_p0 = zext_ln172_13_reg_2927;
assign grp_fu_2840_p1 = 10'd24;
assign grp_fu_2840_p2 = 21'd1366;
assign grp_fu_2848_p0 = zext_ln172_13_reg_2927;
assign grp_fu_2848_p1 = 10'd56;
assign grp_fu_2848_p2 = 21'd1366;
assign mul_ln172_1_fu_1476_p0 = mul_ln172_1_fu_1476_p00;
assign mul_ln172_1_fu_1476_p00 = offset_1_reg_2891;
assign mul_ln172_1_fu_1476_p1 = 19'd683;
assign mul_ln172_2_fu_1501_p0 = mul_ln172_2_fu_1501_p00;
assign mul_ln172_2_fu_1501_p00 = offset_2_reg_2898;
assign mul_ln172_2_fu_1501_p1 = 19'd683;
assign mul_ln172_3_fu_1637_p0 = mul_ln172_3_fu_1637_p00;
assign mul_ln172_3_fu_1637_p00 = offset_3_reg_2905;
assign mul_ln172_3_fu_1637_p1 = 19'd683;
assign mul_ln172_fu_1454_p0 = mul_ln172_fu_1454_p00;
assign mul_ln172_fu_1454_p00 = offset_reg_2884;
assign mul_ln172_fu_1454_p1 = 19'd683;
assign offset_1_fu_1393_p4 = {{{tmp_35_reg_2877}, {tmp_44_fu_1384_p4}}, {1'd1}};
assign offset_2_fu_1408_p4 = {{{tmp_35_reg_2877}, {grp_fu_1205_p4}}, {2'd2}};
assign offset_3_fu_1423_p4 = {{{tmp_35_reg_2877}, {grp_fu_1205_p4}}, {2'd3}};
assign offset_fu_1370_p3 = {{tmp_35_fu_1356_p4}, {trunc_ln312_fu_1366_p1}};
assign or_ln315_1_fu_2242_p3 = {{tmp_28_fu_2219_p4}, {3'd6}};
assign or_ln315_2_fu_2459_p3 = {{tmp_57_reg_3542}, {4'd10}};
assign or_ln315_3_fu_2568_p3 = {{tmp_57_reg_3542}, {4'd14}};
assign or_ln318_1_fu_2371_p3 = {{tmp_28_reg_3531}, {3'd5}};
assign or_ln318_2_fu_2529_p3 = {{tmp_57_reg_3542}, {4'd9}};
assign or_ln318_3_fu_2581_p3 = {{tmp_57_reg_3542}, {4'd13}};
assign or_ln319_1_fu_2384_p3 = {{tmp_28_reg_3531}, {3'd7}};
assign or_ln319_2_fu_2542_p3 = {{tmp_57_reg_3542}, {4'd11}};
assign or_ln319_3_fu_2594_p3 = {{tmp_57_reg_3542}, {4'd15}};
assign or_ln3_fu_2059_p3 = {{trunc_ln314_reg_3295}, {2'd1}};
assign or_ln4_fu_2072_p3 = {{trunc_ln314_reg_3295}, {2'd3}};
assign or_ln5_fu_2446_p3 = {{tmp_57_reg_3542}, {4'd8}};
assign or_ln_fu_1955_p3 = {{trunc_ln314_fu_1938_p1}, {2'd2}};
assign shl_ln314_1_fu_2228_p3 = {{tmp_28_fu_2219_p4}, {3'd4}};
assign shl_ln314_2_fu_2555_p3 = {{tmp_57_reg_3542}, {4'd12}};
assign shl_ln7_fu_1941_p3 = {{trunc_ln314_fu_1938_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_21_fu_1832_p7 = 'bx;
assign tmp_22_fu_1851_p7 = 'bx;
assign tmp_23_fu_1870_p7 = 'bx;
assign tmp_24_fu_1889_p7 = 'bx;
assign tmp_27_fu_1969_p7 = 'bx;
assign tmp_28_fu_2219_p4 = {{tid_2_reg_2863_pp0_iter2_reg[5:1]}};
assign tmp_29_fu_1988_p7 = 'bx;
assign tmp_30_fu_2085_p7 = 'bx;
assign tmp_31_fu_2013_p7 = 'bx;
assign tmp_32_fu_2104_p7 = 'bx;
assign tmp_33_fu_2123_p7 = 'bx;
assign tmp_34_fu_2142_p7 = 'bx;
assign tmp_35_fu_1356_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_37_fu_1517_p1 = grp_fu_2607_p3;
assign tmp_38_fu_1526_p1 = grp_fu_2616_p3;
assign tmp_39_fu_1535_p1 = grp_fu_2625_p3;
assign tmp_40_fu_1544_p1 = grp_fu_2634_p3;
assign tmp_41_fu_1553_p1 = grp_fu_2643_p3;
assign tmp_42_fu_1562_p1 = grp_fu_2652_p3;
assign tmp_43_fu_1571_p1 = grp_fu_2661_p3;
assign tmp_44_fu_1384_p4 = {{tid_2_reg_2863[5:1]}};
assign tmp_46_fu_1580_p1 = grp_fu_2670_p3;
assign tmp_47_fu_1589_p1 = grp_fu_2679_p3;
assign tmp_48_fu_1598_p1 = grp_fu_2688_p3;
assign tmp_49_fu_1607_p1 = grp_fu_2697_p3;
assign tmp_50_fu_1616_p1 = grp_fu_2706_p3;
assign tmp_51_fu_1625_p1 = grp_fu_2715_p3;
assign tmp_52_fu_1657_p1 = grp_fu_2724_p3;
assign tmp_53_fu_2161_p7 = 'bx;
assign tmp_58_fu_1666_p1 = grp_fu_2732_p3;
assign tmp_60_fu_1675_p1 = grp_fu_2741_p3;
assign tmp_61_fu_2265_p7 = 'bx;
assign tmp_62_fu_1684_p1 = grp_fu_2750_p3;
assign tmp_63_fu_2284_p7 = 'bx;
assign tmp_64_fu_1693_p1 = grp_fu_2759_p3;
assign tmp_65_fu_2303_p7 = 'bx;
assign tmp_66_fu_1702_p1 = grp_fu_2768_p3;
assign tmp_67_fu_2322_p7 = 'bx;
assign tmp_68_fu_1711_p1 = grp_fu_2777_p3;
assign tmp_70_fu_1720_p1 = grp_fu_2786_p3;
assign tmp_77_fu_2403_p7 = 'bx;
assign tmp_78_fu_2472_p7 = 'bx;
assign tmp_80_fu_2491_p7 = 'bx;
assign tmp_81_fu_2510_p7 = 'bx;
assign tmp_82_fu_1729_p1 = grp_fu_2795_p3;
assign tmp_83_fu_1738_p1 = grp_fu_2804_p3;
assign tmp_84_fu_1747_p1 = grp_fu_2813_p3;
assign tmp_85_fu_1756_p1 = grp_fu_2822_p3;
assign tmp_86_fu_1765_p1 = grp_fu_2831_p3;
assign tmp_87_fu_1814_p1 = grp_fu_2840_p3;
assign tmp_88_fu_1823_p1 = grp_fu_2848_p3;
assign trunc_ln172_1_fu_1810_p1 = grp_fu_1402_p2[1:0];
assign trunc_ln172_2_fu_2056_p1 = urem_ln172_2_reg_3290[1:0];
assign trunc_ln172_3_fu_2216_p1 = urem_ln172_3_reg_3401[1:0];
assign trunc_ln172_fu_1653_p1 = grp_fu_1378_p2[1:0];
assign trunc_ln312_fu_1366_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_1938_p1 = tid_2_reg_2863_pp0_iter1_reg[5:0];
assign zext_ln172_10_fu_1492_p1 = offset_2_reg_2898;
assign zext_ln172_12_fu_2180_p1 = tmp_55_reg_2933;
assign zext_ln172_13_fu_1495_p1 = offset_3_reg_2905;
assign zext_ln172_15_fu_2353_p1 = tmp_73_reg_3003;
assign zext_ln172_6_fu_1774_p1 = tmp_36_reg_2912;
assign zext_ln172_7_fu_1470_p1 = offset_1_reg_2891;
assign zext_ln172_9_fu_1920_p1 = tmp_45_reg_2922;
assign zext_ln172_fu_1448_p1 = offset_reg_2884;
assign zext_ln314_1_fu_2236_p1 = shl_ln314_1_fu_2228_p3;
assign zext_ln314_2_fu_2453_p1 = or_ln5_fu_2446_p3;
assign zext_ln314_3_fu_2562_p1 = shl_ln314_2_fu_2555_p3;
assign zext_ln314_fu_1949_p1 = shl_ln7_fu_1941_p3;
assign zext_ln315_1_fu_1926_p1 = tmp_46_reg_2973;
assign zext_ln315_2_fu_2186_p1 = tmp_58_reg_3023;
assign zext_ln315_3_fu_2359_p1 = tmp_82_reg_3058;
assign zext_ln315_4_fu_1963_p1 = or_ln_fu_1955_p3;
assign zext_ln315_5_fu_2250_p1 = or_ln315_1_fu_2242_p3;
assign zext_ln315_6_fu_2466_p1 = or_ln315_2_fu_2459_p3;
assign zext_ln315_7_fu_2575_p1 = or_ln315_3_fu_2568_p3;
assign zext_ln315_fu_1780_p1 = tmp_37_reg_2938;
assign zext_ln316_1_fu_2007_p1 = tmp_47_reg_2978;
assign zext_ln316_2_fu_2192_p1 = tmp_60_reg_3028;
assign zext_ln316_3_fu_2397_p1 = tmp_83_reg_3063;
assign zext_ln316_fu_1786_p1 = tmp_38_reg_2943;
assign zext_ln317_1_fu_1932_p1 = tmp_48_reg_2983;
assign zext_ln317_2_fu_2198_p1 = tmp_62_reg_3033;
assign zext_ln317_3_fu_2365_p1 = tmp_84_reg_3068;
assign zext_ln317_fu_1792_p1 = tmp_39_reg_2948;
assign zext_ln318_1_fu_2032_p1 = tmp_49_reg_2988;
assign zext_ln318_2_fu_2204_p1 = tmp_64_reg_3038;
assign zext_ln318_3_fu_2422_p1 = tmp_85_reg_3073;
assign zext_ln318_4_fu_2066_p1 = or_ln3_fu_2059_p3;
assign zext_ln318_5_fu_2378_p1 = or_ln318_1_fu_2371_p3;
assign zext_ln318_6_fu_2536_p1 = or_ln318_2_fu_2529_p3;
assign zext_ln318_7_fu_2588_p1 = or_ln318_3_fu_2581_p3;
assign zext_ln318_fu_1798_p1 = tmp_40_reg_2953;
assign zext_ln319_1_fu_2038_p1 = tmp_50_reg_2993;
assign zext_ln319_2_fu_2210_p1 = tmp_66_reg_3043;
assign zext_ln319_3_fu_2428_p1 = tmp_86_reg_3078;
assign zext_ln319_4_fu_2079_p1 = or_ln4_fu_2072_p3;
assign zext_ln319_5_fu_2391_p1 = or_ln319_1_fu_2384_p3;
assign zext_ln319_6_fu_2549_p1 = or_ln319_2_fu_2542_p3;
assign zext_ln319_7_fu_2601_p1 = or_ln319_3_fu_2594_p3;
assign zext_ln319_fu_1804_p1 = tmp_41_reg_2958;
assign zext_ln320_1_fu_2044_p1 = tmp_51_reg_2998;
assign zext_ln320_2_fu_2341_p1 = tmp_68_reg_3048;
assign zext_ln320_3_fu_2434_p1 = tmp_87_reg_3185;
assign zext_ln320_fu_1908_p1 = tmp_42_reg_2963;
assign zext_ln321_1_fu_2050_p1 = tmp_52_reg_3018;
assign zext_ln321_2_fu_2347_p1 = tmp_70_reg_3053;
assign zext_ln321_3_fu_2440_p1 = tmp_88_reg_3190;
assign zext_ln321_fu_1914_p1 = tmp_43_reg_2968;
always @ (posedge ap_clk) begin
    offset_1_reg_2891[0] <= 1'b1;
    offset_2_reg_2898[1:0] <= 2'b10;
    offset_3_reg_2905[1:0] <= 2'b11;
    zext_ln172_7_reg_2917[0] <= 1'b1;
    zext_ln172_7_reg_2917[9] <= 1'b0;
    zext_ln172_13_reg_2927[1:0] <= 2'b11;
    zext_ln172_13_reg_2927[9] <= 1'b0;
end
endmodule 