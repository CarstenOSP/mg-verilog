module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_we0,DATA_x_15_d0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_we0,DATA_x_14_d0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_we0,DATA_x_13_d0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_we0,DATA_x_12_d0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_we0,DATA_x_11_d0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_we0,DATA_x_10_d0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_we0,DATA_x_9_d0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_we0,DATA_x_8_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,smem_address0,smem_ce0,smem_q0,smem_13_address0,smem_13_ce0,smem_13_q0,smem_14_address0,smem_14_ce0,smem_14_q0,smem_15_address0,smem_15_ce0,smem_15_q0,smem_16_address0,smem_16_ce0,smem_16_q0,smem_17_address0,smem_17_ce0,smem_17_q0,smem_18_address0,smem_18_ce0,smem_18_q0,smem_19_address0,smem_19_ce0,smem_19_q0,smem_20_address0,smem_20_ce0,smem_20_q0,smem_21_address0,smem_21_ce0,smem_21_q0,smem_22_address0,smem_22_ce0,smem_22_q0,smem_23_address0,smem_23_ce0,smem_23_q0,smem_24_address0,smem_24_ce0,smem_24_q0); 
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
output  [5:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [5:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [5:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [5:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [5:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [5:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [5:0] smem_19_address0;
output   smem_19_ce0;
input  [63:0] smem_19_q0;
output  [5:0] smem_20_address0;
output   smem_20_ce0;
input  [63:0] smem_20_q0;
output  [5:0] smem_21_address0;
output   smem_21_ce0;
input  [63:0] smem_21_q0;
output  [5:0] smem_22_address0;
output   smem_22_ce0;
input  [63:0] smem_22_q0;
output  [5:0] smem_23_address0;
output   smem_23_ce0;
input  [63:0] smem_23_q0;
output  [5:0] smem_24_address0;
output   smem_24_ce0;
input  [63:0] smem_24_q0;
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
wire   [0:0] icmp_ln188_fu_1277_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln188_fu_1289_p1;
reg   [0:0] trunc_ln188_reg_2164;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter1_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter2_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter3_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter4_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter5_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter6_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter7_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter8_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter9_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter10_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter11_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter12_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter13_reg;
reg   [0:0] trunc_ln188_reg_2164_pp0_iter14_reg;
wire   [8:0] offset_fu_1323_p2;
reg   [8:0] offset_reg_2168;
reg   [8:0] offset_reg_2168_pp0_iter1_reg;
reg   [8:0] offset_reg_2168_pp0_iter2_reg;
reg   [8:0] offset_reg_2168_pp0_iter3_reg;
reg   [8:0] offset_reg_2168_pp0_iter4_reg;
reg   [8:0] offset_reg_2168_pp0_iter5_reg;
reg   [8:0] offset_reg_2168_pp0_iter6_reg;
reg   [8:0] offset_reg_2168_pp0_iter7_reg;
reg   [8:0] offset_reg_2168_pp0_iter8_reg;
reg   [8:0] offset_reg_2168_pp0_iter9_reg;
reg   [8:0] offset_reg_2168_pp0_iter10_reg;
reg   [4:0] lshr_ln2_reg_2180;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter1_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter2_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter3_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter4_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter5_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter6_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter7_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter8_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter9_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter10_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter11_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter12_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter13_reg;
reg   [4:0] lshr_ln2_reg_2180_pp0_iter14_reg;
reg   [5:0] tmp_reg_2185;
reg   [5:0] tmp_reg_2185_pp0_iter12_reg;
wire   [8:0] add_ln194_fu_1372_p2;
reg   [8:0] add_ln194_reg_2190;
wire   [8:0] add_ln195_fu_1377_p2;
reg   [8:0] add_ln195_reg_2195;
wire   [8:0] add_ln196_fu_1382_p2;
reg   [8:0] add_ln196_reg_2200;
wire   [8:0] add_ln197_fu_1387_p2;
reg   [8:0] add_ln197_reg_2205;
wire   [8:0] add_ln199_fu_1392_p2;
reg   [8:0] add_ln199_reg_2210;
wire   [3:0] trunc_ln172_fu_1397_p1;
reg   [3:0] trunc_ln172_reg_2215;
reg   [3:0] trunc_ln172_reg_2215_pp0_iter13_reg;
reg   [5:0] tmp_132_reg_2227;
reg   [5:0] tmp_133_reg_2232;
reg   [5:0] tmp_134_reg_2237;
reg   [5:0] tmp_135_reg_2242;
reg   [5:0] tmp_137_reg_2247;
wire   [63:0] tmp_s_fu_1644_p29;
reg   [63:0] tmp_s_reg_2772;
wire   [63:0] tmp_15_fu_1703_p29;
reg   [63:0] tmp_15_reg_2778;
wire   [63:0] tmp_16_fu_1762_p29;
reg   [63:0] tmp_16_reg_2784;
wire   [63:0] tmp_17_fu_1821_p29;
reg   [63:0] tmp_17_reg_2790;
wire   [63:0] tmp_18_fu_1880_p29;
reg   [63:0] tmp_18_reg_2796;
wire   [63:0] tmp_19_fu_1939_p29;
reg   [63:0] tmp_19_reg_2802;
wire   [63:0] tmp_20_fu_1998_p29;
reg   [63:0] tmp_20_reg_2808;
wire   [63:0] tmp_21_fu_2057_p29;
reg   [63:0] tmp_21_reg_2814;
wire   [63:0] zext_ln172_1_fu_1496_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_fu_1512_p1;
wire   [63:0] zext_ln195_fu_1528_p1;
wire   [63:0] zext_ln196_fu_1544_p1;
wire   [63:0] zext_ln197_fu_1560_p1;
wire   [63:0] zext_ln198_fu_1585_p1;
wire   [63:0] zext_ln199_fu_1602_p1;
wire   [63:0] zext_ln200_fu_1627_p1;
wire   [63:0] zext_ln193_fu_2116_p1;
reg   [6:0] tid_2_fu_160;
wire   [6:0] add_ln188_fu_1283_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_13_ce0_local;
reg   [5:0] smem_13_address0_local;
reg    smem_14_ce0_local;
reg   [5:0] smem_14_address0_local;
reg    smem_15_ce0_local;
reg   [5:0] smem_15_address0_local;
reg    smem_16_ce0_local;
reg   [5:0] smem_16_address0_local;
reg    smem_17_ce0_local;
reg   [5:0] smem_17_address0_local;
reg    smem_18_ce0_local;
reg   [5:0] smem_18_address0_local;
reg    smem_19_ce0_local;
reg   [5:0] smem_19_address0_local;
reg    smem_20_ce0_local;
reg   [5:0] smem_20_address0_local;
reg    smem_21_ce0_local;
reg   [5:0] smem_21_address0_local;
reg    smem_22_ce0_local;
reg   [5:0] smem_22_address0_local;
reg    smem_23_ce0_local;
reg   [5:0] smem_23_address0_local;
reg    smem_24_ce0_local;
reg   [5:0] smem_24_address0_local;
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
wire   [2:0] hi_fu_1293_p4;
wire   [2:0] trunc_ln191_fu_1307_p1;
wire   [8:0] mul_ln_fu_1311_p5;
wire   [8:0] zext_ln114_fu_1303_p1;
wire   [8:0] grp_fu_1329_p0;
wire   [4:0] grp_fu_1329_p1;
wire   [8:0] mul_ln172_1_fu_1356_p0;
wire   [10:0] mul_ln172_1_fu_1356_p1;
wire   [18:0] mul_ln172_1_fu_1356_p2;
wire   [3:0] grp_fu_1329_p2;
wire   [8:0] mul_ln194_fu_1404_p0;
wire   [10:0] mul_ln194_fu_1404_p1;
wire   [18:0] mul_ln194_fu_1404_p2;
wire   [8:0] mul_ln195_fu_1423_p0;
wire   [10:0] mul_ln195_fu_1423_p1;
wire   [18:0] mul_ln195_fu_1423_p2;
wire   [8:0] mul_ln196_fu_1442_p0;
wire   [10:0] mul_ln196_fu_1442_p1;
wire   [18:0] mul_ln196_fu_1442_p2;
wire   [8:0] mul_ln197_fu_1461_p0;
wire   [10:0] mul_ln197_fu_1461_p1;
wire   [18:0] mul_ln197_fu_1461_p2;
wire   [8:0] mul_ln199_fu_1480_p0;
wire   [10:0] mul_ln199_fu_1480_p1;
wire   [18:0] mul_ln199_fu_1480_p2;
wire   [20:0] tmp_136_fu_1576_p1;
wire  signed [20:0] grp_fu_2135_p3;
wire   [6:0] tmp_136_fu_1576_p4;
wire   [20:0] tmp_138_fu_1618_p1;
wire  signed [20:0] grp_fu_2144_p3;
wire   [6:0] tmp_138_fu_1618_p4;
wire   [63:0] tmp_s_fu_1644_p27;
wire   [63:0] tmp_15_fu_1703_p27;
wire   [63:0] tmp_16_fu_1762_p27;
wire   [63:0] tmp_17_fu_1821_p27;
wire   [63:0] tmp_18_fu_1880_p27;
wire   [63:0] tmp_19_fu_1939_p27;
wire   [63:0] tmp_20_fu_1998_p27;
wire   [63:0] tmp_21_fu_2057_p27;
wire   [8:0] grp_fu_2135_p0;
wire   [9:0] zext_ln172_16_fu_1350_p1;
wire   [5:0] grp_fu_2135_p1;
wire   [10:0] grp_fu_2135_p2;
wire   [8:0] grp_fu_2144_p0;
wire   [5:0] grp_fu_2144_p1;
wire   [10:0] grp_fu_2144_p2;
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
wire   [18:0] mul_ln172_1_fu_1356_p00;
wire   [18:0] mul_ln194_fu_1404_p00;
wire   [18:0] mul_ln195_fu_1423_p00;
wire   [18:0] mul_ln196_fu_1442_p00;
wire   [18:0] mul_ln197_fu_1461_p00;
wire   [18:0] mul_ln199_fu_1480_p00;
wire   [3:0] tmp_s_fu_1644_p1;
wire   [3:0] tmp_s_fu_1644_p3;
wire   [3:0] tmp_s_fu_1644_p5;
wire   [3:0] tmp_s_fu_1644_p7;
wire   [3:0] tmp_s_fu_1644_p9;
wire   [3:0] tmp_s_fu_1644_p11;
wire   [3:0] tmp_s_fu_1644_p13;
wire   [3:0] tmp_s_fu_1644_p15;
wire  signed [3:0] tmp_s_fu_1644_p17;
wire  signed [3:0] tmp_s_fu_1644_p19;
wire  signed [3:0] tmp_s_fu_1644_p21;
wire  signed [3:0] tmp_s_fu_1644_p23;
wire  signed [3:0] tmp_s_fu_1644_p25;
wire   [3:0] tmp_15_fu_1703_p1;
wire  signed [3:0] tmp_15_fu_1703_p3;
wire  signed [3:0] tmp_15_fu_1703_p5;
wire  signed [3:0] tmp_15_fu_1703_p7;
wire  signed [3:0] tmp_15_fu_1703_p9;
wire  signed [3:0] tmp_15_fu_1703_p11;
wire   [3:0] tmp_15_fu_1703_p13;
wire   [3:0] tmp_15_fu_1703_p15;
wire   [3:0] tmp_15_fu_1703_p17;
wire   [3:0] tmp_15_fu_1703_p19;
wire   [3:0] tmp_15_fu_1703_p21;
wire   [3:0] tmp_15_fu_1703_p23;
wire   [3:0] tmp_15_fu_1703_p25;
wire   [3:0] tmp_16_fu_1762_p1;
wire   [3:0] tmp_16_fu_1762_p3;
wire   [3:0] tmp_16_fu_1762_p5;
wire  signed [3:0] tmp_16_fu_1762_p7;
wire  signed [3:0] tmp_16_fu_1762_p9;
wire  signed [3:0] tmp_16_fu_1762_p11;
wire  signed [3:0] tmp_16_fu_1762_p13;
wire  signed [3:0] tmp_16_fu_1762_p15;
wire   [3:0] tmp_16_fu_1762_p17;
wire   [3:0] tmp_16_fu_1762_p19;
wire   [3:0] tmp_16_fu_1762_p21;
wire   [3:0] tmp_16_fu_1762_p23;
wire   [3:0] tmp_16_fu_1762_p25;
wire  signed [3:0] tmp_17_fu_1821_p1;
wire   [3:0] tmp_17_fu_1821_p3;
wire   [3:0] tmp_17_fu_1821_p5;
wire   [3:0] tmp_17_fu_1821_p7;
wire   [3:0] tmp_17_fu_1821_p9;
wire   [3:0] tmp_17_fu_1821_p11;
wire   [3:0] tmp_17_fu_1821_p13;
wire   [3:0] tmp_17_fu_1821_p15;
wire   [3:0] tmp_17_fu_1821_p17;
wire  signed [3:0] tmp_17_fu_1821_p19;
wire  signed [3:0] tmp_17_fu_1821_p21;
wire  signed [3:0] tmp_17_fu_1821_p23;
wire  signed [3:0] tmp_17_fu_1821_p25;
wire  signed [3:0] tmp_18_fu_1880_p1;
wire  signed [3:0] tmp_18_fu_1880_p3;
wire  signed [3:0] tmp_18_fu_1880_p5;
wire   [3:0] tmp_18_fu_1880_p7;
wire   [3:0] tmp_18_fu_1880_p9;
wire   [3:0] tmp_18_fu_1880_p11;
wire   [3:0] tmp_18_fu_1880_p13;
wire   [3:0] tmp_18_fu_1880_p15;
wire   [3:0] tmp_18_fu_1880_p17;
wire   [3:0] tmp_18_fu_1880_p19;
wire   [3:0] tmp_18_fu_1880_p21;
wire  signed [3:0] tmp_18_fu_1880_p23;
wire  signed [3:0] tmp_18_fu_1880_p25;
wire   [3:0] tmp_19_fu_1939_p1;
wire   [3:0] tmp_19_fu_1939_p3;
wire   [3:0] tmp_19_fu_1939_p5;
wire   [3:0] tmp_19_fu_1939_p7;
wire  signed [3:0] tmp_19_fu_1939_p9;
wire  signed [3:0] tmp_19_fu_1939_p11;
wire  signed [3:0] tmp_19_fu_1939_p13;
wire  signed [3:0] tmp_19_fu_1939_p15;
wire  signed [3:0] tmp_19_fu_1939_p17;
wire   [3:0] tmp_19_fu_1939_p19;
wire   [3:0] tmp_19_fu_1939_p21;
wire   [3:0] tmp_19_fu_1939_p23;
wire   [3:0] tmp_19_fu_1939_p25;
wire   [3:0] tmp_20_fu_1998_p1;
wire   [3:0] tmp_20_fu_1998_p3;
wire   [3:0] tmp_20_fu_1998_p5;
wire   [3:0] tmp_20_fu_1998_p7;
wire   [3:0] tmp_20_fu_1998_p9;
wire   [3:0] tmp_20_fu_1998_p11;
wire  signed [3:0] tmp_20_fu_1998_p13;
wire  signed [3:0] tmp_20_fu_1998_p15;
wire  signed [3:0] tmp_20_fu_1998_p17;
wire  signed [3:0] tmp_20_fu_1998_p19;
wire  signed [3:0] tmp_20_fu_1998_p21;
wire   [3:0] tmp_20_fu_1998_p23;
wire   [3:0] tmp_20_fu_1998_p25;
wire  signed [3:0] tmp_21_fu_2057_p1;
wire  signed [3:0] tmp_21_fu_2057_p3;
wire  signed [3:0] tmp_21_fu_2057_p5;
wire  signed [3:0] tmp_21_fu_2057_p7;
wire   [3:0] tmp_21_fu_2057_p9;
wire   [3:0] tmp_21_fu_2057_p11;
wire   [3:0] tmp_21_fu_2057_p13;
wire   [3:0] tmp_21_fu_2057_p15;
wire   [3:0] tmp_21_fu_2057_p17;
wire   [3:0] tmp_21_fu_2057_p19;
wire   [3:0] tmp_21_fu_2057_p21;
wire   [3:0] tmp_21_fu_2057_p23;
wire  signed [3:0] tmp_21_fu_2057_p25;
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
#0 tid_2_fu_160 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1329_p0),.din1(grp_fu_1329_p1),.ce(1'b1),.dout(grp_fu_1329_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U104(.din0(mul_ln172_1_fu_1356_p0),.din1(mul_ln172_1_fu_1356_p1),.dout(mul_ln172_1_fu_1356_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U105(.din0(mul_ln194_fu_1404_p0),.din1(mul_ln194_fu_1404_p1),.dout(mul_ln194_fu_1404_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U106(.din0(mul_ln195_fu_1423_p0),.din1(mul_ln195_fu_1423_p1),.dout(mul_ln195_fu_1423_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U107(.din0(mul_ln196_fu_1442_p0),.din1(mul_ln196_fu_1442_p1),.dout(mul_ln196_fu_1442_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U108(.din0(mul_ln197_fu_1461_p0),.din1(mul_ln197_fu_1461_p1),.dout(mul_ln197_fu_1461_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U109(.din0(mul_ln199_fu_1480_p0),.din1(mul_ln199_fu_1480_p1),.dout(mul_ln199_fu_1480_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U110(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_s_fu_1644_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_s_fu_1644_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U111(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_15_fu_1703_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_15_fu_1703_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U112(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_16_fu_1762_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_16_fu_1762_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U113(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_17_fu_1821_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_17_fu_1821_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U114(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_18_fu_1880_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_18_fu_1880_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U115(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_19_fu_1939_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_19_fu_1939_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U116(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_20_fu_1998_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_20_fu_1998_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U117(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_21_fu_2057_p27),.sel(trunc_ln172_reg_2215_pp0_iter13_reg),.dout(tmp_21_fu_2057_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2135_p0),.din1(grp_fu_2135_p1),.din2(grp_fu_2135_p2),.ce(1'b1),.dout(grp_fu_2135_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2144_p0),.din1(grp_fu_2144_p1),.din2(grp_fu_2144_p2),.ce(1'b1),.dout(grp_fu_2144_p3));
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
        if (((icmp_ln188_fu_1277_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_2_fu_160 <= add_ln188_fu_1283_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_2_fu_160 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln194_reg_2190 <= add_ln194_fu_1372_p2;
        add_ln195_reg_2195 <= add_ln195_fu_1377_p2;
        add_ln196_reg_2200 <= add_ln196_fu_1382_p2;
        add_ln197_reg_2205 <= add_ln197_fu_1387_p2;
        add_ln199_reg_2210 <= add_ln199_fu_1392_p2;
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
        lshr_ln2_reg_2180_pp0_iter10_reg <= lshr_ln2_reg_2180_pp0_iter9_reg;
        lshr_ln2_reg_2180_pp0_iter11_reg <= lshr_ln2_reg_2180_pp0_iter10_reg;
        lshr_ln2_reg_2180_pp0_iter12_reg <= lshr_ln2_reg_2180_pp0_iter11_reg;
        lshr_ln2_reg_2180_pp0_iter13_reg <= lshr_ln2_reg_2180_pp0_iter12_reg;
        lshr_ln2_reg_2180_pp0_iter14_reg <= lshr_ln2_reg_2180_pp0_iter13_reg;
        lshr_ln2_reg_2180_pp0_iter2_reg <= lshr_ln2_reg_2180_pp0_iter1_reg;
        lshr_ln2_reg_2180_pp0_iter3_reg <= lshr_ln2_reg_2180_pp0_iter2_reg;
        lshr_ln2_reg_2180_pp0_iter4_reg <= lshr_ln2_reg_2180_pp0_iter3_reg;
        lshr_ln2_reg_2180_pp0_iter5_reg <= lshr_ln2_reg_2180_pp0_iter4_reg;
        lshr_ln2_reg_2180_pp0_iter6_reg <= lshr_ln2_reg_2180_pp0_iter5_reg;
        lshr_ln2_reg_2180_pp0_iter7_reg <= lshr_ln2_reg_2180_pp0_iter6_reg;
        lshr_ln2_reg_2180_pp0_iter8_reg <= lshr_ln2_reg_2180_pp0_iter7_reg;
        lshr_ln2_reg_2180_pp0_iter9_reg <= lshr_ln2_reg_2180_pp0_iter8_reg;
        offset_reg_2168_pp0_iter10_reg <= offset_reg_2168_pp0_iter9_reg;
        offset_reg_2168_pp0_iter2_reg <= offset_reg_2168_pp0_iter1_reg;
        offset_reg_2168_pp0_iter3_reg <= offset_reg_2168_pp0_iter2_reg;
        offset_reg_2168_pp0_iter4_reg <= offset_reg_2168_pp0_iter3_reg;
        offset_reg_2168_pp0_iter5_reg <= offset_reg_2168_pp0_iter4_reg;
        offset_reg_2168_pp0_iter6_reg <= offset_reg_2168_pp0_iter5_reg;
        offset_reg_2168_pp0_iter7_reg <= offset_reg_2168_pp0_iter6_reg;
        offset_reg_2168_pp0_iter8_reg <= offset_reg_2168_pp0_iter7_reg;
        offset_reg_2168_pp0_iter9_reg <= offset_reg_2168_pp0_iter8_reg;
        tmp_132_reg_2227 <= {{mul_ln194_fu_1404_p2[18:13]}};
        tmp_133_reg_2232 <= {{mul_ln195_fu_1423_p2[18:13]}};
        tmp_134_reg_2237 <= {{mul_ln196_fu_1442_p2[18:13]}};
        tmp_135_reg_2242 <= {{mul_ln197_fu_1461_p2[18:13]}};
        tmp_137_reg_2247 <= {{mul_ln199_fu_1480_p2[18:13]}};
        tmp_15_reg_2778 <= tmp_15_fu_1703_p29;
        tmp_16_reg_2784 <= tmp_16_fu_1762_p29;
        tmp_17_reg_2790 <= tmp_17_fu_1821_p29;
        tmp_18_reg_2796 <= tmp_18_fu_1880_p29;
        tmp_19_reg_2802 <= tmp_19_fu_1939_p29;
        tmp_20_reg_2808 <= tmp_20_fu_1998_p29;
        tmp_21_reg_2814 <= tmp_21_fu_2057_p29;
        tmp_reg_2185 <= {{mul_ln172_1_fu_1356_p2[18:13]}};
        tmp_reg_2185_pp0_iter12_reg <= tmp_reg_2185;
        tmp_s_reg_2772 <= tmp_s_fu_1644_p29;
        trunc_ln172_reg_2215 <= trunc_ln172_fu_1397_p1;
        trunc_ln172_reg_2215_pp0_iter13_reg <= trunc_ln172_reg_2215;
        trunc_ln188_reg_2164_pp0_iter10_reg <= trunc_ln188_reg_2164_pp0_iter9_reg;
        trunc_ln188_reg_2164_pp0_iter11_reg <= trunc_ln188_reg_2164_pp0_iter10_reg;
        trunc_ln188_reg_2164_pp0_iter12_reg <= trunc_ln188_reg_2164_pp0_iter11_reg;
        trunc_ln188_reg_2164_pp0_iter13_reg <= trunc_ln188_reg_2164_pp0_iter12_reg;
        trunc_ln188_reg_2164_pp0_iter14_reg <= trunc_ln188_reg_2164_pp0_iter13_reg;
        trunc_ln188_reg_2164_pp0_iter2_reg <= trunc_ln188_reg_2164_pp0_iter1_reg;
        trunc_ln188_reg_2164_pp0_iter3_reg <= trunc_ln188_reg_2164_pp0_iter2_reg;
        trunc_ln188_reg_2164_pp0_iter4_reg <= trunc_ln188_reg_2164_pp0_iter3_reg;
        trunc_ln188_reg_2164_pp0_iter5_reg <= trunc_ln188_reg_2164_pp0_iter4_reg;
        trunc_ln188_reg_2164_pp0_iter6_reg <= trunc_ln188_reg_2164_pp0_iter5_reg;
        trunc_ln188_reg_2164_pp0_iter7_reg <= trunc_ln188_reg_2164_pp0_iter6_reg;
        trunc_ln188_reg_2164_pp0_iter8_reg <= trunc_ln188_reg_2164_pp0_iter7_reg;
        trunc_ln188_reg_2164_pp0_iter9_reg <= trunc_ln188_reg_2164_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln2_reg_2180 <= {{ap_sig_allocacmp_tid[5:1]}};
        lshr_ln2_reg_2180_pp0_iter1_reg <= lshr_ln2_reg_2180;
        offset_reg_2168 <= offset_fu_1323_p2;
        offset_reg_2168_pp0_iter1_reg <= offset_reg_2168;
        trunc_ln188_reg_2164 <= trunc_ln188_fu_1289_p1;
        trunc_ln188_reg_2164_pp0_iter1_reg <= trunc_ln188_reg_2164;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln188_reg_2164_pp0_iter14_reg == 1'd0))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln188_fu_1277_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = tid_2_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_13_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_13_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_13_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_13_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_13_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_13_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_13_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_13_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_13_address0_local = 'bx;
        end
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_14_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_14_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_14_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_14_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_14_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_14_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_14_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_14_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_14_address0_local = 'bx;
        end
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_15_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_15_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_15_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_15_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_15_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_15_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_15_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_15_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_15_address0_local = 'bx;
        end
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_16_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_16_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_16_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_16_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_16_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_16_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_16_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_16_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_16_address0_local = 'bx;
        end
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_17_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_17_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_17_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_17_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_17_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_17_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_17_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_17_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_17_address0_local = 'bx;
        end
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_18_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_18_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_18_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_18_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_18_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_18_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_18_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_18_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_18_address0_local = 'bx;
        end
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_19_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_19_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_19_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_19_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_19_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_19_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_19_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_19_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_19_address0_local = 'bx;
        end
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_20_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_20_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_20_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_20_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_20_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_20_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_20_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_20_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_20_address0_local = 'bx;
        end
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_21_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_21_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_21_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_21_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_21_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_21_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_21_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_21_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_21_address0_local = 'bx;
        end
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_22_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_22_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_22_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_22_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_22_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_22_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_22_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_22_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_22_address0_local = 'bx;
        end
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_23_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_23_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_23_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_23_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_23_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_23_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_23_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_23_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_23_address0_local = 'bx;
        end
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd8)) begin
            smem_24_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd1)) begin
            smem_24_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd3)) begin
            smem_24_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_24_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd11)) begin
            smem_24_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_24_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd6)) begin
            smem_24_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_24_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_24_address0_local = 'bx;
        end
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd1)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2215 == 4'd9)) begin
            smem_address0_local = zext_ln200_fu_1627_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd2)) begin
            smem_address0_local = zext_ln199_fu_1602_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd4)) begin
            smem_address0_local = zext_ln198_fu_1585_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd10)) begin
            smem_address0_local = zext_ln197_fu_1560_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd12)) begin
            smem_address0_local = zext_ln196_fu_1544_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd5)) begin
            smem_address0_local = zext_ln195_fu_1528_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd7)) begin
            smem_address0_local = zext_ln194_fu_1512_p1;
        end else if ((trunc_ln172_reg_2215 == 4'd0)) begin
            smem_address0_local = zext_ln172_1_fu_1496_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2215 == 4'd0)))) begin
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
assign DATA_x_10_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_d0 = tmp_18_reg_2796;
assign DATA_x_10_we0 = DATA_x_10_we0_local;
assign DATA_x_11_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_d0 = tmp_20_reg_2808;
assign DATA_x_11_we0 = DATA_x_11_we0_local;
assign DATA_x_12_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_d0 = tmp_15_reg_2778;
assign DATA_x_12_we0 = DATA_x_12_we0_local;
assign DATA_x_13_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_d0 = tmp_17_reg_2790;
assign DATA_x_13_we0 = DATA_x_13_we0_local;
assign DATA_x_14_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_d0 = tmp_19_reg_2802;
assign DATA_x_14_we0 = DATA_x_14_we0_local;
assign DATA_x_15_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_d0 = tmp_21_reg_2814;
assign DATA_x_15_we0 = DATA_x_15_we0_local;
assign DATA_x_1_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = tmp_16_reg_2784;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = tmp_18_reg_2796;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = tmp_20_reg_2808;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = tmp_15_reg_2778;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = tmp_17_reg_2790;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = tmp_19_reg_2802;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = tmp_21_reg_2814;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_8_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_d0 = tmp_s_reg_2772;
assign DATA_x_8_we0 = DATA_x_8_we0_local;
assign DATA_x_9_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_d0 = tmp_16_reg_2784;
assign DATA_x_9_we0 = DATA_x_9_we0_local;
assign DATA_x_address0 = zext_ln193_fu_2116_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = tmp_s_reg_2772;
assign DATA_x_we0 = DATA_x_we0_local;
assign add_ln188_fu_1283_p2 = (ap_sig_allocacmp_tid + 7'd1);
assign add_ln194_fu_1372_p2 = (offset_reg_2168_pp0_iter10_reg + 9'd32);
assign add_ln195_fu_1377_p2 = (offset_reg_2168_pp0_iter10_reg + 9'd8);
assign add_ln196_fu_1382_p2 = (offset_reg_2168_pp0_iter10_reg + 9'd40);
assign add_ln197_fu_1387_p2 = (offset_reg_2168_pp0_iter10_reg + 9'd16);
assign add_ln199_fu_1392_p2 = (offset_reg_2168_pp0_iter10_reg + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1329_p0 = (mul_ln_fu_1311_p5 + zext_ln114_fu_1303_p1);
assign grp_fu_1329_p1 = 9'd13;
assign grp_fu_2135_p0 = zext_ln172_16_fu_1350_p1;
assign grp_fu_2135_p1 = 10'd48;
assign grp_fu_2135_p2 = 21'd1261;
assign grp_fu_2144_p0 = zext_ln172_16_fu_1350_p1;
assign grp_fu_2144_p1 = 10'd56;
assign grp_fu_2144_p2 = 21'd1261;
assign hi_fu_1293_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign icmp_ln188_fu_1277_p2 = ((ap_sig_allocacmp_tid == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_1_fu_1356_p0 = mul_ln172_1_fu_1356_p00;
assign mul_ln172_1_fu_1356_p00 = offset_reg_2168_pp0_iter10_reg;
assign mul_ln172_1_fu_1356_p1 = 19'd631;
assign mul_ln194_fu_1404_p0 = mul_ln194_fu_1404_p00;
assign mul_ln194_fu_1404_p00 = add_ln194_reg_2190;
assign mul_ln194_fu_1404_p1 = 19'd631;
assign mul_ln195_fu_1423_p0 = mul_ln195_fu_1423_p00;
assign mul_ln195_fu_1423_p00 = add_ln195_reg_2195;
assign mul_ln195_fu_1423_p1 = 19'd631;
assign mul_ln196_fu_1442_p0 = mul_ln196_fu_1442_p00;
assign mul_ln196_fu_1442_p00 = add_ln196_reg_2200;
assign mul_ln196_fu_1442_p1 = 19'd631;
assign mul_ln197_fu_1461_p0 = mul_ln197_fu_1461_p00;
assign mul_ln197_fu_1461_p00 = add_ln197_reg_2205;
assign mul_ln197_fu_1461_p1 = 19'd631;
assign mul_ln199_fu_1480_p0 = mul_ln199_fu_1480_p00;
assign mul_ln199_fu_1480_p00 = add_ln199_reg_2210;
assign mul_ln199_fu_1480_p1 = 19'd631;
assign mul_ln_fu_1311_p5 = {{{{trunc_ln191_fu_1307_p1}, {2'd0}}, {trunc_ln191_fu_1307_p1}}, {1'd0}};
assign offset_fu_1323_p2 = (mul_ln_fu_1311_p5 + zext_ln114_fu_1303_p1);
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_19_address0 = smem_19_address0_local;
assign smem_19_ce0 = smem_19_ce0_local;
assign smem_20_address0 = smem_20_address0_local;
assign smem_20_ce0 = smem_20_ce0_local;
assign smem_21_address0 = smem_21_address0_local;
assign smem_21_ce0 = smem_21_ce0_local;
assign smem_22_address0 = smem_22_address0_local;
assign smem_22_ce0 = smem_22_ce0_local;
assign smem_23_address0 = smem_23_address0_local;
assign smem_23_ce0 = smem_23_ce0_local;
assign smem_24_address0 = smem_24_address0_local;
assign smem_24_ce0 = smem_24_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_136_fu_1576_p1 = grp_fu_2135_p3;
assign tmp_136_fu_1576_p4 = {{tmp_136_fu_1576_p1[20:14]}};
assign tmp_138_fu_1618_p1 = grp_fu_2144_p3;
assign tmp_138_fu_1618_p4 = {{tmp_138_fu_1618_p1[20:14]}};
assign tmp_15_fu_1703_p27 = 'bx;
assign tmp_16_fu_1762_p27 = 'bx;
assign tmp_17_fu_1821_p27 = 'bx;
assign tmp_18_fu_1880_p27 = 'bx;
assign tmp_19_fu_1939_p27 = 'bx;
assign tmp_20_fu_1998_p27 = 'bx;
assign tmp_21_fu_2057_p27 = 'bx;
assign tmp_s_fu_1644_p27 = 'bx;
assign trunc_ln172_fu_1397_p1 = grp_fu_1329_p2[3:0];
assign trunc_ln188_fu_1289_p1 = ap_sig_allocacmp_tid[0:0];
assign trunc_ln191_fu_1307_p1 = ap_sig_allocacmp_tid[2:0];
assign zext_ln114_fu_1303_p1 = hi_fu_1293_p4;
assign zext_ln172_16_fu_1350_p1 = offset_reg_2168_pp0_iter9_reg;
assign zext_ln172_1_fu_1496_p1 = tmp_reg_2185_pp0_iter12_reg;
assign zext_ln193_fu_2116_p1 = lshr_ln2_reg_2180_pp0_iter14_reg;
assign zext_ln194_fu_1512_p1 = tmp_132_reg_2227;
assign zext_ln195_fu_1528_p1 = tmp_133_reg_2232;
assign zext_ln196_fu_1544_p1 = tmp_134_reg_2237;
assign zext_ln197_fu_1560_p1 = tmp_135_reg_2242;
assign zext_ln198_fu_1585_p1 = tmp_136_fu_1576_p4;
assign zext_ln199_fu_1602_p1 = tmp_137_reg_2247;
assign zext_ln200_fu_1627_p1 = tmp_138_fu_1618_p4;
endmodule 