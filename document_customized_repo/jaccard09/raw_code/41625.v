module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1); 
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
reg   [0:0] tmp_reg_2779;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_1221_p9;
reg   [63:0] reg_1335;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_1240_p9;
reg   [63:0] reg_1342;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_1259_p9;
reg   [63:0] reg_1349;
wire   [63:0] grp_fu_1278_p9;
reg   [63:0] reg_1356;
wire   [63:0] grp_fu_1297_p9;
reg   [63:0] reg_1361;
wire   [63:0] grp_fu_1316_p9;
reg   [63:0] reg_1366;
reg   [63:0] reg_1373;
reg   [63:0] reg_1379;
reg   [63:0] reg_1385;
reg   [6:0] tid_reg_2771;
reg   [6:0] tid_reg_2771_pp0_iter1_reg;
wire   [0:0] tmp_fu_1399_p3;
wire   [2:0] hi_fu_1411_p4;
wire   [8:0] zext_ln114_fu_1421_p1;
reg   [8:0] zext_ln114_reg_2788;
reg   [1:0] tmp_158_reg_2793;
reg   [1:0] tmp_158_reg_2793_pp0_iter1_reg;
reg   [4:0] tmp_82_reg_2800;
reg   [7:0] tmp_159_reg_2805;
wire   [8:0] add_ln195_fu_1527_p2;
reg   [8:0] add_ln195_reg_2810;
wire   [8:0] add_ln196_fu_1533_p2;
reg   [8:0] add_ln196_reg_2815;
reg   [7:0] tmp_162_reg_2820;
reg   [8:0] tmp_164_reg_2825;
wire   [8:0] add_ln199_fu_1603_p2;
reg   [8:0] add_ln199_reg_2830;
wire   [1:0] tmp_87_fu_1609_p4;
reg   [1:0] tmp_87_reg_2835;
wire   [8:0] offset_fu_1631_p2;
reg   [8:0] offset_reg_2840;
wire   [8:0] add_ln194_fu_1637_p2;
reg   [8:0] add_ln194_reg_2845;
wire   [8:0] add_ln195_1_fu_1643_p2;
reg   [8:0] add_ln195_1_reg_2850;
wire   [8:0] add_ln196_1_fu_1649_p2;
reg   [8:0] add_ln196_1_reg_2855;
wire   [8:0] add_ln197_fu_1655_p2;
reg   [8:0] add_ln197_reg_2860;
wire   [8:0] add_ln199_1_fu_1661_p2;
reg   [8:0] add_ln199_1_reg_2865;
wire   [0:0] tmp_174_fu_1667_p3;
reg   [0:0] tmp_174_reg_2870;
wire   [8:0] offset_10_fu_1687_p2;
reg   [8:0] offset_10_reg_2878;
reg   [8:0] offset_10_reg_2878_pp0_iter1_reg;
wire   [8:0] add_ln196_2_fu_1693_p2;
reg   [8:0] add_ln196_2_reg_2886;
wire   [8:0] add_ln197_1_fu_1699_p2;
reg   [8:0] add_ln197_1_reg_2891;
reg   [7:0] tmp_160_reg_2896;
reg   [7:0] tmp_161_reg_2901;
reg   [7:0] tmp_165_reg_2906;
reg   [7:0] tmp_167_reg_2911;
reg   [7:0] tmp_168_reg_2916;
reg   [7:0] tmp_169_reg_2921;
reg   [7:0] tmp_170_reg_2926;
reg   [7:0] tmp_172_reg_2931;
reg   [7:0] tmp_178_reg_2936;
reg   [7:0] tmp_179_reg_2941;
wire   [8:0] offset_11_fu_1908_p2;
reg   [8:0] offset_11_reg_2946;
wire   [8:0] add_ln196_3_fu_1913_p2;
reg   [8:0] add_ln196_3_reg_2954;
wire   [8:0] add_ln197_2_fu_1919_p2;
reg   [8:0] add_ln197_2_reg_2959;
reg   [7:0] tmp_185_reg_2974;
reg   [7:0] tmp_186_reg_2979;
reg   [8:0] tmp_166_reg_2984;
wire   [7:0] zext_ln172_35_fu_2000_p1;
reg   [8:0] tmp_171_reg_2995;
reg   [8:0] tmp_173_reg_3000;
wire   [7:0] grp_fu_2712_p3;
reg   [7:0] add_ln172_reg_3005;
reg   [8:0] tmp_180_reg_3010;
reg   [8:0] tmp_182_reg_3015;
wire   [7:0] grp_fu_2738_p3;
reg   [7:0] add_ln172_1_reg_3020;
wire   [1:0] trunc_ln172_fu_2039_p1;
reg   [1:0] trunc_ln172_reg_3025;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [8:0] tmp_187_reg_3035;
reg   [8:0] tmp_189_reg_3040;
wire    ap_block_pp0_stage7_11001;
reg   [5:0] tmp_175_reg_3225;
wire   [8:0] add_ln194_1_fu_2181_p2;
reg   [8:0] add_ln194_1_reg_3230;
wire   [8:0] add_ln195_2_fu_2186_p2;
reg   [8:0] add_ln195_2_reg_3235;
wire   [5:0] trunc_ln193_fu_2191_p1;
reg   [5:0] trunc_ln193_reg_3240;
reg   [63:0] tmp_30_reg_3261;
reg   [7:0] tmp_176_reg_3311;
reg   [7:0] tmp_177_reg_3316;
wire   [8:0] add_ln199_2_fu_2296_p2;
reg   [8:0] add_ln199_2_reg_3351;
wire   [8:0] add_ln194_2_fu_2301_p2;
reg   [8:0] add_ln194_2_reg_3356;
wire   [8:0] add_ln195_3_fu_2306_p2;
reg   [8:0] add_ln195_3_reg_3361;
wire   [8:0] add_ln199_3_fu_2311_p2;
reg   [8:0] add_ln199_3_reg_3366;
reg   [63:0] tmp_37_reg_3416;
reg   [7:0] tmp_181_reg_3436;
reg   [7:0] tmp_183_reg_3441;
reg   [7:0] tmp_184_reg_3446;
reg   [7:0] tmp_188_reg_3481;
wire   [4:0] tmp_88_fu_2461_p4;
reg   [4:0] tmp_88_reg_3486;
reg   [3:0] tmp_89_reg_3492;
reg   [63:0] tmp_46_reg_3564;
reg   [63:0] tmp_41_reg_3569;
reg   [63:0] tmp_48_reg_3634;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_4_fu_2071_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln194_fu_2078_p1;
wire   [63:0] zext_ln195_fu_2084_p1;
wire   [63:0] zext_ln196_fu_2090_p1;
wire   [63:0] zext_ln197_fu_2096_p1;
wire   [63:0] zext_ln198_fu_2102_p1;
wire   [63:0] zext_ln199_fu_2118_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln200_fu_2124_p1;
wire   [63:0] zext_ln172_5_fu_2130_p1;
wire   [63:0] zext_ln194_1_fu_2136_p1;
wire   [63:0] zext_ln196_1_fu_2142_p1;
wire   [63:0] zext_ln197_1_fu_2148_p1;
wire   [63:0] zext_ln193_fu_2202_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_4_fu_2216_p1;
wire   [63:0] zext_ln195_1_fu_2222_p1;
wire   [63:0] zext_ln198_1_fu_2228_p1;
wire   [63:0] zext_ln199_1_fu_2234_p1;
wire   [63:0] zext_ln200_1_fu_2240_p1;
wire   [63:0] zext_ln196_2_fu_2284_p1;
wire   [63:0] zext_ln197_2_fu_2290_p1;
wire   [63:0] zext_ln197_4_fu_2323_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln198_4_fu_2336_p1;
wire   [63:0] zext_ln172_6_fu_2348_p1;
wire   [63:0] zext_ln194_2_fu_2355_p1;
wire   [63:0] zext_ln195_2_fu_2361_p1;
wire   [63:0] zext_ln198_2_fu_2367_p1;
wire   [63:0] zext_ln196_3_fu_2430_p1;
wire   [63:0] zext_ln197_3_fu_2436_p1;
wire   [63:0] zext_ln193_1_fu_2478_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_5_fu_2492_p1;
wire   [63:0] zext_ln199_2_fu_2507_p1;
wire   [63:0] zext_ln200_2_fu_2513_p1;
wire   [63:0] zext_ln172_7_fu_2519_p1;
wire   [63:0] zext_ln194_3_fu_2525_p1;
wire   [63:0] zext_ln197_5_fu_2538_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln198_5_fu_2551_p1;
wire   [63:0] zext_ln195_3_fu_2557_p1;
wire   [63:0] zext_ln198_3_fu_2563_p1;
wire   [63:0] zext_ln199_3_fu_2569_p1;
wire   [63:0] zext_ln200_3_fu_2575_p1;
wire   [63:0] zext_ln193_2_fu_2588_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_6_fu_2601_p1;
wire   [63:0] zext_ln197_6_fu_2614_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln198_6_fu_2627_p1;
wire   [63:0] zext_ln193_3_fu_2640_p1;
wire   [63:0] zext_ln194_7_fu_2653_p1;
wire   [63:0] zext_ln197_7_fu_2666_p1;
wire   [63:0] zext_ln198_7_fu_2679_p1;
reg   [6:0] tid_2_fu_148;
wire   [6:0] add_ln188_fu_2108_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
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
wire   [63:0] grp_fu_1221_p7;
wire   [63:0] grp_fu_1240_p7;
wire   [63:0] grp_fu_1259_p7;
wire   [63:0] grp_fu_1278_p7;
wire   [63:0] grp_fu_1297_p7;
wire   [63:0] grp_fu_1316_p7;
wire   [2:0] trunc_ln189_fu_1407_p1;
wire   [0:0] tmp_157_fu_1433_p3;
wire   [8:0] offset_4_fu_1441_p5;
wire   [2:0] mul_ln172_fu_1457_p0;
wire   [5:0] mul_ln172_fu_1457_p1;
wire   [2:0] mul_ln172_8_fu_1463_p0;
wire   [4:0] mul_ln172_8_fu_1463_p1;
wire   [6:0] mul_ln172_8_fu_1463_p2;
wire   [7:0] mul_ln172_fu_1457_p2;
wire   [2:0] grp_fu_1489_p0;
wire   [8:0] add_ln1_fu_1495_p5;
wire   [8:0] mul_ln194_fu_1511_p0;
wire   [10:0] mul_ln194_fu_1511_p1;
wire   [18:0] mul_ln194_fu_1511_p2;
wire   [8:0] add_ln2_fu_1539_p5;
wire   [8:0] mul_ln197_fu_1555_p0;
wire   [10:0] mul_ln197_fu_1555_p1;
wire   [18:0] mul_ln197_fu_1555_p2;
wire   [8:0] tmp_163_fu_1571_p5;
wire   [8:0] mul_ln198_fu_1587_p0;
wire   [11:0] mul_ln198_fu_1587_p1;
wire   [20:0] mul_ln198_fu_1587_p2;
wire   [8:0] mul_ln191_1_fu_1619_p5;
wire   [8:0] mul_ln191_2_fu_1675_p5;
wire   [8:0] mul_ln195_fu_1708_p0;
wire   [10:0] mul_ln195_fu_1708_p1;
wire   [18:0] mul_ln195_fu_1708_p2;
wire   [8:0] mul_ln196_fu_1727_p0;
wire   [10:0] mul_ln196_fu_1727_p1;
wire   [18:0] mul_ln196_fu_1727_p2;
wire   [8:0] mul_ln199_fu_1746_p0;
wire   [10:0] mul_ln199_fu_1746_p1;
wire   [18:0] mul_ln199_fu_1746_p2;
wire   [8:0] mul_ln194_1_fu_1768_p0;
wire   [10:0] mul_ln194_1_fu_1768_p1;
wire   [18:0] mul_ln194_1_fu_1768_p2;
wire   [8:0] mul_ln195_1_fu_1787_p0;
wire   [10:0] mul_ln195_1_fu_1787_p1;
wire   [18:0] mul_ln195_1_fu_1787_p2;
wire   [8:0] mul_ln196_1_fu_1806_p0;
wire   [10:0] mul_ln196_1_fu_1806_p1;
wire   [18:0] mul_ln196_1_fu_1806_p2;
wire   [8:0] mul_ln197_1_fu_1825_p0;
wire   [10:0] mul_ln197_1_fu_1825_p1;
wire   [18:0] mul_ln197_1_fu_1825_p2;
wire   [8:0] mul_ln199_1_fu_1844_p0;
wire   [10:0] mul_ln199_1_fu_1844_p1;
wire   [18:0] mul_ln199_1_fu_1844_p2;
wire   [8:0] mul_ln196_2_fu_1863_p0;
wire   [10:0] mul_ln196_2_fu_1863_p1;
wire   [18:0] mul_ln196_2_fu_1863_p2;
wire   [8:0] mul_ln197_2_fu_1882_p0;
wire   [10:0] mul_ln197_2_fu_1882_p1;
wire   [18:0] mul_ln197_2_fu_1882_p2;
wire   [8:0] mul_ln191_3_fu_1898_p5;
wire   [2:0] or_ln191_1_fu_1925_p3;
wire   [2:0] or_ln191_2_fu_1939_p3;
wire   [8:0] mul_ln196_3_fu_1953_p0;
wire   [10:0] mul_ln196_3_fu_1953_p1;
wire   [18:0] mul_ln196_3_fu_1953_p2;
wire   [8:0] mul_ln197_3_fu_1972_p0;
wire   [10:0] mul_ln197_3_fu_1972_p1;
wire   [18:0] mul_ln197_3_fu_1972_p2;
wire   [20:0] tmp_166_fu_1988_p1;
wire  signed [20:0] grp_fu_2685_p3;
wire   [20:0] tmp_171_fu_2003_p1;
wire  signed [20:0] grp_fu_2694_p3;
wire   [20:0] tmp_173_fu_2012_p1;
wire  signed [20:0] grp_fu_2703_p3;
wire   [20:0] tmp_180_fu_2021_p1;
wire  signed [20:0] grp_fu_2720_p3;
wire   [20:0] tmp_182_fu_2030_p1;
wire  signed [20:0] grp_fu_2729_p3;
wire   [1:0] grp_fu_1489_p2;
wire   [20:0] tmp_187_fu_2043_p1;
wire  signed [20:0] grp_fu_2746_p3;
wire   [20:0] tmp_189_fu_2052_p1;
wire  signed [20:0] grp_fu_2755_p3;
wire   [2:0] zext_ln172_fu_2061_p1;
wire   [7:0] add_ln_fu_2064_p3;
wire   [2:0] or_ln17_fu_2154_p3;
wire   [2:0] mul_ln172_2_fu_2165_p0;
wire   [5:0] mul_ln172_2_fu_2165_p1;
wire   [7:0] mul_ln172_2_fu_2165_p2;
wire   [7:0] shl_ln2_fu_2194_p3;
wire   [7:0] or_ln14_fu_2208_p3;
wire   [8:0] mul_ln194_2_fu_2249_p0;
wire   [10:0] mul_ln194_2_fu_2249_p1;
wire   [18:0] mul_ln194_2_fu_2249_p2;
wire   [8:0] mul_ln195_2_fu_2268_p0;
wire   [10:0] mul_ln195_2_fu_2268_p1;
wire   [18:0] mul_ln195_2_fu_2268_p2;
wire   [7:0] or_ln15_fu_2316_p3;
wire   [7:0] or_ln16_fu_2329_p3;
wire   [7:0] add_ln172_2_fu_2342_p3;
wire   [8:0] mul_ln199_2_fu_2376_p0;
wire   [10:0] mul_ln199_2_fu_2376_p1;
wire   [18:0] mul_ln199_2_fu_2376_p2;
wire   [8:0] mul_ln194_3_fu_2395_p0;
wire   [10:0] mul_ln194_3_fu_2395_p1;
wire   [18:0] mul_ln194_3_fu_2395_p2;
wire   [8:0] mul_ln195_3_fu_2414_p0;
wire   [10:0] mul_ln195_3_fu_2414_p1;
wire   [18:0] mul_ln195_3_fu_2414_p2;
wire   [8:0] mul_ln199_3_fu_2445_p0;
wire   [10:0] mul_ln199_3_fu_2445_p1;
wire   [18:0] mul_ln199_3_fu_2445_p2;
wire   [7:0] shl_ln193_1_fu_2470_p3;
wire   [7:0] or_ln194_1_fu_2484_p3;
wire   [7:0] or_ln197_1_fu_2531_p3;
wire   [7:0] or_ln198_1_fu_2544_p3;
wire   [7:0] or_ln18_fu_2581_p3;
wire   [7:0] or_ln194_2_fu_2594_p3;
wire   [7:0] or_ln197_2_fu_2607_p3;
wire   [7:0] or_ln198_2_fu_2620_p3;
wire   [7:0] shl_ln193_2_fu_2633_p3;
wire   [7:0] or_ln194_3_fu_2646_p3;
wire   [7:0] or_ln197_3_fu_2659_p3;
wire   [7:0] or_ln198_3_fu_2672_p3;
wire   [8:0] grp_fu_2685_p0;
wire   [5:0] grp_fu_2685_p1;
wire   [10:0] grp_fu_2685_p2;
wire   [8:0] grp_fu_2694_p0;
wire   [9:0] zext_ln172_36_fu_1762_p1;
wire   [5:0] grp_fu_2694_p1;
wire   [10:0] grp_fu_2694_p2;
wire   [8:0] grp_fu_2703_p0;
wire   [5:0] grp_fu_2703_p1;
wire   [10:0] grp_fu_2703_p2;
wire   [4:0] grp_fu_2712_p0;
wire   [2:0] grp_fu_2712_p1;
wire   [1:0] grp_fu_2712_p2;
wire   [8:0] grp_fu_2720_p0;
wire   [9:0] zext_ln172_37_fu_1936_p1;
wire   [5:0] grp_fu_2720_p1;
wire   [10:0] grp_fu_2720_p2;
wire   [8:0] grp_fu_2729_p0;
wire   [5:0] grp_fu_2729_p1;
wire   [10:0] grp_fu_2729_p2;
wire   [4:0] grp_fu_2738_p0;
wire   [2:0] grp_fu_2738_p1;
wire   [1:0] grp_fu_2738_p2;
wire   [8:0] grp_fu_2746_p0;
wire   [9:0] zext_ln172_38_fu_1997_p1;
wire   [5:0] grp_fu_2746_p1;
wire   [10:0] grp_fu_2746_p2;
wire   [8:0] grp_fu_2755_p0;
wire   [5:0] grp_fu_2755_p1;
wire   [10:0] grp_fu_2755_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_2685_p00;
wire   [7:0] grp_fu_2712_p10;
wire   [7:0] grp_fu_2738_p10;
wire   [7:0] mul_ln172_2_fu_2165_p00;
wire   [6:0] mul_ln172_8_fu_1463_p00;
wire   [7:0] mul_ln172_fu_1457_p00;
wire   [18:0] mul_ln194_1_fu_1768_p00;
wire   [18:0] mul_ln194_2_fu_2249_p00;
wire   [18:0] mul_ln194_3_fu_2395_p00;
wire   [18:0] mul_ln194_fu_1511_p00;
wire   [18:0] mul_ln195_1_fu_1787_p00;
wire   [18:0] mul_ln195_2_fu_2268_p00;
wire   [18:0] mul_ln195_3_fu_2414_p00;
wire   [18:0] mul_ln195_fu_1708_p00;
wire   [18:0] mul_ln196_1_fu_1806_p00;
wire   [18:0] mul_ln196_2_fu_1863_p00;
wire   [18:0] mul_ln196_3_fu_1953_p00;
wire   [18:0] mul_ln196_fu_1727_p00;
wire   [18:0] mul_ln197_1_fu_1825_p00;
wire   [18:0] mul_ln197_2_fu_1882_p00;
wire   [18:0] mul_ln197_3_fu_1972_p00;
wire   [18:0] mul_ln197_fu_1555_p00;
wire   [20:0] mul_ln198_fu_1587_p00;
wire   [18:0] mul_ln199_1_fu_1844_p00;
wire   [18:0] mul_ln199_2_fu_2376_p00;
wire   [18:0] mul_ln199_3_fu_2445_p00;
wire   [18:0] mul_ln199_fu_1746_p00;
wire   [1:0] grp_fu_1221_p1;
wire   [1:0] grp_fu_1221_p3;
wire  signed [1:0] grp_fu_1221_p5;
wire   [1:0] grp_fu_1240_p1;
wire  signed [1:0] grp_fu_1240_p3;
wire   [1:0] grp_fu_1240_p5;
wire   [1:0] grp_fu_1259_p1;
wire  signed [1:0] grp_fu_1259_p3;
wire   [1:0] grp_fu_1259_p5;
wire  signed [1:0] grp_fu_1278_p1;
wire   [1:0] grp_fu_1278_p3;
wire   [1:0] grp_fu_1278_p5;
wire  signed [1:0] grp_fu_1297_p1;
wire   [1:0] grp_fu_1297_p3;
wire   [1:0] grp_fu_1297_p5;
wire   [1:0] grp_fu_1316_p1;
wire   [1:0] grp_fu_1316_p3;
wire  signed [1:0] grp_fu_1316_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U201(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_1221_p7),.sel(trunc_ln172_reg_3025),.dout(grp_fu_1221_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U202(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_1240_p7),.sel(trunc_ln172_reg_3025),.dout(grp_fu_1240_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U203(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(grp_fu_1259_p7),.sel(trunc_ln172_reg_3025),.dout(grp_fu_1259_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U204(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_1278_p7),.sel(trunc_ln172_reg_3025),.dout(grp_fu_1278_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U205(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(grp_fu_1297_p7),.sel(trunc_ln172_reg_3025),.dout(grp_fu_1297_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U206(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(grp_fu_1316_p7),.sel(trunc_ln172_reg_3025),.dout(grp_fu_1316_p9));
fft1D_512_mul_3ns_6ns_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 3 ),.din1_WIDTH( 6 ),.dout_WIDTH( 8 ))
mul_3ns_6ns_8_1_1_U207(.din0(mul_ln172_fu_1457_p0),.din1(mul_ln172_fu_1457_p1),.dout(mul_ln172_fu_1457_p2));
fft1D_512_mul_3ns_5ns_7_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 3 ),.din1_WIDTH( 5 ),.dout_WIDTH( 7 ))
mul_3ns_5ns_7_1_1_U208(.din0(mul_ln172_8_fu_1463_p0),.din1(mul_ln172_8_fu_1463_p1),.dout(mul_ln172_8_fu_1463_p2));
fft1D_512_urem_3ns_3ns_2_7_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 3 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_3ns_3ns_2_7_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1489_p0),.din1(3'd3),.ce(1'b1),.dout(grp_fu_1489_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U210(.din0(mul_ln194_fu_1511_p0),.din1(mul_ln194_fu_1511_p1),.dout(mul_ln194_fu_1511_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U211(.din0(mul_ln197_fu_1555_p0),.din1(mul_ln197_fu_1555_p1),.dout(mul_ln197_fu_1555_p2));
fft1D_512_mul_9ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_9ns_12ns_21_1_1_U212(.din0(mul_ln198_fu_1587_p0),.din1(mul_ln198_fu_1587_p1),.dout(mul_ln198_fu_1587_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U213(.din0(mul_ln195_fu_1708_p0),.din1(mul_ln195_fu_1708_p1),.dout(mul_ln195_fu_1708_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U214(.din0(mul_ln196_fu_1727_p0),.din1(mul_ln196_fu_1727_p1),.dout(mul_ln196_fu_1727_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U215(.din0(mul_ln199_fu_1746_p0),.din1(mul_ln199_fu_1746_p1),.dout(mul_ln199_fu_1746_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U216(.din0(mul_ln194_1_fu_1768_p0),.din1(mul_ln194_1_fu_1768_p1),.dout(mul_ln194_1_fu_1768_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U217(.din0(mul_ln195_1_fu_1787_p0),.din1(mul_ln195_1_fu_1787_p1),.dout(mul_ln195_1_fu_1787_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U218(.din0(mul_ln196_1_fu_1806_p0),.din1(mul_ln196_1_fu_1806_p1),.dout(mul_ln196_1_fu_1806_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U219(.din0(mul_ln197_1_fu_1825_p0),.din1(mul_ln197_1_fu_1825_p1),.dout(mul_ln197_1_fu_1825_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U220(.din0(mul_ln199_1_fu_1844_p0),.din1(mul_ln199_1_fu_1844_p1),.dout(mul_ln199_1_fu_1844_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U221(.din0(mul_ln196_2_fu_1863_p0),.din1(mul_ln196_2_fu_1863_p1),.dout(mul_ln196_2_fu_1863_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U222(.din0(mul_ln197_2_fu_1882_p0),.din1(mul_ln197_2_fu_1882_p1),.dout(mul_ln197_2_fu_1882_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U223(.din0(mul_ln196_3_fu_1953_p0),.din1(mul_ln196_3_fu_1953_p1),.dout(mul_ln196_3_fu_1953_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U224(.din0(mul_ln197_3_fu_1972_p0),.din1(mul_ln197_3_fu_1972_p1),.dout(mul_ln197_3_fu_1972_p2));
fft1D_512_mul_3ns_6ns_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 3 ),.din1_WIDTH( 6 ),.dout_WIDTH( 8 ))
mul_3ns_6ns_8_1_1_U225(.din0(mul_ln172_2_fu_2165_p0),.din1(mul_ln172_2_fu_2165_p1),.dout(mul_ln172_2_fu_2165_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U226(.din0(mul_ln194_2_fu_2249_p0),.din1(mul_ln194_2_fu_2249_p1),.dout(mul_ln194_2_fu_2249_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U227(.din0(mul_ln195_2_fu_2268_p0),.din1(mul_ln195_2_fu_2268_p1),.dout(mul_ln195_2_fu_2268_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U228(.din0(mul_ln199_2_fu_2376_p0),.din1(mul_ln199_2_fu_2376_p1),.dout(mul_ln199_2_fu_2376_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U229(.din0(mul_ln194_3_fu_2395_p0),.din1(mul_ln194_3_fu_2395_p1),.dout(mul_ln194_3_fu_2395_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U230(.din0(mul_ln195_3_fu_2414_p0),.din1(mul_ln195_3_fu_2414_p1),.dout(mul_ln195_3_fu_2414_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U231(.din0(mul_ln199_3_fu_2445_p0),.din1(mul_ln199_3_fu_2445_p1),.dout(mul_ln199_3_fu_2445_p2));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U232(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2685_p0),.din1(grp_fu_2685_p1),.din2(grp_fu_2685_p2),.ce(1'b1),.dout(grp_fu_2685_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U233(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2694_p0),.din1(grp_fu_2694_p1),.din2(grp_fu_2694_p2),.ce(1'b1),.dout(grp_fu_2694_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U234(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2703_p0),.din1(grp_fu_2703_p1),.din2(grp_fu_2703_p2),.ce(1'b1),.dout(grp_fu_2703_p3));
fft1D_512_mac_muladd_5ns_3ns_2ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.din2_WIDTH( 2 ),.dout_WIDTH( 8 ))
mac_muladd_5ns_3ns_2ns_8_4_1_U235(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2712_p0),.din1(grp_fu_2712_p1),.din2(grp_fu_2712_p2),.ce(1'b1),.dout(grp_fu_2712_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U236(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2720_p0),.din1(grp_fu_2720_p1),.din2(grp_fu_2720_p2),.ce(1'b1),.dout(grp_fu_2720_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U237(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2729_p0),.din1(grp_fu_2729_p1),.din2(grp_fu_2729_p2),.ce(1'b1),.dout(grp_fu_2729_p3));
fft1D_512_mac_muladd_5ns_3ns_2ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.din2_WIDTH( 2 ),.dout_WIDTH( 8 ))
mac_muladd_5ns_3ns_2ns_8_4_1_U238(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2738_p0),.din1(grp_fu_2738_p1),.din2(grp_fu_2738_p2),.ce(1'b1),.dout(grp_fu_2738_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U239(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2746_p0),.din1(grp_fu_2746_p1),.din2(grp_fu_2746_p2),.ce(1'b1),.dout(grp_fu_2746_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U240(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2755_p0),.din1(grp_fu_2755_p1),.din2(grp_fu_2755_p2),.ce(1'b1),.dout(grp_fu_2755_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_148 <= 7'd0;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_2_fu_148 <= add_ln188_fu_2108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln172_1_reg_3020 <= grp_fu_2738_p3;
        add_ln172_reg_3005 <= grp_fu_2712_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_1_reg_3230 <= add_ln194_1_fu_2181_p2;
        add_ln194_reg_2845 <= add_ln194_fu_1637_p2;
        add_ln195_1_reg_2850 <= add_ln195_1_fu_1643_p2;
        add_ln195_2_reg_3235 <= add_ln195_2_fu_2186_p2;
        add_ln195_reg_2810 <= add_ln195_fu_1527_p2;
        add_ln196_1_reg_2855 <= add_ln196_1_fu_1649_p2;
        add_ln196_2_reg_2886 <= add_ln196_2_fu_1693_p2;
        add_ln196_reg_2815 <= add_ln196_fu_1533_p2;
        add_ln197_1_reg_2891 <= add_ln197_1_fu_1699_p2;
        add_ln197_reg_2860 <= add_ln197_fu_1655_p2;
        add_ln199_1_reg_2865 <= add_ln199_1_fu_1661_p2;
        add_ln199_reg_2830 <= add_ln199_fu_1603_p2;
        offset_10_reg_2878 <= offset_10_fu_1687_p2;
        offset_10_reg_2878_pp0_iter1_reg <= offset_10_reg_2878;
        offset_reg_2840 <= offset_fu_1631_p2;
        tid_reg_2771 <= ap_sig_allocacmp_tid;
        tid_reg_2771_pp0_iter1_reg <= tid_reg_2771;
        tmp_158_reg_2793 <= {{mul_ln172_8_fu_1463_p2[6:5]}};
        tmp_158_reg_2793_pp0_iter1_reg <= tmp_158_reg_2793;
        tmp_159_reg_2805 <= {{mul_ln194_fu_1511_p2[18:11]}};
        tmp_162_reg_2820 <= {{mul_ln197_fu_1555_p2[18:11]}};
        tmp_164_reg_2825 <= {{mul_ln198_fu_1587_p2[20:12]}};
        tmp_174_reg_2870 <= ap_sig_allocacmp_tid[32'd2];
        tmp_175_reg_3225 <= {{mul_ln172_2_fu_2165_p2[7:2]}};
        tmp_82_reg_2800 <= {{mul_ln172_fu_1457_p2[7:3]}};
        tmp_87_reg_2835 <= {{ap_sig_allocacmp_tid[2:1]}};
        tmp_reg_2779 <= ap_sig_allocacmp_tid[32'd6];
        zext_ln114_reg_2788[2 : 0] <= zext_ln114_fu_1421_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_2_reg_3356 <= add_ln194_2_fu_2301_p2;
        add_ln195_3_reg_3361 <= add_ln195_3_fu_2306_p2;
        add_ln196_3_reg_2954 <= add_ln196_3_fu_1913_p2;
        add_ln197_2_reg_2959 <= add_ln197_2_fu_1919_p2;
        add_ln199_2_reg_3351 <= add_ln199_2_fu_2296_p2;
        add_ln199_3_reg_3366 <= add_ln199_3_fu_2311_p2;
        offset_11_reg_2946 <= offset_11_fu_1908_p2;
        tmp_160_reg_2896 <= {{mul_ln195_fu_1708_p2[18:11]}};
        tmp_161_reg_2901 <= {{mul_ln196_fu_1727_p2[18:11]}};
        tmp_165_reg_2906 <= {{mul_ln199_fu_1746_p2[18:11]}};
        tmp_167_reg_2911 <= {{mul_ln194_1_fu_1768_p2[18:11]}};
        tmp_168_reg_2916 <= {{mul_ln195_1_fu_1787_p2[18:11]}};
        tmp_169_reg_2921 <= {{mul_ln196_1_fu_1806_p2[18:11]}};
        tmp_170_reg_2926 <= {{mul_ln197_1_fu_1825_p2[18:11]}};
        tmp_172_reg_2931 <= {{mul_ln199_1_fu_1844_p2[18:11]}};
        tmp_176_reg_3311 <= {{mul_ln194_2_fu_2249_p2[18:11]}};
        tmp_177_reg_3316 <= {{mul_ln195_2_fu_2268_p2[18:11]}};
        tmp_178_reg_2936 <= {{mul_ln196_2_fu_1863_p2[18:11]}};
        tmp_179_reg_2941 <= {{mul_ln197_2_fu_1882_p2[18:11]}};
        trunc_ln193_reg_3240 <= trunc_ln193_fu_2191_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1335 <= grp_fu_1221_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1342 <= grp_fu_1240_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1349 <= grp_fu_1259_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1356 <= grp_fu_1278_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1361 <= grp_fu_1297_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1366 <= grp_fu_1316_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1373 <= grp_fu_1316_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1379 <= grp_fu_1259_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1385 <= grp_fu_1221_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_166_reg_2984 <= {{tmp_166_fu_1988_p1[20:12]}};
        tmp_88_reg_3486 <= {{tid_reg_2771_pp0_iter1_reg[5:1]}};
        tmp_89_reg_3492 <= {{tid_reg_2771_pp0_iter1_reg[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_171_reg_2995 <= {{tmp_171_fu_2003_p1[20:12]}};
        tmp_173_reg_3000 <= {{tmp_173_fu_2012_p1[20:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_180_reg_3010 <= {{tmp_180_fu_2021_p1[20:12]}};
        tmp_182_reg_3015 <= {{tmp_182_fu_2030_p1[20:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_181_reg_3436 <= {{mul_ln199_2_fu_2376_p2[18:11]}};
        tmp_183_reg_3441 <= {{mul_ln194_3_fu_2395_p2[18:11]}};
        tmp_184_reg_3446 <= {{mul_ln195_3_fu_2414_p2[18:11]}};
        tmp_185_reg_2974 <= {{mul_ln196_3_fu_1953_p2[18:11]}};
        tmp_186_reg_2979 <= {{mul_ln197_3_fu_1972_p2[18:11]}};
        tmp_188_reg_3481 <= {{mul_ln199_3_fu_2445_p2[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_187_reg_3035 <= {{tmp_187_fu_2043_p1[20:12]}};
        tmp_189_reg_3040 <= {{tmp_189_fu_2052_p1[20:12]}};
        trunc_ln172_reg_3025 <= trunc_ln172_fu_2039_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_30_reg_3261 <= grp_fu_1297_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_37_reg_3416 <= grp_fu_1278_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_41_reg_3569 <= grp_fu_1240_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_46_reg_3564 <= grp_fu_1297_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_48_reg_3634 <= grp_fu_1316_p9;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln198_7_fu_2679_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln194_7_fu_2653_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln198_6_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln194_6_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln198_5_fu_2551_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln194_5_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln198_4_fu_2336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln194_4_fu_2216_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln197_7_fu_2666_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln193_3_fu_2640_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln197_6_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln193_2_fu_2588_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln197_5_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln193_1_fu_2478_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln197_4_fu_2323_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln193_fu_2202_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = reg_1349;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d0_local = tmp_41_reg_3569;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d0_local = tmp_37_reg_3416;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d0_local = reg_1379;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = reg_1342;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_x_1_d0_local = reg_1356;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_48_reg_3634;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d1_local = reg_1366;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_x_1_d1_local = reg_1342;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_d1_local = reg_1335;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_d1_local = reg_1349;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln198_7_fu_2679_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln194_7_fu_2653_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln198_6_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln194_6_fu_2601_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln198_5_fu_2551_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln194_5_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln198_4_fu_2336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln194_4_fu_2216_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln197_7_fu_2666_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln193_3_fu_2640_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln197_6_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln193_2_fu_2588_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln197_5_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln193_1_fu_2478_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln197_4_fu_2323_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln193_fu_2202_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = reg_1385;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d0_local = reg_1379;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d0_local = reg_1373;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d0_local = reg_1335;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = reg_1349;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = reg_1366;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_d0_local = reg_1342;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_46_reg_3564;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d1_local = reg_1366;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d1_local = reg_1385;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d1_local = tmp_30_reg_3261;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = reg_1373;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_d1_local = reg_1361;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = reg_1335;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2779 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2779 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln200_3_fu_2575_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln199_3_fu_2569_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln194_3_fu_2525_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_7_fu_2519_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln197_3_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln198_2_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln195_2_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln197_2_fu_2290_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln200_1_fu_2240_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln199_1_fu_2234_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln197_1_fu_2148_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln194_1_fu_2136_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_5_fu_2130_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln198_fu_2102_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln197_fu_2096_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln195_fu_2084_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln198_3_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln195_3_fu_2557_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln200_2_fu_2513_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln199_2_fu_2507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln196_3_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln194_2_fu_2355_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_6_fu_2348_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln196_2_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln198_1_fu_2228_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln195_1_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln196_1_fu_2142_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln200_fu_2124_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln199_fu_2118_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln196_fu_2090_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln194_fu_2078_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln172_4_fu_2071_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln200_3_fu_2575_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln199_3_fu_2569_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln194_3_fu_2525_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_7_fu_2519_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln197_3_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln198_2_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln195_2_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln197_2_fu_2290_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln200_1_fu_2240_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln199_1_fu_2234_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln197_1_fu_2148_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln194_1_fu_2136_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_5_fu_2130_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln198_fu_2102_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln197_fu_2096_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln195_fu_2084_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln198_3_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln195_3_fu_2557_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln200_2_fu_2513_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln199_2_fu_2507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln196_3_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln194_2_fu_2355_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_6_fu_2348_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln196_2_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln198_1_fu_2228_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln195_1_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln196_1_fu_2142_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln200_fu_2124_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln199_fu_2118_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln196_fu_2090_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln194_fu_2078_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln172_4_fu_2071_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln200_3_fu_2575_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln199_3_fu_2569_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln194_3_fu_2525_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_7_fu_2519_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln197_3_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln198_2_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln195_2_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln197_2_fu_2290_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln200_1_fu_2240_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln199_1_fu_2234_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln197_1_fu_2148_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln194_1_fu_2136_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_5_fu_2130_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln198_fu_2102_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln197_fu_2096_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln195_fu_2084_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln198_3_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln195_3_fu_2557_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln200_2_fu_2513_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln199_2_fu_2507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln196_3_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln194_2_fu_2355_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_6_fu_2348_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln196_2_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln198_1_fu_2228_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln195_1_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln196_1_fu_2142_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln200_fu_2124_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln199_fu_2118_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln196_fu_2090_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln194_fu_2078_p1;
    end else if (((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln172_4_fu_2071_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2779 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3025 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln172_2_fu_2342_p3 = {{tmp_175_reg_3225}, {tmp_158_reg_2793_pp0_iter1_reg}};
assign add_ln188_fu_2108_p2 = (tid_reg_2771 + 7'd4);
assign add_ln194_1_fu_2181_p2 = (offset_10_reg_2878 + 9'd32);
assign add_ln194_2_fu_2301_p2 = (offset_11_reg_2946 + 9'd32);
assign add_ln194_fu_1637_p2 = (offset_fu_1631_p2 + 9'd32);
assign add_ln195_1_fu_1643_p2 = (offset_fu_1631_p2 + 9'd8);
assign add_ln195_2_fu_2186_p2 = (offset_10_reg_2878 + 9'd8);
assign add_ln195_3_fu_2306_p2 = (offset_11_reg_2946 + 9'd8);
assign add_ln195_fu_1527_p2 = (offset_4_fu_1441_p5 + 9'd8);
assign add_ln196_1_fu_1649_p2 = (offset_fu_1631_p2 + 9'd40);
assign add_ln196_2_fu_1693_p2 = (offset_10_fu_1687_p2 + 9'd40);
assign add_ln196_3_fu_1913_p2 = (offset_11_fu_1908_p2 + 9'd40);
assign add_ln196_fu_1533_p2 = (offset_4_fu_1441_p5 + 9'd40);
assign add_ln197_1_fu_1699_p2 = (offset_10_fu_1687_p2 + 9'd16);
assign add_ln197_2_fu_1919_p2 = (offset_11_fu_1908_p2 + 9'd16);
assign add_ln197_fu_1655_p2 = (offset_fu_1631_p2 + 9'd16);
assign add_ln199_1_fu_1661_p2 = (offset_fu_1631_p2 + 9'd24);
assign add_ln199_2_fu_2296_p2 = (offset_10_reg_2878_pp0_iter1_reg + 9'd24);
assign add_ln199_3_fu_2311_p2 = (offset_11_reg_2946 + 9'd24);
assign add_ln199_fu_1603_p2 = (offset_4_fu_1441_p5 + 9'd24);
assign add_ln1_fu_1495_p5 = {{{{trunc_ln189_fu_1407_p1}, {2'd2}}, {tmp_157_fu_1433_p3}}, {hi_fu_1411_p4}};
assign add_ln2_fu_1539_p5 = {{{{trunc_ln189_fu_1407_p1}, {2'd1}}, {tmp_157_fu_1433_p3}}, {hi_fu_1411_p4}};
assign add_ln_fu_2064_p3 = {{tmp_82_reg_2800}, {zext_ln172_fu_2061_p1}};
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
assign grp_fu_1221_p7 = 'bx;
assign grp_fu_1240_p7 = 'bx;
assign grp_fu_1259_p7 = 'bx;
assign grp_fu_1278_p7 = 'bx;
assign grp_fu_1297_p7 = 'bx;
assign grp_fu_1316_p7 = 'bx;
assign grp_fu_1489_p0 = {{ap_sig_allocacmp_tid[5:3]}};
assign grp_fu_2685_p0 = grp_fu_2685_p00;
assign grp_fu_2685_p00 = offset_4_fu_1441_p5;
assign grp_fu_2685_p1 = 10'd56;
assign grp_fu_2685_p2 = 21'd1366;
assign grp_fu_2694_p0 = zext_ln172_36_fu_1762_p1;
assign grp_fu_2694_p1 = 10'd48;
assign grp_fu_2694_p2 = 21'd1366;
assign grp_fu_2703_p0 = zext_ln172_36_fu_1762_p1;
assign grp_fu_2703_p1 = 10'd56;
assign grp_fu_2703_p2 = 21'd1366;
assign grp_fu_2712_p0 = 8'd22;
assign grp_fu_2712_p1 = grp_fu_2712_p10;
assign grp_fu_2712_p10 = or_ln191_1_fu_1925_p3;
assign grp_fu_2712_p2 = zext_ln172_35_fu_2000_p1;
assign grp_fu_2720_p0 = zext_ln172_37_fu_1936_p1;
assign grp_fu_2720_p1 = 10'd48;
assign grp_fu_2720_p2 = 21'd1366;
assign grp_fu_2729_p0 = zext_ln172_37_fu_1936_p1;
assign grp_fu_2729_p1 = 10'd56;
assign grp_fu_2729_p2 = 21'd1366;
assign grp_fu_2738_p0 = 8'd22;
assign grp_fu_2738_p1 = grp_fu_2738_p10;
assign grp_fu_2738_p10 = or_ln191_2_fu_1939_p3;
assign grp_fu_2738_p2 = zext_ln172_35_fu_2000_p1;
assign grp_fu_2746_p0 = zext_ln172_38_fu_1997_p1;
assign grp_fu_2746_p1 = 10'd48;
assign grp_fu_2746_p2 = 21'd1366;
assign grp_fu_2755_p0 = zext_ln172_38_fu_1997_p1;
assign grp_fu_2755_p1 = 10'd56;
assign grp_fu_2755_p2 = 21'd1366;
assign hi_fu_1411_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln172_2_fu_2165_p0 = mul_ln172_2_fu_2165_p00;
assign mul_ln172_2_fu_2165_p00 = or_ln17_fu_2154_p3;
assign mul_ln172_2_fu_2165_p1 = 8'd22;
assign mul_ln172_8_fu_1463_p0 = mul_ln172_8_fu_1463_p00;
assign mul_ln172_8_fu_1463_p00 = hi_fu_1411_p4;
assign mul_ln172_8_fu_1463_p1 = 7'd11;
assign mul_ln172_fu_1457_p0 = mul_ln172_fu_1457_p00;
assign mul_ln172_fu_1457_p00 = trunc_ln189_fu_1407_p1;
assign mul_ln172_fu_1457_p1 = 8'd22;
assign mul_ln191_1_fu_1619_p5 = {{{{tmp_87_fu_1609_p4}, {3'd4}}, {tmp_87_fu_1609_p4}}, {2'd2}};
assign mul_ln191_2_fu_1675_p5 = {{{{tmp_174_fu_1667_p3}, {4'd8}}, {tmp_174_fu_1667_p3}}, {3'd4}};
assign mul_ln191_3_fu_1898_p5 = {{{{tmp_174_reg_2870}, {4'd12}}, {tmp_174_reg_2870}}, {3'd6}};
assign mul_ln194_1_fu_1768_p0 = mul_ln194_1_fu_1768_p00;
assign mul_ln194_1_fu_1768_p00 = add_ln194_reg_2845;
assign mul_ln194_1_fu_1768_p1 = 19'd683;
assign mul_ln194_2_fu_2249_p0 = mul_ln194_2_fu_2249_p00;
assign mul_ln194_2_fu_2249_p00 = add_ln194_1_reg_3230;
assign mul_ln194_2_fu_2249_p1 = 19'd683;
assign mul_ln194_3_fu_2395_p0 = mul_ln194_3_fu_2395_p00;
assign mul_ln194_3_fu_2395_p00 = add_ln194_2_reg_3356;
assign mul_ln194_3_fu_2395_p1 = 19'd683;
assign mul_ln194_fu_1511_p0 = mul_ln194_fu_1511_p00;
assign mul_ln194_fu_1511_p00 = add_ln1_fu_1495_p5;
assign mul_ln194_fu_1511_p1 = 19'd683;
assign mul_ln195_1_fu_1787_p0 = mul_ln195_1_fu_1787_p00;
assign mul_ln195_1_fu_1787_p00 = add_ln195_1_reg_2850;
assign mul_ln195_1_fu_1787_p1 = 19'd683;
assign mul_ln195_2_fu_2268_p0 = mul_ln195_2_fu_2268_p00;
assign mul_ln195_2_fu_2268_p00 = add_ln195_2_reg_3235;
assign mul_ln195_2_fu_2268_p1 = 19'd683;
assign mul_ln195_3_fu_2414_p0 = mul_ln195_3_fu_2414_p00;
assign mul_ln195_3_fu_2414_p00 = add_ln195_3_reg_3361;
assign mul_ln195_3_fu_2414_p1 = 19'd683;
assign mul_ln195_fu_1708_p0 = mul_ln195_fu_1708_p00;
assign mul_ln195_fu_1708_p00 = add_ln195_reg_2810;
assign mul_ln195_fu_1708_p1 = 19'd683;
assign mul_ln196_1_fu_1806_p0 = mul_ln196_1_fu_1806_p00;
assign mul_ln196_1_fu_1806_p00 = add_ln196_1_reg_2855;
assign mul_ln196_1_fu_1806_p1 = 19'd683;
assign mul_ln196_2_fu_1863_p0 = mul_ln196_2_fu_1863_p00;
assign mul_ln196_2_fu_1863_p00 = add_ln196_2_reg_2886;
assign mul_ln196_2_fu_1863_p1 = 19'd683;
assign mul_ln196_3_fu_1953_p0 = mul_ln196_3_fu_1953_p00;
assign mul_ln196_3_fu_1953_p00 = add_ln196_3_reg_2954;
assign mul_ln196_3_fu_1953_p1 = 19'd683;
assign mul_ln196_fu_1727_p0 = mul_ln196_fu_1727_p00;
assign mul_ln196_fu_1727_p00 = add_ln196_reg_2815;
assign mul_ln196_fu_1727_p1 = 19'd683;
assign mul_ln197_1_fu_1825_p0 = mul_ln197_1_fu_1825_p00;
assign mul_ln197_1_fu_1825_p00 = add_ln197_reg_2860;
assign mul_ln197_1_fu_1825_p1 = 19'd683;
assign mul_ln197_2_fu_1882_p0 = mul_ln197_2_fu_1882_p00;
assign mul_ln197_2_fu_1882_p00 = add_ln197_1_reg_2891;
assign mul_ln197_2_fu_1882_p1 = 19'd683;
assign mul_ln197_3_fu_1972_p0 = mul_ln197_3_fu_1972_p00;
assign mul_ln197_3_fu_1972_p00 = add_ln197_2_reg_2959;
assign mul_ln197_3_fu_1972_p1 = 19'd683;
assign mul_ln197_fu_1555_p0 = mul_ln197_fu_1555_p00;
assign mul_ln197_fu_1555_p00 = add_ln2_fu_1539_p5;
assign mul_ln197_fu_1555_p1 = 19'd683;
assign mul_ln198_fu_1587_p0 = mul_ln198_fu_1587_p00;
assign mul_ln198_fu_1587_p00 = tmp_163_fu_1571_p5;
assign mul_ln198_fu_1587_p1 = 21'd1366;
assign mul_ln199_1_fu_1844_p0 = mul_ln199_1_fu_1844_p00;
assign mul_ln199_1_fu_1844_p00 = add_ln199_1_reg_2865;
assign mul_ln199_1_fu_1844_p1 = 19'd683;
assign mul_ln199_2_fu_2376_p0 = mul_ln199_2_fu_2376_p00;
assign mul_ln199_2_fu_2376_p00 = add_ln199_2_reg_3351;
assign mul_ln199_2_fu_2376_p1 = 19'd683;
assign mul_ln199_3_fu_2445_p0 = mul_ln199_3_fu_2445_p00;
assign mul_ln199_3_fu_2445_p00 = add_ln199_3_reg_3366;
assign mul_ln199_3_fu_2445_p1 = 19'd683;
assign mul_ln199_fu_1746_p0 = mul_ln199_fu_1746_p00;
assign mul_ln199_fu_1746_p00 = add_ln199_reg_2830;
assign mul_ln199_fu_1746_p1 = 19'd683;
assign offset_10_fu_1687_p2 = (mul_ln191_2_fu_1675_p5 + zext_ln114_fu_1421_p1);
assign offset_11_fu_1908_p2 = (mul_ln191_3_fu_1898_p5 + zext_ln114_reg_2788);
assign offset_4_fu_1441_p5 = {{{{trunc_ln189_fu_1407_p1}, {2'd0}}, {tmp_157_fu_1433_p3}}, {hi_fu_1411_p4}};
assign offset_fu_1631_p2 = (mul_ln191_1_fu_1619_p5 + zext_ln114_fu_1421_p1);
assign or_ln14_fu_2208_p3 = {{trunc_ln193_fu_2191_p1}, {2'd2}};
assign or_ln15_fu_2316_p3 = {{trunc_ln193_reg_3240}, {2'd1}};
assign or_ln16_fu_2329_p3 = {{trunc_ln193_reg_3240}, {2'd3}};
assign or_ln17_fu_2154_p3 = {{tmp_174_reg_2870}, {2'd2}};
assign or_ln18_fu_2581_p3 = {{tmp_89_reg_3492}, {4'd8}};
assign or_ln191_1_fu_1925_p3 = {{tmp_87_reg_2835}, {1'd1}};
assign or_ln191_2_fu_1939_p3 = {{tmp_174_reg_2870}, {2'd3}};
assign or_ln194_1_fu_2484_p3 = {{tmp_88_fu_2461_p4}, {3'd6}};
assign or_ln194_2_fu_2594_p3 = {{tmp_89_reg_3492}, {4'd10}};
assign or_ln194_3_fu_2646_p3 = {{tmp_89_reg_3492}, {4'd14}};
assign or_ln197_1_fu_2531_p3 = {{tmp_88_reg_3486}, {3'd5}};
assign or_ln197_2_fu_2607_p3 = {{tmp_89_reg_3492}, {4'd9}};
assign or_ln197_3_fu_2659_p3 = {{tmp_89_reg_3492}, {4'd13}};
assign or_ln198_1_fu_2544_p3 = {{tmp_88_reg_3486}, {3'd7}};
assign or_ln198_2_fu_2620_p3 = {{tmp_89_reg_3492}, {4'd11}};
assign or_ln198_3_fu_2672_p3 = {{tmp_89_reg_3492}, {4'd15}};
assign shl_ln193_1_fu_2470_p3 = {{tmp_88_fu_2461_p4}, {3'd4}};
assign shl_ln193_2_fu_2633_p3 = {{tmp_89_reg_3492}, {4'd12}};
assign shl_ln2_fu_2194_p3 = {{trunc_ln193_fu_2191_p1}, {2'd0}};
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
assign tmp_157_fu_1433_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_163_fu_1571_p5 = {{{{trunc_ln189_fu_1407_p1}, {2'd3}}, {tmp_157_fu_1433_p3}}, {hi_fu_1411_p4}};
assign tmp_166_fu_1988_p1 = grp_fu_2685_p3;
assign tmp_171_fu_2003_p1 = grp_fu_2694_p3;
assign tmp_173_fu_2012_p1 = grp_fu_2703_p3;
assign tmp_174_fu_1667_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_180_fu_2021_p1 = grp_fu_2720_p3;
assign tmp_182_fu_2030_p1 = grp_fu_2729_p3;
assign tmp_187_fu_2043_p1 = grp_fu_2746_p3;
assign tmp_189_fu_2052_p1 = grp_fu_2755_p3;
assign tmp_87_fu_1609_p4 = {{ap_sig_allocacmp_tid[2:1]}};
assign tmp_88_fu_2461_p4 = {{tid_reg_2771_pp0_iter1_reg[5:1]}};
assign tmp_fu_1399_p3 = ap_sig_allocacmp_tid[32'd6];
assign trunc_ln172_fu_2039_p1 = grp_fu_1489_p2[1:0];
assign trunc_ln189_fu_1407_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_2191_p1 = tid_reg_2771_pp0_iter1_reg[5:0];
assign zext_ln114_fu_1421_p1 = hi_fu_1411_p4;
assign zext_ln172_35_fu_2000_p1 = tmp_158_reg_2793;
assign zext_ln172_36_fu_1762_p1 = offset_reg_2840;
assign zext_ln172_37_fu_1936_p1 = offset_10_reg_2878;
assign zext_ln172_38_fu_1997_p1 = offset_11_reg_2946;
assign zext_ln172_4_fu_2071_p1 = add_ln_fu_2064_p3;
assign zext_ln172_5_fu_2130_p1 = add_ln172_reg_3005;
assign zext_ln172_6_fu_2348_p1 = add_ln172_2_fu_2342_p3;
assign zext_ln172_7_fu_2519_p1 = add_ln172_1_reg_3020;
assign zext_ln172_fu_2061_p1 = tmp_158_reg_2793;
assign zext_ln193_1_fu_2478_p1 = shl_ln193_1_fu_2470_p3;
assign zext_ln193_2_fu_2588_p1 = or_ln18_fu_2581_p3;
assign zext_ln193_3_fu_2640_p1 = shl_ln193_2_fu_2633_p3;
assign zext_ln193_fu_2202_p1 = shl_ln2_fu_2194_p3;
assign zext_ln194_1_fu_2136_p1 = tmp_167_reg_2911;
assign zext_ln194_2_fu_2355_p1 = tmp_176_reg_3311;
assign zext_ln194_3_fu_2525_p1 = tmp_183_reg_3441;
assign zext_ln194_4_fu_2216_p1 = or_ln14_fu_2208_p3;
assign zext_ln194_5_fu_2492_p1 = or_ln194_1_fu_2484_p3;
assign zext_ln194_6_fu_2601_p1 = or_ln194_2_fu_2594_p3;
assign zext_ln194_7_fu_2653_p1 = or_ln194_3_fu_2646_p3;
assign zext_ln194_fu_2078_p1 = tmp_159_reg_2805;
assign zext_ln195_1_fu_2222_p1 = tmp_168_reg_2916;
assign zext_ln195_2_fu_2361_p1 = tmp_177_reg_3316;
assign zext_ln195_3_fu_2557_p1 = tmp_184_reg_3446;
assign zext_ln195_fu_2084_p1 = tmp_160_reg_2896;
assign zext_ln196_1_fu_2142_p1 = tmp_169_reg_2921;
assign zext_ln196_2_fu_2284_p1 = tmp_178_reg_2936;
assign zext_ln196_3_fu_2430_p1 = tmp_185_reg_2974;
assign zext_ln196_fu_2090_p1 = tmp_161_reg_2901;
assign zext_ln197_1_fu_2148_p1 = tmp_170_reg_2926;
assign zext_ln197_2_fu_2290_p1 = tmp_179_reg_2941;
assign zext_ln197_3_fu_2436_p1 = tmp_186_reg_2979;
assign zext_ln197_4_fu_2323_p1 = or_ln15_fu_2316_p3;
assign zext_ln197_5_fu_2538_p1 = or_ln197_1_fu_2531_p3;
assign zext_ln197_6_fu_2614_p1 = or_ln197_2_fu_2607_p3;
assign zext_ln197_7_fu_2666_p1 = or_ln197_3_fu_2659_p3;
assign zext_ln197_fu_2096_p1 = tmp_162_reg_2820;
assign zext_ln198_1_fu_2228_p1 = tmp_171_reg_2995;
assign zext_ln198_2_fu_2367_p1 = tmp_180_reg_3010;
assign zext_ln198_3_fu_2563_p1 = tmp_187_reg_3035;
assign zext_ln198_4_fu_2336_p1 = or_ln16_fu_2329_p3;
assign zext_ln198_5_fu_2551_p1 = or_ln198_1_fu_2544_p3;
assign zext_ln198_6_fu_2627_p1 = or_ln198_2_fu_2620_p3;
assign zext_ln198_7_fu_2679_p1 = or_ln198_3_fu_2672_p3;
assign zext_ln198_fu_2102_p1 = tmp_164_reg_2825;
assign zext_ln199_1_fu_2234_p1 = tmp_172_reg_2931;
assign zext_ln199_2_fu_2507_p1 = tmp_181_reg_3436;
assign zext_ln199_3_fu_2569_p1 = tmp_188_reg_3481;
assign zext_ln199_fu_2118_p1 = tmp_165_reg_2906;
assign zext_ln200_1_fu_2240_p1 = tmp_173_reg_3000;
assign zext_ln200_2_fu_2513_p1 = tmp_182_reg_3015;
assign zext_ln200_3_fu_2575_p1 = tmp_189_reg_3040;
assign zext_ln200_fu_2124_p1 = tmp_166_reg_2984;
always @ (posedge ap_clk) begin
    zext_ln114_reg_2788[8:3] <= 6'b000000;
end
endmodule 