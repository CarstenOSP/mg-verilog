module forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15434_1_1_3_address0,v15434_1_1_3_ce0,v15434_1_1_3_we0,v15434_1_1_3_d0,v15434_1_1_2_address0,v15434_1_1_2_ce0,v15434_1_1_2_we0,v15434_1_1_2_d0,v15434_1_1_1_address0,v15434_1_1_1_ce0,v15434_1_1_1_we0,v15434_1_1_1_d0,v15434_1_1_0_address0,v15434_1_1_0_ce0,v15434_1_1_0_we0,v15434_1_1_0_d0,v15434_1_0_3_address0,v15434_1_0_3_ce0,v15434_1_0_3_we0,v15434_1_0_3_d0,v15434_1_0_2_address0,v15434_1_0_2_ce0,v15434_1_0_2_we0,v15434_1_0_2_d0,v15434_1_0_1_address0,v15434_1_0_1_ce0,v15434_1_0_1_we0,v15434_1_0_1_d0,v15434_1_0_0_address0,v15434_1_0_0_ce0,v15434_1_0_0_we0,v15434_1_0_0_d0,v15434_0_1_3_address0,v15434_0_1_3_ce0,v15434_0_1_3_we0,v15434_0_1_3_d0,v15434_0_1_2_address0,v15434_0_1_2_ce0,v15434_0_1_2_we0,v15434_0_1_2_d0,v15434_0_1_1_address0,v15434_0_1_1_ce0,v15434_0_1_1_we0,v15434_0_1_1_d0,v15434_0_1_0_address0,v15434_0_1_0_ce0,v15434_0_1_0_we0,v15434_0_1_0_d0,v15434_0_0_3_address0,v15434_0_0_3_ce0,v15434_0_0_3_we0,v15434_0_0_3_d0,v15434_0_0_2_address0,v15434_0_0_2_ce0,v15434_0_0_2_we0,v15434_0_0_2_d0,v15434_0_0_1_address0,v15434_0_0_1_ce0,v15434_0_0_1_we0,v15434_0_0_1_d0,v15434_0_0_0_address0,v15434_0_0_0_ce0,v15434_0_0_0_we0,v15434_0_0_0_d0,p_read,v15051_15_i_address0,v15051_15_i_ce0,v15051_15_i_q0,v15051_14_i_address0,v15051_14_i_ce0,v15051_14_i_q0,v15051_13_i_address0,v15051_13_i_ce0,v15051_13_i_q0,v15051_12_i_address0,v15051_12_i_ce0,v15051_12_i_q0,v15051_11_i_address0,v15051_11_i_ce0,v15051_11_i_q0,v15051_10_i_address0,v15051_10_i_ce0,v15051_10_i_q0,v15051_9_i_address0,v15051_9_i_ce0,v15051_9_i_q0,v15051_8_i_address0,v15051_8_i_ce0,v15051_8_i_q0,v15051_7_i_address0,v15051_7_i_ce0,v15051_7_i_q0,v15051_6_i_address0,v15051_6_i_ce0,v15051_6_i_q0,v15051_5_i_address0,v15051_5_i_ce0,v15051_5_i_q0,v15051_4_i_address0,v15051_4_i_ce0,v15051_4_i_q0,v15051_3_i_address0,v15051_3_i_ce0,v15051_3_i_q0,v15051_2_i_address0,v15051_2_i_ce0,v15051_2_i_q0,v15051_1_i_address0,v15051_1_i_ce0,v15051_1_i_q0,v15051_i_address0,v15051_i_ce0,v15051_i_q0); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [15:0] v15434_1_1_3_address0;
output   v15434_1_1_3_ce0;
output   v15434_1_1_3_we0;
output  [7:0] v15434_1_1_3_d0;
output  [15:0] v15434_1_1_2_address0;
output   v15434_1_1_2_ce0;
output   v15434_1_1_2_we0;
output  [7:0] v15434_1_1_2_d0;
output  [15:0] v15434_1_1_1_address0;
output   v15434_1_1_1_ce0;
output   v15434_1_1_1_we0;
output  [7:0] v15434_1_1_1_d0;
output  [15:0] v15434_1_1_0_address0;
output   v15434_1_1_0_ce0;
output   v15434_1_1_0_we0;
output  [7:0] v15434_1_1_0_d0;
output  [15:0] v15434_1_0_3_address0;
output   v15434_1_0_3_ce0;
output   v15434_1_0_3_we0;
output  [7:0] v15434_1_0_3_d0;
output  [15:0] v15434_1_0_2_address0;
output   v15434_1_0_2_ce0;
output   v15434_1_0_2_we0;
output  [7:0] v15434_1_0_2_d0;
output  [15:0] v15434_1_0_1_address0;
output   v15434_1_0_1_ce0;
output   v15434_1_0_1_we0;
output  [7:0] v15434_1_0_1_d0;
output  [15:0] v15434_1_0_0_address0;
output   v15434_1_0_0_ce0;
output   v15434_1_0_0_we0;
output  [7:0] v15434_1_0_0_d0;
output  [15:0] v15434_0_1_3_address0;
output   v15434_0_1_3_ce0;
output   v15434_0_1_3_we0;
output  [7:0] v15434_0_1_3_d0;
output  [15:0] v15434_0_1_2_address0;
output   v15434_0_1_2_ce0;
output   v15434_0_1_2_we0;
output  [7:0] v15434_0_1_2_d0;
output  [15:0] v15434_0_1_1_address0;
output   v15434_0_1_1_ce0;
output   v15434_0_1_1_we0;
output  [7:0] v15434_0_1_1_d0;
output  [15:0] v15434_0_1_0_address0;
output   v15434_0_1_0_ce0;
output   v15434_0_1_0_we0;
output  [7:0] v15434_0_1_0_d0;
output  [15:0] v15434_0_0_3_address0;
output   v15434_0_0_3_ce0;
output   v15434_0_0_3_we0;
output  [7:0] v15434_0_0_3_d0;
output  [15:0] v15434_0_0_2_address0;
output   v15434_0_0_2_ce0;
output   v15434_0_0_2_we0;
output  [7:0] v15434_0_0_2_d0;
output  [15:0] v15434_0_0_1_address0;
output   v15434_0_0_1_ce0;
output   v15434_0_0_1_we0;
output  [7:0] v15434_0_0_1_d0;
output  [15:0] v15434_0_0_0_address0;
output   v15434_0_0_0_ce0;
output   v15434_0_0_0_we0;
output  [7:0] v15434_0_0_0_d0;
input  [4:0] p_read;
output  [10:0] v15051_15_i_address0;
output   v15051_15_i_ce0;
input  [7:0] v15051_15_i_q0;
output  [10:0] v15051_14_i_address0;
output   v15051_14_i_ce0;
input  [7:0] v15051_14_i_q0;
output  [10:0] v15051_13_i_address0;
output   v15051_13_i_ce0;
input  [7:0] v15051_13_i_q0;
output  [10:0] v15051_12_i_address0;
output   v15051_12_i_ce0;
input  [7:0] v15051_12_i_q0;
output  [10:0] v15051_11_i_address0;
output   v15051_11_i_ce0;
input  [7:0] v15051_11_i_q0;
output  [10:0] v15051_10_i_address0;
output   v15051_10_i_ce0;
input  [7:0] v15051_10_i_q0;
output  [10:0] v15051_9_i_address0;
output   v15051_9_i_ce0;
input  [7:0] v15051_9_i_q0;
output  [10:0] v15051_8_i_address0;
output   v15051_8_i_ce0;
input  [7:0] v15051_8_i_q0;
output  [10:0] v15051_7_i_address0;
output   v15051_7_i_ce0;
input  [7:0] v15051_7_i_q0;
output  [10:0] v15051_6_i_address0;
output   v15051_6_i_ce0;
input  [7:0] v15051_6_i_q0;
output  [10:0] v15051_5_i_address0;
output   v15051_5_i_ce0;
input  [7:0] v15051_5_i_q0;
output  [10:0] v15051_4_i_address0;
output   v15051_4_i_ce0;
input  [7:0] v15051_4_i_q0;
output  [10:0] v15051_3_i_address0;
output   v15051_3_i_ce0;
input  [7:0] v15051_3_i_q0;
output  [10:0] v15051_2_i_address0;
output   v15051_2_i_ce0;
input  [7:0] v15051_2_i_q0;
output  [10:0] v15051_1_i_address0;
output   v15051_1_i_ce0;
input  [7:0] v15051_1_i_q0;
output  [10:0] v15051_i_address0;
output   v15051_i_ce0;
input  [7:0] v15051_i_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_fu_200_p3;
reg   [0:0] tmp_reg_308;
reg    ap_block_state1;
wire   [5:0] mul_i179_i_fu_209_p3;
reg   [5:0] mul_i179_i_reg_313;
wire   [6:0] mul9_i218_i_fu_248_p2;
reg   [6:0] mul9_i218_i_reg_318;
reg   [5:0] p_udiv24_cast_i_reg_323;
wire   [6:0] mul13_i221_i_fu_290_p2;
reg   [6:0] mul13_i221_i_reg_328;
reg   [4:0] trunc_ln_reg_333;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_ready;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_15_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_15_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_14_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_14_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_13_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_13_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_12_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_12_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_11_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_11_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_10_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_10_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_9_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_9_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_8_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_8_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_7_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_7_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_6_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_6_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_5_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_5_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_4_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_4_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_3_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_2_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_1_i_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_i_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start_reg;
reg    ap_block_state1_ignore_call63;
wire    ap_CS_fsm_state2;
wire   [1:0] tmp_145_fu_218_p4;
wire   [3:0] tmp_146_fu_236_p3;
wire   [6:0] p_shl136_fu_228_p3;
wire   [6:0] p_shl296_fu_244_p1;
wire   [1:0] empty_fu_266_p1;
wire   [3:0] tmp_147_fu_278_p3;
wire   [6:0] p_shl_fu_270_p3;
wire   [6:0] p_shl294_fu_286_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_ready),.v15434_0_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_address0),.v15434_0_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_ce0),.v15434_0_0_0_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_we0),.v15434_0_0_0_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_d0),.v15434_0_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_address0),.v15434_0_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_ce0),.v15434_0_0_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_we0),.v15434_0_0_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_d0),.v15434_0_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_address0),.v15434_0_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_ce0),.v15434_0_0_2_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_we0),.v15434_0_0_2_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_d0),.v15434_0_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_address0),.v15434_0_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_ce0),.v15434_0_0_3_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_we0),.v15434_0_0_3_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_d0),.v15434_0_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_address0),.v15434_0_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_ce0),.v15434_0_1_0_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_we0),.v15434_0_1_0_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_d0),.v15434_0_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_address0),.v15434_0_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_ce0),.v15434_0_1_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_we0),.v15434_0_1_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_d0),.v15434_0_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_address0),.v15434_0_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_ce0),.v15434_0_1_2_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_we0),.v15434_0_1_2_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_d0),.v15434_0_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_address0),.v15434_0_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_ce0),.v15434_0_1_3_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_we0),.v15434_0_1_3_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_d0),.v15434_1_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_address0),.v15434_1_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_ce0),.v15434_1_0_0_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_we0),.v15434_1_0_0_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_d0),.v15434_1_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_address0),.v15434_1_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_ce0),.v15434_1_0_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_we0),.v15434_1_0_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_d0),.v15434_1_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_address0),.v15434_1_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_ce0),.v15434_1_0_2_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_we0),.v15434_1_0_2_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_d0),.v15434_1_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_address0),.v15434_1_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_ce0),.v15434_1_0_3_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_we0),.v15434_1_0_3_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_d0),.v15434_1_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_address0),.v15434_1_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_ce0),.v15434_1_1_0_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_we0),.v15434_1_1_0_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_d0),.v15434_1_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_address0),.v15434_1_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_ce0),.v15434_1_1_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_we0),.v15434_1_1_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_d0),.v15434_1_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_address0),.v15434_1_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_ce0),.v15434_1_1_2_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_we0),.v15434_1_1_2_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_d0),.v15434_1_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_address0),.v15434_1_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_ce0),.v15434_1_1_3_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_we0),.v15434_1_1_3_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_d0),.mul_i179_i(mul_i179_i_reg_313),.empty(tmp_reg_308),.mul9_i218_i(mul9_i218_i_reg_318),.p_udiv24_cast_i(p_udiv24_cast_i_reg_323),.v15051_15_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_15_i_address0),.v15051_15_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_15_i_ce0),.v15051_15_i_q0(v15051_15_i_q0),.v15051_14_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_14_i_address0),.v15051_14_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_14_i_ce0),.v15051_14_i_q0(v15051_14_i_q0),.v15051_13_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_13_i_address0),.v15051_13_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_13_i_ce0),.v15051_13_i_q0(v15051_13_i_q0),.v15051_12_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_12_i_address0),.v15051_12_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_12_i_ce0),.v15051_12_i_q0(v15051_12_i_q0),.v15051_11_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_11_i_address0),.v15051_11_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_11_i_ce0),.v15051_11_i_q0(v15051_11_i_q0),.v15051_10_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_10_i_address0),.v15051_10_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_10_i_ce0),.v15051_10_i_q0(v15051_10_i_q0),.v15051_9_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_9_i_address0),.v15051_9_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_9_i_ce0),.v15051_9_i_q0(v15051_9_i_q0),.v15051_8_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_8_i_address0),.v15051_8_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_8_i_ce0),.v15051_8_i_q0(v15051_8_i_q0),.v15051_7_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_7_i_address0),.v15051_7_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_7_i_ce0),.v15051_7_i_q0(v15051_7_i_q0),.v15051_6_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_6_i_address0),.v15051_6_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_6_i_ce0),.v15051_6_i_q0(v15051_6_i_q0),.v15051_5_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_5_i_address0),.v15051_5_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_5_i_ce0),.v15051_5_i_q0(v15051_5_i_q0),.v15051_4_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_4_i_address0),.v15051_4_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_4_i_ce0),.v15051_4_i_q0(v15051_4_i_q0),.v15051_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_3_i_address0),.v15051_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_3_i_ce0),.v15051_3_i_q0(v15051_3_i_q0),.v15051_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_2_i_address0),.v15051_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_2_i_ce0),.v15051_2_i_q0(v15051_2_i_q0),.v15051_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_1_i_address0),.v15051_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_1_i_ce0),.v15051_1_i_q0(v15051_1_i_q0),.v15051_i_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_i_address0),.v15051_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_i_ce0),.v15051_i_q0(v15051_i_q0),.mul13_i221_i(mul13_i221_i_reg_328),.trunc_ln(trunc_ln_reg_333));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call63) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul13_i221_i_reg_328[6 : 2] <= mul13_i221_i_fu_290_p2[6 : 2];
        mul9_i218_i_reg_318[6 : 2] <= mul9_i218_i_fu_248_p2[6 : 2];
        mul_i179_i_reg_313[5] <= mul_i179_i_fu_209_p3[5];
        p_udiv24_cast_i_reg_323 <= {{mul9_i218_i_fu_248_p2[6:1]}};
        tmp_reg_308 <= p_read[32'd4];
        trunc_ln_reg_333 <= {{mul13_i221_i_fu_290_p2[6:2]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1_ignore_call63 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_266_p1 = p_read[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_ap_start_reg;
assign mul13_i221_i_fu_290_p2 = (p_shl_fu_270_p3 - p_shl294_fu_286_p1);
assign mul9_i218_i_fu_248_p2 = (p_shl136_fu_228_p3 - p_shl296_fu_244_p1);
assign mul_i179_i_fu_209_p3 = {{tmp_fu_200_p3}, {5'd0}};
assign p_shl136_fu_228_p3 = {{tmp_145_fu_218_p4}, {5'd0}};
assign p_shl294_fu_286_p1 = tmp_147_fu_278_p3;
assign p_shl296_fu_244_p1 = tmp_146_fu_236_p3;
assign p_shl_fu_270_p3 = {{empty_fu_266_p1}, {5'd0}};
assign tmp_145_fu_218_p4 = {{p_read[3:2]}};
assign tmp_146_fu_236_p3 = {{tmp_145_fu_218_p4}, {2'd0}};
assign tmp_147_fu_278_p3 = {{empty_fu_266_p1}, {2'd0}};
assign tmp_fu_200_p3 = p_read[32'd4];
assign v15051_10_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_10_i_address0;
assign v15051_10_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_10_i_ce0;
assign v15051_11_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_11_i_address0;
assign v15051_11_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_11_i_ce0;
assign v15051_12_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_12_i_address0;
assign v15051_12_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_12_i_ce0;
assign v15051_13_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_13_i_address0;
assign v15051_13_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_13_i_ce0;
assign v15051_14_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_14_i_address0;
assign v15051_14_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_14_i_ce0;
assign v15051_15_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_15_i_address0;
assign v15051_15_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_15_i_ce0;
assign v15051_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_1_i_address0;
assign v15051_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_1_i_ce0;
assign v15051_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_2_i_address0;
assign v15051_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_2_i_ce0;
assign v15051_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_3_i_address0;
assign v15051_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_3_i_ce0;
assign v15051_4_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_4_i_address0;
assign v15051_4_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_4_i_ce0;
assign v15051_5_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_5_i_address0;
assign v15051_5_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_5_i_ce0;
assign v15051_6_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_6_i_address0;
assign v15051_6_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_6_i_ce0;
assign v15051_7_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_7_i_address0;
assign v15051_7_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_7_i_ce0;
assign v15051_8_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_8_i_address0;
assign v15051_8_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_8_i_ce0;
assign v15051_9_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_9_i_address0;
assign v15051_9_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_9_i_ce0;
assign v15051_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_i_address0;
assign v15051_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15051_i_ce0;
assign v15434_0_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_address0;
assign v15434_0_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_ce0;
assign v15434_0_0_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_d0;
assign v15434_0_0_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_0_we0;
assign v15434_0_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_address0;
assign v15434_0_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_ce0;
assign v15434_0_0_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_d0;
assign v15434_0_0_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_1_we0;
assign v15434_0_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_address0;
assign v15434_0_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_ce0;
assign v15434_0_0_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_d0;
assign v15434_0_0_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_2_we0;
assign v15434_0_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_address0;
assign v15434_0_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_ce0;
assign v15434_0_0_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_d0;
assign v15434_0_0_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_0_3_we0;
assign v15434_0_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_address0;
assign v15434_0_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_ce0;
assign v15434_0_1_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_d0;
assign v15434_0_1_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_0_we0;
assign v15434_0_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_address0;
assign v15434_0_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_ce0;
assign v15434_0_1_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_d0;
assign v15434_0_1_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_1_we0;
assign v15434_0_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_address0;
assign v15434_0_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_ce0;
assign v15434_0_1_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_d0;
assign v15434_0_1_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_2_we0;
assign v15434_0_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_address0;
assign v15434_0_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_ce0;
assign v15434_0_1_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_d0;
assign v15434_0_1_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_0_1_3_we0;
assign v15434_1_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_address0;
assign v15434_1_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_ce0;
assign v15434_1_0_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_d0;
assign v15434_1_0_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_0_we0;
assign v15434_1_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_address0;
assign v15434_1_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_ce0;
assign v15434_1_0_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_d0;
assign v15434_1_0_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_1_we0;
assign v15434_1_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_address0;
assign v15434_1_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_ce0;
assign v15434_1_0_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_d0;
assign v15434_1_0_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_2_we0;
assign v15434_1_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_address0;
assign v15434_1_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_ce0;
assign v15434_1_0_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_d0;
assign v15434_1_0_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_0_3_we0;
assign v15434_1_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_address0;
assign v15434_1_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_ce0;
assign v15434_1_1_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_d0;
assign v15434_1_1_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_0_we0;
assign v15434_1_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_address0;
assign v15434_1_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_ce0;
assign v15434_1_1_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_d0;
assign v15434_1_1_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_1_we0;
assign v15434_1_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_address0;
assign v15434_1_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_ce0;
assign v15434_1_1_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_d0;
assign v15434_1_1_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_2_we0;
assign v15434_1_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_address0;
assign v15434_1_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_ce0;
assign v15434_1_1_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_d0;
assign v15434_1_1_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19104_1_proc18051_Pipeline_V_fu_126_v15434_1_1_3_we0;
always @ (posedge ap_clk) begin
    mul_i179_i_reg_313[4:0] <= 5'b00000;
    mul9_i218_i_reg_318[1:0] <= 2'b00;
    mul13_i221_i_reg_328[1:0] <= 2'b00;
end
endmodule 