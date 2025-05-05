module forward_dataflow_in_loop_VITIS_LOOP_10939_1_Loop_VITIS_LOOP_10812_1_proc99_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,tmp_600,zext_ln10812,select_ln10944,v8675_address0,v8675_ce0,v8675_we0,v8675_d0,v8675_1_address0,v8675_1_ce0,v8675_1_we0,v8675_1_d0,v8675_2_address0,v8675_2_ce0,v8675_2_we0,v8675_2_d0,v8675_3_address0,v8675_3_ce0,v8675_3_we0,v8675_3_d0,v8675_4_address0,v8675_4_ce0,v8675_4_we0,v8675_4_d0,v8675_5_address0,v8675_5_ce0,v8675_5_we0,v8675_5_d0,v8675_6_address0,v8675_6_ce0,v8675_6_we0,v8675_6_d0,v8675_7_address0,v8675_7_ce0,v8675_7_we0,v8675_7_d0,v8675_8_address0,v8675_8_ce0,v8675_8_we0,v8675_8_d0,v8675_9_address0,v8675_9_ce0,v8675_9_we0,v8675_9_d0,v8675_10_address0,v8675_10_ce0,v8675_10_we0,v8675_10_d0,v8675_11_address0,v8675_11_ce0,v8675_11_we0,v8675_11_d0,v8675_12_address0,v8675_12_ce0,v8675_12_we0,v8675_12_d0,v8675_13_address0,v8675_13_ce0,v8675_13_we0,v8675_13_d0,v8675_14_address0,v8675_14_ce0,v8675_14_we0,v8675_14_d0,v8675_15_address0,v8675_15_ce0,v8675_15_we0,v8675_15_d0,zext_ln10870_5_cast_cast,empty,v16191_0_0_0_address0,v16191_0_0_0_ce0,v16191_0_0_0_q0,v16191_0_0_0_address1,v16191_0_0_0_ce1,v16191_0_0_0_q1,v16191_0_0_1_address0,v16191_0_0_1_ce0,v16191_0_0_1_q0,v16191_0_0_1_address1,v16191_0_0_1_ce1,v16191_0_0_1_q1,v16191_0_1_0_address0,v16191_0_1_0_ce0,v16191_0_1_0_q0,v16191_0_1_0_address1,v16191_0_1_0_ce1,v16191_0_1_0_q1,v16191_0_1_1_address0,v16191_0_1_1_ce0,v16191_0_1_1_q0,v16191_0_1_1_address1,v16191_0_1_1_ce1,v16191_0_1_1_q1,v16191_1_0_0_address0,v16191_1_0_0_ce0,v16191_1_0_0_q0,v16191_1_0_0_address1,v16191_1_0_0_ce1,v16191_1_0_0_q1,v16191_1_0_1_address0,v16191_1_0_1_ce0,v16191_1_0_1_q0,v16191_1_0_1_address1,v16191_1_0_1_ce1,v16191_1_0_1_q1,v16191_1_1_0_address0,v16191_1_1_0_ce0,v16191_1_1_0_q0,v16191_1_1_0_address1,v16191_1_1_0_ce1,v16191_1_1_0_q1,v16191_1_1_1_address0,v16191_1_1_1_ce0,v16191_1_1_1_q0,v16191_1_1_1_address1,v16191_1_1_1_ce1,v16191_1_1_1_q1,v16191_2_0_0_address0,v16191_2_0_0_ce0,v16191_2_0_0_q0,v16191_2_0_0_address1,v16191_2_0_0_ce1,v16191_2_0_0_q1,v16191_2_0_1_address0,v16191_2_0_1_ce0,v16191_2_0_1_q0,v16191_2_0_1_address1,v16191_2_0_1_ce1,v16191_2_0_1_q1,v16191_2_1_0_address0,v16191_2_1_0_ce0,v16191_2_1_0_q0,v16191_2_1_0_address1,v16191_2_1_0_ce1,v16191_2_1_0_q1,v16191_2_1_1_address0,v16191_2_1_1_ce0,v16191_2_1_1_q0,v16191_2_1_1_address1,v16191_2_1_1_ce1,v16191_2_1_1_q1,v16191_3_0_0_address0,v16191_3_0_0_ce0,v16191_3_0_0_q0,v16191_3_0_0_address1,v16191_3_0_0_ce1,v16191_3_0_0_q1,v16191_3_0_1_address0,v16191_3_0_1_ce0,v16191_3_0_1_q0,v16191_3_0_1_address1,v16191_3_0_1_ce1,v16191_3_0_1_q1,v16191_3_1_0_address0,v16191_3_1_0_ce0,v16191_3_1_0_q0,v16191_3_1_0_address1,v16191_3_1_0_ce1,v16191_3_1_0_q1,v16191_3_1_1_address0,v16191_3_1_1_ce0,v16191_3_1_1_q0,v16191_3_1_1_address1,v16191_3_1_1_ce1,v16191_3_1_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [1:0] tmp_600;
input  [1:0] zext_ln10812;
input  [1:0] select_ln10944;
output  [8:0] v8675_address0;
output   v8675_ce0;
output   v8675_we0;
output  [7:0] v8675_d0;
output  [8:0] v8675_1_address0;
output   v8675_1_ce0;
output   v8675_1_we0;
output  [7:0] v8675_1_d0;
output  [8:0] v8675_2_address0;
output   v8675_2_ce0;
output   v8675_2_we0;
output  [7:0] v8675_2_d0;
output  [8:0] v8675_3_address0;
output   v8675_3_ce0;
output   v8675_3_we0;
output  [7:0] v8675_3_d0;
output  [8:0] v8675_4_address0;
output   v8675_4_ce0;
output   v8675_4_we0;
output  [7:0] v8675_4_d0;
output  [8:0] v8675_5_address0;
output   v8675_5_ce0;
output   v8675_5_we0;
output  [7:0] v8675_5_d0;
output  [8:0] v8675_6_address0;
output   v8675_6_ce0;
output   v8675_6_we0;
output  [7:0] v8675_6_d0;
output  [8:0] v8675_7_address0;
output   v8675_7_ce0;
output   v8675_7_we0;
output  [7:0] v8675_7_d0;
output  [8:0] v8675_8_address0;
output   v8675_8_ce0;
output   v8675_8_we0;
output  [7:0] v8675_8_d0;
output  [8:0] v8675_9_address0;
output   v8675_9_ce0;
output   v8675_9_we0;
output  [7:0] v8675_9_d0;
output  [8:0] v8675_10_address0;
output   v8675_10_ce0;
output   v8675_10_we0;
output  [7:0] v8675_10_d0;
output  [8:0] v8675_11_address0;
output   v8675_11_ce0;
output   v8675_11_we0;
output  [7:0] v8675_11_d0;
output  [8:0] v8675_12_address0;
output   v8675_12_ce0;
output   v8675_12_we0;
output  [7:0] v8675_12_d0;
output  [8:0] v8675_13_address0;
output   v8675_13_ce0;
output   v8675_13_we0;
output  [7:0] v8675_13_d0;
output  [8:0] v8675_14_address0;
output   v8675_14_ce0;
output   v8675_14_we0;
output  [7:0] v8675_14_d0;
output  [8:0] v8675_15_address0;
output   v8675_15_ce0;
output   v8675_15_we0;
output  [7:0] v8675_15_d0;
input  [1:0] zext_ln10870_5_cast_cast;
input  [1:0] empty;
output  [12:0] v16191_0_0_0_address0;
output   v16191_0_0_0_ce0;
input  [7:0] v16191_0_0_0_q0;
output  [12:0] v16191_0_0_0_address1;
output   v16191_0_0_0_ce1;
input  [7:0] v16191_0_0_0_q1;
output  [12:0] v16191_0_0_1_address0;
output   v16191_0_0_1_ce0;
input  [7:0] v16191_0_0_1_q0;
output  [12:0] v16191_0_0_1_address1;
output   v16191_0_0_1_ce1;
input  [7:0] v16191_0_0_1_q1;
output  [12:0] v16191_0_1_0_address0;
output   v16191_0_1_0_ce0;
input  [7:0] v16191_0_1_0_q0;
output  [12:0] v16191_0_1_0_address1;
output   v16191_0_1_0_ce1;
input  [7:0] v16191_0_1_0_q1;
output  [12:0] v16191_0_1_1_address0;
output   v16191_0_1_1_ce0;
input  [7:0] v16191_0_1_1_q0;
output  [12:0] v16191_0_1_1_address1;
output   v16191_0_1_1_ce1;
input  [7:0] v16191_0_1_1_q1;
output  [12:0] v16191_1_0_0_address0;
output   v16191_1_0_0_ce0;
input  [7:0] v16191_1_0_0_q0;
output  [12:0] v16191_1_0_0_address1;
output   v16191_1_0_0_ce1;
input  [7:0] v16191_1_0_0_q1;
output  [12:0] v16191_1_0_1_address0;
output   v16191_1_0_1_ce0;
input  [7:0] v16191_1_0_1_q0;
output  [12:0] v16191_1_0_1_address1;
output   v16191_1_0_1_ce1;
input  [7:0] v16191_1_0_1_q1;
output  [12:0] v16191_1_1_0_address0;
output   v16191_1_1_0_ce0;
input  [7:0] v16191_1_1_0_q0;
output  [12:0] v16191_1_1_0_address1;
output   v16191_1_1_0_ce1;
input  [7:0] v16191_1_1_0_q1;
output  [12:0] v16191_1_1_1_address0;
output   v16191_1_1_1_ce0;
input  [7:0] v16191_1_1_1_q0;
output  [12:0] v16191_1_1_1_address1;
output   v16191_1_1_1_ce1;
input  [7:0] v16191_1_1_1_q1;
output  [12:0] v16191_2_0_0_address0;
output   v16191_2_0_0_ce0;
input  [7:0] v16191_2_0_0_q0;
output  [12:0] v16191_2_0_0_address1;
output   v16191_2_0_0_ce1;
input  [7:0] v16191_2_0_0_q1;
output  [12:0] v16191_2_0_1_address0;
output   v16191_2_0_1_ce0;
input  [7:0] v16191_2_0_1_q0;
output  [12:0] v16191_2_0_1_address1;
output   v16191_2_0_1_ce1;
input  [7:0] v16191_2_0_1_q1;
output  [12:0] v16191_2_1_0_address0;
output   v16191_2_1_0_ce0;
input  [7:0] v16191_2_1_0_q0;
output  [12:0] v16191_2_1_0_address1;
output   v16191_2_1_0_ce1;
input  [7:0] v16191_2_1_0_q1;
output  [12:0] v16191_2_1_1_address0;
output   v16191_2_1_1_ce0;
input  [7:0] v16191_2_1_1_q0;
output  [12:0] v16191_2_1_1_address1;
output   v16191_2_1_1_ce1;
input  [7:0] v16191_2_1_1_q1;
output  [12:0] v16191_3_0_0_address0;
output   v16191_3_0_0_ce0;
input  [7:0] v16191_3_0_0_q0;
output  [12:0] v16191_3_0_0_address1;
output   v16191_3_0_0_ce1;
input  [7:0] v16191_3_0_0_q1;
output  [12:0] v16191_3_0_1_address0;
output   v16191_3_0_1_ce0;
input  [7:0] v16191_3_0_1_q0;
output  [12:0] v16191_3_0_1_address1;
output   v16191_3_0_1_ce1;
input  [7:0] v16191_3_0_1_q1;
output  [12:0] v16191_3_1_0_address0;
output   v16191_3_1_0_ce0;
input  [7:0] v16191_3_1_0_q0;
output  [12:0] v16191_3_1_0_address1;
output   v16191_3_1_0_ce1;
input  [7:0] v16191_3_1_0_q1;
output  [12:0] v16191_3_1_1_address0;
output   v16191_3_1_1_ce0;
input  [7:0] v16191_3_1_1_q0;
output  [12:0] v16191_3_1_1_address1;
output   v16191_3_1_1_ce1;
input  [7:0] v16191_3_1_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln10812_fu_1452_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] lshr_ln_fu_1252_p4;
reg   [2:0] lshr_ln_reg_2267;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] sub_ln10817_fu_1292_p2;
reg   [8:0] sub_ln10817_reg_2273;
reg   [8:0] sub_ln10817_reg_2273_pp0_iter1_reg;
wire   [8:0] sub_ln10825_fu_1328_p2;
reg   [8:0] sub_ln10825_reg_2279;
reg   [8:0] sub_ln10825_reg_2279_pp0_iter1_reg;
reg   [2:0] lshr_ln85_reg_2285;
wire   [4:0] empty_495_fu_1354_p2;
reg   [4:0] empty_495_reg_2290;
wire   [0:0] empty_496_fu_1360_p1;
reg   [0:0] empty_496_reg_2295;
reg   [0:0] empty_496_reg_2295_pp0_iter1_reg;
reg   [0:0] empty_496_reg_2295_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_2315;
reg   [2:0] lshr_ln86_reg_2320;
reg   [2:0] lshr_ln86_reg_2320_pp0_iter1_reg;
wire   [4:0] add_ln10816_1_fu_1394_p2;
reg   [4:0] add_ln10816_1_reg_2325;
wire   [0:0] trunc_ln10816_fu_1400_p1;
reg   [0:0] trunc_ln10816_reg_2330;
reg   [0:0] trunc_ln10816_reg_2330_pp0_iter1_reg;
reg   [0:0] trunc_ln10816_reg_2330_pp0_iter2_reg;
reg   [3:0] lshr_ln87_reg_2366;
wire   [0:0] icmp_ln10814_fu_1440_p2;
reg   [0:0] icmp_ln10814_reg_2371;
wire   [0:0] icmp_ln10813_fu_1446_p2;
reg   [0:0] icmp_ln10813_reg_2376;
reg   [0:0] icmp_ln10812_reg_2381;
wire   [5:0] add_ln10847_fu_1502_p2;
reg   [5:0] add_ln10847_reg_2385;
reg   [4:0] p_cast_reg_2391;
wire   [12:0] zext_ln10819_fu_1592_p1;
reg   [12:0] zext_ln10819_reg_2396;
wire  signed [12:0] sext_ln10817_1_fu_1650_p1;
reg  signed [12:0] sext_ln10817_1_reg_2482;
wire   [63:0] zext_ln10847_4_fu_1800_p1;
reg   [63:0] zext_ln10847_4_reg_2568;
reg   [0:0] ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln10814485_phi_fu_1115_p4;
wire   [63:0] zext_ln10823_fu_1601_p1;
wire   [63:0] zext_ln10831_fu_1615_p1;
wire   [63:0] zext_ln10821_2_fu_1660_p1;
wire   [63:0] zext_ln10829_1_fu_1674_p1;
wire   [63:0] zext_ln10819_1_fu_1817_p1;
wire   [63:0] zext_ln10827_fu_1830_p1;
wire   [63:0] zext_ln10817_fu_1851_p1;
wire   [63:0] zext_ln10825_2_fu_1864_p1;
reg   [8:0] indvar_flatten12480_fu_182;
wire   [8:0] add_ln10812_1_fu_1434_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12480_load;
reg   [5:0] v8617481_fu_186;
wire   [5:0] v8617_fu_1212_p3;
reg   [5:0] ap_sig_allocacmp_v8617481_load;
reg   [5:0] indvar_flatten482_fu_190;
wire   [5:0] select_ln10813_1_fu_1426_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten482_load;
reg   [3:0] v8618483_fu_194;
wire   [3:0] v8618_fu_1240_p3;
reg   [3:0] ap_sig_allocacmp_v8618483_load;
reg   [3:0] v8619484_fu_198;
wire   [3:0] v8619_fu_1414_p2;
reg   [3:0] ap_sig_allocacmp_v8619484_load;
reg    v16191_0_0_0_ce1_local;
reg   [12:0] v16191_0_0_0_address1_local;
reg    v16191_0_0_0_ce0_local;
reg   [12:0] v16191_0_0_0_address0_local;
reg    v16191_0_0_1_ce1_local;
reg   [12:0] v16191_0_0_1_address1_local;
reg    v16191_0_0_1_ce0_local;
reg   [12:0] v16191_0_0_1_address0_local;
reg    v16191_0_1_0_ce1_local;
reg   [12:0] v16191_0_1_0_address1_local;
reg    v16191_0_1_0_ce0_local;
reg   [12:0] v16191_0_1_0_address0_local;
reg    v16191_0_1_1_ce1_local;
reg   [12:0] v16191_0_1_1_address1_local;
reg    v16191_0_1_1_ce0_local;
reg   [12:0] v16191_0_1_1_address0_local;
reg    v16191_1_0_0_ce1_local;
reg   [12:0] v16191_1_0_0_address1_local;
reg    v16191_1_0_0_ce0_local;
reg   [12:0] v16191_1_0_0_address0_local;
reg    v16191_1_0_1_ce1_local;
reg   [12:0] v16191_1_0_1_address1_local;
reg    v16191_1_0_1_ce0_local;
reg   [12:0] v16191_1_0_1_address0_local;
reg    v16191_1_1_0_ce1_local;
reg   [12:0] v16191_1_1_0_address1_local;
reg    v16191_1_1_0_ce0_local;
reg   [12:0] v16191_1_1_0_address0_local;
reg    v16191_1_1_1_ce1_local;
reg   [12:0] v16191_1_1_1_address1_local;
reg    v16191_1_1_1_ce0_local;
reg   [12:0] v16191_1_1_1_address0_local;
reg    v16191_2_0_0_ce1_local;
reg   [12:0] v16191_2_0_0_address1_local;
reg    v16191_2_0_0_ce0_local;
reg   [12:0] v16191_2_0_0_address0_local;
reg    v16191_2_0_1_ce1_local;
reg   [12:0] v16191_2_0_1_address1_local;
reg    v16191_2_0_1_ce0_local;
reg   [12:0] v16191_2_0_1_address0_local;
reg    v16191_2_1_0_ce1_local;
reg   [12:0] v16191_2_1_0_address1_local;
reg    v16191_2_1_0_ce0_local;
reg   [12:0] v16191_2_1_0_address0_local;
reg    v16191_2_1_1_ce1_local;
reg   [12:0] v16191_2_1_1_address1_local;
reg    v16191_2_1_1_ce0_local;
reg   [12:0] v16191_2_1_1_address0_local;
reg    v16191_3_0_0_ce1_local;
reg   [12:0] v16191_3_0_0_address1_local;
reg    v16191_3_0_0_ce0_local;
reg   [12:0] v16191_3_0_0_address0_local;
reg    v16191_3_0_1_ce1_local;
reg   [12:0] v16191_3_0_1_address1_local;
reg    v16191_3_0_1_ce0_local;
reg   [12:0] v16191_3_0_1_address0_local;
reg    v16191_3_1_0_ce1_local;
reg   [12:0] v16191_3_1_0_address1_local;
reg    v16191_3_1_0_ce0_local;
reg   [12:0] v16191_3_1_0_address0_local;
reg    v16191_3_1_1_ce1_local;
reg   [12:0] v16191_3_1_1_address1_local;
reg    v16191_3_1_1_ce0_local;
reg   [12:0] v16191_3_1_1_address0_local;
reg    v8675_13_we0_local;
wire   [7:0] select_ln10821_2_fu_1894_p3;
reg    v8675_13_ce0_local;
reg    v8675_12_we0_local;
wire   [7:0] select_ln10823_2_fu_1916_p3;
reg    v8675_12_ce0_local;
reg    v8675_9_we0_local;
wire   [7:0] select_ln10829_2_fu_1938_p3;
reg    v8675_9_ce0_local;
reg    v8675_8_we0_local;
wire   [7:0] select_ln10831_2_fu_1960_p3;
reg    v8675_8_ce0_local;
reg    v8675_5_we0_local;
wire   [7:0] select_ln10837_2_fu_1982_p3;
reg    v8675_5_ce0_local;
reg    v8675_4_we0_local;
wire   [7:0] select_ln10839_2_fu_2004_p3;
reg    v8675_4_ce0_local;
reg    v8675_1_we0_local;
wire   [7:0] select_ln10845_2_fu_2026_p3;
reg    v8675_1_ce0_local;
reg    v8675_we0_local;
wire   [7:0] select_ln10847_2_fu_2048_p3;
reg    v8675_ce0_local;
reg    v8675_15_we0_local;
wire   [7:0] select_ln10817_2_fu_2070_p3;
reg    v8675_15_ce0_local;
reg    v8675_14_we0_local;
wire   [7:0] select_ln10819_2_fu_2092_p3;
reg    v8675_14_ce0_local;
reg    v8675_11_we0_local;
wire   [7:0] select_ln10825_2_fu_2114_p3;
reg    v8675_11_ce0_local;
reg    v8675_10_we0_local;
wire   [7:0] select_ln10827_2_fu_2136_p3;
reg    v8675_10_ce0_local;
reg    v8675_7_we0_local;
wire   [7:0] select_ln10833_2_fu_2158_p3;
reg    v8675_7_ce0_local;
reg    v8675_6_we0_local;
wire   [7:0] select_ln10835_2_fu_2180_p3;
reg    v8675_6_ce0_local;
reg    v8675_3_we0_local;
wire   [7:0] select_ln10841_2_fu_2202_p3;
reg    v8675_3_ce0_local;
reg    v8675_2_we0_local;
wire   [7:0] select_ln10843_2_fu_2224_p3;
reg    v8675_2_ce0_local;
wire  signed [3:0] zext_ln10870_5_cast_cast_cast_fu_1126_p1;
wire  signed [3:0] select_ln10944_cast_fu_1134_p1;
wire   [0:0] xor_ln10812_fu_1200_p2;
wire   [5:0] add_ln10812_fu_1186_p2;
wire   [3:0] select_ln10812_fu_1192_p3;
wire   [0:0] and_ln10812_fu_1206_p2;
wire   [0:0] empty_493_fu_1226_p2;
wire   [3:0] add_ln10813_fu_1220_p2;
wire   [6:0] zext_ln10812_1_fu_1248_p1;
wire   [5:0] tmp_682_fu_1278_p4;
wire   [8:0] p_shl49_fu_1268_p4;
wire   [8:0] zext_ln10817_1_fu_1288_p1;
wire   [6:0] empty_494_fu_1262_p2;
wire   [4:0] tmp_683_fu_1298_p4;
wire   [5:0] tmp_684_fu_1316_p3;
wire   [8:0] p_shl47_fu_1308_p3;
wire   [8:0] zext_ln10825_fu_1324_p1;
wire   [4:0] zext_ln10812_cast_fu_1142_p1;
wire   [4:0] zext_ln10813_1_fu_1334_p1;
wire   [4:0] tmp_fu_1348_p2;
wire   [4:0] select_ln10944_cast_cast_fu_1138_p1;
wire   [3:0] v8619_mid2_fu_1232_p3;
wire   [4:0] zext_ln10870_5_cast_cast_cast_cast_fu_1130_p1;
wire   [4:0] zext_ln10814_fu_1374_p1;
wire   [4:0] add_ln10816_fu_1388_p2;
wire   [4:0] p_cast2_fu_1122_p1;
wire   [5:0] add_ln10813_1_fu_1420_p2;
wire   [5:0] p_shl51_fu_1486_p3;
wire   [5:0] zext_ln10847_fu_1483_p1;
wire   [5:0] sub_ln10847_fu_1493_p2;
wire   [5:0] zext_ln10847_1_fu_1499_p1;
wire   [8:0] zext_ln10821_fu_1508_p1;
wire   [8:0] add_ln10821_fu_1511_p2;
wire   [9:0] tmp_685_fu_1524_p3;
wire   [12:0] p_shl44_fu_1516_p3;
wire   [12:0] zext_ln10821_1_fu_1532_p1;
wire   [8:0] add_ln10829_fu_1542_p2;
wire   [9:0] tmp_686_fu_1555_p3;
wire   [12:0] p_shl42_fu_1547_p3;
wire   [12:0] zext_ln10829_fu_1563_p1;
wire   [5:0] p_cast7_i_fu_1573_p1;
wire   [5:0] empty_497_fu_1576_p2;
wire   [12:0] sub_ln10821_fu_1536_p2;
wire   [12:0] add_ln10823_fu_1595_p2;
wire   [12:0] sub_ln10829_fu_1567_p2;
wire   [12:0] add_ln10831_fu_1609_p2;
wire   [5:0] zext_ln10816_fu_1631_p1;
wire   [5:0] add_ln10816_2_fu_1634_p2;
wire   [4:0] trunc_ln_fu_1640_p4;
wire   [12:0] add_ln10821_1_fu_1654_p2;
wire   [12:0] add_ln10829_1_fu_1668_p2;
wire   [8:0] p_shl46_fu_1699_p3;
wire   [8:0] zext_ln10847_2_fu_1696_p1;
wire  signed [8:0] sext_ln10817_fu_1712_p1;
wire   [9:0] mul_ln10817_cast_fu_1690_p1;
wire   [9:0] zext_ln10817_2_fu_1715_p1;
wire   [9:0] add_ln10817_fu_1719_p2;
wire   [8:0] trunc_ln10817_fu_1725_p1;
wire   [10:0] tmp_687_fu_1729_p3;
wire   [12:0] tmp_688_fu_1737_p3;
wire   [12:0] zext_ln10817_3_fu_1745_p1;
wire   [9:0] zext_ln10813_fu_1693_p1;
wire   [9:0] add_ln10825_fu_1755_p2;
wire   [8:0] trunc_ln10825_fu_1761_p1;
wire   [10:0] tmp_689_fu_1765_p3;
wire   [12:0] tmp_690_fu_1773_p3;
wire   [12:0] zext_ln10825_1_fu_1781_p1;
wire   [8:0] sub_ln10847_1_fu_1706_p2;
wire   [8:0] zext_ln10847_3_fu_1791_p1;
wire   [8:0] add_ln10847_1_fu_1794_p2;
wire   [12:0] sub_ln10825_1_fu_1749_p2;
wire   [12:0] add_ln10819_fu_1812_p2;
wire   [12:0] sub_ln10814_fu_1785_p2;
wire   [12:0] add_ln10827_fu_1825_p2;
wire   [12:0] add_ln10817_1_fu_1846_p2;
wire   [12:0] add_ln10825_1_fu_1859_p2;
wire   [7:0] select_ln10821_1_fu_1887_p3;
wire   [7:0] select_ln10821_fu_1880_p3;
wire   [7:0] select_ln10823_1_fu_1909_p3;
wire   [7:0] select_ln10823_fu_1902_p3;
wire   [7:0] select_ln10829_1_fu_1931_p3;
wire   [7:0] select_ln10829_fu_1924_p3;
wire   [7:0] select_ln10831_1_fu_1953_p3;
wire   [7:0] select_ln10831_fu_1946_p3;
wire   [7:0] select_ln10837_1_fu_1975_p3;
wire   [7:0] select_ln10837_fu_1968_p3;
wire   [7:0] select_ln10839_1_fu_1997_p3;
wire   [7:0] select_ln10839_fu_1990_p3;
wire   [7:0] select_ln10845_1_fu_2019_p3;
wire   [7:0] select_ln10845_fu_2012_p3;
wire   [7:0] select_ln10847_1_fu_2041_p3;
wire   [7:0] select_ln10847_fu_2034_p3;
wire   [7:0] select_ln10817_fu_2056_p3;
wire   [7:0] select_ln10817_1_fu_2063_p3;
wire   [7:0] select_ln10819_fu_2078_p3;
wire   [7:0] select_ln10819_1_fu_2085_p3;
wire   [7:0] select_ln10825_fu_2100_p3;
wire   [7:0] select_ln10825_1_fu_2107_p3;
wire   [7:0] select_ln10827_fu_2122_p3;
wire   [7:0] select_ln10827_1_fu_2129_p3;
wire   [7:0] select_ln10833_fu_2144_p3;
wire   [7:0] select_ln10833_1_fu_2151_p3;
wire   [7:0] select_ln10835_fu_2166_p3;
wire   [7:0] select_ln10835_1_fu_2173_p3;
wire   [7:0] select_ln10841_fu_2188_p3;
wire   [7:0] select_ln10841_1_fu_2195_p3;
wire   [7:0] select_ln10843_fu_2210_p3;
wire   [7:0] select_ln10843_1_fu_2217_p3;
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
reg    ap_condition_1452;
reg    ap_condition_1455;
reg    ap_condition_1458;
reg    ap_condition_1461;
reg    ap_condition_1464;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten12480_fu_182 = 9'd0;
#0 v8617481_fu_186 = 6'd0;
#0 indvar_flatten482_fu_190 = 6'd0;
#0 v8618483_fu_194 = 4'd0;
#0 v8619484_fu_198 = 4'd0;
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
            indvar_flatten12480_fu_182 <= add_ln10812_1_fu_1434_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12480_fu_182 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten482_fu_190 <= select_ln10813_1_fu_1426_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten482_fu_190 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v8617481_fu_186 <= v8617_fu_1212_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v8617481_fu_186 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v8618483_fu_194 <= v8618_fu_1240_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v8618483_fu_194 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v8619484_fu_198 <= v8619_fu_1414_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v8619484_fu_198 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10816_1_reg_2325 <= add_ln10816_1_fu_1394_p2;
        add_ln10847_reg_2385 <= add_ln10847_fu_1502_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_495_reg_2290 <= empty_495_fu_1354_p2;
        empty_496_reg_2295 <= empty_496_fu_1360_p1;
        empty_496_reg_2295_pp0_iter1_reg <= empty_496_reg_2295;
        icmp_ln10812_reg_2381 <= icmp_ln10812_fu_1452_p2;
        lshr_ln85_reg_2285 <= {{v8618_fu_1240_p3[3:1]}};
        lshr_ln86_reg_2320 <= {{v8619_mid2_fu_1232_p3[3:1]}};
        lshr_ln86_reg_2320_pp0_iter1_reg <= lshr_ln86_reg_2320;
        lshr_ln87_reg_2366 <= {{add_ln10816_1_fu_1394_p2[4:1]}};
        lshr_ln_reg_2267 <= {{v8617_fu_1212_p3[4:2]}};
        p_cast_reg_2391 <= {{empty_497_fu_1576_p2[5:1]}};
        sext_ln10817_1_reg_2482 <= sext_ln10817_1_fu_1650_p1;
        sub_ln10817_reg_2273[8 : 1] <= sub_ln10817_fu_1292_p2[8 : 1];
        sub_ln10817_reg_2273_pp0_iter1_reg[8 : 1] <= sub_ln10817_reg_2273[8 : 1];
        sub_ln10825_reg_2279[8 : 1] <= sub_ln10825_fu_1328_p2[8 : 1];
        sub_ln10825_reg_2279_pp0_iter1_reg[8 : 1] <= sub_ln10825_reg_2279[8 : 1];
        tmp_s_reg_2315 <= {{empty_495_fu_1354_p2[4:1]}};
        trunc_ln10816_reg_2330 <= trunc_ln10816_fu_1400_p1;
        trunc_ln10816_reg_2330_pp0_iter1_reg <= trunc_ln10816_reg_2330;
        zext_ln10819_reg_2396[3 : 0] <= zext_ln10819_fu_1592_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        empty_496_reg_2295_pp0_iter2_reg <= empty_496_reg_2295_pp0_iter1_reg;
        trunc_ln10816_reg_2330_pp0_iter2_reg <= trunc_ln10816_reg_2330_pp0_iter1_reg;
        zext_ln10847_4_reg_2568[8 : 0] <= zext_ln10847_4_fu_1800_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10813_reg_2376 <= icmp_ln10813_fu_1446_p2;
        icmp_ln10814_reg_2371 <= icmp_ln10814_fu_1440_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10812_fu_1452_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_1452)) begin
            ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4 = icmp_ln10813_reg_2376;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4 = icmp_ln10813_reg_2376;
        end
    end else begin
        ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4 = icmp_ln10813_reg_2376;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1452)) begin
            ap_phi_mux_icmp_ln10814485_phi_fu_1115_p4 = icmp_ln10814_reg_2371;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln10814485_phi_fu_1115_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln10814485_phi_fu_1115_p4 = icmp_ln10814_reg_2371;
        end
    end else begin
        ap_phi_mux_icmp_ln10814485_phi_fu_1115_p4 = icmp_ln10814_reg_2371;
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
        ap_sig_allocacmp_indvar_flatten12480_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12480_load = indvar_flatten12480_fu_182;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten482_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten482_load = indvar_flatten482_fu_190;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8617481_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v8617481_load = v8617481_fu_186;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8618483_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v8618483_load = v8618483_fu_194;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8619484_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v8619484_load = v8619484_fu_198;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_0_0_0_address0_local = zext_ln10819_1_fu_1817_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_0_0_0_address0_local = zext_ln10817_fu_1851_p1;
        end else begin
            v16191_0_0_0_address0_local = 'bx;
        end
    end else begin
        v16191_0_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_0_0_0_address1_local = zext_ln10823_fu_1601_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_0_0_0_address1_local = zext_ln10821_2_fu_1660_p1;
        end else begin
            v16191_0_0_0_address1_local = 'bx;
        end
    end else begin
        v16191_0_0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_0_0_0_ce0_local = 1'b1;
    end else begin
        v16191_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_0_0_0_ce1_local = 1'b1;
    end else begin
        v16191_0_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_0_0_1_address0_local = zext_ln10819_1_fu_1817_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_0_0_1_address0_local = zext_ln10817_fu_1851_p1;
        end else begin
            v16191_0_0_1_address0_local = 'bx;
        end
    end else begin
        v16191_0_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_0_0_1_address1_local = zext_ln10823_fu_1601_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_0_0_1_address1_local = zext_ln10821_2_fu_1660_p1;
        end else begin
            v16191_0_0_1_address1_local = 'bx;
        end
    end else begin
        v16191_0_0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_0_0_1_ce0_local = 1'b1;
    end else begin
        v16191_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_0_0_1_ce1_local = 1'b1;
    end else begin
        v16191_0_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_0_1_0_address0_local = zext_ln10819_1_fu_1817_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_0_1_0_address0_local = zext_ln10817_fu_1851_p1;
        end else begin
            v16191_0_1_0_address0_local = 'bx;
        end
    end else begin
        v16191_0_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_0_1_0_address1_local = zext_ln10823_fu_1601_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_0_1_0_address1_local = zext_ln10821_2_fu_1660_p1;
        end else begin
            v16191_0_1_0_address1_local = 'bx;
        end
    end else begin
        v16191_0_1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_0_1_0_ce0_local = 1'b1;
    end else begin
        v16191_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_0_1_0_ce1_local = 1'b1;
    end else begin
        v16191_0_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_0_1_1_address0_local = zext_ln10819_1_fu_1817_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_0_1_1_address0_local = zext_ln10817_fu_1851_p1;
        end else begin
            v16191_0_1_1_address0_local = 'bx;
        end
    end else begin
        v16191_0_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_0_1_1_address1_local = zext_ln10823_fu_1601_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_0_1_1_address1_local = zext_ln10821_2_fu_1660_p1;
        end else begin
            v16191_0_1_1_address1_local = 'bx;
        end
    end else begin
        v16191_0_1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_0_1_1_ce0_local = 1'b1;
    end else begin
        v16191_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_0_1_1_ce1_local = 1'b1;
    end else begin
        v16191_0_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_1_0_0_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_1_0_0_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_1_0_0_address0_local = 'bx;
        end
    end else begin
        v16191_1_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_1_0_0_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_1_0_0_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_1_0_0_address1_local = 'bx;
        end
    end else begin
        v16191_1_0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_1_0_0_ce0_local = 1'b1;
    end else begin
        v16191_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_1_0_0_ce1_local = 1'b1;
    end else begin
        v16191_1_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_1_0_1_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_1_0_1_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_1_0_1_address0_local = 'bx;
        end
    end else begin
        v16191_1_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_1_0_1_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_1_0_1_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_1_0_1_address1_local = 'bx;
        end
    end else begin
        v16191_1_0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_1_0_1_ce0_local = 1'b1;
    end else begin
        v16191_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_1_0_1_ce1_local = 1'b1;
    end else begin
        v16191_1_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_1_1_0_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_1_1_0_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_1_1_0_address0_local = 'bx;
        end
    end else begin
        v16191_1_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_1_1_0_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_1_1_0_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_1_1_0_address1_local = 'bx;
        end
    end else begin
        v16191_1_1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_1_1_0_ce0_local = 1'b1;
    end else begin
        v16191_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_1_1_0_ce1_local = 1'b1;
    end else begin
        v16191_1_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_1_1_1_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_1_1_1_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_1_1_1_address0_local = 'bx;
        end
    end else begin
        v16191_1_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_1_1_1_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_1_1_1_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_1_1_1_address1_local = 'bx;
        end
    end else begin
        v16191_1_1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_1_1_1_ce0_local = 1'b1;
    end else begin
        v16191_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_1_1_1_ce1_local = 1'b1;
    end else begin
        v16191_1_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_2_0_0_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_2_0_0_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_2_0_0_address0_local = 'bx;
        end
    end else begin
        v16191_2_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_2_0_0_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_2_0_0_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_2_0_0_address1_local = 'bx;
        end
    end else begin
        v16191_2_0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_2_0_0_ce0_local = 1'b1;
    end else begin
        v16191_2_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_2_0_0_ce1_local = 1'b1;
    end else begin
        v16191_2_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_2_0_1_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_2_0_1_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_2_0_1_address0_local = 'bx;
        end
    end else begin
        v16191_2_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_2_0_1_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_2_0_1_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_2_0_1_address1_local = 'bx;
        end
    end else begin
        v16191_2_0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_2_0_1_ce0_local = 1'b1;
    end else begin
        v16191_2_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_2_0_1_ce1_local = 1'b1;
    end else begin
        v16191_2_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_2_1_0_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_2_1_0_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_2_1_0_address0_local = 'bx;
        end
    end else begin
        v16191_2_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_2_1_0_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_2_1_0_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_2_1_0_address1_local = 'bx;
        end
    end else begin
        v16191_2_1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_2_1_0_ce0_local = 1'b1;
    end else begin
        v16191_2_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_2_1_0_ce1_local = 1'b1;
    end else begin
        v16191_2_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_2_1_1_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_2_1_1_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_2_1_1_address0_local = 'bx;
        end
    end else begin
        v16191_2_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_2_1_1_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_2_1_1_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_2_1_1_address1_local = 'bx;
        end
    end else begin
        v16191_2_1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_2_1_1_ce0_local = 1'b1;
    end else begin
        v16191_2_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_2_1_1_ce1_local = 1'b1;
    end else begin
        v16191_2_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_3_0_0_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_3_0_0_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_3_0_0_address0_local = 'bx;
        end
    end else begin
        v16191_3_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_3_0_0_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_3_0_0_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_3_0_0_address1_local = 'bx;
        end
    end else begin
        v16191_3_0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_3_0_0_ce0_local = 1'b1;
    end else begin
        v16191_3_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_3_0_0_ce1_local = 1'b1;
    end else begin
        v16191_3_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1455)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_3_0_1_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_3_0_1_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_3_0_1_address0_local = 'bx;
        end
    end else begin
        v16191_3_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1458)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_3_0_1_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_3_0_1_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_3_0_1_address1_local = 'bx;
        end
    end else begin
        v16191_3_0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_3_0_1_ce0_local = 1'b1;
    end else begin
        v16191_3_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_3_0_1_ce1_local = 1'b1;
    end else begin
        v16191_3_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_3_1_0_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_3_1_0_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_3_1_0_address0_local = 'bx;
        end
    end else begin
        v16191_3_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_3_1_0_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_3_1_0_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_3_1_0_address1_local = 'bx;
        end
    end else begin
        v16191_3_1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_3_1_0_ce0_local = 1'b1;
    end else begin
        v16191_3_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_3_1_0_ce1_local = 1'b1;
    end else begin
        v16191_3_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1461)) begin
        if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1)) begin
            v16191_3_1_1_address0_local = zext_ln10827_fu_1830_p1;
        end else if ((trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0)) begin
            v16191_3_1_1_address0_local = zext_ln10825_2_fu_1864_p1;
        end else begin
            v16191_3_1_1_address0_local = 'bx;
        end
    end else begin
        v16191_3_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1464)) begin
        if ((trunc_ln10816_reg_2330 == 1'd1)) begin
            v16191_3_1_1_address1_local = zext_ln10831_fu_1615_p1;
        end else if ((trunc_ln10816_reg_2330 == 1'd0)) begin
            v16191_3_1_1_address1_local = zext_ln10829_1_fu_1674_p1;
        end else begin
            v16191_3_1_1_address1_local = 'bx;
        end
    end else begin
        v16191_3_1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd1) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330_pp0_iter1_reg == 1'd0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v16191_3_1_1_ce0_local = 1'b1;
    end else begin
        v16191_3_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd1) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln10816_reg_2330 == 1'd0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v16191_3_1_1_ce1_local = 1'b1;
    end else begin
        v16191_3_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_10_ce0_local = 1'b1;
    end else begin
        v8675_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_10_we0_local = 1'b1;
    end else begin
        v8675_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_11_ce0_local = 1'b1;
    end else begin
        v8675_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_11_we0_local = 1'b1;
    end else begin
        v8675_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_12_ce0_local = 1'b1;
    end else begin
        v8675_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_12_we0_local = 1'b1;
    end else begin
        v8675_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_13_ce0_local = 1'b1;
    end else begin
        v8675_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_13_we0_local = 1'b1;
    end else begin
        v8675_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_14_ce0_local = 1'b1;
    end else begin
        v8675_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_14_we0_local = 1'b1;
    end else begin
        v8675_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_15_ce0_local = 1'b1;
    end else begin
        v8675_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_15_we0_local = 1'b1;
    end else begin
        v8675_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_1_ce0_local = 1'b1;
    end else begin
        v8675_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_1_we0_local = 1'b1;
    end else begin
        v8675_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_2_ce0_local = 1'b1;
    end else begin
        v8675_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_2_we0_local = 1'b1;
    end else begin
        v8675_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_3_ce0_local = 1'b1;
    end else begin
        v8675_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_3_we0_local = 1'b1;
    end else begin
        v8675_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_4_ce0_local = 1'b1;
    end else begin
        v8675_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_4_we0_local = 1'b1;
    end else begin
        v8675_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_5_ce0_local = 1'b1;
    end else begin
        v8675_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_5_we0_local = 1'b1;
    end else begin
        v8675_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_6_ce0_local = 1'b1;
    end else begin
        v8675_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_6_we0_local = 1'b1;
    end else begin
        v8675_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_7_ce0_local = 1'b1;
    end else begin
        v8675_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8675_7_we0_local = 1'b1;
    end else begin
        v8675_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_8_ce0_local = 1'b1;
    end else begin
        v8675_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_8_we0_local = 1'b1;
    end else begin
        v8675_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_9_ce0_local = 1'b1;
    end else begin
        v8675_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_9_we0_local = 1'b1;
    end else begin
        v8675_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_ce0_local = 1'b1;
    end else begin
        v8675_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8675_we0_local = 1'b1;
    end else begin
        v8675_we0_local = 1'b0;
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
assign add_ln10812_1_fu_1434_p2 = (ap_sig_allocacmp_indvar_flatten12480_load + 9'd1);
assign add_ln10812_fu_1186_p2 = (ap_sig_allocacmp_v8617481_load + 6'd4);
assign add_ln10813_1_fu_1420_p2 = (ap_sig_allocacmp_indvar_flatten482_load + 6'd1);
assign add_ln10813_fu_1220_p2 = (select_ln10812_fu_1192_p3 + 4'd2);
assign add_ln10816_1_fu_1394_p2 = (add_ln10816_fu_1388_p2 + p_cast2_fu_1122_p1);
assign add_ln10816_2_fu_1634_p2 = ($signed(zext_ln10816_fu_1631_p1) + $signed(6'd63));
assign add_ln10816_fu_1388_p2 = (zext_ln10870_5_cast_cast_cast_cast_fu_1130_p1 + zext_ln10814_fu_1374_p1);
assign add_ln10817_1_fu_1846_p2 = ($signed(sub_ln10825_1_fu_1749_p2) + $signed(sext_ln10817_1_reg_2482));
assign add_ln10817_fu_1719_p2 = (mul_ln10817_cast_fu_1690_p1 + zext_ln10817_2_fu_1715_p1);
assign add_ln10819_fu_1812_p2 = (sub_ln10825_1_fu_1749_p2 + zext_ln10819_reg_2396);
assign add_ln10821_1_fu_1654_p2 = ($signed(sub_ln10821_fu_1536_p2) + $signed(sext_ln10817_1_fu_1650_p1));
assign add_ln10821_fu_1511_p2 = (sub_ln10817_reg_2273 + zext_ln10821_fu_1508_p1);
assign add_ln10823_fu_1595_p2 = (sub_ln10821_fu_1536_p2 + zext_ln10819_fu_1592_p1);
assign add_ln10825_1_fu_1859_p2 = ($signed(sub_ln10814_fu_1785_p2) + $signed(sext_ln10817_1_reg_2482));
assign add_ln10825_fu_1755_p2 = (zext_ln10813_fu_1693_p1 + zext_ln10817_2_fu_1715_p1);
assign add_ln10827_fu_1825_p2 = (sub_ln10814_fu_1785_p2 + zext_ln10819_reg_2396);
assign add_ln10829_1_fu_1668_p2 = ($signed(sub_ln10829_fu_1567_p2) + $signed(sext_ln10817_1_fu_1650_p1));
assign add_ln10829_fu_1542_p2 = (sub_ln10825_reg_2279 + zext_ln10821_fu_1508_p1);
assign add_ln10831_fu_1609_p2 = (sub_ln10829_fu_1567_p2 + zext_ln10819_fu_1592_p1);
assign add_ln10847_1_fu_1794_p2 = (sub_ln10847_1_fu_1706_p2 + zext_ln10847_3_fu_1791_p1);
assign add_ln10847_fu_1502_p2 = (sub_ln10847_fu_1493_p2 + zext_ln10847_1_fu_1499_p1);
assign and_ln10812_fu_1206_p2 = (xor_ln10812_fu_1200_p2 & ap_phi_mux_icmp_ln10814485_phi_fu_1115_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1452 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln10812_reg_2381 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1455 = ((1'b0 == ap_block_pp0_stage0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1));
end
always @ (*) begin
    ap_condition_1458 = ((1'b0 == ap_block_pp0_stage0) & (empty_496_reg_2295 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1461 = ((1'b0 == ap_block_pp0_stage0) & (empty_496_reg_2295_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end
always @ (*) begin
    ap_condition_1464 = ((1'b0 == ap_block_pp0_stage0) & (empty_496_reg_2295 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_493_fu_1226_p2 = (ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4 | and_ln10812_fu_1206_p2);
assign empty_494_fu_1262_p2 = (mul_i + zext_ln10812_1_fu_1248_p1);
assign empty_495_fu_1354_p2 = (tmp_fu_1348_p2 + select_ln10944_cast_cast_fu_1138_p1);
assign empty_496_fu_1360_p1 = empty_495_fu_1354_p2[0:0];
assign empty_497_fu_1576_p2 = ($signed(p_cast7_i_fu_1573_p1) + $signed(6'd63));
assign icmp_ln10812_fu_1452_p2 = ((ap_sig_allocacmp_indvar_flatten12480_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln10813_fu_1446_p2 = ((select_ln10813_1_fu_1426_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln10814_fu_1440_p2 = ((v8619_fu_1414_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1252_p4 = {{v8617_fu_1212_p3[4:2]}};
assign mul_ln10817_cast_fu_1690_p1 = sub_ln10817_reg_2273_pp0_iter1_reg;
assign p_cast2_fu_1122_p1 = empty;
assign p_cast7_i_fu_1573_p1 = empty_495_reg_2290;
assign p_shl42_fu_1547_p3 = {{add_ln10829_fu_1542_p2}, {4'd0}};
assign p_shl44_fu_1516_p3 = {{add_ln10821_fu_1511_p2}, {4'd0}};
assign p_shl46_fu_1699_p3 = {{add_ln10847_reg_2385}, {3'd0}};
assign p_shl47_fu_1308_p3 = {{tmp_683_fu_1298_p4}, {4'd0}};
assign p_shl49_fu_1268_p4 = {{{tmp_600}, {lshr_ln_fu_1252_p4}}, {4'd0}};
assign p_shl51_fu_1486_p3 = {{lshr_ln_reg_2267}, {3'd0}};
assign select_ln10812_fu_1192_p3 = ((ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v8618483_load);
assign select_ln10813_1_fu_1426_p3 = ((ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4[0:0] == 1'b1) ? 6'd1 : add_ln10813_1_fu_1420_p2);
assign select_ln10817_1_fu_2063_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_0_1_0_q0 : v16191_0_1_1_q0);
assign select_ln10817_2_fu_2070_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10817_fu_2056_p3 : select_ln10817_1_fu_2063_p3);
assign select_ln10817_fu_2056_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_0_0_0_q0 : v16191_0_0_1_q0);
assign select_ln10819_1_fu_2085_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_0_1_1_q0 : v16191_0_1_0_q0);
assign select_ln10819_2_fu_2092_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10819_fu_2078_p3 : select_ln10819_1_fu_2085_p3);
assign select_ln10819_fu_2078_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_0_0_1_q0 : v16191_0_0_0_q0);
assign select_ln10821_1_fu_1887_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_0_1_0_q1 : v16191_0_1_1_q1);
assign select_ln10821_2_fu_1894_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10821_1_fu_1887_p3 : select_ln10821_fu_1880_p3);
assign select_ln10821_fu_1880_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_0_0_0_q1 : v16191_0_0_1_q1);
assign select_ln10823_1_fu_1909_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_0_1_1_q1 : v16191_0_1_0_q1);
assign select_ln10823_2_fu_1916_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10823_1_fu_1909_p3 : select_ln10823_fu_1902_p3);
assign select_ln10823_fu_1902_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_0_0_1_q1 : v16191_0_0_0_q1);
assign select_ln10825_1_fu_2107_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_1_1_0_q0 : v16191_1_1_1_q0);
assign select_ln10825_2_fu_2114_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10825_fu_2100_p3 : select_ln10825_1_fu_2107_p3);
assign select_ln10825_fu_2100_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_1_0_0_q0 : v16191_1_0_1_q0);
assign select_ln10827_1_fu_2129_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_1_1_1_q0 : v16191_1_1_0_q0);
assign select_ln10827_2_fu_2136_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10827_fu_2122_p3 : select_ln10827_1_fu_2129_p3);
assign select_ln10827_fu_2122_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_1_0_1_q0 : v16191_1_0_0_q0);
assign select_ln10829_1_fu_1931_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_1_1_0_q1 : v16191_1_1_1_q1);
assign select_ln10829_2_fu_1938_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10829_1_fu_1931_p3 : select_ln10829_fu_1924_p3);
assign select_ln10829_fu_1924_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_1_0_0_q1 : v16191_1_0_1_q1);
assign select_ln10831_1_fu_1953_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_1_1_1_q1 : v16191_1_1_0_q1);
assign select_ln10831_2_fu_1960_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10831_1_fu_1953_p3 : select_ln10831_fu_1946_p3);
assign select_ln10831_fu_1946_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_1_0_1_q1 : v16191_1_0_0_q1);
assign select_ln10833_1_fu_2151_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_2_1_0_q0 : v16191_2_1_1_q0);
assign select_ln10833_2_fu_2158_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10833_fu_2144_p3 : select_ln10833_1_fu_2151_p3);
assign select_ln10833_fu_2144_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_2_0_0_q0 : v16191_2_0_1_q0);
assign select_ln10835_1_fu_2173_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_2_1_1_q0 : v16191_2_1_0_q0);
assign select_ln10835_2_fu_2180_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10835_fu_2166_p3 : select_ln10835_1_fu_2173_p3);
assign select_ln10835_fu_2166_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_2_0_1_q0 : v16191_2_0_0_q0);
assign select_ln10837_1_fu_1975_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_2_1_0_q1 : v16191_2_1_1_q1);
assign select_ln10837_2_fu_1982_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10837_1_fu_1975_p3 : select_ln10837_fu_1968_p3);
assign select_ln10837_fu_1968_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_2_0_0_q1 : v16191_2_0_1_q1);
assign select_ln10839_1_fu_1997_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_2_1_1_q1 : v16191_2_1_0_q1);
assign select_ln10839_2_fu_2004_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10839_1_fu_1997_p3 : select_ln10839_fu_1990_p3);
assign select_ln10839_fu_1990_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_2_0_1_q1 : v16191_2_0_0_q1);
assign select_ln10841_1_fu_2195_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_3_1_0_q0 : v16191_3_1_1_q0);
assign select_ln10841_2_fu_2202_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10841_fu_2188_p3 : select_ln10841_1_fu_2195_p3);
assign select_ln10841_fu_2188_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_3_0_0_q0 : v16191_3_0_1_q0);
assign select_ln10843_1_fu_2217_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_3_1_1_q0 : v16191_3_1_0_q0);
assign select_ln10843_2_fu_2224_p3 = ((empty_496_reg_2295_pp0_iter2_reg[0:0] == 1'b1) ? select_ln10843_fu_2210_p3 : select_ln10843_1_fu_2217_p3);
assign select_ln10843_fu_2210_p3 = ((trunc_ln10816_reg_2330_pp0_iter2_reg[0:0] == 1'b1) ? v16191_3_0_1_q0 : v16191_3_0_0_q0);
assign select_ln10845_1_fu_2019_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_3_1_0_q1 : v16191_3_1_1_q1);
assign select_ln10845_2_fu_2026_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10845_1_fu_2019_p3 : select_ln10845_fu_2012_p3);
assign select_ln10845_fu_2012_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_3_0_0_q1 : v16191_3_0_1_q1);
assign select_ln10847_1_fu_2041_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_3_1_1_q1 : v16191_3_1_0_q1);
assign select_ln10847_2_fu_2048_p3 = ((empty_496_reg_2295_pp0_iter1_reg[0:0] == 1'b1) ? select_ln10847_1_fu_2041_p3 : select_ln10847_fu_2034_p3);
assign select_ln10847_fu_2034_p3 = ((trunc_ln10816_reg_2330_pp0_iter1_reg[0:0] == 1'b1) ? v16191_3_0_1_q1 : v16191_3_0_0_q1);
assign select_ln10944_cast_cast_fu_1138_p1 = $unsigned(select_ln10944_cast_fu_1134_p1);
assign select_ln10944_cast_fu_1134_p1 = $signed(select_ln10944);
assign sext_ln10817_1_fu_1650_p1 = $signed(trunc_ln_fu_1640_p4);
assign sext_ln10817_fu_1712_p1 = $signed(p_cast_reg_2391);
assign sub_ln10814_fu_1785_p2 = (tmp_690_fu_1773_p3 - zext_ln10825_1_fu_1781_p1);
assign sub_ln10817_fu_1292_p2 = (p_shl49_fu_1268_p4 - zext_ln10817_1_fu_1288_p1);
assign sub_ln10821_fu_1536_p2 = (p_shl44_fu_1516_p3 - zext_ln10821_1_fu_1532_p1);
assign sub_ln10825_1_fu_1749_p2 = (tmp_688_fu_1737_p3 - zext_ln10817_3_fu_1745_p1);
assign sub_ln10825_fu_1328_p2 = (p_shl47_fu_1308_p3 - zext_ln10825_fu_1324_p1);
assign sub_ln10829_fu_1567_p2 = (p_shl42_fu_1547_p3 - zext_ln10829_fu_1563_p1);
assign sub_ln10847_1_fu_1706_p2 = (p_shl46_fu_1699_p3 - zext_ln10847_2_fu_1696_p1);
assign sub_ln10847_fu_1493_p2 = (p_shl51_fu_1486_p3 - zext_ln10847_fu_1483_p1);
assign tmp_682_fu_1278_p4 = {{{tmp_600}, {lshr_ln_fu_1252_p4}}, {1'd0}};
assign tmp_683_fu_1298_p4 = {{empty_494_fu_1262_p2[6:2]}};
assign tmp_684_fu_1316_p3 = {{tmp_683_fu_1298_p4}, {1'd0}};
assign tmp_685_fu_1524_p3 = {{add_ln10821_fu_1511_p2}, {1'd0}};
assign tmp_686_fu_1555_p3 = {{add_ln10829_fu_1542_p2}, {1'd0}};
assign tmp_687_fu_1729_p3 = {{add_ln10817_fu_1719_p2}, {1'd0}};
assign tmp_688_fu_1737_p3 = {{trunc_ln10817_fu_1725_p1}, {4'd0}};
assign tmp_689_fu_1765_p3 = {{add_ln10825_fu_1755_p2}, {1'd0}};
assign tmp_690_fu_1773_p3 = {{trunc_ln10825_fu_1761_p1}, {4'd0}};
assign tmp_fu_1348_p2 = (zext_ln10812_cast_fu_1142_p1 + zext_ln10813_1_fu_1334_p1);
assign trunc_ln10816_fu_1400_p1 = add_ln10816_1_fu_1394_p2[0:0];
assign trunc_ln10817_fu_1725_p1 = add_ln10817_fu_1719_p2[8:0];
assign trunc_ln10825_fu_1761_p1 = add_ln10825_fu_1755_p2[8:0];
assign trunc_ln_fu_1640_p4 = {{add_ln10816_2_fu_1634_p2[5:1]}};
assign v16191_0_0_0_address0 = v16191_0_0_0_address0_local;
assign v16191_0_0_0_address1 = v16191_0_0_0_address1_local;
assign v16191_0_0_0_ce0 = v16191_0_0_0_ce0_local;
assign v16191_0_0_0_ce1 = v16191_0_0_0_ce1_local;
assign v16191_0_0_1_address0 = v16191_0_0_1_address0_local;
assign v16191_0_0_1_address1 = v16191_0_0_1_address1_local;
assign v16191_0_0_1_ce0 = v16191_0_0_1_ce0_local;
assign v16191_0_0_1_ce1 = v16191_0_0_1_ce1_local;
assign v16191_0_1_0_address0 = v16191_0_1_0_address0_local;
assign v16191_0_1_0_address1 = v16191_0_1_0_address1_local;
assign v16191_0_1_0_ce0 = v16191_0_1_0_ce0_local;
assign v16191_0_1_0_ce1 = v16191_0_1_0_ce1_local;
assign v16191_0_1_1_address0 = v16191_0_1_1_address0_local;
assign v16191_0_1_1_address1 = v16191_0_1_1_address1_local;
assign v16191_0_1_1_ce0 = v16191_0_1_1_ce0_local;
assign v16191_0_1_1_ce1 = v16191_0_1_1_ce1_local;
assign v16191_1_0_0_address0 = v16191_1_0_0_address0_local;
assign v16191_1_0_0_address1 = v16191_1_0_0_address1_local;
assign v16191_1_0_0_ce0 = v16191_1_0_0_ce0_local;
assign v16191_1_0_0_ce1 = v16191_1_0_0_ce1_local;
assign v16191_1_0_1_address0 = v16191_1_0_1_address0_local;
assign v16191_1_0_1_address1 = v16191_1_0_1_address1_local;
assign v16191_1_0_1_ce0 = v16191_1_0_1_ce0_local;
assign v16191_1_0_1_ce1 = v16191_1_0_1_ce1_local;
assign v16191_1_1_0_address0 = v16191_1_1_0_address0_local;
assign v16191_1_1_0_address1 = v16191_1_1_0_address1_local;
assign v16191_1_1_0_ce0 = v16191_1_1_0_ce0_local;
assign v16191_1_1_0_ce1 = v16191_1_1_0_ce1_local;
assign v16191_1_1_1_address0 = v16191_1_1_1_address0_local;
assign v16191_1_1_1_address1 = v16191_1_1_1_address1_local;
assign v16191_1_1_1_ce0 = v16191_1_1_1_ce0_local;
assign v16191_1_1_1_ce1 = v16191_1_1_1_ce1_local;
assign v16191_2_0_0_address0 = v16191_2_0_0_address0_local;
assign v16191_2_0_0_address1 = v16191_2_0_0_address1_local;
assign v16191_2_0_0_ce0 = v16191_2_0_0_ce0_local;
assign v16191_2_0_0_ce1 = v16191_2_0_0_ce1_local;
assign v16191_2_0_1_address0 = v16191_2_0_1_address0_local;
assign v16191_2_0_1_address1 = v16191_2_0_1_address1_local;
assign v16191_2_0_1_ce0 = v16191_2_0_1_ce0_local;
assign v16191_2_0_1_ce1 = v16191_2_0_1_ce1_local;
assign v16191_2_1_0_address0 = v16191_2_1_0_address0_local;
assign v16191_2_1_0_address1 = v16191_2_1_0_address1_local;
assign v16191_2_1_0_ce0 = v16191_2_1_0_ce0_local;
assign v16191_2_1_0_ce1 = v16191_2_1_0_ce1_local;
assign v16191_2_1_1_address0 = v16191_2_1_1_address0_local;
assign v16191_2_1_1_address1 = v16191_2_1_1_address1_local;
assign v16191_2_1_1_ce0 = v16191_2_1_1_ce0_local;
assign v16191_2_1_1_ce1 = v16191_2_1_1_ce1_local;
assign v16191_3_0_0_address0 = v16191_3_0_0_address0_local;
assign v16191_3_0_0_address1 = v16191_3_0_0_address1_local;
assign v16191_3_0_0_ce0 = v16191_3_0_0_ce0_local;
assign v16191_3_0_0_ce1 = v16191_3_0_0_ce1_local;
assign v16191_3_0_1_address0 = v16191_3_0_1_address0_local;
assign v16191_3_0_1_address1 = v16191_3_0_1_address1_local;
assign v16191_3_0_1_ce0 = v16191_3_0_1_ce0_local;
assign v16191_3_0_1_ce1 = v16191_3_0_1_ce1_local;
assign v16191_3_1_0_address0 = v16191_3_1_0_address0_local;
assign v16191_3_1_0_address1 = v16191_3_1_0_address1_local;
assign v16191_3_1_0_ce0 = v16191_3_1_0_ce0_local;
assign v16191_3_1_0_ce1 = v16191_3_1_0_ce1_local;
assign v16191_3_1_1_address0 = v16191_3_1_1_address0_local;
assign v16191_3_1_1_address1 = v16191_3_1_1_address1_local;
assign v16191_3_1_1_ce0 = v16191_3_1_1_ce0_local;
assign v16191_3_1_1_ce1 = v16191_3_1_1_ce1_local;
assign v8617_fu_1212_p3 = ((ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4[0:0] == 1'b1) ? add_ln10812_fu_1186_p2 : ap_sig_allocacmp_v8617481_load);
assign v8618_fu_1240_p3 = ((and_ln10812_fu_1206_p2[0:0] == 1'b1) ? add_ln10813_fu_1220_p2 : select_ln10812_fu_1192_p3);
assign v8619_fu_1414_p2 = (v8619_mid2_fu_1232_p3 + 4'd2);
assign v8619_mid2_fu_1232_p3 = ((empty_493_fu_1226_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v8619484_load);
assign v8675_10_address0 = zext_ln10847_4_reg_2568;
assign v8675_10_ce0 = v8675_10_ce0_local;
assign v8675_10_d0 = select_ln10827_2_fu_2136_p3;
assign v8675_10_we0 = v8675_10_we0_local;
assign v8675_11_address0 = zext_ln10847_4_reg_2568;
assign v8675_11_ce0 = v8675_11_ce0_local;
assign v8675_11_d0 = select_ln10825_2_fu_2114_p3;
assign v8675_11_we0 = v8675_11_we0_local;
assign v8675_12_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_12_ce0 = v8675_12_ce0_local;
assign v8675_12_d0 = select_ln10823_2_fu_1916_p3;
assign v8675_12_we0 = v8675_12_we0_local;
assign v8675_13_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_13_ce0 = v8675_13_ce0_local;
assign v8675_13_d0 = select_ln10821_2_fu_1894_p3;
assign v8675_13_we0 = v8675_13_we0_local;
assign v8675_14_address0 = zext_ln10847_4_reg_2568;
assign v8675_14_ce0 = v8675_14_ce0_local;
assign v8675_14_d0 = select_ln10819_2_fu_2092_p3;
assign v8675_14_we0 = v8675_14_we0_local;
assign v8675_15_address0 = zext_ln10847_4_reg_2568;
assign v8675_15_ce0 = v8675_15_ce0_local;
assign v8675_15_d0 = select_ln10817_2_fu_2070_p3;
assign v8675_15_we0 = v8675_15_we0_local;
assign v8675_1_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_1_ce0 = v8675_1_ce0_local;
assign v8675_1_d0 = select_ln10845_2_fu_2026_p3;
assign v8675_1_we0 = v8675_1_we0_local;
assign v8675_2_address0 = zext_ln10847_4_reg_2568;
assign v8675_2_ce0 = v8675_2_ce0_local;
assign v8675_2_d0 = select_ln10843_2_fu_2224_p3;
assign v8675_2_we0 = v8675_2_we0_local;
assign v8675_3_address0 = zext_ln10847_4_reg_2568;
assign v8675_3_ce0 = v8675_3_ce0_local;
assign v8675_3_d0 = select_ln10841_2_fu_2202_p3;
assign v8675_3_we0 = v8675_3_we0_local;
assign v8675_4_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_4_ce0 = v8675_4_ce0_local;
assign v8675_4_d0 = select_ln10839_2_fu_2004_p3;
assign v8675_4_we0 = v8675_4_we0_local;
assign v8675_5_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_5_ce0 = v8675_5_ce0_local;
assign v8675_5_d0 = select_ln10837_2_fu_1982_p3;
assign v8675_5_we0 = v8675_5_we0_local;
assign v8675_6_address0 = zext_ln10847_4_reg_2568;
assign v8675_6_ce0 = v8675_6_ce0_local;
assign v8675_6_d0 = select_ln10835_2_fu_2180_p3;
assign v8675_6_we0 = v8675_6_we0_local;
assign v8675_7_address0 = zext_ln10847_4_reg_2568;
assign v8675_7_ce0 = v8675_7_ce0_local;
assign v8675_7_d0 = select_ln10833_2_fu_2158_p3;
assign v8675_7_we0 = v8675_7_we0_local;
assign v8675_8_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_8_ce0 = v8675_8_ce0_local;
assign v8675_8_d0 = select_ln10831_2_fu_1960_p3;
assign v8675_8_we0 = v8675_8_we0_local;
assign v8675_9_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_9_ce0 = v8675_9_ce0_local;
assign v8675_9_d0 = select_ln10829_2_fu_1938_p3;
assign v8675_9_we0 = v8675_9_we0_local;
assign v8675_address0 = zext_ln10847_4_fu_1800_p1;
assign v8675_ce0 = v8675_ce0_local;
assign v8675_d0 = select_ln10847_2_fu_2048_p3;
assign v8675_we0 = v8675_we0_local;
assign xor_ln10812_fu_1200_p2 = (ap_phi_mux_icmp_ln10813486_phi_fu_1105_p4 ^ 1'd1);
assign zext_ln10812_1_fu_1248_p1 = v8617_fu_1212_p3;
assign zext_ln10812_cast_fu_1142_p1 = zext_ln10812;
assign zext_ln10813_1_fu_1334_p1 = v8618_fu_1240_p3;
assign zext_ln10813_fu_1693_p1 = sub_ln10825_reg_2279_pp0_iter1_reg;
assign zext_ln10814_fu_1374_p1 = v8619_mid2_fu_1232_p3;
assign zext_ln10816_fu_1631_p1 = add_ln10816_1_reg_2325;
assign zext_ln10817_1_fu_1288_p1 = tmp_682_fu_1278_p4;
assign zext_ln10817_2_fu_1715_p1 = $unsigned(sext_ln10817_fu_1712_p1);
assign zext_ln10817_3_fu_1745_p1 = tmp_687_fu_1729_p3;
assign zext_ln10817_fu_1851_p1 = add_ln10817_1_fu_1846_p2;
assign zext_ln10819_1_fu_1817_p1 = add_ln10819_fu_1812_p2;
assign zext_ln10819_fu_1592_p1 = lshr_ln87_reg_2366;
assign zext_ln10821_1_fu_1532_p1 = tmp_685_fu_1524_p3;
assign zext_ln10821_2_fu_1660_p1 = add_ln10821_1_fu_1654_p2;
assign zext_ln10821_fu_1508_p1 = tmp_s_reg_2315;
assign zext_ln10823_fu_1601_p1 = add_ln10823_fu_1595_p2;
assign zext_ln10825_1_fu_1781_p1 = tmp_689_fu_1765_p3;
assign zext_ln10825_2_fu_1864_p1 = add_ln10825_1_fu_1859_p2;
assign zext_ln10825_fu_1324_p1 = tmp_684_fu_1316_p3;
assign zext_ln10827_fu_1830_p1 = add_ln10827_fu_1825_p2;
assign zext_ln10829_1_fu_1674_p1 = add_ln10829_1_fu_1668_p2;
assign zext_ln10829_fu_1563_p1 = tmp_686_fu_1555_p3;
assign zext_ln10831_fu_1615_p1 = add_ln10831_fu_1609_p2;
assign zext_ln10847_1_fu_1499_p1 = lshr_ln85_reg_2285;
assign zext_ln10847_2_fu_1696_p1 = add_ln10847_reg_2385;
assign zext_ln10847_3_fu_1791_p1 = lshr_ln86_reg_2320_pp0_iter1_reg;
assign zext_ln10847_4_fu_1800_p1 = add_ln10847_1_fu_1794_p2;
assign zext_ln10847_fu_1483_p1 = lshr_ln_reg_2267;
assign zext_ln10870_5_cast_cast_cast_cast_fu_1130_p1 = $unsigned(zext_ln10870_5_cast_cast_cast_fu_1126_p1);
assign zext_ln10870_5_cast_cast_cast_fu_1126_p1 = $signed(zext_ln10870_5_cast_cast);
always @ (posedge ap_clk) begin
    sub_ln10817_reg_2273[0] <= 1'b0;
    sub_ln10817_reg_2273_pp0_iter1_reg[0] <= 1'b0;
    sub_ln10825_reg_2279[0] <= 1'b0;
    sub_ln10825_reg_2279_pp0_iter1_reg[0] <= 1'b0;
    zext_ln10819_reg_2396[12:4] <= 9'b000000000;
    zext_ln10847_4_reg_2568[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 