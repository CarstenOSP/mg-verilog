module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_we0,DATA_x_15_d0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_we0,DATA_x_14_d0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_we0,DATA_x_13_d0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_we0,DATA_x_12_d0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_we0,DATA_x_11_d0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_we0,DATA_x_10_d0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_we0,DATA_x_9_d0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_we0,DATA_x_8_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
output   DATA_x_15_we0;
output  [63:0] DATA_x_15_d0;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
output   DATA_x_14_we0;
output  [63:0] DATA_x_14_d0;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
output   DATA_x_13_we0;
output  [63:0] DATA_x_13_d0;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
output   DATA_x_12_we0;
output  [63:0] DATA_x_12_d0;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
output   DATA_x_11_we0;
output  [63:0] DATA_x_11_d0;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
output   DATA_x_10_we0;
output  [63:0] DATA_x_10_d0;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
output   DATA_x_9_we0;
output  [63:0] DATA_x_9_d0;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
output   DATA_x_8_we0;
output  [63:0] DATA_x_8_d0;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
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
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
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
wire   [0:0] icmp_ln309_fu_1273_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln309_fu_1285_p1;
reg   [0:0] trunc_ln309_reg_2121;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter1_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter2_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter3_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter4_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter5_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter6_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter7_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter8_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter9_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter10_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter11_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter12_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter13_reg;
reg   [0:0] trunc_ln309_reg_2121_pp0_iter14_reg;
wire   [8:0] offset_fu_1303_p3;
reg   [8:0] offset_reg_2125;
reg   [8:0] offset_reg_2125_pp0_iter1_reg;
reg   [8:0] offset_reg_2125_pp0_iter2_reg;
reg   [8:0] offset_reg_2125_pp0_iter3_reg;
reg   [8:0] offset_reg_2125_pp0_iter4_reg;
reg   [8:0] offset_reg_2125_pp0_iter5_reg;
reg   [8:0] offset_reg_2125_pp0_iter6_reg;
reg   [8:0] offset_reg_2125_pp0_iter7_reg;
reg   [8:0] offset_reg_2125_pp0_iter8_reg;
reg   [8:0] offset_reg_2125_pp0_iter9_reg;
reg   [4:0] lshr_ln7_reg_2132;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter1_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter2_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter3_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter4_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter5_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter6_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter7_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter8_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter9_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter10_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter11_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter12_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter13_reg;
reg   [4:0] lshr_ln7_reg_2132_pp0_iter14_reg;
reg   [5:0] tmp_63_reg_2137;
reg   [5:0] tmp_63_reg_2137_pp0_iter11_reg;
reg   [5:0] tmp_63_reg_2137_pp0_iter12_reg;
wire   [3:0] trunc_ln172_fu_1354_p1;
reg   [3:0] trunc_ln172_reg_2142;
reg   [3:0] trunc_ln172_reg_2142_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_1556_p29;
reg   [63:0] tmp_s_reg_2674;
wire   [63:0] tmp_20_fu_1615_p29;
reg   [63:0] tmp_20_reg_2680;
wire   [63:0] tmp_21_fu_1674_p29;
reg   [63:0] tmp_21_reg_2686;
wire   [63:0] tmp_22_fu_1733_p29;
reg   [63:0] tmp_22_reg_2692;
wire   [63:0] tmp_23_fu_1792_p29;
reg   [63:0] tmp_23_reg_2698;
wire   [63:0] tmp_24_fu_1851_p29;
reg   [63:0] tmp_24_reg_2704;
wire   [63:0] tmp_25_fu_1910_p29;
reg   [63:0] tmp_25_reg_2710;
wire   [63:0] tmp_26_fu_1969_p29;
reg   [63:0] tmp_26_reg_2716;
wire   [63:0] zext_ln172_13_fu_1358_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_1383_p1;
wire   [63:0] zext_ln316_fu_1409_p1;
wire   [63:0] zext_ln317_fu_1435_p1;
wire   [63:0] zext_ln318_fu_1461_p1;
wire   [63:0] zext_ln319_fu_1487_p1;
wire   [63:0] zext_ln320_fu_1513_p1;
wire   [63:0] zext_ln321_fu_1539_p1;
wire   [63:0] zext_ln314_fu_2028_p1;
reg   [6:0] tid_fu_156;
wire   [6:0] add_ln309_fu_1279_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
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
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_8_we0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_12_we0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_9_we0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_13_we0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_10_we0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_14_we0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_11_we0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_15_we0_local;
reg    DATA_x_15_ce0_local;
wire   [2:0] tmp_fu_1289_p4;
wire   [5:0] trunc_ln312_fu_1299_p1;
wire   [8:0] grp_fu_1311_p0;
wire   [4:0] grp_fu_1311_p1;
wire   [8:0] mul_ln172_fu_1338_p0;
wire   [10:0] mul_ln172_fu_1338_p1;
wire   [18:0] mul_ln172_fu_1338_p2;
wire   [3:0] grp_fu_1311_p2;
wire   [20:0] tmp_64_fu_1374_p1;
wire  signed [20:0] grp_fu_2047_p3;
wire   [6:0] tmp_64_fu_1374_p4;
wire   [20:0] tmp_65_fu_1400_p1;
wire  signed [20:0] grp_fu_2056_p3;
wire   [6:0] tmp_65_fu_1400_p4;
wire   [20:0] tmp_66_fu_1426_p1;
wire  signed [20:0] grp_fu_2065_p3;
wire   [6:0] tmp_66_fu_1426_p4;
wire   [20:0] tmp_67_fu_1452_p1;
wire  signed [20:0] grp_fu_2074_p3;
wire   [6:0] tmp_67_fu_1452_p4;
wire   [20:0] tmp_68_fu_1478_p1;
wire  signed [20:0] grp_fu_2083_p3;
wire   [6:0] tmp_68_fu_1478_p4;
wire   [20:0] tmp_69_fu_1504_p1;
wire  signed [20:0] grp_fu_2092_p3;
wire   [6:0] tmp_69_fu_1504_p4;
wire   [20:0] tmp_70_fu_1530_p1;
wire  signed [20:0] grp_fu_2101_p3;
wire   [6:0] tmp_70_fu_1530_p4;
wire   [63:0] tmp_s_fu_1556_p27;
wire   [63:0] tmp_20_fu_1615_p27;
wire   [63:0] tmp_21_fu_1674_p27;
wire   [63:0] tmp_22_fu_1733_p27;
wire   [63:0] tmp_23_fu_1792_p27;
wire   [63:0] tmp_24_fu_1851_p27;
wire   [63:0] tmp_25_fu_1910_p27;
wire   [63:0] tmp_26_fu_1969_p27;
wire   [8:0] grp_fu_2047_p0;
wire   [9:0] zext_ln172_fu_1332_p1;
wire   [5:0] grp_fu_2047_p1;
wire   [10:0] grp_fu_2047_p2;
wire   [8:0] grp_fu_2056_p0;
wire   [3:0] grp_fu_2056_p1;
wire   [10:0] grp_fu_2056_p2;
wire   [8:0] grp_fu_2065_p0;
wire   [5:0] grp_fu_2065_p1;
wire   [10:0] grp_fu_2065_p2;
wire   [8:0] grp_fu_2074_p0;
wire   [4:0] grp_fu_2074_p1;
wire   [10:0] grp_fu_2074_p2;
wire   [8:0] grp_fu_2083_p0;
wire   [5:0] grp_fu_2083_p1;
wire   [10:0] grp_fu_2083_p2;
wire   [8:0] grp_fu_2092_p0;
wire   [4:0] grp_fu_2092_p1;
wire   [10:0] grp_fu_2092_p2;
wire   [8:0] grp_fu_2101_p0;
wire   [5:0] grp_fu_2101_p1;
wire   [10:0] grp_fu_2101_p2;
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
wire   [18:0] mul_ln172_fu_1338_p00;
wire   [3:0] tmp_s_fu_1556_p1;
wire   [3:0] tmp_s_fu_1556_p3;
wire   [3:0] tmp_s_fu_1556_p5;
wire   [3:0] tmp_s_fu_1556_p7;
wire   [3:0] tmp_s_fu_1556_p9;
wire   [3:0] tmp_s_fu_1556_p11;
wire   [3:0] tmp_s_fu_1556_p13;
wire   [3:0] tmp_s_fu_1556_p15;
wire  signed [3:0] tmp_s_fu_1556_p17;
wire  signed [3:0] tmp_s_fu_1556_p19;
wire  signed [3:0] tmp_s_fu_1556_p21;
wire  signed [3:0] tmp_s_fu_1556_p23;
wire  signed [3:0] tmp_s_fu_1556_p25;
wire   [3:0] tmp_20_fu_1615_p1;
wire  signed [3:0] tmp_20_fu_1615_p3;
wire  signed [3:0] tmp_20_fu_1615_p5;
wire  signed [3:0] tmp_20_fu_1615_p7;
wire  signed [3:0] tmp_20_fu_1615_p9;
wire  signed [3:0] tmp_20_fu_1615_p11;
wire   [3:0] tmp_20_fu_1615_p13;
wire   [3:0] tmp_20_fu_1615_p15;
wire   [3:0] tmp_20_fu_1615_p17;
wire   [3:0] tmp_20_fu_1615_p19;
wire   [3:0] tmp_20_fu_1615_p21;
wire   [3:0] tmp_20_fu_1615_p23;
wire   [3:0] tmp_20_fu_1615_p25;
wire   [3:0] tmp_21_fu_1674_p1;
wire   [3:0] tmp_21_fu_1674_p3;
wire   [3:0] tmp_21_fu_1674_p5;
wire  signed [3:0] tmp_21_fu_1674_p7;
wire  signed [3:0] tmp_21_fu_1674_p9;
wire  signed [3:0] tmp_21_fu_1674_p11;
wire  signed [3:0] tmp_21_fu_1674_p13;
wire  signed [3:0] tmp_21_fu_1674_p15;
wire   [3:0] tmp_21_fu_1674_p17;
wire   [3:0] tmp_21_fu_1674_p19;
wire   [3:0] tmp_21_fu_1674_p21;
wire   [3:0] tmp_21_fu_1674_p23;
wire   [3:0] tmp_21_fu_1674_p25;
wire  signed [3:0] tmp_22_fu_1733_p1;
wire   [3:0] tmp_22_fu_1733_p3;
wire   [3:0] tmp_22_fu_1733_p5;
wire   [3:0] tmp_22_fu_1733_p7;
wire   [3:0] tmp_22_fu_1733_p9;
wire   [3:0] tmp_22_fu_1733_p11;
wire   [3:0] tmp_22_fu_1733_p13;
wire   [3:0] tmp_22_fu_1733_p15;
wire   [3:0] tmp_22_fu_1733_p17;
wire  signed [3:0] tmp_22_fu_1733_p19;
wire  signed [3:0] tmp_22_fu_1733_p21;
wire  signed [3:0] tmp_22_fu_1733_p23;
wire  signed [3:0] tmp_22_fu_1733_p25;
wire  signed [3:0] tmp_23_fu_1792_p1;
wire  signed [3:0] tmp_23_fu_1792_p3;
wire  signed [3:0] tmp_23_fu_1792_p5;
wire   [3:0] tmp_23_fu_1792_p7;
wire   [3:0] tmp_23_fu_1792_p9;
wire   [3:0] tmp_23_fu_1792_p11;
wire   [3:0] tmp_23_fu_1792_p13;
wire   [3:0] tmp_23_fu_1792_p15;
wire   [3:0] tmp_23_fu_1792_p17;
wire   [3:0] tmp_23_fu_1792_p19;
wire   [3:0] tmp_23_fu_1792_p21;
wire  signed [3:0] tmp_23_fu_1792_p23;
wire  signed [3:0] tmp_23_fu_1792_p25;
wire   [3:0] tmp_24_fu_1851_p1;
wire   [3:0] tmp_24_fu_1851_p3;
wire   [3:0] tmp_24_fu_1851_p5;
wire   [3:0] tmp_24_fu_1851_p7;
wire  signed [3:0] tmp_24_fu_1851_p9;
wire  signed [3:0] tmp_24_fu_1851_p11;
wire  signed [3:0] tmp_24_fu_1851_p13;
wire  signed [3:0] tmp_24_fu_1851_p15;
wire  signed [3:0] tmp_24_fu_1851_p17;
wire   [3:0] tmp_24_fu_1851_p19;
wire   [3:0] tmp_24_fu_1851_p21;
wire   [3:0] tmp_24_fu_1851_p23;
wire   [3:0] tmp_24_fu_1851_p25;
wire   [3:0] tmp_25_fu_1910_p1;
wire   [3:0] tmp_25_fu_1910_p3;
wire   [3:0] tmp_25_fu_1910_p5;
wire   [3:0] tmp_25_fu_1910_p7;
wire   [3:0] tmp_25_fu_1910_p9;
wire   [3:0] tmp_25_fu_1910_p11;
wire  signed [3:0] tmp_25_fu_1910_p13;
wire  signed [3:0] tmp_25_fu_1910_p15;
wire  signed [3:0] tmp_25_fu_1910_p17;
wire  signed [3:0] tmp_25_fu_1910_p19;
wire  signed [3:0] tmp_25_fu_1910_p21;
wire   [3:0] tmp_25_fu_1910_p23;
wire   [3:0] tmp_25_fu_1910_p25;
wire  signed [3:0] tmp_26_fu_1969_p1;
wire  signed [3:0] tmp_26_fu_1969_p3;
wire  signed [3:0] tmp_26_fu_1969_p5;
wire  signed [3:0] tmp_26_fu_1969_p7;
wire   [3:0] tmp_26_fu_1969_p9;
wire   [3:0] tmp_26_fu_1969_p11;
wire   [3:0] tmp_26_fu_1969_p13;
wire   [3:0] tmp_26_fu_1969_p15;
wire   [3:0] tmp_26_fu_1969_p17;
wire   [3:0] tmp_26_fu_1969_p19;
wire   [3:0] tmp_26_fu_1969_p21;
wire   [3:0] tmp_26_fu_1969_p23;
wire  signed [3:0] tmp_26_fu_1969_p25;
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
#0 tid_fu_156 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U680(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1311_p0),.din1(grp_fu_1311_p1),.ce(1'b1),.dout(grp_fu_1311_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U681(.din0(mul_ln172_fu_1338_p0),.din1(mul_ln172_fu_1338_p1),.dout(mul_ln172_fu_1338_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U682(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_s_fu_1556_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_s_fu_1556_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U683(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_20_fu_1615_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_20_fu_1615_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U684(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_21_fu_1674_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_21_fu_1674_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U685(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_22_fu_1733_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_22_fu_1733_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U686(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_23_fu_1792_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_23_fu_1792_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U687(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_24_fu_1851_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_24_fu_1851_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U688(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_25_fu_1910_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_25_fu_1910_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U689(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_26_fu_1969_p27),.sel(trunc_ln172_reg_2142_pp0_iter13_reg),.dout(tmp_26_fu_1969_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U690(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2047_p0),.din1(grp_fu_2047_p1),.din2(grp_fu_2047_p2),.ce(1'b1),.dout(grp_fu_2047_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U691(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2056_p0),.din1(grp_fu_2056_p1),.din2(grp_fu_2056_p2),.ce(1'b1),.dout(grp_fu_2056_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U692(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2065_p0),.din1(grp_fu_2065_p1),.din2(grp_fu_2065_p2),.ce(1'b1),.dout(grp_fu_2065_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U693(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2074_p0),.din1(grp_fu_2074_p1),.din2(grp_fu_2074_p2),.ce(1'b1),.dout(grp_fu_2074_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U694(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2083_p0),.din1(grp_fu_2083_p1),.din2(grp_fu_2083_p2),.ce(1'b1),.dout(grp_fu_2083_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U695(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2092_p0),.din1(grp_fu_2092_p1),.din2(grp_fu_2092_p2),.ce(1'b1),.dout(grp_fu_2092_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U696(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2101_p0),.din1(grp_fu_2101_p1),.din2(grp_fu_2101_p2),.ce(1'b1),.dout(grp_fu_2101_p3));
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
        if (((icmp_ln309_fu_1273_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_156 <= add_ln309_fu_1279_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_156 <= 7'd0;
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
        lshr_ln7_reg_2132_pp0_iter10_reg <= lshr_ln7_reg_2132_pp0_iter9_reg;
        lshr_ln7_reg_2132_pp0_iter11_reg <= lshr_ln7_reg_2132_pp0_iter10_reg;
        lshr_ln7_reg_2132_pp0_iter12_reg <= lshr_ln7_reg_2132_pp0_iter11_reg;
        lshr_ln7_reg_2132_pp0_iter13_reg <= lshr_ln7_reg_2132_pp0_iter12_reg;
        lshr_ln7_reg_2132_pp0_iter14_reg <= lshr_ln7_reg_2132_pp0_iter13_reg;
        lshr_ln7_reg_2132_pp0_iter2_reg <= lshr_ln7_reg_2132_pp0_iter1_reg;
        lshr_ln7_reg_2132_pp0_iter3_reg <= lshr_ln7_reg_2132_pp0_iter2_reg;
        lshr_ln7_reg_2132_pp0_iter4_reg <= lshr_ln7_reg_2132_pp0_iter3_reg;
        lshr_ln7_reg_2132_pp0_iter5_reg <= lshr_ln7_reg_2132_pp0_iter4_reg;
        lshr_ln7_reg_2132_pp0_iter6_reg <= lshr_ln7_reg_2132_pp0_iter5_reg;
        lshr_ln7_reg_2132_pp0_iter7_reg <= lshr_ln7_reg_2132_pp0_iter6_reg;
        lshr_ln7_reg_2132_pp0_iter8_reg <= lshr_ln7_reg_2132_pp0_iter7_reg;
        lshr_ln7_reg_2132_pp0_iter9_reg <= lshr_ln7_reg_2132_pp0_iter8_reg;
        offset_reg_2125_pp0_iter2_reg <= offset_reg_2125_pp0_iter1_reg;
        offset_reg_2125_pp0_iter3_reg <= offset_reg_2125_pp0_iter2_reg;
        offset_reg_2125_pp0_iter4_reg <= offset_reg_2125_pp0_iter3_reg;
        offset_reg_2125_pp0_iter5_reg <= offset_reg_2125_pp0_iter4_reg;
        offset_reg_2125_pp0_iter6_reg <= offset_reg_2125_pp0_iter5_reg;
        offset_reg_2125_pp0_iter7_reg <= offset_reg_2125_pp0_iter6_reg;
        offset_reg_2125_pp0_iter8_reg <= offset_reg_2125_pp0_iter7_reg;
        offset_reg_2125_pp0_iter9_reg <= offset_reg_2125_pp0_iter8_reg;
        tmp_20_reg_2680 <= tmp_20_fu_1615_p29;
        tmp_21_reg_2686 <= tmp_21_fu_1674_p29;
        tmp_22_reg_2692 <= tmp_22_fu_1733_p29;
        tmp_23_reg_2698 <= tmp_23_fu_1792_p29;
        tmp_24_reg_2704 <= tmp_24_fu_1851_p29;
        tmp_25_reg_2710 <= tmp_25_fu_1910_p29;
        tmp_26_reg_2716 <= tmp_26_fu_1969_p29;
        tmp_63_reg_2137 <= {{mul_ln172_fu_1338_p2[18:13]}};
        tmp_63_reg_2137_pp0_iter11_reg <= tmp_63_reg_2137;
        tmp_63_reg_2137_pp0_iter12_reg <= tmp_63_reg_2137_pp0_iter11_reg;
        tmp_s_reg_2674 <= tmp_s_fu_1556_p29;
        trunc_ln172_reg_2142 <= trunc_ln172_fu_1354_p1;
        trunc_ln172_reg_2142_pp0_iter13_reg <= trunc_ln172_reg_2142;
        trunc_ln309_reg_2121_pp0_iter10_reg <= trunc_ln309_reg_2121_pp0_iter9_reg;
        trunc_ln309_reg_2121_pp0_iter11_reg <= trunc_ln309_reg_2121_pp0_iter10_reg;
        trunc_ln309_reg_2121_pp0_iter12_reg <= trunc_ln309_reg_2121_pp0_iter11_reg;
        trunc_ln309_reg_2121_pp0_iter13_reg <= trunc_ln309_reg_2121_pp0_iter12_reg;
        trunc_ln309_reg_2121_pp0_iter14_reg <= trunc_ln309_reg_2121_pp0_iter13_reg;
        trunc_ln309_reg_2121_pp0_iter2_reg <= trunc_ln309_reg_2121_pp0_iter1_reg;
        trunc_ln309_reg_2121_pp0_iter3_reg <= trunc_ln309_reg_2121_pp0_iter2_reg;
        trunc_ln309_reg_2121_pp0_iter4_reg <= trunc_ln309_reg_2121_pp0_iter3_reg;
        trunc_ln309_reg_2121_pp0_iter5_reg <= trunc_ln309_reg_2121_pp0_iter4_reg;
        trunc_ln309_reg_2121_pp0_iter6_reg <= trunc_ln309_reg_2121_pp0_iter5_reg;
        trunc_ln309_reg_2121_pp0_iter7_reg <= trunc_ln309_reg_2121_pp0_iter6_reg;
        trunc_ln309_reg_2121_pp0_iter8_reg <= trunc_ln309_reg_2121_pp0_iter7_reg;
        trunc_ln309_reg_2121_pp0_iter9_reg <= trunc_ln309_reg_2121_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln7_reg_2132 <= {{ap_sig_allocacmp_tid_2[5:1]}};
        lshr_ln7_reg_2132_pp0_iter1_reg <= lshr_ln7_reg_2132;
        offset_reg_2125 <= offset_fu_1303_p3;
        offset_reg_2125_pp0_iter1_reg <= offset_reg_2125;
        trunc_ln309_reg_2121 <= trunc_ln309_fu_1285_p1;
        trunc_ln309_reg_2121_pp0_iter1_reg <= trunc_ln309_reg_2121;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_10_we0_local = 1'b1;
    end else begin
        DATA_x_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_11_we0_local = 1'b1;
    end else begin
        DATA_x_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_12_we0_local = 1'b1;
    end else begin
        DATA_x_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_13_we0_local = 1'b1;
    end else begin
        DATA_x_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_14_we0_local = 1'b1;
    end else begin
        DATA_x_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_15_we0_local = 1'b1;
    end else begin
        DATA_x_15_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_8_we0_local = 1'b1;
    end else begin
        DATA_x_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd1))) begin
        DATA_x_9_we0_local = 1'b1;
    end else begin
        DATA_x_9_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln309_reg_2121_pp0_iter14_reg == 1'd0))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln309_fu_1273_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_10_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_10_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_10_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_10_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_10_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_10_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_10_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_11_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_11_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_11_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_11_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_11_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_11_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_11_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_11_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_12_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_12_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_12_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_12_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_12_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_12_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_12_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_12_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_1_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_1_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_1_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_1_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_1_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_1_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_1_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_2_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_2_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_2_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_2_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_2_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_2_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_2_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_3_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_3_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_3_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_3_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_3_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_3_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_3_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_4_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_4_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_4_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_4_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_4_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_4_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_4_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_5_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_5_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_5_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_5_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_5_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_5_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_5_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_6_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_6_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_6_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_6_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_6_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_6_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_6_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_7_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_7_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_7_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_7_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_7_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_7_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_7_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_8_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_8_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_8_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_8_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_8_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_8_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_8_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_9_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd11)) begin
            smem_9_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_9_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd6)) begin
            smem_9_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd8)) begin
            smem_9_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd1)) begin
            smem_9_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd3)) begin
            smem_9_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2142 == 4'd9)) begin
            smem_address0_local = zext_ln321_fu_1539_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd2)) begin
            smem_address0_local = zext_ln320_fu_1513_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd4)) begin
            smem_address0_local = zext_ln319_fu_1487_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd10)) begin
            smem_address0_local = zext_ln318_fu_1461_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd12)) begin
            smem_address0_local = zext_ln317_fu_1435_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd5)) begin
            smem_address0_local = zext_ln316_fu_1409_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd7)) begin
            smem_address0_local = zext_ln315_fu_1383_p1;
        end else if ((trunc_ln172_reg_2142 == 4'd0)) begin
            smem_address0_local = zext_ln172_13_fu_1358_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2142 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
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
assign DATA_x_10_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_d0 = tmp_23_reg_2698;
assign DATA_x_10_we0 = DATA_x_10_we0_local;
assign DATA_x_11_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_d0 = tmp_25_reg_2710;
assign DATA_x_11_we0 = DATA_x_11_we0_local;
assign DATA_x_12_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_d0 = tmp_20_reg_2680;
assign DATA_x_12_we0 = DATA_x_12_we0_local;
assign DATA_x_13_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_d0 = tmp_22_reg_2692;
assign DATA_x_13_we0 = DATA_x_13_we0_local;
assign DATA_x_14_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_d0 = tmp_24_reg_2704;
assign DATA_x_14_we0 = DATA_x_14_we0_local;
assign DATA_x_15_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_d0 = tmp_26_reg_2716;
assign DATA_x_15_we0 = DATA_x_15_we0_local;
assign DATA_x_1_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = tmp_21_reg_2686;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = tmp_23_reg_2698;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = tmp_25_reg_2710;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = tmp_20_reg_2680;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = tmp_22_reg_2692;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = tmp_24_reg_2704;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = tmp_26_reg_2716;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_8_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_d0 = tmp_s_reg_2674;
assign DATA_x_8_we0 = DATA_x_8_we0_local;
assign DATA_x_9_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_d0 = tmp_21_reg_2686;
assign DATA_x_9_we0 = DATA_x_9_we0_local;
assign DATA_x_address0 = zext_ln314_fu_2028_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = tmp_s_reg_2674;
assign DATA_x_we0 = DATA_x_we0_local;
assign add_ln309_fu_1279_p2 = (ap_sig_allocacmp_tid_2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1311_p0 = {{tmp_fu_1289_p4}, {trunc_ln312_fu_1299_p1}};
assign grp_fu_1311_p1 = 9'd13;
assign grp_fu_2047_p0 = zext_ln172_fu_1332_p1;
assign grp_fu_2047_p1 = 10'd32;
assign grp_fu_2047_p2 = 21'd1261;
assign grp_fu_2056_p0 = zext_ln172_fu_1332_p1;
assign grp_fu_2056_p1 = 10'd8;
assign grp_fu_2056_p2 = 21'd1261;
assign grp_fu_2065_p0 = zext_ln172_fu_1332_p1;
assign grp_fu_2065_p1 = 10'd40;
assign grp_fu_2065_p2 = 21'd1261;
assign grp_fu_2074_p0 = zext_ln172_fu_1332_p1;
assign grp_fu_2074_p1 = 10'd16;
assign grp_fu_2074_p2 = 21'd1261;
assign grp_fu_2083_p0 = zext_ln172_fu_1332_p1;
assign grp_fu_2083_p1 = 10'd48;
assign grp_fu_2083_p2 = 21'd1261;
assign grp_fu_2092_p0 = zext_ln172_fu_1332_p1;
assign grp_fu_2092_p1 = 10'd24;
assign grp_fu_2092_p2 = 21'd1261;
assign grp_fu_2101_p0 = zext_ln172_fu_1332_p1;
assign grp_fu_2101_p1 = 10'd56;
assign grp_fu_2101_p2 = 21'd1261;
assign icmp_ln309_fu_1273_p2 = ((ap_sig_allocacmp_tid_2 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_1338_p0 = mul_ln172_fu_1338_p00;
assign mul_ln172_fu_1338_p00 = offset_reg_2125_pp0_iter9_reg;
assign mul_ln172_fu_1338_p1 = 19'd631;
assign offset_fu_1303_p3 = {{tmp_fu_1289_p4}, {trunc_ln312_fu_1299_p1}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_ce0 = smem_12_ce0_local;
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
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_20_fu_1615_p27 = 'bx;
assign tmp_21_fu_1674_p27 = 'bx;
assign tmp_22_fu_1733_p27 = 'bx;
assign tmp_23_fu_1792_p27 = 'bx;
assign tmp_24_fu_1851_p27 = 'bx;
assign tmp_25_fu_1910_p27 = 'bx;
assign tmp_26_fu_1969_p27 = 'bx;
assign tmp_64_fu_1374_p1 = grp_fu_2047_p3;
assign tmp_64_fu_1374_p4 = {{tmp_64_fu_1374_p1[20:14]}};
assign tmp_65_fu_1400_p1 = grp_fu_2056_p3;
assign tmp_65_fu_1400_p4 = {{tmp_65_fu_1400_p1[20:14]}};
assign tmp_66_fu_1426_p1 = grp_fu_2065_p3;
assign tmp_66_fu_1426_p4 = {{tmp_66_fu_1426_p1[20:14]}};
assign tmp_67_fu_1452_p1 = grp_fu_2074_p3;
assign tmp_67_fu_1452_p4 = {{tmp_67_fu_1452_p1[20:14]}};
assign tmp_68_fu_1478_p1 = grp_fu_2083_p3;
assign tmp_68_fu_1478_p4 = {{tmp_68_fu_1478_p1[20:14]}};
assign tmp_69_fu_1504_p1 = grp_fu_2092_p3;
assign tmp_69_fu_1504_p4 = {{tmp_69_fu_1504_p1[20:14]}};
assign tmp_70_fu_1530_p1 = grp_fu_2101_p3;
assign tmp_70_fu_1530_p4 = {{tmp_70_fu_1530_p1[20:14]}};
assign tmp_fu_1289_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_s_fu_1556_p27 = 'bx;
assign trunc_ln172_fu_1354_p1 = grp_fu_1311_p2[3:0];
assign trunc_ln309_fu_1285_p1 = ap_sig_allocacmp_tid_2[0:0];
assign trunc_ln312_fu_1299_p1 = ap_sig_allocacmp_tid_2[5:0];
assign zext_ln172_13_fu_1358_p1 = tmp_63_reg_2137_pp0_iter12_reg;
assign zext_ln172_fu_1332_p1 = offset_reg_2125_pp0_iter9_reg;
assign zext_ln314_fu_2028_p1 = lshr_ln7_reg_2132_pp0_iter14_reg;
assign zext_ln315_fu_1383_p1 = tmp_64_fu_1374_p4;
assign zext_ln316_fu_1409_p1 = tmp_65_fu_1400_p4;
assign zext_ln317_fu_1435_p1 = tmp_66_fu_1426_p4;
assign zext_ln318_fu_1461_p1 = tmp_67_fu_1452_p4;
assign zext_ln319_fu_1487_p1 = tmp_68_fu_1478_p4;
assign zext_ln320_fu_1513_p1 = tmp_69_fu_1504_p4;
assign zext_ln321_fu_1539_p1 = tmp_70_fu_1530_p4;
endmodule 