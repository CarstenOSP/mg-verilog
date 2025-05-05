module forward_dataflow_in_loop_VITIS_LOOP_8135_1_Loop_VITIS_LOOP_7886_1_proc112_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,v6398_address0,v6398_ce0,v6398_we0,v6398_d0,v6398_1_address0,v6398_1_ce0,v6398_1_we0,v6398_1_d0,v6398_2_address0,v6398_2_ce0,v6398_2_we0,v6398_2_d0,v6398_3_address0,v6398_3_ce0,v6398_3_we0,v6398_3_d0,v6398_4_address0,v6398_4_ce0,v6398_4_we0,v6398_4_d0,v6398_5_address0,v6398_5_ce0,v6398_5_we0,v6398_5_d0,v6398_6_address0,v6398_6_ce0,v6398_6_we0,v6398_6_d0,v6398_7_address0,v6398_7_ce0,v6398_7_we0,v6398_7_d0,v6398_8_address0,v6398_8_ce0,v6398_8_we0,v6398_8_d0,v6398_9_address0,v6398_9_ce0,v6398_9_we0,v6398_9_d0,v6398_10_address0,v6398_10_ce0,v6398_10_we0,v6398_10_d0,v6398_11_address0,v6398_11_ce0,v6398_11_we0,v6398_11_d0,v6398_12_address0,v6398_12_ce0,v6398_12_we0,v6398_12_d0,v6398_13_address0,v6398_13_ce0,v6398_13_we0,v6398_13_d0,v6398_14_address0,v6398_14_ce0,v6398_14_we0,v6398_14_d0,v6398_15_address0,v6398_15_ce0,v6398_15_we0,v6398_15_d0,v6398_16_address0,v6398_16_ce0,v6398_16_we0,v6398_16_d0,v6398_17_address0,v6398_17_ce0,v6398_17_we0,v6398_17_d0,v6398_18_address0,v6398_18_ce0,v6398_18_we0,v6398_18_d0,v6398_19_address0,v6398_19_ce0,v6398_19_we0,v6398_19_d0,v6398_20_address0,v6398_20_ce0,v6398_20_we0,v6398_20_d0,v6398_21_address0,v6398_21_ce0,v6398_21_we0,v6398_21_d0,v6398_22_address0,v6398_22_ce0,v6398_22_we0,v6398_22_d0,v6398_23_address0,v6398_23_ce0,v6398_23_we0,v6398_23_d0,v6398_24_address0,v6398_24_ce0,v6398_24_we0,v6398_24_d0,v6398_25_address0,v6398_25_ce0,v6398_25_we0,v6398_25_d0,v6398_26_address0,v6398_26_ce0,v6398_26_we0,v6398_26_d0,v6398_27_address0,v6398_27_ce0,v6398_27_we0,v6398_27_d0,v6398_28_address0,v6398_28_ce0,v6398_28_we0,v6398_28_d0,v6398_29_address0,v6398_29_ce0,v6398_29_we0,v6398_29_d0,v6398_30_address0,v6398_30_ce0,v6398_30_we0,v6398_30_d0,v6398_31_address0,v6398_31_ce0,v6398_31_we0,v6398_31_d0,mul_i3,p_udiv34_cast,tmp,zext_ln7976_1,zext_ln7976,v16153_0_0_address0,v16153_0_0_ce0,v16153_0_0_q0,v16153_1_0_address0,v16153_1_0_ce0,v16153_1_0_q0,v16153_2_0_address0,v16153_2_0_ce0,v16153_2_0_q0,v16153_3_0_address0,v16153_3_0_ce0,v16153_3_0_q0,v16153_4_0_address0,v16153_4_0_ce0,v16153_4_0_q0,v16153_5_0_address0,v16153_5_0_ce0,v16153_5_0_q0,v16153_6_0_address0,v16153_6_0_ce0,v16153_6_0_q0,v16153_7_0_address0,v16153_7_0_ce0,v16153_7_0_q0,v16153_0_1_address0,v16153_0_1_ce0,v16153_0_1_q0,v16153_0_2_address0,v16153_0_2_ce0,v16153_0_2_q0,v16153_0_3_address0,v16153_0_3_ce0,v16153_0_3_q0,v16153_1_1_address0,v16153_1_1_ce0,v16153_1_1_q0,v16153_1_2_address0,v16153_1_2_ce0,v16153_1_2_q0,v16153_1_3_address0,v16153_1_3_ce0,v16153_1_3_q0,v16153_2_1_address0,v16153_2_1_ce0,v16153_2_1_q0,v16153_2_2_address0,v16153_2_2_ce0,v16153_2_2_q0,v16153_2_3_address0,v16153_2_3_ce0,v16153_2_3_q0,v16153_3_1_address0,v16153_3_1_ce0,v16153_3_1_q0,v16153_3_2_address0,v16153_3_2_ce0,v16153_3_2_q0,v16153_3_3_address0,v16153_3_3_ce0,v16153_3_3_q0,v16153_4_1_address0,v16153_4_1_ce0,v16153_4_1_q0,v16153_4_2_address0,v16153_4_2_ce0,v16153_4_2_q0,v16153_4_3_address0,v16153_4_3_ce0,v16153_4_3_q0,v16153_5_1_address0,v16153_5_1_ce0,v16153_5_1_q0,v16153_5_2_address0,v16153_5_2_ce0,v16153_5_2_q0,v16153_5_3_address0,v16153_5_3_ce0,v16153_5_3_q0,v16153_6_1_address0,v16153_6_1_ce0,v16153_6_1_q0,v16153_6_2_address0,v16153_6_2_ce0,v16153_6_2_q0,v16153_6_3_address0,v16153_6_3_ce0,v16153_6_3_q0,v16153_7_1_address0,v16153_7_1_ce0,v16153_7_1_q0,v16153_7_2_address0,v16153_7_2_ce0,v16153_7_2_q0,v16153_7_3_address0,v16153_7_3_ce0,v16153_7_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
output  [4:0] v6398_address0;
output   v6398_ce0;
output   v6398_we0;
output  [7:0] v6398_d0;
output  [4:0] v6398_1_address0;
output   v6398_1_ce0;
output   v6398_1_we0;
output  [7:0] v6398_1_d0;
output  [4:0] v6398_2_address0;
output   v6398_2_ce0;
output   v6398_2_we0;
output  [7:0] v6398_2_d0;
output  [4:0] v6398_3_address0;
output   v6398_3_ce0;
output   v6398_3_we0;
output  [7:0] v6398_3_d0;
output  [4:0] v6398_4_address0;
output   v6398_4_ce0;
output   v6398_4_we0;
output  [7:0] v6398_4_d0;
output  [4:0] v6398_5_address0;
output   v6398_5_ce0;
output   v6398_5_we0;
output  [7:0] v6398_5_d0;
output  [4:0] v6398_6_address0;
output   v6398_6_ce0;
output   v6398_6_we0;
output  [7:0] v6398_6_d0;
output  [4:0] v6398_7_address0;
output   v6398_7_ce0;
output   v6398_7_we0;
output  [7:0] v6398_7_d0;
output  [4:0] v6398_8_address0;
output   v6398_8_ce0;
output   v6398_8_we0;
output  [7:0] v6398_8_d0;
output  [4:0] v6398_9_address0;
output   v6398_9_ce0;
output   v6398_9_we0;
output  [7:0] v6398_9_d0;
output  [4:0] v6398_10_address0;
output   v6398_10_ce0;
output   v6398_10_we0;
output  [7:0] v6398_10_d0;
output  [4:0] v6398_11_address0;
output   v6398_11_ce0;
output   v6398_11_we0;
output  [7:0] v6398_11_d0;
output  [4:0] v6398_12_address0;
output   v6398_12_ce0;
output   v6398_12_we0;
output  [7:0] v6398_12_d0;
output  [4:0] v6398_13_address0;
output   v6398_13_ce0;
output   v6398_13_we0;
output  [7:0] v6398_13_d0;
output  [4:0] v6398_14_address0;
output   v6398_14_ce0;
output   v6398_14_we0;
output  [7:0] v6398_14_d0;
output  [4:0] v6398_15_address0;
output   v6398_15_ce0;
output   v6398_15_we0;
output  [7:0] v6398_15_d0;
output  [4:0] v6398_16_address0;
output   v6398_16_ce0;
output   v6398_16_we0;
output  [7:0] v6398_16_d0;
output  [4:0] v6398_17_address0;
output   v6398_17_ce0;
output   v6398_17_we0;
output  [7:0] v6398_17_d0;
output  [4:0] v6398_18_address0;
output   v6398_18_ce0;
output   v6398_18_we0;
output  [7:0] v6398_18_d0;
output  [4:0] v6398_19_address0;
output   v6398_19_ce0;
output   v6398_19_we0;
output  [7:0] v6398_19_d0;
output  [4:0] v6398_20_address0;
output   v6398_20_ce0;
output   v6398_20_we0;
output  [7:0] v6398_20_d0;
output  [4:0] v6398_21_address0;
output   v6398_21_ce0;
output   v6398_21_we0;
output  [7:0] v6398_21_d0;
output  [4:0] v6398_22_address0;
output   v6398_22_ce0;
output   v6398_22_we0;
output  [7:0] v6398_22_d0;
output  [4:0] v6398_23_address0;
output   v6398_23_ce0;
output   v6398_23_we0;
output  [7:0] v6398_23_d0;
output  [4:0] v6398_24_address0;
output   v6398_24_ce0;
output   v6398_24_we0;
output  [7:0] v6398_24_d0;
output  [4:0] v6398_25_address0;
output   v6398_25_ce0;
output   v6398_25_we0;
output  [7:0] v6398_25_d0;
output  [4:0] v6398_26_address0;
output   v6398_26_ce0;
output   v6398_26_we0;
output  [7:0] v6398_26_d0;
output  [4:0] v6398_27_address0;
output   v6398_27_ce0;
output   v6398_27_we0;
output  [7:0] v6398_27_d0;
output  [4:0] v6398_28_address0;
output   v6398_28_ce0;
output   v6398_28_we0;
output  [7:0] v6398_28_d0;
output  [4:0] v6398_29_address0;
output   v6398_29_ce0;
output   v6398_29_we0;
output  [7:0] v6398_29_d0;
output  [4:0] v6398_30_address0;
output   v6398_30_ce0;
output   v6398_30_we0;
output  [7:0] v6398_30_d0;
output  [4:0] v6398_31_address0;
output   v6398_31_ce0;
output   v6398_31_we0;
output  [7:0] v6398_31_d0;
input  [7:0] mul_i3;
input  [5:0] p_udiv34_cast;
input  [2:0] tmp;
input  [1:0] zext_ln7976_1;
input  [1:0] zext_ln7976;
output  [14:0] v16153_0_0_address0;
output   v16153_0_0_ce0;
input  [7:0] v16153_0_0_q0;
output  [14:0] v16153_1_0_address0;
output   v16153_1_0_ce0;
input  [7:0] v16153_1_0_q0;
output  [14:0] v16153_2_0_address0;
output   v16153_2_0_ce0;
input  [7:0] v16153_2_0_q0;
output  [14:0] v16153_3_0_address0;
output   v16153_3_0_ce0;
input  [7:0] v16153_3_0_q0;
output  [14:0] v16153_4_0_address0;
output   v16153_4_0_ce0;
input  [7:0] v16153_4_0_q0;
output  [14:0] v16153_5_0_address0;
output   v16153_5_0_ce0;
input  [7:0] v16153_5_0_q0;
output  [14:0] v16153_6_0_address0;
output   v16153_6_0_ce0;
input  [7:0] v16153_6_0_q0;
output  [14:0] v16153_7_0_address0;
output   v16153_7_0_ce0;
input  [7:0] v16153_7_0_q0;
output  [14:0] v16153_0_1_address0;
output   v16153_0_1_ce0;
input  [7:0] v16153_0_1_q0;
output  [14:0] v16153_0_2_address0;
output   v16153_0_2_ce0;
input  [7:0] v16153_0_2_q0;
output  [14:0] v16153_0_3_address0;
output   v16153_0_3_ce0;
input  [7:0] v16153_0_3_q0;
output  [14:0] v16153_1_1_address0;
output   v16153_1_1_ce0;
input  [7:0] v16153_1_1_q0;
output  [14:0] v16153_1_2_address0;
output   v16153_1_2_ce0;
input  [7:0] v16153_1_2_q0;
output  [14:0] v16153_1_3_address0;
output   v16153_1_3_ce0;
input  [7:0] v16153_1_3_q0;
output  [14:0] v16153_2_1_address0;
output   v16153_2_1_ce0;
input  [7:0] v16153_2_1_q0;
output  [14:0] v16153_2_2_address0;
output   v16153_2_2_ce0;
input  [7:0] v16153_2_2_q0;
output  [14:0] v16153_2_3_address0;
output   v16153_2_3_ce0;
input  [7:0] v16153_2_3_q0;
output  [14:0] v16153_3_1_address0;
output   v16153_3_1_ce0;
input  [7:0] v16153_3_1_q0;
output  [14:0] v16153_3_2_address0;
output   v16153_3_2_ce0;
input  [7:0] v16153_3_2_q0;
output  [14:0] v16153_3_3_address0;
output   v16153_3_3_ce0;
input  [7:0] v16153_3_3_q0;
output  [14:0] v16153_4_1_address0;
output   v16153_4_1_ce0;
input  [7:0] v16153_4_1_q0;
output  [14:0] v16153_4_2_address0;
output   v16153_4_2_ce0;
input  [7:0] v16153_4_2_q0;
output  [14:0] v16153_4_3_address0;
output   v16153_4_3_ce0;
input  [7:0] v16153_4_3_q0;
output  [14:0] v16153_5_1_address0;
output   v16153_5_1_ce0;
input  [7:0] v16153_5_1_q0;
output  [14:0] v16153_5_2_address0;
output   v16153_5_2_ce0;
input  [7:0] v16153_5_2_q0;
output  [14:0] v16153_5_3_address0;
output   v16153_5_3_ce0;
input  [7:0] v16153_5_3_q0;
output  [14:0] v16153_6_1_address0;
output   v16153_6_1_ce0;
input  [7:0] v16153_6_1_q0;
output  [14:0] v16153_6_2_address0;
output   v16153_6_2_ce0;
input  [7:0] v16153_6_2_q0;
output  [14:0] v16153_6_3_address0;
output   v16153_6_3_ce0;
input  [7:0] v16153_6_3_q0;
output  [14:0] v16153_7_1_address0;
output   v16153_7_1_ce0;
input  [7:0] v16153_7_1_q0;
output  [14:0] v16153_7_2_address0;
output   v16153_7_2_ce0;
input  [7:0] v16153_7_2_q0;
output  [14:0] v16153_7_3_address0;
output   v16153_7_3_ce0;
input  [7:0] v16153_7_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7886_fu_1400_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [14:0] zext_ln7976_cast_fu_1156_p1;
reg   [14:0] zext_ln7976_cast_reg_1639;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] zext_ln7976_1_cast_fu_1160_p1;
reg   [12:0] zext_ln7976_1_cast_reg_1647;
reg   [4:0] tmp_7_reg_1653;
wire   [4:0] add_ln7952_fu_1270_p2;
reg   [4:0] add_ln7952_reg_1661;
reg   [4:0] add_ln7952_reg_1661_pp0_iter1_reg;
wire   [5:0] add_ln7890_fu_1282_p2;
reg   [5:0] add_ln7890_reg_1666;
wire   [12:0] add_ln7890_1_fu_1320_p2;
reg   [12:0] add_ln7890_1_reg_1672;
wire   [5:0] lshr_ln12_fu_1326_p4;
reg   [5:0] lshr_ln12_reg_1678;
wire   [12:0] add_ln7892_fu_1368_p2;
reg   [12:0] add_ln7892_reg_1684;
wire   [0:0] xor_ln7887_fu_1394_p2;
reg   [0:0] xor_ln7887_reg_1690;
reg   [0:0] icmp_ln7886_reg_1695;
wire   [12:0] add_ln7898_fu_1471_p2;
reg   [12:0] add_ln7898_reg_1704;
wire   [12:0] add_ln7900_fu_1528_p2;
reg   [12:0] add_ln7900_reg_1725;
wire   [63:0] zext_ln7952_1_fu_1533_p1;
reg   [63:0] zext_ln7952_1_reg_1731;
reg   [0:0] ap_phi_mux_icmp_ln7887384_phi_fu_1149_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7890_2_fu_1442_p1;
wire   [63:0] zext_ln7892_2_fu_1497_p1;
wire   [63:0] zext_ln7898_2_fu_1561_p1;
wire   [63:0] zext_ln7900_2_fu_1593_p1;
reg   [4:0] indvar_flatten381_fu_234;
wire   [4:0] add_ln7886_1_fu_1380_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten381_load;
reg   [5:0] v6284382_fu_238;
wire   [5:0] v6284_fu_1202_p3;
reg   [5:0] ap_sig_allocacmp_v6284382_load;
reg   [5:0] v6285383_fu_242;
wire   [5:0] v6285_fu_1374_p2;
reg   [5:0] ap_sig_allocacmp_v6285383_load;
reg    v16153_0_0_ce0_local;
reg    v16153_0_1_ce0_local;
reg    v16153_0_2_ce0_local;
reg    v16153_0_3_ce0_local;
reg    v16153_1_0_ce0_local;
reg    v16153_1_1_ce0_local;
reg    v16153_1_2_ce0_local;
reg    v16153_1_3_ce0_local;
reg    v16153_2_0_ce0_local;
reg    v16153_2_1_ce0_local;
reg    v16153_2_2_ce0_local;
reg    v16153_2_3_ce0_local;
reg    v16153_3_0_ce0_local;
reg    v16153_3_1_ce0_local;
reg    v16153_3_2_ce0_local;
reg    v16153_3_3_ce0_local;
reg    v16153_4_0_ce0_local;
reg    v16153_4_1_ce0_local;
reg    v16153_4_2_ce0_local;
reg    v16153_4_3_ce0_local;
reg    v16153_5_0_ce0_local;
reg    v16153_5_1_ce0_local;
reg    v16153_5_2_ce0_local;
reg    v16153_5_3_ce0_local;
reg    v16153_6_0_ce0_local;
reg    v16153_6_1_ce0_local;
reg    v16153_6_2_ce0_local;
reg    v16153_6_3_ce0_local;
reg    v16153_7_0_ce0_local;
reg    v16153_7_1_ce0_local;
reg    v16153_7_2_ce0_local;
reg    v16153_7_3_ce0_local;
reg    v6398_31_we0_local;
reg    v6398_31_ce0_local;
reg    v6398_30_we0_local;
reg    v6398_30_ce0_local;
reg    v6398_29_we0_local;
reg    v6398_29_ce0_local;
reg    v6398_28_we0_local;
reg    v6398_28_ce0_local;
reg    v6398_27_we0_local;
reg    v6398_27_ce0_local;
reg    v6398_26_we0_local;
reg    v6398_26_ce0_local;
reg    v6398_25_we0_local;
reg    v6398_25_ce0_local;
reg    v6398_24_we0_local;
reg    v6398_24_ce0_local;
reg    v6398_23_we0_local;
reg    v6398_23_ce0_local;
reg    v6398_22_we0_local;
reg    v6398_22_ce0_local;
reg    v6398_21_we0_local;
reg    v6398_21_ce0_local;
reg    v6398_20_we0_local;
reg    v6398_20_ce0_local;
reg    v6398_19_we0_local;
reg    v6398_19_ce0_local;
reg    v6398_18_we0_local;
reg    v6398_18_ce0_local;
reg    v6398_17_we0_local;
reg    v6398_17_ce0_local;
reg    v6398_16_we0_local;
reg    v6398_16_ce0_local;
reg    v6398_15_we0_local;
reg    v6398_15_ce0_local;
reg    v6398_14_we0_local;
reg    v6398_14_ce0_local;
reg    v6398_13_we0_local;
reg    v6398_13_ce0_local;
reg    v6398_12_we0_local;
reg    v6398_12_ce0_local;
reg    v6398_11_we0_local;
reg    v6398_11_ce0_local;
reg    v6398_10_we0_local;
reg    v6398_10_ce0_local;
reg    v6398_9_we0_local;
reg    v6398_9_ce0_local;
reg    v6398_8_we0_local;
reg    v6398_8_ce0_local;
reg    v6398_7_we0_local;
reg    v6398_7_ce0_local;
reg    v6398_6_we0_local;
reg    v6398_6_ce0_local;
reg    v6398_5_we0_local;
reg    v6398_5_ce0_local;
reg    v6398_4_we0_local;
reg    v6398_4_ce0_local;
reg    v6398_3_we0_local;
reg    v6398_3_ce0_local;
reg    v6398_2_we0_local;
reg    v6398_2_ce0_local;
reg    v6398_1_we0_local;
reg    v6398_1_ce0_local;
reg    v6398_we0_local;
reg    v6398_ce0_local;
wire   [5:0] add_ln7886_fu_1188_p2;
wire   [1:0] lshr_ln_fu_1214_p4;
wire   [7:0] zext_ln7886_fu_1210_p1;
wire   [7:0] empty_fu_1232_p2;
wire   [5:0] select_ln7886_fu_1194_p3;
wire   [3:0] lshr_ln11_fu_1252_p4;
wire   [4:0] tmp_s_fu_1224_p3;
wire   [4:0] zext_ln7952_fu_1266_p1;
wire   [7:0] zext_ln7887_fu_1248_p1;
wire   [5:0] zext_ln7887_1_fu_1262_p1;
wire   [10:0] tmp_8_fu_1288_p4;
wire   [12:0] p_shl31_fu_1302_p5;
wire   [12:0] zext_ln7890_fu_1298_p1;
wire   [12:0] sub_ln7890_fu_1314_p2;
wire   [7:0] add_ln7889_fu_1276_p2;
wire   [10:0] tmp_10_fu_1336_p4;
wire   [12:0] p_shl27_fu_1350_p5;
wire   [12:0] zext_ln7892_fu_1346_p1;
wire   [12:0] sub_ln7892_fu_1362_p2;
wire   [0:0] tmp_51_fu_1386_p3;
wire   [14:0] p_shl30_fu_1424_p3;
wire   [14:0] zext_ln7890_1_fu_1421_p1;
wire   [14:0] sub_ln7890_1_fu_1431_p2;
wire   [14:0] add_ln7890_2_fu_1437_p2;
wire   [10:0] tmp_9_fu_1447_p3;
wire   [12:0] p_shl29_fu_1457_p4;
wire   [12:0] zext_ln7898_fu_1453_p1;
wire   [12:0] sub_ln7898_fu_1465_p2;
wire   [14:0] p_shl26_fu_1479_p3;
wire   [14:0] zext_ln7892_1_fu_1476_p1;
wire   [14:0] sub_ln7892_1_fu_1486_p2;
wire   [14:0] add_ln7892_1_fu_1492_p2;
wire   [10:0] tmp_11_fu_1504_p3;
wire   [12:0] p_shl25_fu_1514_p4;
wire   [12:0] zext_ln7900_fu_1510_p1;
wire   [12:0] sub_ln7900_fu_1522_p2;
wire   [14:0] p_shl28_fu_1543_p3;
wire   [14:0] zext_ln7898_1_fu_1540_p1;
wire   [14:0] sub_ln7898_1_fu_1550_p2;
wire   [14:0] add_ln7898_1_fu_1556_p2;
wire   [14:0] p_shl_fu_1575_p3;
wire   [14:0] zext_ln7900_1_fu_1572_p1;
wire   [14:0] sub_ln7900_1_fu_1582_p2;
wire   [14:0] add_ln7900_1_fu_1588_p2;
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
reg    ap_condition_1174;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten381_fu_234 = 5'd0;
#0 v6284382_fu_238 = 6'd0;
#0 v6285383_fu_242 = 6'd0;
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
            indvar_flatten381_fu_234 <= add_ln7886_1_fu_1380_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten381_fu_234 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v6284382_fu_238 <= v6284_fu_1202_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v6284382_fu_238 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v6285383_fu_242 <= v6285_fu_1374_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v6285383_fu_242 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7890_1_reg_1672 <= add_ln7890_1_fu_1320_p2;
        add_ln7890_reg_1666 <= add_ln7890_fu_1282_p2;
        add_ln7892_reg_1684 <= add_ln7892_fu_1368_p2;
        add_ln7898_reg_1704 <= add_ln7898_fu_1471_p2;
        add_ln7900_reg_1725 <= add_ln7900_fu_1528_p2;
        add_ln7952_reg_1661 <= add_ln7952_fu_1270_p2;
        add_ln7952_reg_1661_pp0_iter1_reg <= add_ln7952_reg_1661;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln7886_reg_1695 <= icmp_ln7886_fu_1400_p2;
        lshr_ln12_reg_1678 <= {{add_ln7889_fu_1276_p2[7:2]}};
        tmp_7_reg_1653 <= {{empty_fu_1232_p2[7:3]}};
        zext_ln7976_1_cast_reg_1647[1 : 0] <= zext_ln7976_1_cast_fu_1160_p1[1 : 0];
        zext_ln7976_cast_reg_1639[1 : 0] <= zext_ln7976_cast_fu_1156_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln7887_reg_1690 <= xor_ln7887_fu_1394_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln7952_1_reg_1731[4 : 0] <= zext_ln7952_1_fu_1533_p1[4 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln7886_fu_1400_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_1174)) begin
            ap_phi_mux_icmp_ln7887384_phi_fu_1149_p4 = xor_ln7887_reg_1690;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7887384_phi_fu_1149_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln7887384_phi_fu_1149_p4 = xor_ln7887_reg_1690;
        end
    end else begin
        ap_phi_mux_icmp_ln7887384_phi_fu_1149_p4 = xor_ln7887_reg_1690;
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
        ap_sig_allocacmp_indvar_flatten381_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten381_load = indvar_flatten381_fu_234;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6284382_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v6284382_load = v6284382_fu_238;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6285383_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v6285383_load = v6285383_fu_242;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16153_0_0_ce0_local = 1'b1;
    end else begin
        v16153_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16153_0_1_ce0_local = 1'b1;
    end else begin
        v16153_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16153_0_2_ce0_local = 1'b1;
    end else begin
        v16153_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16153_0_3_ce0_local = 1'b1;
    end else begin
        v16153_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_1_0_ce0_local = 1'b1;
    end else begin
        v16153_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_1_1_ce0_local = 1'b1;
    end else begin
        v16153_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_1_2_ce0_local = 1'b1;
    end else begin
        v16153_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_1_3_ce0_local = 1'b1;
    end else begin
        v16153_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_2_0_ce0_local = 1'b1;
    end else begin
        v16153_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_2_1_ce0_local = 1'b1;
    end else begin
        v16153_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_2_2_ce0_local = 1'b1;
    end else begin
        v16153_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_2_3_ce0_local = 1'b1;
    end else begin
        v16153_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_3_0_ce0_local = 1'b1;
    end else begin
        v16153_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_3_1_ce0_local = 1'b1;
    end else begin
        v16153_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_3_2_ce0_local = 1'b1;
    end else begin
        v16153_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_3_3_ce0_local = 1'b1;
    end else begin
        v16153_3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_4_0_ce0_local = 1'b1;
    end else begin
        v16153_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_4_1_ce0_local = 1'b1;
    end else begin
        v16153_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_4_2_ce0_local = 1'b1;
    end else begin
        v16153_4_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_4_3_ce0_local = 1'b1;
    end else begin
        v16153_4_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_5_0_ce0_local = 1'b1;
    end else begin
        v16153_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_5_1_ce0_local = 1'b1;
    end else begin
        v16153_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_5_2_ce0_local = 1'b1;
    end else begin
        v16153_5_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_5_3_ce0_local = 1'b1;
    end else begin
        v16153_5_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_6_0_ce0_local = 1'b1;
    end else begin
        v16153_6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_6_1_ce0_local = 1'b1;
    end else begin
        v16153_6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_6_2_ce0_local = 1'b1;
    end else begin
        v16153_6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_6_3_ce0_local = 1'b1;
    end else begin
        v16153_6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_7_0_ce0_local = 1'b1;
    end else begin
        v16153_7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_7_1_ce0_local = 1'b1;
    end else begin
        v16153_7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_7_2_ce0_local = 1'b1;
    end else begin
        v16153_7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16153_7_3_ce0_local = 1'b1;
    end else begin
        v16153_7_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_10_ce0_local = 1'b1;
    end else begin
        v6398_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_10_we0_local = 1'b1;
    end else begin
        v6398_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_11_ce0_local = 1'b1;
    end else begin
        v6398_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_11_we0_local = 1'b1;
    end else begin
        v6398_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_12_ce0_local = 1'b1;
    end else begin
        v6398_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_12_we0_local = 1'b1;
    end else begin
        v6398_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_13_ce0_local = 1'b1;
    end else begin
        v6398_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_13_we0_local = 1'b1;
    end else begin
        v6398_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_14_ce0_local = 1'b1;
    end else begin
        v6398_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_14_we0_local = 1'b1;
    end else begin
        v6398_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_15_ce0_local = 1'b1;
    end else begin
        v6398_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_15_we0_local = 1'b1;
    end else begin
        v6398_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_16_ce0_local = 1'b1;
    end else begin
        v6398_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_16_we0_local = 1'b1;
    end else begin
        v6398_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_17_ce0_local = 1'b1;
    end else begin
        v6398_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_17_we0_local = 1'b1;
    end else begin
        v6398_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_18_ce0_local = 1'b1;
    end else begin
        v6398_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_18_we0_local = 1'b1;
    end else begin
        v6398_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_19_ce0_local = 1'b1;
    end else begin
        v6398_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_19_we0_local = 1'b1;
    end else begin
        v6398_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_1_ce0_local = 1'b1;
    end else begin
        v6398_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_1_we0_local = 1'b1;
    end else begin
        v6398_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_20_ce0_local = 1'b1;
    end else begin
        v6398_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_20_we0_local = 1'b1;
    end else begin
        v6398_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_21_ce0_local = 1'b1;
    end else begin
        v6398_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_21_we0_local = 1'b1;
    end else begin
        v6398_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_22_ce0_local = 1'b1;
    end else begin
        v6398_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_22_we0_local = 1'b1;
    end else begin
        v6398_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_23_ce0_local = 1'b1;
    end else begin
        v6398_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_23_we0_local = 1'b1;
    end else begin
        v6398_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_24_ce0_local = 1'b1;
    end else begin
        v6398_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_24_we0_local = 1'b1;
    end else begin
        v6398_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_25_ce0_local = 1'b1;
    end else begin
        v6398_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_25_we0_local = 1'b1;
    end else begin
        v6398_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_26_ce0_local = 1'b1;
    end else begin
        v6398_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_26_we0_local = 1'b1;
    end else begin
        v6398_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_27_ce0_local = 1'b1;
    end else begin
        v6398_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_27_we0_local = 1'b1;
    end else begin
        v6398_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_28_ce0_local = 1'b1;
    end else begin
        v6398_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_28_we0_local = 1'b1;
    end else begin
        v6398_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_29_ce0_local = 1'b1;
    end else begin
        v6398_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_29_we0_local = 1'b1;
    end else begin
        v6398_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_2_ce0_local = 1'b1;
    end else begin
        v6398_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_2_we0_local = 1'b1;
    end else begin
        v6398_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_30_ce0_local = 1'b1;
    end else begin
        v6398_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_30_we0_local = 1'b1;
    end else begin
        v6398_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_31_ce0_local = 1'b1;
    end else begin
        v6398_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6398_31_we0_local = 1'b1;
    end else begin
        v6398_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_3_ce0_local = 1'b1;
    end else begin
        v6398_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_3_we0_local = 1'b1;
    end else begin
        v6398_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_4_ce0_local = 1'b1;
    end else begin
        v6398_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_4_we0_local = 1'b1;
    end else begin
        v6398_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_5_ce0_local = 1'b1;
    end else begin
        v6398_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_5_we0_local = 1'b1;
    end else begin
        v6398_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_6_ce0_local = 1'b1;
    end else begin
        v6398_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_6_we0_local = 1'b1;
    end else begin
        v6398_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_7_ce0_local = 1'b1;
    end else begin
        v6398_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_7_we0_local = 1'b1;
    end else begin
        v6398_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_8_ce0_local = 1'b1;
    end else begin
        v6398_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_8_we0_local = 1'b1;
    end else begin
        v6398_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_9_ce0_local = 1'b1;
    end else begin
        v6398_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_9_we0_local = 1'b1;
    end else begin
        v6398_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_ce0_local = 1'b1;
    end else begin
        v6398_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v6398_we0_local = 1'b1;
    end else begin
        v6398_we0_local = 1'b0;
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
assign add_ln7886_1_fu_1380_p2 = (ap_sig_allocacmp_indvar_flatten381_load + 5'd1);
assign add_ln7886_fu_1188_p2 = (ap_sig_allocacmp_v6284382_load + 6'd8);
assign add_ln7889_fu_1276_p2 = (mul_i3 + zext_ln7887_fu_1248_p1);
assign add_ln7890_1_fu_1320_p2 = (sub_ln7890_fu_1314_p2 + zext_ln7976_1_cast_fu_1160_p1);
assign add_ln7890_2_fu_1437_p2 = (sub_ln7890_1_fu_1431_p2 + zext_ln7976_cast_reg_1639);
assign add_ln7890_fu_1282_p2 = (zext_ln7887_1_fu_1262_p1 + p_udiv34_cast);
assign add_ln7892_1_fu_1492_p2 = (sub_ln7892_1_fu_1486_p2 + zext_ln7976_cast_reg_1639);
assign add_ln7892_fu_1368_p2 = (sub_ln7892_fu_1362_p2 + zext_ln7976_1_cast_fu_1160_p1);
assign add_ln7898_1_fu_1556_p2 = (sub_ln7898_1_fu_1550_p2 + zext_ln7976_cast_reg_1639);
assign add_ln7898_fu_1471_p2 = (sub_ln7898_fu_1465_p2 + zext_ln7976_1_cast_reg_1647);
assign add_ln7900_1_fu_1588_p2 = (sub_ln7900_1_fu_1582_p2 + zext_ln7976_cast_reg_1639);
assign add_ln7900_fu_1528_p2 = (sub_ln7900_fu_1522_p2 + zext_ln7976_1_cast_reg_1647);
assign add_ln7952_fu_1270_p2 = (tmp_s_fu_1224_p3 + zext_ln7952_fu_1266_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1174 = ((icmp_ln7886_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_1232_p2 = (mul_i + zext_ln7886_fu_1210_p1);
assign icmp_ln7886_fu_1400_p2 = ((ap_sig_allocacmp_indvar_flatten381_load == 5'd31) ? 1'b1 : 1'b0);
assign lshr_ln11_fu_1252_p4 = {{select_ln7886_fu_1194_p3[5:2]}};
assign lshr_ln12_fu_1326_p4 = {{add_ln7889_fu_1276_p2[7:2]}};
assign lshr_ln_fu_1214_p4 = {{v6284_fu_1202_p3[4:3]}};
assign p_shl25_fu_1514_p4 = {{{tmp_7_reg_1653}, {lshr_ln12_reg_1678}}, {2'd0}};
assign p_shl26_fu_1479_p3 = {{add_ln7892_reg_1684}, {2'd0}};
assign p_shl27_fu_1350_p5 = {{{{tmp}, {lshr_ln_fu_1214_p4}}, {lshr_ln12_fu_1326_p4}}, {2'd0}};
assign p_shl28_fu_1543_p3 = {{add_ln7898_reg_1704}, {2'd0}};
assign p_shl29_fu_1457_p4 = {{{tmp_7_reg_1653}, {add_ln7890_reg_1666}}, {2'd0}};
assign p_shl30_fu_1424_p3 = {{add_ln7890_1_reg_1672}, {2'd0}};
assign p_shl31_fu_1302_p5 = {{{{tmp}, {lshr_ln_fu_1214_p4}}, {add_ln7890_fu_1282_p2}}, {2'd0}};
assign p_shl_fu_1575_p3 = {{add_ln7900_reg_1725}, {2'd0}};
assign select_ln7886_fu_1194_p3 = ((ap_phi_mux_icmp_ln7887384_phi_fu_1149_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v6285383_load : 6'd0);
assign sub_ln7890_1_fu_1431_p2 = (p_shl30_fu_1424_p3 - zext_ln7890_1_fu_1421_p1);
assign sub_ln7890_fu_1314_p2 = (p_shl31_fu_1302_p5 - zext_ln7890_fu_1298_p1);
assign sub_ln7892_1_fu_1486_p2 = (p_shl26_fu_1479_p3 - zext_ln7892_1_fu_1476_p1);
assign sub_ln7892_fu_1362_p2 = (p_shl27_fu_1350_p5 - zext_ln7892_fu_1346_p1);
assign sub_ln7898_1_fu_1550_p2 = (p_shl28_fu_1543_p3 - zext_ln7898_1_fu_1540_p1);
assign sub_ln7898_fu_1465_p2 = (p_shl29_fu_1457_p4 - zext_ln7898_fu_1453_p1);
assign sub_ln7900_1_fu_1582_p2 = (p_shl_fu_1575_p3 - zext_ln7900_1_fu_1572_p1);
assign sub_ln7900_fu_1522_p2 = (p_shl25_fu_1514_p4 - zext_ln7900_fu_1510_p1);
assign tmp_10_fu_1336_p4 = {{{tmp}, {lshr_ln_fu_1214_p4}}, {lshr_ln12_fu_1326_p4}};
assign tmp_11_fu_1504_p3 = {{tmp_7_reg_1653}, {lshr_ln12_reg_1678}};
assign tmp_51_fu_1386_p3 = v6285_fu_1374_p2[32'd5];
assign tmp_8_fu_1288_p4 = {{{tmp}, {lshr_ln_fu_1214_p4}}, {add_ln7890_fu_1282_p2}};
assign tmp_9_fu_1447_p3 = {{tmp_7_reg_1653}, {add_ln7890_reg_1666}};
assign tmp_s_fu_1224_p3 = {{lshr_ln_fu_1214_p4}, {3'd0}};
assign v16153_0_0_address0 = zext_ln7890_2_fu_1442_p1;
assign v16153_0_0_ce0 = v16153_0_0_ce0_local;
assign v16153_0_1_address0 = zext_ln7892_2_fu_1497_p1;
assign v16153_0_1_ce0 = v16153_0_1_ce0_local;
assign v16153_0_2_address0 = zext_ln7892_2_fu_1497_p1;
assign v16153_0_2_ce0 = v16153_0_2_ce0_local;
assign v16153_0_3_address0 = zext_ln7892_2_fu_1497_p1;
assign v16153_0_3_ce0 = v16153_0_3_ce0_local;
assign v16153_1_0_address0 = zext_ln7898_2_fu_1561_p1;
assign v16153_1_0_ce0 = v16153_1_0_ce0_local;
assign v16153_1_1_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_1_1_ce0 = v16153_1_1_ce0_local;
assign v16153_1_2_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_1_2_ce0 = v16153_1_2_ce0_local;
assign v16153_1_3_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_1_3_ce0 = v16153_1_3_ce0_local;
assign v16153_2_0_address0 = zext_ln7898_2_fu_1561_p1;
assign v16153_2_0_ce0 = v16153_2_0_ce0_local;
assign v16153_2_1_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_2_1_ce0 = v16153_2_1_ce0_local;
assign v16153_2_2_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_2_2_ce0 = v16153_2_2_ce0_local;
assign v16153_2_3_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_2_3_ce0 = v16153_2_3_ce0_local;
assign v16153_3_0_address0 = zext_ln7898_2_fu_1561_p1;
assign v16153_3_0_ce0 = v16153_3_0_ce0_local;
assign v16153_3_1_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_3_1_ce0 = v16153_3_1_ce0_local;
assign v16153_3_2_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_3_2_ce0 = v16153_3_2_ce0_local;
assign v16153_3_3_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_3_3_ce0 = v16153_3_3_ce0_local;
assign v16153_4_0_address0 = zext_ln7898_2_fu_1561_p1;
assign v16153_4_0_ce0 = v16153_4_0_ce0_local;
assign v16153_4_1_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_4_1_ce0 = v16153_4_1_ce0_local;
assign v16153_4_2_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_4_2_ce0 = v16153_4_2_ce0_local;
assign v16153_4_3_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_4_3_ce0 = v16153_4_3_ce0_local;
assign v16153_5_0_address0 = zext_ln7898_2_fu_1561_p1;
assign v16153_5_0_ce0 = v16153_5_0_ce0_local;
assign v16153_5_1_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_5_1_ce0 = v16153_5_1_ce0_local;
assign v16153_5_2_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_5_2_ce0 = v16153_5_2_ce0_local;
assign v16153_5_3_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_5_3_ce0 = v16153_5_3_ce0_local;
assign v16153_6_0_address0 = zext_ln7898_2_fu_1561_p1;
assign v16153_6_0_ce0 = v16153_6_0_ce0_local;
assign v16153_6_1_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_6_1_ce0 = v16153_6_1_ce0_local;
assign v16153_6_2_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_6_2_ce0 = v16153_6_2_ce0_local;
assign v16153_6_3_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_6_3_ce0 = v16153_6_3_ce0_local;
assign v16153_7_0_address0 = zext_ln7898_2_fu_1561_p1;
assign v16153_7_0_ce0 = v16153_7_0_ce0_local;
assign v16153_7_1_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_7_1_ce0 = v16153_7_1_ce0_local;
assign v16153_7_2_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_7_2_ce0 = v16153_7_2_ce0_local;
assign v16153_7_3_address0 = zext_ln7900_2_fu_1593_p1;
assign v16153_7_3_ce0 = v16153_7_3_ce0_local;
assign v6284_fu_1202_p3 = ((ap_phi_mux_icmp_ln7887384_phi_fu_1149_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v6284382_load : add_ln7886_fu_1188_p2);
assign v6285_fu_1374_p2 = (select_ln7886_fu_1194_p3 + 6'd4);
assign v6398_10_address0 = zext_ln7952_1_reg_1731;
assign v6398_10_ce0 = v6398_10_ce0_local;
assign v6398_10_d0 = v16153_5_1_q0;
assign v6398_10_we0 = v6398_10_we0_local;
assign v6398_11_address0 = zext_ln7952_1_reg_1731;
assign v6398_11_ce0 = v6398_11_ce0_local;
assign v6398_11_d0 = v16153_5_0_q0;
assign v6398_11_we0 = v6398_11_we0_local;
assign v6398_12_address0 = zext_ln7952_1_reg_1731;
assign v6398_12_ce0 = v6398_12_ce0_local;
assign v6398_12_d0 = v16153_4_3_q0;
assign v6398_12_we0 = v6398_12_we0_local;
assign v6398_13_address0 = zext_ln7952_1_reg_1731;
assign v6398_13_ce0 = v6398_13_ce0_local;
assign v6398_13_d0 = v16153_4_2_q0;
assign v6398_13_we0 = v6398_13_we0_local;
assign v6398_14_address0 = zext_ln7952_1_reg_1731;
assign v6398_14_ce0 = v6398_14_ce0_local;
assign v6398_14_d0 = v16153_4_1_q0;
assign v6398_14_we0 = v6398_14_we0_local;
assign v6398_15_address0 = zext_ln7952_1_reg_1731;
assign v6398_15_ce0 = v6398_15_ce0_local;
assign v6398_15_d0 = v16153_4_0_q0;
assign v6398_15_we0 = v6398_15_we0_local;
assign v6398_16_address0 = zext_ln7952_1_reg_1731;
assign v6398_16_ce0 = v6398_16_ce0_local;
assign v6398_16_d0 = v16153_3_3_q0;
assign v6398_16_we0 = v6398_16_we0_local;
assign v6398_17_address0 = zext_ln7952_1_reg_1731;
assign v6398_17_ce0 = v6398_17_ce0_local;
assign v6398_17_d0 = v16153_3_2_q0;
assign v6398_17_we0 = v6398_17_we0_local;
assign v6398_18_address0 = zext_ln7952_1_reg_1731;
assign v6398_18_ce0 = v6398_18_ce0_local;
assign v6398_18_d0 = v16153_3_1_q0;
assign v6398_18_we0 = v6398_18_we0_local;
assign v6398_19_address0 = zext_ln7952_1_reg_1731;
assign v6398_19_ce0 = v6398_19_ce0_local;
assign v6398_19_d0 = v16153_3_0_q0;
assign v6398_19_we0 = v6398_19_we0_local;
assign v6398_1_address0 = zext_ln7952_1_reg_1731;
assign v6398_1_ce0 = v6398_1_ce0_local;
assign v6398_1_d0 = v16153_7_2_q0;
assign v6398_1_we0 = v6398_1_we0_local;
assign v6398_20_address0 = zext_ln7952_1_reg_1731;
assign v6398_20_ce0 = v6398_20_ce0_local;
assign v6398_20_d0 = v16153_2_3_q0;
assign v6398_20_we0 = v6398_20_we0_local;
assign v6398_21_address0 = zext_ln7952_1_reg_1731;
assign v6398_21_ce0 = v6398_21_ce0_local;
assign v6398_21_d0 = v16153_2_2_q0;
assign v6398_21_we0 = v6398_21_we0_local;
assign v6398_22_address0 = zext_ln7952_1_reg_1731;
assign v6398_22_ce0 = v6398_22_ce0_local;
assign v6398_22_d0 = v16153_2_1_q0;
assign v6398_22_we0 = v6398_22_we0_local;
assign v6398_23_address0 = zext_ln7952_1_reg_1731;
assign v6398_23_ce0 = v6398_23_ce0_local;
assign v6398_23_d0 = v16153_2_0_q0;
assign v6398_23_we0 = v6398_23_we0_local;
assign v6398_24_address0 = zext_ln7952_1_reg_1731;
assign v6398_24_ce0 = v6398_24_ce0_local;
assign v6398_24_d0 = v16153_1_3_q0;
assign v6398_24_we0 = v6398_24_we0_local;
assign v6398_25_address0 = zext_ln7952_1_reg_1731;
assign v6398_25_ce0 = v6398_25_ce0_local;
assign v6398_25_d0 = v16153_1_2_q0;
assign v6398_25_we0 = v6398_25_we0_local;
assign v6398_26_address0 = zext_ln7952_1_reg_1731;
assign v6398_26_ce0 = v6398_26_ce0_local;
assign v6398_26_d0 = v16153_1_1_q0;
assign v6398_26_we0 = v6398_26_we0_local;
assign v6398_27_address0 = zext_ln7952_1_reg_1731;
assign v6398_27_ce0 = v6398_27_ce0_local;
assign v6398_27_d0 = v16153_1_0_q0;
assign v6398_27_we0 = v6398_27_we0_local;
assign v6398_28_address0 = zext_ln7952_1_fu_1533_p1;
assign v6398_28_ce0 = v6398_28_ce0_local;
assign v6398_28_d0 = v16153_0_3_q0;
assign v6398_28_we0 = v6398_28_we0_local;
assign v6398_29_address0 = zext_ln7952_1_fu_1533_p1;
assign v6398_29_ce0 = v6398_29_ce0_local;
assign v6398_29_d0 = v16153_0_2_q0;
assign v6398_29_we0 = v6398_29_we0_local;
assign v6398_2_address0 = zext_ln7952_1_reg_1731;
assign v6398_2_ce0 = v6398_2_ce0_local;
assign v6398_2_d0 = v16153_7_1_q0;
assign v6398_2_we0 = v6398_2_we0_local;
assign v6398_30_address0 = zext_ln7952_1_fu_1533_p1;
assign v6398_30_ce0 = v6398_30_ce0_local;
assign v6398_30_d0 = v16153_0_1_q0;
assign v6398_30_we0 = v6398_30_we0_local;
assign v6398_31_address0 = zext_ln7952_1_fu_1533_p1;
assign v6398_31_ce0 = v6398_31_ce0_local;
assign v6398_31_d0 = v16153_0_0_q0;
assign v6398_31_we0 = v6398_31_we0_local;
assign v6398_3_address0 = zext_ln7952_1_reg_1731;
assign v6398_3_ce0 = v6398_3_ce0_local;
assign v6398_3_d0 = v16153_7_0_q0;
assign v6398_3_we0 = v6398_3_we0_local;
assign v6398_4_address0 = zext_ln7952_1_reg_1731;
assign v6398_4_ce0 = v6398_4_ce0_local;
assign v6398_4_d0 = v16153_6_3_q0;
assign v6398_4_we0 = v6398_4_we0_local;
assign v6398_5_address0 = zext_ln7952_1_reg_1731;
assign v6398_5_ce0 = v6398_5_ce0_local;
assign v6398_5_d0 = v16153_6_2_q0;
assign v6398_5_we0 = v6398_5_we0_local;
assign v6398_6_address0 = zext_ln7952_1_reg_1731;
assign v6398_6_ce0 = v6398_6_ce0_local;
assign v6398_6_d0 = v16153_6_1_q0;
assign v6398_6_we0 = v6398_6_we0_local;
assign v6398_7_address0 = zext_ln7952_1_reg_1731;
assign v6398_7_ce0 = v6398_7_ce0_local;
assign v6398_7_d0 = v16153_6_0_q0;
assign v6398_7_we0 = v6398_7_we0_local;
assign v6398_8_address0 = zext_ln7952_1_reg_1731;
assign v6398_8_ce0 = v6398_8_ce0_local;
assign v6398_8_d0 = v16153_5_3_q0;
assign v6398_8_we0 = v6398_8_we0_local;
assign v6398_9_address0 = zext_ln7952_1_reg_1731;
assign v6398_9_ce0 = v6398_9_ce0_local;
assign v6398_9_d0 = v16153_5_2_q0;
assign v6398_9_we0 = v6398_9_we0_local;
assign v6398_address0 = zext_ln7952_1_reg_1731;
assign v6398_ce0 = v6398_ce0_local;
assign v6398_d0 = v16153_7_3_q0;
assign v6398_we0 = v6398_we0_local;
assign xor_ln7887_fu_1394_p2 = (tmp_51_fu_1386_p3 ^ 1'd1);
assign zext_ln7886_fu_1210_p1 = v6284_fu_1202_p3;
assign zext_ln7887_1_fu_1262_p1 = lshr_ln11_fu_1252_p4;
assign zext_ln7887_fu_1248_p1 = select_ln7886_fu_1194_p3;
assign zext_ln7890_1_fu_1421_p1 = add_ln7890_1_reg_1672;
assign zext_ln7890_2_fu_1442_p1 = add_ln7890_2_fu_1437_p2;
assign zext_ln7890_fu_1298_p1 = tmp_8_fu_1288_p4;
assign zext_ln7892_1_fu_1476_p1 = add_ln7892_reg_1684;
assign zext_ln7892_2_fu_1497_p1 = add_ln7892_1_fu_1492_p2;
assign zext_ln7892_fu_1346_p1 = tmp_10_fu_1336_p4;
assign zext_ln7898_1_fu_1540_p1 = add_ln7898_reg_1704;
assign zext_ln7898_2_fu_1561_p1 = add_ln7898_1_fu_1556_p2;
assign zext_ln7898_fu_1453_p1 = tmp_9_fu_1447_p3;
assign zext_ln7900_1_fu_1572_p1 = add_ln7900_reg_1725;
assign zext_ln7900_2_fu_1593_p1 = add_ln7900_1_fu_1588_p2;
assign zext_ln7900_fu_1510_p1 = tmp_11_fu_1504_p3;
assign zext_ln7952_1_fu_1533_p1 = add_ln7952_reg_1661_pp0_iter1_reg;
assign zext_ln7952_fu_1266_p1 = lshr_ln11_fu_1252_p4;
assign zext_ln7976_1_cast_fu_1160_p1 = zext_ln7976_1;
assign zext_ln7976_cast_fu_1156_p1 = zext_ln7976;
always @ (posedge ap_clk) begin
    zext_ln7976_cast_reg_1639[14:2] <= 13'b0000000000000;
    zext_ln7976_1_cast_reg_1647[12:2] <= 11'b00000000000;
    zext_ln7952_1_reg_1731[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 