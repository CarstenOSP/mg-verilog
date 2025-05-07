module forward_dataflow_in_loop_VITIS_LOOP_6001_1_Loop_VITIS_LOOP_5848_1_proc114_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv38_cast,mul9_i_cast_cast,empty_91,v4901_address0,v4901_ce0,v4901_we0,v4901_d0,v4901_1_address0,v4901_1_ce0,v4901_1_we0,v4901_1_d0,v4901_2_address0,v4901_2_ce0,v4901_2_we0,v4901_2_d0,v4901_3_address0,v4901_3_ce0,v4901_3_we0,v4901_3_d0,v4901_4_address0,v4901_4_ce0,v4901_4_we0,v4901_4_d0,v4901_5_address0,v4901_5_ce0,v4901_5_we0,v4901_5_d0,v4901_6_address0,v4901_6_ce0,v4901_6_we0,v4901_6_d0,v4901_7_address0,v4901_7_ce0,v4901_7_we0,v4901_7_d0,v4901_8_address0,v4901_8_ce0,v4901_8_we0,v4901_8_d0,v4901_9_address0,v4901_9_ce0,v4901_9_we0,v4901_9_d0,v4901_10_address0,v4901_10_ce0,v4901_10_we0,v4901_10_d0,v4901_11_address0,v4901_11_ce0,v4901_11_we0,v4901_11_d0,v4901_12_address0,v4901_12_ce0,v4901_12_we0,v4901_12_d0,v4901_13_address0,v4901_13_ce0,v4901_13_we0,v4901_13_d0,v4901_14_address0,v4901_14_ce0,v4901_14_we0,v4901_14_d0,v4901_15_address0,v4901_15_ce0,v4901_15_we0,v4901_15_d0,empty_92,empty,v13735_0_0_address0,v13735_0_0_ce0,v13735_0_0_q0,v13735_0_0_address1,v13735_0_0_ce1,v13735_0_0_q1,v13735_0_1_address0,v13735_0_1_ce0,v13735_0_1_q0,v13735_0_1_address1,v13735_0_1_ce1,v13735_0_1_q1,v13735_1_0_address0,v13735_1_0_ce0,v13735_1_0_q0,v13735_1_0_address1,v13735_1_0_ce1,v13735_1_0_q1,v13735_1_1_address0,v13735_1_1_ce0,v13735_1_1_q0,v13735_1_1_address1,v13735_1_1_ce1,v13735_1_1_q1,v13735_2_0_address0,v13735_2_0_ce0,v13735_2_0_q0,v13735_2_0_address1,v13735_2_0_ce1,v13735_2_0_q1,v13735_2_1_address0,v13735_2_1_ce0,v13735_2_1_q0,v13735_2_1_address1,v13735_2_1_ce1,v13735_2_1_q1,v13735_3_0_address0,v13735_3_0_ce0,v13735_3_0_q0,v13735_3_0_address1,v13735_3_0_ce1,v13735_3_0_q1,v13735_3_1_address0,v13735_3_1_ce0,v13735_3_1_q0,v13735_3_1_address1,v13735_3_1_ce1,v13735_3_1_q1,v13735_4_0_address0,v13735_4_0_ce0,v13735_4_0_q0,v13735_4_0_address1,v13735_4_0_ce1,v13735_4_0_q1,v13735_4_1_address0,v13735_4_1_ce0,v13735_4_1_q0,v13735_4_1_address1,v13735_4_1_ce1,v13735_4_1_q1,v13735_5_0_address0,v13735_5_0_ce0,v13735_5_0_q0,v13735_5_0_address1,v13735_5_0_ce1,v13735_5_0_q1,v13735_5_1_address0,v13735_5_1_ce0,v13735_5_1_q0,v13735_5_1_address1,v13735_5_1_ce1,v13735_5_1_q1,v13735_6_0_address0,v13735_6_0_ce0,v13735_6_0_q0,v13735_6_0_address1,v13735_6_0_ce1,v13735_6_0_q1,v13735_6_1_address0,v13735_6_1_ce0,v13735_6_1_q0,v13735_6_1_address1,v13735_6_1_ce1,v13735_6_1_q1,v13735_7_0_address0,v13735_7_0_ce0,v13735_7_0_q0,v13735_7_0_address1,v13735_7_0_ce1,v13735_7_0_q1,v13735_7_1_address0,v13735_7_1_ce0,v13735_7_1_q0,v13735_7_1_address1,v13735_7_1_ce1,v13735_7_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [5:0] p_udiv38_cast;
input  [3:0] mul9_i_cast_cast;
input  [1:0] empty_91;
output  [5:0] v4901_address0;
output   v4901_ce0;
output   v4901_we0;
output  [7:0] v4901_d0;
output  [5:0] v4901_1_address0;
output   v4901_1_ce0;
output   v4901_1_we0;
output  [7:0] v4901_1_d0;
output  [5:0] v4901_2_address0;
output   v4901_2_ce0;
output   v4901_2_we0;
output  [7:0] v4901_2_d0;
output  [5:0] v4901_3_address0;
output   v4901_3_ce0;
output   v4901_3_we0;
output  [7:0] v4901_3_d0;
output  [5:0] v4901_4_address0;
output   v4901_4_ce0;
output   v4901_4_we0;
output  [7:0] v4901_4_d0;
output  [5:0] v4901_5_address0;
output   v4901_5_ce0;
output   v4901_5_we0;
output  [7:0] v4901_5_d0;
output  [5:0] v4901_6_address0;
output   v4901_6_ce0;
output   v4901_6_we0;
output  [7:0] v4901_6_d0;
output  [5:0] v4901_7_address0;
output   v4901_7_ce0;
output   v4901_7_we0;
output  [7:0] v4901_7_d0;
output  [5:0] v4901_8_address0;
output   v4901_8_ce0;
output   v4901_8_we0;
output  [7:0] v4901_8_d0;
output  [5:0] v4901_9_address0;
output   v4901_9_ce0;
output   v4901_9_we0;
output  [7:0] v4901_9_d0;
output  [5:0] v4901_10_address0;
output   v4901_10_ce0;
output   v4901_10_we0;
output  [7:0] v4901_10_d0;
output  [5:0] v4901_11_address0;
output   v4901_11_ce0;
output   v4901_11_we0;
output  [7:0] v4901_11_d0;
output  [5:0] v4901_12_address0;
output   v4901_12_ce0;
output   v4901_12_we0;
output  [7:0] v4901_12_d0;
output  [5:0] v4901_13_address0;
output   v4901_13_ce0;
output   v4901_13_we0;
output  [7:0] v4901_13_d0;
output  [5:0] v4901_14_address0;
output   v4901_14_ce0;
output   v4901_14_we0;
output  [7:0] v4901_14_d0;
output  [5:0] v4901_15_address0;
output   v4901_15_ce0;
output   v4901_15_we0;
output  [7:0] v4901_15_d0;
input  [0:0] empty_92;
input  [1:0] empty;
output  [11:0] v13735_0_0_address0;
output   v13735_0_0_ce0;
input  [7:0] v13735_0_0_q0;
output  [11:0] v13735_0_0_address1;
output   v13735_0_0_ce1;
input  [7:0] v13735_0_0_q1;
output  [11:0] v13735_0_1_address0;
output   v13735_0_1_ce0;
input  [7:0] v13735_0_1_q0;
output  [11:0] v13735_0_1_address1;
output   v13735_0_1_ce1;
input  [7:0] v13735_0_1_q1;
output  [11:0] v13735_1_0_address0;
output   v13735_1_0_ce0;
input  [7:0] v13735_1_0_q0;
output  [11:0] v13735_1_0_address1;
output   v13735_1_0_ce1;
input  [7:0] v13735_1_0_q1;
output  [11:0] v13735_1_1_address0;
output   v13735_1_1_ce0;
input  [7:0] v13735_1_1_q0;
output  [11:0] v13735_1_1_address1;
output   v13735_1_1_ce1;
input  [7:0] v13735_1_1_q1;
output  [11:0] v13735_2_0_address0;
output   v13735_2_0_ce0;
input  [7:0] v13735_2_0_q0;
output  [11:0] v13735_2_0_address1;
output   v13735_2_0_ce1;
input  [7:0] v13735_2_0_q1;
output  [11:0] v13735_2_1_address0;
output   v13735_2_1_ce0;
input  [7:0] v13735_2_1_q0;
output  [11:0] v13735_2_1_address1;
output   v13735_2_1_ce1;
input  [7:0] v13735_2_1_q1;
output  [11:0] v13735_3_0_address0;
output   v13735_3_0_ce0;
input  [7:0] v13735_3_0_q0;
output  [11:0] v13735_3_0_address1;
output   v13735_3_0_ce1;
input  [7:0] v13735_3_0_q1;
output  [11:0] v13735_3_1_address0;
output   v13735_3_1_ce0;
input  [7:0] v13735_3_1_q0;
output  [11:0] v13735_3_1_address1;
output   v13735_3_1_ce1;
input  [7:0] v13735_3_1_q1;
output  [11:0] v13735_4_0_address0;
output   v13735_4_0_ce0;
input  [7:0] v13735_4_0_q0;
output  [11:0] v13735_4_0_address1;
output   v13735_4_0_ce1;
input  [7:0] v13735_4_0_q1;
output  [11:0] v13735_4_1_address0;
output   v13735_4_1_ce0;
input  [7:0] v13735_4_1_q0;
output  [11:0] v13735_4_1_address1;
output   v13735_4_1_ce1;
input  [7:0] v13735_4_1_q1;
output  [11:0] v13735_5_0_address0;
output   v13735_5_0_ce0;
input  [7:0] v13735_5_0_q0;
output  [11:0] v13735_5_0_address1;
output   v13735_5_0_ce1;
input  [7:0] v13735_5_0_q1;
output  [11:0] v13735_5_1_address0;
output   v13735_5_1_ce0;
input  [7:0] v13735_5_1_q0;
output  [11:0] v13735_5_1_address1;
output   v13735_5_1_ce1;
input  [7:0] v13735_5_1_q1;
output  [11:0] v13735_6_0_address0;
output   v13735_6_0_ce0;
input  [7:0] v13735_6_0_q0;
output  [11:0] v13735_6_0_address1;
output   v13735_6_0_ce1;
input  [7:0] v13735_6_0_q1;
output  [11:0] v13735_6_1_address0;
output   v13735_6_1_ce0;
input  [7:0] v13735_6_1_q0;
output  [11:0] v13735_6_1_address1;
output   v13735_6_1_ce1;
input  [7:0] v13735_6_1_q1;
output  [11:0] v13735_7_0_address0;
output   v13735_7_0_ce0;
input  [7:0] v13735_7_0_q0;
output  [11:0] v13735_7_0_address1;
output   v13735_7_0_ce1;
input  [7:0] v13735_7_0_q1;
output  [11:0] v13735_7_1_address0;
output   v13735_7_1_ce0;
input  [7:0] v13735_7_1_q0;
output  [11:0] v13735_7_1_address1;
output   v13735_7_1_ce1;
input  [7:0] v13735_7_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5848_fu_1192_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] p_cast4_fu_872_p1;
reg   [2:0] p_cast4_reg_1690;
wire   [1:0] v4833_mid2_fu_970_p3;
reg   [1:0] v4833_mid2_reg_1695;
wire   [9:0] add_ln5853_2_fu_1058_p2;
reg   [9:0] add_ln5853_2_reg_1701;
wire   [9:0] add_ln5857_2_fu_1098_p2;
reg   [9:0] add_ln5857_2_reg_1707;
wire   [5:0] add_ln5883_fu_1122_p2;
reg   [5:0] add_ln5883_reg_1713;
wire   [4:0] empty_255_fu_1134_p2;
reg   [4:0] empty_255_reg_1719;
wire   [0:0] empty_256_fu_1140_p1;
reg   [0:0] empty_256_reg_1724;
reg   [0:0] empty_256_reg_1724_pp0_iter1_reg;
reg   [0:0] empty_256_reg_1724_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_1744;
wire   [0:0] icmp_ln5850_fu_1180_p2;
reg   [0:0] icmp_ln5850_reg_1749;
wire   [0:0] icmp_ln5849_fu_1186_p2;
reg   [0:0] icmp_ln5849_reg_1754;
reg   [0:0] icmp_ln5848_reg_1759;
wire   [5:0] add_ln5883_1_fu_1406_p2;
reg   [5:0] add_ln5883_1_reg_1763;
wire   [11:0] add_ln5853_1_fu_1441_p2;
reg   [11:0] add_ln5853_1_reg_1768;
wire   [11:0] add_ln5857_1_fu_1459_p2;
reg   [11:0] add_ln5857_1_reg_1783;
wire   [63:0] zext_ln5883_3_fu_1489_p1;
reg   [63:0] zext_ln5883_3_reg_1858;
reg   [0:0] ap_phi_mux_icmp_ln5849294_phi_fu_855_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln5850293_phi_fu_865_p4;
wire   [63:0] zext_ln5855_2_fu_1453_p1;
wire   [63:0] zext_ln5859_1_fu_1471_p1;
wire   [63:0] zext_ln5853_3_fu_1500_p1;
wire   [63:0] zext_ln5857_2_fu_1505_p1;
reg   [5:0] indvar_flatten12288_fu_188;
wire   [5:0] add_ln5848_1_fu_1174_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten12288_load;
reg   [5:0] v4831289_fu_192;
wire   [5:0] v4831_fu_950_p3;
reg   [5:0] ap_sig_allocacmp_v4831289_load;
reg   [4:0] indvar_flatten290_fu_196;
wire   [4:0] select_ln5849_1_fu_1166_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten290_load;
reg   [3:0] v4832291_fu_200;
wire   [3:0] v4832_fu_978_p3;
reg   [3:0] ap_sig_allocacmp_v4832291_load;
reg   [1:0] v4833292_fu_204;
wire   [1:0] v4833_fu_1154_p2;
reg   [1:0] ap_sig_allocacmp_v4833292_load;
reg    v13735_0_0_ce1_local;
reg    v13735_0_0_ce0_local;
reg    v13735_0_1_ce1_local;
reg    v13735_0_1_ce0_local;
reg    v13735_1_0_ce1_local;
reg    v13735_1_0_ce0_local;
reg    v13735_1_1_ce1_local;
reg    v13735_1_1_ce0_local;
reg    v13735_2_0_ce1_local;
reg    v13735_2_0_ce0_local;
reg    v13735_2_1_ce1_local;
reg    v13735_2_1_ce0_local;
reg    v13735_3_0_ce1_local;
reg    v13735_3_0_ce0_local;
reg    v13735_3_1_ce1_local;
reg    v13735_3_1_ce0_local;
reg    v13735_4_0_ce1_local;
reg    v13735_4_0_ce0_local;
reg    v13735_4_1_ce1_local;
reg    v13735_4_1_ce0_local;
reg    v13735_5_0_ce1_local;
reg    v13735_5_0_ce0_local;
reg    v13735_5_1_ce1_local;
reg    v13735_5_1_ce0_local;
reg    v13735_6_0_ce1_local;
reg    v13735_6_0_ce0_local;
reg    v13735_6_1_ce1_local;
reg    v13735_6_1_ce0_local;
reg    v13735_7_0_ce1_local;
reg    v13735_7_0_ce0_local;
reg    v13735_7_1_ce1_local;
reg    v13735_7_1_ce0_local;
reg    v4901_14_we0_local;
wire   [7:0] select_ln5855_fu_1522_p3;
reg    v4901_14_ce0_local;
reg    v4901_12_we0_local;
wire   [7:0] select_ln5859_fu_1530_p3;
reg    v4901_12_ce0_local;
reg    v4901_10_we0_local;
wire   [7:0] select_ln5863_fu_1538_p3;
reg    v4901_10_ce0_local;
reg    v4901_8_we0_local;
wire   [7:0] select_ln5867_fu_1546_p3;
reg    v4901_8_ce0_local;
reg    v4901_6_we0_local;
wire   [7:0] select_ln5871_fu_1554_p3;
reg    v4901_6_ce0_local;
reg    v4901_4_we0_local;
wire   [7:0] select_ln5875_fu_1562_p3;
reg    v4901_4_ce0_local;
reg    v4901_2_we0_local;
wire   [7:0] select_ln5879_fu_1570_p3;
reg    v4901_2_ce0_local;
reg    v4901_we0_local;
wire   [7:0] select_ln5883_fu_1578_p3;
reg    v4901_ce0_local;
reg    v4901_15_we0_local;
wire   [7:0] select_ln5853_fu_1586_p3;
reg    v4901_15_ce0_local;
reg    v4901_13_we0_local;
wire   [7:0] select_ln5857_fu_1594_p3;
reg    v4901_13_ce0_local;
reg    v4901_11_we0_local;
wire   [7:0] select_ln5861_fu_1602_p3;
reg    v4901_11_ce0_local;
reg    v4901_9_we0_local;
wire   [7:0] select_ln5865_fu_1610_p3;
reg    v4901_9_ce0_local;
reg    v4901_7_we0_local;
wire   [7:0] select_ln5869_fu_1618_p3;
reg    v4901_7_ce0_local;
reg    v4901_5_we0_local;
wire   [7:0] select_ln5873_fu_1626_p3;
reg    v4901_5_ce0_local;
reg    v4901_3_we0_local;
wire   [7:0] select_ln5877_fu_1634_p3;
reg    v4901_3_ce0_local;
reg    v4901_1_we0_local;
wire   [7:0] select_ln5881_fu_1642_p3;
reg    v4901_1_ce0_local;
wire   [0:0] xor_ln5848_fu_938_p2;
wire   [5:0] add_ln5848_fu_924_p2;
wire   [3:0] select_ln5848_fu_930_p3;
wire   [0:0] and_ln5848_fu_944_p2;
wire   [0:0] empty_252_fu_964_p2;
wire   [3:0] add_ln5849_fu_958_p2;
wire   [2:0] lshr_ln_fu_990_p4;
wire   [4:0] tmp_238_fu_1004_p3;
wire   [5:0] zext_ln5883_fu_1012_p1;
wire   [5:0] zext_ln5848_1_fu_1000_p1;
wire   [8:0] zext_ln5848_fu_986_p1;
wire   [5:0] empty_254_fu_1028_p2;
wire   [8:0] tmp_239_fu_1034_p3;
wire   [6:0] tmp_240_fu_1046_p3;
wire   [9:0] zext_ln5853_fu_1042_p1;
wire   [9:0] zext_ln5853_1_fu_1054_p1;
wire   [8:0] empty_253_fu_1022_p2;
wire   [5:0] tmp_241_fu_1064_p4;
wire   [8:0] tmp_242_fu_1074_p3;
wire   [6:0] tmp_243_fu_1086_p3;
wire   [9:0] zext_ln5857_fu_1082_p1;
wire   [9:0] zext_ln5857_1_fu_1094_p1;
wire   [2:0] lshr_ln15_fu_1108_p4;
wire   [5:0] add_ln5883_2_fu_1016_p2;
wire   [5:0] zext_ln5883_1_fu_1118_p1;
wire   [4:0] mul9_i_cast_cast_cast_fu_880_p1;
wire   [4:0] zext_ln5849_1_fu_1104_p1;
wire   [4:0] tmp_fu_1128_p2;
wire   [4:0] p_cast3_fu_876_p1;
wire   [4:0] add_ln5849_1_fu_1160_p2;
wire   [5:0] shl_ln5883_fu_1229_p2;
wire   [9:0] zext_ln5855_fu_1239_p1;
wire   [9:0] add_ln5855_fu_1242_p2;
wire   [8:0] trunc_ln5855_fu_1247_p1;
wire   [10:0] tmp_244_fu_1251_p3;
wire   [11:0] tmp_245_fu_1259_p3;
wire   [11:0] zext_ln5855_1_fu_1267_p1;
wire   [9:0] add_ln5859_fu_1277_p2;
wire   [8:0] trunc_ln5859_fu_1282_p1;
wire   [10:0] tmp_246_fu_1286_p3;
wire   [11:0] tmp_247_fu_1294_p3;
wire   [11:0] zext_ln5859_fu_1302_p1;
wire   [5:0] p_cast9_i_fu_1312_p1;
wire   [5:0] empty_257_fu_1315_p2;
wire   [4:0] p_cast_fu_1321_p4;
wire  signed [9:0] sext_ln5853_fu_1331_p1;
wire   [10:0] mul_ln5853_cast_fu_1223_p1;
wire   [10:0] zext_ln5853_2_fu_1335_p1;
wire   [10:0] add_ln5853_fu_1339_p2;
wire   [8:0] trunc_ln5853_fu_1345_p1;
wire   [11:0] tmp_249_fu_1357_p3;
wire   [11:0] tmp_248_fu_1349_p3;
wire   [10:0] zext_ln5849_fu_1226_p1;
wire   [10:0] add_ln5857_fu_1371_p2;
wire   [8:0] trunc_ln5857_fu_1377_p1;
wire   [11:0] tmp_251_fu_1389_p3;
wire   [11:0] tmp_250_fu_1381_p3;
wire   [5:0] sub_ln5883_fu_1234_p2;
wire   [5:0] zext_ln5883_2_fu_1403_p1;
wire   [2:0] zext_ln5850_fu_1412_p1;
wire   [2:0] add_ln5852_fu_1422_p2;
wire   [3:0] zext_ln5852_fu_1427_p1;
wire   [3:0] select_ln5852_fu_1415_p3;
wire   [3:0] add_ln5852_1_fu_1431_p2;
wire   [11:0] sub_ln5857_fu_1365_p2;
wire  signed [11:0] sext_ln5853_1_fu_1437_p1;
wire   [11:0] sub_ln5859_fu_1271_p2;
wire   [11:0] add_ln5855_1_fu_1447_p2;
wire   [11:0] sub_ln5850_fu_1397_p2;
wire   [11:0] sub_ln5859_1_fu_1306_p2;
wire   [11:0] add_ln5859_1_fu_1465_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1140;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten12288_fu_188 = 6'd0;
#0 v4831289_fu_192 = 6'd0;
#0 indvar_flatten290_fu_196 = 5'd0;
#0 v4832291_fu_200 = 4'd0;
#0 v4833292_fu_204 = 2'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12288_fu_188 <= add_ln5848_1_fu_1174_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12288_fu_188 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten290_fu_196 <= select_ln5849_1_fu_1166_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten290_fu_196 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4831289_fu_192 <= v4831_fu_950_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4831289_fu_192 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4832291_fu_200 <= v4832_fu_978_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4832291_fu_200 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4833292_fu_204 <= v4833_fu_1154_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v4833292_fu_204 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5853_1_reg_1768 <= add_ln5853_1_fu_1441_p2;
        add_ln5853_2_reg_1701[9 : 1] <= add_ln5853_2_fu_1058_p2[9 : 1];
        add_ln5857_1_reg_1783 <= add_ln5857_1_fu_1459_p2;
        add_ln5857_2_reg_1707[9 : 1] <= add_ln5857_2_fu_1098_p2[9 : 1];
        add_ln5883_1_reg_1763 <= add_ln5883_1_fu_1406_p2;
        add_ln5883_reg_1713 <= add_ln5883_fu_1122_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_255_reg_1719 <= empty_255_fu_1134_p2;
        empty_256_reg_1724 <= empty_256_fu_1140_p1;
        empty_256_reg_1724_pp0_iter1_reg <= empty_256_reg_1724;
        icmp_ln5848_reg_1759 <= icmp_ln5848_fu_1192_p2;
        p_cast4_reg_1690[1 : 0] <= p_cast4_fu_872_p1[1 : 0];
        tmp_s_reg_1744 <= {{empty_255_fu_1134_p2[4:1]}};
        v4833_mid2_reg_1695 <= v4833_mid2_fu_970_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        empty_256_reg_1724_pp0_iter2_reg <= empty_256_reg_1724_pp0_iter1_reg;
        zext_ln5883_3_reg_1858[5 : 0] <= zext_ln5883_3_fu_1489_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5849_reg_1754 <= icmp_ln5849_fu_1186_p2;
        icmp_ln5850_reg_1749 <= icmp_ln5850_fu_1180_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5848_fu_1192_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1140)) begin
            ap_phi_mux_icmp_ln5849294_phi_fu_855_p4 = icmp_ln5849_reg_1754;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5849294_phi_fu_855_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5849294_phi_fu_855_p4 = icmp_ln5849_reg_1754;
        end
    end else begin
        ap_phi_mux_icmp_ln5849294_phi_fu_855_p4 = icmp_ln5849_reg_1754;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1140)) begin
            ap_phi_mux_icmp_ln5850293_phi_fu_865_p4 = icmp_ln5850_reg_1749;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5850293_phi_fu_865_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5850293_phi_fu_865_p4 = icmp_ln5850_reg_1749;
        end
    end else begin
        ap_phi_mux_icmp_ln5850293_phi_fu_865_p4 = icmp_ln5850_reg_1749;
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
        ap_sig_allocacmp_indvar_flatten12288_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12288_load = indvar_flatten12288_fu_188;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten290_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten290_load = indvar_flatten290_fu_196;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4831289_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4831289_load = v4831289_fu_192;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4832291_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4832291_load = v4832291_fu_200;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4833292_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v4833292_load = v4833292_fu_204;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_0_0_ce0_local = 1'b1;
    end else begin
        v13735_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_0_0_ce1_local = 1'b1;
    end else begin
        v13735_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_0_1_ce0_local = 1'b1;
    end else begin
        v13735_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_0_1_ce1_local = 1'b1;
    end else begin
        v13735_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_1_0_ce0_local = 1'b1;
    end else begin
        v13735_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_1_0_ce1_local = 1'b1;
    end else begin
        v13735_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_1_1_ce0_local = 1'b1;
    end else begin
        v13735_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_1_1_ce1_local = 1'b1;
    end else begin
        v13735_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_2_0_ce0_local = 1'b1;
    end else begin
        v13735_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_2_0_ce1_local = 1'b1;
    end else begin
        v13735_2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_2_1_ce0_local = 1'b1;
    end else begin
        v13735_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_2_1_ce1_local = 1'b1;
    end else begin
        v13735_2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_3_0_ce0_local = 1'b1;
    end else begin
        v13735_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_3_0_ce1_local = 1'b1;
    end else begin
        v13735_3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_3_1_ce0_local = 1'b1;
    end else begin
        v13735_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_3_1_ce1_local = 1'b1;
    end else begin
        v13735_3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_4_0_ce0_local = 1'b1;
    end else begin
        v13735_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_4_0_ce1_local = 1'b1;
    end else begin
        v13735_4_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_4_1_ce0_local = 1'b1;
    end else begin
        v13735_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_4_1_ce1_local = 1'b1;
    end else begin
        v13735_4_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_5_0_ce0_local = 1'b1;
    end else begin
        v13735_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_5_0_ce1_local = 1'b1;
    end else begin
        v13735_5_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_5_1_ce0_local = 1'b1;
    end else begin
        v13735_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_5_1_ce1_local = 1'b1;
    end else begin
        v13735_5_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_6_0_ce0_local = 1'b1;
    end else begin
        v13735_6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_6_0_ce1_local = 1'b1;
    end else begin
        v13735_6_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_6_1_ce0_local = 1'b1;
    end else begin
        v13735_6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_6_1_ce1_local = 1'b1;
    end else begin
        v13735_6_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_7_0_ce0_local = 1'b1;
    end else begin
        v13735_7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_7_0_ce1_local = 1'b1;
    end else begin
        v13735_7_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13735_7_1_ce0_local = 1'b1;
    end else begin
        v13735_7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13735_7_1_ce1_local = 1'b1;
    end else begin
        v13735_7_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_10_ce0_local = 1'b1;
    end else begin
        v4901_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_10_we0_local = 1'b1;
    end else begin
        v4901_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_11_ce0_local = 1'b1;
    end else begin
        v4901_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_11_we0_local = 1'b1;
    end else begin
        v4901_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_12_ce0_local = 1'b1;
    end else begin
        v4901_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_12_we0_local = 1'b1;
    end else begin
        v4901_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_13_ce0_local = 1'b1;
    end else begin
        v4901_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_13_we0_local = 1'b1;
    end else begin
        v4901_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_14_ce0_local = 1'b1;
    end else begin
        v4901_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_14_we0_local = 1'b1;
    end else begin
        v4901_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_15_ce0_local = 1'b1;
    end else begin
        v4901_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_15_we0_local = 1'b1;
    end else begin
        v4901_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_1_ce0_local = 1'b1;
    end else begin
        v4901_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_1_we0_local = 1'b1;
    end else begin
        v4901_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_2_ce0_local = 1'b1;
    end else begin
        v4901_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_2_we0_local = 1'b1;
    end else begin
        v4901_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_3_ce0_local = 1'b1;
    end else begin
        v4901_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_3_we0_local = 1'b1;
    end else begin
        v4901_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_4_ce0_local = 1'b1;
    end else begin
        v4901_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_4_we0_local = 1'b1;
    end else begin
        v4901_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_5_ce0_local = 1'b1;
    end else begin
        v4901_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_5_we0_local = 1'b1;
    end else begin
        v4901_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_6_ce0_local = 1'b1;
    end else begin
        v4901_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_6_we0_local = 1'b1;
    end else begin
        v4901_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_7_ce0_local = 1'b1;
    end else begin
        v4901_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_7_we0_local = 1'b1;
    end else begin
        v4901_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_8_ce0_local = 1'b1;
    end else begin
        v4901_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_8_we0_local = 1'b1;
    end else begin
        v4901_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_9_ce0_local = 1'b1;
    end else begin
        v4901_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4901_9_we0_local = 1'b1;
    end else begin
        v4901_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_ce0_local = 1'b1;
    end else begin
        v4901_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4901_we0_local = 1'b1;
    end else begin
        v4901_we0_local = 1'b0;
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
assign add_ln5848_1_fu_1174_p2 = (ap_sig_allocacmp_indvar_flatten12288_load + 6'd1);
assign add_ln5848_fu_924_p2 = (ap_sig_allocacmp_v4831289_load + 6'd8);
assign add_ln5849_1_fu_1160_p2 = (ap_sig_allocacmp_indvar_flatten290_load + 5'd1);
assign add_ln5849_fu_958_p2 = (select_ln5848_fu_930_p3 + 4'd2);
assign add_ln5852_1_fu_1431_p2 = (zext_ln5852_fu_1427_p1 + select_ln5852_fu_1415_p3);
assign add_ln5852_fu_1422_p2 = (p_cast4_reg_1690 + zext_ln5850_fu_1412_p1);
assign add_ln5853_1_fu_1441_p2 = ($signed(sub_ln5857_fu_1365_p2) + $signed(sext_ln5853_1_fu_1437_p1));
assign add_ln5853_2_fu_1058_p2 = (zext_ln5853_fu_1042_p1 + zext_ln5853_1_fu_1054_p1);
assign add_ln5853_fu_1339_p2 = (mul_ln5853_cast_fu_1223_p1 + zext_ln5853_2_fu_1335_p1);
assign add_ln5855_1_fu_1447_p2 = ($signed(sub_ln5859_fu_1271_p2) + $signed(sext_ln5853_1_fu_1437_p1));
assign add_ln5855_fu_1242_p2 = (add_ln5853_2_reg_1701 + zext_ln5855_fu_1239_p1);
assign add_ln5857_1_fu_1459_p2 = ($signed(sub_ln5850_fu_1397_p2) + $signed(sext_ln5853_1_fu_1437_p1));
assign add_ln5857_2_fu_1098_p2 = (zext_ln5857_fu_1082_p1 + zext_ln5857_1_fu_1094_p1);
assign add_ln5857_fu_1371_p2 = (zext_ln5849_fu_1226_p1 + zext_ln5853_2_fu_1335_p1);
assign add_ln5859_1_fu_1465_p2 = ($signed(sub_ln5859_1_fu_1306_p2) + $signed(sext_ln5853_1_fu_1437_p1));
assign add_ln5859_fu_1277_p2 = (add_ln5857_2_reg_1707 + zext_ln5855_fu_1239_p1);
assign add_ln5883_1_fu_1406_p2 = (sub_ln5883_fu_1234_p2 + zext_ln5883_2_fu_1403_p1);
assign add_ln5883_2_fu_1016_p2 = (zext_ln5883_fu_1012_p1 + zext_ln5848_1_fu_1000_p1);
assign add_ln5883_fu_1122_p2 = (add_ln5883_2_fu_1016_p2 + zext_ln5883_1_fu_1118_p1);
assign and_ln5848_fu_944_p2 = (xor_ln5848_fu_938_p2 & ap_phi_mux_icmp_ln5850293_phi_fu_865_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1140 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln5848_reg_1759 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_252_fu_964_p2 = (ap_phi_mux_icmp_ln5849294_phi_fu_855_p4 | and_ln5848_fu_944_p2);
assign empty_253_fu_1022_p2 = (mul_i + zext_ln5848_fu_986_p1);
assign empty_254_fu_1028_p2 = (zext_ln5848_1_fu_1000_p1 + p_udiv38_cast);
assign empty_255_fu_1134_p2 = (tmp_fu_1128_p2 + p_cast3_fu_876_p1);
assign empty_256_fu_1140_p1 = empty_255_fu_1134_p2[0:0];
assign empty_257_fu_1315_p2 = ($signed(p_cast9_i_fu_1312_p1) + $signed(6'd63));
assign icmp_ln5848_fu_1192_p2 = ((ap_sig_allocacmp_indvar_flatten12288_load == 6'd59) ? 1'b1 : 1'b0);
assign icmp_ln5849_fu_1186_p2 = ((select_ln5849_1_fu_1166_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln5850_fu_1180_p2 = ((v4833_fu_1154_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln15_fu_1108_p4 = {{v4832_fu_978_p3[3:1]}};
assign lshr_ln_fu_990_p4 = {{v4831_fu_950_p3[5:3]}};
assign mul9_i_cast_cast_cast_fu_880_p1 = mul9_i_cast_cast;
assign mul_ln5853_cast_fu_1223_p1 = add_ln5853_2_reg_1701;
assign p_cast3_fu_876_p1 = empty_91;
assign p_cast4_fu_872_p1 = empty;
assign p_cast9_i_fu_1312_p1 = empty_255_reg_1719;
assign p_cast_fu_1321_p4 = {{empty_257_fu_1315_p2[5:1]}};
assign select_ln5848_fu_930_p3 = ((ap_phi_mux_icmp_ln5849294_phi_fu_855_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4832291_load);
assign select_ln5849_1_fu_1166_p3 = ((ap_phi_mux_icmp_ln5849294_phi_fu_855_p4[0:0] == 1'b1) ? 5'd1 : add_ln5849_1_fu_1160_p2);
assign select_ln5852_fu_1415_p3 = ((empty_92[0:0] == 1'b1) ? 4'd2 : 4'd15);
assign select_ln5853_fu_1586_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_0_0_q0 : v13735_0_1_q0);
assign select_ln5855_fu_1522_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_0_1_q1 : v13735_0_0_q1);
assign select_ln5857_fu_1594_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_1_0_q0 : v13735_1_1_q0);
assign select_ln5859_fu_1530_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_1_1_q1 : v13735_1_0_q1);
assign select_ln5861_fu_1602_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_2_0_q0 : v13735_2_1_q0);
assign select_ln5863_fu_1538_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_2_1_q1 : v13735_2_0_q1);
assign select_ln5865_fu_1610_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_3_0_q0 : v13735_3_1_q0);
assign select_ln5867_fu_1546_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_3_1_q1 : v13735_3_0_q1);
assign select_ln5869_fu_1618_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_4_0_q0 : v13735_4_1_q0);
assign select_ln5871_fu_1554_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_4_1_q1 : v13735_4_0_q1);
assign select_ln5873_fu_1626_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_5_0_q0 : v13735_5_1_q0);
assign select_ln5875_fu_1562_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_5_1_q1 : v13735_5_0_q1);
assign select_ln5877_fu_1634_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_6_0_q0 : v13735_6_1_q0);
assign select_ln5879_fu_1570_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_6_1_q1 : v13735_6_0_q1);
assign select_ln5881_fu_1642_p3 = ((empty_256_reg_1724_pp0_iter2_reg[0:0] == 1'b1) ? v13735_7_0_q0 : v13735_7_1_q0);
assign select_ln5883_fu_1578_p3 = ((empty_256_reg_1724_pp0_iter1_reg[0:0] == 1'b1) ? v13735_7_1_q1 : v13735_7_0_q1);
assign sext_ln5853_1_fu_1437_p1 = $signed(add_ln5852_1_fu_1431_p2);
assign sext_ln5853_fu_1331_p1 = $signed(p_cast_fu_1321_p4);
assign shl_ln5883_fu_1229_p2 = add_ln5883_reg_1713 << 6'd2;
assign sub_ln5850_fu_1397_p2 = (tmp_251_fu_1389_p3 - tmp_250_fu_1381_p3);
assign sub_ln5857_fu_1365_p2 = (tmp_249_fu_1357_p3 - tmp_248_fu_1349_p3);
assign sub_ln5859_1_fu_1306_p2 = (tmp_247_fu_1294_p3 - zext_ln5859_fu_1302_p1);
assign sub_ln5859_fu_1271_p2 = (tmp_245_fu_1259_p3 - zext_ln5855_1_fu_1267_p1);
assign sub_ln5883_fu_1234_p2 = (shl_ln5883_fu_1229_p2 - add_ln5883_reg_1713);
assign tmp_238_fu_1004_p3 = {{lshr_ln_fu_990_p4}, {2'd0}};
assign tmp_239_fu_1034_p3 = {{empty_254_fu_1028_p2}, {3'd0}};
assign tmp_240_fu_1046_p3 = {{empty_254_fu_1028_p2}, {1'd0}};
assign tmp_241_fu_1064_p4 = {{empty_253_fu_1022_p2[8:3]}};
assign tmp_242_fu_1074_p3 = {{tmp_241_fu_1064_p4}, {3'd0}};
assign tmp_243_fu_1086_p3 = {{tmp_241_fu_1064_p4}, {1'd0}};
assign tmp_244_fu_1251_p3 = {{add_ln5855_fu_1242_p2}, {1'd0}};
assign tmp_245_fu_1259_p3 = {{trunc_ln5855_fu_1247_p1}, {3'd0}};
assign tmp_246_fu_1286_p3 = {{add_ln5859_fu_1277_p2}, {1'd0}};
assign tmp_247_fu_1294_p3 = {{trunc_ln5859_fu_1282_p1}, {3'd0}};
assign tmp_248_fu_1349_p3 = {{add_ln5853_fu_1339_p2}, {1'd0}};
assign tmp_249_fu_1357_p3 = {{trunc_ln5853_fu_1345_p1}, {3'd0}};
assign tmp_250_fu_1381_p3 = {{add_ln5857_fu_1371_p2}, {1'd0}};
assign tmp_251_fu_1389_p3 = {{trunc_ln5857_fu_1377_p1}, {3'd0}};
assign tmp_fu_1128_p2 = (mul9_i_cast_cast_cast_fu_880_p1 + zext_ln5849_1_fu_1104_p1);
assign trunc_ln5853_fu_1345_p1 = add_ln5853_fu_1339_p2[8:0];
assign trunc_ln5855_fu_1247_p1 = add_ln5855_fu_1242_p2[8:0];
assign trunc_ln5857_fu_1377_p1 = add_ln5857_fu_1371_p2[8:0];
assign trunc_ln5859_fu_1282_p1 = add_ln5859_fu_1277_p2[8:0];
assign v13735_0_0_address0 = zext_ln5853_3_fu_1500_p1;
assign v13735_0_0_address1 = zext_ln5855_2_fu_1453_p1;
assign v13735_0_0_ce0 = v13735_0_0_ce0_local;
assign v13735_0_0_ce1 = v13735_0_0_ce1_local;
assign v13735_0_1_address0 = zext_ln5853_3_fu_1500_p1;
assign v13735_0_1_address1 = zext_ln5855_2_fu_1453_p1;
assign v13735_0_1_ce0 = v13735_0_1_ce0_local;
assign v13735_0_1_ce1 = v13735_0_1_ce1_local;
assign v13735_1_0_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_1_0_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_1_0_ce0 = v13735_1_0_ce0_local;
assign v13735_1_0_ce1 = v13735_1_0_ce1_local;
assign v13735_1_1_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_1_1_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_1_1_ce0 = v13735_1_1_ce0_local;
assign v13735_1_1_ce1 = v13735_1_1_ce1_local;
assign v13735_2_0_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_2_0_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_2_0_ce0 = v13735_2_0_ce0_local;
assign v13735_2_0_ce1 = v13735_2_0_ce1_local;
assign v13735_2_1_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_2_1_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_2_1_ce0 = v13735_2_1_ce0_local;
assign v13735_2_1_ce1 = v13735_2_1_ce1_local;
assign v13735_3_0_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_3_0_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_3_0_ce0 = v13735_3_0_ce0_local;
assign v13735_3_0_ce1 = v13735_3_0_ce1_local;
assign v13735_3_1_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_3_1_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_3_1_ce0 = v13735_3_1_ce0_local;
assign v13735_3_1_ce1 = v13735_3_1_ce1_local;
assign v13735_4_0_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_4_0_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_4_0_ce0 = v13735_4_0_ce0_local;
assign v13735_4_0_ce1 = v13735_4_0_ce1_local;
assign v13735_4_1_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_4_1_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_4_1_ce0 = v13735_4_1_ce0_local;
assign v13735_4_1_ce1 = v13735_4_1_ce1_local;
assign v13735_5_0_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_5_0_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_5_0_ce0 = v13735_5_0_ce0_local;
assign v13735_5_0_ce1 = v13735_5_0_ce1_local;
assign v13735_5_1_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_5_1_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_5_1_ce0 = v13735_5_1_ce0_local;
assign v13735_5_1_ce1 = v13735_5_1_ce1_local;
assign v13735_6_0_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_6_0_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_6_0_ce0 = v13735_6_0_ce0_local;
assign v13735_6_0_ce1 = v13735_6_0_ce1_local;
assign v13735_6_1_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_6_1_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_6_1_ce0 = v13735_6_1_ce0_local;
assign v13735_6_1_ce1 = v13735_6_1_ce1_local;
assign v13735_7_0_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_7_0_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_7_0_ce0 = v13735_7_0_ce0_local;
assign v13735_7_0_ce1 = v13735_7_0_ce1_local;
assign v13735_7_1_address0 = zext_ln5857_2_fu_1505_p1;
assign v13735_7_1_address1 = zext_ln5859_1_fu_1471_p1;
assign v13735_7_1_ce0 = v13735_7_1_ce0_local;
assign v13735_7_1_ce1 = v13735_7_1_ce1_local;
assign v4831_fu_950_p3 = ((ap_phi_mux_icmp_ln5849294_phi_fu_855_p4[0:0] == 1'b1) ? add_ln5848_fu_924_p2 : ap_sig_allocacmp_v4831289_load);
assign v4832_fu_978_p3 = ((and_ln5848_fu_944_p2[0:0] == 1'b1) ? add_ln5849_fu_958_p2 : select_ln5848_fu_930_p3);
assign v4833_fu_1154_p2 = (v4833_mid2_fu_970_p3 + 2'd1);
assign v4833_mid2_fu_970_p3 = ((empty_252_fu_964_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v4833292_load);
assign v4901_10_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_10_ce0 = v4901_10_ce0_local;
assign v4901_10_d0 = select_ln5863_fu_1538_p3;
assign v4901_10_we0 = v4901_10_we0_local;
assign v4901_11_address0 = zext_ln5883_3_reg_1858;
assign v4901_11_ce0 = v4901_11_ce0_local;
assign v4901_11_d0 = select_ln5861_fu_1602_p3;
assign v4901_11_we0 = v4901_11_we0_local;
assign v4901_12_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_12_ce0 = v4901_12_ce0_local;
assign v4901_12_d0 = select_ln5859_fu_1530_p3;
assign v4901_12_we0 = v4901_12_we0_local;
assign v4901_13_address0 = zext_ln5883_3_reg_1858;
assign v4901_13_ce0 = v4901_13_ce0_local;
assign v4901_13_d0 = select_ln5857_fu_1594_p3;
assign v4901_13_we0 = v4901_13_we0_local;
assign v4901_14_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_14_ce0 = v4901_14_ce0_local;
assign v4901_14_d0 = select_ln5855_fu_1522_p3;
assign v4901_14_we0 = v4901_14_we0_local;
assign v4901_15_address0 = zext_ln5883_3_reg_1858;
assign v4901_15_ce0 = v4901_15_ce0_local;
assign v4901_15_d0 = select_ln5853_fu_1586_p3;
assign v4901_15_we0 = v4901_15_we0_local;
assign v4901_1_address0 = zext_ln5883_3_reg_1858;
assign v4901_1_ce0 = v4901_1_ce0_local;
assign v4901_1_d0 = select_ln5881_fu_1642_p3;
assign v4901_1_we0 = v4901_1_we0_local;
assign v4901_2_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_2_ce0 = v4901_2_ce0_local;
assign v4901_2_d0 = select_ln5879_fu_1570_p3;
assign v4901_2_we0 = v4901_2_we0_local;
assign v4901_3_address0 = zext_ln5883_3_reg_1858;
assign v4901_3_ce0 = v4901_3_ce0_local;
assign v4901_3_d0 = select_ln5877_fu_1634_p3;
assign v4901_3_we0 = v4901_3_we0_local;
assign v4901_4_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_4_ce0 = v4901_4_ce0_local;
assign v4901_4_d0 = select_ln5875_fu_1562_p3;
assign v4901_4_we0 = v4901_4_we0_local;
assign v4901_5_address0 = zext_ln5883_3_reg_1858;
assign v4901_5_ce0 = v4901_5_ce0_local;
assign v4901_5_d0 = select_ln5873_fu_1626_p3;
assign v4901_5_we0 = v4901_5_we0_local;
assign v4901_6_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_6_ce0 = v4901_6_ce0_local;
assign v4901_6_d0 = select_ln5871_fu_1554_p3;
assign v4901_6_we0 = v4901_6_we0_local;
assign v4901_7_address0 = zext_ln5883_3_reg_1858;
assign v4901_7_ce0 = v4901_7_ce0_local;
assign v4901_7_d0 = select_ln5869_fu_1618_p3;
assign v4901_7_we0 = v4901_7_we0_local;
assign v4901_8_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_8_ce0 = v4901_8_ce0_local;
assign v4901_8_d0 = select_ln5867_fu_1546_p3;
assign v4901_8_we0 = v4901_8_we0_local;
assign v4901_9_address0 = zext_ln5883_3_reg_1858;
assign v4901_9_ce0 = v4901_9_ce0_local;
assign v4901_9_d0 = select_ln5865_fu_1610_p3;
assign v4901_9_we0 = v4901_9_we0_local;
assign v4901_address0 = zext_ln5883_3_fu_1489_p1;
assign v4901_ce0 = v4901_ce0_local;
assign v4901_d0 = select_ln5883_fu_1578_p3;
assign v4901_we0 = v4901_we0_local;
assign xor_ln5848_fu_938_p2 = (ap_phi_mux_icmp_ln5849294_phi_fu_855_p4 ^ 1'd1);
assign zext_ln5848_1_fu_1000_p1 = lshr_ln_fu_990_p4;
assign zext_ln5848_fu_986_p1 = v4831_fu_950_p3;
assign zext_ln5849_1_fu_1104_p1 = v4832_fu_978_p3;
assign zext_ln5849_fu_1226_p1 = add_ln5857_2_reg_1707;
assign zext_ln5850_fu_1412_p1 = v4833_mid2_reg_1695;
assign zext_ln5852_fu_1427_p1 = add_ln5852_fu_1422_p2;
assign zext_ln5853_1_fu_1054_p1 = tmp_240_fu_1046_p3;
assign zext_ln5853_2_fu_1335_p1 = $unsigned(sext_ln5853_fu_1331_p1);
assign zext_ln5853_3_fu_1500_p1 = add_ln5853_1_reg_1768;
assign zext_ln5853_fu_1042_p1 = tmp_239_fu_1034_p3;
assign zext_ln5855_1_fu_1267_p1 = tmp_244_fu_1251_p3;
assign zext_ln5855_2_fu_1453_p1 = add_ln5855_1_fu_1447_p2;
assign zext_ln5855_fu_1239_p1 = tmp_s_reg_1744;
assign zext_ln5857_1_fu_1094_p1 = tmp_243_fu_1086_p3;
assign zext_ln5857_2_fu_1505_p1 = add_ln5857_1_reg_1783;
assign zext_ln5857_fu_1082_p1 = tmp_242_fu_1074_p3;
assign zext_ln5859_1_fu_1471_p1 = add_ln5859_1_fu_1465_p2;
assign zext_ln5859_fu_1302_p1 = tmp_246_fu_1286_p3;
assign zext_ln5883_1_fu_1118_p1 = lshr_ln15_fu_1108_p4;
assign zext_ln5883_2_fu_1403_p1 = v4833_mid2_reg_1695;
assign zext_ln5883_3_fu_1489_p1 = add_ln5883_1_reg_1763;
assign zext_ln5883_fu_1012_p1 = tmp_238_fu_1004_p3;
always @ (posedge ap_clk) begin
    p_cast4_reg_1690[2] <= 1'b0;
    add_ln5853_2_reg_1701[0] <= 1'b0;
    add_ln5857_2_reg_1707[0] <= 1'b0;
    zext_ln5883_3_reg_1858[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 