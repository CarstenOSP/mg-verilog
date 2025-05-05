module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_we1,DATA_x_7_d1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_we1,DATA_x_6_d1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_we1,DATA_x_5_d1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_we1,DATA_x_4_d1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
output   DATA_x_7_we1;
output  [63:0] DATA_x_7_d1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
output   DATA_x_6_we1;
output  [63:0] DATA_x_6_d1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
output   DATA_x_5_we1;
output  [63:0] DATA_x_5_d1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
output   DATA_x_4_we1;
output  [63:0] DATA_x_4_d1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
output   DATA_x_3_we1;
output  [63:0] DATA_x_3_d1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
output   DATA_x_2_we1;
output  [63:0] DATA_x_2_d1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
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
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [5:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [5:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_2141_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_3779;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_3779_pp0_iter1_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter2_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter3_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter4_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter5_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter6_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter7_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter8_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter9_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter10_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter11_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter12_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter13_reg;
reg   [6:0] tid_2_reg_3779_pp0_iter14_reg;
wire   [8:0] offset_fu_2163_p3;
reg   [8:0] offset_reg_3789;
reg   [8:0] offset_reg_3789_pp0_iter1_reg;
reg   [8:0] offset_reg_3789_pp0_iter2_reg;
reg   [8:0] offset_reg_3789_pp0_iter3_reg;
reg   [8:0] offset_reg_3789_pp0_iter4_reg;
reg   [8:0] offset_reg_3789_pp0_iter5_reg;
reg   [8:0] offset_reg_3789_pp0_iter6_reg;
reg   [8:0] offset_reg_3789_pp0_iter7_reg;
reg   [8:0] offset_reg_3789_pp0_iter8_reg;
reg   [8:0] offset_reg_3789_pp0_iter9_reg;
wire   [8:0] offset_1_fu_2187_p4;
reg   [8:0] offset_1_reg_3796;
reg   [8:0] offset_1_reg_3796_pp0_iter1_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter2_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter3_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter4_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter5_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter6_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter7_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter8_reg;
reg   [8:0] offset_1_reg_3796_pp0_iter9_reg;
reg   [5:0] tmp_90_reg_3803;
reg   [5:0] tmp_90_reg_3803_pp0_iter11_reg;
reg   [5:0] tmp_90_reg_3803_pp0_iter12_reg;
reg   [5:0] tmp_100_reg_3808;
reg   [5:0] tmp_100_reg_3808_pp0_iter11_reg;
reg   [5:0] tmp_100_reg_3808_pp0_iter12_reg;
wire   [3:0] trunc_ln172_fu_2258_p1;
reg   [3:0] trunc_ln172_reg_3813;
reg   [3:0] trunc_ln172_reg_3813_pp0_iter13_reg;
wire   [3:0] trunc_ln172_1_fu_2262_p1;
reg   [3:0] trunc_ln172_1_reg_3825;
reg   [3:0] trunc_ln172_1_reg_3825_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_2662_p29;
reg   [63:0] tmp_s_reg_4877;
wire   [63:0] tmp_21_fu_2721_p29;
reg   [63:0] tmp_21_reg_4882;
wire   [63:0] tmp_22_fu_2780_p29;
reg   [63:0] tmp_22_reg_4887;
wire   [63:0] tmp_23_fu_2839_p29;
reg   [63:0] tmp_23_reg_4892;
wire   [63:0] tmp_24_fu_2898_p29;
reg   [63:0] tmp_24_reg_4897;
wire   [63:0] tmp_25_fu_2957_p29;
reg   [63:0] tmp_25_reg_4902;
wire   [63:0] tmp_26_fu_3016_p29;
reg   [63:0] tmp_26_reg_4907;
wire   [63:0] tmp_27_fu_3075_p29;
reg   [63:0] tmp_27_reg_4912;
wire   [63:0] tmp_29_fu_3134_p29;
reg   [63:0] tmp_29_reg_4917;
wire   [63:0] tmp_30_fu_3193_p29;
reg   [63:0] tmp_30_reg_4922;
wire   [63:0] tmp_31_fu_3252_p29;
reg   [63:0] tmp_31_reg_4927;
wire   [63:0] tmp_32_fu_3311_p29;
reg   [63:0] tmp_32_reg_4932;
wire   [63:0] tmp_33_fu_3370_p29;
reg   [63:0] tmp_33_reg_4937;
wire   [63:0] tmp_34_fu_3429_p29;
reg   [63:0] tmp_34_reg_4942;
wire   [63:0] tmp_35_fu_3488_p29;
reg   [63:0] tmp_35_reg_4947;
wire   [63:0] tmp_36_fu_3547_p29;
reg   [63:0] tmp_36_reg_4952;
wire   [63:0] zext_ln172_2_fu_2266_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_2291_p1;
wire   [63:0] zext_ln316_fu_2317_p1;
wire   [63:0] zext_ln317_fu_2343_p1;
wire   [63:0] zext_ln318_fu_2369_p1;
wire   [63:0] zext_ln319_fu_2395_p1;
wire   [63:0] zext_ln320_fu_2421_p1;
wire   [63:0] zext_ln321_fu_2447_p1;
wire   [63:0] zext_ln172_5_fu_2464_p1;
wire   [63:0] zext_ln315_1_fu_2489_p1;
wire   [63:0] zext_ln316_1_fu_2515_p1;
wire   [63:0] zext_ln317_1_fu_2541_p1;
wire   [63:0] zext_ln318_1_fu_2567_p1;
wire   [63:0] zext_ln319_1_fu_2593_p1;
wire   [63:0] zext_ln320_1_fu_2619_p1;
wire   [63:0] zext_ln321_1_fu_2645_p1;
wire   [63:0] zext_ln309_fu_3606_p1;
wire   [63:0] zext_ln312_fu_3634_p1;
reg   [6:0] tid_fu_148;
wire   [6:0] add_ln309_fu_2203_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [5:0] smem_address1_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [5:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [5:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [5:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [5:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_5_ce1_local;
reg   [5:0] smem_5_address1_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_6_ce1_local;
reg   [5:0] smem_6_address1_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_7_ce1_local;
reg   [5:0] smem_7_address1_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg   [5:0] smem_8_address1_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg   [5:0] smem_9_address1_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_11_ce1_local;
reg   [5:0] smem_11_address1_local;
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_12_ce1_local;
reg   [5:0] smem_12_address1_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_we1_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_1_we1_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_we1_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_we1_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_we1_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_3_we1_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_we1_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
wire   [2:0] tmp_89_fu_2149_p4;
wire   [5:0] trunc_ln312_fu_2159_p1;
wire   [8:0] grp_fu_2171_p0;
wire   [4:0] grp_fu_2171_p1;
wire   [4:0] tmp_99_fu_2177_p4;
wire   [8:0] grp_fu_2197_p0;
wire   [4:0] grp_fu_2197_p1;
wire   [8:0] mul_ln172_fu_2220_p0;
wire   [10:0] mul_ln172_fu_2220_p1;
wire   [18:0] mul_ln172_fu_2220_p2;
wire   [8:0] mul_ln172_1_fu_2242_p0;
wire   [10:0] mul_ln172_1_fu_2242_p1;
wire   [18:0] mul_ln172_1_fu_2242_p2;
wire   [3:0] grp_fu_2171_p2;
wire   [3:0] grp_fu_2197_p2;
wire   [20:0] tmp_92_fu_2282_p1;
wire  signed [20:0] grp_fu_3646_p3;
wire   [6:0] tmp_92_fu_2282_p4;
wire   [20:0] tmp_93_fu_2308_p1;
wire  signed [20:0] grp_fu_3655_p3;
wire   [6:0] tmp_93_fu_2308_p4;
wire   [20:0] tmp_94_fu_2334_p1;
wire  signed [20:0] grp_fu_3664_p3;
wire   [6:0] tmp_94_fu_2334_p4;
wire   [20:0] tmp_95_fu_2360_p1;
wire  signed [20:0] grp_fu_3673_p3;
wire   [6:0] tmp_95_fu_2360_p4;
wire   [20:0] tmp_96_fu_2386_p1;
wire  signed [20:0] grp_fu_3682_p3;
wire   [6:0] tmp_96_fu_2386_p4;
wire   [20:0] tmp_97_fu_2412_p1;
wire  signed [20:0] grp_fu_3691_p3;
wire   [6:0] tmp_97_fu_2412_p4;
wire   [20:0] tmp_98_fu_2438_p1;
wire  signed [20:0] grp_fu_3700_p3;
wire   [6:0] tmp_98_fu_2438_p4;
wire   [20:0] tmp_101_fu_2480_p1;
wire  signed [20:0] grp_fu_3709_p3;
wire   [6:0] tmp_101_fu_2480_p4;
wire   [20:0] tmp_102_fu_2506_p1;
wire  signed [20:0] grp_fu_3718_p3;
wire   [6:0] tmp_102_fu_2506_p4;
wire   [20:0] tmp_103_fu_2532_p1;
wire  signed [20:0] grp_fu_3727_p3;
wire   [6:0] tmp_103_fu_2532_p4;
wire   [20:0] tmp_104_fu_2558_p1;
wire  signed [20:0] grp_fu_3736_p3;
wire   [6:0] tmp_104_fu_2558_p4;
wire   [20:0] tmp_105_fu_2584_p1;
wire  signed [20:0] grp_fu_3745_p3;
wire   [6:0] tmp_105_fu_2584_p4;
wire   [20:0] tmp_106_fu_2610_p1;
wire  signed [20:0] grp_fu_3754_p3;
wire   [6:0] tmp_106_fu_2610_p4;
wire   [20:0] tmp_107_fu_2636_p1;
wire  signed [20:0] grp_fu_3763_p3;
wire   [6:0] tmp_107_fu_2636_p4;
wire   [63:0] tmp_s_fu_2662_p27;
wire   [63:0] tmp_21_fu_2721_p27;
wire   [63:0] tmp_22_fu_2780_p27;
wire   [63:0] tmp_23_fu_2839_p27;
wire   [63:0] tmp_24_fu_2898_p27;
wire   [63:0] tmp_25_fu_2957_p27;
wire   [63:0] tmp_26_fu_3016_p27;
wire   [63:0] tmp_27_fu_3075_p27;
wire   [63:0] tmp_29_fu_3134_p27;
wire   [63:0] tmp_30_fu_3193_p27;
wire   [63:0] tmp_31_fu_3252_p27;
wire   [63:0] tmp_32_fu_3311_p27;
wire   [63:0] tmp_33_fu_3370_p27;
wire   [63:0] tmp_34_fu_3429_p27;
wire   [63:0] tmp_35_fu_3488_p27;
wire   [63:0] tmp_36_fu_3547_p27;
wire   [4:0] tmp_28_fu_3617_p4;
wire   [5:0] or_ln_fu_3626_p3;
wire   [8:0] grp_fu_3646_p0;
wire   [9:0] zext_ln172_fu_2214_p1;
wire   [5:0] grp_fu_3646_p1;
wire   [10:0] grp_fu_3646_p2;
wire   [8:0] grp_fu_3655_p0;
wire   [3:0] grp_fu_3655_p1;
wire   [10:0] grp_fu_3655_p2;
wire   [8:0] grp_fu_3664_p0;
wire   [5:0] grp_fu_3664_p1;
wire   [10:0] grp_fu_3664_p2;
wire   [8:0] grp_fu_3673_p0;
wire   [4:0] grp_fu_3673_p1;
wire   [10:0] grp_fu_3673_p2;
wire   [8:0] grp_fu_3682_p0;
wire   [5:0] grp_fu_3682_p1;
wire   [10:0] grp_fu_3682_p2;
wire   [8:0] grp_fu_3691_p0;
wire   [4:0] grp_fu_3691_p1;
wire   [10:0] grp_fu_3691_p2;
wire   [8:0] grp_fu_3700_p0;
wire   [5:0] grp_fu_3700_p1;
wire   [10:0] grp_fu_3700_p2;
wire   [8:0] grp_fu_3709_p0;
wire   [9:0] zext_ln172_3_fu_2236_p1;
wire   [5:0] grp_fu_3709_p1;
wire   [10:0] grp_fu_3709_p2;
wire   [8:0] grp_fu_3718_p0;
wire   [3:0] grp_fu_3718_p1;
wire   [10:0] grp_fu_3718_p2;
wire   [8:0] grp_fu_3727_p0;
wire   [5:0] grp_fu_3727_p1;
wire   [10:0] grp_fu_3727_p2;
wire   [8:0] grp_fu_3736_p0;
wire   [4:0] grp_fu_3736_p1;
wire   [10:0] grp_fu_3736_p2;
wire   [8:0] grp_fu_3745_p0;
wire   [5:0] grp_fu_3745_p1;
wire   [10:0] grp_fu_3745_p2;
wire   [8:0] grp_fu_3754_p0;
wire   [4:0] grp_fu_3754_p1;
wire   [10:0] grp_fu_3754_p2;
wire   [8:0] grp_fu_3763_p0;
wire   [5:0] grp_fu_3763_p1;
wire   [10:0] grp_fu_3763_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_1_fu_2242_p00;
wire   [18:0] mul_ln172_fu_2220_p00;
wire   [3:0] tmp_s_fu_2662_p1;
wire   [3:0] tmp_s_fu_2662_p3;
wire   [3:0] tmp_s_fu_2662_p5;
wire   [3:0] tmp_s_fu_2662_p7;
wire   [3:0] tmp_s_fu_2662_p9;
wire   [3:0] tmp_s_fu_2662_p11;
wire   [3:0] tmp_s_fu_2662_p13;
wire   [3:0] tmp_s_fu_2662_p15;
wire  signed [3:0] tmp_s_fu_2662_p17;
wire  signed [3:0] tmp_s_fu_2662_p19;
wire  signed [3:0] tmp_s_fu_2662_p21;
wire  signed [3:0] tmp_s_fu_2662_p23;
wire  signed [3:0] tmp_s_fu_2662_p25;
wire   [3:0] tmp_21_fu_2721_p1;
wire  signed [3:0] tmp_21_fu_2721_p3;
wire  signed [3:0] tmp_21_fu_2721_p5;
wire  signed [3:0] tmp_21_fu_2721_p7;
wire  signed [3:0] tmp_21_fu_2721_p9;
wire  signed [3:0] tmp_21_fu_2721_p11;
wire   [3:0] tmp_21_fu_2721_p13;
wire   [3:0] tmp_21_fu_2721_p15;
wire   [3:0] tmp_21_fu_2721_p17;
wire   [3:0] tmp_21_fu_2721_p19;
wire   [3:0] tmp_21_fu_2721_p21;
wire   [3:0] tmp_21_fu_2721_p23;
wire   [3:0] tmp_21_fu_2721_p25;
wire   [3:0] tmp_22_fu_2780_p1;
wire   [3:0] tmp_22_fu_2780_p3;
wire   [3:0] tmp_22_fu_2780_p5;
wire  signed [3:0] tmp_22_fu_2780_p7;
wire  signed [3:0] tmp_22_fu_2780_p9;
wire  signed [3:0] tmp_22_fu_2780_p11;
wire  signed [3:0] tmp_22_fu_2780_p13;
wire  signed [3:0] tmp_22_fu_2780_p15;
wire   [3:0] tmp_22_fu_2780_p17;
wire   [3:0] tmp_22_fu_2780_p19;
wire   [3:0] tmp_22_fu_2780_p21;
wire   [3:0] tmp_22_fu_2780_p23;
wire   [3:0] tmp_22_fu_2780_p25;
wire  signed [3:0] tmp_23_fu_2839_p1;
wire   [3:0] tmp_23_fu_2839_p3;
wire   [3:0] tmp_23_fu_2839_p5;
wire   [3:0] tmp_23_fu_2839_p7;
wire   [3:0] tmp_23_fu_2839_p9;
wire   [3:0] tmp_23_fu_2839_p11;
wire   [3:0] tmp_23_fu_2839_p13;
wire   [3:0] tmp_23_fu_2839_p15;
wire   [3:0] tmp_23_fu_2839_p17;
wire  signed [3:0] tmp_23_fu_2839_p19;
wire  signed [3:0] tmp_23_fu_2839_p21;
wire  signed [3:0] tmp_23_fu_2839_p23;
wire  signed [3:0] tmp_23_fu_2839_p25;
wire  signed [3:0] tmp_24_fu_2898_p1;
wire  signed [3:0] tmp_24_fu_2898_p3;
wire  signed [3:0] tmp_24_fu_2898_p5;
wire   [3:0] tmp_24_fu_2898_p7;
wire   [3:0] tmp_24_fu_2898_p9;
wire   [3:0] tmp_24_fu_2898_p11;
wire   [3:0] tmp_24_fu_2898_p13;
wire   [3:0] tmp_24_fu_2898_p15;
wire   [3:0] tmp_24_fu_2898_p17;
wire   [3:0] tmp_24_fu_2898_p19;
wire   [3:0] tmp_24_fu_2898_p21;
wire  signed [3:0] tmp_24_fu_2898_p23;
wire  signed [3:0] tmp_24_fu_2898_p25;
wire   [3:0] tmp_25_fu_2957_p1;
wire   [3:0] tmp_25_fu_2957_p3;
wire   [3:0] tmp_25_fu_2957_p5;
wire   [3:0] tmp_25_fu_2957_p7;
wire  signed [3:0] tmp_25_fu_2957_p9;
wire  signed [3:0] tmp_25_fu_2957_p11;
wire  signed [3:0] tmp_25_fu_2957_p13;
wire  signed [3:0] tmp_25_fu_2957_p15;
wire  signed [3:0] tmp_25_fu_2957_p17;
wire   [3:0] tmp_25_fu_2957_p19;
wire   [3:0] tmp_25_fu_2957_p21;
wire   [3:0] tmp_25_fu_2957_p23;
wire   [3:0] tmp_25_fu_2957_p25;
wire   [3:0] tmp_26_fu_3016_p1;
wire   [3:0] tmp_26_fu_3016_p3;
wire   [3:0] tmp_26_fu_3016_p5;
wire   [3:0] tmp_26_fu_3016_p7;
wire   [3:0] tmp_26_fu_3016_p9;
wire   [3:0] tmp_26_fu_3016_p11;
wire  signed [3:0] tmp_26_fu_3016_p13;
wire  signed [3:0] tmp_26_fu_3016_p15;
wire  signed [3:0] tmp_26_fu_3016_p17;
wire  signed [3:0] tmp_26_fu_3016_p19;
wire  signed [3:0] tmp_26_fu_3016_p21;
wire   [3:0] tmp_26_fu_3016_p23;
wire   [3:0] tmp_26_fu_3016_p25;
wire  signed [3:0] tmp_27_fu_3075_p1;
wire  signed [3:0] tmp_27_fu_3075_p3;
wire  signed [3:0] tmp_27_fu_3075_p5;
wire  signed [3:0] tmp_27_fu_3075_p7;
wire   [3:0] tmp_27_fu_3075_p9;
wire   [3:0] tmp_27_fu_3075_p11;
wire   [3:0] tmp_27_fu_3075_p13;
wire   [3:0] tmp_27_fu_3075_p15;
wire   [3:0] tmp_27_fu_3075_p17;
wire   [3:0] tmp_27_fu_3075_p19;
wire   [3:0] tmp_27_fu_3075_p21;
wire   [3:0] tmp_27_fu_3075_p23;
wire  signed [3:0] tmp_27_fu_3075_p25;
wire   [3:0] tmp_29_fu_3134_p1;
wire   [3:0] tmp_29_fu_3134_p3;
wire   [3:0] tmp_29_fu_3134_p5;
wire   [3:0] tmp_29_fu_3134_p7;
wire   [3:0] tmp_29_fu_3134_p9;
wire   [3:0] tmp_29_fu_3134_p11;
wire   [3:0] tmp_29_fu_3134_p13;
wire   [3:0] tmp_29_fu_3134_p15;
wire  signed [3:0] tmp_29_fu_3134_p17;
wire  signed [3:0] tmp_29_fu_3134_p19;
wire  signed [3:0] tmp_29_fu_3134_p21;
wire  signed [3:0] tmp_29_fu_3134_p23;
wire  signed [3:0] tmp_29_fu_3134_p25;
wire   [3:0] tmp_30_fu_3193_p1;
wire  signed [3:0] tmp_30_fu_3193_p3;
wire  signed [3:0] tmp_30_fu_3193_p5;
wire  signed [3:0] tmp_30_fu_3193_p7;
wire  signed [3:0] tmp_30_fu_3193_p9;
wire  signed [3:0] tmp_30_fu_3193_p11;
wire   [3:0] tmp_30_fu_3193_p13;
wire   [3:0] tmp_30_fu_3193_p15;
wire   [3:0] tmp_30_fu_3193_p17;
wire   [3:0] tmp_30_fu_3193_p19;
wire   [3:0] tmp_30_fu_3193_p21;
wire   [3:0] tmp_30_fu_3193_p23;
wire   [3:0] tmp_30_fu_3193_p25;
wire   [3:0] tmp_31_fu_3252_p1;
wire   [3:0] tmp_31_fu_3252_p3;
wire   [3:0] tmp_31_fu_3252_p5;
wire  signed [3:0] tmp_31_fu_3252_p7;
wire  signed [3:0] tmp_31_fu_3252_p9;
wire  signed [3:0] tmp_31_fu_3252_p11;
wire  signed [3:0] tmp_31_fu_3252_p13;
wire  signed [3:0] tmp_31_fu_3252_p15;
wire   [3:0] tmp_31_fu_3252_p17;
wire   [3:0] tmp_31_fu_3252_p19;
wire   [3:0] tmp_31_fu_3252_p21;
wire   [3:0] tmp_31_fu_3252_p23;
wire   [3:0] tmp_31_fu_3252_p25;
wire  signed [3:0] tmp_32_fu_3311_p1;
wire   [3:0] tmp_32_fu_3311_p3;
wire   [3:0] tmp_32_fu_3311_p5;
wire   [3:0] tmp_32_fu_3311_p7;
wire   [3:0] tmp_32_fu_3311_p9;
wire   [3:0] tmp_32_fu_3311_p11;
wire   [3:0] tmp_32_fu_3311_p13;
wire   [3:0] tmp_32_fu_3311_p15;
wire   [3:0] tmp_32_fu_3311_p17;
wire  signed [3:0] tmp_32_fu_3311_p19;
wire  signed [3:0] tmp_32_fu_3311_p21;
wire  signed [3:0] tmp_32_fu_3311_p23;
wire  signed [3:0] tmp_32_fu_3311_p25;
wire  signed [3:0] tmp_33_fu_3370_p1;
wire  signed [3:0] tmp_33_fu_3370_p3;
wire  signed [3:0] tmp_33_fu_3370_p5;
wire   [3:0] tmp_33_fu_3370_p7;
wire   [3:0] tmp_33_fu_3370_p9;
wire   [3:0] tmp_33_fu_3370_p11;
wire   [3:0] tmp_33_fu_3370_p13;
wire   [3:0] tmp_33_fu_3370_p15;
wire   [3:0] tmp_33_fu_3370_p17;
wire   [3:0] tmp_33_fu_3370_p19;
wire   [3:0] tmp_33_fu_3370_p21;
wire  signed [3:0] tmp_33_fu_3370_p23;
wire  signed [3:0] tmp_33_fu_3370_p25;
wire   [3:0] tmp_34_fu_3429_p1;
wire   [3:0] tmp_34_fu_3429_p3;
wire   [3:0] tmp_34_fu_3429_p5;
wire   [3:0] tmp_34_fu_3429_p7;
wire  signed [3:0] tmp_34_fu_3429_p9;
wire  signed [3:0] tmp_34_fu_3429_p11;
wire  signed [3:0] tmp_34_fu_3429_p13;
wire  signed [3:0] tmp_34_fu_3429_p15;
wire  signed [3:0] tmp_34_fu_3429_p17;
wire   [3:0] tmp_34_fu_3429_p19;
wire   [3:0] tmp_34_fu_3429_p21;
wire   [3:0] tmp_34_fu_3429_p23;
wire   [3:0] tmp_34_fu_3429_p25;
wire   [3:0] tmp_35_fu_3488_p1;
wire   [3:0] tmp_35_fu_3488_p3;
wire   [3:0] tmp_35_fu_3488_p5;
wire   [3:0] tmp_35_fu_3488_p7;
wire   [3:0] tmp_35_fu_3488_p9;
wire   [3:0] tmp_35_fu_3488_p11;
wire  signed [3:0] tmp_35_fu_3488_p13;
wire  signed [3:0] tmp_35_fu_3488_p15;
wire  signed [3:0] tmp_35_fu_3488_p17;
wire  signed [3:0] tmp_35_fu_3488_p19;
wire  signed [3:0] tmp_35_fu_3488_p21;
wire   [3:0] tmp_35_fu_3488_p23;
wire   [3:0] tmp_35_fu_3488_p25;
wire  signed [3:0] tmp_36_fu_3547_p1;
wire  signed [3:0] tmp_36_fu_3547_p3;
wire  signed [3:0] tmp_36_fu_3547_p5;
wire  signed [3:0] tmp_36_fu_3547_p7;
wire   [3:0] tmp_36_fu_3547_p9;
wire   [3:0] tmp_36_fu_3547_p11;
wire   [3:0] tmp_36_fu_3547_p13;
wire   [3:0] tmp_36_fu_3547_p15;
wire   [3:0] tmp_36_fu_3547_p17;
wire   [3:0] tmp_36_fu_3547_p19;
wire   [3:0] tmp_36_fu_3547_p21;
wire   [3:0] tmp_36_fu_3547_p23;
wire  signed [3:0] tmp_36_fu_3547_p25;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 tid_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U529(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2171_p0),.din1(grp_fu_2171_p1),.ce(1'b1),.dout(grp_fu_2171_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U530(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2197_p0),.din1(grp_fu_2197_p1),.ce(1'b1),.dout(grp_fu_2197_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U531(.din0(mul_ln172_fu_2220_p0),.din1(mul_ln172_fu_2220_p1),.dout(mul_ln172_fu_2220_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U532(.din0(mul_ln172_1_fu_2242_p0),.din1(mul_ln172_1_fu_2242_p1),.dout(mul_ln172_1_fu_2242_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U533(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_s_fu_2662_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_s_fu_2662_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U534(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_21_fu_2721_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_21_fu_2721_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U535(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_22_fu_2780_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_22_fu_2780_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U536(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_23_fu_2839_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_23_fu_2839_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U537(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_24_fu_2898_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_24_fu_2898_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U538(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_25_fu_2957_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_25_fu_2957_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U539(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_26_fu_3016_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_26_fu_3016_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U540(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_27_fu_3075_p27),.sel(trunc_ln172_reg_3813_pp0_iter13_reg),.dout(tmp_27_fu_3075_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U541(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_29_fu_3134_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_29_fu_3134_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U542(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_30_fu_3193_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_30_fu_3193_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U543(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_31_fu_3252_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_31_fu_3252_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U544(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_32_fu_3311_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_32_fu_3311_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U545(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_33_fu_3370_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_33_fu_3370_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U546(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_34_fu_3429_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_34_fu_3429_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U547(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_35_fu_3488_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_35_fu_3488_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U548(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_36_fu_3547_p27),.sel(trunc_ln172_1_reg_3825_pp0_iter13_reg),.dout(tmp_36_fu_3547_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U549(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3646_p0),.din1(grp_fu_3646_p1),.din2(grp_fu_3646_p2),.ce(1'b1),.dout(grp_fu_3646_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U550(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3655_p0),.din1(grp_fu_3655_p1),.din2(grp_fu_3655_p2),.ce(1'b1),.dout(grp_fu_3655_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U551(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3664_p0),.din1(grp_fu_3664_p1),.din2(grp_fu_3664_p2),.ce(1'b1),.dout(grp_fu_3664_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U552(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3673_p0),.din1(grp_fu_3673_p1),.din2(grp_fu_3673_p2),.ce(1'b1),.dout(grp_fu_3673_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U553(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3682_p0),.din1(grp_fu_3682_p1),.din2(grp_fu_3682_p2),.ce(1'b1),.dout(grp_fu_3682_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U554(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3691_p0),.din1(grp_fu_3691_p1),.din2(grp_fu_3691_p2),.ce(1'b1),.dout(grp_fu_3691_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U555(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3700_p0),.din1(grp_fu_3700_p1),.din2(grp_fu_3700_p2),.ce(1'b1),.dout(grp_fu_3700_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U556(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3709_p0),.din1(grp_fu_3709_p1),.din2(grp_fu_3709_p2),.ce(1'b1),.dout(grp_fu_3709_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U557(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3718_p0),.din1(grp_fu_3718_p1),.din2(grp_fu_3718_p2),.ce(1'b1),.dout(grp_fu_3718_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U558(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3727_p0),.din1(grp_fu_3727_p1),.din2(grp_fu_3727_p2),.ce(1'b1),.dout(grp_fu_3727_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U559(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3736_p0),.din1(grp_fu_3736_p1),.din2(grp_fu_3736_p2),.ce(1'b1),.dout(grp_fu_3736_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U560(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3745_p0),.din1(grp_fu_3745_p1),.din2(grp_fu_3745_p2),.ce(1'b1),.dout(grp_fu_3745_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U561(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3754_p0),.din1(grp_fu_3754_p1),.din2(grp_fu_3754_p2),.ce(1'b1),.dout(grp_fu_3754_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U562(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3763_p0),.din1(grp_fu_3763_p1),.din2(grp_fu_3763_p2),.ce(1'b1),.dout(grp_fu_3763_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_2141_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_148 <= add_ln309_fu_2203_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_148 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        offset_1_reg_3796_pp0_iter2_reg[8 : 1] <= offset_1_reg_3796_pp0_iter1_reg[8 : 1];
        offset_1_reg_3796_pp0_iter3_reg[8 : 1] <= offset_1_reg_3796_pp0_iter2_reg[8 : 1];
        offset_1_reg_3796_pp0_iter4_reg[8 : 1] <= offset_1_reg_3796_pp0_iter3_reg[8 : 1];
        offset_1_reg_3796_pp0_iter5_reg[8 : 1] <= offset_1_reg_3796_pp0_iter4_reg[8 : 1];
        offset_1_reg_3796_pp0_iter6_reg[8 : 1] <= offset_1_reg_3796_pp0_iter5_reg[8 : 1];
        offset_1_reg_3796_pp0_iter7_reg[8 : 1] <= offset_1_reg_3796_pp0_iter6_reg[8 : 1];
        offset_1_reg_3796_pp0_iter8_reg[8 : 1] <= offset_1_reg_3796_pp0_iter7_reg[8 : 1];
        offset_1_reg_3796_pp0_iter9_reg[8 : 1] <= offset_1_reg_3796_pp0_iter8_reg[8 : 1];
        offset_reg_3789_pp0_iter2_reg <= offset_reg_3789_pp0_iter1_reg;
        offset_reg_3789_pp0_iter3_reg <= offset_reg_3789_pp0_iter2_reg;
        offset_reg_3789_pp0_iter4_reg <= offset_reg_3789_pp0_iter3_reg;
        offset_reg_3789_pp0_iter5_reg <= offset_reg_3789_pp0_iter4_reg;
        offset_reg_3789_pp0_iter6_reg <= offset_reg_3789_pp0_iter5_reg;
        offset_reg_3789_pp0_iter7_reg <= offset_reg_3789_pp0_iter6_reg;
        offset_reg_3789_pp0_iter8_reg <= offset_reg_3789_pp0_iter7_reg;
        offset_reg_3789_pp0_iter9_reg <= offset_reg_3789_pp0_iter8_reg;
        tid_2_reg_3779_pp0_iter10_reg <= tid_2_reg_3779_pp0_iter9_reg;
        tid_2_reg_3779_pp0_iter11_reg <= tid_2_reg_3779_pp0_iter10_reg;
        tid_2_reg_3779_pp0_iter12_reg <= tid_2_reg_3779_pp0_iter11_reg;
        tid_2_reg_3779_pp0_iter13_reg <= tid_2_reg_3779_pp0_iter12_reg;
        tid_2_reg_3779_pp0_iter14_reg <= tid_2_reg_3779_pp0_iter13_reg;
        tid_2_reg_3779_pp0_iter2_reg <= tid_2_reg_3779_pp0_iter1_reg;
        tid_2_reg_3779_pp0_iter3_reg <= tid_2_reg_3779_pp0_iter2_reg;
        tid_2_reg_3779_pp0_iter4_reg <= tid_2_reg_3779_pp0_iter3_reg;
        tid_2_reg_3779_pp0_iter5_reg <= tid_2_reg_3779_pp0_iter4_reg;
        tid_2_reg_3779_pp0_iter6_reg <= tid_2_reg_3779_pp0_iter5_reg;
        tid_2_reg_3779_pp0_iter7_reg <= tid_2_reg_3779_pp0_iter6_reg;
        tid_2_reg_3779_pp0_iter8_reg <= tid_2_reg_3779_pp0_iter7_reg;
        tid_2_reg_3779_pp0_iter9_reg <= tid_2_reg_3779_pp0_iter8_reg;
        tmp_100_reg_3808 <= {{mul_ln172_1_fu_2242_p2[18:13]}};
        tmp_100_reg_3808_pp0_iter11_reg <= tmp_100_reg_3808;
        tmp_100_reg_3808_pp0_iter12_reg <= tmp_100_reg_3808_pp0_iter11_reg;
        tmp_21_reg_4882 <= tmp_21_fu_2721_p29;
        tmp_22_reg_4887 <= tmp_22_fu_2780_p29;
        tmp_23_reg_4892 <= tmp_23_fu_2839_p29;
        tmp_24_reg_4897 <= tmp_24_fu_2898_p29;
        tmp_25_reg_4902 <= tmp_25_fu_2957_p29;
        tmp_26_reg_4907 <= tmp_26_fu_3016_p29;
        tmp_27_reg_4912 <= tmp_27_fu_3075_p29;
        tmp_29_reg_4917 <= tmp_29_fu_3134_p29;
        tmp_30_reg_4922 <= tmp_30_fu_3193_p29;
        tmp_31_reg_4927 <= tmp_31_fu_3252_p29;
        tmp_32_reg_4932 <= tmp_32_fu_3311_p29;
        tmp_33_reg_4937 <= tmp_33_fu_3370_p29;
        tmp_34_reg_4942 <= tmp_34_fu_3429_p29;
        tmp_35_reg_4947 <= tmp_35_fu_3488_p29;
        tmp_36_reg_4952 <= tmp_36_fu_3547_p29;
        tmp_90_reg_3803 <= {{mul_ln172_fu_2220_p2[18:13]}};
        tmp_90_reg_3803_pp0_iter11_reg <= tmp_90_reg_3803;
        tmp_90_reg_3803_pp0_iter12_reg <= tmp_90_reg_3803_pp0_iter11_reg;
        tmp_s_reg_4877 <= tmp_s_fu_2662_p29;
        trunc_ln172_1_reg_3825 <= trunc_ln172_1_fu_2262_p1;
        trunc_ln172_1_reg_3825_pp0_iter13_reg <= trunc_ln172_1_reg_3825;
        trunc_ln172_reg_3813 <= trunc_ln172_fu_2258_p1;
        trunc_ln172_reg_3813_pp0_iter13_reg <= trunc_ln172_reg_3813;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_1_reg_3796[8 : 1] <= offset_1_fu_2187_p4[8 : 1];
        offset_1_reg_3796_pp0_iter1_reg[8 : 1] <= offset_1_reg_3796[8 : 1];
        offset_reg_3789 <= offset_fu_2163_p3;
        offset_reg_3789_pp0_iter1_reg <= offset_reg_3789;
        tid_2_reg_3779 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_3779_pp0_iter1_reg <= tid_2_reg_3779;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we1_local = 1'b1;
    end else begin
        DATA_x_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we1_local = 1'b1;
    end else begin
        DATA_x_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we1_local = 1'b1;
    end else begin
        DATA_x_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we1_local = 1'b1;
    end else begin
        DATA_x_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_2141_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_10_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_10_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_10_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_10_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_10_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_10_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_10_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_10_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_10_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_10_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_10_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_10_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_10_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_10_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_10_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_11_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_11_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_11_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_11_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_11_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_11_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_11_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_11_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_11_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_11_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_11_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_11_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_11_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_11_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_11_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_11_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_12_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_12_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_12_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_12_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_12_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_12_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_12_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_12_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_12_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_12_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_12_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_12_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_12_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_12_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_12_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_12_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_12_address1_local = 'bx;
        end
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_1_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_1_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_1_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_1_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_1_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_1_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_1_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_1_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_1_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_1_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_1_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_1_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_1_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_1_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_1_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_2_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_2_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_2_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_2_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_2_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_2_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_2_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_2_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_2_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_2_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_2_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_2_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_2_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_2_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_2_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_3_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_3_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_3_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_3_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_3_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_3_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_3_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_3_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_3_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_3_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_3_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_3_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_3_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_3_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_3_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_4_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_4_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_4_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_4_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_4_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_4_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_4_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_4_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_4_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_4_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_4_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_4_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_4_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_4_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_4_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_5_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_5_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_5_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_5_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_5_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_5_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_5_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_5_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_5_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_5_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_5_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_5_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_5_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_5_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_5_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_6_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_6_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_6_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_6_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_6_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_6_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_6_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_6_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_6_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_6_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_6_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_6_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_6_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_6_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_6_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_7_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_7_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_7_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_7_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_7_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_7_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_7_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_7_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_7_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_7_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_7_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_7_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_7_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_7_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_7_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_8_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_8_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_8_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_8_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_8_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_8_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_8_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_8_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_8_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_8_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_8_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_8_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_8_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_8_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_8_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_9_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd11)) begin
            smem_9_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_9_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd6)) begin
            smem_9_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd8)) begin
            smem_9_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd1)) begin
            smem_9_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd3)) begin
            smem_9_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_9_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd11)) begin
            smem_9_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_9_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd6)) begin
            smem_9_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd8)) begin
            smem_9_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd1)) begin
            smem_9_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd3)) begin
            smem_9_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_9_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_1_reg_3825 == 4'd9)) begin
            smem_address0_local = zext_ln321_1_fu_2645_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd2)) begin
            smem_address0_local = zext_ln320_1_fu_2619_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd4)) begin
            smem_address0_local = zext_ln319_1_fu_2593_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd10)) begin
            smem_address0_local = zext_ln318_1_fu_2567_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd12)) begin
            smem_address0_local = zext_ln317_1_fu_2541_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd5)) begin
            smem_address0_local = zext_ln316_1_fu_2515_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd7)) begin
            smem_address0_local = zext_ln315_1_fu_2489_p1;
        end else if ((trunc_ln172_1_reg_3825 == 4'd0)) begin
            smem_address0_local = zext_ln172_5_fu_2464_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3813 == 4'd9)) begin
            smem_address1_local = zext_ln321_fu_2447_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd2)) begin
            smem_address1_local = zext_ln320_fu_2421_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd4)) begin
            smem_address1_local = zext_ln319_fu_2395_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd10)) begin
            smem_address1_local = zext_ln318_fu_2369_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd12)) begin
            smem_address1_local = zext_ln317_fu_2343_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd5)) begin
            smem_address1_local = zext_ln316_fu_2317_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd7)) begin
            smem_address1_local = zext_ln315_fu_2291_p1;
        end else if ((trunc_ln172_reg_3813 == 4'd0)) begin
            smem_address1_local = zext_ln172_2_fu_2266_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_1_reg_3825 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3813 == 4'd0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_1_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = tmp_31_reg_4927;
assign DATA_x_1_d1 = tmp_22_reg_4887;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_2_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = tmp_33_reg_4937;
assign DATA_x_2_d1 = tmp_24_reg_4897;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_3_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = tmp_35_reg_4947;
assign DATA_x_3_d1 = tmp_26_reg_4907;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_4_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_4_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_4_d0 = tmp_30_reg_4922;
assign DATA_x_4_d1 = tmp_21_reg_4882;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_4_we1 = DATA_x_4_we1_local;
assign DATA_x_5_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_5_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_5_d0 = tmp_32_reg_4932;
assign DATA_x_5_d1 = tmp_23_reg_4892;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_5_we1 = DATA_x_5_we1_local;
assign DATA_x_6_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_6_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_6_d0 = tmp_34_reg_4942;
assign DATA_x_6_d1 = tmp_25_reg_4902;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_6_we1 = DATA_x_6_we1_local;
assign DATA_x_7_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_7_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_7_d0 = tmp_36_reg_4952;
assign DATA_x_7_d1 = tmp_27_reg_4912;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_7_we1 = DATA_x_7_we1_local;
assign DATA_x_address0 = zext_ln312_fu_3634_p1;
assign DATA_x_address1 = zext_ln309_fu_3606_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = tmp_29_reg_4917;
assign DATA_x_d1 = tmp_s_reg_4877;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_2203_p2 = (ap_sig_allocacmp_tid_2 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_2171_p0 = {{tmp_89_fu_2149_p4}, {trunc_ln312_fu_2159_p1}};
assign grp_fu_2171_p1 = 9'd13;
assign grp_fu_2197_p0 = {{{tmp_89_fu_2149_p4}, {tmp_99_fu_2177_p4}}, {1'd1}};
assign grp_fu_2197_p1 = 9'd13;
assign grp_fu_3646_p0 = zext_ln172_fu_2214_p1;
assign grp_fu_3646_p1 = 10'd32;
assign grp_fu_3646_p2 = 21'd1261;
assign grp_fu_3655_p0 = zext_ln172_fu_2214_p1;
assign grp_fu_3655_p1 = 10'd8;
assign grp_fu_3655_p2 = 21'd1261;
assign grp_fu_3664_p0 = zext_ln172_fu_2214_p1;
assign grp_fu_3664_p1 = 10'd40;
assign grp_fu_3664_p2 = 21'd1261;
assign grp_fu_3673_p0 = zext_ln172_fu_2214_p1;
assign grp_fu_3673_p1 = 10'd16;
assign grp_fu_3673_p2 = 21'd1261;
assign grp_fu_3682_p0 = zext_ln172_fu_2214_p1;
assign grp_fu_3682_p1 = 10'd48;
assign grp_fu_3682_p2 = 21'd1261;
assign grp_fu_3691_p0 = zext_ln172_fu_2214_p1;
assign grp_fu_3691_p1 = 10'd24;
assign grp_fu_3691_p2 = 21'd1261;
assign grp_fu_3700_p0 = zext_ln172_fu_2214_p1;
assign grp_fu_3700_p1 = 10'd56;
assign grp_fu_3700_p2 = 21'd1261;
assign grp_fu_3709_p0 = zext_ln172_3_fu_2236_p1;
assign grp_fu_3709_p1 = 10'd32;
assign grp_fu_3709_p2 = 21'd1261;
assign grp_fu_3718_p0 = zext_ln172_3_fu_2236_p1;
assign grp_fu_3718_p1 = 10'd8;
assign grp_fu_3718_p2 = 21'd1261;
assign grp_fu_3727_p0 = zext_ln172_3_fu_2236_p1;
assign grp_fu_3727_p1 = 10'd40;
assign grp_fu_3727_p2 = 21'd1261;
assign grp_fu_3736_p0 = zext_ln172_3_fu_2236_p1;
assign grp_fu_3736_p1 = 10'd16;
assign grp_fu_3736_p2 = 21'd1261;
assign grp_fu_3745_p0 = zext_ln172_3_fu_2236_p1;
assign grp_fu_3745_p1 = 10'd48;
assign grp_fu_3745_p2 = 21'd1261;
assign grp_fu_3754_p0 = zext_ln172_3_fu_2236_p1;
assign grp_fu_3754_p1 = 10'd24;
assign grp_fu_3754_p2 = 21'd1261;
assign grp_fu_3763_p0 = zext_ln172_3_fu_2236_p1;
assign grp_fu_3763_p1 = 10'd56;
assign grp_fu_3763_p2 = 21'd1261;
assign mul_ln172_1_fu_2242_p0 = mul_ln172_1_fu_2242_p00;
assign mul_ln172_1_fu_2242_p00 = offset_1_reg_3796_pp0_iter9_reg;
assign mul_ln172_1_fu_2242_p1 = 19'd631;
assign mul_ln172_fu_2220_p0 = mul_ln172_fu_2220_p00;
assign mul_ln172_fu_2220_p00 = offset_reg_3789_pp0_iter9_reg;
assign mul_ln172_fu_2220_p1 = 19'd631;
assign offset_1_fu_2187_p4 = {{{tmp_89_fu_2149_p4}, {tmp_99_fu_2177_p4}}, {1'd1}};
assign offset_fu_2163_p3 = {{tmp_89_fu_2149_p4}, {trunc_ln312_fu_2159_p1}};
assign or_ln_fu_3626_p3 = {{tmp_28_fu_3617_p4}, {1'd1}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = smem_12_address1_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
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
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_101_fu_2480_p1 = grp_fu_3709_p3;
assign tmp_101_fu_2480_p4 = {{tmp_101_fu_2480_p1[20:14]}};
assign tmp_102_fu_2506_p1 = grp_fu_3718_p3;
assign tmp_102_fu_2506_p4 = {{tmp_102_fu_2506_p1[20:14]}};
assign tmp_103_fu_2532_p1 = grp_fu_3727_p3;
assign tmp_103_fu_2532_p4 = {{tmp_103_fu_2532_p1[20:14]}};
assign tmp_104_fu_2558_p1 = grp_fu_3736_p3;
assign tmp_104_fu_2558_p4 = {{tmp_104_fu_2558_p1[20:14]}};
assign tmp_105_fu_2584_p1 = grp_fu_3745_p3;
assign tmp_105_fu_2584_p4 = {{tmp_105_fu_2584_p1[20:14]}};
assign tmp_106_fu_2610_p1 = grp_fu_3754_p3;
assign tmp_106_fu_2610_p4 = {{tmp_106_fu_2610_p1[20:14]}};
assign tmp_107_fu_2636_p1 = grp_fu_3763_p3;
assign tmp_107_fu_2636_p4 = {{tmp_107_fu_2636_p1[20:14]}};
assign tmp_21_fu_2721_p27 = 'bx;
assign tmp_22_fu_2780_p27 = 'bx;
assign tmp_23_fu_2839_p27 = 'bx;
assign tmp_24_fu_2898_p27 = 'bx;
assign tmp_25_fu_2957_p27 = 'bx;
assign tmp_26_fu_3016_p27 = 'bx;
assign tmp_27_fu_3075_p27 = 'bx;
assign tmp_28_fu_3617_p4 = {{tid_2_reg_3779_pp0_iter14_reg[5:1]}};
assign tmp_29_fu_3134_p27 = 'bx;
assign tmp_30_fu_3193_p27 = 'bx;
assign tmp_31_fu_3252_p27 = 'bx;
assign tmp_32_fu_3311_p27 = 'bx;
assign tmp_33_fu_3370_p27 = 'bx;
assign tmp_34_fu_3429_p27 = 'bx;
assign tmp_35_fu_3488_p27 = 'bx;
assign tmp_36_fu_3547_p27 = 'bx;
assign tmp_89_fu_2149_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_92_fu_2282_p1 = grp_fu_3646_p3;
assign tmp_92_fu_2282_p4 = {{tmp_92_fu_2282_p1[20:14]}};
assign tmp_93_fu_2308_p1 = grp_fu_3655_p3;
assign tmp_93_fu_2308_p4 = {{tmp_93_fu_2308_p1[20:14]}};
assign tmp_94_fu_2334_p1 = grp_fu_3664_p3;
assign tmp_94_fu_2334_p4 = {{tmp_94_fu_2334_p1[20:14]}};
assign tmp_95_fu_2360_p1 = grp_fu_3673_p3;
assign tmp_95_fu_2360_p4 = {{tmp_95_fu_2360_p1[20:14]}};
assign tmp_96_fu_2386_p1 = grp_fu_3682_p3;
assign tmp_96_fu_2386_p4 = {{tmp_96_fu_2386_p1[20:14]}};
assign tmp_97_fu_2412_p1 = grp_fu_3691_p3;
assign tmp_97_fu_2412_p4 = {{tmp_97_fu_2412_p1[20:14]}};
assign tmp_98_fu_2438_p1 = grp_fu_3700_p3;
assign tmp_98_fu_2438_p4 = {{tmp_98_fu_2438_p1[20:14]}};
assign tmp_99_fu_2177_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_fu_2141_p3 = ap_sig_allocacmp_tid_2[32'd6];
assign tmp_s_fu_2662_p27 = 'bx;
assign trunc_ln172_1_fu_2262_p1 = grp_fu_2197_p2[3:0];
assign trunc_ln172_fu_2258_p1 = grp_fu_2171_p2[3:0];
assign trunc_ln312_fu_2159_p1 = ap_sig_allocacmp_tid_2[5:0];
assign zext_ln172_2_fu_2266_p1 = tmp_90_reg_3803_pp0_iter12_reg;
assign zext_ln172_3_fu_2236_p1 = offset_1_reg_3796_pp0_iter9_reg;
assign zext_ln172_5_fu_2464_p1 = tmp_100_reg_3808_pp0_iter12_reg;
assign zext_ln172_fu_2214_p1 = offset_reg_3789_pp0_iter9_reg;
assign zext_ln309_fu_3606_p1 = tid_2_reg_3779_pp0_iter14_reg;
assign zext_ln312_fu_3634_p1 = or_ln_fu_3626_p3;
assign zext_ln315_1_fu_2489_p1 = tmp_101_fu_2480_p4;
assign zext_ln315_fu_2291_p1 = tmp_92_fu_2282_p4;
assign zext_ln316_1_fu_2515_p1 = tmp_102_fu_2506_p4;
assign zext_ln316_fu_2317_p1 = tmp_93_fu_2308_p4;
assign zext_ln317_1_fu_2541_p1 = tmp_103_fu_2532_p4;
assign zext_ln317_fu_2343_p1 = tmp_94_fu_2334_p4;
assign zext_ln318_1_fu_2567_p1 = tmp_104_fu_2558_p4;
assign zext_ln318_fu_2369_p1 = tmp_95_fu_2360_p4;
assign zext_ln319_1_fu_2593_p1 = tmp_105_fu_2584_p4;
assign zext_ln319_fu_2395_p1 = tmp_96_fu_2386_p4;
assign zext_ln320_1_fu_2619_p1 = tmp_106_fu_2610_p4;
assign zext_ln320_fu_2421_p1 = tmp_97_fu_2412_p4;
assign zext_ln321_1_fu_2645_p1 = tmp_107_fu_2636_p4;
assign zext_ln321_fu_2447_p1 = tmp_98_fu_2438_p4;
always @ (posedge ap_clk) begin
    offset_1_reg_3796[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter2_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter3_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter4_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter5_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter6_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter7_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter8_reg[0] <= 1'b1;
    offset_1_reg_3796_pp0_iter9_reg[0] <= 1'b1;
end
endmodule 