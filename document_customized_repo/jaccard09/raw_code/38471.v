module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1); 
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
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] tmp_fu_1445_p3;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1409;
wire    ap_block_pp0_stage1_11001;
reg   [2:0] hi_reg_2755;
reg   [2:0] hi_reg_2755_pp0_iter1_reg;
reg   [63:0] reg_1413;
reg   [63:0] reg_1417;
reg   [63:0] reg_1421;
reg   [63:0] reg_1425;
reg   [63:0] reg_1429;
reg   [63:0] reg_1433;
reg   [6:0] tid_reg_2742;
reg   [6:0] tid_reg_2742_pp0_iter1_reg;
reg   [6:0] tid_reg_2742_pp0_iter2_reg;
reg   [0:0] tmp_reg_2751;
reg   [0:0] tmp_reg_2751_pp0_iter1_reg;
reg   [0:0] tmp_reg_2751_pp0_iter2_reg;
wire   [2:0] hi_fu_1453_p4;
reg   [2:0] hi_reg_2755_pp0_iter2_reg;
wire   [8:0] zext_ln114_fu_1463_p1;
reg   [8:0] zext_ln114_reg_2775;
wire   [2:0] trunc_ln191_fu_1467_p1;
reg   [2:0] trunc_ln191_reg_2780;
reg   [2:0] trunc_ln191_reg_2780_pp0_iter1_reg;
wire   [8:0] offset_fu_1483_p2;
reg   [8:0] offset_reg_2786;
wire   [8:0] add_ln194_fu_1493_p2;
reg   [8:0] add_ln194_reg_2795;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] add_ln195_fu_1498_p2;
reg   [8:0] add_ln195_reg_2800;
wire   [8:0] add_ln196_fu_1503_p2;
reg   [8:0] add_ln196_reg_2805;
wire   [8:0] add_ln197_fu_1508_p2;
reg   [8:0] add_ln197_reg_2810;
wire   [8:0] add_ln199_fu_1513_p2;
reg   [8:0] add_ln199_reg_2815;
wire   [1:0] tmp_34_fu_1518_p4;
reg   [1:0] tmp_34_reg_2820;
reg   [1:0] tmp_34_reg_2820_pp0_iter2_reg;
wire   [8:0] add_ln194_1_fu_1548_p2;
reg   [8:0] add_ln194_1_reg_2826;
wire   [8:0] add_ln195_1_fu_1554_p2;
reg   [8:0] add_ln195_1_reg_2831;
wire   [8:0] add_ln196_1_fu_1560_p2;
reg   [8:0] add_ln196_1_reg_2836;
wire   [8:0] add_ln197_1_fu_1566_p2;
reg   [8:0] add_ln197_1_reg_2841;
wire   [8:0] add_ln199_1_fu_1572_p2;
reg   [8:0] add_ln199_1_reg_2846;
reg   [5:0] tmp_77_reg_2851;
reg   [5:0] tmp_78_reg_2856;
reg   [5:0] tmp_79_reg_2861;
reg   [5:0] tmp_80_reg_2866;
reg   [5:0] tmp_82_reg_2871;
reg   [5:0] tmp_85_reg_2876;
reg   [5:0] tmp_86_reg_2881;
reg   [5:0] tmp_87_reg_2886;
reg   [5:0] tmp_88_reg_2891;
reg   [5:0] tmp_90_reg_2896;
wire   [63:0] zext_ln198_fu_1867_p1;
reg   [63:0] zext_ln198_reg_3101;
wire   [63:0] zext_ln200_fu_1896_p1;
reg   [63:0] zext_ln200_reg_3173;
wire   [63:0] zext_ln194_1_fu_1907_p1;
reg   [63:0] zext_ln194_1_reg_3213;
wire   [63:0] zext_ln195_1_fu_1911_p1;
reg   [63:0] zext_ln195_1_reg_3229;
wire   [63:0] zext_ln196_1_fu_1917_p1;
reg   [63:0] zext_ln196_1_reg_3253;
wire   [63:0] zext_ln197_1_fu_1923_p1;
reg   [63:0] zext_ln197_1_reg_3277;
wire   [63:0] zext_ln199_1_fu_1929_p1;
reg   [63:0] zext_ln199_1_reg_3301;
wire   [63:0] tmp_s_fu_1934_p19;
reg   [63:0] tmp_s_reg_3321;
wire   [63:0] tmp_19_fu_1973_p19;
reg   [63:0] tmp_19_reg_3326;
wire   [63:0] tmp_20_fu_2012_p19;
reg   [63:0] tmp_20_reg_3331;
wire   [63:0] tmp_21_fu_2051_p19;
reg   [63:0] tmp_21_reg_3336;
wire   [63:0] tmp_22_fu_2090_p19;
reg   [63:0] tmp_22_reg_3341;
reg   [63:0] smem_load_5_reg_3361;
wire   [63:0] tmp_24_fu_2129_p19;
reg   [63:0] tmp_24_reg_3366;
reg   [63:0] smem_1_load_5_reg_3376;
reg   [63:0] smem_2_load_5_reg_3381;
reg   [63:0] smem_3_load_5_reg_3386;
wire   [63:0] zext_ln194_2_fu_2270_p1;
reg   [63:0] zext_ln194_2_reg_3651;
wire   [63:0] tmp_23_fu_2276_p19;
reg   [63:0] tmp_23_reg_3657;
wire   [63:0] tmp_25_fu_2314_p19;
reg   [63:0] tmp_25_reg_3662;
wire   [63:0] tmp_26_fu_2350_p19;
reg   [63:0] tmp_26_reg_3667;
reg   [4:0] tmp_35_reg_3672;
wire   [63:0] tmp_27_fu_2398_p19;
reg   [63:0] tmp_27_reg_3678;
wire   [63:0] tmp_28_fu_2437_p19;
reg   [63:0] tmp_28_reg_3683;
wire   [63:0] tmp_29_fu_2476_p19;
reg   [63:0] tmp_29_reg_3688;
wire   [63:0] tmp_30_fu_2515_p19;
reg   [63:0] tmp_30_reg_3693;
wire   [63:0] tmp_31_fu_2554_p19;
reg   [63:0] tmp_31_reg_3698;
wire   [63:0] tmp_32_fu_2593_p19;
reg   [63:0] tmp_32_reg_3703;
wire   [63:0] tmp_33_fu_2632_p19;
reg   [63:0] tmp_33_reg_3708;
wire   [63:0] zext_ln194_3_fu_2693_p1;
reg   [63:0] zext_ln194_3_reg_3713;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_2_fu_1802_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_fu_1814_p1;
wire   [63:0] zext_ln195_fu_1825_p1;
wire   [63:0] zext_ln196_fu_1836_p1;
wire   [63:0] zext_ln197_fu_1847_p1;
wire   [63:0] zext_ln199_fu_1876_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln172_3_fu_2192_p1;
wire   [63:0] zext_ln198_1_fu_2213_p1;
wire   [63:0] zext_ln200_1_fu_2234_p1;
wire   [63:0] zext_ln193_fu_2254_p1;
wire   [63:0] zext_ln193_1_fu_2678_p1;
reg   [6:0] tid_2_fu_150;
wire   [6:0] add_ln188_fu_1578_p2;
wire    ap_loop_init;
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
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_8_ce1_local;
reg   [5:0] smem_8_address1_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg   [5:0] smem_9_address1_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
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
wire   [8:0] mul_ln_fu_1471_p5;
wire   [8:0] mul_ln191_1_fu_1527_p5;
wire   [8:0] offset_3_fu_1539_p2;
wire   [8:0] mul_ln194_fu_1591_p0;
wire   [10:0] mul_ln194_fu_1591_p1;
wire   [18:0] mul_ln194_fu_1591_p2;
wire   [8:0] mul_ln195_fu_1610_p0;
wire   [10:0] mul_ln195_fu_1610_p1;
wire   [18:0] mul_ln195_fu_1610_p2;
wire   [8:0] mul_ln196_fu_1629_p0;
wire   [10:0] mul_ln196_fu_1629_p1;
wire   [18:0] mul_ln196_fu_1629_p2;
wire   [8:0] mul_ln197_fu_1648_p0;
wire   [10:0] mul_ln197_fu_1648_p1;
wire   [18:0] mul_ln197_fu_1648_p2;
wire   [8:0] mul_ln199_fu_1667_p0;
wire   [10:0] mul_ln199_fu_1667_p1;
wire   [18:0] mul_ln199_fu_1667_p2;
wire   [8:0] mul_ln194_1_fu_1686_p0;
wire   [10:0] mul_ln194_1_fu_1686_p1;
wire   [18:0] mul_ln194_1_fu_1686_p2;
wire   [8:0] mul_ln195_1_fu_1705_p0;
wire   [10:0] mul_ln195_1_fu_1705_p1;
wire   [18:0] mul_ln195_1_fu_1705_p2;
wire   [8:0] mul_ln196_1_fu_1724_p0;
wire   [10:0] mul_ln196_1_fu_1724_p1;
wire   [18:0] mul_ln196_1_fu_1724_p2;
wire   [8:0] mul_ln197_1_fu_1743_p0;
wire   [10:0] mul_ln197_1_fu_1743_p1;
wire   [18:0] mul_ln197_1_fu_1743_p2;
wire   [8:0] mul_ln199_1_fu_1762_p0;
wire   [10:0] mul_ln199_1_fu_1762_p1;
wire   [18:0] mul_ln199_1_fu_1762_p2;
wire   [3:0] tmp_76_fu_1778_p3;
wire   [5:0] p_shl1_fu_1785_p3;
wire   [5:0] zext_ln172_fu_1792_p1;
wire   [5:0] sub_ln172_fu_1796_p2;
wire   [20:0] tmp_81_fu_1858_p1;
wire  signed [20:0] grp_fu_2699_p3;
wire   [6:0] tmp_81_fu_1858_p4;
wire   [20:0] tmp_83_fu_1887_p1;
wire  signed [20:0] grp_fu_2708_p3;
wire   [6:0] tmp_83_fu_1887_p4;
wire   [63:0] tmp_s_fu_1934_p17;
wire   [63:0] tmp_19_fu_1973_p17;
wire   [63:0] tmp_20_fu_2012_p17;
wire   [63:0] tmp_21_fu_2051_p17;
wire   [63:0] tmp_22_fu_2090_p17;
wire   [63:0] tmp_24_fu_2129_p17;
wire   [3:0] tmp_84_fu_2168_p3;
wire   [5:0] p_shl_fu_2175_p3;
wire   [5:0] zext_ln172_21_fu_2182_p1;
wire   [5:0] sub_ln172_1_fu_2186_p2;
wire   [20:0] tmp_89_fu_2204_p1;
wire  signed [20:0] grp_fu_2717_p3;
wire   [6:0] tmp_89_fu_2204_p4;
wire   [20:0] tmp_91_fu_2225_p1;
wire  signed [20:0] grp_fu_2726_p3;
wire   [6:0] tmp_91_fu_2225_p4;
wire   [6:0] shl_ln193_fu_2249_p2;
wire   [5:0] trunc_ln193_fu_2246_p1;
wire   [6:0] or_ln8_fu_2262_p3;
wire   [63:0] tmp_23_fu_2276_p17;
wire   [63:0] tmp_25_fu_2314_p17;
wire   [63:0] tmp_26_fu_2350_p17;
wire   [63:0] tmp_27_fu_2398_p17;
wire   [63:0] tmp_28_fu_2437_p17;
wire   [63:0] tmp_29_fu_2476_p17;
wire   [63:0] tmp_30_fu_2515_p17;
wire   [63:0] tmp_31_fu_2554_p17;
wire   [63:0] tmp_32_fu_2593_p17;
wire   [63:0] tmp_33_fu_2632_p17;
wire   [6:0] or_ln_fu_2671_p3;
wire   [6:0] or_ln194_1_fu_2686_p3;
wire   [8:0] grp_fu_2699_p0;
wire   [9:0] zext_ln172_18_fu_1489_p1;
wire   [5:0] grp_fu_2699_p1;
wire   [10:0] grp_fu_2699_p2;
wire   [8:0] grp_fu_2708_p0;
wire   [5:0] grp_fu_2708_p1;
wire   [10:0] grp_fu_2708_p2;
wire   [8:0] grp_fu_2717_p0;
wire   [9:0] zext_ln172_19_fu_1544_p1;
wire   [5:0] grp_fu_2717_p1;
wire   [10:0] grp_fu_2717_p2;
wire   [8:0] grp_fu_2726_p0;
wire   [5:0] grp_fu_2726_p1;
wire   [10:0] grp_fu_2726_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln194_1_fu_1686_p00;
wire   [18:0] mul_ln194_fu_1591_p00;
wire   [18:0] mul_ln195_1_fu_1705_p00;
wire   [18:0] mul_ln195_fu_1610_p00;
wire   [18:0] mul_ln196_1_fu_1724_p00;
wire   [18:0] mul_ln196_fu_1629_p00;
wire   [18:0] mul_ln197_1_fu_1743_p00;
wire   [18:0] mul_ln197_fu_1648_p00;
wire   [18:0] mul_ln199_1_fu_1762_p00;
wire   [18:0] mul_ln199_fu_1667_p00;
reg    ap_condition_1612;
reg    ap_condition_1615;
reg    ap_condition_1618;
reg    ap_condition_1621;
reg    ap_condition_1624;
reg    ap_condition_1627;
reg    ap_condition_1630;
reg    ap_condition_1633;
reg    ap_condition_1636;
reg    ap_condition_1639;
reg    ap_condition_1642;
reg    ap_condition_1645;
reg    ap_condition_1648;
reg    ap_condition_1651;
reg    ap_condition_1654;
reg    ap_condition_1657;
wire   [2:0] tmp_s_fu_1934_p1;
wire   [2:0] tmp_s_fu_1934_p3;
wire   [2:0] tmp_s_fu_1934_p5;
wire   [2:0] tmp_s_fu_1934_p7;
wire  signed [2:0] tmp_s_fu_1934_p9;
wire  signed [2:0] tmp_s_fu_1934_p11;
wire  signed [2:0] tmp_s_fu_1934_p13;
wire  signed [2:0] tmp_s_fu_1934_p15;
wire   [2:0] tmp_19_fu_1973_p1;
wire   [2:0] tmp_19_fu_1973_p3;
wire   [2:0] tmp_19_fu_1973_p5;
wire  signed [2:0] tmp_19_fu_1973_p7;
wire  signed [2:0] tmp_19_fu_1973_p9;
wire  signed [2:0] tmp_19_fu_1973_p11;
wire  signed [2:0] tmp_19_fu_1973_p13;
wire   [2:0] tmp_19_fu_1973_p15;
wire   [2:0] tmp_20_fu_2012_p1;
wire  signed [2:0] tmp_20_fu_2012_p3;
wire  signed [2:0] tmp_20_fu_2012_p5;
wire  signed [2:0] tmp_20_fu_2012_p7;
wire  signed [2:0] tmp_20_fu_2012_p9;
wire   [2:0] tmp_20_fu_2012_p11;
wire   [2:0] tmp_20_fu_2012_p13;
wire   [2:0] tmp_20_fu_2012_p15;
wire  signed [2:0] tmp_21_fu_2051_p1;
wire  signed [2:0] tmp_21_fu_2051_p3;
wire  signed [2:0] tmp_21_fu_2051_p5;
wire  signed [2:0] tmp_21_fu_2051_p7;
wire   [2:0] tmp_21_fu_2051_p9;
wire   [2:0] tmp_21_fu_2051_p11;
wire   [2:0] tmp_21_fu_2051_p13;
wire   [2:0] tmp_21_fu_2051_p15;
wire  signed [2:0] tmp_22_fu_2090_p1;
wire  signed [2:0] tmp_22_fu_2090_p3;
wire   [2:0] tmp_22_fu_2090_p5;
wire   [2:0] tmp_22_fu_2090_p7;
wire   [2:0] tmp_22_fu_2090_p9;
wire   [2:0] tmp_22_fu_2090_p11;
wire  signed [2:0] tmp_22_fu_2090_p13;
wire  signed [2:0] tmp_22_fu_2090_p15;
wire   [2:0] tmp_24_fu_2129_p1;
wire   [2:0] tmp_24_fu_2129_p3;
wire   [2:0] tmp_24_fu_2129_p5;
wire   [2:0] tmp_24_fu_2129_p7;
wire  signed [2:0] tmp_24_fu_2129_p9;
wire  signed [2:0] tmp_24_fu_2129_p11;
wire  signed [2:0] tmp_24_fu_2129_p13;
wire  signed [2:0] tmp_24_fu_2129_p15;
wire  signed [2:0] tmp_23_fu_2276_p1;
wire   [2:0] tmp_23_fu_2276_p3;
wire   [2:0] tmp_23_fu_2276_p5;
wire   [2:0] tmp_23_fu_2276_p7;
wire   [2:0] tmp_23_fu_2276_p9;
wire  signed [2:0] tmp_23_fu_2276_p11;
wire  signed [2:0] tmp_23_fu_2276_p13;
wire  signed [2:0] tmp_23_fu_2276_p15;
wire   [2:0] tmp_25_fu_2314_p1;
wire   [2:0] tmp_25_fu_2314_p3;
wire   [2:0] tmp_25_fu_2314_p5;
wire   [2:0] tmp_25_fu_2314_p7;
wire  signed [2:0] tmp_25_fu_2314_p9;
wire  signed [2:0] tmp_25_fu_2314_p11;
wire  signed [2:0] tmp_25_fu_2314_p13;
wire  signed [2:0] tmp_25_fu_2314_p15;
wire   [2:0] tmp_26_fu_2350_p1;
wire   [2:0] tmp_26_fu_2350_p3;
wire   [2:0] tmp_26_fu_2350_p5;
wire   [2:0] tmp_26_fu_2350_p7;
wire  signed [2:0] tmp_26_fu_2350_p9;
wire  signed [2:0] tmp_26_fu_2350_p11;
wire  signed [2:0] tmp_26_fu_2350_p13;
wire  signed [2:0] tmp_26_fu_2350_p15;
wire   [2:0] tmp_27_fu_2398_p1;
wire   [2:0] tmp_27_fu_2398_p3;
wire   [2:0] tmp_27_fu_2398_p5;
wire  signed [2:0] tmp_27_fu_2398_p7;
wire  signed [2:0] tmp_27_fu_2398_p9;
wire  signed [2:0] tmp_27_fu_2398_p11;
wire  signed [2:0] tmp_27_fu_2398_p13;
wire   [2:0] tmp_27_fu_2398_p15;
wire   [2:0] tmp_28_fu_2437_p1;
wire  signed [2:0] tmp_28_fu_2437_p3;
wire  signed [2:0] tmp_28_fu_2437_p5;
wire  signed [2:0] tmp_28_fu_2437_p7;
wire  signed [2:0] tmp_28_fu_2437_p9;
wire   [2:0] tmp_28_fu_2437_p11;
wire   [2:0] tmp_28_fu_2437_p13;
wire   [2:0] tmp_28_fu_2437_p15;
wire  signed [2:0] tmp_29_fu_2476_p1;
wire  signed [2:0] tmp_29_fu_2476_p3;
wire  signed [2:0] tmp_29_fu_2476_p5;
wire  signed [2:0] tmp_29_fu_2476_p7;
wire   [2:0] tmp_29_fu_2476_p9;
wire   [2:0] tmp_29_fu_2476_p11;
wire   [2:0] tmp_29_fu_2476_p13;
wire   [2:0] tmp_29_fu_2476_p15;
wire  signed [2:0] tmp_30_fu_2515_p1;
wire  signed [2:0] tmp_30_fu_2515_p3;
wire   [2:0] tmp_30_fu_2515_p5;
wire   [2:0] tmp_30_fu_2515_p7;
wire   [2:0] tmp_30_fu_2515_p9;
wire   [2:0] tmp_30_fu_2515_p11;
wire  signed [2:0] tmp_30_fu_2515_p13;
wire  signed [2:0] tmp_30_fu_2515_p15;
wire  signed [2:0] tmp_31_fu_2554_p1;
wire   [2:0] tmp_31_fu_2554_p3;
wire   [2:0] tmp_31_fu_2554_p5;
wire   [2:0] tmp_31_fu_2554_p7;
wire   [2:0] tmp_31_fu_2554_p9;
wire  signed [2:0] tmp_31_fu_2554_p11;
wire  signed [2:0] tmp_31_fu_2554_p13;
wire  signed [2:0] tmp_31_fu_2554_p15;
wire   [2:0] tmp_32_fu_2593_p1;
wire   [2:0] tmp_32_fu_2593_p3;
wire   [2:0] tmp_32_fu_2593_p5;
wire   [2:0] tmp_32_fu_2593_p7;
wire  signed [2:0] tmp_32_fu_2593_p9;
wire  signed [2:0] tmp_32_fu_2593_p11;
wire  signed [2:0] tmp_32_fu_2593_p13;
wire  signed [2:0] tmp_32_fu_2593_p15;
wire   [2:0] tmp_33_fu_2632_p1;
wire   [2:0] tmp_33_fu_2632_p3;
wire   [2:0] tmp_33_fu_2632_p5;
wire   [2:0] tmp_33_fu_2632_p7;
wire  signed [2:0] tmp_33_fu_2632_p9;
wire  signed [2:0] tmp_33_fu_2632_p11;
wire  signed [2:0] tmp_33_fu_2632_p13;
wire  signed [2:0] tmp_33_fu_2632_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_150 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U204(.din0(mul_ln194_fu_1591_p0),.din1(mul_ln194_fu_1591_p1),.dout(mul_ln194_fu_1591_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U205(.din0(mul_ln195_fu_1610_p0),.din1(mul_ln195_fu_1610_p1),.dout(mul_ln195_fu_1610_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U206(.din0(mul_ln196_fu_1629_p0),.din1(mul_ln196_fu_1629_p1),.dout(mul_ln196_fu_1629_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U207(.din0(mul_ln197_fu_1648_p0),.din1(mul_ln197_fu_1648_p1),.dout(mul_ln197_fu_1648_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U208(.din0(mul_ln199_fu_1667_p0),.din1(mul_ln199_fu_1667_p1),.dout(mul_ln199_fu_1667_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U209(.din0(mul_ln194_1_fu_1686_p0),.din1(mul_ln194_1_fu_1686_p1),.dout(mul_ln194_1_fu_1686_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U210(.din0(mul_ln195_1_fu_1705_p0),.din1(mul_ln195_1_fu_1705_p1),.dout(mul_ln195_1_fu_1705_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U211(.din0(mul_ln196_1_fu_1724_p0),.din1(mul_ln196_1_fu_1724_p1),.dout(mul_ln196_1_fu_1724_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U212(.din0(mul_ln197_1_fu_1743_p0),.din1(mul_ln197_1_fu_1743_p1),.dout(mul_ln197_1_fu_1743_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U213(.din0(mul_ln199_1_fu_1762_p0),.din1(mul_ln199_1_fu_1762_p1),.dout(mul_ln199_1_fu_1762_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U214(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.def(tmp_s_fu_1934_p17),.sel(hi_reg_2755_pp0_iter1_reg),.dout(tmp_s_fu_1934_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h7 ),.din6_WIDTH( 64 ),.CASE7( 3'h0 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U215(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_10_q1),.def(tmp_19_fu_1973_p17),.sel(hi_reg_2755_pp0_iter1_reg),.dout(tmp_19_fu_1973_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h7 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.CASE7( 3'h2 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U216(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_8_q1),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_20_fu_2012_p17),.sel(hi_reg_2755_pp0_iter1_reg),.dout(tmp_20_fu_2012_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U217(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_7_q0),.din5(smem_8_q1),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_21_fu_2051_p17),.sel(hi_reg_2755_pp0_iter1_reg),.dout(tmp_21_fu_2051_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U218(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_5_q0),.din3(smem_6_q0),.din4(smem_7_q0),.din5(smem_8_q1),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_22_fu_2090_p17),.sel(hi_reg_2755_pp0_iter1_reg),.dout(tmp_22_fu_2090_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U219(.din0(smem_2_q0),.din1(smem_3_q0),.din2(smem_4_q0),.din3(smem_5_q0),.din4(smem_6_q0),.din5(smem_7_q0),.din6(smem_8_q1),.din7(smem_9_q1),.def(tmp_24_fu_2129_p17),.sel(hi_reg_2755_pp0_iter1_reg),.dout(tmp_24_fu_2129_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U220(.din0(smem_load_5_reg_3361),.din1(reg_1409),.din2(reg_1413),.din3(reg_1417),.din4(reg_1421),.din5(smem_8_q1),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_23_fu_2276_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_23_fu_2276_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U221(.din0(smem_1_load_5_reg_3376),.din1(smem_2_load_5_reg_3381),.din2(smem_3_load_5_reg_3386),.din3(reg_1409),.din4(reg_1413),.din5(reg_1417),.din6(reg_1421),.din7(smem_8_q1),.def(tmp_25_fu_2314_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_25_fu_2314_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U222(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.def(tmp_26_fu_2350_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_26_fu_2350_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h7 ),.din6_WIDTH( 64 ),.CASE7( 3'h0 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U223(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(reg_1425),.def(tmp_27_fu_2398_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_27_fu_2398_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h7 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.CASE7( 3'h2 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U224(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(reg_1429),.din6(reg_1433),.din7(reg_1425),.def(tmp_28_fu_2437_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_28_fu_2437_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U225(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_7_q0),.din5(reg_1429),.din6(reg_1433),.din7(reg_1425),.def(tmp_29_fu_2476_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_29_fu_2476_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U226(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_5_q0),.din3(smem_6_q0),.din4(smem_7_q0),.din5(reg_1429),.din6(reg_1433),.din7(reg_1425),.def(tmp_30_fu_2515_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_30_fu_2515_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U227(.din0(smem_q0),.din1(smem_4_q0),.din2(smem_5_q0),.din3(smem_6_q0),.din4(smem_7_q0),.din5(smem_8_q0),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_31_fu_2554_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_31_fu_2554_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U228(.din0(smem_2_q0),.din1(smem_3_q0),.din2(smem_4_q0),.din3(smem_5_q0),.din4(smem_6_q0),.din5(smem_7_q0),.din6(reg_1429),.din7(reg_1433),.def(tmp_32_fu_2593_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_32_fu_2593_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U229(.din0(smem_1_q0),.din1(smem_2_q0),.din2(smem_3_q0),.din3(smem_4_q0),.din4(smem_5_q0),.din5(smem_6_q0),.din6(smem_7_q0),.din7(smem_8_q0),.def(tmp_33_fu_2632_p17),.sel(hi_reg_2755_pp0_iter2_reg),.dout(tmp_33_fu_2632_p19));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U230(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2699_p0),.din1(grp_fu_2699_p1),.din2(grp_fu_2699_p2),.ce(1'b1),.dout(grp_fu_2699_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U231(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2708_p0),.din1(grp_fu_2708_p1),.din2(grp_fu_2708_p2),.ce(1'b1),.dout(grp_fu_2708_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U232(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2717_p0),.din1(grp_fu_2717_p1),.din2(grp_fu_2717_p2),.ce(1'b1),.dout(grp_fu_2717_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U233(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2726_p0),.din1(grp_fu_2726_p1),.din2(grp_fu_2726_p2),.ce(1'b1),.dout(grp_fu_2726_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            tid_2_fu_150 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            tid_2_fu_150 <= add_ln188_fu_1578_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_1_reg_2826 <= add_ln194_1_fu_1548_p2;
        add_ln194_reg_2795 <= add_ln194_fu_1493_p2;
        add_ln195_1_reg_2831 <= add_ln195_1_fu_1554_p2;
        add_ln195_reg_2800 <= add_ln195_fu_1498_p2;
        add_ln196_1_reg_2836 <= add_ln196_1_fu_1560_p2;
        add_ln196_reg_2805 <= add_ln196_fu_1503_p2;
        add_ln197_1_reg_2841 <= add_ln197_1_fu_1566_p2;
        add_ln197_reg_2810 <= add_ln197_fu_1508_p2;
        add_ln199_1_reg_2846 <= add_ln199_1_fu_1572_p2;
        add_ln199_reg_2815 <= add_ln199_fu_1513_p2;
        tmp_23_reg_3657 <= tmp_23_fu_2276_p19;
        tmp_25_reg_3662 <= tmp_25_fu_2314_p19;
        tmp_26_reg_3667 <= tmp_26_fu_2350_p19;
        tmp_27_reg_3678 <= tmp_27_fu_2398_p19;
        tmp_28_reg_3683 <= tmp_28_fu_2437_p19;
        tmp_29_reg_3688 <= tmp_29_fu_2476_p19;
        tmp_30_reg_3693 <= tmp_30_fu_2515_p19;
        tmp_31_reg_3698 <= tmp_31_fu_2554_p19;
        tmp_32_reg_3703 <= tmp_32_fu_2593_p19;
        tmp_33_reg_3708 <= tmp_33_fu_2632_p19;
        tmp_34_reg_2820 <= {{tid_reg_2742[2:1]}};
        tmp_34_reg_2820_pp0_iter2_reg <= tmp_34_reg_2820;
        tmp_35_reg_3672 <= {{tid_reg_2742_pp0_iter2_reg[5:1]}};
        zext_ln194_1_reg_3213[5 : 0] <= zext_ln194_1_fu_1907_p1[5 : 0];
        zext_ln194_2_reg_3651[6 : 1] <= zext_ln194_2_fu_2270_p1[6 : 1];
        zext_ln195_1_reg_3229[5 : 0] <= zext_ln195_1_fu_1911_p1[5 : 0];
        zext_ln196_1_reg_3253[5 : 0] <= zext_ln196_1_fu_1917_p1[5 : 0];
        zext_ln197_1_reg_3277[5 : 0] <= zext_ln197_1_fu_1923_p1[5 : 0];
        zext_ln198_reg_3101[6 : 0] <= zext_ln198_fu_1867_p1[6 : 0];
        zext_ln199_1_reg_3301[5 : 0] <= zext_ln199_1_fu_1929_p1[5 : 0];
        zext_ln200_reg_3173[6 : 0] <= zext_ln200_fu_1896_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        hi_reg_2755 <= {{tid_2_fu_150[5:3]}};
        hi_reg_2755_pp0_iter1_reg <= hi_reg_2755;
        hi_reg_2755_pp0_iter2_reg <= hi_reg_2755_pp0_iter1_reg;
        offset_reg_2786 <= offset_fu_1483_p2;
        tid_reg_2742 <= tid_2_fu_150;
        tid_reg_2742_pp0_iter1_reg <= tid_reg_2742;
        tid_reg_2742_pp0_iter2_reg <= tid_reg_2742_pp0_iter1_reg;
        tmp_19_reg_3326 <= tmp_19_fu_1973_p19;
        tmp_20_reg_3331 <= tmp_20_fu_2012_p19;
        tmp_21_reg_3336 <= tmp_21_fu_2051_p19;
        tmp_22_reg_3341 <= tmp_22_fu_2090_p19;
        tmp_24_reg_3366 <= tmp_24_fu_2129_p19;
        tmp_77_reg_2851 <= {{mul_ln194_fu_1591_p2[18:13]}};
        tmp_78_reg_2856 <= {{mul_ln195_fu_1610_p2[18:13]}};
        tmp_79_reg_2861 <= {{mul_ln196_fu_1629_p2[18:13]}};
        tmp_80_reg_2866 <= {{mul_ln197_fu_1648_p2[18:13]}};
        tmp_82_reg_2871 <= {{mul_ln199_fu_1667_p2[18:13]}};
        tmp_85_reg_2876 <= {{mul_ln194_1_fu_1686_p2[18:13]}};
        tmp_86_reg_2881 <= {{mul_ln195_1_fu_1705_p2[18:13]}};
        tmp_87_reg_2886 <= {{mul_ln196_1_fu_1724_p2[18:13]}};
        tmp_88_reg_2891 <= {{mul_ln197_1_fu_1743_p2[18:13]}};
        tmp_90_reg_2896 <= {{mul_ln199_1_fu_1762_p2[18:13]}};
        tmp_reg_2751 <= tid_2_fu_150[32'd6];
        tmp_reg_2751_pp0_iter1_reg <= tmp_reg_2751;
        tmp_reg_2751_pp0_iter2_reg <= tmp_reg_2751_pp0_iter1_reg;
        tmp_s_reg_3321 <= tmp_s_fu_1934_p19;
        trunc_ln191_reg_2780 <= trunc_ln191_fu_1467_p1;
        trunc_ln191_reg_2780_pp0_iter1_reg <= trunc_ln191_reg_2780;
        zext_ln114_reg_2775[2 : 0] <= zext_ln114_fu_1463_p1[2 : 0];
        zext_ln194_3_reg_3713[6 : 2] <= zext_ln194_3_fu_2693_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        reg_1409 <= smem_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)))) begin
        reg_1413 <= smem_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)))) begin
        reg_1417 <= smem_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)))) begin
        reg_1421 <= smem_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        reg_1425 <= smem_10_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        reg_1429 <= smem_8_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)))) begin
        reg_1433 <= smem_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_load_5_reg_3376 <= smem_1_q0;
        smem_2_load_5_reg_3381 <= smem_2_q0;
        smem_3_load_5_reg_3386 <= smem_3_q0;
        smem_load_5_reg_3361 <= smem_q0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln194_3_fu_2693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln194_2_fu_2270_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln193_1_fu_2678_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln193_fu_2254_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_d0_local = tmp_29_reg_3688;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_d0_local = tmp_21_reg_3336;
        end else begin
            DATA_x_1_d0_local = 'bx;
        end
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_d1_local = tmp_28_reg_3683;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_d1_local = tmp_20_reg_3331;
        end else begin
            DATA_x_1_d1_local = 'bx;
        end
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln194_3_reg_3713;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln193_1_fu_2678_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln194_2_reg_3651;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln193_fu_2254_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_31_reg_3698;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_30_reg_3693;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_d1_local = tmp_23_reg_3657;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_d1_local = tmp_22_reg_3341;
        end else begin
            DATA_x_2_d1_local = 'bx;
        end
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln194_3_reg_3713;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln193_1_fu_2678_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln194_2_reg_3651;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln193_fu_2254_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_33_reg_3708;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_32_reg_3703;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_d1_local = tmp_25_reg_3662;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_d1_local = tmp_24_reg_3366;
        end else begin
            DATA_x_3_d1_local = 'bx;
        end
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln194_3_fu_2693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln194_2_fu_2270_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln193_1_fu_2678_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln193_fu_2254_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_d0_local = tmp_27_reg_3678;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_d0_local = tmp_19_reg_3326;
        end else begin
            DATA_x_d0_local = 'bx;
        end
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_d1_local = tmp_26_reg_3667;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_d1_local = tmp_s_reg_3321;
        end else begin
            DATA_x_d1_local = 'bx;
        end
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_1445_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_2751_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_10_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_10_address0_local = zext_ln197_1_fu_1923_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_10_address0_local = zext_ln196_1_fu_1917_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_10_address0_local = zext_ln195_1_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_10_address0_local = zext_ln194_1_fu_1907_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_10_address1_local = zext_ln198_reg_3101;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_10_address1_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_10_address1_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_10_address1_local = zext_ln195_fu_1825_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_10_address1_local = zext_ln194_fu_1814_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1648)) begin
            smem_1_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1645)) begin
            smem_1_address0_local = zext_ln197_1_reg_3277;
        end else if ((1'b1 == ap_condition_1642)) begin
            smem_1_address0_local = zext_ln196_1_reg_3253;
        end else if ((1'b1 == ap_condition_1639)) begin
            smem_1_address0_local = zext_ln195_1_reg_3229;
        end else if ((1'b1 == ap_condition_1636)) begin
            smem_1_address0_local = zext_ln194_1_reg_3213;
        end else if ((1'b1 == ap_condition_1633)) begin
            smem_1_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_1_address0_local = zext_ln200_fu_1896_p1;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_1_address0_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_1_address0_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_1_address0_local = zext_ln195_fu_1825_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_1_address0_local = zext_ln194_fu_1814_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_1_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1633)) begin
            smem_2_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1648)) begin
            smem_2_address0_local = zext_ln199_1_reg_3301;
        end else if ((1'b1 == ap_condition_1657)) begin
            smem_2_address0_local = zext_ln196_1_reg_3253;
        end else if ((1'b1 == ap_condition_1642)) begin
            smem_2_address0_local = zext_ln195_1_reg_3229;
        end else if ((1'b1 == ap_condition_1654)) begin
            smem_2_address0_local = zext_ln194_1_reg_3213;
        end else if ((1'b1 == ap_condition_1636)) begin
            smem_2_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_2_address0_local = zext_ln200_fu_1896_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_2_address0_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_2_address0_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_2_address0_local = zext_ln195_fu_1825_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_2_address0_local = zext_ln194_fu_1814_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_2_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1636)) begin
            smem_3_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1633)) begin
            smem_3_address0_local = zext_ln199_1_reg_3301;
        end else if ((1'b1 == ap_condition_1645)) begin
            smem_3_address0_local = zext_ln196_1_reg_3253;
        end else if ((1'b1 == ap_condition_1657)) begin
            smem_3_address0_local = zext_ln195_1_reg_3229;
        end else if ((1'b1 == ap_condition_1639)) begin
            smem_3_address0_local = zext_ln194_1_reg_3213;
        end else if ((1'b1 == ap_condition_1654)) begin
            smem_3_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_3_address0_local = zext_ln200_fu_1896_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_3_address0_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_3_address0_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_3_address0_local = zext_ln195_fu_1825_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_3_address0_local = zext_ln194_fu_1814_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_3_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1654)) begin
            smem_4_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1636)) begin
            smem_4_address0_local = zext_ln199_1_reg_3301;
        end else if ((1'b1 == ap_condition_1648)) begin
            smem_4_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1645)) begin
            smem_4_address0_local = zext_ln195_1_reg_3229;
        end else if ((1'b1 == ap_condition_1642)) begin
            smem_4_address0_local = zext_ln194_1_reg_3213;
        end else if ((1'b1 == ap_condition_1639)) begin
            smem_4_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_4_address0_local = zext_ln200_fu_1896_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_4_address0_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_4_address0_local = zext_ln198_fu_1867_p1;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_4_address0_local = zext_ln195_fu_1825_p1;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_4_address0_local = zext_ln194_fu_1814_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_4_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1639)) begin
            smem_5_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1654)) begin
            smem_5_address0_local = zext_ln199_1_reg_3301;
        end else if ((1'b1 == ap_condition_1633)) begin
            smem_5_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1648)) begin
            smem_5_address0_local = zext_ln197_1_reg_3277;
        end else if ((1'b1 == ap_condition_1657)) begin
            smem_5_address0_local = zext_ln194_1_reg_3213;
        end else if ((1'b1 == ap_condition_1642)) begin
            smem_5_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_5_address0_local = zext_ln200_fu_1896_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_5_address0_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_5_address0_local = zext_ln198_fu_1867_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_5_address0_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_5_address0_local = zext_ln194_fu_1814_p1;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_5_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1642)) begin
            smem_6_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1639)) begin
            smem_6_address0_local = zext_ln199_1_reg_3301;
        end else if ((1'b1 == ap_condition_1636)) begin
            smem_6_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1633)) begin
            smem_6_address0_local = zext_ln197_1_reg_3277;
        end else if ((1'b1 == ap_condition_1645)) begin
            smem_6_address0_local = zext_ln194_1_reg_3213;
        end else if ((1'b1 == ap_condition_1657)) begin
            smem_6_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_6_address0_local = zext_ln200_fu_1896_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_6_address0_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_6_address0_local = zext_ln198_fu_1867_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_6_address0_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_6_address0_local = zext_ln194_fu_1814_p1;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_6_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1657)) begin
            smem_7_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1642)) begin
            smem_7_address0_local = zext_ln199_1_reg_3301;
        end else if ((1'b1 == ap_condition_1654)) begin
            smem_7_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1636)) begin
            smem_7_address0_local = zext_ln197_1_reg_3277;
        end else if ((1'b1 == ap_condition_1648)) begin
            smem_7_address0_local = zext_ln196_1_reg_3253;
        end else if ((1'b1 == ap_condition_1645)) begin
            smem_7_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_7_address0_local = zext_ln200_fu_1896_p1;
        end else if ((1'b1 == ap_condition_1621)) begin
            smem_7_address0_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_7_address0_local = zext_ln198_fu_1867_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_7_address0_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_7_address0_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_7_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1645)) begin
            smem_8_address0_local = zext_ln200_1_fu_2234_p1;
        end else if ((1'b1 == ap_condition_1639)) begin
            smem_8_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_8_address0_local = zext_ln199_1_fu_1929_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_8_address0_local = zext_ln197_1_fu_1923_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_8_address0_local = zext_ln196_1_fu_1917_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_8_address0_local = zext_ln195_1_fu_1911_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1645)) begin
            smem_8_address1_local = zext_ln200_reg_3173;
        end else if ((1'b1 == ap_condition_1639)) begin
            smem_8_address1_local = zext_ln198_reg_3101;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_8_address1_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_8_address1_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_8_address1_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_8_address1_local = zext_ln195_fu_1825_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_9_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_9_address0_local = zext_ln199_1_fu_1929_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_9_address0_local = zext_ln197_1_fu_1923_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_9_address0_local = zext_ln196_1_fu_1917_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_9_address0_local = zext_ln195_1_fu_1911_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_9_address1_local = zext_ln198_reg_3101;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_9_address1_local = zext_ln199_fu_1876_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_9_address1_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            smem_9_address1_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_9_address1_local = zext_ln195_fu_1825_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1645)) begin
            smem_address0_local = zext_ln198_1_fu_2213_p1;
        end else if ((1'b1 == ap_condition_1657)) begin
            smem_address0_local = zext_ln197_1_reg_3277;
        end else if ((1'b1 == ap_condition_1639)) begin
            smem_address0_local = zext_ln196_1_reg_3253;
        end else if ((1'b1 == ap_condition_1654)) begin
            smem_address0_local = zext_ln195_1_reg_3229;
        end else if ((1'b1 == ap_condition_1633)) begin
            smem_address0_local = zext_ln194_1_reg_3213;
        end else if ((1'b1 == ap_condition_1648)) begin
            smem_address0_local = zext_ln172_3_fu_2192_p1;
        end else if ((1'b1 == ap_condition_1630)) begin
            smem_address0_local = zext_ln198_fu_1867_p1;
        end else if ((1'b1 == ap_condition_1651)) begin
            smem_address0_local = zext_ln197_fu_1847_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            smem_address0_local = zext_ln196_fu_1836_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            smem_address0_local = zext_ln195_fu_1825_p1;
        end else if ((1'b1 == ap_condition_1624)) begin
            smem_address0_local = zext_ln194_fu_1814_p1;
        end else if ((1'b1 == ap_condition_1612)) begin
            smem_address0_local = zext_ln172_2_fu_1802_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln188_fu_1578_p2 = (tid_reg_2742 + 7'd2);
assign add_ln194_1_fu_1548_p2 = (offset_3_fu_1539_p2 + 9'd32);
assign add_ln194_fu_1493_p2 = (offset_reg_2786 + 9'd32);
assign add_ln195_1_fu_1554_p2 = (offset_3_fu_1539_p2 + 9'd8);
assign add_ln195_fu_1498_p2 = (offset_reg_2786 + 9'd8);
assign add_ln196_1_fu_1560_p2 = (offset_3_fu_1539_p2 + 9'd40);
assign add_ln196_fu_1503_p2 = (offset_reg_2786 + 9'd40);
assign add_ln197_1_fu_1566_p2 = (offset_3_fu_1539_p2 + 9'd16);
assign add_ln197_fu_1508_p2 = (offset_reg_2786 + 9'd16);
assign add_ln199_1_fu_1572_p2 = (offset_3_fu_1539_p2 + 9'd24);
assign add_ln199_fu_1513_p2 = (offset_reg_2786 + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1612 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd0));
end
always @ (*) begin
    ap_condition_1615 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd2));
end
always @ (*) begin
    ap_condition_1618 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd3));
end
always @ (*) begin
    ap_condition_1621 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd5));
end
always @ (*) begin
    ap_condition_1624 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd1));
end
always @ (*) begin
    ap_condition_1627 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd4));
end
always @ (*) begin
    ap_condition_1630 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd7));
end
always @ (*) begin
    ap_condition_1633 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd1));
end
always @ (*) begin
    ap_condition_1636 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd2));
end
always @ (*) begin
    ap_condition_1639 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd4));
end
always @ (*) begin
    ap_condition_1642 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd5));
end
always @ (*) begin
    ap_condition_1645 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd7));
end
always @ (*) begin
    ap_condition_1648 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd0));
end
always @ (*) begin
    ap_condition_1651 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (hi_reg_2755_pp0_iter1_reg == 3'd6));
end
always @ (*) begin
    ap_condition_1654 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd3));
end
always @ (*) begin
    ap_condition_1657 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (hi_reg_2755_pp0_iter1_reg == 3'd6));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_2699_p0 = zext_ln172_18_fu_1489_p1;
assign grp_fu_2699_p1 = 10'd48;
assign grp_fu_2699_p2 = 21'd1490;
assign grp_fu_2708_p0 = zext_ln172_18_fu_1489_p1;
assign grp_fu_2708_p1 = 10'd56;
assign grp_fu_2708_p2 = 21'd1490;
assign grp_fu_2717_p0 = zext_ln172_19_fu_1544_p1;
assign grp_fu_2717_p1 = 10'd48;
assign grp_fu_2717_p2 = 21'd1490;
assign grp_fu_2726_p0 = zext_ln172_19_fu_1544_p1;
assign grp_fu_2726_p1 = 10'd56;
assign grp_fu_2726_p2 = 21'd1490;
assign hi_fu_1453_p4 = {{tid_2_fu_150[5:3]}};
assign mul_ln191_1_fu_1527_p5 = {{{{tmp_34_fu_1518_p4}, {3'd4}}, {tmp_34_fu_1518_p4}}, {2'd2}};
assign mul_ln194_1_fu_1686_p0 = mul_ln194_1_fu_1686_p00;
assign mul_ln194_1_fu_1686_p00 = add_ln194_1_reg_2826;
assign mul_ln194_1_fu_1686_p1 = 19'd745;
assign mul_ln194_fu_1591_p0 = mul_ln194_fu_1591_p00;
assign mul_ln194_fu_1591_p00 = add_ln194_reg_2795;
assign mul_ln194_fu_1591_p1 = 19'd745;
assign mul_ln195_1_fu_1705_p0 = mul_ln195_1_fu_1705_p00;
assign mul_ln195_1_fu_1705_p00 = add_ln195_1_reg_2831;
assign mul_ln195_1_fu_1705_p1 = 19'd745;
assign mul_ln195_fu_1610_p0 = mul_ln195_fu_1610_p00;
assign mul_ln195_fu_1610_p00 = add_ln195_reg_2800;
assign mul_ln195_fu_1610_p1 = 19'd745;
assign mul_ln196_1_fu_1724_p0 = mul_ln196_1_fu_1724_p00;
assign mul_ln196_1_fu_1724_p00 = add_ln196_1_reg_2836;
assign mul_ln196_1_fu_1724_p1 = 19'd745;
assign mul_ln196_fu_1629_p0 = mul_ln196_fu_1629_p00;
assign mul_ln196_fu_1629_p00 = add_ln196_reg_2805;
assign mul_ln196_fu_1629_p1 = 19'd745;
assign mul_ln197_1_fu_1743_p0 = mul_ln197_1_fu_1743_p00;
assign mul_ln197_1_fu_1743_p00 = add_ln197_1_reg_2841;
assign mul_ln197_1_fu_1743_p1 = 19'd745;
assign mul_ln197_fu_1648_p0 = mul_ln197_fu_1648_p00;
assign mul_ln197_fu_1648_p00 = add_ln197_reg_2810;
assign mul_ln197_fu_1648_p1 = 19'd745;
assign mul_ln199_1_fu_1762_p0 = mul_ln199_1_fu_1762_p00;
assign mul_ln199_1_fu_1762_p00 = add_ln199_1_reg_2846;
assign mul_ln199_1_fu_1762_p1 = 19'd745;
assign mul_ln199_fu_1667_p0 = mul_ln199_fu_1667_p00;
assign mul_ln199_fu_1667_p00 = add_ln199_reg_2815;
assign mul_ln199_fu_1667_p1 = 19'd745;
assign mul_ln_fu_1471_p5 = {{{{trunc_ln191_fu_1467_p1}, {2'd0}}, {trunc_ln191_fu_1467_p1}}, {1'd0}};
assign offset_3_fu_1539_p2 = (mul_ln191_1_fu_1527_p5 + zext_ln114_reg_2775);
assign offset_fu_1483_p2 = (mul_ln_fu_1471_p5 + zext_ln114_fu_1463_p1);
assign or_ln194_1_fu_2686_p3 = {{tmp_35_reg_3672}, {2'd3}};
assign or_ln8_fu_2262_p3 = {{trunc_ln193_fu_2246_p1}, {1'd1}};
assign or_ln_fu_2671_p3 = {{tmp_35_reg_3672}, {2'd2}};
assign p_shl1_fu_1785_p3 = {{trunc_ln191_reg_2780_pp0_iter1_reg}, {3'd0}};
assign p_shl_fu_2175_p3 = {{tmp_34_reg_2820_pp0_iter2_reg}, {4'd8}};
assign shl_ln193_fu_2249_p2 = tid_reg_2742_pp0_iter2_reg << 7'd1;
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
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
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign sub_ln172_1_fu_2186_p2 = (p_shl_fu_2175_p3 - zext_ln172_21_fu_2182_p1);
assign sub_ln172_fu_1796_p2 = (p_shl1_fu_1785_p3 - zext_ln172_fu_1792_p1);
assign tmp_19_fu_1973_p17 = 'bx;
assign tmp_20_fu_2012_p17 = 'bx;
assign tmp_21_fu_2051_p17 = 'bx;
assign tmp_22_fu_2090_p17 = 'bx;
assign tmp_23_fu_2276_p17 = 'bx;
assign tmp_24_fu_2129_p17 = 'bx;
assign tmp_25_fu_2314_p17 = 'bx;
assign tmp_26_fu_2350_p17 = 'bx;
assign tmp_27_fu_2398_p17 = 'bx;
assign tmp_28_fu_2437_p17 = 'bx;
assign tmp_29_fu_2476_p17 = 'bx;
assign tmp_30_fu_2515_p17 = 'bx;
assign tmp_31_fu_2554_p17 = 'bx;
assign tmp_32_fu_2593_p17 = 'bx;
assign tmp_33_fu_2632_p17 = 'bx;
assign tmp_34_fu_1518_p4 = {{tid_reg_2742[2:1]}};
assign tmp_76_fu_1778_p3 = {{trunc_ln191_reg_2780_pp0_iter1_reg}, {1'd0}};
assign tmp_81_fu_1858_p1 = grp_fu_2699_p3;
assign tmp_81_fu_1858_p4 = {{tmp_81_fu_1858_p1[20:14]}};
assign tmp_83_fu_1887_p1 = grp_fu_2708_p3;
assign tmp_83_fu_1887_p4 = {{tmp_83_fu_1887_p1[20:14]}};
assign tmp_84_fu_2168_p3 = {{tmp_34_reg_2820_pp0_iter2_reg}, {2'd2}};
assign tmp_89_fu_2204_p1 = grp_fu_2717_p3;
assign tmp_89_fu_2204_p4 = {{tmp_89_fu_2204_p1[20:14]}};
assign tmp_91_fu_2225_p1 = grp_fu_2726_p3;
assign tmp_91_fu_2225_p4 = {{tmp_91_fu_2225_p1[20:14]}};
assign tmp_fu_1445_p3 = tid_2_fu_150[32'd6];
assign tmp_s_fu_1934_p17 = 'bx;
assign trunc_ln191_fu_1467_p1 = tid_2_fu_150[2:0];
assign trunc_ln193_fu_2246_p1 = tid_reg_2742_pp0_iter2_reg[5:0];
assign zext_ln114_fu_1463_p1 = hi_fu_1453_p4;
assign zext_ln172_18_fu_1489_p1 = offset_fu_1483_p2;
assign zext_ln172_19_fu_1544_p1 = offset_3_fu_1539_p2;
assign zext_ln172_21_fu_2182_p1 = tmp_84_fu_2168_p3;
assign zext_ln172_2_fu_1802_p1 = sub_ln172_fu_1796_p2;
assign zext_ln172_3_fu_2192_p1 = sub_ln172_1_fu_2186_p2;
assign zext_ln172_fu_1792_p1 = tmp_76_fu_1778_p3;
assign zext_ln193_1_fu_2678_p1 = or_ln_fu_2671_p3;
assign zext_ln193_fu_2254_p1 = shl_ln193_fu_2249_p2;
assign zext_ln194_1_fu_1907_p1 = tmp_85_reg_2876;
assign zext_ln194_2_fu_2270_p1 = or_ln8_fu_2262_p3;
assign zext_ln194_3_fu_2693_p1 = or_ln194_1_fu_2686_p3;
assign zext_ln194_fu_1814_p1 = tmp_77_reg_2851;
assign zext_ln195_1_fu_1911_p1 = tmp_86_reg_2881;
assign zext_ln195_fu_1825_p1 = tmp_78_reg_2856;
assign zext_ln196_1_fu_1917_p1 = tmp_87_reg_2886;
assign zext_ln196_fu_1836_p1 = tmp_79_reg_2861;
assign zext_ln197_1_fu_1923_p1 = tmp_88_reg_2891;
assign zext_ln197_fu_1847_p1 = tmp_80_reg_2866;
assign zext_ln198_1_fu_2213_p1 = tmp_89_fu_2204_p4;
assign zext_ln198_fu_1867_p1 = tmp_81_fu_1858_p4;
assign zext_ln199_1_fu_1929_p1 = tmp_90_reg_2896;
assign zext_ln199_fu_1876_p1 = tmp_82_reg_2871;
assign zext_ln200_1_fu_2234_p1 = tmp_91_fu_2225_p4;
assign zext_ln200_fu_1896_p1 = tmp_83_fu_1887_p4;
always @ (posedge ap_clk) begin
    zext_ln114_reg_2775[8:3] <= 6'b000000;
    zext_ln198_reg_3101[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln200_reg_3173[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln194_1_reg_3213[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln195_1_reg_3229[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln196_1_reg_3253[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln197_1_reg_3277[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln199_1_reg_3301[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln194_2_reg_3651[0] <= 1'b1;
    zext_ln194_2_reg_3651[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln194_3_reg_3713[1:0] <= 2'b11;
    zext_ln194_3_reg_3713[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 