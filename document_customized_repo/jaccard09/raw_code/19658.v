module stencil3d_stencil3d_Pipeline_loop_height_loop_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1); 
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
output  [9:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [9:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [9:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [9:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [9:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [9:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [9:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [9:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [9:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [9:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [9:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [9:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [9:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [9:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [9:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [9:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [9:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [9:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [9:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [9:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [9:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [9:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [9:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln36_reg_2914;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_1566;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_1571;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_1575;
reg   [31:0] reg_1579;
reg   [31:0] reg_1583;
reg   [31:0] reg_1587;
reg   [31:0] reg_1591;
reg   [31:0] reg_1595;
reg   [31:0] reg_1599;
reg   [31:0] reg_1603;
reg   [31:0] reg_1607;
reg   [31:0] reg_1611;
reg   [31:0] reg_1615;
reg   [31:0] reg_1619;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_1624;
reg   [31:0] reg_1628;
reg   [31:0] reg_1632;
reg   [31:0] reg_1636;
reg   [31:0] reg_1640;
reg   [31:0] reg_1644;
reg   [31:0] reg_1648;
reg   [31:0] reg_1652;
reg   [31:0] reg_1656;
reg   [31:0] reg_1660;
reg   [31:0] reg_1664;
reg   [31:0] reg_1668;
reg   [31:0] reg_1672;
wire   [31:0] grp_fu_1562_p2;
reg   [31:0] reg_1676;
wire   [31:0] grp_fu_1514_p2;
reg   [31:0] reg_1680;
wire   [31:0] grp_fu_1518_p2;
reg   [31:0] reg_1684;
wire   [31:0] grp_fu_1522_p2;
reg   [31:0] reg_1688;
wire   [31:0] grp_fu_1526_p2;
reg   [31:0] reg_1692;
wire   [31:0] grp_fu_1530_p2;
reg   [31:0] reg_1696;
wire   [31:0] grp_fu_1534_p2;
reg   [31:0] reg_1700;
wire   [31:0] grp_fu_1538_p2;
reg   [31:0] reg_1704;
wire   [31:0] grp_fu_1542_p2;
reg   [31:0] reg_1708;
wire   [31:0] grp_fu_1546_p2;
reg   [31:0] reg_1712;
wire   [31:0] grp_fu_1550_p2;
reg   [31:0] reg_1716;
wire   [31:0] grp_fu_1554_p2;
reg   [31:0] reg_1720;
wire   [31:0] grp_fu_1558_p2;
reg   [31:0] reg_1724;
wire   [0:0] icmp_ln36_fu_1746_p2;
reg   [0:0] icmp_ln36_reg_2914_pp0_iter1_reg;
wire   [0:0] icmp_ln37_fu_1761_p2;
reg   [0:0] icmp_ln37_reg_2918;
wire   [4:0] select_ln11_fu_1767_p3;
reg   [4:0] select_ln11_reg_2923;
wire   [4:0] select_ln36_fu_1789_p3;
reg   [4:0] select_ln36_reg_2933;
wire   [63:0] p_cast168_fu_1803_p1;
reg   [63:0] p_cast168_reg_2938;
reg   [63:0] p_cast168_reg_2938_pp0_iter1_reg;
reg   [63:0] p_cast168_reg_2938_pp0_iter2_reg;
wire   [4:0] empty_13_fu_1821_p2;
reg   [4:0] empty_13_reg_2958;
wire   [63:0] p_cast171_fu_1834_p1;
reg   [63:0] p_cast171_reg_2964;
reg   [63:0] p_cast171_reg_2964_pp0_iter1_reg;
reg   [63:0] p_cast171_reg_2964_pp0_iter2_reg;
wire   [63:0] zext_ln39_fu_1864_p1;
reg   [63:0] zext_ln39_reg_2985;
wire   [9:0] tmp_8_fu_1874_p3;
reg   [9:0] tmp_8_reg_3142;
reg  signed [31:0] sum0_1_reg_3153;
reg  signed [31:0] sum0_1_reg_3153_pp0_iter1_reg;
reg   [31:0] orig_0_load_reg_3161;
reg  signed [31:0] sum0_15_reg_3166;
reg  signed [31:0] sum0_15_reg_3166_pp0_iter1_reg;
reg  signed [31:0] sum0_2_reg_3179;
reg  signed [31:0] sum0_2_reg_3179_pp0_iter1_reg;
reg  signed [31:0] sum0_16_reg_3187;
reg  signed [31:0] sum0_3_reg_3200;
reg  signed [31:0] sum0_3_reg_3200_pp0_iter1_reg;
reg  signed [31:0] sum0_17_reg_3208;
reg  signed [31:0] sum0_17_reg_3208_pp0_iter1_reg;
reg  signed [31:0] sum0_4_reg_3221;
reg  signed [31:0] sum0_4_reg_3221_pp0_iter1_reg;
reg  signed [31:0] sum0_18_reg_3229;
reg  signed [31:0] sum0_5_reg_3242;
reg  signed [31:0] sum0_5_reg_3242_pp0_iter1_reg;
reg  signed [31:0] sum0_19_reg_3250;
reg  signed [31:0] sum0_19_reg_3250_pp0_iter1_reg;
reg  signed [31:0] sum0_6_reg_3263;
reg  signed [31:0] sum0_6_reg_3263_pp0_iter1_reg;
reg  signed [31:0] sum0_20_reg_3271;
reg  signed [31:0] sum0_7_reg_3284;
reg  signed [31:0] sum0_7_reg_3284_pp0_iter1_reg;
reg  signed [31:0] sum0_21_reg_3292;
reg  signed [31:0] sum0_21_reg_3292_pp0_iter1_reg;
reg  signed [31:0] sum0_8_reg_3305;
reg  signed [31:0] sum0_8_reg_3305_pp0_iter1_reg;
reg  signed [31:0] sum0_22_reg_3313;
reg  signed [31:0] sum0_9_reg_3326;
reg  signed [31:0] sum0_9_reg_3326_pp0_iter1_reg;
reg  signed [31:0] sum0_23_reg_3334;
reg  signed [31:0] sum0_23_reg_3334_pp0_iter1_reg;
reg  signed [31:0] sum0_10_reg_3347;
reg  signed [31:0] sum0_10_reg_3347_pp0_iter1_reg;
reg  signed [31:0] sum0_24_reg_3355;
reg  signed [31:0] sum0_11_reg_3368;
reg  signed [31:0] sum0_11_reg_3368_pp0_iter1_reg;
reg  signed [31:0] sum0_25_reg_3376;
reg  signed [31:0] sum0_25_reg_3376_pp0_iter1_reg;
reg  signed [31:0] sum0_12_reg_3389;
reg  signed [31:0] sum0_12_reg_3389_pp0_iter1_reg;
reg  signed [31:0] sum0_26_reg_3397;
reg  signed [31:0] sum0_13_reg_3410;
reg  signed [31:0] sum0_13_reg_3410_pp0_iter1_reg;
reg  signed [31:0] sum0_27_reg_3417;
reg  signed [31:0] sum0_27_reg_3417_pp0_iter1_reg;
wire   [63:0] zext_ln12_fu_1904_p1;
reg   [63:0] zext_ln12_reg_3429;
wire   [4:0] tmp_2_fu_1924_p4;
reg   [4:0] tmp_2_reg_3451;
wire   [63:0] p_cast169_fu_1941_p1;
reg   [63:0] p_cast169_reg_3456;
wire   [63:0] p_cast170_fu_1964_p1;
reg   [63:0] p_cast170_reg_3472;
wire   [31:0] add_ln48_3_fu_1973_p2;
reg   [31:0] add_ln48_3_reg_3499;
reg   [31:0] orig_14_load_3_reg_3509;
wire   [63:0] p_cast174_fu_1986_p1;
reg   [63:0] p_cast174_reg_3514;
reg   [31:0] orig_1_load_6_reg_3520;
wire   [31:0] grp_fu_1510_p2;
reg   [31:0] mul_ln48_2_reg_3665;
reg   [31:0] mul_ln48_2_reg_3665_pp0_iter2_reg;
reg   [31:0] mul_ln48_4_reg_3680;
reg   [31:0] mul_ln48_4_reg_3680_pp0_iter2_reg;
reg   [31:0] mul_ln48_6_reg_3695;
reg   [31:0] mul_ln48_6_reg_3695_pp0_iter2_reg;
reg   [31:0] mul_ln48_8_reg_3710;
reg   [31:0] mul_ln48_8_reg_3710_pp0_iter2_reg;
reg   [31:0] mul_ln48_10_reg_3725;
reg   [31:0] mul_ln48_10_reg_3725_pp0_iter2_reg;
reg   [31:0] mul_ln48_12_reg_3740;
reg   [31:0] mul_ln48_12_reg_3740_pp0_iter2_reg;
reg   [31:0] mul_ln48_14_reg_3755;
reg   [31:0] mul_ln48_14_reg_3755_pp0_iter2_reg;
reg   [31:0] mul_ln48_16_reg_3770;
reg   [31:0] mul_ln48_16_reg_3770_pp0_iter2_reg;
reg   [31:0] mul_ln48_18_reg_3785;
reg   [31:0] mul_ln48_18_reg_3785_pp0_iter2_reg;
reg   [31:0] mul_ln48_20_reg_3800;
reg   [31:0] mul_ln48_20_reg_3800_pp0_iter2_reg;
reg   [31:0] mul_ln48_22_reg_3815;
reg   [31:0] mul_ln48_22_reg_3815_pp0_iter2_reg;
reg   [31:0] mul_ln48_24_reg_3830;
reg   [31:0] mul_ln48_24_reg_3830_pp0_iter2_reg;
reg   [31:0] orig_14_load_reg_3835;
reg   [31:0] mul_ln48_26_reg_3845;
reg   [31:0] mul_ln48_26_reg_3845_pp0_iter2_reg;
wire   [63:0] p_cast173_fu_2008_p1;
reg   [63:0] p_cast173_reg_3850;
reg   [31:0] orig_2_load_5_reg_3871;
reg   [31:0] orig_2_load_6_reg_3876;
reg   [31:0] mul_ln48_30_reg_3881;
reg   [31:0] mul_ln48_30_reg_3881_pp0_iter2_reg;
reg   [31:0] orig_3_load_5_reg_3886;
reg   [31:0] orig_3_load_6_reg_3891;
reg   [31:0] orig_4_load_5_reg_3896;
reg   [31:0] orig_4_load_6_reg_3901;
reg   [31:0] orig_5_load_5_reg_3906;
reg   [31:0] orig_5_load_6_reg_3911;
reg   [31:0] orig_6_load_5_reg_3916;
reg   [31:0] orig_6_load_6_reg_3921;
reg   [31:0] orig_7_load_5_reg_3926;
reg   [31:0] orig_7_load_6_reg_3931;
reg   [31:0] orig_8_load_5_reg_3936;
reg   [31:0] orig_8_load_6_reg_3941;
reg   [31:0] orig_9_load_5_reg_3946;
reg   [31:0] orig_9_load_6_reg_3951;
reg   [31:0] orig_10_load_5_reg_3956;
reg   [31:0] orig_10_load_6_reg_3961;
reg   [31:0] orig_11_load_5_reg_3966;
reg   [31:0] orig_11_load_6_reg_3971;
reg   [31:0] orig_12_load_5_reg_3976;
reg   [31:0] orig_12_load_6_reg_3981;
reg   [31:0] orig_13_load_5_reg_3986;
reg   [31:0] orig_13_load_6_reg_3991;
reg   [31:0] orig_14_load_6_reg_4001;
wire   [31:0] add_ln48_fu_2014_p2;
reg   [31:0] add_ln48_reg_4006;
reg   [31:0] mul_ln48_reg_4011;
reg   [31:0] mul_ln48_reg_4011_pp0_iter2_reg;
wire   [31:0] add_ln48_6_fu_2020_p2;
reg   [31:0] add_ln48_6_reg_4016;
wire   [31:0] add_ln48_9_fu_2031_p2;
reg   [31:0] add_ln48_9_reg_4021;
wire   [31:0] add_ln48_15_fu_2041_p2;
reg   [31:0] add_ln48_15_reg_4026;
wire   [31:0] add_ln48_21_fu_2051_p2;
reg   [31:0] add_ln48_21_reg_4031;
wire   [31:0] add_ln48_27_fu_2061_p2;
reg   [31:0] add_ln48_27_reg_4036;
wire   [31:0] add_ln48_33_fu_2071_p2;
reg   [31:0] add_ln48_33_reg_4041;
wire   [31:0] add_ln48_39_fu_2081_p2;
reg   [31:0] add_ln48_39_reg_4046;
wire   [31:0] add_ln48_45_fu_2091_p2;
reg   [31:0] add_ln48_45_reg_4051;
wire   [31:0] add_ln48_51_fu_2101_p2;
reg   [31:0] add_ln48_51_reg_4056;
wire   [31:0] add_ln48_57_fu_2111_p2;
reg   [31:0] add_ln48_57_reg_4061;
wire   [31:0] add_ln48_63_fu_2121_p2;
reg   [31:0] add_ln48_63_reg_4066;
wire   [31:0] add_ln48_69_fu_2131_p2;
reg   [31:0] add_ln48_69_reg_4071;
wire   [31:0] add_ln48_75_fu_2141_p2;
reg   [31:0] add_ln48_75_reg_4076;
reg   [31:0] orig_14_load_1_reg_4081;
wire   [31:0] add_ln48_84_fu_2146_p2;
reg   [31:0] add_ln48_84_reg_4101;
reg   [31:0] mul_ln48_32_reg_4106;
reg   [31:0] mul_ln48_32_reg_4106_pp0_iter2_reg;
reg   [31:0] mul_ln48_34_reg_4111;
reg   [31:0] mul_ln48_34_reg_4111_pp0_iter2_reg;
reg   [31:0] mul_ln48_36_reg_4116;
reg   [31:0] mul_ln48_36_reg_4116_pp0_iter2_reg;
reg   [31:0] mul_ln48_38_reg_4121;
reg   [31:0] mul_ln48_38_reg_4121_pp0_iter2_reg;
reg   [31:0] mul_ln48_40_reg_4126;
reg   [31:0] mul_ln48_40_reg_4126_pp0_iter2_reg;
reg   [31:0] mul_ln48_42_reg_4131;
reg   [31:0] mul_ln48_42_reg_4131_pp0_iter2_reg;
reg   [31:0] mul_ln48_44_reg_4136;
reg   [31:0] mul_ln48_44_reg_4136_pp0_iter2_reg;
reg   [31:0] mul_ln48_46_reg_4141;
reg   [31:0] mul_ln48_46_reg_4141_pp0_iter2_reg;
reg   [31:0] mul_ln48_48_reg_4146;
reg   [31:0] mul_ln48_48_reg_4146_pp0_iter2_reg;
reg   [31:0] mul_ln48_50_reg_4151;
reg   [31:0] mul_ln48_50_reg_4151_pp0_iter2_reg;
reg   [31:0] mul_ln48_52_reg_4156;
reg   [31:0] mul_ln48_52_reg_4156_pp0_iter2_reg;
reg   [31:0] mul_ln48_54_reg_4166;
reg   [31:0] mul_ln48_54_reg_4166_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_2157_p2;
reg  signed [31:0] add_ln48_4_reg_4171;
wire  signed [31:0] add_ln48_10_fu_2167_p2;
reg  signed [31:0] add_ln48_10_reg_4176;
wire  signed [31:0] add_ln48_16_fu_2183_p2;
reg  signed [31:0] add_ln48_16_reg_4181;
wire  signed [31:0] add_ln48_22_fu_2199_p2;
reg  signed [31:0] add_ln48_22_reg_4186;
wire  signed [31:0] add_ln48_28_fu_2215_p2;
reg  signed [31:0] add_ln48_28_reg_4191;
wire  signed [31:0] add_ln48_34_fu_2231_p2;
reg  signed [31:0] add_ln48_34_reg_4196;
wire  signed [31:0] add_ln48_40_fu_2247_p2;
reg  signed [31:0] add_ln48_40_reg_4201;
wire  signed [31:0] add_ln48_46_fu_2263_p2;
reg  signed [31:0] add_ln48_46_reg_4206;
wire  signed [31:0] add_ln48_52_fu_2279_p2;
reg  signed [31:0] add_ln48_52_reg_4211;
wire  signed [31:0] add_ln48_58_fu_2295_p2;
reg  signed [31:0] add_ln48_58_reg_4216;
wire  signed [31:0] add_ln48_64_fu_2311_p2;
reg  signed [31:0] add_ln48_64_reg_4221;
wire  signed [31:0] add_ln48_70_fu_2327_p2;
reg  signed [31:0] add_ln48_70_reg_4226;
wire  signed [31:0] add_ln48_76_fu_2343_p2;
reg  signed [31:0] add_ln48_76_reg_4231;
reg   [31:0] orig_15_load_reg_4236;
reg   [31:0] orig_0_load_480_reg_4241;
wire   [31:0] add_ln48_90_fu_2348_p2;
reg   [31:0] add_ln48_90_reg_4251;
wire   [31:0] add_ln48_102_fu_2353_p2;
reg   [31:0] add_ln48_102_reg_4266;
wire   [31:0] add_ln48_114_fu_2357_p2;
reg   [31:0] add_ln48_114_reg_4281;
wire   [31:0] add_ln48_126_fu_2361_p2;
reg   [31:0] add_ln48_126_reg_4296;
wire   [31:0] add_ln48_138_fu_2365_p2;
reg   [31:0] add_ln48_138_reg_4311;
wire   [31:0] add_ln48_150_fu_2369_p2;
reg   [31:0] add_ln48_150_reg_4326;
reg   [31:0] orig_15_load_480_reg_4341;
wire   [31:0] add_ln48_162_fu_2373_p2;
reg   [31:0] add_ln48_162_reg_4346;
wire   [31:0] add_ln48_81_fu_2382_p2;
reg   [31:0] add_ln48_81_reg_4351;
wire   [31:0] add_ln48_87_fu_2391_p2;
reg   [31:0] add_ln48_87_reg_4356;
reg   [31:0] mul_ln48_28_reg_4361;
reg   [31:0] orig_2_load_4_reg_4366;
wire  signed [31:0] add_ln48_82_fu_2406_p2;
reg  signed [31:0] add_ln48_82_reg_4371;
wire  signed [31:0] add_ln48_88_fu_2415_p2;
reg  signed [31:0] add_ln48_88_reg_4376;
wire   [31:0] add_ln48_93_fu_2424_p2;
reg   [31:0] add_ln48_93_reg_4381;
wire   [31:0] add_ln48_96_fu_2429_p2;
reg   [31:0] add_ln48_96_reg_4386;
wire   [31:0] add_ln48_99_fu_2437_p2;
reg   [31:0] add_ln48_99_reg_4391;
wire   [31:0] add_ln48_105_fu_2447_p2;
reg   [31:0] add_ln48_105_reg_4396;
wire   [31:0] add_ln48_108_fu_2453_p2;
reg   [31:0] add_ln48_108_reg_4401;
wire   [31:0] add_ln48_111_fu_2461_p2;
reg   [31:0] add_ln48_111_reg_4406;
wire   [31:0] add_ln48_117_fu_2471_p2;
reg   [31:0] add_ln48_117_reg_4411;
wire   [31:0] add_ln48_120_fu_2477_p2;
reg   [31:0] add_ln48_120_reg_4416;
wire   [31:0] add_ln48_123_fu_2485_p2;
reg   [31:0] add_ln48_123_reg_4421;
wire   [31:0] add_ln48_129_fu_2495_p2;
reg   [31:0] add_ln48_129_reg_4426;
wire   [31:0] add_ln48_132_fu_2501_p2;
reg   [31:0] add_ln48_132_reg_4431;
wire   [31:0] add_ln48_135_fu_2509_p2;
reg   [31:0] add_ln48_135_reg_4436;
wire   [31:0] add_ln48_141_fu_2519_p2;
reg   [31:0] add_ln48_141_reg_4441;
wire   [31:0] add_ln48_144_fu_2525_p2;
reg   [31:0] add_ln48_144_reg_4446;
wire   [31:0] add_ln48_147_fu_2533_p2;
reg   [31:0] add_ln48_147_reg_4451;
wire   [31:0] add_ln48_153_fu_2543_p2;
reg   [31:0] add_ln48_153_reg_4456;
wire   [31:0] add_ln48_156_fu_2549_p2;
reg   [31:0] add_ln48_156_reg_4461;
wire   [31:0] add_ln48_159_fu_2557_p2;
reg   [31:0] add_ln48_159_reg_4466;
wire   [31:0] add_ln48_165_fu_2567_p2;
reg   [31:0] add_ln48_165_reg_4471;
wire  signed [31:0] add_ln48_94_fu_2577_p2;
reg  signed [31:0] add_ln48_94_reg_4476;
wire  signed [31:0] add_ln48_100_fu_2586_p2;
reg  signed [31:0] add_ln48_100_reg_4481;
wire  signed [31:0] add_ln48_106_fu_2595_p2;
reg  signed [31:0] add_ln48_106_reg_4486;
wire  signed [31:0] add_ln48_112_fu_2604_p2;
reg  signed [31:0] add_ln48_112_reg_4491;
wire  signed [31:0] add_ln48_118_fu_2613_p2;
reg  signed [31:0] add_ln48_118_reg_4496;
wire  signed [31:0] add_ln48_124_fu_2622_p2;
reg  signed [31:0] add_ln48_124_reg_4501;
wire  signed [31:0] add_ln48_130_fu_2631_p2;
reg  signed [31:0] add_ln48_130_reg_4506;
wire  signed [31:0] add_ln48_136_fu_2640_p2;
reg  signed [31:0] add_ln48_136_reg_4511;
wire  signed [31:0] add_ln48_142_fu_2649_p2;
reg  signed [31:0] add_ln48_142_reg_4516;
wire  signed [31:0] add_ln48_148_fu_2658_p2;
reg  signed [31:0] add_ln48_148_reg_4521;
wire  signed [31:0] add_ln48_154_fu_2667_p2;
reg  signed [31:0] add_ln48_154_reg_4526;
wire  signed [31:0] add_ln48_160_fu_2676_p2;
reg  signed [31:0] add_ln48_160_reg_4531;
wire  signed [31:0] add_ln48_166_fu_2685_p2;
reg  signed [31:0] add_ln48_166_reg_4536;
reg   [31:0] mul_ln48_3_reg_4541;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage0;
reg   [4:0] j_fu_120;
wire   [4:0] empty_14_fu_1890_p1;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [4:0] i_fu_124;
reg   [8:0] indvar_flatten_fu_128;
wire   [8:0] add_ln36_fu_1752_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [9:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg    orig_0_ce0_local;
reg    orig_3_ce1_local;
reg   [9:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    orig_8_ce1_local;
reg   [9:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [9:0] orig_8_address0_local;
reg    orig_9_ce1_local;
reg   [9:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [9:0] orig_9_address0_local;
reg    orig_10_ce1_local;
reg   [9:0] orig_10_address1_local;
reg    orig_10_ce0_local;
reg   [9:0] orig_10_address0_local;
reg    orig_11_ce1_local;
reg   [9:0] orig_11_address1_local;
reg    orig_11_ce0_local;
reg   [9:0] orig_11_address0_local;
reg    orig_12_ce1_local;
reg   [9:0] orig_12_address1_local;
reg    orig_12_ce0_local;
reg   [9:0] orig_12_address0_local;
reg    orig_13_ce1_local;
reg   [9:0] orig_13_address1_local;
reg    orig_13_ce0_local;
reg   [9:0] orig_13_address0_local;
reg    orig_14_ce1_local;
reg   [9:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [9:0] orig_14_address0_local;
reg    orig_15_ce1_local;
reg    orig_15_ce0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_5_fu_2690_p2;
reg    sol_1_ce0_local;
reg   [9:0] sol_1_address0_local;
wire   [31:0] add_ln48_89_fu_2773_p2;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
wire   [31:0] add_ln48_11_fu_2696_p2;
reg    sol_2_ce0_local;
reg   [9:0] sol_2_address0_local;
wire   [31:0] add_ln48_95_fu_2779_p2;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
wire   [31:0] add_ln48_17_fu_2701_p2;
reg    sol_3_ce0_local;
reg   [9:0] sol_3_address0_local;
wire   [31:0] add_ln48_101_fu_2785_p2;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
wire   [31:0] add_ln48_23_fu_2707_p2;
reg    sol_4_ce0_local;
reg   [9:0] sol_4_address0_local;
wire   [31:0] add_ln48_107_fu_2791_p2;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
wire   [31:0] add_ln48_29_fu_2713_p2;
reg    sol_5_ce0_local;
reg   [9:0] sol_5_address0_local;
wire   [31:0] add_ln48_113_fu_2797_p2;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
wire   [31:0] add_ln48_35_fu_2719_p2;
reg    sol_6_ce0_local;
reg   [9:0] sol_6_address0_local;
wire   [31:0] add_ln48_119_fu_2803_p2;
reg    sol_7_we0_local;
reg   [31:0] sol_7_d0_local;
wire   [31:0] add_ln48_41_fu_2725_p2;
reg    sol_7_ce0_local;
reg   [9:0] sol_7_address0_local;
wire   [31:0] add_ln48_125_fu_2809_p2;
reg    sol_8_we0_local;
reg   [31:0] sol_8_d0_local;
wire   [31:0] add_ln48_47_fu_2731_p2;
reg    sol_8_ce0_local;
reg   [9:0] sol_8_address0_local;
wire   [31:0] add_ln48_131_fu_2815_p2;
reg    sol_9_we0_local;
reg   [31:0] sol_9_d0_local;
wire   [31:0] add_ln48_53_fu_2737_p2;
reg    sol_9_ce0_local;
reg   [9:0] sol_9_address0_local;
wire   [31:0] add_ln48_137_fu_2821_p2;
reg    sol_10_we0_local;
reg   [31:0] sol_10_d0_local;
wire   [31:0] add_ln48_59_fu_2743_p2;
reg    sol_10_ce0_local;
reg   [9:0] sol_10_address0_local;
wire   [31:0] add_ln48_143_fu_2827_p2;
reg    sol_11_we0_local;
reg   [31:0] sol_11_d0_local;
wire   [31:0] add_ln48_65_fu_2749_p2;
reg    sol_11_ce0_local;
reg   [9:0] sol_11_address0_local;
wire   [31:0] add_ln48_149_fu_2833_p2;
reg    sol_12_we0_local;
reg   [31:0] sol_12_d0_local;
wire   [31:0] add_ln48_71_fu_2755_p2;
reg    sol_12_ce0_local;
reg   [9:0] sol_12_address0_local;
wire   [31:0] add_ln48_155_fu_2839_p2;
reg    sol_13_we0_local;
reg   [31:0] sol_13_d0_local;
wire   [31:0] add_ln48_77_fu_2761_p2;
reg    sol_13_ce0_local;
reg   [9:0] sol_13_address0_local;
wire   [31:0] add_ln48_161_fu_2845_p2;
reg    sol_14_we0_local;
reg   [31:0] sol_14_d0_local;
wire   [31:0] add_ln48_83_fu_2767_p2;
reg    sol_14_ce0_local;
reg   [9:0] sol_14_address0_local;
wire   [31:0] add_ln48_167_fu_2851_p2;
reg  signed [31:0] grp_fu_1510_p0;
reg  signed [31:0] grp_fu_1510_p1;
reg  signed [31:0] grp_fu_1514_p0;
reg  signed [31:0] grp_fu_1514_p1;
reg  signed [31:0] grp_fu_1518_p0;
reg  signed [31:0] grp_fu_1518_p1;
reg  signed [31:0] grp_fu_1522_p0;
reg  signed [31:0] grp_fu_1522_p1;
reg  signed [31:0] grp_fu_1526_p0;
reg  signed [31:0] grp_fu_1526_p1;
reg  signed [31:0] grp_fu_1530_p0;
reg  signed [31:0] grp_fu_1530_p1;
reg  signed [31:0] grp_fu_1534_p0;
reg  signed [31:0] grp_fu_1534_p1;
reg  signed [31:0] grp_fu_1538_p0;
reg  signed [31:0] grp_fu_1538_p1;
reg  signed [31:0] grp_fu_1542_p0;
reg  signed [31:0] grp_fu_1542_p1;
reg  signed [31:0] grp_fu_1546_p0;
reg  signed [31:0] grp_fu_1546_p1;
reg  signed [31:0] grp_fu_1550_p0;
reg  signed [31:0] grp_fu_1550_p1;
reg  signed [31:0] grp_fu_1554_p0;
reg  signed [31:0] grp_fu_1554_p1;
reg  signed [31:0] grp_fu_1558_p0;
reg  signed [31:0] grp_fu_1558_p1;
reg  signed [31:0] grp_fu_1562_p0;
reg  signed [31:0] grp_fu_1562_p1;
wire   [4:0] indvars_iv_next4216_fu_1783_p2;
wire   [9:0] tmp_1_fu_1796_p3;
wire   [9:0] tmp_6_fu_1826_p3;
wire   [4:0] tmp_fu_1851_p2;
wire   [9:0] tmp_7_fu_1856_p3;
wire   [5:0] zext_ln37_fu_1881_p1;
wire   [5:0] indvars_iv_next_fu_1884_p2;
wire   [9:0] indvars_iv_next_cast_fu_1894_p1;
wire   [9:0] empty_15_fu_1898_p2;
wire   [9:0] empty_fu_1914_p2;
wire   [9:0] tmp_3_fu_1934_p3;
wire   [9:0] empty_12_fu_1919_p2;
wire   [4:0] tmp_4_fu_1947_p4;
wire   [9:0] tmp_5_fu_1957_p3;
wire   [31:0] add_ln48_2_fu_1969_p2;
wire   [9:0] tmp_s_fu_1979_p3;
wire   [9:0] tmp_9_fu_2002_p3;
wire  signed [31:0] add_ln48_fu_2014_p1;
wire  signed [31:0] add_ln48_6_fu_2020_p0;
wire   [31:0] add_ln48_8_fu_2026_p2;
wire   [31:0] add_ln48_14_fu_2036_p2;
wire   [31:0] add_ln48_20_fu_2046_p2;
wire   [31:0] add_ln48_26_fu_2056_p2;
wire   [31:0] add_ln48_32_fu_2066_p2;
wire   [31:0] add_ln48_38_fu_2076_p2;
wire   [31:0] add_ln48_44_fu_2086_p2;
wire   [31:0] add_ln48_50_fu_2096_p2;
wire   [31:0] add_ln48_56_fu_2106_p2;
wire   [31:0] add_ln48_62_fu_2116_p2;
wire   [31:0] add_ln48_68_fu_2126_p2;
wire   [31:0] add_ln48_74_fu_2136_p2;
wire  signed [31:0] add_ln48_84_fu_2146_p0;
wire   [31:0] add_ln48_1_fu_2152_p2;
wire   [31:0] add_ln48_7_fu_2162_p2;
wire   [31:0] add_ln48_12_fu_2172_p2;
wire   [31:0] add_ln48_13_fu_2177_p2;
wire   [31:0] add_ln48_18_fu_2188_p2;
wire   [31:0] add_ln48_19_fu_2193_p2;
wire   [31:0] add_ln48_24_fu_2204_p2;
wire   [31:0] add_ln48_25_fu_2209_p2;
wire   [31:0] add_ln48_30_fu_2220_p2;
wire   [31:0] add_ln48_31_fu_2225_p2;
wire   [31:0] add_ln48_36_fu_2236_p2;
wire   [31:0] add_ln48_37_fu_2241_p2;
wire   [31:0] add_ln48_42_fu_2252_p2;
wire   [31:0] add_ln48_43_fu_2257_p2;
wire   [31:0] add_ln48_48_fu_2268_p2;
wire   [31:0] add_ln48_49_fu_2273_p2;
wire   [31:0] add_ln48_54_fu_2284_p2;
wire   [31:0] add_ln48_55_fu_2289_p2;
wire   [31:0] add_ln48_60_fu_2300_p2;
wire   [31:0] add_ln48_61_fu_2305_p2;
wire   [31:0] add_ln48_66_fu_2316_p2;
wire   [31:0] add_ln48_67_fu_2321_p2;
wire   [31:0] add_ln48_72_fu_2332_p2;
wire   [31:0] add_ln48_73_fu_2337_p2;
wire  signed [31:0] add_ln48_90_fu_2348_p0;
wire   [31:0] add_ln48_80_fu_2378_p2;
wire   [31:0] add_ln48_86_fu_2387_p2;
wire   [31:0] add_ln48_78_fu_2397_p2;
wire   [31:0] add_ln48_79_fu_2401_p2;
wire   [31:0] add_ln48_85_fu_2411_p2;
wire   [31:0] add_ln48_92_fu_2420_p2;
wire   [31:0] add_ln48_98_fu_2433_p2;
wire   [31:0] add_ln48_104_fu_2443_p2;
wire   [31:0] add_ln48_110_fu_2457_p2;
wire   [31:0] add_ln48_116_fu_2467_p2;
wire   [31:0] add_ln48_122_fu_2481_p2;
wire   [31:0] add_ln48_128_fu_2491_p2;
wire   [31:0] add_ln48_134_fu_2505_p2;
wire   [31:0] add_ln48_140_fu_2515_p2;
wire   [31:0] add_ln48_146_fu_2529_p2;
wire   [31:0] add_ln48_152_fu_2539_p2;
wire   [31:0] add_ln48_158_fu_2553_p2;
wire   [31:0] add_ln48_164_fu_2563_p2;
wire   [31:0] add_ln48_91_fu_2573_p2;
wire   [31:0] add_ln48_97_fu_2582_p2;
wire   [31:0] add_ln48_103_fu_2591_p2;
wire   [31:0] add_ln48_109_fu_2600_p2;
wire   [31:0] add_ln48_115_fu_2609_p2;
wire   [31:0] add_ln48_121_fu_2618_p2;
wire   [31:0] add_ln48_127_fu_2627_p2;
wire   [31:0] add_ln48_133_fu_2636_p2;
wire   [31:0] add_ln48_139_fu_2645_p2;
wire   [31:0] add_ln48_145_fu_2654_p2;
wire   [31:0] add_ln48_151_fu_2663_p2;
wire   [31:0] add_ln48_157_fu_2672_p2;
wire   [31:0] add_ln48_163_fu_2681_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_120 = 5'd0;
#0 i_fu_124 = 5'd0;
#0 indvar_flatten_fu_128 = 9'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1510_p0),.din1(grp_fu_1510_p1),.ce(1'b1),.dout(grp_fu_1510_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1514_p0),.din1(grp_fu_1514_p1),.ce(1'b1),.dout(grp_fu_1514_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1518_p0),.din1(grp_fu_1518_p1),.ce(1'b1),.dout(grp_fu_1518_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1522_p0),.din1(grp_fu_1522_p1),.ce(1'b1),.dout(grp_fu_1522_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U73(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1526_p0),.din1(grp_fu_1526_p1),.ce(1'b1),.dout(grp_fu_1526_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1530_p0),.din1(grp_fu_1530_p1),.ce(1'b1),.dout(grp_fu_1530_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1534_p0),.din1(grp_fu_1534_p1),.ce(1'b1),.dout(grp_fu_1534_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1538_p0),.din1(grp_fu_1538_p1),.ce(1'b1),.dout(grp_fu_1538_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1542_p0),.din1(grp_fu_1542_p1),.ce(1'b1),.dout(grp_fu_1542_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1546_p0),.din1(grp_fu_1546_p1),.ce(1'b1),.dout(grp_fu_1546_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1550_p0),.din1(grp_fu_1550_p1),.ce(1'b1),.dout(grp_fu_1550_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1554_p0),.din1(grp_fu_1554_p1),.ce(1'b1),.dout(grp_fu_1554_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1558_p0),.din1(grp_fu_1558_p1),.ce(1'b1),.dout(grp_fu_1558_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1562_p0),.din1(grp_fu_1562_p1),.ce(1'b1),.dout(grp_fu_1562_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_124 <= 5'd1;
    end else if (((icmp_ln36_reg_2914 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_124 <= select_ln36_fu_1789_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln36_fu_1746_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_128 <= add_ln36_fu_1752_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_120 <= 5'd1;
    end else if (((icmp_ln36_reg_2914 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_120 <= empty_14_fu_1890_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_100_reg_4481 <= add_ln48_100_fu_2586_p2;
        add_ln48_106_reg_4486 <= add_ln48_106_fu_2595_p2;
        add_ln48_112_reg_4491 <= add_ln48_112_fu_2604_p2;
        add_ln48_118_reg_4496 <= add_ln48_118_fu_2613_p2;
        add_ln48_124_reg_4501 <= add_ln48_124_fu_2622_p2;
        add_ln48_130_reg_4506 <= add_ln48_130_fu_2631_p2;
        add_ln48_136_reg_4511 <= add_ln48_136_fu_2640_p2;
        add_ln48_142_reg_4516 <= add_ln48_142_fu_2649_p2;
        add_ln48_148_reg_4521 <= add_ln48_148_fu_2658_p2;
        add_ln48_154_reg_4526 <= add_ln48_154_fu_2667_p2;
        add_ln48_15_reg_4026 <= add_ln48_15_fu_2041_p2;
        add_ln48_160_reg_4531 <= add_ln48_160_fu_2676_p2;
        add_ln48_166_reg_4536 <= add_ln48_166_fu_2685_p2;
        add_ln48_21_reg_4031 <= add_ln48_21_fu_2051_p2;
        add_ln48_27_reg_4036 <= add_ln48_27_fu_2061_p2;
        add_ln48_33_reg_4041 <= add_ln48_33_fu_2071_p2;
        add_ln48_39_reg_4046 <= add_ln48_39_fu_2081_p2;
        add_ln48_45_reg_4051 <= add_ln48_45_fu_2091_p2;
        add_ln48_51_reg_4056 <= add_ln48_51_fu_2101_p2;
        add_ln48_57_reg_4061 <= add_ln48_57_fu_2111_p2;
        add_ln48_63_reg_4066 <= add_ln48_63_fu_2121_p2;
        add_ln48_69_reg_4071 <= add_ln48_69_fu_2131_p2;
        add_ln48_6_reg_4016 <= add_ln48_6_fu_2020_p2;
        add_ln48_75_reg_4076 <= add_ln48_75_fu_2141_p2;
        add_ln48_84_reg_4101 <= add_ln48_84_fu_2146_p2;
        add_ln48_94_reg_4476 <= add_ln48_94_fu_2577_p2;
        add_ln48_9_reg_4021 <= add_ln48_9_fu_2031_p2;
        add_ln48_reg_4006 <= add_ln48_fu_2014_p2;
        empty_13_reg_2958 <= empty_13_fu_1821_p2;
        mul_ln48_32_reg_4106_pp0_iter2_reg <= mul_ln48_32_reg_4106;
        mul_ln48_34_reg_4111_pp0_iter2_reg <= mul_ln48_34_reg_4111;
        mul_ln48_36_reg_4116_pp0_iter2_reg <= mul_ln48_36_reg_4116;
        mul_ln48_38_reg_4121_pp0_iter2_reg <= mul_ln48_38_reg_4121;
        mul_ln48_40_reg_4126_pp0_iter2_reg <= mul_ln48_40_reg_4126;
        mul_ln48_42_reg_4131_pp0_iter2_reg <= mul_ln48_42_reg_4131;
        mul_ln48_44_reg_4136_pp0_iter2_reg <= mul_ln48_44_reg_4136;
        mul_ln48_46_reg_4141_pp0_iter2_reg <= mul_ln48_46_reg_4141;
        mul_ln48_48_reg_4146_pp0_iter2_reg <= mul_ln48_48_reg_4146;
        mul_ln48_50_reg_4151_pp0_iter2_reg <= mul_ln48_50_reg_4151;
        mul_ln48_52_reg_4156_pp0_iter2_reg <= mul_ln48_52_reg_4156;
        mul_ln48_54_reg_4166_pp0_iter2_reg <= mul_ln48_54_reg_4166;
        mul_ln48_reg_4011_pp0_iter2_reg <= mul_ln48_reg_4011;
        p_cast168_reg_2938[9 : 0] <= p_cast168_fu_1803_p1[9 : 0];
        p_cast168_reg_2938_pp0_iter1_reg[9 : 0] <= p_cast168_reg_2938[9 : 0];
        p_cast168_reg_2938_pp0_iter2_reg[9 : 0] <= p_cast168_reg_2938_pp0_iter1_reg[9 : 0];
        p_cast171_reg_2964[9 : 0] <= p_cast171_fu_1834_p1[9 : 0];
        p_cast171_reg_2964_pp0_iter1_reg[9 : 0] <= p_cast171_reg_2964[9 : 0];
        p_cast171_reg_2964_pp0_iter2_reg[9 : 0] <= p_cast171_reg_2964_pp0_iter1_reg[9 : 0];
        select_ln36_reg_2933 <= select_ln36_fu_1789_p3;
        zext_ln39_reg_2985[9 : 0] <= zext_ln39_fu_1864_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_102_reg_4266 <= add_ln48_102_fu_2353_p2;
        add_ln48_10_reg_4176 <= add_ln48_10_fu_2167_p2;
        add_ln48_114_reg_4281 <= add_ln48_114_fu_2357_p2;
        add_ln48_126_reg_4296 <= add_ln48_126_fu_2361_p2;
        add_ln48_138_reg_4311 <= add_ln48_138_fu_2365_p2;
        add_ln48_150_reg_4326 <= add_ln48_150_fu_2369_p2;
        add_ln48_162_reg_4346 <= add_ln48_162_fu_2373_p2;
        add_ln48_16_reg_4181 <= add_ln48_16_fu_2183_p2;
        add_ln48_22_reg_4186 <= add_ln48_22_fu_2199_p2;
        add_ln48_28_reg_4191 <= add_ln48_28_fu_2215_p2;
        add_ln48_34_reg_4196 <= add_ln48_34_fu_2231_p2;
        add_ln48_40_reg_4201 <= add_ln48_40_fu_2247_p2;
        add_ln48_46_reg_4206 <= add_ln48_46_fu_2263_p2;
        add_ln48_4_reg_4171 <= add_ln48_4_fu_2157_p2;
        add_ln48_52_reg_4211 <= add_ln48_52_fu_2279_p2;
        add_ln48_58_reg_4216 <= add_ln48_58_fu_2295_p2;
        add_ln48_64_reg_4221 <= add_ln48_64_fu_2311_p2;
        add_ln48_70_reg_4226 <= add_ln48_70_fu_2327_p2;
        add_ln48_76_reg_4231 <= add_ln48_76_fu_2343_p2;
        add_ln48_90_reg_4251 <= add_ln48_90_fu_2348_p2;
        sum0_10_reg_3347_pp0_iter1_reg <= sum0_10_reg_3347;
        sum0_11_reg_3368_pp0_iter1_reg <= sum0_11_reg_3368;
        sum0_12_reg_3389_pp0_iter1_reg <= sum0_12_reg_3389;
        sum0_13_reg_3410_pp0_iter1_reg <= sum0_13_reg_3410;
        sum0_15_reg_3166_pp0_iter1_reg <= sum0_15_reg_3166;
        sum0_17_reg_3208_pp0_iter1_reg <= sum0_17_reg_3208;
        sum0_19_reg_3250_pp0_iter1_reg <= sum0_19_reg_3250;
        sum0_1_reg_3153_pp0_iter1_reg <= sum0_1_reg_3153;
        sum0_21_reg_3292_pp0_iter1_reg <= sum0_21_reg_3292;
        sum0_23_reg_3334_pp0_iter1_reg <= sum0_23_reg_3334;
        sum0_25_reg_3376_pp0_iter1_reg <= sum0_25_reg_3376;
        sum0_27_reg_3417_pp0_iter1_reg <= sum0_27_reg_3417;
        sum0_2_reg_3179_pp0_iter1_reg <= sum0_2_reg_3179;
        sum0_3_reg_3200_pp0_iter1_reg <= sum0_3_reg_3200;
        sum0_4_reg_3221_pp0_iter1_reg <= sum0_4_reg_3221;
        sum0_5_reg_3242_pp0_iter1_reg <= sum0_5_reg_3242;
        sum0_6_reg_3263_pp0_iter1_reg <= sum0_6_reg_3263;
        sum0_7_reg_3284_pp0_iter1_reg <= sum0_7_reg_3284;
        sum0_8_reg_3305_pp0_iter1_reg <= sum0_8_reg_3305;
        sum0_9_reg_3326_pp0_iter1_reg <= sum0_9_reg_3326;
        tmp_8_reg_3142[9 : 5] <= tmp_8_fu_1874_p3[9 : 5];
        zext_ln12_reg_3429[9 : 0] <= zext_ln12_fu_1904_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_105_reg_4396 <= add_ln48_105_fu_2447_p2;
        add_ln48_108_reg_4401 <= add_ln48_108_fu_2453_p2;
        add_ln48_111_reg_4406 <= add_ln48_111_fu_2461_p2;
        add_ln48_117_reg_4411 <= add_ln48_117_fu_2471_p2;
        add_ln48_120_reg_4416 <= add_ln48_120_fu_2477_p2;
        add_ln48_123_reg_4421 <= add_ln48_123_fu_2485_p2;
        add_ln48_129_reg_4426 <= add_ln48_129_fu_2495_p2;
        add_ln48_132_reg_4431 <= add_ln48_132_fu_2501_p2;
        add_ln48_135_reg_4436 <= add_ln48_135_fu_2509_p2;
        add_ln48_141_reg_4441 <= add_ln48_141_fu_2519_p2;
        add_ln48_144_reg_4446 <= add_ln48_144_fu_2525_p2;
        add_ln48_147_reg_4451 <= add_ln48_147_fu_2533_p2;
        add_ln48_153_reg_4456 <= add_ln48_153_fu_2543_p2;
        add_ln48_156_reg_4461 <= add_ln48_156_fu_2549_p2;
        add_ln48_159_reg_4466 <= add_ln48_159_fu_2557_p2;
        add_ln48_165_reg_4471 <= add_ln48_165_fu_2567_p2;
        add_ln48_82_reg_4371 <= add_ln48_82_fu_2406_p2;
        add_ln48_88_reg_4376 <= add_ln48_88_fu_2415_p2;
        add_ln48_93_reg_4381 <= add_ln48_93_fu_2424_p2;
        add_ln48_96_reg_4386 <= add_ln48_96_fu_2429_p2;
        add_ln48_99_reg_4391 <= add_ln48_99_fu_2437_p2;
        icmp_ln36_reg_2914 <= icmp_ln36_fu_1746_p2;
        icmp_ln36_reg_2914_pp0_iter1_reg <= icmp_ln36_reg_2914;
        icmp_ln37_reg_2918 <= icmp_ln37_fu_1761_p2;
        mul_ln48_10_reg_3725_pp0_iter2_reg <= mul_ln48_10_reg_3725;
        mul_ln48_12_reg_3740_pp0_iter2_reg <= mul_ln48_12_reg_3740;
        mul_ln48_14_reg_3755_pp0_iter2_reg <= mul_ln48_14_reg_3755;
        mul_ln48_16_reg_3770_pp0_iter2_reg <= mul_ln48_16_reg_3770;
        mul_ln48_18_reg_3785_pp0_iter2_reg <= mul_ln48_18_reg_3785;
        mul_ln48_20_reg_3800_pp0_iter2_reg <= mul_ln48_20_reg_3800;
        mul_ln48_22_reg_3815_pp0_iter2_reg <= mul_ln48_22_reg_3815;
        mul_ln48_24_reg_3830_pp0_iter2_reg <= mul_ln48_24_reg_3830;
        mul_ln48_26_reg_3845_pp0_iter2_reg <= mul_ln48_26_reg_3845;
        mul_ln48_2_reg_3665_pp0_iter2_reg <= mul_ln48_2_reg_3665;
        mul_ln48_30_reg_3881_pp0_iter2_reg <= mul_ln48_30_reg_3881;
        mul_ln48_4_reg_3680_pp0_iter2_reg <= mul_ln48_4_reg_3680;
        mul_ln48_6_reg_3695_pp0_iter2_reg <= mul_ln48_6_reg_3695;
        mul_ln48_8_reg_3710_pp0_iter2_reg <= mul_ln48_8_reg_3710;
        p_cast173_reg_3850[9 : 0] <= p_cast173_fu_2008_p1[9 : 0];
        select_ln11_reg_2923 <= select_ln11_fu_1767_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_3_reg_3499 <= add_ln48_3_fu_1973_p2;
        add_ln48_81_reg_4351 <= add_ln48_81_fu_2382_p2;
        add_ln48_87_reg_4356 <= add_ln48_87_fu_2391_p2;
        p_cast169_reg_3456[9 : 0] <= p_cast169_fu_1941_p1[9 : 0];
        p_cast170_reg_3472[9 : 0] <= p_cast170_fu_1964_p1[9 : 0];
        p_cast174_reg_3514[9 : 0] <= p_cast174_fu_1986_p1[9 : 0];
        tmp_2_reg_3451 <= {{empty_fu_1914_p2[9:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_10_reg_3725 <= grp_fu_1526_p2;
        mul_ln48_12_reg_3740 <= grp_fu_1530_p2;
        mul_ln48_14_reg_3755 <= grp_fu_1534_p2;
        mul_ln48_16_reg_3770 <= grp_fu_1538_p2;
        mul_ln48_18_reg_3785 <= grp_fu_1542_p2;
        mul_ln48_20_reg_3800 <= grp_fu_1546_p2;
        mul_ln48_22_reg_3815 <= grp_fu_1550_p2;
        mul_ln48_24_reg_3830 <= grp_fu_1554_p2;
        mul_ln48_26_reg_3845 <= grp_fu_1558_p2;
        mul_ln48_2_reg_3665 <= grp_fu_1510_p2;
        mul_ln48_30_reg_3881 <= grp_fu_1562_p2;
        mul_ln48_4_reg_3680 <= grp_fu_1514_p2;
        mul_ln48_6_reg_3695 <= grp_fu_1518_p2;
        mul_ln48_8_reg_3710 <= grp_fu_1522_p2;
        orig_10_load_5_reg_3956 <= orig_10_q1;
        orig_10_load_6_reg_3961 <= orig_10_q0;
        orig_11_load_5_reg_3966 <= orig_11_q1;
        orig_11_load_6_reg_3971 <= orig_11_q0;
        orig_12_load_5_reg_3976 <= orig_12_q1;
        orig_12_load_6_reg_3981 <= orig_12_q0;
        orig_13_load_5_reg_3986 <= orig_13_q1;
        orig_13_load_6_reg_3991 <= orig_13_q0;
        orig_14_load_6_reg_4001 <= orig_14_q0;
        orig_14_load_reg_3835 <= orig_14_q1;
        orig_2_load_5_reg_3871 <= orig_2_q1;
        orig_2_load_6_reg_3876 <= orig_2_q0;
        orig_3_load_5_reg_3886 <= orig_3_q1;
        orig_3_load_6_reg_3891 <= orig_3_q0;
        orig_4_load_5_reg_3896 <= orig_4_q1;
        orig_4_load_6_reg_3901 <= orig_4_q0;
        orig_5_load_5_reg_3906 <= orig_5_q1;
        orig_5_load_6_reg_3911 <= orig_5_q0;
        orig_6_load_5_reg_3916 <= orig_6_q1;
        orig_6_load_6_reg_3921 <= orig_6_q0;
        orig_7_load_5_reg_3926 <= orig_7_q1;
        orig_7_load_6_reg_3931 <= orig_7_q0;
        orig_8_load_5_reg_3936 <= orig_8_q1;
        orig_8_load_6_reg_3941 <= orig_8_q0;
        orig_9_load_5_reg_3946 <= orig_9_q1;
        orig_9_load_6_reg_3951 <= orig_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_28_reg_4361 <= grp_fu_1510_p2;
        orig_2_load_4_reg_4366 <= orig_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_32_reg_4106 <= grp_fu_1514_p2;
        mul_ln48_34_reg_4111 <= grp_fu_1518_p2;
        mul_ln48_36_reg_4116 <= grp_fu_1522_p2;
        mul_ln48_38_reg_4121 <= grp_fu_1526_p2;
        mul_ln48_40_reg_4126 <= grp_fu_1530_p2;
        mul_ln48_42_reg_4131 <= grp_fu_1534_p2;
        mul_ln48_44_reg_4136 <= grp_fu_1538_p2;
        mul_ln48_46_reg_4141 <= grp_fu_1542_p2;
        mul_ln48_48_reg_4146 <= grp_fu_1546_p2;
        mul_ln48_50_reg_4151 <= grp_fu_1550_p2;
        mul_ln48_52_reg_4156 <= grp_fu_1554_p2;
        mul_ln48_54_reg_4166 <= grp_fu_1558_p2;
        mul_ln48_reg_4011 <= grp_fu_1510_p2;
        orig_14_load_1_reg_4081 <= orig_14_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_3_reg_4541 <= grp_fu_1510_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_480_reg_4241 <= orig_0_q0;
        orig_15_load_480_reg_4341 <= orig_15_q0;
        orig_15_load_reg_4236 <= orig_15_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_reg_3161 <= orig_0_q1;
        sum0_10_reg_3347 <= orig_11_q1;
        sum0_11_reg_3368 <= orig_12_q1;
        sum0_12_reg_3389 <= orig_13_q1;
        sum0_13_reg_3410 <= orig_14_q1;
        sum0_15_reg_3166 <= orig_2_q0;
        sum0_16_reg_3187 <= orig_3_q0;
        sum0_17_reg_3208 <= orig_4_q0;
        sum0_18_reg_3229 <= orig_5_q0;
        sum0_19_reg_3250 <= orig_6_q0;
        sum0_1_reg_3153 <= orig_2_q1;
        sum0_20_reg_3271 <= orig_7_q0;
        sum0_21_reg_3292 <= orig_8_q0;
        sum0_22_reg_3313 <= orig_9_q0;
        sum0_23_reg_3334 <= orig_10_q0;
        sum0_24_reg_3355 <= orig_11_q0;
        sum0_25_reg_3376 <= orig_12_q0;
        sum0_26_reg_3397 <= orig_13_q0;
        sum0_27_reg_3417 <= orig_14_q0;
        sum0_2_reg_3179 <= orig_3_q1;
        sum0_3_reg_3200 <= orig_4_q1;
        sum0_4_reg_3221 <= orig_5_q1;
        sum0_5_reg_3242 <= orig_6_q1;
        sum0_6_reg_3263 <= orig_7_q1;
        sum0_7_reg_3284 <= orig_8_q1;
        sum0_8_reg_3305 <= orig_9_q1;
        sum0_9_reg_3326 <= orig_10_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_14_load_3_reg_3509 <= orig_14_q1;
        orig_1_load_6_reg_3520 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1566 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1571 <= orig_2_q1;
        reg_1575 <= orig_3_q1;
        reg_1579 <= orig_4_q1;
        reg_1583 <= orig_5_q1;
        reg_1587 <= orig_6_q1;
        reg_1591 <= orig_7_q1;
        reg_1595 <= orig_8_q1;
        reg_1599 <= orig_9_q1;
        reg_1603 <= orig_10_q1;
        reg_1607 <= orig_11_q1;
        reg_1611 <= orig_12_q1;
        reg_1615 <= orig_13_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1619 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1624 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1628 <= orig_3_q0;
        reg_1632 <= orig_4_q0;
        reg_1636 <= orig_5_q0;
        reg_1640 <= orig_6_q0;
        reg_1644 <= orig_7_q0;
        reg_1648 <= orig_8_q0;
        reg_1652 <= orig_9_q0;
        reg_1656 <= orig_10_q0;
        reg_1660 <= orig_11_q0;
        reg_1664 <= orig_12_q0;
        reg_1668 <= orig_13_q0;
        reg_1672 <= orig_14_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1676 <= grp_fu_1562_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1680 <= grp_fu_1514_p2;
        reg_1684 <= grp_fu_1518_p2;
        reg_1688 <= grp_fu_1522_p2;
        reg_1692 <= grp_fu_1526_p2;
        reg_1696 <= grp_fu_1530_p2;
        reg_1700 <= grp_fu_1534_p2;
        reg_1704 <= grp_fu_1538_p2;
        reg_1708 <= grp_fu_1542_p2;
        reg_1712 <= grp_fu_1546_p2;
        reg_1716 <= grp_fu_1550_p2;
        reg_1720 <= grp_fu_1554_p2;
        reg_1724 <= grp_fu_1558_p2;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_2914 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln36_reg_2914_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1510_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1510_p0 = reg_1619;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1510_p0 = reg_1566;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1510_p0 = sum0_1_reg_3153;
    end else begin
        grp_fu_1510_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1510_p1 = add_ln48_10_reg_4176;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1510_p1 = C_load;
    end else begin
        grp_fu_1510_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1514_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1514_p0 = sum0_16_reg_3187;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1514_p0 = sum0_2_reg_3179;
    end else begin
        grp_fu_1514_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1514_p1 = add_ln48_94_reg_4476;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1514_p1 = add_ln48_16_reg_4181;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1514_p1 = C_load;
    end else begin
        grp_fu_1514_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1518_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1518_p0 = sum0_17_reg_3208;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1518_p0 = sum0_3_reg_3200;
    end else begin
        grp_fu_1518_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1518_p1 = add_ln48_100_reg_4481;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1518_p1 = add_ln48_22_reg_4186;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1518_p1 = C_load;
    end else begin
        grp_fu_1518_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1522_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1522_p0 = sum0_18_reg_3229;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1522_p0 = sum0_4_reg_3221;
    end else begin
        grp_fu_1522_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1522_p1 = add_ln48_106_reg_4486;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1522_p1 = add_ln48_28_reg_4191;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1522_p1 = C_load;
    end else begin
        grp_fu_1522_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1526_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1526_p0 = sum0_19_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1526_p0 = sum0_5_reg_3242;
    end else begin
        grp_fu_1526_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1526_p1 = add_ln48_112_reg_4491;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1526_p1 = add_ln48_34_reg_4196;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1526_p1 = C_load;
    end else begin
        grp_fu_1526_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1530_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1530_p0 = sum0_20_reg_3271;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1530_p0 = sum0_6_reg_3263;
    end else begin
        grp_fu_1530_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1530_p1 = add_ln48_118_reg_4496;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1530_p1 = add_ln48_40_reg_4201;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1530_p1 = C_load;
    end else begin
        grp_fu_1530_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1534_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1534_p0 = sum0_21_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1534_p0 = sum0_7_reg_3284;
    end else begin
        grp_fu_1534_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1534_p1 = add_ln48_124_reg_4501;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1534_p1 = add_ln48_46_reg_4206;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1534_p1 = C_load;
    end else begin
        grp_fu_1534_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1538_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1538_p0 = sum0_22_reg_3313;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1538_p0 = sum0_8_reg_3305;
    end else begin
        grp_fu_1538_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1538_p1 = add_ln48_130_reg_4506;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1538_p1 = add_ln48_52_reg_4211;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1538_p1 = C_load;
    end else begin
        grp_fu_1538_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1542_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1542_p0 = sum0_23_reg_3334;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1542_p0 = sum0_9_reg_3326;
    end else begin
        grp_fu_1542_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1542_p1 = add_ln48_136_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1542_p1 = add_ln48_58_reg_4216;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1542_p1 = C_load;
    end else begin
        grp_fu_1542_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1546_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1546_p0 = sum0_24_reg_3355;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1546_p0 = sum0_10_reg_3347;
    end else begin
        grp_fu_1546_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1546_p1 = add_ln48_142_reg_4516;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1546_p1 = add_ln48_64_reg_4221;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1546_p1 = C_load;
    end else begin
        grp_fu_1546_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1550_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1550_p0 = sum0_25_reg_3376;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1550_p0 = sum0_11_reg_3368;
    end else begin
        grp_fu_1550_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1550_p1 = add_ln48_148_reg_4521;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1550_p1 = add_ln48_70_reg_4226;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1550_p1 = C_load;
    end else begin
        grp_fu_1550_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1554_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1554_p0 = sum0_26_reg_3397;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1554_p0 = sum0_12_reg_3389;
    end else begin
        grp_fu_1554_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1554_p1 = add_ln48_154_reg_4526;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1554_p1 = add_ln48_76_reg_4231;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1554_p1 = C_load;
    end else begin
        grp_fu_1554_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1558_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1558_p0 = sum0_27_reg_3417;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1558_p0 = sum0_13_reg_3410;
    end else begin
        grp_fu_1558_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1558_p1 = add_ln48_160_reg_4531;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1558_p1 = add_ln48_82_reg_4371;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1558_p1 = C_load;
    end else begin
        grp_fu_1558_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1562_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1562_p0 = sum0_15_reg_3166;
    end else begin
        grp_fu_1562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1562_p1 = add_ln48_166_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1562_p1 = add_ln48_88_reg_4376;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1562_p1 = add_ln48_4_reg_4171;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1562_p1 = C_load;
    end else begin
        grp_fu_1562_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_10_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_10_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_11_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_11_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_12_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_12_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_13_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_13_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address0_local = p_cast174_reg_3514;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = p_cast173_fu_2008_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_14_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address1_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_14_address1_local = p_cast169_fu_1941_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = p_cast174_reg_3514;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = p_cast173_fu_2008_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_1_address0_local = p_cast170_fu_1964_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_fu_1904_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = p_cast171_reg_2964;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_1_address1_local = p_cast169_fu_1941_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = p_cast168_reg_2938;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address1_local = zext_ln39_fu_1864_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_2_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_2_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_3_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_3_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_4_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_4_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_5_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_5_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_6_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_6_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_7_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_7_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_8_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_8_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address0_local = p_cast173_reg_3850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = p_cast170_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_9_address0_local = zext_ln12_reg_3429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = p_cast171_fu_1834_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address1_local = p_cast169_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_9_address1_local = p_cast174_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address1_local = zext_ln39_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address1_local = p_cast168_fu_1803_p1;
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_10_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_10_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_10_d0_local = add_ln48_143_fu_2827_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_10_d0_local = add_ln48_59_fu_2743_p2;
    end else begin
        sol_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_11_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_11_ce0_local = 1'b1;
    end else begin
        sol_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_d0_local = add_ln48_149_fu_2833_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_11_d0_local = add_ln48_65_fu_2749_p2;
    end else begin
        sol_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_12_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_d0_local = add_ln48_155_fu_2839_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_12_d0_local = add_ln48_71_fu_2755_p2;
    end else begin
        sol_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_13_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_13_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_13_ce0_local = 1'b1;
    end else begin
        sol_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_13_d0_local = add_ln48_161_fu_2845_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_13_d0_local = add_ln48_77_fu_2761_p2;
    end else begin
        sol_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_14_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_14_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_14_d0_local = add_ln48_167_fu_2851_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_14_d0_local = add_ln48_83_fu_2767_p2;
    end else begin
        sol_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_1_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_1_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_1_d0_local = add_ln48_89_fu_2773_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_1_d0_local = add_ln48_5_fu_2690_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_d0_local = add_ln48_95_fu_2779_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_d0_local = add_ln48_11_fu_2696_p2;
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_d0_local = add_ln48_101_fu_2785_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_d0_local = add_ln48_17_fu_2701_p2;
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_4_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_d0_local = add_ln48_107_fu_2791_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_4_d0_local = add_ln48_23_fu_2707_p2;
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_5_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_d0_local = add_ln48_113_fu_2797_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_5_d0_local = add_ln48_29_fu_2713_p2;
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_6_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_d0_local = add_ln48_119_fu_2803_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_6_d0_local = add_ln48_35_fu_2719_p2;
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_7_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_d0_local = add_ln48_125_fu_2809_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_7_d0_local = add_ln48_41_fu_2725_p2;
    end else begin
        sol_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_8_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_d0_local = add_ln48_131_fu_2815_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_8_d0_local = add_ln48_47_fu_2731_p2;
    end else begin
        sol_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_9_address0_local = p_cast171_reg_2964_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_9_address0_local = p_cast168_reg_2938_pp0_iter2_reg;
    end else begin
        sol_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_9_ce0_local = 1'b1;
    end else begin
        sol_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_9_d0_local = add_ln48_137_fu_2821_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_9_d0_local = add_ln48_53_fu_2737_p2;
    end else begin
        sol_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
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
assign add_ln36_fu_1752_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln48_100_fu_2586_p2 = (add_ln48_99_reg_4391 + add_ln48_97_fu_2582_p2);
assign add_ln48_101_fu_2785_p2 = (reg_1684 + mul_ln48_32_reg_4106_pp0_iter2_reg);
assign add_ln48_102_fu_2353_p2 = ($signed(sum0_16_reg_3187) + $signed(sum0_18_reg_3229));
assign add_ln48_103_fu_2591_p2 = ($signed(add_ln48_102_reg_4266) + $signed(sum0_3_reg_3200_pp0_iter1_reg));
assign add_ln48_104_fu_2443_p2 = (orig_4_load_5_reg_3896 + orig_4_load_6_reg_3901);
assign add_ln48_105_fu_2447_p2 = (add_ln48_104_fu_2443_p2 + reg_1632);
assign add_ln48_106_fu_2595_p2 = (add_ln48_105_reg_4396 + add_ln48_103_fu_2591_p2);
assign add_ln48_107_fu_2791_p2 = (reg_1688 + mul_ln48_34_reg_4111_pp0_iter2_reg);
assign add_ln48_108_fu_2453_p2 = ($signed(sum0_17_reg_3208_pp0_iter1_reg) + $signed(sum0_19_reg_3250_pp0_iter1_reg));
assign add_ln48_109_fu_2600_p2 = ($signed(add_ln48_108_reg_4401) + $signed(sum0_4_reg_3221_pp0_iter1_reg));
assign add_ln48_10_fu_2167_p2 = (add_ln48_9_reg_4021 + add_ln48_7_fu_2162_p2);
assign add_ln48_110_fu_2457_p2 = (orig_5_load_5_reg_3906 + orig_5_load_6_reg_3911);
assign add_ln48_111_fu_2461_p2 = (add_ln48_110_fu_2457_p2 + reg_1636);
assign add_ln48_112_fu_2604_p2 = (add_ln48_111_reg_4406 + add_ln48_109_fu_2600_p2);
assign add_ln48_113_fu_2797_p2 = (reg_1692 + mul_ln48_36_reg_4116_pp0_iter2_reg);
assign add_ln48_114_fu_2357_p2 = ($signed(sum0_18_reg_3229) + $signed(sum0_20_reg_3271));
assign add_ln48_115_fu_2609_p2 = ($signed(add_ln48_114_reg_4281) + $signed(sum0_5_reg_3242_pp0_iter1_reg));
assign add_ln48_116_fu_2467_p2 = (orig_6_load_5_reg_3916 + orig_6_load_6_reg_3921);
assign add_ln48_117_fu_2471_p2 = (add_ln48_116_fu_2467_p2 + reg_1640);
assign add_ln48_118_fu_2613_p2 = (add_ln48_117_reg_4411 + add_ln48_115_fu_2609_p2);
assign add_ln48_119_fu_2803_p2 = (reg_1696 + mul_ln48_38_reg_4121_pp0_iter2_reg);
assign add_ln48_11_fu_2696_p2 = (mul_ln48_3_reg_4541 + mul_ln48_2_reg_3665_pp0_iter2_reg);
assign add_ln48_120_fu_2477_p2 = ($signed(sum0_19_reg_3250_pp0_iter1_reg) + $signed(sum0_21_reg_3292_pp0_iter1_reg));
assign add_ln48_121_fu_2618_p2 = ($signed(add_ln48_120_reg_4416) + $signed(sum0_6_reg_3263_pp0_iter1_reg));
assign add_ln48_122_fu_2481_p2 = (orig_7_load_5_reg_3926 + orig_7_load_6_reg_3931);
assign add_ln48_123_fu_2485_p2 = (add_ln48_122_fu_2481_p2 + reg_1644);
assign add_ln48_124_fu_2622_p2 = (add_ln48_123_reg_4421 + add_ln48_121_fu_2618_p2);
assign add_ln48_125_fu_2809_p2 = (reg_1700 + mul_ln48_40_reg_4126_pp0_iter2_reg);
assign add_ln48_126_fu_2361_p2 = ($signed(sum0_20_reg_3271) + $signed(sum0_22_reg_3313));
assign add_ln48_127_fu_2627_p2 = ($signed(add_ln48_126_reg_4296) + $signed(sum0_7_reg_3284_pp0_iter1_reg));
assign add_ln48_128_fu_2491_p2 = (orig_8_load_5_reg_3936 + orig_8_load_6_reg_3941);
assign add_ln48_129_fu_2495_p2 = (add_ln48_128_fu_2491_p2 + reg_1648);
assign add_ln48_12_fu_2172_p2 = ($signed(sum0_1_reg_3153) + $signed(reg_1628));
assign add_ln48_130_fu_2631_p2 = (add_ln48_129_reg_4426 + add_ln48_127_fu_2627_p2);
assign add_ln48_131_fu_2815_p2 = (reg_1704 + mul_ln48_42_reg_4131_pp0_iter2_reg);
assign add_ln48_132_fu_2501_p2 = ($signed(sum0_21_reg_3292_pp0_iter1_reg) + $signed(sum0_23_reg_3334_pp0_iter1_reg));
assign add_ln48_133_fu_2636_p2 = ($signed(add_ln48_132_reg_4431) + $signed(sum0_8_reg_3305_pp0_iter1_reg));
assign add_ln48_134_fu_2505_p2 = (orig_9_load_5_reg_3946 + orig_9_load_6_reg_3951);
assign add_ln48_135_fu_2509_p2 = (add_ln48_134_fu_2505_p2 + reg_1652);
assign add_ln48_136_fu_2640_p2 = (add_ln48_135_reg_4436 + add_ln48_133_fu_2636_p2);
assign add_ln48_137_fu_2821_p2 = (reg_1708 + mul_ln48_44_reg_4136_pp0_iter2_reg);
assign add_ln48_138_fu_2365_p2 = ($signed(sum0_22_reg_3313) + $signed(sum0_24_reg_3355));
assign add_ln48_139_fu_2645_p2 = ($signed(add_ln48_138_reg_4311) + $signed(sum0_9_reg_3326_pp0_iter1_reg));
assign add_ln48_13_fu_2177_p2 = (add_ln48_12_fu_2172_p2 + reg_1575);
assign add_ln48_140_fu_2515_p2 = (orig_10_load_5_reg_3956 + orig_10_load_6_reg_3961);
assign add_ln48_141_fu_2519_p2 = (add_ln48_140_fu_2515_p2 + reg_1656);
assign add_ln48_142_fu_2649_p2 = (add_ln48_141_reg_4441 + add_ln48_139_fu_2645_p2);
assign add_ln48_143_fu_2827_p2 = (reg_1712 + mul_ln48_46_reg_4141_pp0_iter2_reg);
assign add_ln48_144_fu_2525_p2 = ($signed(sum0_23_reg_3334_pp0_iter1_reg) + $signed(sum0_25_reg_3376_pp0_iter1_reg));
assign add_ln48_145_fu_2654_p2 = ($signed(add_ln48_144_reg_4446) + $signed(sum0_10_reg_3347_pp0_iter1_reg));
assign add_ln48_146_fu_2529_p2 = (orig_11_load_5_reg_3966 + orig_11_load_6_reg_3971);
assign add_ln48_147_fu_2533_p2 = (add_ln48_146_fu_2529_p2 + reg_1660);
assign add_ln48_148_fu_2658_p2 = (add_ln48_147_reg_4451 + add_ln48_145_fu_2654_p2);
assign add_ln48_149_fu_2833_p2 = (reg_1716 + mul_ln48_48_reg_4146_pp0_iter2_reg);
assign add_ln48_14_fu_2036_p2 = ($signed(reg_1575) + $signed(sum0_3_reg_3200));
assign add_ln48_150_fu_2369_p2 = ($signed(sum0_24_reg_3355) + $signed(sum0_26_reg_3397));
assign add_ln48_151_fu_2663_p2 = ($signed(add_ln48_150_reg_4326) + $signed(sum0_11_reg_3368_pp0_iter1_reg));
assign add_ln48_152_fu_2539_p2 = (orig_12_load_5_reg_3976 + orig_12_load_6_reg_3981);
assign add_ln48_153_fu_2543_p2 = (add_ln48_152_fu_2539_p2 + reg_1664);
assign add_ln48_154_fu_2667_p2 = (add_ln48_153_reg_4456 + add_ln48_151_fu_2663_p2);
assign add_ln48_155_fu_2839_p2 = (reg_1720 + mul_ln48_50_reg_4151_pp0_iter2_reg);
assign add_ln48_156_fu_2549_p2 = ($signed(sum0_25_reg_3376_pp0_iter1_reg) + $signed(sum0_27_reg_3417_pp0_iter1_reg));
assign add_ln48_157_fu_2672_p2 = ($signed(add_ln48_156_reg_4461) + $signed(sum0_12_reg_3389_pp0_iter1_reg));
assign add_ln48_158_fu_2553_p2 = (orig_13_load_5_reg_3986 + orig_13_load_6_reg_3991);
assign add_ln48_159_fu_2557_p2 = (add_ln48_158_fu_2553_p2 + reg_1668);
assign add_ln48_15_fu_2041_p2 = ($signed(add_ln48_14_fu_2036_p2) + $signed(sum0_16_reg_3187));
assign add_ln48_160_fu_2676_p2 = (add_ln48_159_reg_4466 + add_ln48_157_fu_2672_p2);
assign add_ln48_161_fu_2845_p2 = (reg_1724 + mul_ln48_52_reg_4156_pp0_iter2_reg);
assign add_ln48_162_fu_2373_p2 = ($signed(sum0_26_reg_3397) + $signed(reg_1672));
assign add_ln48_163_fu_2681_p2 = ($signed(add_ln48_162_reg_4346) + $signed(sum0_13_reg_3410_pp0_iter1_reg));
assign add_ln48_164_fu_2563_p2 = (orig_14_load_6_reg_4001 + orig_15_load_480_reg_4341);
assign add_ln48_165_fu_2567_p2 = (add_ln48_164_fu_2563_p2 + reg_1672);
assign add_ln48_166_fu_2685_p2 = (add_ln48_165_reg_4471 + add_ln48_163_fu_2681_p2);
assign add_ln48_167_fu_2851_p2 = (reg_1676 + mul_ln48_54_reg_4166_pp0_iter2_reg);
assign add_ln48_16_fu_2183_p2 = (add_ln48_15_reg_4026 + add_ln48_13_fu_2177_p2);
assign add_ln48_17_fu_2701_p2 = (reg_1680 + mul_ln48_4_reg_3680_pp0_iter2_reg);
assign add_ln48_18_fu_2188_p2 = ($signed(sum0_2_reg_3179) + $signed(reg_1632));
assign add_ln48_19_fu_2193_p2 = (add_ln48_18_fu_2188_p2 + reg_1579);
assign add_ln48_1_fu_2152_p2 = (add_ln48_reg_4006 + reg_1624);
assign add_ln48_20_fu_2046_p2 = ($signed(reg_1579) + $signed(sum0_4_reg_3221));
assign add_ln48_21_fu_2051_p2 = ($signed(add_ln48_20_fu_2046_p2) + $signed(sum0_17_reg_3208));
assign add_ln48_22_fu_2199_p2 = (add_ln48_21_reg_4031 + add_ln48_19_fu_2193_p2);
assign add_ln48_23_fu_2707_p2 = (reg_1684 + mul_ln48_6_reg_3695_pp0_iter2_reg);
assign add_ln48_24_fu_2204_p2 = ($signed(sum0_3_reg_3200) + $signed(reg_1636));
assign add_ln48_25_fu_2209_p2 = (add_ln48_24_fu_2204_p2 + reg_1583);
assign add_ln48_26_fu_2056_p2 = ($signed(reg_1583) + $signed(sum0_5_reg_3242));
assign add_ln48_27_fu_2061_p2 = ($signed(add_ln48_26_fu_2056_p2) + $signed(sum0_18_reg_3229));
assign add_ln48_28_fu_2215_p2 = (add_ln48_27_reg_4036 + add_ln48_25_fu_2209_p2);
assign add_ln48_29_fu_2713_p2 = (reg_1688 + mul_ln48_8_reg_3710_pp0_iter2_reg);
assign add_ln48_2_fu_1969_p2 = ($signed(sum0_1_reg_3153) + $signed(orig_0_load_reg_3161));
assign add_ln48_30_fu_2220_p2 = ($signed(sum0_4_reg_3221) + $signed(reg_1640));
assign add_ln48_31_fu_2225_p2 = (add_ln48_30_fu_2220_p2 + reg_1587);
assign add_ln48_32_fu_2066_p2 = ($signed(reg_1587) + $signed(sum0_6_reg_3263));
assign add_ln48_33_fu_2071_p2 = ($signed(add_ln48_32_fu_2066_p2) + $signed(sum0_19_reg_3250));
assign add_ln48_34_fu_2231_p2 = (add_ln48_33_reg_4041 + add_ln48_31_fu_2225_p2);
assign add_ln48_35_fu_2719_p2 = (reg_1692 + mul_ln48_10_reg_3725_pp0_iter2_reg);
assign add_ln48_36_fu_2236_p2 = ($signed(sum0_5_reg_3242) + $signed(reg_1644));
assign add_ln48_37_fu_2241_p2 = (add_ln48_36_fu_2236_p2 + reg_1591);
assign add_ln48_38_fu_2076_p2 = ($signed(reg_1591) + $signed(sum0_7_reg_3284));
assign add_ln48_39_fu_2081_p2 = ($signed(add_ln48_38_fu_2076_p2) + $signed(sum0_20_reg_3271));
assign add_ln48_3_fu_1973_p2 = (add_ln48_2_fu_1969_p2 + reg_1566);
assign add_ln48_40_fu_2247_p2 = (add_ln48_39_reg_4046 + add_ln48_37_fu_2241_p2);
assign add_ln48_41_fu_2725_p2 = (reg_1696 + mul_ln48_12_reg_3740_pp0_iter2_reg);
assign add_ln48_42_fu_2252_p2 = ($signed(sum0_6_reg_3263) + $signed(reg_1648));
assign add_ln48_43_fu_2257_p2 = (add_ln48_42_fu_2252_p2 + reg_1595);
assign add_ln48_44_fu_2086_p2 = ($signed(reg_1595) + $signed(sum0_8_reg_3305));
assign add_ln48_45_fu_2091_p2 = ($signed(add_ln48_44_fu_2086_p2) + $signed(sum0_21_reg_3292));
assign add_ln48_46_fu_2263_p2 = (add_ln48_45_reg_4051 + add_ln48_43_fu_2257_p2);
assign add_ln48_47_fu_2731_p2 = (reg_1700 + mul_ln48_14_reg_3755_pp0_iter2_reg);
assign add_ln48_48_fu_2268_p2 = ($signed(sum0_7_reg_3284) + $signed(reg_1652));
assign add_ln48_49_fu_2273_p2 = (add_ln48_48_fu_2268_p2 + reg_1599);
assign add_ln48_4_fu_2157_p2 = (add_ln48_3_reg_3499 + add_ln48_1_fu_2152_p2);
assign add_ln48_50_fu_2096_p2 = ($signed(reg_1599) + $signed(sum0_9_reg_3326));
assign add_ln48_51_fu_2101_p2 = ($signed(add_ln48_50_fu_2096_p2) + $signed(sum0_22_reg_3313));
assign add_ln48_52_fu_2279_p2 = (add_ln48_51_reg_4056 + add_ln48_49_fu_2273_p2);
assign add_ln48_53_fu_2737_p2 = (reg_1704 + mul_ln48_16_reg_3770_pp0_iter2_reg);
assign add_ln48_54_fu_2284_p2 = ($signed(sum0_8_reg_3305) + $signed(reg_1656));
assign add_ln48_55_fu_2289_p2 = (add_ln48_54_fu_2284_p2 + reg_1603);
assign add_ln48_56_fu_2106_p2 = ($signed(reg_1603) + $signed(sum0_10_reg_3347));
assign add_ln48_57_fu_2111_p2 = ($signed(add_ln48_56_fu_2106_p2) + $signed(sum0_23_reg_3334));
assign add_ln48_58_fu_2295_p2 = (add_ln48_57_reg_4061 + add_ln48_55_fu_2289_p2);
assign add_ln48_59_fu_2743_p2 = (reg_1708 + mul_ln48_18_reg_3785_pp0_iter2_reg);
assign add_ln48_5_fu_2690_p2 = (reg_1676 + mul_ln48_reg_4011_pp0_iter2_reg);
assign add_ln48_60_fu_2300_p2 = ($signed(sum0_9_reg_3326) + $signed(reg_1660));
assign add_ln48_61_fu_2305_p2 = (add_ln48_60_fu_2300_p2 + reg_1607);
assign add_ln48_62_fu_2116_p2 = ($signed(reg_1607) + $signed(sum0_11_reg_3368));
assign add_ln48_63_fu_2121_p2 = ($signed(add_ln48_62_fu_2116_p2) + $signed(sum0_24_reg_3355));
assign add_ln48_64_fu_2311_p2 = (add_ln48_63_reg_4066 + add_ln48_61_fu_2305_p2);
assign add_ln48_65_fu_2749_p2 = (reg_1712 + mul_ln48_20_reg_3800_pp0_iter2_reg);
assign add_ln48_66_fu_2316_p2 = ($signed(sum0_10_reg_3347) + $signed(reg_1664));
assign add_ln48_67_fu_2321_p2 = (add_ln48_66_fu_2316_p2 + reg_1611);
assign add_ln48_68_fu_2126_p2 = ($signed(reg_1611) + $signed(sum0_12_reg_3389));
assign add_ln48_69_fu_2131_p2 = ($signed(add_ln48_68_fu_2126_p2) + $signed(sum0_25_reg_3376));
assign add_ln48_6_fu_2020_p0 = reg_1566;
assign add_ln48_6_fu_2020_p2 = ($signed(add_ln48_6_fu_2020_p0) + $signed(orig_2_q0));
assign add_ln48_70_fu_2327_p2 = (add_ln48_69_reg_4071 + add_ln48_67_fu_2321_p2);
assign add_ln48_71_fu_2755_p2 = (reg_1716 + mul_ln48_22_reg_3815_pp0_iter2_reg);
assign add_ln48_72_fu_2332_p2 = ($signed(sum0_11_reg_3368) + $signed(reg_1668));
assign add_ln48_73_fu_2337_p2 = (add_ln48_72_fu_2332_p2 + reg_1615);
assign add_ln48_74_fu_2136_p2 = ($signed(reg_1615) + $signed(sum0_13_reg_3410));
assign add_ln48_75_fu_2141_p2 = ($signed(add_ln48_74_fu_2136_p2) + $signed(sum0_26_reg_3397));
assign add_ln48_76_fu_2343_p2 = (add_ln48_75_reg_4076 + add_ln48_73_fu_2337_p2);
assign add_ln48_77_fu_2761_p2 = (reg_1720 + mul_ln48_24_reg_3830_pp0_iter2_reg);
assign add_ln48_78_fu_2397_p2 = ($signed(sum0_12_reg_3389_pp0_iter1_reg) + $signed(orig_14_load_1_reg_4081));
assign add_ln48_79_fu_2401_p2 = (add_ln48_78_fu_2397_p2 + orig_14_load_reg_3835);
assign add_ln48_7_fu_2162_p2 = (add_ln48_6_reg_4016 + reg_1571);
assign add_ln48_80_fu_2378_p2 = (orig_14_load_3_reg_3509 + orig_15_load_reg_4236);
assign add_ln48_81_fu_2382_p2 = ($signed(add_ln48_80_fu_2378_p2) + $signed(sum0_27_reg_3417_pp0_iter1_reg));
assign add_ln48_82_fu_2406_p2 = (add_ln48_81_reg_4351 + add_ln48_79_fu_2401_p2);
assign add_ln48_83_fu_2767_p2 = (reg_1724 + mul_ln48_26_reg_3845_pp0_iter2_reg);
assign add_ln48_84_fu_2146_p0 = reg_1566;
assign add_ln48_84_fu_2146_p2 = ($signed(add_ln48_84_fu_2146_p0) + $signed(orig_1_q0));
assign add_ln48_85_fu_2411_p2 = ($signed(add_ln48_84_reg_4101) + $signed(sum0_15_reg_3166_pp0_iter1_reg));
assign add_ln48_86_fu_2387_p2 = (orig_1_load_6_reg_3520 + orig_0_load_480_reg_4241);
assign add_ln48_87_fu_2391_p2 = (add_ln48_86_fu_2387_p2 + reg_1624);
assign add_ln48_88_fu_2415_p2 = (add_ln48_87_reg_4356 + add_ln48_85_fu_2411_p2);
assign add_ln48_89_fu_2773_p2 = (reg_1676 + mul_ln48_28_reg_4361);
assign add_ln48_8_fu_2026_p2 = ($signed(reg_1571) + $signed(sum0_2_reg_3179));
assign add_ln48_90_fu_2348_p0 = reg_1619;
assign add_ln48_90_fu_2348_p2 = ($signed(add_ln48_90_fu_2348_p0) + $signed(sum0_16_reg_3187));
assign add_ln48_91_fu_2573_p2 = ($signed(add_ln48_90_reg_4251) + $signed(sum0_1_reg_3153_pp0_iter1_reg));
assign add_ln48_92_fu_2420_p2 = (orig_2_load_5_reg_3871 + orig_2_load_6_reg_3876);
assign add_ln48_93_fu_2424_p2 = (add_ln48_92_fu_2420_p2 + orig_2_load_4_reg_4366);
assign add_ln48_94_fu_2577_p2 = (add_ln48_93_reg_4381 + add_ln48_91_fu_2573_p2);
assign add_ln48_95_fu_2779_p2 = (reg_1680 + mul_ln48_30_reg_3881_pp0_iter2_reg);
assign add_ln48_96_fu_2429_p2 = ($signed(sum0_15_reg_3166_pp0_iter1_reg) + $signed(sum0_17_reg_3208_pp0_iter1_reg));
assign add_ln48_97_fu_2582_p2 = ($signed(add_ln48_96_reg_4386) + $signed(sum0_2_reg_3179_pp0_iter1_reg));
assign add_ln48_98_fu_2433_p2 = (orig_3_load_5_reg_3886 + orig_3_load_6_reg_3891);
assign add_ln48_99_fu_2437_p2 = (add_ln48_98_fu_2433_p2 + reg_1628);
assign add_ln48_9_fu_2031_p2 = ($signed(add_ln48_8_fu_2026_p2) + $signed(sum0_15_reg_3166));
assign add_ln48_fu_2014_p1 = orig_1_q1;
assign add_ln48_fu_2014_p2 = ($signed(reg_1619) + $signed(add_ln48_fu_2014_p1));
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign empty_12_fu_1919_p2 = ($signed(tmp_8_reg_3142) + $signed(10'd992));
assign empty_13_fu_1821_p2 = (select_ln11_reg_2923 + 5'd1);
assign empty_14_fu_1890_p1 = indvars_iv_next_fu_1884_p2[4:0];
assign empty_15_fu_1898_p2 = (indvars_iv_next_cast_fu_1894_p1 + tmp_8_fu_1874_p3);
assign empty_fu_1914_p2 = (tmp_8_reg_3142 + 10'd32);
assign icmp_ln36_fu_1746_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd450) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1761_p2 = ((ap_sig_allocacmp_j_load == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next4216_fu_1783_p2 = (i_fu_124 + 5'd1);
assign indvars_iv_next_cast_fu_1894_p1 = indvars_iv_next_fu_1884_p2;
assign indvars_iv_next_fu_1884_p2 = (zext_ln37_fu_1881_p1 + 6'd2);
assign orig_0_address0 = p_cast171_reg_2964;
assign orig_0_address1 = p_cast168_fu_1803_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_10_address0 = orig_10_address0_local;
assign orig_10_address1 = orig_10_address1_local;
assign orig_10_ce0 = orig_10_ce0_local;
assign orig_10_ce1 = orig_10_ce1_local;
assign orig_11_address0 = orig_11_address0_local;
assign orig_11_address1 = orig_11_address1_local;
assign orig_11_ce0 = orig_11_ce0_local;
assign orig_11_ce1 = orig_11_ce1_local;
assign orig_12_address0 = orig_12_address0_local;
assign orig_12_address1 = orig_12_address1_local;
assign orig_12_ce0 = orig_12_ce0_local;
assign orig_12_ce1 = orig_12_ce1_local;
assign orig_13_address0 = orig_13_address0_local;
assign orig_13_address1 = orig_13_address1_local;
assign orig_13_ce0 = orig_13_ce0_local;
assign orig_13_ce1 = orig_13_ce1_local;
assign orig_14_address0 = orig_14_address0_local;
assign orig_14_address1 = orig_14_address1_local;
assign orig_14_ce0 = orig_14_ce0_local;
assign orig_14_ce1 = orig_14_ce1_local;
assign orig_15_address0 = p_cast171_reg_2964;
assign orig_15_address1 = p_cast168_reg_2938;
assign orig_15_ce0 = orig_15_ce0_local;
assign orig_15_ce1 = orig_15_ce1_local;
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
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
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
assign p_cast168_fu_1803_p1 = tmp_1_fu_1796_p3;
assign p_cast169_fu_1941_p1 = tmp_3_fu_1934_p3;
assign p_cast170_fu_1964_p1 = tmp_5_fu_1957_p3;
assign p_cast171_fu_1834_p1 = tmp_6_fu_1826_p3;
assign p_cast173_fu_2008_p1 = tmp_9_fu_2002_p3;
assign p_cast174_fu_1986_p1 = tmp_s_fu_1979_p3;
assign select_ln11_fu_1767_p3 = ((icmp_ln37_fu_1761_p2[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j_load);
assign select_ln36_fu_1789_p3 = ((icmp_ln37_reg_2918[0:0] == 1'b1) ? indvars_iv_next4216_fu_1783_p2 : i_fu_124);
assign sol_10_address0 = sol_10_address0_local;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_d0 = sol_10_d0_local;
assign sol_10_we0 = sol_10_we0_local;
assign sol_11_address0 = sol_11_address0_local;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_d0 = sol_11_d0_local;
assign sol_11_we0 = sol_11_we0_local;
assign sol_12_address0 = sol_12_address0_local;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_d0 = sol_12_d0_local;
assign sol_12_we0 = sol_12_we0_local;
assign sol_13_address0 = sol_13_address0_local;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_d0 = sol_13_d0_local;
assign sol_13_we0 = sol_13_we0_local;
assign sol_14_address0 = sol_14_address0_local;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_d0 = sol_14_d0_local;
assign sol_14_we0 = sol_14_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = sol_4_address0_local;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = sol_4_d0_local;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = sol_5_address0_local;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = sol_5_d0_local;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = sol_6_address0_local;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = sol_7_address0_local;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = sol_7_d0_local;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = sol_8_address0_local;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_d0 = sol_8_d0_local;
assign sol_8_we0 = sol_8_we0_local;
assign sol_9_address0 = sol_9_address0_local;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_d0 = sol_9_d0_local;
assign sol_9_we0 = sol_9_we0_local;
assign tmp_1_fu_1796_p3 = {{select_ln36_fu_1789_p3}, {select_ln11_reg_2923}};
assign tmp_2_fu_1924_p4 = {{empty_fu_1914_p2[9:5]}};
assign tmp_3_fu_1934_p3 = {{tmp_2_fu_1924_p4}, {select_ln11_reg_2923}};
assign tmp_4_fu_1947_p4 = {{empty_12_fu_1919_p2[9:5]}};
assign tmp_5_fu_1957_p3 = {{tmp_4_fu_1947_p4}, {select_ln11_reg_2923}};
assign tmp_6_fu_1826_p3 = {{select_ln36_fu_1789_p3}, {empty_13_fu_1821_p2}};
assign tmp_7_fu_1856_p3 = {{select_ln36_fu_1789_p3}, {tmp_fu_1851_p2}};
assign tmp_8_fu_1874_p3 = {{select_ln36_reg_2933}, {5'd0}};
assign tmp_9_fu_2002_p3 = {{tmp_2_reg_3451}, {empty_13_reg_2958}};
assign tmp_fu_1851_p2 = ($signed(select_ln11_reg_2923) + $signed(5'd31));
assign tmp_s_fu_1979_p3 = {{tmp_4_fu_1947_p4}, {empty_13_reg_2958}};
assign zext_ln12_fu_1904_p1 = empty_15_fu_1898_p2;
assign zext_ln37_fu_1881_p1 = select_ln11_reg_2923;
assign zext_ln39_fu_1864_p1 = tmp_7_fu_1856_p3;
always @ (posedge ap_clk) begin
    p_cast168_reg_2938[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast168_reg_2938_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast168_reg_2938_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast171_reg_2964[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast171_reg_2964_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast171_reg_2964_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_2985[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    tmp_8_reg_3142[4:0] <= 5'b00000;
    zext_ln12_reg_3429[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast169_reg_3456[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast170_reg_3472[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast174_reg_3514[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast173_reg_3850[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 