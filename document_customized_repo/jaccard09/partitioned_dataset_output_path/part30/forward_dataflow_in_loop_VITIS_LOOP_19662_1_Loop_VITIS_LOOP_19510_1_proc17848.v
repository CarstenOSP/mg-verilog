
module forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15048_address0,v15048_ce0,v15048_we0,v15048_d0,v15048_1_address0,v15048_1_ce0,v15048_1_we0,v15048_1_d0,v15048_2_address0,v15048_2_ce0,v15048_2_we0,v15048_2_d0,v15048_3_address0,v15048_3_ce0,v15048_3_we0,v15048_3_d0,v15048_4_address0,v15048_4_ce0,v15048_4_we0,v15048_4_d0,v15048_5_address0,v15048_5_ce0,v15048_5_we0,v15048_5_d0,v15048_6_address0,v15048_6_ce0,v15048_6_we0,v15048_6_d0,v15048_7_address0,v15048_7_ce0,v15048_7_we0,v15048_7_d0,v15048_8_address0,v15048_8_ce0,v15048_8_we0,v15048_8_d0,v15048_9_address0,v15048_9_ce0,v15048_9_we0,v15048_9_d0,v15048_10_address0,v15048_10_ce0,v15048_10_we0,v15048_10_d0,v15048_11_address0,v15048_11_ce0,v15048_11_we0,v15048_11_d0,v15048_12_address0,v15048_12_ce0,v15048_12_we0,v15048_12_d0,v15048_13_address0,v15048_13_ce0,v15048_13_we0,v15048_13_d0,v15048_14_address0,v15048_14_ce0,v15048_14_we0,v15048_14_d0,v15048_15_address0,v15048_15_ce0,v15048_15_we0,v15048_15_d0,v15043,v15435_0_0_0_address0,v15435_0_0_0_ce0,v15435_0_0_0_q0,v15435_0_0_1_address0,v15435_0_0_1_ce0,v15435_0_0_1_q0,v15435_0_0_2_address0,v15435_0_0_2_ce0,v15435_0_0_2_q0,v15435_0_0_3_address0,v15435_0_0_3_ce0,v15435_0_0_3_q0,v15435_0_1_0_address0,v15435_0_1_0_ce0,v15435_0_1_0_q0,v15435_0_1_1_address0,v15435_0_1_1_ce0,v15435_0_1_1_q0,v15435_0_1_2_address0,v15435_0_1_2_ce0,v15435_0_1_2_q0,v15435_0_1_3_address0,v15435_0_1_3_ce0,v15435_0_1_3_q0,v15435_1_0_0_address0,v15435_1_0_0_ce0,v15435_1_0_0_q0,v15435_1_0_1_address0,v15435_1_0_1_ce0,v15435_1_0_1_q0,v15435_1_0_2_address0,v15435_1_0_2_ce0,v15435_1_0_2_q0,v15435_1_0_3_address0,v15435_1_0_3_ce0,v15435_1_0_3_q0,v15435_1_1_0_address0,v15435_1_1_0_ce0,v15435_1_1_0_q0,v15435_1_1_1_address0,v15435_1_1_1_ce0,v15435_1_1_1_q0,v15435_1_1_2_address0,v15435_1_1_2_ce0,v15435_1_1_2_q0,v15435_1_1_3_address0,v15435_1_1_3_ce0,v15435_1_1_3_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v15048_address0;
output   v15048_ce0;
output   v15048_we0;
output  [7:0] v15048_d0;
output  [10:0] v15048_1_address0;
output   v15048_1_ce0;
output   v15048_1_we0;
output  [7:0] v15048_1_d0;
output  [10:0] v15048_2_address0;
output   v15048_2_ce0;
output   v15048_2_we0;
output  [7:0] v15048_2_d0;
output  [10:0] v15048_3_address0;
output   v15048_3_ce0;
output   v15048_3_we0;
output  [7:0] v15048_3_d0;
output  [10:0] v15048_4_address0;
output   v15048_4_ce0;
output   v15048_4_we0;
output  [7:0] v15048_4_d0;
output  [10:0] v15048_5_address0;
output   v15048_5_ce0;
output   v15048_5_we0;
output  [7:0] v15048_5_d0;
output  [10:0] v15048_6_address0;
output   v15048_6_ce0;
output   v15048_6_we0;
output  [7:0] v15048_6_d0;
output  [10:0] v15048_7_address0;
output   v15048_7_ce0;
output   v15048_7_we0;
output  [7:0] v15048_7_d0;
output  [10:0] v15048_8_address0;
output   v15048_8_ce0;
output   v15048_8_we0;
output  [7:0] v15048_8_d0;
output  [10:0] v15048_9_address0;
output   v15048_9_ce0;
output   v15048_9_we0;
output  [7:0] v15048_9_d0;
output  [10:0] v15048_10_address0;
output   v15048_10_ce0;
output   v15048_10_we0;
output  [7:0] v15048_10_d0;
output  [10:0] v15048_11_address0;
output   v15048_11_ce0;
output   v15048_11_we0;
output  [7:0] v15048_11_d0;
output  [10:0] v15048_12_address0;
output   v15048_12_ce0;
output   v15048_12_we0;
output  [7:0] v15048_12_d0;
output  [10:0] v15048_13_address0;
output   v15048_13_ce0;
output   v15048_13_we0;
output  [7:0] v15048_13_d0;
output  [10:0] v15048_14_address0;
output   v15048_14_ce0;
output   v15048_14_we0;
output  [7:0] v15048_14_d0;
output  [10:0] v15048_15_address0;
output   v15048_15_ce0;
output   v15048_15_we0;
output  [7:0] v15048_15_d0;
input  [4:0] v15043;
output  [15:0] v15435_0_0_0_address0;
output   v15435_0_0_0_ce0;
input  [7:0] v15435_0_0_0_q0;
output  [15:0] v15435_0_0_1_address0;
output   v15435_0_0_1_ce0;
input  [7:0] v15435_0_0_1_q0;
output  [15:0] v15435_0_0_2_address0;
output   v15435_0_0_2_ce0;
input  [7:0] v15435_0_0_2_q0;
output  [15:0] v15435_0_0_3_address0;
output   v15435_0_0_3_ce0;
input  [7:0] v15435_0_0_3_q0;
output  [15:0] v15435_0_1_0_address0;
output   v15435_0_1_0_ce0;
input  [7:0] v15435_0_1_0_q0;
output  [15:0] v15435_0_1_1_address0;
output   v15435_0_1_1_ce0;
input  [7:0] v15435_0_1_1_q0;
output  [15:0] v15435_0_1_2_address0;
output   v15435_0_1_2_ce0;
input  [7:0] v15435_0_1_2_q0;
output  [15:0] v15435_0_1_3_address0;
output   v15435_0_1_3_ce0;
input  [7:0] v15435_0_1_3_q0;
output  [15:0] v15435_1_0_0_address0;
output   v15435_1_0_0_ce0;
input  [7:0] v15435_1_0_0_q0;
output  [15:0] v15435_1_0_1_address0;
output   v15435_1_0_1_ce0;
input  [7:0] v15435_1_0_1_q0;
output  [15:0] v15435_1_0_2_address0;
output   v15435_1_0_2_ce0;
input  [7:0] v15435_1_0_2_q0;
output  [15:0] v15435_1_0_3_address0;
output   v15435_1_0_3_ce0;
input  [7:0] v15435_1_0_3_q0;
output  [15:0] v15435_1_1_0_address0;
output   v15435_1_1_0_ce0;
input  [7:0] v15435_1_1_0_q0;
output  [15:0] v15435_1_1_1_address0;
output   v15435_1_1_1_ce0;
input  [7:0] v15435_1_1_1_q0;
output  [15:0] v15435_1_1_2_address0;
output   v15435_1_1_2_ce0;
input  [7:0] v15435_1_1_2_q0;
output  [15:0] v15435_1_1_3_address0;
output   v15435_1_1_3_ce0;
input  [7:0] v15435_1_1_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_fu_204_p3;
reg   [0:0] tmp_reg_312;
reg    ap_block_state1;
wire   [5:0] mul_i179_i_i_fu_213_p3;
reg   [5:0] mul_i179_i_i_reg_317;
wire   [6:0] mul9_i218_i_i_fu_252_p2;
reg   [6:0] mul9_i218_i_i_reg_322;
reg   [5:0] p_udiv24_cast_i_i_reg_327;
wire   [6:0] mul13_i221_i_i_fu_294_p2;
reg   [6:0] mul13_i221_i_i_reg_332;
reg   [4:0] trunc_ln_i_reg_337;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_ready;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_3_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_3_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_3_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start_reg;
reg    ap_block_state1_ignore_call64;
wire    ap_CS_fsm_state2;
wire   [6:0] v15043_cast1_fu_200_p1;
wire   [1:0] tmp_130_fu_222_p4;
wire   [3:0] tmp_131_fu_240_p3;
wire   [6:0] p_shl6_fu_232_p3;
wire   [6:0] p_shl7_fu_248_p1;
wire   [1:0] empty_fu_270_p1;
wire   [3:0] tmp_132_fu_282_p3;
wire   [6:0] p_shl_fu_274_p3;
wire   [6:0] p_shl5_fu_290_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_ready),.mul_i179_i_i(mul_i179_i_i_reg_317),.empty(tmp_reg_312),.mul9_i218_i_i(mul9_i218_i_i_reg_322),.p_udiv24_cast_i_i(p_udiv24_cast_i_i_reg_327),.v15048_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_address0),.v15048_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_ce0),.v15048_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_we0),.v15048_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_d0),.v15048_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_address0),.v15048_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_ce0),.v15048_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_we0),.v15048_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_d0),.v15048_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_address0),.v15048_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_ce0),.v15048_2_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_we0),.v15048_2_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_d0),.v15048_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_address0),.v15048_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_ce0),.v15048_3_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_we0),.v15048_3_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_d0),.v15048_4_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_address0),.v15048_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_ce0),.v15048_4_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_we0),.v15048_4_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_d0),.v15048_5_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_address0),.v15048_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_ce0),.v15048_5_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_we0),.v15048_5_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_d0),.v15048_6_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_address0),.v15048_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_ce0),.v15048_6_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_we0),.v15048_6_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_d0),.v15048_7_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_address0),.v15048_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_ce0),.v15048_7_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_we0),.v15048_7_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_d0),.v15048_8_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_address0),.v15048_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_ce0),.v15048_8_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_we0),.v15048_8_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_d0),.v15048_9_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_address0),.v15048_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_ce0),.v15048_9_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_we0),.v15048_9_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_d0),.v15048_10_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_address0),.v15048_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_ce0),.v15048_10_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_we0),.v15048_10_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_d0),.v15048_11_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_address0),.v15048_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_ce0),.v15048_11_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_we0),.v15048_11_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_d0),.v15048_12_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_address0),.v15048_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_ce0),.v15048_12_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_we0),.v15048_12_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_d0),.v15048_13_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_address0),.v15048_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_ce0),.v15048_13_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_we0),.v15048_13_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_d0),.v15048_14_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_address0),.v15048_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_ce0),.v15048_14_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_we0),.v15048_14_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_d0),.v15048_15_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_address0),.v15048_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_ce0),.v15048_15_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_we0),.v15048_15_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_d0),.mul13_i221_i_i(mul13_i221_i_i_reg_332),.trunc_ln_i(trunc_ln_i_reg_337),.v15435_0_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_0_address0),.v15435_0_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_0_ce0),.v15435_0_0_0_q0(v15435_0_0_0_q0),.v15435_0_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_0_address0),.v15435_0_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_0_ce0),.v15435_0_1_0_q0(v15435_0_1_0_q0),.v15435_1_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_0_address0),.v15435_1_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_0_ce0),.v15435_1_0_0_q0(v15435_1_0_0_q0),.v15435_1_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_0_address0),.v15435_1_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_0_ce0),.v15435_1_1_0_q0(v15435_1_1_0_q0),.v15435_0_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_1_address0),.v15435_0_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_1_ce0),.v15435_0_0_1_q0(v15435_0_0_1_q0),.v15435_0_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_2_address0),.v15435_0_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_2_ce0),.v15435_0_0_2_q0(v15435_0_0_2_q0),.v15435_0_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_3_address0),.v15435_0_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_3_ce0),.v15435_0_0_3_q0(v15435_0_0_3_q0),.v15435_0_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_1_address0),.v15435_0_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_1_ce0),.v15435_0_1_1_q0(v15435_0_1_1_q0),.v15435_0_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_2_address0),.v15435_0_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_2_ce0),.v15435_0_1_2_q0(v15435_0_1_2_q0),.v15435_0_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_3_address0),.v15435_0_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_3_ce0),.v15435_0_1_3_q0(v15435_0_1_3_q0),.v15435_1_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_1_address0),.v15435_1_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_1_ce0),.v15435_1_0_1_q0(v15435_1_0_1_q0),.v15435_1_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_2_address0),.v15435_1_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_2_ce0),.v15435_1_0_2_q0(v15435_1_0_2_q0),.v15435_1_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_3_address0),.v15435_1_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_3_ce0),.v15435_1_0_3_q0(v15435_1_0_3_q0),.v15435_1_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_1_address0),.v15435_1_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_1_ce0),.v15435_1_1_1_q0(v15435_1_1_1_q0),.v15435_1_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_2_address0),.v15435_1_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_2_ce0),.v15435_1_1_2_q0(v15435_1_1_2_q0),.v15435_1_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_3_address0),.v15435_1_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_3_ce0),.v15435_1_1_3_q0(v15435_1_1_3_q0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call64) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul13_i221_i_i_reg_332[6 : 2] <= mul13_i221_i_i_fu_294_p2[6 : 2];
        mul9_i218_i_i_reg_322[6 : 2] <= mul9_i218_i_i_fu_252_p2[6 : 2];
        mul_i179_i_i_reg_317[5] <= mul_i179_i_i_fu_213_p3[5];
        p_udiv24_cast_i_i_reg_327 <= {{mul9_i218_i_i_fu_252_p2[6:1]}};
        tmp_reg_312 <= v15043_cast1_fu_200_p1[32'd4];
        trunc_ln_i_reg_337 <= {{mul13_i221_i_i_fu_294_p2[6:2]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call64 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_270_p1 = v15043[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_ap_start_reg;
assign mul13_i221_i_i_fu_294_p2 = (p_shl_fu_274_p3 - p_shl5_fu_290_p1);
assign mul9_i218_i_i_fu_252_p2 = (p_shl6_fu_232_p3 - p_shl7_fu_248_p1);
assign mul_i179_i_i_fu_213_p3 = {{tmp_fu_204_p3}, {5'd0}};
assign p_shl5_fu_290_p1 = tmp_132_fu_282_p3;
assign p_shl6_fu_232_p3 = {{tmp_130_fu_222_p4}, {5'd0}};
assign p_shl7_fu_248_p1 = tmp_131_fu_240_p3;
assign p_shl_fu_274_p3 = {{empty_fu_270_p1}, {5'd0}};
assign tmp_130_fu_222_p4 = {{v15043[3:2]}};
assign tmp_131_fu_240_p3 = {{tmp_130_fu_222_p4}, {2'd0}};
assign tmp_132_fu_282_p3 = {{empty_fu_270_p1}, {2'd0}};
assign tmp_fu_204_p3 = v15043_cast1_fu_200_p1[32'd4];
assign v15043_cast1_fu_200_p1 = v15043;
assign v15048_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_address0;
assign v15048_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_ce0;
assign v15048_10_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_d0;
assign v15048_10_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_10_we0;
assign v15048_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_address0;
assign v15048_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_ce0;
assign v15048_11_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_d0;
assign v15048_11_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_11_we0;
assign v15048_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_address0;
assign v15048_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_ce0;
assign v15048_12_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_d0;
assign v15048_12_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_12_we0;
assign v15048_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_address0;
assign v15048_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_ce0;
assign v15048_13_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_d0;
assign v15048_13_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_13_we0;
assign v15048_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_address0;
assign v15048_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_ce0;
assign v15048_14_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_d0;
assign v15048_14_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_14_we0;
assign v15048_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_address0;
assign v15048_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_ce0;
assign v15048_15_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_d0;
assign v15048_15_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_15_we0;
assign v15048_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_address0;
assign v15048_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_ce0;
assign v15048_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_d0;
assign v15048_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_1_we0;
assign v15048_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_address0;
assign v15048_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_ce0;
assign v15048_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_d0;
assign v15048_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_2_we0;
assign v15048_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_address0;
assign v15048_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_ce0;
assign v15048_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_d0;
assign v15048_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_3_we0;
assign v15048_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_address0;
assign v15048_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_ce0;
assign v15048_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_d0;
assign v15048_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_4_we0;
assign v15048_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_address0;
assign v15048_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_ce0;
assign v15048_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_d0;
assign v15048_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_5_we0;
assign v15048_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_address0;
assign v15048_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_ce0;
assign v15048_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_d0;
assign v15048_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_6_we0;
assign v15048_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_address0;
assign v15048_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_ce0;
assign v15048_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_d0;
assign v15048_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_7_we0;
assign v15048_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_address0;
assign v15048_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_ce0;
assign v15048_8_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_d0;
assign v15048_8_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_8_we0;
assign v15048_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_address0;
assign v15048_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_ce0;
assign v15048_9_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_d0;
assign v15048_9_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_9_we0;
assign v15048_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_address0;
assign v15048_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_ce0;
assign v15048_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_d0;
assign v15048_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15048_we0;
assign v15435_0_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_0_address0;
assign v15435_0_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_0_ce0;
assign v15435_0_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_1_address0;
assign v15435_0_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_1_ce0;
assign v15435_0_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_2_address0;
assign v15435_0_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_2_ce0;
assign v15435_0_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_3_address0;
assign v15435_0_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_0_3_ce0;
assign v15435_0_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_0_address0;
assign v15435_0_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_0_ce0;
assign v15435_0_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_1_address0;
assign v15435_0_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_1_ce0;
assign v15435_0_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_2_address0;
assign v15435_0_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_2_ce0;
assign v15435_0_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_3_address0;
assign v15435_0_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_0_1_3_ce0;
assign v15435_1_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_0_address0;
assign v15435_1_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_0_ce0;
assign v15435_1_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_1_address0;
assign v15435_1_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_1_ce0;
assign v15435_1_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_2_address0;
assign v15435_1_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_2_ce0;
assign v15435_1_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_3_address0;
assign v15435_1_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_0_3_ce0;
assign v15435_1_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_0_address0;
assign v15435_1_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_0_ce0;
assign v15435_1_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_1_address0;
assign v15435_1_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_1_ce0;
assign v15435_1_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_2_address0;
assign v15435_1_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_2_ce0;
assign v15435_1_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_3_address0;
assign v15435_1_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V_fu_126_v15435_1_1_3_ce0;
always @ (posedge ap_clk) begin
    mul_i179_i_i_reg_317[4:0] <= 5'b00000;
    mul9_i218_i_i_reg_322[1:0] <= 2'b00;
    mul13_i221_i_i_reg_332[1:0] <= 2'b00;
end
endmodule 
