
module forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15050_address0,v15050_ce0,v15050_we0,v15050_d0,v15050_1_address0,v15050_1_ce0,v15050_1_we0,v15050_1_d0,v15050_2_address0,v15050_2_ce0,v15050_2_we0,v15050_2_d0,v15050_3_address0,v15050_3_ce0,v15050_3_we0,v15050_3_d0,v15050_4_address0,v15050_4_ce0,v15050_4_we0,v15050_4_d0,v15050_5_address0,v15050_5_ce0,v15050_5_we0,v15050_5_d0,v15050_6_address0,v15050_6_ce0,v15050_6_we0,v15050_6_d0,v15050_7_address0,v15050_7_ce0,v15050_7_we0,v15050_7_d0,v15050_8_address0,v15050_8_ce0,v15050_8_we0,v15050_8_d0,v15050_9_address0,v15050_9_ce0,v15050_9_we0,v15050_9_d0,v15050_10_address0,v15050_10_ce0,v15050_10_we0,v15050_10_d0,v15050_11_address0,v15050_11_ce0,v15050_11_we0,v15050_11_d0,v15050_12_address0,v15050_12_ce0,v15050_12_we0,v15050_12_d0,v15050_13_address0,v15050_13_ce0,v15050_13_we0,v15050_13_d0,v15050_14_address0,v15050_14_ce0,v15050_14_we0,v15050_14_d0,v15050_15_address0,v15050_15_ce0,v15050_15_we0,v15050_15_d0,v15043,v15433_0_0_0_address0,v15433_0_0_0_ce0,v15433_0_0_0_q0,v15433_0_0_1_address0,v15433_0_0_1_ce0,v15433_0_0_1_q0,v15433_0_0_2_address0,v15433_0_0_2_ce0,v15433_0_0_2_q0,v15433_0_0_3_address0,v15433_0_0_3_ce0,v15433_0_0_3_q0,v15433_0_1_0_address0,v15433_0_1_0_ce0,v15433_0_1_0_q0,v15433_0_1_1_address0,v15433_0_1_1_ce0,v15433_0_1_1_q0,v15433_0_1_2_address0,v15433_0_1_2_ce0,v15433_0_1_2_q0,v15433_0_1_3_address0,v15433_0_1_3_ce0,v15433_0_1_3_q0,v15433_1_0_0_address0,v15433_1_0_0_ce0,v15433_1_0_0_q0,v15433_1_0_1_address0,v15433_1_0_1_ce0,v15433_1_0_1_q0,v15433_1_0_2_address0,v15433_1_0_2_ce0,v15433_1_0_2_q0,v15433_1_0_3_address0,v15433_1_0_3_ce0,v15433_1_0_3_q0,v15433_1_1_0_address0,v15433_1_1_0_ce0,v15433_1_1_0_q0,v15433_1_1_1_address0,v15433_1_1_1_ce0,v15433_1_1_1_q0,v15433_1_1_2_address0,v15433_1_1_2_ce0,v15433_1_1_2_q0,v15433_1_1_3_address0,v15433_1_1_3_ce0,v15433_1_1_3_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v15050_address0;
output   v15050_ce0;
output   v15050_we0;
output  [7:0] v15050_d0;
output  [9:0] v15050_1_address0;
output   v15050_1_ce0;
output   v15050_1_we0;
output  [7:0] v15050_1_d0;
output  [9:0] v15050_2_address0;
output   v15050_2_ce0;
output   v15050_2_we0;
output  [7:0] v15050_2_d0;
output  [9:0] v15050_3_address0;
output   v15050_3_ce0;
output   v15050_3_we0;
output  [7:0] v15050_3_d0;
output  [9:0] v15050_4_address0;
output   v15050_4_ce0;
output   v15050_4_we0;
output  [7:0] v15050_4_d0;
output  [9:0] v15050_5_address0;
output   v15050_5_ce0;
output   v15050_5_we0;
output  [7:0] v15050_5_d0;
output  [9:0] v15050_6_address0;
output   v15050_6_ce0;
output   v15050_6_we0;
output  [7:0] v15050_6_d0;
output  [9:0] v15050_7_address0;
output   v15050_7_ce0;
output   v15050_7_we0;
output  [7:0] v15050_7_d0;
output  [9:0] v15050_8_address0;
output   v15050_8_ce0;
output   v15050_8_we0;
output  [7:0] v15050_8_d0;
output  [9:0] v15050_9_address0;
output   v15050_9_ce0;
output   v15050_9_we0;
output  [7:0] v15050_9_d0;
output  [9:0] v15050_10_address0;
output   v15050_10_ce0;
output   v15050_10_we0;
output  [7:0] v15050_10_d0;
output  [9:0] v15050_11_address0;
output   v15050_11_ce0;
output   v15050_11_we0;
output  [7:0] v15050_11_d0;
output  [9:0] v15050_12_address0;
output   v15050_12_ce0;
output   v15050_12_we0;
output  [7:0] v15050_12_d0;
output  [9:0] v15050_13_address0;
output   v15050_13_ce0;
output   v15050_13_we0;
output  [7:0] v15050_13_d0;
output  [9:0] v15050_14_address0;
output   v15050_14_ce0;
output   v15050_14_we0;
output  [7:0] v15050_14_d0;
output  [9:0] v15050_15_address0;
output   v15050_15_ce0;
output   v15050_15_we0;
output  [7:0] v15050_15_d0;
input  [5:0] v15043;
output  [14:0] v15433_0_0_0_address0;
output   v15433_0_0_0_ce0;
input  [7:0] v15433_0_0_0_q0;
output  [14:0] v15433_0_0_1_address0;
output   v15433_0_0_1_ce0;
input  [7:0] v15433_0_0_1_q0;
output  [14:0] v15433_0_0_2_address0;
output   v15433_0_0_2_ce0;
input  [7:0] v15433_0_0_2_q0;
output  [14:0] v15433_0_0_3_address0;
output   v15433_0_0_3_ce0;
input  [7:0] v15433_0_0_3_q0;
output  [14:0] v15433_0_1_0_address0;
output   v15433_0_1_0_ce0;
input  [7:0] v15433_0_1_0_q0;
output  [14:0] v15433_0_1_1_address0;
output   v15433_0_1_1_ce0;
input  [7:0] v15433_0_1_1_q0;
output  [14:0] v15433_0_1_2_address0;
output   v15433_0_1_2_ce0;
input  [7:0] v15433_0_1_2_q0;
output  [14:0] v15433_0_1_3_address0;
output   v15433_0_1_3_ce0;
input  [7:0] v15433_0_1_3_q0;
output  [14:0] v15433_1_0_0_address0;
output   v15433_1_0_0_ce0;
input  [7:0] v15433_1_0_0_q0;
output  [14:0] v15433_1_0_1_address0;
output   v15433_1_0_1_ce0;
input  [7:0] v15433_1_0_1_q0;
output  [14:0] v15433_1_0_2_address0;
output   v15433_1_0_2_ce0;
input  [7:0] v15433_1_0_2_q0;
output  [14:0] v15433_1_0_3_address0;
output   v15433_1_0_3_ce0;
input  [7:0] v15433_1_0_3_q0;
output  [14:0] v15433_1_1_0_address0;
output   v15433_1_1_0_ce0;
input  [7:0] v15433_1_1_0_q0;
output  [14:0] v15433_1_1_1_address0;
output   v15433_1_1_1_ce0;
input  [7:0] v15433_1_1_1_q0;
output  [14:0] v15433_1_1_2_address0;
output   v15433_1_1_2_ce0;
input  [7:0] v15433_1_1_2_q0;
output  [14:0] v15433_1_1_3_address0;
output   v15433_1_1_3_ce0;
input  [7:0] v15433_1_1_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_fu_206_p3;
reg   [0:0] tmp_reg_314;
reg    ap_block_state1;
wire   [4:0] mul_i215_i_i_fu_215_p3;
reg   [4:0] mul_i215_i_i_reg_319;
wire   [6:0] mul9_i218_i_i_fu_254_p2;
reg   [6:0] mul9_i218_i_i_reg_324;
reg   [5:0] p_udiv24_cast_i_i_reg_329;
wire   [6:0] mul13_i221_i_i_fu_296_p2;
reg   [6:0] mul13_i221_i_i_reg_334;
reg   [4:0] trunc_ln_i_reg_339;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_ready;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_2_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_3_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_2_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_3_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_2_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_3_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_2_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start_reg;
reg    ap_block_state1_ignore_call64;
wire    ap_CS_fsm_state2;
wire   [6:0] v15043_cast1_fu_202_p1;
wire   [1:0] tmp_117_fu_224_p4;
wire   [3:0] tmp_118_fu_242_p3;
wire   [6:0] p_shl6_fu_234_p3;
wire   [6:0] p_shl7_fu_250_p1;
wire   [1:0] empty_fu_272_p1;
wire   [3:0] tmp_119_fu_284_p3;
wire   [6:0] p_shl_fu_276_p3;
wire   [6:0] p_shl5_fu_292_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_ready),.mul_i215_i_i(mul_i215_i_i_reg_319),.empty(tmp_reg_314),.mul9_i218_i_i(mul9_i218_i_i_reg_324),.p_udiv24_cast_i_i(p_udiv24_cast_i_i_reg_329),.v15050_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_address0),.v15050_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_ce0),.v15050_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_we0),.v15050_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_d0),.v15050_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_address0),.v15050_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_ce0),.v15050_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_we0),.v15050_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_d0),.v15050_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_address0),.v15050_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_ce0),.v15050_2_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_we0),.v15050_2_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_d0),.v15050_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_address0),.v15050_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_ce0),.v15050_3_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_we0),.v15050_3_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_d0),.v15050_4_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_address0),.v15050_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_ce0),.v15050_4_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_we0),.v15050_4_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_d0),.v15050_5_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_address0),.v15050_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_ce0),.v15050_5_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_we0),.v15050_5_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_d0),.v15050_6_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_address0),.v15050_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_ce0),.v15050_6_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_we0),.v15050_6_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_d0),.v15050_7_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_address0),.v15050_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_ce0),.v15050_7_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_we0),.v15050_7_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_d0),.v15050_8_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_address0),.v15050_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_ce0),.v15050_8_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_we0),.v15050_8_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_d0),.v15050_9_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_address0),.v15050_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_ce0),.v15050_9_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_we0),.v15050_9_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_d0),.v15050_10_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_address0),.v15050_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_ce0),.v15050_10_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_we0),.v15050_10_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_d0),.v15050_11_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_address0),.v15050_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_ce0),.v15050_11_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_we0),.v15050_11_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_d0),.v15050_12_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_address0),.v15050_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_ce0),.v15050_12_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_we0),.v15050_12_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_d0),.v15050_13_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_address0),.v15050_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_ce0),.v15050_13_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_we0),.v15050_13_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_d0),.v15050_14_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_address0),.v15050_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_ce0),.v15050_14_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_we0),.v15050_14_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_d0),.v15050_15_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_address0),.v15050_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_ce0),.v15050_15_we0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_we0),.v15050_15_d0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_d0),.mul13_i221_i_i(mul13_i221_i_i_reg_334),.trunc_ln_i(trunc_ln_i_reg_339),.v15433_0_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_0_address0),.v15433_0_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_0_ce0),.v15433_0_0_0_q0(v15433_0_0_0_q0),.v15433_0_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_0_address0),.v15433_0_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_0_ce0),.v15433_0_1_0_q0(v15433_0_1_0_q0),.v15433_1_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_0_address0),.v15433_1_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_0_ce0),.v15433_1_0_0_q0(v15433_1_0_0_q0),.v15433_1_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_0_address0),.v15433_1_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_0_ce0),.v15433_1_1_0_q0(v15433_1_1_0_q0),.v15433_0_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_1_address0),.v15433_0_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_1_ce0),.v15433_0_0_1_q0(v15433_0_0_1_q0),.v15433_0_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_2_address0),.v15433_0_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_2_ce0),.v15433_0_0_2_q0(v15433_0_0_2_q0),.v15433_0_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_3_address0),.v15433_0_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_3_ce0),.v15433_0_0_3_q0(v15433_0_0_3_q0),.v15433_0_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_1_address0),.v15433_0_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_1_ce0),.v15433_0_1_1_q0(v15433_0_1_1_q0),.v15433_0_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_2_address0),.v15433_0_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_2_ce0),.v15433_0_1_2_q0(v15433_0_1_2_q0),.v15433_0_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_3_address0),.v15433_0_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_3_ce0),.v15433_0_1_3_q0(v15433_0_1_3_q0),.v15433_1_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_1_address0),.v15433_1_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_1_ce0),.v15433_1_0_1_q0(v15433_1_0_1_q0),.v15433_1_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_2_address0),.v15433_1_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_2_ce0),.v15433_1_0_2_q0(v15433_1_0_2_q0),.v15433_1_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_3_address0),.v15433_1_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_3_ce0),.v15433_1_0_3_q0(v15433_1_0_3_q0),.v15433_1_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_1_address0),.v15433_1_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_1_ce0),.v15433_1_1_1_q0(v15433_1_1_1_q0),.v15433_1_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_2_address0),.v15433_1_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_2_ce0),.v15433_1_1_2_q0(v15433_1_1_2_q0),.v15433_1_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_3_address0),.v15433_1_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_3_ce0),.v15433_1_1_3_q0(v15433_1_1_3_q0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call64) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul13_i221_i_i_reg_334[6 : 2] <= mul13_i221_i_i_fu_296_p2[6 : 2];
        mul9_i218_i_i_reg_324[6 : 2] <= mul9_i218_i_i_fu_254_p2[6 : 2];
        mul_i215_i_i_reg_319[4] <= mul_i215_i_i_fu_215_p3[4];
        p_udiv24_cast_i_i_reg_329 <= {{mul9_i218_i_i_fu_254_p2[6:1]}};
        tmp_reg_314 <= v15043_cast1_fu_202_p1[32'd5];
        trunc_ln_i_reg_339 <= {{mul13_i221_i_i_fu_296_p2[6:2]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign empty_fu_272_p1 = v15043[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_ap_start_reg;
assign mul13_i221_i_i_fu_296_p2 = (p_shl_fu_276_p3 - p_shl5_fu_292_p1);
assign mul9_i218_i_i_fu_254_p2 = (p_shl6_fu_234_p3 - p_shl7_fu_250_p1);
assign mul_i215_i_i_fu_215_p3 = {{tmp_fu_206_p3}, {4'd0}};
assign p_shl5_fu_292_p1 = tmp_119_fu_284_p3;
assign p_shl6_fu_234_p3 = {{tmp_117_fu_224_p4}, {5'd0}};
assign p_shl7_fu_250_p1 = tmp_118_fu_242_p3;
assign p_shl_fu_276_p3 = {{empty_fu_272_p1}, {5'd0}};
assign tmp_117_fu_224_p4 = {{v15043[3:2]}};
assign tmp_118_fu_242_p3 = {{tmp_117_fu_224_p4}, {2'd0}};
assign tmp_119_fu_284_p3 = {{empty_fu_272_p1}, {2'd0}};
assign tmp_fu_206_p3 = v15043_cast1_fu_202_p1[32'd5];
assign v15043_cast1_fu_202_p1 = v15043;
assign v15050_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_address0;
assign v15050_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_ce0;
assign v15050_10_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_d0;
assign v15050_10_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_10_we0;
assign v15050_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_address0;
assign v15050_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_ce0;
assign v15050_11_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_d0;
assign v15050_11_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_11_we0;
assign v15050_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_address0;
assign v15050_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_ce0;
assign v15050_12_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_d0;
assign v15050_12_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_12_we0;
assign v15050_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_address0;
assign v15050_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_ce0;
assign v15050_13_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_d0;
assign v15050_13_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_13_we0;
assign v15050_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_address0;
assign v15050_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_ce0;
assign v15050_14_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_d0;
assign v15050_14_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_14_we0;
assign v15050_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_address0;
assign v15050_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_ce0;
assign v15050_15_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_d0;
assign v15050_15_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_15_we0;
assign v15050_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_address0;
assign v15050_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_ce0;
assign v15050_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_d0;
assign v15050_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_1_we0;
assign v15050_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_address0;
assign v15050_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_ce0;
assign v15050_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_d0;
assign v15050_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_2_we0;
assign v15050_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_address0;
assign v15050_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_ce0;
assign v15050_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_d0;
assign v15050_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_3_we0;
assign v15050_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_address0;
assign v15050_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_ce0;
assign v15050_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_d0;
assign v15050_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_4_we0;
assign v15050_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_address0;
assign v15050_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_ce0;
assign v15050_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_d0;
assign v15050_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_5_we0;
assign v15050_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_address0;
assign v15050_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_ce0;
assign v15050_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_d0;
assign v15050_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_6_we0;
assign v15050_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_address0;
assign v15050_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_ce0;
assign v15050_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_d0;
assign v15050_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_7_we0;
assign v15050_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_address0;
assign v15050_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_ce0;
assign v15050_8_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_d0;
assign v15050_8_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_8_we0;
assign v15050_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_address0;
assign v15050_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_ce0;
assign v15050_9_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_d0;
assign v15050_9_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_9_we0;
assign v15050_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_address0;
assign v15050_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_ce0;
assign v15050_d0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_d0;
assign v15050_we0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15050_we0;
assign v15433_0_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_0_address0;
assign v15433_0_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_0_ce0;
assign v15433_0_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_1_address0;
assign v15433_0_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_1_ce0;
assign v15433_0_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_2_address0;
assign v15433_0_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_2_ce0;
assign v15433_0_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_3_address0;
assign v15433_0_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_0_3_ce0;
assign v15433_0_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_0_address0;
assign v15433_0_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_0_ce0;
assign v15433_0_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_1_address0;
assign v15433_0_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_1_ce0;
assign v15433_0_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_2_address0;
assign v15433_0_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_2_ce0;
assign v15433_0_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_3_address0;
assign v15433_0_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_0_1_3_ce0;
assign v15433_1_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_0_address0;
assign v15433_1_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_0_ce0;
assign v15433_1_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_1_address0;
assign v15433_1_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_1_ce0;
assign v15433_1_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_2_address0;
assign v15433_1_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_2_ce0;
assign v15433_1_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_3_address0;
assign v15433_1_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_0_3_ce0;
assign v15433_1_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_0_address0;
assign v15433_1_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_0_ce0;
assign v15433_1_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_1_address0;
assign v15433_1_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_1_ce0;
assign v15433_1_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_2_address0;
assign v15433_1_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_2_ce0;
assign v15433_1_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_3_address0;
assign v15433_1_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19597_1_proc17650_Pipeline_V_fu_128_v15433_1_1_3_ce0;
always @ (posedge ap_clk) begin
    mul_i215_i_i_reg_319[3:0] <= 4'b0000;
    mul9_i218_i_i_reg_324[1:0] <= 2'b00;
    mul13_i221_i_i_reg_334[1:0] <= 2'b00;
end
endmodule 
