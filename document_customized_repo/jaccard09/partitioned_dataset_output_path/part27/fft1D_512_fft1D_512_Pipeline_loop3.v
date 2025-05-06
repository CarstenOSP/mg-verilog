
module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1);  
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
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_2116;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_2108;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_2108_pp0_iter1_reg;
reg   [6:0] tid_reg_2108_pp0_iter2_reg;
reg   [6:0] tid_reg_2108_pp0_iter3_reg;
reg   [0:0] tmp_reg_2116_pp0_iter1_reg;
reg   [0:0] tmp_reg_2116_pp0_iter2_reg;
reg   [0:0] tmp_reg_2116_pp0_iter3_reg;
wire   [8:0] zext_ln114_fu_985_p1;
reg   [8:0] zext_ln114_reg_2120;
wire   [8:0] offset_fu_1005_p2;
reg   [8:0] offset_reg_2125;
reg   [8:0] offset_reg_2125_pp0_iter1_reg;
reg   [8:0] offset_reg_2125_pp0_iter2_reg;
wire   [8:0] offset_3_fu_1038_p2;
reg   [8:0] offset_3_reg_2137;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_3_reg_2137_pp0_iter1_reg;
reg   [8:0] offset_3_reg_2137_pp0_iter2_reg;
wire   [8:0] add_ln194_fu_1059_p2;
reg   [8:0] add_ln194_reg_2149;
wire   [8:0] add_ln195_fu_1064_p2;
reg   [8:0] add_ln195_reg_2154;
wire   [8:0] add_ln196_fu_1069_p2;
reg   [8:0] add_ln196_reg_2159;
wire   [8:0] add_ln197_fu_1074_p2;
reg   [8:0] add_ln197_reg_2164;
wire   [8:0] add_ln199_fu_1079_p2;
reg   [8:0] add_ln199_reg_2169;
wire   [9:0] zext_ln172_15_fu_1084_p1;
reg   [9:0] zext_ln172_15_reg_2174;
wire   [9:0] zext_ln172_14_fu_1087_p1;
reg   [9:0] zext_ln172_14_reg_2179;
reg   [6:0] tmp_75_reg_2184;
reg   [6:0] tmp_76_reg_2189;
reg   [6:0] tmp_77_reg_2194;
reg   [6:0] tmp_78_reg_2199;
reg   [6:0] tmp_79_reg_2204;
reg   [6:0] tmp_81_reg_2209;
wire   [8:0] add_ln196_1_fu_1204_p2;
reg   [8:0] add_ln196_1_reg_2214;
wire   [8:0] add_ln197_1_fu_1209_p2;
reg   [8:0] add_ln197_1_reg_2219;
wire   [8:0] add_ln199_1_fu_1214_p2;
reg   [8:0] add_ln199_1_reg_2224;
reg   [6:0] tmp_86_reg_2229;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] tmp_87_reg_2234;
reg   [6:0] tmp_89_reg_2239;
reg   [7:0] tmp_90_reg_2244;
wire    ap_block_pp0_stage3_11001;
wire   [2:0] trunc_ln172_fu_1285_p1;
reg   [2:0] trunc_ln172_reg_2249;
reg   [7:0] tmp_80_reg_2261;
wire   [8:0] add_ln194_1_fu_1298_p2;
reg   [8:0] add_ln194_1_reg_2266;
wire   [8:0] add_ln195_1_fu_1303_p2;
reg   [8:0] add_ln195_1_reg_2271;
reg   [6:0] tmp_83_reg_2476;
wire   [2:0] trunc_ln172_3_fu_1401_p1;
reg   [2:0] trunc_ln172_3_reg_2481;
reg   [6:0] tmp_84_reg_2493;
reg   [6:0] tmp_85_reg_2498;
wire   [63:0] tmp_s_fu_1443_p13;
reg   [63:0] tmp_s_reg_2503;
wire   [63:0] tmp_19_fu_1470_p13;
reg   [63:0] tmp_19_reg_2508;
wire   [63:0] tmp_20_fu_1497_p13;
reg   [63:0] tmp_20_reg_2513;
wire   [63:0] tmp_21_fu_1524_p13;
reg   [63:0] tmp_21_reg_2518;
wire   [63:0] tmp_22_fu_1551_p13;
reg   [63:0] tmp_22_reg_2523;
wire   [63:0] tmp_23_fu_1578_p13;
reg   [63:0] tmp_23_reg_2528;
wire   [63:0] tmp_24_fu_1605_p13;
reg   [63:0] tmp_24_reg_2533;
wire   [63:0] tmp_25_fu_1632_p13;
reg   [63:0] tmp_25_reg_2538;
wire   [5:0] trunc_ln193_fu_1733_p1;
reg   [5:0] trunc_ln193_reg_2743;
wire   [63:0] tmp_26_fu_1764_p13;
reg   [63:0] tmp_26_reg_2749;
reg   [4:0] tmp_35_reg_2754;
wire   [63:0] tmp_27_fu_1800_p13;
reg   [63:0] tmp_27_reg_2762;
wire   [63:0] tmp_28_fu_1827_p13;
reg   [63:0] tmp_28_reg_2767;
wire   [63:0] tmp_29_fu_1854_p13;
reg   [63:0] tmp_29_reg_2772;
wire   [63:0] tmp_30_fu_1881_p13;
reg   [63:0] tmp_30_reg_2777;
wire   [63:0] tmp_31_fu_1908_p13;
reg   [63:0] tmp_31_reg_2782;
wire   [63:0] tmp_32_fu_1935_p13;
reg   [63:0] tmp_32_reg_2787;
wire   [63:0] tmp_33_fu_1962_p13;
reg   [63:0] tmp_33_reg_2792;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_2_fu_1308_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_fu_1316_p1;
wire   [63:0] zext_ln195_fu_1324_p1;
wire   [63:0] zext_ln196_fu_1332_p1;
wire   [63:0] zext_ln197_fu_1340_p1;
wire   [63:0] zext_ln198_fu_1348_p1;
wire   [63:0] zext_ln199_fu_1356_p1;
wire   [63:0] zext_ln200_fu_1373_p1;
wire   [63:0] zext_ln172_3_fu_1659_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_1_fu_1667_p1;
wire   [63:0] zext_ln195_1_fu_1675_p1;
wire   [63:0] zext_ln196_1_fu_1683_p1;
wire   [63:0] zext_ln197_1_fu_1691_p1;
wire   [63:0] zext_ln198_1_fu_1708_p1;
wire   [63:0] zext_ln199_1_fu_1717_p1;
wire   [63:0] zext_ln200_1_fu_1725_p1;
wire   [63:0] zext_ln193_fu_1744_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_2_fu_1758_p1;
wire   [63:0] zext_ln197_2_fu_1996_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln198_2_fu_2009_p1;
wire   [63:0] zext_ln193_1_fu_2022_p1;
wire   [63:0] zext_ln194_3_fu_2035_p1;
wire   [63:0] zext_ln197_3_fu_2048_p1;
wire   [63:0] zext_ln198_3_fu_2061_p1;
reg   [6:0] tid_2_fu_124;
wire   [6:0] add_ln188_fu_1049_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
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
wire   [2:0] hi_fu_975_p4;
wire   [2:0] trunc_ln191_fu_989_p1;
wire   [8:0] mul_ln_fu_993_p5;
wire   [8:0] grp_fu_1011_p0;
wire   [3:0] grp_fu_1011_p1;
wire   [1:0] tmp_34_fu_1017_p4;
wire   [8:0] mul_ln191_1_fu_1026_p5;
wire   [8:0] grp_fu_1043_p0;
wire   [3:0] grp_fu_1043_p1;
wire   [8:0] mul_ln172_2_fu_1093_p0;
wire   [10:0] mul_ln172_2_fu_1093_p1;
wire   [18:0] mul_ln172_2_fu_1093_p2;
wire   [8:0] mul_ln194_fu_1112_p0;
wire   [10:0] mul_ln194_fu_1112_p1;
wire   [18:0] mul_ln194_fu_1112_p2;
wire   [8:0] mul_ln195_fu_1131_p0;
wire   [10:0] mul_ln195_fu_1131_p1;
wire   [18:0] mul_ln195_fu_1131_p2;
wire   [8:0] mul_ln196_fu_1150_p0;
wire   [10:0] mul_ln196_fu_1150_p1;
wire   [18:0] mul_ln196_fu_1150_p2;
wire   [8:0] mul_ln197_fu_1169_p0;
wire   [10:0] mul_ln197_fu_1169_p1;
wire   [18:0] mul_ln197_fu_1169_p2;
wire   [8:0] mul_ln199_fu_1188_p0;
wire   [10:0] mul_ln199_fu_1188_p1;
wire   [18:0] mul_ln199_fu_1188_p2;
wire   [8:0] mul_ln196_1_fu_1222_p0;
wire   [10:0] mul_ln196_1_fu_1222_p1;
wire   [18:0] mul_ln196_1_fu_1222_p2;
wire   [8:0] mul_ln197_1_fu_1241_p0;
wire   [10:0] mul_ln197_1_fu_1241_p1;
wire   [18:0] mul_ln197_1_fu_1241_p2;
wire   [8:0] mul_ln199_1_fu_1260_p0;
wire   [10:0] mul_ln199_1_fu_1260_p1;
wire   [18:0] mul_ln199_1_fu_1260_p2;
wire   [20:0] tmp_90_fu_1276_p1;
wire  signed [20:0] grp_fu_2067_p3;
wire   [2:0] grp_fu_1011_p2;
wire   [20:0] tmp_80_fu_1289_p1;
wire  signed [20:0] grp_fu_2076_p3;
wire   [20:0] tmp_82_fu_1364_p1;
wire  signed [20:0] grp_fu_2085_p3;
wire   [7:0] tmp_82_fu_1364_p4;
wire   [8:0] mul_ln172_fu_1385_p0;
wire   [10:0] mul_ln172_fu_1385_p1;
wire   [18:0] mul_ln172_fu_1385_p2;
wire   [2:0] grp_fu_1043_p2;
wire   [8:0] mul_ln194_1_fu_1408_p0;
wire   [10:0] mul_ln194_1_fu_1408_p1;
wire   [18:0] mul_ln194_1_fu_1408_p2;
wire   [8:0] mul_ln195_1_fu_1427_p0;
wire   [10:0] mul_ln195_1_fu_1427_p1;
wire   [18:0] mul_ln195_1_fu_1427_p2;
wire   [63:0] tmp_s_fu_1443_p11;
wire   [63:0] tmp_19_fu_1470_p11;
wire   [63:0] tmp_20_fu_1497_p11;
wire   [63:0] tmp_21_fu_1524_p11;
wire   [63:0] tmp_22_fu_1551_p11;
wire   [63:0] tmp_23_fu_1578_p11;
wire   [63:0] tmp_24_fu_1605_p11;
wire   [63:0] tmp_25_fu_1632_p11;
wire   [20:0] tmp_88_fu_1699_p1;
wire  signed [20:0] grp_fu_2093_p3;
wire   [7:0] tmp_88_fu_1699_p4;
wire   [7:0] shl_ln2_fu_1736_p3;
wire   [7:0] or_ln11_fu_1750_p3;
wire   [63:0] tmp_26_fu_1764_p11;
wire   [63:0] tmp_27_fu_1800_p11;
wire   [63:0] tmp_28_fu_1827_p11;
wire   [63:0] tmp_29_fu_1854_p11;
wire   [63:0] tmp_30_fu_1881_p11;
wire   [63:0] tmp_31_fu_1908_p11;
wire   [63:0] tmp_32_fu_1935_p11;
wire   [63:0] tmp_33_fu_1962_p11;
wire   [7:0] or_ln12_fu_1989_p3;
wire   [7:0] or_ln13_fu_2002_p3;
wire   [7:0] shl_ln193_1_fu_2015_p3;
wire   [7:0] or_ln194_1_fu_2028_p3;
wire   [7:0] or_ln197_1_fu_2041_p3;
wire   [7:0] or_ln198_1_fu_2054_p3;
wire   [8:0] grp_fu_2067_p0;
wire   [5:0] grp_fu_2067_p1;
wire   [10:0] grp_fu_2067_p2;
wire   [8:0] grp_fu_2076_p0;
wire   [5:0] grp_fu_2076_p1;
wire   [10:0] grp_fu_2076_p2;
wire   [8:0] grp_fu_2085_p0;
wire   [5:0] grp_fu_2085_p1;
wire   [10:0] grp_fu_2085_p2;
wire   [8:0] grp_fu_2093_p0;
wire   [5:0] grp_fu_2093_p1;
wire   [10:0] grp_fu_2093_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_2067_p00;
wire   [9:0] grp_fu_2076_p00;
wire   [18:0] mul_ln172_2_fu_1093_p00;
wire   [18:0] mul_ln172_fu_1385_p00;
wire   [18:0] mul_ln194_1_fu_1408_p00;
wire   [18:0] mul_ln194_fu_1112_p00;
wire   [18:0] mul_ln195_1_fu_1427_p00;
wire   [18:0] mul_ln195_fu_1131_p00;
wire   [18:0] mul_ln196_1_fu_1222_p00;
wire   [18:0] mul_ln196_fu_1150_p00;
wire   [18:0] mul_ln197_1_fu_1241_p00;
wire   [18:0] mul_ln197_fu_1169_p00;
wire   [18:0] mul_ln199_1_fu_1260_p00;
wire   [18:0] mul_ln199_fu_1188_p00;
reg    ap_condition_1353;
reg    ap_condition_1357;
reg    ap_condition_1361;
reg    ap_condition_1365;
reg    ap_condition_1369;
reg    ap_condition_1373;
reg    ap_condition_1377;
reg    ap_condition_1381;
reg    ap_condition_1385;
reg    ap_condition_1389;
wire   [2:0] tmp_s_fu_1443_p1;
wire   [2:0] tmp_s_fu_1443_p3;
wire   [2:0] tmp_s_fu_1443_p5;
wire   [2:0] tmp_s_fu_1443_p7;
wire  signed [2:0] tmp_s_fu_1443_p9;
wire   [2:0] tmp_19_fu_1470_p1;
wire  signed [2:0] tmp_19_fu_1470_p3;
wire   [2:0] tmp_19_fu_1470_p5;
wire   [2:0] tmp_19_fu_1470_p7;
wire   [2:0] tmp_19_fu_1470_p9;
wire   [2:0] tmp_20_fu_1497_p1;
wire   [2:0] tmp_20_fu_1497_p3;
wire  signed [2:0] tmp_20_fu_1497_p5;
wire   [2:0] tmp_20_fu_1497_p7;
wire   [2:0] tmp_20_fu_1497_p9;
wire   [2:0] tmp_21_fu_1524_p1;
wire   [2:0] tmp_21_fu_1524_p3;
wire   [2:0] tmp_21_fu_1524_p5;
wire   [2:0] tmp_21_fu_1524_p7;
wire  signed [2:0] tmp_21_fu_1524_p9;
wire  signed [2:0] tmp_22_fu_1551_p1;
wire   [2:0] tmp_22_fu_1551_p3;
wire   [2:0] tmp_22_fu_1551_p5;
wire   [2:0] tmp_22_fu_1551_p7;
wire   [2:0] tmp_22_fu_1551_p9;
wire   [2:0] tmp_23_fu_1578_p1;
wire   [2:0] tmp_23_fu_1578_p3;
wire  signed [2:0] tmp_23_fu_1578_p5;
wire   [2:0] tmp_23_fu_1578_p7;
wire   [2:0] tmp_23_fu_1578_p9;
wire   [2:0] tmp_24_fu_1605_p1;
wire   [2:0] tmp_24_fu_1605_p3;
wire   [2:0] tmp_24_fu_1605_p5;
wire  signed [2:0] tmp_24_fu_1605_p7;
wire   [2:0] tmp_24_fu_1605_p9;
wire  signed [2:0] tmp_25_fu_1632_p1;
wire   [2:0] tmp_25_fu_1632_p3;
wire   [2:0] tmp_25_fu_1632_p5;
wire   [2:0] tmp_25_fu_1632_p7;
wire   [2:0] tmp_25_fu_1632_p9;
wire   [2:0] tmp_26_fu_1764_p1;
wire   [2:0] tmp_26_fu_1764_p3;
wire   [2:0] tmp_26_fu_1764_p5;
wire   [2:0] tmp_26_fu_1764_p7;
wire  signed [2:0] tmp_26_fu_1764_p9;
wire   [2:0] tmp_27_fu_1800_p1;
wire  signed [2:0] tmp_27_fu_1800_p3;
wire   [2:0] tmp_27_fu_1800_p5;
wire   [2:0] tmp_27_fu_1800_p7;
wire   [2:0] tmp_27_fu_1800_p9;
wire   [2:0] tmp_28_fu_1827_p1;
wire   [2:0] tmp_28_fu_1827_p3;
wire  signed [2:0] tmp_28_fu_1827_p5;
wire   [2:0] tmp_28_fu_1827_p7;
wire   [2:0] tmp_28_fu_1827_p9;
wire   [2:0] tmp_29_fu_1854_p1;
wire   [2:0] tmp_29_fu_1854_p3;
wire   [2:0] tmp_29_fu_1854_p5;
wire   [2:0] tmp_29_fu_1854_p7;
wire  signed [2:0] tmp_29_fu_1854_p9;
wire  signed [2:0] tmp_30_fu_1881_p1;
wire   [2:0] tmp_30_fu_1881_p3;
wire   [2:0] tmp_30_fu_1881_p5;
wire   [2:0] tmp_30_fu_1881_p7;
wire   [2:0] tmp_30_fu_1881_p9;
wire   [2:0] tmp_31_fu_1908_p1;
wire   [2:0] tmp_31_fu_1908_p3;
wire  signed [2:0] tmp_31_fu_1908_p5;
wire   [2:0] tmp_31_fu_1908_p7;
wire   [2:0] tmp_31_fu_1908_p9;
wire   [2:0] tmp_32_fu_1935_p1;
wire   [2:0] tmp_32_fu_1935_p3;
wire   [2:0] tmp_32_fu_1935_p5;
wire  signed [2:0] tmp_32_fu_1935_p7;
wire   [2:0] tmp_32_fu_1935_p9;
wire  signed [2:0] tmp_33_fu_1962_p1;
wire   [2:0] tmp_33_fu_1962_p3;
wire   [2:0] tmp_33_fu_1962_p5;
wire   [2:0] tmp_33_fu_1962_p7;
wire   [2:0] tmp_33_fu_1962_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_124 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1011_p0),.din1(grp_fu_1011_p1),.ce(1'b1),.dout(grp_fu_1011_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1043_p0),.din1(grp_fu_1043_p1),.ce(1'b1),.dout(grp_fu_1043_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U186(.din0(mul_ln172_2_fu_1093_p0),.din1(mul_ln172_2_fu_1093_p1),.dout(mul_ln172_2_fu_1093_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U187(.din0(mul_ln194_fu_1112_p0),.din1(mul_ln194_fu_1112_p1),.dout(mul_ln194_fu_1112_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U188(.din0(mul_ln195_fu_1131_p0),.din1(mul_ln195_fu_1131_p1),.dout(mul_ln195_fu_1131_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U189(.din0(mul_ln196_fu_1150_p0),.din1(mul_ln196_fu_1150_p1),.dout(mul_ln196_fu_1150_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U190(.din0(mul_ln197_fu_1169_p0),.din1(mul_ln197_fu_1169_p1),.dout(mul_ln197_fu_1169_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U191(.din0(mul_ln199_fu_1188_p0),.din1(mul_ln199_fu_1188_p1),.dout(mul_ln199_fu_1188_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U192(.din0(mul_ln196_1_fu_1222_p0),.din1(mul_ln196_1_fu_1222_p1),.dout(mul_ln196_1_fu_1222_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U193(.din0(mul_ln197_1_fu_1241_p0),.din1(mul_ln197_1_fu_1241_p1),.dout(mul_ln197_1_fu_1241_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U194(.din0(mul_ln199_1_fu_1260_p0),.din1(mul_ln199_1_fu_1260_p1),.dout(mul_ln199_1_fu_1260_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U195(.din0(mul_ln172_fu_1385_p0),.din1(mul_ln172_fu_1385_p1),.dout(mul_ln172_fu_1385_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U196(.din0(mul_ln194_1_fu_1408_p0),.din1(mul_ln194_1_fu_1408_p1),.dout(mul_ln194_1_fu_1408_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U197(.din0(mul_ln195_1_fu_1427_p0),.din1(mul_ln195_1_fu_1427_p1),.dout(mul_ln195_1_fu_1427_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U198(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_s_fu_1443_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_s_fu_1443_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U199(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_19_fu_1470_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_19_fu_1470_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U200(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_20_fu_1497_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_20_fu_1497_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U201(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_21_fu_1524_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_21_fu_1524_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U202(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_22_fu_1551_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_22_fu_1551_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U203(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_23_fu_1578_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_23_fu_1578_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U204(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_24_fu_1605_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_24_fu_1605_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U205(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_25_fu_1632_p11),.sel(trunc_ln172_reg_2249),.dout(tmp_25_fu_1632_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U206(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_26_fu_1764_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_26_fu_1764_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U207(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_27_fu_1800_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_27_fu_1800_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U208(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_28_fu_1827_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_28_fu_1827_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U209(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_29_fu_1854_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_29_fu_1854_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U210(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_30_fu_1881_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_30_fu_1881_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U211(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_31_fu_1908_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_31_fu_1908_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U212(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_32_fu_1935_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_32_fu_1935_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U213(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_33_fu_1962_p11),.sel(trunc_ln172_3_reg_2481),.dout(tmp_33_fu_1962_p13));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U214(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2067_p0),.din1(grp_fu_2067_p1),.din2(grp_fu_2067_p2),.ce(1'b1),.dout(grp_fu_2067_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U215(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2076_p0),.din1(grp_fu_2076_p1),.din2(grp_fu_2076_p2),.ce(1'b1),.dout(grp_fu_2076_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U216(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2085_p0),.din1(grp_fu_2085_p1),.din2(grp_fu_2085_p2),.ce(1'b1),.dout(grp_fu_2085_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U217(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2093_p0),.din1(grp_fu_2093_p1),.din2(grp_fu_2093_p2),.ce(1'b1),.dout(grp_fu_2093_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_124 <= 7'd0;
    end else if (((tmp_reg_2116 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_2_fu_124 <= add_ln188_fu_1049_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_1_reg_2266 <= add_ln194_1_fu_1298_p2;
        add_ln194_reg_2149 <= add_ln194_fu_1059_p2;
        add_ln195_1_reg_2271 <= add_ln195_1_fu_1303_p2;
        add_ln195_reg_2154 <= add_ln195_fu_1064_p2;
        add_ln196_reg_2159 <= add_ln196_fu_1069_p2;
        add_ln197_reg_2164 <= add_ln197_fu_1074_p2;
        add_ln199_reg_2169 <= add_ln199_fu_1079_p2;
        offset_reg_2125 <= offset_fu_1005_p2;
        offset_reg_2125_pp0_iter1_reg <= offset_reg_2125;
        offset_reg_2125_pp0_iter2_reg <= offset_reg_2125_pp0_iter1_reg;
        tid_reg_2108 <= ap_sig_allocacmp_tid;
        tid_reg_2108_pp0_iter1_reg <= tid_reg_2108;
        tid_reg_2108_pp0_iter2_reg <= tid_reg_2108_pp0_iter1_reg;
        tid_reg_2108_pp0_iter3_reg <= tid_reg_2108_pp0_iter2_reg;
        tmp_80_reg_2261 <= {{tmp_80_fu_1289_p1[20:13]}};
        tmp_reg_2116 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_2116_pp0_iter1_reg <= tmp_reg_2116;
        tmp_reg_2116_pp0_iter2_reg <= tmp_reg_2116_pp0_iter1_reg;
        tmp_reg_2116_pp0_iter3_reg <= tmp_reg_2116_pp0_iter2_reg;
        trunc_ln172_reg_2249 <= trunc_ln172_fu_1285_p1;
        zext_ln114_reg_2120[2 : 0] <= zext_ln114_fu_985_p1[2 : 0];
        zext_ln172_15_reg_2174[8 : 0] <= zext_ln172_15_fu_1084_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln196_1_reg_2214 <= add_ln196_1_fu_1204_p2;
        add_ln197_1_reg_2219 <= add_ln197_1_fu_1209_p2;
        add_ln199_1_reg_2224 <= add_ln199_1_fu_1214_p2;
        offset_3_reg_2137 <= offset_3_fu_1038_p2;
        offset_3_reg_2137_pp0_iter1_reg <= offset_3_reg_2137;
        offset_3_reg_2137_pp0_iter2_reg <= offset_3_reg_2137_pp0_iter1_reg;
        tmp_75_reg_2184 <= {{mul_ln172_2_fu_1093_p2[18:12]}};
        tmp_76_reg_2189 <= {{mul_ln194_fu_1112_p2[18:12]}};
        tmp_77_reg_2194 <= {{mul_ln195_fu_1131_p2[18:12]}};
        tmp_78_reg_2199 <= {{mul_ln196_fu_1150_p2[18:12]}};
        tmp_79_reg_2204 <= {{mul_ln197_fu_1169_p2[18:12]}};
        tmp_81_reg_2209 <= {{mul_ln199_fu_1188_p2[18:12]}};
        tmp_83_reg_2476 <= {{mul_ln172_fu_1385_p2[18:12]}};
        tmp_84_reg_2493 <= {{mul_ln194_1_fu_1408_p2[18:12]}};
        tmp_85_reg_2498 <= {{mul_ln195_1_fu_1427_p2[18:12]}};
        trunc_ln172_3_reg_2481 <= trunc_ln172_3_fu_1401_p1;
        zext_ln172_14_reg_2179[8 : 0] <= zext_ln172_14_fu_1087_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_19_reg_2508 <= tmp_19_fu_1470_p13;
        tmp_20_reg_2513 <= tmp_20_fu_1497_p13;
        tmp_21_reg_2518 <= tmp_21_fu_1524_p13;
        tmp_22_reg_2523 <= tmp_22_fu_1551_p13;
        tmp_23_reg_2528 <= tmp_23_fu_1578_p13;
        tmp_24_reg_2533 <= tmp_24_fu_1605_p13;
        tmp_25_reg_2538 <= tmp_25_fu_1632_p13;
        tmp_86_reg_2229 <= {{mul_ln196_1_fu_1222_p2[18:12]}};
        tmp_87_reg_2234 <= {{mul_ln197_1_fu_1241_p2[18:12]}};
        tmp_89_reg_2239 <= {{mul_ln199_1_fu_1260_p2[18:12]}};
        tmp_s_reg_2503 <= tmp_s_fu_1443_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_26_reg_2749 <= tmp_26_fu_1764_p13;
        tmp_27_reg_2762 <= tmp_27_fu_1800_p13;
        tmp_28_reg_2767 <= tmp_28_fu_1827_p13;
        tmp_29_reg_2772 <= tmp_29_fu_1854_p13;
        tmp_30_reg_2777 <= tmp_30_fu_1881_p13;
        tmp_31_reg_2782 <= tmp_31_fu_1908_p13;
        tmp_32_reg_2787 <= tmp_32_fu_1935_p13;
        tmp_33_reg_2792 <= tmp_33_fu_1962_p13;
        tmp_35_reg_2754 <= {{tid_reg_2108_pp0_iter3_reg[5:1]}};
        tmp_90_reg_2244 <= {{tmp_90_fu_1276_p1[20:13]}};
        trunc_ln193_reg_2743 <= trunc_ln193_fu_1733_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln198_3_fu_2061_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln194_3_fu_2035_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln198_2_fu_2009_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln194_2_fu_1758_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln197_3_fu_2048_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln193_1_fu_2022_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln197_2_fu_1996_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln193_fu_1744_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_33_reg_2792;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_29_reg_2772;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_25_reg_2538;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_21_reg_2518;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_32_reg_2787;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_28_reg_2767;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_24_reg_2533;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_20_reg_2513;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln198_3_fu_2061_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln194_3_fu_2035_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln198_2_fu_2009_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln194_2_fu_1758_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln197_3_fu_2048_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln193_1_fu_2022_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln197_2_fu_1996_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln193_fu_1744_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_31_reg_2782;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_27_reg_2762;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_23_reg_2528;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_19_reg_2508;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_30_reg_2777;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_26_reg_2749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_22_reg_2523;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_s_reg_2503;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2116 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_2116_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1381)) begin
            smem_1_address0_local = zext_ln197_1_fu_1691_p1;
        end else if ((1'b1 == ap_condition_1377)) begin
            smem_1_address0_local = zext_ln195_1_fu_1675_p1;
        end else if ((1'b1 == ap_condition_1373)) begin
            smem_1_address0_local = zext_ln172_3_fu_1659_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_1_address0_local = zext_ln200_fu_1373_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_1_address0_local = zext_ln199_fu_1356_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_1_address0_local = zext_ln198_fu_1348_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_1_address0_local = zext_ln196_fu_1332_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_1_address0_local = zext_ln194_fu_1316_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1381)) begin
            smem_1_address1_local = zext_ln200_1_fu_1725_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            smem_1_address1_local = zext_ln199_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1377)) begin
            smem_1_address1_local = zext_ln198_1_fu_1708_p1;
        end else if ((1'b1 == ap_condition_1373)) begin
            smem_1_address1_local = zext_ln196_1_fu_1683_p1;
        end else if ((1'b1 == ap_condition_1385)) begin
            smem_1_address1_local = zext_ln194_1_fu_1667_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_1_address1_local = zext_ln197_fu_1340_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_1_address1_local = zext_ln195_fu_1324_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_1_address1_local = zext_ln172_2_fu_1308_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1373)) begin
            smem_2_address0_local = zext_ln197_1_fu_1691_p1;
        end else if ((1'b1 == ap_condition_1385)) begin
            smem_2_address0_local = zext_ln195_1_fu_1675_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            smem_2_address0_local = zext_ln172_3_fu_1659_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_2_address0_local = zext_ln200_fu_1373_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_2_address0_local = zext_ln199_fu_1356_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_2_address0_local = zext_ln198_fu_1348_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_2_address0_local = zext_ln196_fu_1332_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_2_address0_local = zext_ln194_fu_1316_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1373)) begin
            smem_2_address1_local = zext_ln200_1_fu_1725_p1;
        end else if ((1'b1 == ap_condition_1377)) begin
            smem_2_address1_local = zext_ln199_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1385)) begin
            smem_2_address1_local = zext_ln198_1_fu_1708_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            smem_2_address1_local = zext_ln196_1_fu_1683_p1;
        end else if ((1'b1 == ap_condition_1381)) begin
            smem_2_address1_local = zext_ln194_1_fu_1667_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_2_address1_local = zext_ln197_fu_1340_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_2_address1_local = zext_ln195_fu_1324_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_2_address1_local = zext_ln172_2_fu_1308_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1389)) begin
            smem_3_address0_local = zext_ln197_1_fu_1691_p1;
        end else if ((1'b1 == ap_condition_1381)) begin
            smem_3_address0_local = zext_ln195_1_fu_1675_p1;
        end else if ((1'b1 == ap_condition_1377)) begin
            smem_3_address0_local = zext_ln172_3_fu_1659_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_3_address0_local = zext_ln200_fu_1373_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_3_address0_local = zext_ln199_fu_1356_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_3_address0_local = zext_ln198_fu_1348_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_3_address0_local = zext_ln196_fu_1332_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_3_address0_local = zext_ln194_fu_1316_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1389)) begin
            smem_3_address1_local = zext_ln200_1_fu_1725_p1;
        end else if ((1'b1 == ap_condition_1385)) begin
            smem_3_address1_local = zext_ln199_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1381)) begin
            smem_3_address1_local = zext_ln198_1_fu_1708_p1;
        end else if ((1'b1 == ap_condition_1377)) begin
            smem_3_address1_local = zext_ln196_1_fu_1683_p1;
        end else if ((1'b1 == ap_condition_1373)) begin
            smem_3_address1_local = zext_ln194_1_fu_1667_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_3_address1_local = zext_ln197_fu_1340_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_3_address1_local = zext_ln195_fu_1324_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_3_address1_local = zext_ln172_2_fu_1308_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1377)) begin
            smem_4_address0_local = zext_ln197_1_fu_1691_p1;
        end else if ((1'b1 == ap_condition_1373)) begin
            smem_4_address0_local = zext_ln195_1_fu_1675_p1;
        end else if ((1'b1 == ap_condition_1385)) begin
            smem_4_address0_local = zext_ln172_3_fu_1659_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_4_address0_local = zext_ln200_fu_1373_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_4_address0_local = zext_ln199_fu_1356_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_4_address0_local = zext_ln198_fu_1348_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_4_address0_local = zext_ln196_fu_1332_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_4_address0_local = zext_ln194_fu_1316_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1377)) begin
            smem_4_address1_local = zext_ln200_1_fu_1725_p1;
        end else if ((1'b1 == ap_condition_1381)) begin
            smem_4_address1_local = zext_ln199_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1373)) begin
            smem_4_address1_local = zext_ln198_1_fu_1708_p1;
        end else if ((1'b1 == ap_condition_1385)) begin
            smem_4_address1_local = zext_ln196_1_fu_1683_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            smem_4_address1_local = zext_ln194_1_fu_1667_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_4_address1_local = zext_ln197_fu_1340_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_4_address1_local = zext_ln195_fu_1324_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_4_address1_local = zext_ln172_2_fu_1308_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1385)) begin
            smem_address0_local = zext_ln197_1_fu_1691_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            smem_address0_local = zext_ln195_1_fu_1675_p1;
        end else if ((1'b1 == ap_condition_1381)) begin
            smem_address0_local = zext_ln172_3_fu_1659_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_address0_local = zext_ln200_fu_1373_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            smem_address0_local = zext_ln199_fu_1356_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_address0_local = zext_ln198_fu_1348_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_address0_local = zext_ln196_fu_1332_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            smem_address0_local = zext_ln194_fu_1316_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1385)) begin
            smem_address1_local = zext_ln200_1_fu_1725_p1;
        end else if ((1'b1 == ap_condition_1373)) begin
            smem_address1_local = zext_ln199_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            smem_address1_local = zext_ln198_1_fu_1708_p1;
        end else if ((1'b1 == ap_condition_1381)) begin
            smem_address1_local = zext_ln196_1_fu_1683_p1;
        end else if ((1'b1 == ap_condition_1377)) begin
            smem_address1_local = zext_ln194_1_fu_1667_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            smem_address1_local = zext_ln197_fu_1340_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            smem_address1_local = zext_ln195_fu_1324_p1;
        end else if ((1'b1 == ap_condition_1369)) begin
            smem_address1_local = zext_ln172_2_fu_1308_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
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
assign add_ln188_fu_1049_p2 = (tid_reg_2108 + 7'd2);
assign add_ln194_1_fu_1298_p2 = (offset_3_reg_2137_pp0_iter2_reg + 9'd32);
assign add_ln194_fu_1059_p2 = (offset_reg_2125_pp0_iter1_reg + 9'd32);
assign add_ln195_1_fu_1303_p2 = (offset_3_reg_2137_pp0_iter2_reg + 9'd8);
assign add_ln195_fu_1064_p2 = (offset_reg_2125_pp0_iter1_reg + 9'd8);
assign add_ln196_1_fu_1204_p2 = (offset_3_reg_2137_pp0_iter1_reg + 9'd40);
assign add_ln196_fu_1069_p2 = (offset_reg_2125_pp0_iter1_reg + 9'd40);
assign add_ln197_1_fu_1209_p2 = (offset_3_reg_2137_pp0_iter1_reg + 9'd16);
assign add_ln197_fu_1074_p2 = (offset_reg_2125_pp0_iter1_reg + 9'd16);
assign add_ln199_1_fu_1214_p2 = (offset_3_reg_2137_pp0_iter1_reg + 9'd24);
assign add_ln199_fu_1079_p2 = (offset_reg_2125_pp0_iter1_reg + 9'd24);
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
always @ (*) begin
    ap_condition_1353 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2249 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1357 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2249 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1361 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2249 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1365 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2249 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1369 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2249 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1373 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_2481 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1377 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_2481 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1381 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_2481 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1385 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_2481 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1389 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_3_reg_2481 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_1011_p0 = (mul_ln_fu_993_p5 + zext_ln114_fu_985_p1);
assign grp_fu_1011_p1 = 9'd5;
assign grp_fu_1043_p0 = (mul_ln191_1_fu_1026_p5 + zext_ln114_reg_2120);
assign grp_fu_1043_p1 = 9'd5;
assign grp_fu_2067_p0 = grp_fu_2067_p00;
assign grp_fu_2067_p00 = offset_3_reg_2137_pp0_iter1_reg;
assign grp_fu_2067_p1 = 10'd56;
assign grp_fu_2067_p2 = 21'd1639;
assign grp_fu_2076_p0 = grp_fu_2076_p00;
assign grp_fu_2076_p00 = offset_reg_2125_pp0_iter2_reg;
assign grp_fu_2076_p1 = 10'd48;
assign grp_fu_2076_p2 = 21'd1639;
assign grp_fu_2085_p0 = zext_ln172_14_reg_2179;
assign grp_fu_2085_p1 = 10'd56;
assign grp_fu_2085_p2 = 21'd1639;
assign grp_fu_2093_p0 = zext_ln172_15_reg_2174;
assign grp_fu_2093_p1 = 10'd48;
assign grp_fu_2093_p2 = 21'd1639;
assign hi_fu_975_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln172_2_fu_1093_p0 = mul_ln172_2_fu_1093_p00;
assign mul_ln172_2_fu_1093_p00 = offset_reg_2125_pp0_iter2_reg;
assign mul_ln172_2_fu_1093_p1 = 19'd820;
assign mul_ln172_fu_1385_p0 = mul_ln172_fu_1385_p00;
assign mul_ln172_fu_1385_p00 = offset_3_reg_2137_pp0_iter2_reg;
assign mul_ln172_fu_1385_p1 = 19'd820;
assign mul_ln191_1_fu_1026_p5 = {{{{tmp_34_fu_1017_p4}, {3'd4}}, {tmp_34_fu_1017_p4}}, {2'd2}};
assign mul_ln194_1_fu_1408_p0 = mul_ln194_1_fu_1408_p00;
assign mul_ln194_1_fu_1408_p00 = add_ln194_1_reg_2266;
assign mul_ln194_1_fu_1408_p1 = 19'd820;
assign mul_ln194_fu_1112_p0 = mul_ln194_fu_1112_p00;
assign mul_ln194_fu_1112_p00 = add_ln194_reg_2149;
assign mul_ln194_fu_1112_p1 = 19'd820;
assign mul_ln195_1_fu_1427_p0 = mul_ln195_1_fu_1427_p00;
assign mul_ln195_1_fu_1427_p00 = add_ln195_1_reg_2271;
assign mul_ln195_1_fu_1427_p1 = 19'd820;
assign mul_ln195_fu_1131_p0 = mul_ln195_fu_1131_p00;
assign mul_ln195_fu_1131_p00 = add_ln195_reg_2154;
assign mul_ln195_fu_1131_p1 = 19'd820;
assign mul_ln196_1_fu_1222_p0 = mul_ln196_1_fu_1222_p00;
assign mul_ln196_1_fu_1222_p00 = add_ln196_1_reg_2214;
assign mul_ln196_1_fu_1222_p1 = 19'd820;
assign mul_ln196_fu_1150_p0 = mul_ln196_fu_1150_p00;
assign mul_ln196_fu_1150_p00 = add_ln196_reg_2159;
assign mul_ln196_fu_1150_p1 = 19'd820;
assign mul_ln197_1_fu_1241_p0 = mul_ln197_1_fu_1241_p00;
assign mul_ln197_1_fu_1241_p00 = add_ln197_1_reg_2219;
assign mul_ln197_1_fu_1241_p1 = 19'd820;
assign mul_ln197_fu_1169_p0 = mul_ln197_fu_1169_p00;
assign mul_ln197_fu_1169_p00 = add_ln197_reg_2164;
assign mul_ln197_fu_1169_p1 = 19'd820;
assign mul_ln199_1_fu_1260_p0 = mul_ln199_1_fu_1260_p00;
assign mul_ln199_1_fu_1260_p00 = add_ln199_1_reg_2224;
assign mul_ln199_1_fu_1260_p1 = 19'd820;
assign mul_ln199_fu_1188_p0 = mul_ln199_fu_1188_p00;
assign mul_ln199_fu_1188_p00 = add_ln199_reg_2169;
assign mul_ln199_fu_1188_p1 = 19'd820;
assign mul_ln_fu_993_p5 = {{{{trunc_ln191_fu_989_p1}, {2'd0}}, {trunc_ln191_fu_989_p1}}, {1'd0}};
assign offset_3_fu_1038_p2 = (mul_ln191_1_fu_1026_p5 + zext_ln114_reg_2120);
assign offset_fu_1005_p2 = (mul_ln_fu_993_p5 + zext_ln114_fu_985_p1);
assign or_ln11_fu_1750_p3 = {{trunc_ln193_fu_1733_p1}, {2'd2}};
assign or_ln12_fu_1989_p3 = {{trunc_ln193_reg_2743}, {2'd1}};
assign or_ln13_fu_2002_p3 = {{trunc_ln193_reg_2743}, {2'd3}};
assign or_ln194_1_fu_2028_p3 = {{tmp_35_reg_2754}, {3'd6}};
assign or_ln197_1_fu_2041_p3 = {{tmp_35_reg_2754}, {3'd5}};
assign or_ln198_1_fu_2054_p3 = {{tmp_35_reg_2754}, {3'd7}};
assign shl_ln193_1_fu_2015_p3 = {{tmp_35_reg_2754}, {3'd4}};
assign shl_ln2_fu_1736_p3 = {{trunc_ln193_fu_1733_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_19_fu_1470_p11 = 'bx;
assign tmp_20_fu_1497_p11 = 'bx;
assign tmp_21_fu_1524_p11 = 'bx;
assign tmp_22_fu_1551_p11 = 'bx;
assign tmp_23_fu_1578_p11 = 'bx;
assign tmp_24_fu_1605_p11 = 'bx;
assign tmp_25_fu_1632_p11 = 'bx;
assign tmp_26_fu_1764_p11 = 'bx;
assign tmp_27_fu_1800_p11 = 'bx;
assign tmp_28_fu_1827_p11 = 'bx;
assign tmp_29_fu_1854_p11 = 'bx;
assign tmp_30_fu_1881_p11 = 'bx;
assign tmp_31_fu_1908_p11 = 'bx;
assign tmp_32_fu_1935_p11 = 'bx;
assign tmp_33_fu_1962_p11 = 'bx;
assign tmp_34_fu_1017_p4 = {{tid_reg_2108[2:1]}};
assign tmp_80_fu_1289_p1 = grp_fu_2076_p3;
assign tmp_82_fu_1364_p1 = grp_fu_2085_p3;
assign tmp_82_fu_1364_p4 = {{tmp_82_fu_1364_p1[20:13]}};
assign tmp_88_fu_1699_p1 = grp_fu_2093_p3;
assign tmp_88_fu_1699_p4 = {{tmp_88_fu_1699_p1[20:13]}};
assign tmp_90_fu_1276_p1 = grp_fu_2067_p3;
assign tmp_s_fu_1443_p11 = 'bx;
assign trunc_ln172_3_fu_1401_p1 = grp_fu_1043_p2[2:0];
assign trunc_ln172_fu_1285_p1 = grp_fu_1011_p2[2:0];
assign trunc_ln191_fu_989_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_1733_p1 = tid_reg_2108_pp0_iter3_reg[5:0];
assign zext_ln114_fu_985_p1 = hi_fu_975_p4;
assign zext_ln172_14_fu_1087_p1 = offset_reg_2125_pp0_iter2_reg;
assign zext_ln172_15_fu_1084_p1 = offset_3_reg_2137_pp0_iter1_reg;
assign zext_ln172_2_fu_1308_p1 = tmp_75_reg_2184;
assign zext_ln172_3_fu_1659_p1 = tmp_83_reg_2476;
assign zext_ln193_1_fu_2022_p1 = shl_ln193_1_fu_2015_p3;
assign zext_ln193_fu_1744_p1 = shl_ln2_fu_1736_p3;
assign zext_ln194_1_fu_1667_p1 = tmp_84_reg_2493;
assign zext_ln194_2_fu_1758_p1 = or_ln11_fu_1750_p3;
assign zext_ln194_3_fu_2035_p1 = or_ln194_1_fu_2028_p3;
assign zext_ln194_fu_1316_p1 = tmp_76_reg_2189;
assign zext_ln195_1_fu_1675_p1 = tmp_85_reg_2498;
assign zext_ln195_fu_1324_p1 = tmp_77_reg_2194;
assign zext_ln196_1_fu_1683_p1 = tmp_86_reg_2229;
assign zext_ln196_fu_1332_p1 = tmp_78_reg_2199;
assign zext_ln197_1_fu_1691_p1 = tmp_87_reg_2234;
assign zext_ln197_2_fu_1996_p1 = or_ln12_fu_1989_p3;
assign zext_ln197_3_fu_2048_p1 = or_ln197_1_fu_2041_p3;
assign zext_ln197_fu_1340_p1 = tmp_79_reg_2204;
assign zext_ln198_1_fu_1708_p1 = tmp_88_fu_1699_p4;
assign zext_ln198_2_fu_2009_p1 = or_ln13_fu_2002_p3;
assign zext_ln198_3_fu_2061_p1 = or_ln198_1_fu_2054_p3;
assign zext_ln198_fu_1348_p1 = tmp_80_reg_2261;
assign zext_ln199_1_fu_1717_p1 = tmp_89_reg_2239;
assign zext_ln199_fu_1356_p1 = tmp_81_reg_2209;
assign zext_ln200_1_fu_1725_p1 = tmp_90_reg_2244;
assign zext_ln200_fu_1373_p1 = tmp_82_fu_1364_p4;
always @ (posedge ap_clk) begin
    zext_ln114_reg_2120[8:3] <= 6'b000000;
    zext_ln172_15_reg_2174[9] <= 1'b0;
    zext_ln172_14_reg_2179[9] <= 1'b0;
end
endmodule 
