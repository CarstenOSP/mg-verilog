
module forward_dataflow_in_loop_VITIS_LOOP_8758_1_Loop_VITIS_LOOP_8324_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5752_address0,v5752_ce0,v5752_we0,v5752_d0,v5752_address1,v5752_ce1,v5752_q1,v5752_1_address0,v5752_1_ce0,v5752_1_we0,v5752_1_d0,v5752_1_address1,v5752_1_ce1,v5752_1_q1,v5752_2_address0,v5752_2_ce0,v5752_2_we0,v5752_2_d0,v5752_2_address1,v5752_2_ce1,v5752_2_q1,v5752_3_address0,v5752_3_ce0,v5752_3_we0,v5752_3_d0,v5752_3_address1,v5752_3_ce1,v5752_3_q1,v5752_4_address0,v5752_4_ce0,v5752_4_we0,v5752_4_d0,v5752_4_address1,v5752_4_ce1,v5752_4_q1,v5752_5_address0,v5752_5_ce0,v5752_5_we0,v5752_5_d0,v5752_5_address1,v5752_5_ce1,v5752_5_q1,v5752_6_address0,v5752_6_ce0,v5752_6_we0,v5752_6_d0,v5752_6_address1,v5752_6_ce1,v5752_6_q1,v5752_7_address0,v5752_7_ce0,v5752_7_we0,v5752_7_d0,v5752_7_address1,v5752_7_ce1,v5752_7_q1,v5752_8_address0,v5752_8_ce0,v5752_8_we0,v5752_8_d0,v5752_8_address1,v5752_8_ce1,v5752_8_q1,v5752_9_address0,v5752_9_ce0,v5752_9_we0,v5752_9_d0,v5752_9_address1,v5752_9_ce1,v5752_9_q1,v5752_10_address0,v5752_10_ce0,v5752_10_we0,v5752_10_d0,v5752_10_address1,v5752_10_ce1,v5752_10_q1,v5752_11_address0,v5752_11_ce0,v5752_11_we0,v5752_11_d0,v5752_11_address1,v5752_11_ce1,v5752_11_q1,v5752_12_address0,v5752_12_ce0,v5752_12_we0,v5752_12_d0,v5752_12_address1,v5752_12_ce1,v5752_12_q1,v5752_13_address0,v5752_13_ce0,v5752_13_we0,v5752_13_d0,v5752_13_address1,v5752_13_ce1,v5752_13_q1,v5752_14_address0,v5752_14_ce0,v5752_14_we0,v5752_14_d0,v5752_14_address1,v5752_14_ce1,v5752_14_q1,v5752_15_address0,v5752_15_ce0,v5752_15_we0,v5752_15_d0,v5752_15_address1,v5752_15_ce1,v5752_15_q1,v5750_7_address0,v5750_7_ce0,v5750_7_q0,v5750_5_address0,v5750_5_ce0,v5750_5_q0,v5750_3_address0,v5750_3_ce0,v5750_3_q0,v5750_1_address0,v5750_1_ce0,v5750_1_q0,v5750_6_address0,v5750_6_ce0,v5750_6_q0,v5750_4_address0,v5750_4_ce0,v5750_4_q0,v5750_2_address0,v5750_2_ce0,v5750_2_q0,v5750_address0,v5750_ce0,v5750_q0,v5751_7_address0,v5751_7_ce0,v5751_7_q0,v5749_15_address0,v5749_15_ce0,v5749_15_q0,v5751_6_address0,v5751_6_ce0,v5751_6_q0,v5749_14_address0,v5749_14_ce0,v5749_14_q0,v5751_5_address0,v5751_5_ce0,v5751_5_q0,v5749_13_address0,v5749_13_ce0,v5749_13_q0,v5751_4_address0,v5751_4_ce0,v5751_4_q0,v5749_12_address0,v5749_12_ce0,v5749_12_q0,v5749_11_address0,v5749_11_ce0,v5749_11_q0,v5749_10_address0,v5749_10_ce0,v5749_10_q0,v5749_9_address0,v5749_9_ce0,v5749_9_q0,v5749_8_address0,v5749_8_ce0,v5749_8_q0,v5749_7_address0,v5749_7_ce0,v5749_7_q0,v5749_6_address0,v5749_6_ce0,v5749_6_q0,v5749_5_address0,v5749_5_ce0,v5749_5_q0,v5749_4_address0,v5749_4_ce0,v5749_4_q0,v5749_3_address0,v5749_3_ce0,v5749_3_q0,v5749_2_address0,v5749_2_ce0,v5749_2_q0,v5749_1_address0,v5749_1_ce0,v5749_1_q0,v5749_address0,v5749_ce0,v5749_q0,v5751_3_address0,v5751_3_ce0,v5751_3_q0,v5751_2_address0,v5751_2_ce0,v5751_2_q0,v5751_1_address0,v5751_1_ce0,v5751_1_q0,v5751_address0,v5751_ce0,v5751_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v5752_address0;
output   v5752_ce0;
output   v5752_we0;
output  [7:0] v5752_d0;
output  [8:0] v5752_address1;
output   v5752_ce1;
input  [7:0] v5752_q1;
output  [8:0] v5752_1_address0;
output   v5752_1_ce0;
output   v5752_1_we0;
output  [7:0] v5752_1_d0;
output  [8:0] v5752_1_address1;
output   v5752_1_ce1;
input  [7:0] v5752_1_q1;
output  [8:0] v5752_2_address0;
output   v5752_2_ce0;
output   v5752_2_we0;
output  [7:0] v5752_2_d0;
output  [8:0] v5752_2_address1;
output   v5752_2_ce1;
input  [7:0] v5752_2_q1;
output  [8:0] v5752_3_address0;
output   v5752_3_ce0;
output   v5752_3_we0;
output  [7:0] v5752_3_d0;
output  [8:0] v5752_3_address1;
output   v5752_3_ce1;
input  [7:0] v5752_3_q1;
output  [8:0] v5752_4_address0;
output   v5752_4_ce0;
output   v5752_4_we0;
output  [7:0] v5752_4_d0;
output  [8:0] v5752_4_address1;
output   v5752_4_ce1;
input  [7:0] v5752_4_q1;
output  [8:0] v5752_5_address0;
output   v5752_5_ce0;
output   v5752_5_we0;
output  [7:0] v5752_5_d0;
output  [8:0] v5752_5_address1;
output   v5752_5_ce1;
input  [7:0] v5752_5_q1;
output  [8:0] v5752_6_address0;
output   v5752_6_ce0;
output   v5752_6_we0;
output  [7:0] v5752_6_d0;
output  [8:0] v5752_6_address1;
output   v5752_6_ce1;
input  [7:0] v5752_6_q1;
output  [8:0] v5752_7_address0;
output   v5752_7_ce0;
output   v5752_7_we0;
output  [7:0] v5752_7_d0;
output  [8:0] v5752_7_address1;
output   v5752_7_ce1;
input  [7:0] v5752_7_q1;
output  [8:0] v5752_8_address0;
output   v5752_8_ce0;
output   v5752_8_we0;
output  [7:0] v5752_8_d0;
output  [8:0] v5752_8_address1;
output   v5752_8_ce1;
input  [7:0] v5752_8_q1;
output  [8:0] v5752_9_address0;
output   v5752_9_ce0;
output   v5752_9_we0;
output  [7:0] v5752_9_d0;
output  [8:0] v5752_9_address1;
output   v5752_9_ce1;
input  [7:0] v5752_9_q1;
output  [8:0] v5752_10_address0;
output   v5752_10_ce0;
output   v5752_10_we0;
output  [7:0] v5752_10_d0;
output  [8:0] v5752_10_address1;
output   v5752_10_ce1;
input  [7:0] v5752_10_q1;
output  [8:0] v5752_11_address0;
output   v5752_11_ce0;
output   v5752_11_we0;
output  [7:0] v5752_11_d0;
output  [8:0] v5752_11_address1;
output   v5752_11_ce1;
input  [7:0] v5752_11_q1;
output  [8:0] v5752_12_address0;
output   v5752_12_ce0;
output   v5752_12_we0;
output  [7:0] v5752_12_d0;
output  [8:0] v5752_12_address1;
output   v5752_12_ce1;
input  [7:0] v5752_12_q1;
output  [8:0] v5752_13_address0;
output   v5752_13_ce0;
output   v5752_13_we0;
output  [7:0] v5752_13_d0;
output  [8:0] v5752_13_address1;
output   v5752_13_ce1;
input  [7:0] v5752_13_q1;
output  [8:0] v5752_14_address0;
output   v5752_14_ce0;
output   v5752_14_we0;
output  [7:0] v5752_14_d0;
output  [8:0] v5752_14_address1;
output   v5752_14_ce1;
input  [7:0] v5752_14_q1;
output  [8:0] v5752_15_address0;
output   v5752_15_ce0;
output   v5752_15_we0;
output  [7:0] v5752_15_d0;
output  [8:0] v5752_15_address1;
output   v5752_15_ce1;
input  [7:0] v5752_15_q1;
output  [6:0] v5750_7_address0;
output   v5750_7_ce0;
input  [7:0] v5750_7_q0;
output  [6:0] v5750_5_address0;
output   v5750_5_ce0;
input  [7:0] v5750_5_q0;
output  [6:0] v5750_3_address0;
output   v5750_3_ce0;
input  [7:0] v5750_3_q0;
output  [6:0] v5750_1_address0;
output   v5750_1_ce0;
input  [7:0] v5750_1_q0;
output  [6:0] v5750_6_address0;
output   v5750_6_ce0;
input  [7:0] v5750_6_q0;
output  [6:0] v5750_4_address0;
output   v5750_4_ce0;
input  [7:0] v5750_4_q0;
output  [6:0] v5750_2_address0;
output   v5750_2_ce0;
input  [7:0] v5750_2_q0;
output  [6:0] v5750_address0;
output   v5750_ce0;
input  [7:0] v5750_q0;
output  [9:0] v5751_7_address0;
output   v5751_7_ce0;
input  [7:0] v5751_7_q0;
output  [8:0] v5749_15_address0;
output   v5749_15_ce0;
input  [7:0] v5749_15_q0;
output  [9:0] v5751_6_address0;
output   v5751_6_ce0;
input  [7:0] v5751_6_q0;
output  [8:0] v5749_14_address0;
output   v5749_14_ce0;
input  [7:0] v5749_14_q0;
output  [9:0] v5751_5_address0;
output   v5751_5_ce0;
input  [7:0] v5751_5_q0;
output  [8:0] v5749_13_address0;
output   v5749_13_ce0;
input  [7:0] v5749_13_q0;
output  [9:0] v5751_4_address0;
output   v5751_4_ce0;
input  [7:0] v5751_4_q0;
output  [8:0] v5749_12_address0;
output   v5749_12_ce0;
input  [7:0] v5749_12_q0;
output  [8:0] v5749_11_address0;
output   v5749_11_ce0;
input  [7:0] v5749_11_q0;
output  [8:0] v5749_10_address0;
output   v5749_10_ce0;
input  [7:0] v5749_10_q0;
output  [8:0] v5749_9_address0;
output   v5749_9_ce0;
input  [7:0] v5749_9_q0;
output  [8:0] v5749_8_address0;
output   v5749_8_ce0;
input  [7:0] v5749_8_q0;
output  [8:0] v5749_7_address0;
output   v5749_7_ce0;
input  [7:0] v5749_7_q0;
output  [8:0] v5749_6_address0;
output   v5749_6_ce0;
input  [7:0] v5749_6_q0;
output  [8:0] v5749_5_address0;
output   v5749_5_ce0;
input  [7:0] v5749_5_q0;
output  [8:0] v5749_4_address0;
output   v5749_4_ce0;
input  [7:0] v5749_4_q0;
output  [8:0] v5749_3_address0;
output   v5749_3_ce0;
input  [7:0] v5749_3_q0;
output  [8:0] v5749_2_address0;
output   v5749_2_ce0;
input  [7:0] v5749_2_q0;
output  [8:0] v5749_1_address0;
output   v5749_1_ce0;
input  [7:0] v5749_1_q0;
output  [8:0] v5749_address0;
output   v5749_ce0;
input  [7:0] v5749_q0;
output  [9:0] v5751_3_address0;
output   v5751_3_ce0;
input  [7:0] v5751_3_q0;
output  [9:0] v5751_2_address0;
output   v5751_2_ce0;
input  [7:0] v5751_2_q0;
output  [9:0] v5751_1_address0;
output   v5751_1_ce0;
input  [7:0] v5751_1_q0;
output  [9:0] v5751_address0;
output   v5751_ce0;
input  [7:0] v5751_q0;
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
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8324_fu_1002_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln8326295_reg_896;
wire   [0:0] xor_ln8324_fu_970_p2;
reg   [0:0] xor_ln8324_reg_1888;
wire   [0:0] icmp_ln8326_fu_996_p2;
reg   [0:0] icmp_ln8326_reg_1894;
reg   [0:0] icmp_ln8324_reg_1899;
reg   [0:0] icmp_ln8324_reg_1899_pp0_iter1_reg;
wire   [4:0] lshr_ln_fu_1145_p4;
reg   [4:0] lshr_ln_reg_1903;
wire   [0:0] cmp33_i_fu_1173_p2;
reg   [0:0] cmp33_i_reg_1908;
reg   [0:0] cmp33_i_reg_1908_pp0_iter2_reg;
reg   [0:0] cmp33_i_reg_1908_pp0_iter3_reg;
reg   [0:0] cmp33_i_reg_1908_pp0_iter4_reg;
reg   [0:0] cmp33_i_reg_1908_pp0_iter5_reg;
reg   [2:0] lshr_ln13_reg_1928;
reg   [2:0] lshr_ln13_reg_1928_pp0_iter2_reg;
reg   [2:0] lshr_ln13_reg_1928_pp0_iter3_reg;
wire   [2:0] lshr_ln14_fu_1189_p4;
reg   [2:0] lshr_ln14_reg_1935;
reg   [2:0] lshr_ln14_reg_1935_pp0_iter2_reg;
reg   [2:0] lshr_ln14_reg_1935_pp0_iter3_reg;
wire   [7:0] add_ln8330_fu_1203_p2;
reg   [7:0] add_ln8330_reg_1940;
wire   [6:0] trunc_ln8330_fu_1209_p1;
reg   [6:0] trunc_ln8330_reg_1945;
reg   [2:0] lshr_ln15_reg_1950;
reg   [2:0] lshr_ln15_reg_1950_pp0_iter2_reg;
reg   [2:0] lshr_ln15_reg_1950_pp0_iter3_reg;
reg   [2:0] lshr_ln15_reg_1950_pp0_iter4_reg;
wire   [0:0] icmp_ln8328_fu_1243_p2;
reg   [0:0] icmp_ln8328_reg_1956;
wire   [0:0] icmp_ln8327_fu_1249_p2;
reg   [0:0] icmp_ln8327_reg_1961;
wire   [63:0] p_cast_fu_1296_p1;
reg   [63:0] p_cast_reg_1966;
wire   [63:0] zext_ln8330_3_fu_1329_p1;
reg   [63:0] zext_ln8330_3_reg_1994;
reg  signed [7:0] v5438_reg_2126;
reg  signed [7:0] v5474_reg_2134;
reg  signed [7:0] v5507_reg_2142;
reg  signed [7:0] v5540_reg_2150;
wire   [5:0] add_ln8459_fu_1356_p2;
reg   [5:0] add_ln8459_reg_2158;
reg  signed [7:0] v5437_reg_2164;
reg  signed [7:0] v5447_reg_2172;
reg  signed [7:0] v5456_reg_2180;
reg  signed [7:0] v5465_reg_2188;
reg   [8:0] v5752_addr_reg_2196;
reg   [8:0] v5752_1_addr_reg_2202;
reg   [8:0] v5752_2_addr_reg_2208;
reg   [8:0] v5752_3_addr_reg_2214;
reg   [8:0] v5752_4_addr_reg_2220;
reg   [8:0] v5752_5_addr_reg_2226;
reg   [8:0] v5752_6_addr_reg_2232;
reg   [8:0] v5752_7_addr_reg_2238;
reg   [8:0] v5752_8_addr_reg_2244;
reg   [8:0] v5752_9_addr_reg_2250;
reg   [8:0] v5752_10_addr_reg_2256;
reg   [8:0] v5752_11_addr_reg_2262;
reg   [8:0] v5752_12_addr_reg_2268;
reg   [8:0] v5752_13_addr_reg_2274;
reg   [8:0] v5752_14_addr_reg_2280;
reg   [8:0] v5752_15_addr_reg_2286;
wire   [7:0] mul_ln8474_fu_1423_p2;
wire   [7:0] mul_ln8482_fu_1427_p2;
wire   [7:0] mul_ln8490_fu_1431_p2;
wire   [7:0] mul_ln8498_fu_1435_p2;
wire   [7:0] mul_ln8506_fu_1439_p2;
wire   [7:0] mul_ln8513_fu_1443_p2;
wire   [7:0] mul_ln8520_fu_1447_p2;
wire   [7:0] mul_ln8527_fu_1451_p2;
wire   [7:0] mul_ln8535_fu_1455_p2;
wire   [7:0] mul_ln8542_fu_1459_p2;
wire   [7:0] mul_ln8549_fu_1463_p2;
wire   [7:0] mul_ln8556_fu_1467_p2;
wire   [7:0] mul_ln8564_fu_1471_p2;
wire   [7:0] mul_ln8571_fu_1475_p2;
wire   [7:0] mul_ln8578_fu_1479_p2;
wire   [7:0] mul_ln8585_fu_1483_p2;
reg   [0:0] ap_phi_mux_icmp_ln8326295_phi_fu_899_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln8327294_phi_fu_911_p4;
reg    ap_loop_init_pp0_iter1_reg;
reg   [0:0] ap_phi_mux_icmp_ln8328293_phi_fu_922_p4;
wire   [63:0] zext_ln8459_6_fu_1387_p1;
reg   [12:0] indvar_flatten35286_fu_180;
wire   [12:0] add_ln8324_1_fu_990_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten35286_load;
reg   [5:0] v5433287_fu_184;
wire   [5:0] v5433_fu_1057_p3;
reg   [9:0] indvar_flatten12288_fu_188;
wire   [9:0] select_ln8326_1_fu_982_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12288_load;
reg   [5:0] v5434289_fu_192;
wire   [5:0] v5434_fu_1103_p3;
reg   [5:0] indvar_flatten290_fu_196;
wire   [5:0] select_ln8327_1_fu_1235_p3;
reg   [3:0] v5435291_fu_200;
wire   [3:0] v5435_fu_1137_p3;
reg   [3:0] v5436292_fu_204;
wire   [3:0] v5436_fu_1223_p2;
reg    v5750_6_ce0_local;
reg    v5750_4_ce0_local;
reg    v5750_2_ce0_local;
reg    v5750_ce0_local;
reg    v5751_3_ce0_local;
reg    v5751_2_ce0_local;
reg    v5751_1_ce0_local;
reg    v5751_ce0_local;
reg    v5750_7_ce0_local;
reg    v5750_5_ce0_local;
reg    v5750_3_ce0_local;
reg    v5750_1_ce0_local;
reg    v5751_7_ce0_local;
reg    v5751_6_ce0_local;
reg    v5751_5_ce0_local;
reg    v5751_4_ce0_local;
reg    v5749_15_ce0_local;
reg    v5752_15_ce1_local;
reg    v5752_15_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5581_fu_1599_p2;
reg    v5752_15_ce0_local;
reg    v5749_14_ce0_local;
reg    v5752_14_ce1_local;
reg    v5752_14_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5588_fu_1605_p2;
reg    v5752_14_ce0_local;
reg    v5749_13_ce0_local;
reg    v5752_13_ce1_local;
reg    v5752_13_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5595_fu_1611_p2;
reg    v5752_13_ce0_local;
reg    v5749_12_ce0_local;
reg    v5752_12_ce1_local;
reg    v5752_12_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5602_fu_1617_p2;
reg    v5752_12_ce0_local;
reg    v5749_11_ce0_local;
reg    v5752_11_ce1_local;
reg    v5752_11_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5609_fu_1623_p2;
reg    v5752_11_ce0_local;
reg    v5749_10_ce0_local;
reg    v5752_10_ce1_local;
reg    v5752_10_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5615_fu_1629_p2;
reg    v5752_10_ce0_local;
reg    v5749_9_ce0_local;
reg    v5752_9_ce1_local;
reg    v5752_9_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5621_fu_1635_p2;
reg    v5752_9_ce0_local;
reg    v5749_8_ce0_local;
reg    v5752_8_ce1_local;
reg    v5752_8_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5627_fu_1641_p2;
reg    v5752_8_ce0_local;
reg    v5749_7_ce0_local;
reg    v5752_7_ce1_local;
reg    v5752_7_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5634_fu_1647_p2;
reg    v5752_7_ce0_local;
reg    v5749_6_ce0_local;
reg    v5752_6_ce1_local;
reg    v5752_6_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5640_fu_1653_p2;
reg    v5752_6_ce0_local;
reg    v5749_5_ce0_local;
reg    v5752_5_ce1_local;
reg    v5752_5_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5646_fu_1659_p2;
reg    v5752_5_ce0_local;
reg    v5749_4_ce0_local;
reg    v5752_4_ce1_local;
reg    v5752_4_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5652_fu_1665_p2;
reg    v5752_4_ce0_local;
reg    v5749_3_ce0_local;
reg    v5752_3_ce1_local;
reg    v5752_3_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5659_fu_1671_p2;
reg    v5752_3_ce0_local;
reg    v5749_2_ce0_local;
reg    v5752_2_ce1_local;
reg    v5752_2_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5665_fu_1677_p2;
reg    v5752_2_ce0_local;
reg    v5749_1_ce0_local;
reg    v5752_1_ce1_local;
reg    v5752_1_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5671_fu_1683_p2;
reg    v5752_1_ce0_local;
reg    v5749_ce0_local;
reg    v5752_ce1_local;
reg    v5752_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v5677_fu_1689_p2;
reg    v5752_ce0_local;
wire   [9:0] add_ln8326_1_fu_976_p2;
wire   [5:0] add_ln8324_fu_1033_p2;
wire   [5:0] select_ln8324_fu_1039_p3;
wire   [0:0] and_ln8324_1_fu_1052_p2;
wire   [0:0] empty_fu_1071_p2;
wire   [0:0] exitcond_flatten_not_fu_1085_p2;
wire   [0:0] and_ln8324_fu_1047_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_1091_p2;
wire   [5:0] add_ln8326_fu_1065_p2;
wire   [3:0] v5435_mid26_fu_1077_p3;
wire   [0:0] icmp_ln8328_mid211_fu_1097_p2;
wire   [0:0] empty_176_fu_1117_p2;
wire   [0:0] empty_177_fu_1123_p2;
wire   [3:0] add_ln8327_fu_1111_p2;
wire   [7:0] p_shl_fu_1159_p3;
wire   [7:0] zext_ln8330_1_fu_1155_p1;
wire   [7:0] sub_ln8330_fu_1167_p2;
wire   [7:0] zext_ln8459_1_fu_1199_p1;
wire   [3:0] v5436_mid2_fu_1129_p3;
wire   [5:0] add_ln8327_1_fu_1229_p2;
wire   [6:0] tmp_fu_1283_p3;
wire   [6:0] zext_ln8330_fu_1280_p1;
wire   [6:0] empty_178_fu_1290_p2;
wire   [9:0] tmp_60_fu_1304_p3;
wire   [9:0] zext_ln8330_2_fu_1311_p1;
wire   [9:0] sub_ln8329_fu_1314_p2;
wire   [9:0] zext_ln8459_4_fu_1320_p1;
wire   [9:0] add_ln8330_1_fu_1323_p2;
wire   [5:0] p_shl39_fu_1340_p3;
wire   [5:0] zext_ln8459_fu_1337_p1;
wire   [5:0] sub_ln8459_fu_1347_p2;
wire   [5:0] zext_ln8459_2_fu_1353_p1;
wire   [8:0] p_shl40_fu_1365_p3;
wire   [8:0] zext_ln8459_3_fu_1362_p1;
wire   [8:0] sub_ln8459_1_fu_1372_p2;
wire   [8:0] zext_ln8459_5_fu_1378_p1;
wire   [8:0] add_ln8459_1_fu_1381_p2;
wire  signed [7:0] v5581_fu_1599_p0;
wire   [7:0] grp_fu_1695_p3;
wire   [7:0] v5441_fu_1487_p3;
wire  signed [7:0] v5588_fu_1605_p0;
wire   [7:0] grp_fu_1704_p3;
wire   [7:0] v5450_fu_1494_p3;
wire  signed [7:0] v5595_fu_1611_p0;
wire   [7:0] grp_fu_1713_p3;
wire   [7:0] v5459_fu_1501_p3;
wire  signed [7:0] v5602_fu_1617_p0;
wire   [7:0] grp_fu_1722_p3;
wire   [7:0] v5468_fu_1508_p3;
wire  signed [7:0] v5609_fu_1623_p0;
wire   [7:0] grp_fu_1731_p3;
wire   [7:0] v5477_fu_1515_p3;
wire  signed [7:0] v5615_fu_1629_p0;
wire   [7:0] grp_fu_1740_p3;
wire   [7:0] v5485_fu_1522_p3;
wire  signed [7:0] v5621_fu_1635_p0;
wire   [7:0] grp_fu_1749_p3;
wire   [7:0] v5493_fu_1529_p3;
wire  signed [7:0] v5627_fu_1641_p0;
wire   [7:0] grp_fu_1758_p3;
wire   [7:0] v5501_fu_1536_p3;
wire  signed [7:0] v5634_fu_1647_p0;
wire   [7:0] grp_fu_1767_p3;
wire   [7:0] v5510_fu_1543_p3;
wire  signed [7:0] v5640_fu_1653_p0;
wire   [7:0] grp_fu_1776_p3;
wire   [7:0] v5518_fu_1550_p3;
wire  signed [7:0] v5646_fu_1659_p0;
wire   [7:0] grp_fu_1785_p3;
wire   [7:0] v5526_fu_1557_p3;
wire  signed [7:0] v5652_fu_1665_p0;
wire   [7:0] grp_fu_1794_p3;
wire   [7:0] v5534_fu_1564_p3;
wire  signed [7:0] v5659_fu_1671_p0;
wire   [7:0] grp_fu_1803_p3;
wire   [7:0] v5543_fu_1571_p3;
wire  signed [7:0] v5665_fu_1677_p0;
wire   [7:0] grp_fu_1812_p3;
wire   [7:0] v5551_fu_1578_p3;
wire  signed [7:0] v5671_fu_1683_p0;
wire   [7:0] grp_fu_1821_p3;
wire   [7:0] v5559_fu_1585_p3;
wire  signed [7:0] v5677_fu_1689_p0;
wire   [7:0] grp_fu_1830_p3;
wire   [7:0] v5567_fu_1592_p3;
reg    grp_fu_1695_ce;
reg    grp_fu_1704_ce;
reg    grp_fu_1713_ce;
reg    grp_fu_1722_ce;
reg    grp_fu_1731_ce;
reg    grp_fu_1740_ce;
reg    grp_fu_1749_ce;
reg    grp_fu_1758_ce;
reg    grp_fu_1767_ce;
reg    grp_fu_1776_ce;
reg    grp_fu_1785_ce;
reg    grp_fu_1794_ce;
reg    grp_fu_1803_ce;
reg    grp_fu_1812_ce;
reg    grp_fu_1821_ce;
reg    grp_fu_1830_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1489;
reg    ap_condition_1494;
reg    ap_condition_440;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten35286_fu_180 = 13'd0;
#0 v5433287_fu_184 = 6'd0;
#0 indvar_flatten12288_fu_188 = 10'd0;
#0 v5434289_fu_192 = 6'd0;
#0 indvar_flatten290_fu_196 = 6'd0;
#0 v5435291_fu_200 = 4'd0;
#0 v5436292_fu_204 = 4'd0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5908(.din0(v5437_reg_2164),.din1(v5438_reg_2126),.dout(mul_ln8474_fu_1423_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5909(.din0(v5447_reg_2172),.din1(v5438_reg_2126),.dout(mul_ln8482_fu_1427_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5910(.din0(v5456_reg_2180),.din1(v5438_reg_2126),.dout(mul_ln8490_fu_1431_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5911(.din0(v5465_reg_2188),.din1(v5438_reg_2126),.dout(mul_ln8498_fu_1435_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5912(.din0(v5437_reg_2164),.din1(v5474_reg_2134),.dout(mul_ln8506_fu_1439_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5913(.din0(v5447_reg_2172),.din1(v5474_reg_2134),.dout(mul_ln8513_fu_1443_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5914(.din0(v5456_reg_2180),.din1(v5474_reg_2134),.dout(mul_ln8520_fu_1447_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5915(.din0(v5465_reg_2188),.din1(v5474_reg_2134),.dout(mul_ln8527_fu_1451_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5916(.din0(v5437_reg_2164),.din1(v5507_reg_2142),.dout(mul_ln8535_fu_1455_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5917(.din0(v5447_reg_2172),.din1(v5507_reg_2142),.dout(mul_ln8542_fu_1459_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5918(.din0(v5456_reg_2180),.din1(v5507_reg_2142),.dout(mul_ln8549_fu_1463_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5919(.din0(v5465_reg_2188),.din1(v5507_reg_2142),.dout(mul_ln8556_fu_1467_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5920(.din0(v5437_reg_2164),.din1(v5540_reg_2150),.dout(mul_ln8564_fu_1471_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5921(.din0(v5447_reg_2172),.din1(v5540_reg_2150),.dout(mul_ln8571_fu_1475_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5922(.din0(v5456_reg_2180),.din1(v5540_reg_2150),.dout(mul_ln8578_fu_1479_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5923(.din0(v5465_reg_2188),.din1(v5540_reg_2150),.dout(mul_ln8585_fu_1483_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5924(.clk(ap_clk),.reset(ap_rst),.din0(v5751_3_q0),.din1(v5750_6_q0),.din2(mul_ln8474_fu_1423_p2),.ce(grp_fu_1695_ce),.dout(grp_fu_1695_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5925(.clk(ap_clk),.reset(ap_rst),.din0(v5751_2_q0),.din1(v5750_6_q0),.din2(mul_ln8482_fu_1427_p2),.ce(grp_fu_1704_ce),.dout(grp_fu_1704_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5926(.clk(ap_clk),.reset(ap_rst),.din0(v5751_1_q0),.din1(v5750_6_q0),.din2(mul_ln8490_fu_1431_p2),.ce(grp_fu_1713_ce),.dout(grp_fu_1713_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5927(.clk(ap_clk),.reset(ap_rst),.din0(v5751_q0),.din1(v5750_6_q0),.din2(mul_ln8498_fu_1435_p2),.ce(grp_fu_1722_ce),.dout(grp_fu_1722_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5928(.clk(ap_clk),.reset(ap_rst),.din0(v5751_3_q0),.din1(v5750_4_q0),.din2(mul_ln8506_fu_1439_p2),.ce(grp_fu_1731_ce),.dout(grp_fu_1731_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5929(.clk(ap_clk),.reset(ap_rst),.din0(v5751_2_q0),.din1(v5750_4_q0),.din2(mul_ln8513_fu_1443_p2),.ce(grp_fu_1740_ce),.dout(grp_fu_1740_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5930(.clk(ap_clk),.reset(ap_rst),.din0(v5751_1_q0),.din1(v5750_4_q0),.din2(mul_ln8520_fu_1447_p2),.ce(grp_fu_1749_ce),.dout(grp_fu_1749_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5931(.clk(ap_clk),.reset(ap_rst),.din0(v5751_q0),.din1(v5750_4_q0),.din2(mul_ln8527_fu_1451_p2),.ce(grp_fu_1758_ce),.dout(grp_fu_1758_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5932(.clk(ap_clk),.reset(ap_rst),.din0(v5751_3_q0),.din1(v5750_2_q0),.din2(mul_ln8535_fu_1455_p2),.ce(grp_fu_1767_ce),.dout(grp_fu_1767_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5933(.clk(ap_clk),.reset(ap_rst),.din0(v5751_2_q0),.din1(v5750_2_q0),.din2(mul_ln8542_fu_1459_p2),.ce(grp_fu_1776_ce),.dout(grp_fu_1776_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5934(.clk(ap_clk),.reset(ap_rst),.din0(v5751_1_q0),.din1(v5750_2_q0),.din2(mul_ln8549_fu_1463_p2),.ce(grp_fu_1785_ce),.dout(grp_fu_1785_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5935(.clk(ap_clk),.reset(ap_rst),.din0(v5751_q0),.din1(v5750_2_q0),.din2(mul_ln8556_fu_1467_p2),.ce(grp_fu_1794_ce),.dout(grp_fu_1794_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5936(.clk(ap_clk),.reset(ap_rst),.din0(v5751_3_q0),.din1(v5750_q0),.din2(mul_ln8564_fu_1471_p2),.ce(grp_fu_1803_ce),.dout(grp_fu_1803_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5937(.clk(ap_clk),.reset(ap_rst),.din0(v5751_2_q0),.din1(v5750_q0),.din2(mul_ln8571_fu_1475_p2),.ce(grp_fu_1812_ce),.dout(grp_fu_1812_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5938(.clk(ap_clk),.reset(ap_rst),.din0(v5751_1_q0),.din1(v5750_q0),.din2(mul_ln8578_fu_1479_p2),.ce(grp_fu_1821_ce),.dout(grp_fu_1821_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5939(.clk(ap_clk),.reset(ap_rst),.din0(v5751_q0),.din1(v5750_q0),.din2(mul_ln8585_fu_1483_p2),.ce(grp_fu_1830_ce),.dout(grp_fu_1830_p3));
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1494)) begin
            icmp_ln8326295_reg_896 <= icmp_ln8326_reg_1894;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln8326295_reg_896 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_440)) begin
        indvar_flatten12288_fu_188 <= select_ln8326_1_fu_982_p3;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten290_fu_196 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten290_fu_196 <= select_ln8327_1_fu_1235_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_440)) begin
    indvar_flatten35286_fu_180 <= add_ln8324_1_fu_990_p2;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v5433287_fu_184 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v5433287_fu_184 <= v5433_fu_1057_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v5434289_fu_192 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v5434289_fu_192 <= v5434_fu_1103_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v5435291_fu_200 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v5435291_fu_200 <= v5435_fu_1137_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v5436292_fu_204 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v5436292_fu_204 <= v5436_fu_1223_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8330_reg_1940 <= add_ln8330_fu_1203_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        cmp33_i_reg_1908 <= cmp33_i_fu_1173_p2;
        icmp_ln8324_reg_1899 <= icmp_ln8324_fu_1002_p2;
        icmp_ln8324_reg_1899_pp0_iter1_reg <= icmp_ln8324_reg_1899;
        lshr_ln13_reg_1928 <= {{v5434_fu_1103_p3[4:2]}};
        lshr_ln14_reg_1935 <= {{v5435_fu_1137_p3[3:1]}};
        lshr_ln15_reg_1950 <= {{v5436_mid2_fu_1129_p3[3:1]}};
        lshr_ln_reg_1903 <= {{v5433_fu_1057_p3[5:1]}};
        trunc_ln8330_reg_1945 <= trunc_ln8330_fu_1209_p1;
        xor_ln8324_reg_1888 <= xor_ln8324_fu_970_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln8459_reg_2158 <= add_ln8459_fu_1356_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        cmp33_i_reg_1908_pp0_iter2_reg <= cmp33_i_reg_1908;
        cmp33_i_reg_1908_pp0_iter3_reg <= cmp33_i_reg_1908_pp0_iter2_reg;
        cmp33_i_reg_1908_pp0_iter4_reg <= cmp33_i_reg_1908_pp0_iter3_reg;
        cmp33_i_reg_1908_pp0_iter5_reg <= cmp33_i_reg_1908_pp0_iter4_reg;
        lshr_ln13_reg_1928_pp0_iter2_reg <= lshr_ln13_reg_1928;
        lshr_ln13_reg_1928_pp0_iter3_reg <= lshr_ln13_reg_1928_pp0_iter2_reg;
        lshr_ln14_reg_1935_pp0_iter2_reg <= lshr_ln14_reg_1935;
        lshr_ln14_reg_1935_pp0_iter3_reg <= lshr_ln14_reg_1935_pp0_iter2_reg;
        lshr_ln15_reg_1950_pp0_iter2_reg <= lshr_ln15_reg_1950;
        lshr_ln15_reg_1950_pp0_iter3_reg <= lshr_ln15_reg_1950_pp0_iter2_reg;
        lshr_ln15_reg_1950_pp0_iter4_reg <= lshr_ln15_reg_1950_pp0_iter3_reg;
        p_cast_reg_1966[6 : 0] <= p_cast_fu_1296_p1[6 : 0];
        v5437_reg_2164 <= v5751_7_q0;
        v5438_reg_2126 <= v5750_7_q0;
        v5447_reg_2172 <= v5751_6_q0;
        v5456_reg_2180 <= v5751_5_q0;
        v5465_reg_2188 <= v5751_4_q0;
        v5474_reg_2134 <= v5750_5_q0;
        v5507_reg_2142 <= v5750_3_q0;
        v5540_reg_2150 <= v5750_1_q0;
        v5752_10_addr_reg_2256 <= zext_ln8459_6_fu_1387_p1;
        v5752_11_addr_reg_2262 <= zext_ln8459_6_fu_1387_p1;
        v5752_12_addr_reg_2268 <= zext_ln8459_6_fu_1387_p1;
        v5752_13_addr_reg_2274 <= zext_ln8459_6_fu_1387_p1;
        v5752_14_addr_reg_2280 <= zext_ln8459_6_fu_1387_p1;
        v5752_15_addr_reg_2286 <= zext_ln8459_6_fu_1387_p1;
        v5752_1_addr_reg_2202 <= zext_ln8459_6_fu_1387_p1;
        v5752_2_addr_reg_2208 <= zext_ln8459_6_fu_1387_p1;
        v5752_3_addr_reg_2214 <= zext_ln8459_6_fu_1387_p1;
        v5752_4_addr_reg_2220 <= zext_ln8459_6_fu_1387_p1;
        v5752_5_addr_reg_2226 <= zext_ln8459_6_fu_1387_p1;
        v5752_6_addr_reg_2232 <= zext_ln8459_6_fu_1387_p1;
        v5752_7_addr_reg_2238 <= zext_ln8459_6_fu_1387_p1;
        v5752_8_addr_reg_2244 <= zext_ln8459_6_fu_1387_p1;
        v5752_9_addr_reg_2250 <= zext_ln8459_6_fu_1387_p1;
        v5752_addr_reg_2196 <= zext_ln8459_6_fu_1387_p1;
        zext_ln8330_3_reg_1994[9 : 0] <= zext_ln8330_3_fu_1329_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8326_reg_1894 <= icmp_ln8326_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8327_reg_1961 <= icmp_ln8327_fu_1249_p2;
        icmp_ln8328_reg_1956 <= icmp_ln8328_fu_1243_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8324_fu_1002_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1489)) begin
            ap_phi_mux_icmp_ln8326295_phi_fu_899_p4 = icmp_ln8326_reg_1894;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln8326295_phi_fu_899_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln8326295_phi_fu_899_p4 = icmp_ln8326_reg_1894;
        end
    end else begin
        ap_phi_mux_icmp_ln8326295_phi_fu_899_p4 = icmp_ln8326_reg_1894;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln8324_reg_1899_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln8327294_phi_fu_911_p4 = icmp_ln8327_reg_1961;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln8327294_phi_fu_911_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln8327294_phi_fu_911_p4 = icmp_ln8327_reg_1961;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln8324_reg_1899_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln8328293_phi_fu_922_p4 = icmp_ln8328_reg_1956;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln8328293_phi_fu_922_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln8328293_phi_fu_922_p4 = icmp_ln8328_reg_1956;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12288_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12288_load = indvar_flatten12288_fu_188;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35286_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35286_load = indvar_flatten35286_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1695_ce = 1'b1;
    end else begin
        grp_fu_1695_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1704_ce = 1'b1;
    end else begin
        grp_fu_1704_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1713_ce = 1'b1;
    end else begin
        grp_fu_1713_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1722_ce = 1'b1;
    end else begin
        grp_fu_1722_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1731_ce = 1'b1;
    end else begin
        grp_fu_1731_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1740_ce = 1'b1;
    end else begin
        grp_fu_1740_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1749_ce = 1'b1;
    end else begin
        grp_fu_1749_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1758_ce = 1'b1;
    end else begin
        grp_fu_1758_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1767_ce = 1'b1;
    end else begin
        grp_fu_1767_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1776_ce = 1'b1;
    end else begin
        grp_fu_1776_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1785_ce = 1'b1;
    end else begin
        grp_fu_1785_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1794_ce = 1'b1;
    end else begin
        grp_fu_1794_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1803_ce = 1'b1;
    end else begin
        grp_fu_1803_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1812_ce = 1'b1;
    end else begin
        grp_fu_1812_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1821_ce = 1'b1;
    end else begin
        grp_fu_1821_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1830_ce = 1'b1;
    end else begin
        grp_fu_1830_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_10_ce0_local = 1'b1;
    end else begin
        v5749_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_11_ce0_local = 1'b1;
    end else begin
        v5749_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_12_ce0_local = 1'b1;
    end else begin
        v5749_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_13_ce0_local = 1'b1;
    end else begin
        v5749_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_14_ce0_local = 1'b1;
    end else begin
        v5749_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_15_ce0_local = 1'b1;
    end else begin
        v5749_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_1_ce0_local = 1'b1;
    end else begin
        v5749_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_2_ce0_local = 1'b1;
    end else begin
        v5749_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_3_ce0_local = 1'b1;
    end else begin
        v5749_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_4_ce0_local = 1'b1;
    end else begin
        v5749_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_5_ce0_local = 1'b1;
    end else begin
        v5749_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_6_ce0_local = 1'b1;
    end else begin
        v5749_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_7_ce0_local = 1'b1;
    end else begin
        v5749_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_8_ce0_local = 1'b1;
    end else begin
        v5749_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_9_ce0_local = 1'b1;
    end else begin
        v5749_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5749_ce0_local = 1'b1;
    end else begin
        v5749_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5750_1_ce0_local = 1'b1;
    end else begin
        v5750_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5750_2_ce0_local = 1'b1;
    end else begin
        v5750_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5750_3_ce0_local = 1'b1;
    end else begin
        v5750_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5750_4_ce0_local = 1'b1;
    end else begin
        v5750_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5750_5_ce0_local = 1'b1;
    end else begin
        v5750_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5750_6_ce0_local = 1'b1;
    end else begin
        v5750_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5750_7_ce0_local = 1'b1;
    end else begin
        v5750_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5750_ce0_local = 1'b1;
    end else begin
        v5750_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5751_1_ce0_local = 1'b1;
    end else begin
        v5751_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5751_2_ce0_local = 1'b1;
    end else begin
        v5751_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5751_3_ce0_local = 1'b1;
    end else begin
        v5751_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5751_4_ce0_local = 1'b1;
    end else begin
        v5751_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5751_5_ce0_local = 1'b1;
    end else begin
        v5751_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5751_6_ce0_local = 1'b1;
    end else begin
        v5751_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5751_7_ce0_local = 1'b1;
    end else begin
        v5751_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5751_ce0_local = 1'b1;
    end else begin
        v5751_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_10_ce0_local = 1'b1;
    end else begin
        v5752_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_10_ce1_local = 1'b1;
    end else begin
        v5752_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_10_we0_local = 1'b1;
    end else begin
        v5752_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_11_ce0_local = 1'b1;
    end else begin
        v5752_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_11_ce1_local = 1'b1;
    end else begin
        v5752_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_11_we0_local = 1'b1;
    end else begin
        v5752_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_12_ce0_local = 1'b1;
    end else begin
        v5752_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_12_ce1_local = 1'b1;
    end else begin
        v5752_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_12_we0_local = 1'b1;
    end else begin
        v5752_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_13_ce0_local = 1'b1;
    end else begin
        v5752_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_13_ce1_local = 1'b1;
    end else begin
        v5752_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_13_we0_local = 1'b1;
    end else begin
        v5752_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_14_ce0_local = 1'b1;
    end else begin
        v5752_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_14_ce1_local = 1'b1;
    end else begin
        v5752_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_14_we0_local = 1'b1;
    end else begin
        v5752_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_15_ce0_local = 1'b1;
    end else begin
        v5752_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_15_ce1_local = 1'b1;
    end else begin
        v5752_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_15_we0_local = 1'b1;
    end else begin
        v5752_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_1_ce0_local = 1'b1;
    end else begin
        v5752_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_1_ce1_local = 1'b1;
    end else begin
        v5752_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_1_we0_local = 1'b1;
    end else begin
        v5752_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_2_ce0_local = 1'b1;
    end else begin
        v5752_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_2_ce1_local = 1'b1;
    end else begin
        v5752_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_2_we0_local = 1'b1;
    end else begin
        v5752_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_3_ce0_local = 1'b1;
    end else begin
        v5752_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_3_ce1_local = 1'b1;
    end else begin
        v5752_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_3_we0_local = 1'b1;
    end else begin
        v5752_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_4_ce0_local = 1'b1;
    end else begin
        v5752_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_4_ce1_local = 1'b1;
    end else begin
        v5752_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_4_we0_local = 1'b1;
    end else begin
        v5752_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_5_ce0_local = 1'b1;
    end else begin
        v5752_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_5_ce1_local = 1'b1;
    end else begin
        v5752_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_5_we0_local = 1'b1;
    end else begin
        v5752_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_6_ce0_local = 1'b1;
    end else begin
        v5752_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_6_ce1_local = 1'b1;
    end else begin
        v5752_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_6_we0_local = 1'b1;
    end else begin
        v5752_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_7_ce0_local = 1'b1;
    end else begin
        v5752_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_7_ce1_local = 1'b1;
    end else begin
        v5752_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_7_we0_local = 1'b1;
    end else begin
        v5752_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_8_ce0_local = 1'b1;
    end else begin
        v5752_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_8_ce1_local = 1'b1;
    end else begin
        v5752_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_8_we0_local = 1'b1;
    end else begin
        v5752_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_9_ce0_local = 1'b1;
    end else begin
        v5752_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_9_ce1_local = 1'b1;
    end else begin
        v5752_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_9_we0_local = 1'b1;
    end else begin
        v5752_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_ce0_local = 1'b1;
    end else begin
        v5752_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5752_ce1_local = 1'b1;
    end else begin
        v5752_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v5752_we0_local = 1'b1;
    end else begin
        v5752_we0_local = 1'b0;
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
assign add_ln8324_1_fu_990_p2 = (ap_sig_allocacmp_indvar_flatten35286_load + 13'd1);
assign add_ln8324_fu_1033_p2 = (v5433287_fu_184 + 6'd2);
assign add_ln8326_1_fu_976_p2 = (ap_sig_allocacmp_indvar_flatten12288_load + 10'd1);
assign add_ln8326_fu_1065_p2 = (select_ln8324_fu_1039_p3 + 6'd4);
assign add_ln8327_1_fu_1229_p2 = (indvar_flatten290_fu_196 + 6'd1);
assign add_ln8327_fu_1111_p2 = (v5435_mid26_fu_1077_p3 + 4'd2);
assign add_ln8330_1_fu_1323_p2 = (sub_ln8329_fu_1314_p2 + zext_ln8459_4_fu_1320_p1);
assign add_ln8330_fu_1203_p2 = (sub_ln8330_fu_1167_p2 + zext_ln8459_1_fu_1199_p1);
assign add_ln8459_1_fu_1381_p2 = (sub_ln8459_1_fu_1372_p2 + zext_ln8459_5_fu_1378_p1);
assign add_ln8459_fu_1356_p2 = (sub_ln8459_fu_1347_p2 + zext_ln8459_2_fu_1353_p1);
assign and_ln8324_1_fu_1052_p2 = (xor_ln8324_reg_1888 & ap_phi_mux_icmp_ln8327294_phi_fu_911_p4);
assign and_ln8324_fu_1047_p2 = (xor_ln8324_reg_1888 & ap_phi_mux_icmp_ln8328293_phi_fu_922_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_1489 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln8324_reg_1899 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1494 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8324_reg_1899 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_440 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp33_i_fu_1173_p2 = ((v5433_fu_1057_p3 == 6'd0) ? 1'b1 : 1'b0);
assign empty_176_fu_1117_p2 = (icmp_ln8328_mid211_fu_1097_p2 | and_ln8324_1_fu_1052_p2);
assign empty_177_fu_1123_p2 = (icmp_ln8326295_reg_896 | empty_176_fu_1117_p2);
assign empty_178_fu_1290_p2 = (tmp_fu_1283_p3 + zext_ln8330_fu_1280_p1);
assign empty_fu_1071_p2 = (icmp_ln8326295_reg_896 | and_ln8324_1_fu_1052_p2);
assign exitcond_flatten_not_fu_1085_p2 = (ap_phi_mux_icmp_ln8327294_phi_fu_911_p4 ^ 1'd1);
assign icmp_ln8324_fu_1002_p2 = ((ap_sig_allocacmp_indvar_flatten35286_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln8326_fu_996_p2 = ((select_ln8326_1_fu_982_p3 == 10'd392) ? 1'b1 : 1'b0);
assign icmp_ln8327_fu_1249_p2 = ((select_ln8327_1_fu_1235_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln8328_fu_1243_p2 = ((v5436_fu_1223_p2 == 4'd14) ? 1'b1 : 1'b0);
assign icmp_ln8328_mid211_fu_1097_p2 = (not_exitcond_flatten_mid234_fu_1091_p2 & and_ln8324_fu_1047_p2);
assign lshr_ln14_fu_1189_p4 = {{v5435_fu_1137_p3[3:1]}};
assign lshr_ln_fu_1145_p4 = {{v5433_fu_1057_p3[5:1]}};
assign not_exitcond_flatten_mid234_fu_1091_p2 = (icmp_ln8326295_reg_896 | exitcond_flatten_not_fu_1085_p2);
assign p_cast_fu_1296_p1 = empty_178_fu_1290_p2;
assign p_shl39_fu_1340_p3 = {{lshr_ln13_reg_1928_pp0_iter3_reg}, {3'd0}};
assign p_shl40_fu_1365_p3 = {{add_ln8459_reg_2158}, {3'd0}};
assign p_shl_fu_1159_p3 = {{lshr_ln_fu_1145_p4}, {3'd0}};
assign select_ln8324_fu_1039_p3 = ((icmp_ln8326295_reg_896[0:0] == 1'b1) ? 6'd0 : v5434289_fu_192);
assign select_ln8326_1_fu_982_p3 = ((ap_phi_mux_icmp_ln8326295_phi_fu_899_p4[0:0] == 1'b1) ? 10'd1 : add_ln8326_1_fu_976_p2);
assign select_ln8327_1_fu_1235_p3 = ((empty_fu_1071_p2[0:0] == 1'b1) ? 6'd1 : add_ln8327_1_fu_1229_p2);
assign sub_ln8329_fu_1314_p2 = (tmp_60_fu_1304_p3 - zext_ln8330_2_fu_1311_p1);
assign sub_ln8330_fu_1167_p2 = (p_shl_fu_1159_p3 - zext_ln8330_1_fu_1155_p1);
assign sub_ln8459_1_fu_1372_p2 = (p_shl40_fu_1365_p3 - zext_ln8459_3_fu_1362_p1);
assign sub_ln8459_fu_1347_p2 = (p_shl39_fu_1340_p3 - zext_ln8459_fu_1337_p1);
assign tmp_60_fu_1304_p3 = {{trunc_ln8330_reg_1945}, {3'd0}};
assign tmp_fu_1283_p3 = {{lshr_ln13_reg_1928}, {4'd0}};
assign trunc_ln8330_fu_1209_p1 = add_ln8330_fu_1203_p2[6:0];
assign v5433_fu_1057_p3 = ((icmp_ln8326295_reg_896[0:0] == 1'b1) ? add_ln8324_fu_1033_p2 : v5433287_fu_184);
assign v5434_fu_1103_p3 = ((and_ln8324_1_fu_1052_p2[0:0] == 1'b1) ? add_ln8326_fu_1065_p2 : select_ln8324_fu_1039_p3);
assign v5435_fu_1137_p3 = ((icmp_ln8328_mid211_fu_1097_p2[0:0] == 1'b1) ? add_ln8327_fu_1111_p2 : v5435_mid26_fu_1077_p3);
assign v5435_mid26_fu_1077_p3 = ((empty_fu_1071_p2[0:0] == 1'b1) ? 4'd0 : v5435291_fu_200);
assign v5436_fu_1223_p2 = (v5436_mid2_fu_1129_p3 + 4'd2);
assign v5436_mid2_fu_1129_p3 = ((empty_177_fu_1123_p2[0:0] == 1'b1) ? 4'd0 : v5436292_fu_204);
assign v5441_fu_1487_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_15_q0 : v5752_15_q1);
assign v5450_fu_1494_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_14_q0 : v5752_14_q1);
assign v5459_fu_1501_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_13_q0 : v5752_13_q1);
assign v5468_fu_1508_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_12_q0 : v5752_12_q1);
assign v5477_fu_1515_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_11_q0 : v5752_11_q1);
assign v5485_fu_1522_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_10_q0 : v5752_10_q1);
assign v5493_fu_1529_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_9_q0 : v5752_9_q1);
assign v5501_fu_1536_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_8_q0 : v5752_8_q1);
assign v5510_fu_1543_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_7_q0 : v5752_7_q1);
assign v5518_fu_1550_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_6_q0 : v5752_6_q1);
assign v5526_fu_1557_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_5_q0 : v5752_5_q1);
assign v5534_fu_1564_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_4_q0 : v5752_4_q1);
assign v5543_fu_1571_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_3_q0 : v5752_3_q1);
assign v5551_fu_1578_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_2_q0 : v5752_2_q1);
assign v5559_fu_1585_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_1_q0 : v5752_1_q1);
assign v5567_fu_1592_p3 = ((cmp33_i_reg_1908_pp0_iter5_reg[0:0] == 1'b1) ? v5749_q0 : v5752_q1);
assign v5581_fu_1599_p0 = grp_fu_1695_p3;
assign v5581_fu_1599_p2 = ($signed(v5581_fu_1599_p0) + $signed(v5441_fu_1487_p3));
assign v5588_fu_1605_p0 = grp_fu_1704_p3;
assign v5588_fu_1605_p2 = ($signed(v5588_fu_1605_p0) + $signed(v5450_fu_1494_p3));
assign v5595_fu_1611_p0 = grp_fu_1713_p3;
assign v5595_fu_1611_p2 = ($signed(v5595_fu_1611_p0) + $signed(v5459_fu_1501_p3));
assign v5602_fu_1617_p0 = grp_fu_1722_p3;
assign v5602_fu_1617_p2 = ($signed(v5602_fu_1617_p0) + $signed(v5468_fu_1508_p3));
assign v5609_fu_1623_p0 = grp_fu_1731_p3;
assign v5609_fu_1623_p2 = ($signed(v5609_fu_1623_p0) + $signed(v5477_fu_1515_p3));
assign v5615_fu_1629_p0 = grp_fu_1740_p3;
assign v5615_fu_1629_p2 = ($signed(v5615_fu_1629_p0) + $signed(v5485_fu_1522_p3));
assign v5621_fu_1635_p0 = grp_fu_1749_p3;
assign v5621_fu_1635_p2 = ($signed(v5621_fu_1635_p0) + $signed(v5493_fu_1529_p3));
assign v5627_fu_1641_p0 = grp_fu_1758_p3;
assign v5627_fu_1641_p2 = ($signed(v5627_fu_1641_p0) + $signed(v5501_fu_1536_p3));
assign v5634_fu_1647_p0 = grp_fu_1767_p3;
assign v5634_fu_1647_p2 = ($signed(v5634_fu_1647_p0) + $signed(v5510_fu_1543_p3));
assign v5640_fu_1653_p0 = grp_fu_1776_p3;
assign v5640_fu_1653_p2 = ($signed(v5640_fu_1653_p0) + $signed(v5518_fu_1550_p3));
assign v5646_fu_1659_p0 = grp_fu_1785_p3;
assign v5646_fu_1659_p2 = ($signed(v5646_fu_1659_p0) + $signed(v5526_fu_1557_p3));
assign v5652_fu_1665_p0 = grp_fu_1794_p3;
assign v5652_fu_1665_p2 = ($signed(v5652_fu_1665_p0) + $signed(v5534_fu_1564_p3));
assign v5659_fu_1671_p0 = grp_fu_1803_p3;
assign v5659_fu_1671_p2 = ($signed(v5659_fu_1671_p0) + $signed(v5543_fu_1571_p3));
assign v5665_fu_1677_p0 = grp_fu_1812_p3;
assign v5665_fu_1677_p2 = ($signed(v5665_fu_1677_p0) + $signed(v5551_fu_1578_p3));
assign v5671_fu_1683_p0 = grp_fu_1821_p3;
assign v5671_fu_1683_p2 = ($signed(v5671_fu_1683_p0) + $signed(v5559_fu_1585_p3));
assign v5677_fu_1689_p0 = grp_fu_1830_p3;
assign v5677_fu_1689_p2 = ($signed(v5677_fu_1689_p0) + $signed(v5567_fu_1592_p3));
assign v5749_10_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_10_ce0 = v5749_10_ce0_local;
assign v5749_11_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_11_ce0 = v5749_11_ce0_local;
assign v5749_12_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_12_ce0 = v5749_12_ce0_local;
assign v5749_13_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_13_ce0 = v5749_13_ce0_local;
assign v5749_14_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_14_ce0 = v5749_14_ce0_local;
assign v5749_15_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_15_ce0 = v5749_15_ce0_local;
assign v5749_1_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_1_ce0 = v5749_1_ce0_local;
assign v5749_2_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_2_ce0 = v5749_2_ce0_local;
assign v5749_3_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_3_ce0 = v5749_3_ce0_local;
assign v5749_4_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_4_ce0 = v5749_4_ce0_local;
assign v5749_5_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_5_ce0 = v5749_5_ce0_local;
assign v5749_6_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_6_ce0 = v5749_6_ce0_local;
assign v5749_7_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_7_ce0 = v5749_7_ce0_local;
assign v5749_8_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_8_ce0 = v5749_8_ce0_local;
assign v5749_9_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_9_ce0 = v5749_9_ce0_local;
assign v5749_address0 = zext_ln8459_6_fu_1387_p1;
assign v5749_ce0 = v5749_ce0_local;
assign v5750_1_address0 = p_cast_reg_1966;
assign v5750_1_ce0 = v5750_1_ce0_local;
assign v5750_2_address0 = p_cast_fu_1296_p1;
assign v5750_2_ce0 = v5750_2_ce0_local;
assign v5750_3_address0 = p_cast_reg_1966;
assign v5750_3_ce0 = v5750_3_ce0_local;
assign v5750_4_address0 = p_cast_fu_1296_p1;
assign v5750_4_ce0 = v5750_4_ce0_local;
assign v5750_5_address0 = p_cast_reg_1966;
assign v5750_5_ce0 = v5750_5_ce0_local;
assign v5750_6_address0 = p_cast_fu_1296_p1;
assign v5750_6_ce0 = v5750_6_ce0_local;
assign v5750_7_address0 = p_cast_reg_1966;
assign v5750_7_ce0 = v5750_7_ce0_local;
assign v5750_address0 = p_cast_fu_1296_p1;
assign v5750_ce0 = v5750_ce0_local;
assign v5751_1_address0 = zext_ln8330_3_fu_1329_p1;
assign v5751_1_ce0 = v5751_1_ce0_local;
assign v5751_2_address0 = zext_ln8330_3_fu_1329_p1;
assign v5751_2_ce0 = v5751_2_ce0_local;
assign v5751_3_address0 = zext_ln8330_3_fu_1329_p1;
assign v5751_3_ce0 = v5751_3_ce0_local;
assign v5751_4_address0 = zext_ln8330_3_reg_1994;
assign v5751_4_ce0 = v5751_4_ce0_local;
assign v5751_5_address0 = zext_ln8330_3_reg_1994;
assign v5751_5_ce0 = v5751_5_ce0_local;
assign v5751_6_address0 = zext_ln8330_3_reg_1994;
assign v5751_6_ce0 = v5751_6_ce0_local;
assign v5751_7_address0 = zext_ln8330_3_reg_1994;
assign v5751_7_ce0 = v5751_7_ce0_local;
assign v5751_address0 = zext_ln8330_3_fu_1329_p1;
assign v5751_ce0 = v5751_ce0_local;
assign v5752_10_address0 = v5752_10_addr_reg_2256;
assign v5752_10_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_10_ce0 = v5752_10_ce0_local;
assign v5752_10_ce1 = v5752_10_ce1_local;
assign v5752_10_d0 = v5615_fu_1629_p2;
assign v5752_10_we0 = v5752_10_we0_local;
assign v5752_11_address0 = v5752_11_addr_reg_2262;
assign v5752_11_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_11_ce0 = v5752_11_ce0_local;
assign v5752_11_ce1 = v5752_11_ce1_local;
assign v5752_11_d0 = v5609_fu_1623_p2;
assign v5752_11_we0 = v5752_11_we0_local;
assign v5752_12_address0 = v5752_12_addr_reg_2268;
assign v5752_12_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_12_ce0 = v5752_12_ce0_local;
assign v5752_12_ce1 = v5752_12_ce1_local;
assign v5752_12_d0 = v5602_fu_1617_p2;
assign v5752_12_we0 = v5752_12_we0_local;
assign v5752_13_address0 = v5752_13_addr_reg_2274;
assign v5752_13_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_13_ce0 = v5752_13_ce0_local;
assign v5752_13_ce1 = v5752_13_ce1_local;
assign v5752_13_d0 = v5595_fu_1611_p2;
assign v5752_13_we0 = v5752_13_we0_local;
assign v5752_14_address0 = v5752_14_addr_reg_2280;
assign v5752_14_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_14_ce0 = v5752_14_ce0_local;
assign v5752_14_ce1 = v5752_14_ce1_local;
assign v5752_14_d0 = v5588_fu_1605_p2;
assign v5752_14_we0 = v5752_14_we0_local;
assign v5752_15_address0 = v5752_15_addr_reg_2286;
assign v5752_15_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_15_ce0 = v5752_15_ce0_local;
assign v5752_15_ce1 = v5752_15_ce1_local;
assign v5752_15_d0 = v5581_fu_1599_p2;
assign v5752_15_we0 = v5752_15_we0_local;
assign v5752_1_address0 = v5752_1_addr_reg_2202;
assign v5752_1_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_1_ce0 = v5752_1_ce0_local;
assign v5752_1_ce1 = v5752_1_ce1_local;
assign v5752_1_d0 = v5671_fu_1683_p2;
assign v5752_1_we0 = v5752_1_we0_local;
assign v5752_2_address0 = v5752_2_addr_reg_2208;
assign v5752_2_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_2_ce0 = v5752_2_ce0_local;
assign v5752_2_ce1 = v5752_2_ce1_local;
assign v5752_2_d0 = v5665_fu_1677_p2;
assign v5752_2_we0 = v5752_2_we0_local;
assign v5752_3_address0 = v5752_3_addr_reg_2214;
assign v5752_3_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_3_ce0 = v5752_3_ce0_local;
assign v5752_3_ce1 = v5752_3_ce1_local;
assign v5752_3_d0 = v5659_fu_1671_p2;
assign v5752_3_we0 = v5752_3_we0_local;
assign v5752_4_address0 = v5752_4_addr_reg_2220;
assign v5752_4_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_4_ce0 = v5752_4_ce0_local;
assign v5752_4_ce1 = v5752_4_ce1_local;
assign v5752_4_d0 = v5652_fu_1665_p2;
assign v5752_4_we0 = v5752_4_we0_local;
assign v5752_5_address0 = v5752_5_addr_reg_2226;
assign v5752_5_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_5_ce0 = v5752_5_ce0_local;
assign v5752_5_ce1 = v5752_5_ce1_local;
assign v5752_5_d0 = v5646_fu_1659_p2;
assign v5752_5_we0 = v5752_5_we0_local;
assign v5752_6_address0 = v5752_6_addr_reg_2232;
assign v5752_6_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_6_ce0 = v5752_6_ce0_local;
assign v5752_6_ce1 = v5752_6_ce1_local;
assign v5752_6_d0 = v5640_fu_1653_p2;
assign v5752_6_we0 = v5752_6_we0_local;
assign v5752_7_address0 = v5752_7_addr_reg_2238;
assign v5752_7_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_7_ce0 = v5752_7_ce0_local;
assign v5752_7_ce1 = v5752_7_ce1_local;
assign v5752_7_d0 = v5634_fu_1647_p2;
assign v5752_7_we0 = v5752_7_we0_local;
assign v5752_8_address0 = v5752_8_addr_reg_2244;
assign v5752_8_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_8_ce0 = v5752_8_ce0_local;
assign v5752_8_ce1 = v5752_8_ce1_local;
assign v5752_8_d0 = v5627_fu_1641_p2;
assign v5752_8_we0 = v5752_8_we0_local;
assign v5752_9_address0 = v5752_9_addr_reg_2250;
assign v5752_9_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_9_ce0 = v5752_9_ce0_local;
assign v5752_9_ce1 = v5752_9_ce1_local;
assign v5752_9_d0 = v5621_fu_1635_p2;
assign v5752_9_we0 = v5752_9_we0_local;
assign v5752_address0 = v5752_addr_reg_2196;
assign v5752_address1 = zext_ln8459_6_fu_1387_p1;
assign v5752_ce0 = v5752_ce0_local;
assign v5752_ce1 = v5752_ce1_local;
assign v5752_d0 = v5677_fu_1689_p2;
assign v5752_we0 = v5752_we0_local;
assign xor_ln8324_fu_970_p2 = (ap_phi_mux_icmp_ln8326295_phi_fu_899_p4 ^ 1'd1);
assign zext_ln8330_1_fu_1155_p1 = lshr_ln_fu_1145_p4;
assign zext_ln8330_2_fu_1311_p1 = add_ln8330_reg_1940;
assign zext_ln8330_3_fu_1329_p1 = add_ln8330_1_fu_1323_p2;
assign zext_ln8330_fu_1280_p1 = lshr_ln_reg_1903;
assign zext_ln8459_1_fu_1199_p1 = lshr_ln14_fu_1189_p4;
assign zext_ln8459_2_fu_1353_p1 = lshr_ln14_reg_1935_pp0_iter3_reg;
assign zext_ln8459_3_fu_1362_p1 = add_ln8459_reg_2158;
assign zext_ln8459_4_fu_1320_p1 = lshr_ln15_reg_1950;
assign zext_ln8459_5_fu_1378_p1 = lshr_ln15_reg_1950_pp0_iter4_reg;
assign zext_ln8459_6_fu_1387_p1 = add_ln8459_1_fu_1381_p2;
assign zext_ln8459_fu_1337_p1 = lshr_ln13_reg_1928_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    p_cast_reg_1966[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln8330_3_reg_1994[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
