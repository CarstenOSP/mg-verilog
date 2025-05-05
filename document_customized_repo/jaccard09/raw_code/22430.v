module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
wire   [0:0] icmp_ln188_fu_1147_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_2029;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_2029_pp0_iter1_reg;
reg   [6:0] tid_reg_2029_pp0_iter2_reg;
reg   [6:0] tid_reg_2029_pp0_iter3_reg;
reg   [6:0] tid_reg_2029_pp0_iter4_reg;
reg   [6:0] tid_reg_2029_pp0_iter5_reg;
reg   [6:0] tid_reg_2029_pp0_iter6_reg;
reg   [6:0] tid_reg_2029_pp0_iter7_reg;
reg   [6:0] tid_reg_2029_pp0_iter8_reg;
reg   [6:0] tid_reg_2029_pp0_iter9_reg;
reg   [6:0] tid_reg_2029_pp0_iter10_reg;
reg   [6:0] tid_reg_2029_pp0_iter11_reg;
reg   [6:0] tid_reg_2029_pp0_iter12_reg;
reg   [6:0] tid_reg_2029_pp0_iter13_reg;
reg   [6:0] tid_reg_2029_pp0_iter14_reg;
wire   [8:0] offset_fu_1189_p2;
reg   [8:0] offset_reg_2039;
reg   [8:0] offset_reg_2039_pp0_iter1_reg;
reg   [8:0] offset_reg_2039_pp0_iter2_reg;
reg   [8:0] offset_reg_2039_pp0_iter3_reg;
reg   [8:0] offset_reg_2039_pp0_iter4_reg;
reg   [8:0] offset_reg_2039_pp0_iter5_reg;
reg   [8:0] offset_reg_2039_pp0_iter6_reg;
reg   [8:0] offset_reg_2039_pp0_iter7_reg;
reg   [8:0] offset_reg_2039_pp0_iter8_reg;
reg   [8:0] offset_reg_2039_pp0_iter9_reg;
reg   [8:0] offset_reg_2039_pp0_iter10_reg;
reg   [5:0] tmp_reg_2051;
reg   [5:0] tmp_reg_2051_pp0_iter12_reg;
wire   [8:0] add_ln194_fu_1228_p2;
reg   [8:0] add_ln194_reg_2056;
wire   [8:0] add_ln195_fu_1233_p2;
reg   [8:0] add_ln195_reg_2061;
wire   [8:0] add_ln196_fu_1238_p2;
reg   [8:0] add_ln196_reg_2066;
wire   [8:0] add_ln197_fu_1243_p2;
reg   [8:0] add_ln197_reg_2071;
wire   [8:0] add_ln199_fu_1248_p2;
reg   [8:0] add_ln199_reg_2076;
wire   [3:0] trunc_ln172_fu_1253_p1;
reg   [3:0] trunc_ln172_reg_2081;
reg   [3:0] trunc_ln172_reg_2081_pp0_iter13_reg;
reg   [5:0] tmp_138_reg_2093;
reg   [5:0] tmp_139_reg_2098;
reg   [5:0] tmp_140_reg_2103;
reg   [5:0] tmp_141_reg_2108;
reg   [5:0] tmp_143_reg_2113;
wire   [63:0] tmp_22_fu_1500_p29;
reg   [63:0] tmp_22_reg_2638;
wire   [63:0] tmp_23_fu_1559_p29;
reg   [63:0] tmp_23_reg_2643;
wire   [63:0] tmp_24_fu_1618_p29;
reg   [63:0] tmp_24_reg_2648;
wire   [63:0] tmp_25_fu_1677_p29;
reg   [63:0] tmp_25_reg_2653;
wire   [63:0] tmp_26_fu_1736_p29;
reg   [63:0] tmp_26_reg_2658;
wire   [63:0] tmp_27_fu_1795_p29;
reg   [63:0] tmp_27_reg_2663;
wire   [63:0] tmp_28_fu_1854_p29;
reg   [63:0] tmp_28_reg_2668;
wire   [63:0] tmp_29_fu_1913_p29;
reg   [63:0] tmp_29_reg_2673;
wire   [63:0] zext_ln172_1_fu_1352_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_fu_1368_p1;
wire   [63:0] zext_ln195_fu_1384_p1;
wire   [63:0] zext_ln196_fu_1400_p1;
wire   [63:0] zext_ln197_fu_1416_p1;
wire   [63:0] zext_ln198_fu_1441_p1;
wire   [63:0] zext_ln199_fu_1458_p1;
wire   [63:0] zext_ln200_fu_1483_p1;
wire   [63:0] zext_ln193_fu_1980_p1;
wire   [63:0] zext_ln194_1_fu_1996_p1;
reg   [6:0] tid_2_fu_138;
wire   [6:0] add_ln188_fu_1153_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
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
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_we1_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_we1_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_we1_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
wire   [2:0] hi_fu_1159_p4;
wire   [2:0] trunc_ln191_fu_1173_p1;
wire   [8:0] mul_ln_fu_1177_p5;
wire   [8:0] zext_ln114_fu_1169_p1;
wire   [8:0] grp_fu_1195_p0;
wire   [4:0] grp_fu_1195_p1;
wire   [8:0] mul_ln172_1_fu_1212_p0;
wire   [10:0] mul_ln172_1_fu_1212_p1;
wire   [18:0] mul_ln172_1_fu_1212_p2;
wire   [3:0] grp_fu_1195_p2;
wire   [8:0] mul_ln194_fu_1260_p0;
wire   [10:0] mul_ln194_fu_1260_p1;
wire   [18:0] mul_ln194_fu_1260_p2;
wire   [8:0] mul_ln195_fu_1279_p0;
wire   [10:0] mul_ln195_fu_1279_p1;
wire   [18:0] mul_ln195_fu_1279_p2;
wire   [8:0] mul_ln196_fu_1298_p0;
wire   [10:0] mul_ln196_fu_1298_p1;
wire   [18:0] mul_ln196_fu_1298_p2;
wire   [8:0] mul_ln197_fu_1317_p0;
wire   [10:0] mul_ln197_fu_1317_p1;
wire   [18:0] mul_ln197_fu_1317_p2;
wire   [8:0] mul_ln199_fu_1336_p0;
wire   [10:0] mul_ln199_fu_1336_p1;
wire   [18:0] mul_ln199_fu_1336_p2;
wire   [20:0] tmp_142_fu_1432_p1;
wire  signed [20:0] grp_fu_2004_p3;
wire   [6:0] tmp_142_fu_1432_p4;
wire   [20:0] tmp_144_fu_1474_p1;
wire  signed [20:0] grp_fu_2013_p3;
wire   [6:0] tmp_144_fu_1474_p4;
wire   [63:0] tmp_22_fu_1500_p27;
wire   [63:0] tmp_23_fu_1559_p27;
wire   [63:0] tmp_24_fu_1618_p27;
wire   [63:0] tmp_25_fu_1677_p27;
wire   [63:0] tmp_26_fu_1736_p27;
wire   [63:0] tmp_27_fu_1795_p27;
wire   [63:0] tmp_28_fu_1854_p27;
wire   [63:0] tmp_29_fu_1913_p27;
wire   [6:0] shl_ln193_fu_1975_p2;
wire   [5:0] trunc_ln193_fu_1972_p1;
wire   [6:0] or_ln5_fu_1988_p3;
wire   [8:0] grp_fu_2004_p0;
wire   [9:0] zext_ln172_19_fu_1206_p1;
wire   [5:0] grp_fu_2004_p1;
wire   [10:0] grp_fu_2004_p2;
wire   [8:0] grp_fu_2013_p0;
wire   [5:0] grp_fu_2013_p1;
wire   [10:0] grp_fu_2013_p2;
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
wire   [18:0] mul_ln172_1_fu_1212_p00;
wire   [18:0] mul_ln194_fu_1260_p00;
wire   [18:0] mul_ln195_fu_1279_p00;
wire   [18:0] mul_ln196_fu_1298_p00;
wire   [18:0] mul_ln197_fu_1317_p00;
wire   [18:0] mul_ln199_fu_1336_p00;
wire   [3:0] tmp_22_fu_1500_p1;
wire   [3:0] tmp_22_fu_1500_p3;
wire   [3:0] tmp_22_fu_1500_p5;
wire   [3:0] tmp_22_fu_1500_p7;
wire   [3:0] tmp_22_fu_1500_p9;
wire   [3:0] tmp_22_fu_1500_p11;
wire   [3:0] tmp_22_fu_1500_p13;
wire   [3:0] tmp_22_fu_1500_p15;
wire  signed [3:0] tmp_22_fu_1500_p17;
wire  signed [3:0] tmp_22_fu_1500_p19;
wire  signed [3:0] tmp_22_fu_1500_p21;
wire  signed [3:0] tmp_22_fu_1500_p23;
wire  signed [3:0] tmp_22_fu_1500_p25;
wire   [3:0] tmp_23_fu_1559_p1;
wire  signed [3:0] tmp_23_fu_1559_p3;
wire  signed [3:0] tmp_23_fu_1559_p5;
wire  signed [3:0] tmp_23_fu_1559_p7;
wire  signed [3:0] tmp_23_fu_1559_p9;
wire  signed [3:0] tmp_23_fu_1559_p11;
wire   [3:0] tmp_23_fu_1559_p13;
wire   [3:0] tmp_23_fu_1559_p15;
wire   [3:0] tmp_23_fu_1559_p17;
wire   [3:0] tmp_23_fu_1559_p19;
wire   [3:0] tmp_23_fu_1559_p21;
wire   [3:0] tmp_23_fu_1559_p23;
wire   [3:0] tmp_23_fu_1559_p25;
wire   [3:0] tmp_24_fu_1618_p1;
wire   [3:0] tmp_24_fu_1618_p3;
wire   [3:0] tmp_24_fu_1618_p5;
wire  signed [3:0] tmp_24_fu_1618_p7;
wire  signed [3:0] tmp_24_fu_1618_p9;
wire  signed [3:0] tmp_24_fu_1618_p11;
wire  signed [3:0] tmp_24_fu_1618_p13;
wire  signed [3:0] tmp_24_fu_1618_p15;
wire   [3:0] tmp_24_fu_1618_p17;
wire   [3:0] tmp_24_fu_1618_p19;
wire   [3:0] tmp_24_fu_1618_p21;
wire   [3:0] tmp_24_fu_1618_p23;
wire   [3:0] tmp_24_fu_1618_p25;
wire  signed [3:0] tmp_25_fu_1677_p1;
wire   [3:0] tmp_25_fu_1677_p3;
wire   [3:0] tmp_25_fu_1677_p5;
wire   [3:0] tmp_25_fu_1677_p7;
wire   [3:0] tmp_25_fu_1677_p9;
wire   [3:0] tmp_25_fu_1677_p11;
wire   [3:0] tmp_25_fu_1677_p13;
wire   [3:0] tmp_25_fu_1677_p15;
wire   [3:0] tmp_25_fu_1677_p17;
wire  signed [3:0] tmp_25_fu_1677_p19;
wire  signed [3:0] tmp_25_fu_1677_p21;
wire  signed [3:0] tmp_25_fu_1677_p23;
wire  signed [3:0] tmp_25_fu_1677_p25;
wire  signed [3:0] tmp_26_fu_1736_p1;
wire  signed [3:0] tmp_26_fu_1736_p3;
wire  signed [3:0] tmp_26_fu_1736_p5;
wire   [3:0] tmp_26_fu_1736_p7;
wire   [3:0] tmp_26_fu_1736_p9;
wire   [3:0] tmp_26_fu_1736_p11;
wire   [3:0] tmp_26_fu_1736_p13;
wire   [3:0] tmp_26_fu_1736_p15;
wire   [3:0] tmp_26_fu_1736_p17;
wire   [3:0] tmp_26_fu_1736_p19;
wire   [3:0] tmp_26_fu_1736_p21;
wire  signed [3:0] tmp_26_fu_1736_p23;
wire  signed [3:0] tmp_26_fu_1736_p25;
wire   [3:0] tmp_27_fu_1795_p1;
wire   [3:0] tmp_27_fu_1795_p3;
wire   [3:0] tmp_27_fu_1795_p5;
wire   [3:0] tmp_27_fu_1795_p7;
wire  signed [3:0] tmp_27_fu_1795_p9;
wire  signed [3:0] tmp_27_fu_1795_p11;
wire  signed [3:0] tmp_27_fu_1795_p13;
wire  signed [3:0] tmp_27_fu_1795_p15;
wire  signed [3:0] tmp_27_fu_1795_p17;
wire   [3:0] tmp_27_fu_1795_p19;
wire   [3:0] tmp_27_fu_1795_p21;
wire   [3:0] tmp_27_fu_1795_p23;
wire   [3:0] tmp_27_fu_1795_p25;
wire   [3:0] tmp_28_fu_1854_p1;
wire   [3:0] tmp_28_fu_1854_p3;
wire   [3:0] tmp_28_fu_1854_p5;
wire   [3:0] tmp_28_fu_1854_p7;
wire   [3:0] tmp_28_fu_1854_p9;
wire   [3:0] tmp_28_fu_1854_p11;
wire  signed [3:0] tmp_28_fu_1854_p13;
wire  signed [3:0] tmp_28_fu_1854_p15;
wire  signed [3:0] tmp_28_fu_1854_p17;
wire  signed [3:0] tmp_28_fu_1854_p19;
wire  signed [3:0] tmp_28_fu_1854_p21;
wire   [3:0] tmp_28_fu_1854_p23;
wire   [3:0] tmp_28_fu_1854_p25;
wire  signed [3:0] tmp_29_fu_1913_p1;
wire  signed [3:0] tmp_29_fu_1913_p3;
wire  signed [3:0] tmp_29_fu_1913_p5;
wire  signed [3:0] tmp_29_fu_1913_p7;
wire   [3:0] tmp_29_fu_1913_p9;
wire   [3:0] tmp_29_fu_1913_p11;
wire   [3:0] tmp_29_fu_1913_p13;
wire   [3:0] tmp_29_fu_1913_p15;
wire   [3:0] tmp_29_fu_1913_p17;
wire   [3:0] tmp_29_fu_1913_p19;
wire   [3:0] tmp_29_fu_1913_p21;
wire   [3:0] tmp_29_fu_1913_p23;
wire  signed [3:0] tmp_29_fu_1913_p25;
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
#0 tid_2_fu_138 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1195_p0),.din1(grp_fu_1195_p1),.ce(1'b1),.dout(grp_fu_1195_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U92(.din0(mul_ln172_1_fu_1212_p0),.din1(mul_ln172_1_fu_1212_p1),.dout(mul_ln172_1_fu_1212_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U93(.din0(mul_ln194_fu_1260_p0),.din1(mul_ln194_fu_1260_p1),.dout(mul_ln194_fu_1260_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U94(.din0(mul_ln195_fu_1279_p0),.din1(mul_ln195_fu_1279_p1),.dout(mul_ln195_fu_1279_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U95(.din0(mul_ln196_fu_1298_p0),.din1(mul_ln196_fu_1298_p1),.dout(mul_ln196_fu_1298_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U96(.din0(mul_ln197_fu_1317_p0),.din1(mul_ln197_fu_1317_p1),.dout(mul_ln197_fu_1317_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U97(.din0(mul_ln199_fu_1336_p0),.din1(mul_ln199_fu_1336_p1),.dout(mul_ln199_fu_1336_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U98(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_22_fu_1500_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_22_fu_1500_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U99(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_23_fu_1559_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_23_fu_1559_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U100(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_24_fu_1618_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_24_fu_1618_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U101(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_25_fu_1677_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_25_fu_1677_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U102(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_26_fu_1736_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_26_fu_1736_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U103(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_27_fu_1795_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_27_fu_1795_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U104(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_28_fu_1854_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_28_fu_1854_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U105(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_29_fu_1913_p27),.sel(trunc_ln172_reg_2081_pp0_iter13_reg),.dout(tmp_29_fu_1913_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2004_p0),.din1(grp_fu_2004_p1),.din2(grp_fu_2004_p2),.ce(1'b1),.dout(grp_fu_2004_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2013_p0),.din1(grp_fu_2013_p1),.din2(grp_fu_2013_p2),.ce(1'b1),.dout(grp_fu_2013_p3));
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
        if (((icmp_ln188_fu_1147_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_2_fu_138 <= add_ln188_fu_1153_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_2_fu_138 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln194_reg_2056 <= add_ln194_fu_1228_p2;
        add_ln195_reg_2061 <= add_ln195_fu_1233_p2;
        add_ln196_reg_2066 <= add_ln196_fu_1238_p2;
        add_ln197_reg_2071 <= add_ln197_fu_1243_p2;
        add_ln199_reg_2076 <= add_ln199_fu_1248_p2;
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
        offset_reg_2039_pp0_iter10_reg <= offset_reg_2039_pp0_iter9_reg;
        offset_reg_2039_pp0_iter2_reg <= offset_reg_2039_pp0_iter1_reg;
        offset_reg_2039_pp0_iter3_reg <= offset_reg_2039_pp0_iter2_reg;
        offset_reg_2039_pp0_iter4_reg <= offset_reg_2039_pp0_iter3_reg;
        offset_reg_2039_pp0_iter5_reg <= offset_reg_2039_pp0_iter4_reg;
        offset_reg_2039_pp0_iter6_reg <= offset_reg_2039_pp0_iter5_reg;
        offset_reg_2039_pp0_iter7_reg <= offset_reg_2039_pp0_iter6_reg;
        offset_reg_2039_pp0_iter8_reg <= offset_reg_2039_pp0_iter7_reg;
        offset_reg_2039_pp0_iter9_reg <= offset_reg_2039_pp0_iter8_reg;
        tid_reg_2029_pp0_iter10_reg <= tid_reg_2029_pp0_iter9_reg;
        tid_reg_2029_pp0_iter11_reg <= tid_reg_2029_pp0_iter10_reg;
        tid_reg_2029_pp0_iter12_reg <= tid_reg_2029_pp0_iter11_reg;
        tid_reg_2029_pp0_iter13_reg <= tid_reg_2029_pp0_iter12_reg;
        tid_reg_2029_pp0_iter14_reg <= tid_reg_2029_pp0_iter13_reg;
        tid_reg_2029_pp0_iter2_reg <= tid_reg_2029_pp0_iter1_reg;
        tid_reg_2029_pp0_iter3_reg <= tid_reg_2029_pp0_iter2_reg;
        tid_reg_2029_pp0_iter4_reg <= tid_reg_2029_pp0_iter3_reg;
        tid_reg_2029_pp0_iter5_reg <= tid_reg_2029_pp0_iter4_reg;
        tid_reg_2029_pp0_iter6_reg <= tid_reg_2029_pp0_iter5_reg;
        tid_reg_2029_pp0_iter7_reg <= tid_reg_2029_pp0_iter6_reg;
        tid_reg_2029_pp0_iter8_reg <= tid_reg_2029_pp0_iter7_reg;
        tid_reg_2029_pp0_iter9_reg <= tid_reg_2029_pp0_iter8_reg;
        tmp_138_reg_2093 <= {{mul_ln194_fu_1260_p2[18:13]}};
        tmp_139_reg_2098 <= {{mul_ln195_fu_1279_p2[18:13]}};
        tmp_140_reg_2103 <= {{mul_ln196_fu_1298_p2[18:13]}};
        tmp_141_reg_2108 <= {{mul_ln197_fu_1317_p2[18:13]}};
        tmp_143_reg_2113 <= {{mul_ln199_fu_1336_p2[18:13]}};
        tmp_22_reg_2638 <= tmp_22_fu_1500_p29;
        tmp_23_reg_2643 <= tmp_23_fu_1559_p29;
        tmp_24_reg_2648 <= tmp_24_fu_1618_p29;
        tmp_25_reg_2653 <= tmp_25_fu_1677_p29;
        tmp_26_reg_2658 <= tmp_26_fu_1736_p29;
        tmp_27_reg_2663 <= tmp_27_fu_1795_p29;
        tmp_28_reg_2668 <= tmp_28_fu_1854_p29;
        tmp_29_reg_2673 <= tmp_29_fu_1913_p29;
        tmp_reg_2051 <= {{mul_ln172_1_fu_1212_p2[18:13]}};
        tmp_reg_2051_pp0_iter12_reg <= tmp_reg_2051;
        trunc_ln172_reg_2081 <= trunc_ln172_fu_1253_p1;
        trunc_ln172_reg_2081_pp0_iter13_reg <= trunc_ln172_reg_2081;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_2039 <= offset_fu_1189_p2;
        offset_reg_2039_pp0_iter1_reg <= offset_reg_2039;
        tid_reg_2029 <= ap_sig_allocacmp_tid;
        tid_reg_2029_pp0_iter1_reg <= tid_reg_2029;
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
    if (((icmp_ln188_fu_1147_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_10_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_10_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_10_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_10_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_10_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_10_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_10_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_11_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_11_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_11_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_11_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_11_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_11_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_11_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_11_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_12_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_12_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_12_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_12_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_12_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_12_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_12_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_12_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_1_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_1_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_1_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_1_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_1_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_1_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_1_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_2_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_2_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_2_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_2_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_2_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_2_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_2_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_3_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_3_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_3_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_3_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_3_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_3_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_3_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_4_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_4_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_4_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_4_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_4_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_4_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_4_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_5_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_5_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_5_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_5_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_5_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_5_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_5_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_6_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_6_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_6_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_6_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_6_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_6_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_6_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_7_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_7_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_7_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_7_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_7_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_7_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_7_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_8_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_8_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_8_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_8_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_8_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_8_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_8_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_9_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd11)) begin
            smem_9_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_9_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd6)) begin
            smem_9_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd8)) begin
            smem_9_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd1)) begin
            smem_9_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd3)) begin
            smem_9_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2081 == 4'd9)) begin
            smem_address0_local = zext_ln200_fu_1483_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd2)) begin
            smem_address0_local = zext_ln199_fu_1458_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd4)) begin
            smem_address0_local = zext_ln198_fu_1441_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd10)) begin
            smem_address0_local = zext_ln197_fu_1416_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd12)) begin
            smem_address0_local = zext_ln196_fu_1400_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd5)) begin
            smem_address0_local = zext_ln195_fu_1384_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd7)) begin
            smem_address0_local = zext_ln194_fu_1368_p1;
        end else if ((trunc_ln172_reg_2081 == 4'd0)) begin
            smem_address0_local = zext_ln172_1_fu_1352_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2081 == 4'd0)))) begin
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
assign DATA_x_1_address0 = zext_ln194_1_fu_1996_p1;
assign DATA_x_1_address1 = zext_ln193_fu_1980_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = tmp_25_reg_2653;
assign DATA_x_1_d1 = tmp_24_reg_2648;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = zext_ln194_1_fu_1996_p1;
assign DATA_x_2_address1 = zext_ln193_fu_1980_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = tmp_27_reg_2663;
assign DATA_x_2_d1 = tmp_26_reg_2658;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = zext_ln194_1_fu_1996_p1;
assign DATA_x_3_address1 = zext_ln193_fu_1980_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = tmp_29_reg_2673;
assign DATA_x_3_d1 = tmp_28_reg_2668;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_address0 = zext_ln194_1_fu_1996_p1;
assign DATA_x_address1 = zext_ln193_fu_1980_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = tmp_23_reg_2643;
assign DATA_x_d1 = tmp_22_reg_2638;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln188_fu_1153_p2 = (ap_sig_allocacmp_tid + 7'd1);
assign add_ln194_fu_1228_p2 = (offset_reg_2039_pp0_iter10_reg + 9'd32);
assign add_ln195_fu_1233_p2 = (offset_reg_2039_pp0_iter10_reg + 9'd8);
assign add_ln196_fu_1238_p2 = (offset_reg_2039_pp0_iter10_reg + 9'd40);
assign add_ln197_fu_1243_p2 = (offset_reg_2039_pp0_iter10_reg + 9'd16);
assign add_ln199_fu_1248_p2 = (offset_reg_2039_pp0_iter10_reg + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1195_p0 = (mul_ln_fu_1177_p5 + zext_ln114_fu_1169_p1);
assign grp_fu_1195_p1 = 9'd13;
assign grp_fu_2004_p0 = zext_ln172_19_fu_1206_p1;
assign grp_fu_2004_p1 = 10'd48;
assign grp_fu_2004_p2 = 21'd1261;
assign grp_fu_2013_p0 = zext_ln172_19_fu_1206_p1;
assign grp_fu_2013_p1 = 10'd56;
assign grp_fu_2013_p2 = 21'd1261;
assign hi_fu_1159_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign icmp_ln188_fu_1147_p2 = ((ap_sig_allocacmp_tid == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_1_fu_1212_p0 = mul_ln172_1_fu_1212_p00;
assign mul_ln172_1_fu_1212_p00 = offset_reg_2039_pp0_iter10_reg;
assign mul_ln172_1_fu_1212_p1 = 19'd631;
assign mul_ln194_fu_1260_p0 = mul_ln194_fu_1260_p00;
assign mul_ln194_fu_1260_p00 = add_ln194_reg_2056;
assign mul_ln194_fu_1260_p1 = 19'd631;
assign mul_ln195_fu_1279_p0 = mul_ln195_fu_1279_p00;
assign mul_ln195_fu_1279_p00 = add_ln195_reg_2061;
assign mul_ln195_fu_1279_p1 = 19'd631;
assign mul_ln196_fu_1298_p0 = mul_ln196_fu_1298_p00;
assign mul_ln196_fu_1298_p00 = add_ln196_reg_2066;
assign mul_ln196_fu_1298_p1 = 19'd631;
assign mul_ln197_fu_1317_p0 = mul_ln197_fu_1317_p00;
assign mul_ln197_fu_1317_p00 = add_ln197_reg_2071;
assign mul_ln197_fu_1317_p1 = 19'd631;
assign mul_ln199_fu_1336_p0 = mul_ln199_fu_1336_p00;
assign mul_ln199_fu_1336_p00 = add_ln199_reg_2076;
assign mul_ln199_fu_1336_p1 = 19'd631;
assign mul_ln_fu_1177_p5 = {{{{trunc_ln191_fu_1173_p1}, {2'd0}}, {trunc_ln191_fu_1173_p1}}, {1'd0}};
assign offset_fu_1189_p2 = (mul_ln_fu_1177_p5 + zext_ln114_fu_1169_p1);
assign or_ln5_fu_1988_p3 = {{trunc_ln193_fu_1972_p1}, {1'd1}};
assign shl_ln193_fu_1975_p2 = tid_reg_2029_pp0_iter14_reg << 7'd1;
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
assign tmp_142_fu_1432_p1 = grp_fu_2004_p3;
assign tmp_142_fu_1432_p4 = {{tmp_142_fu_1432_p1[20:14]}};
assign tmp_144_fu_1474_p1 = grp_fu_2013_p3;
assign tmp_144_fu_1474_p4 = {{tmp_144_fu_1474_p1[20:14]}};
assign tmp_22_fu_1500_p27 = 'bx;
assign tmp_23_fu_1559_p27 = 'bx;
assign tmp_24_fu_1618_p27 = 'bx;
assign tmp_25_fu_1677_p27 = 'bx;
assign tmp_26_fu_1736_p27 = 'bx;
assign tmp_27_fu_1795_p27 = 'bx;
assign tmp_28_fu_1854_p27 = 'bx;
assign tmp_29_fu_1913_p27 = 'bx;
assign trunc_ln172_fu_1253_p1 = grp_fu_1195_p2[3:0];
assign trunc_ln191_fu_1173_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_1972_p1 = tid_reg_2029_pp0_iter14_reg[5:0];
assign zext_ln114_fu_1169_p1 = hi_fu_1159_p4;
assign zext_ln172_19_fu_1206_p1 = offset_reg_2039_pp0_iter9_reg;
assign zext_ln172_1_fu_1352_p1 = tmp_reg_2051_pp0_iter12_reg;
assign zext_ln193_fu_1980_p1 = shl_ln193_fu_1975_p2;
assign zext_ln194_1_fu_1996_p1 = or_ln5_fu_1988_p3;
assign zext_ln194_fu_1368_p1 = tmp_138_reg_2093;
assign zext_ln195_fu_1384_p1 = tmp_139_reg_2098;
assign zext_ln196_fu_1400_p1 = tmp_140_reg_2103;
assign zext_ln197_fu_1416_p1 = tmp_141_reg_2108;
assign zext_ln198_fu_1441_p1 = tmp_142_fu_1432_p4;
assign zext_ln199_fu_1458_p1 = tmp_143_reg_2113;
assign zext_ln200_fu_1483_p1 = tmp_144_fu_1474_p4;
endmodule 