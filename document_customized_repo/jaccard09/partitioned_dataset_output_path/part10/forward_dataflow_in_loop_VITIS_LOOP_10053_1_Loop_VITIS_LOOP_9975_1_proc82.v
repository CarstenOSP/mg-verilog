
module forward_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v6517_address0,v6517_ce0,v6517_we0,v6517_d0,v6517_1_address0,v6517_1_ce0,v6517_1_we0,v6517_1_d0,v6517_2_address0,v6517_2_ce0,v6517_2_we0,v6517_2_d0,v6517_3_address0,v6517_3_ce0,v6517_3_we0,v6517_3_d0,v6517_4_address0,v6517_4_ce0,v6517_4_we0,v6517_4_d0,v6517_5_address0,v6517_5_ce0,v6517_5_we0,v6517_5_d0,v6517_6_address0,v6517_6_ce0,v6517_6_we0,v6517_6_d0,v6517_7_address0,v6517_7_ce0,v6517_7_we0,v6517_7_d0,v6517_8_address0,v6517_8_ce0,v6517_8_we0,v6517_8_d0,v6517_9_address0,v6517_9_ce0,v6517_9_we0,v6517_9_d0,v6517_10_address0,v6517_10_ce0,v6517_10_we0,v6517_10_d0,v6517_11_address0,v6517_11_ce0,v6517_11_we0,v6517_11_d0,v6517_12_address0,v6517_12_ce0,v6517_12_we0,v6517_12_d0,v6517_13_address0,v6517_13_ce0,v6517_13_we0,v6517_13_d0,v6517_14_address0,v6517_14_ce0,v6517_14_we0,v6517_14_d0,v6517_15_address0,v6517_15_ce0,v6517_15_we0,v6517_15_d0,v6506_0,v9216_0_0_0_address0,v9216_0_0_0_ce0,v9216_0_0_0_q0,v9216_0_0_1_address0,v9216_0_0_1_ce0,v9216_0_0_1_q0,v9216_0_0_2_address0,v9216_0_0_2_ce0,v9216_0_0_2_q0,v9216_0_0_3_address0,v9216_0_0_3_ce0,v9216_0_0_3_q0,v9216_0_1_0_address0,v9216_0_1_0_ce0,v9216_0_1_0_q0,v9216_0_1_1_address0,v9216_0_1_1_ce0,v9216_0_1_1_q0,v9216_0_1_2_address0,v9216_0_1_2_ce0,v9216_0_1_2_q0,v9216_0_1_3_address0,v9216_0_1_3_ce0,v9216_0_1_3_q0,v9216_1_0_0_address0,v9216_1_0_0_ce0,v9216_1_0_0_q0,v9216_1_0_1_address0,v9216_1_0_1_ce0,v9216_1_0_1_q0,v9216_1_0_2_address0,v9216_1_0_2_ce0,v9216_1_0_2_q0,v9216_1_0_3_address0,v9216_1_0_3_ce0,v9216_1_0_3_q0,v9216_1_1_0_address0,v9216_1_1_0_ce0,v9216_1_1_0_q0,v9216_1_1_1_address0,v9216_1_1_1_ce0,v9216_1_1_1_q0,v9216_1_1_2_address0,v9216_1_1_2_ce0,v9216_1_1_2_q0,v9216_1_1_3_address0,v9216_1_1_3_ce0,v9216_1_1_3_q0);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v6517_address0;
output   v6517_ce0;
output   v6517_we0;
output  [7:0] v6517_d0;
output  [10:0] v6517_1_address0;
output   v6517_1_ce0;
output   v6517_1_we0;
output  [7:0] v6517_1_d0;
output  [10:0] v6517_2_address0;
output   v6517_2_ce0;
output   v6517_2_we0;
output  [7:0] v6517_2_d0;
output  [10:0] v6517_3_address0;
output   v6517_3_ce0;
output   v6517_3_we0;
output  [7:0] v6517_3_d0;
output  [10:0] v6517_4_address0;
output   v6517_4_ce0;
output   v6517_4_we0;
output  [7:0] v6517_4_d0;
output  [10:0] v6517_5_address0;
output   v6517_5_ce0;
output   v6517_5_we0;
output  [7:0] v6517_5_d0;
output  [10:0] v6517_6_address0;
output   v6517_6_ce0;
output   v6517_6_we0;
output  [7:0] v6517_6_d0;
output  [10:0] v6517_7_address0;
output   v6517_7_ce0;
output   v6517_7_we0;
output  [7:0] v6517_7_d0;
output  [10:0] v6517_8_address0;
output   v6517_8_ce0;
output   v6517_8_we0;
output  [7:0] v6517_8_d0;
output  [10:0] v6517_9_address0;
output   v6517_9_ce0;
output   v6517_9_we0;
output  [7:0] v6517_9_d0;
output  [10:0] v6517_10_address0;
output   v6517_10_ce0;
output   v6517_10_we0;
output  [7:0] v6517_10_d0;
output  [10:0] v6517_11_address0;
output   v6517_11_ce0;
output   v6517_11_we0;
output  [7:0] v6517_11_d0;
output  [10:0] v6517_12_address0;
output   v6517_12_ce0;
output   v6517_12_we0;
output  [7:0] v6517_12_d0;
output  [10:0] v6517_13_address0;
output   v6517_13_ce0;
output   v6517_13_we0;
output  [7:0] v6517_13_d0;
output  [10:0] v6517_14_address0;
output   v6517_14_ce0;
output   v6517_14_we0;
output  [7:0] v6517_14_d0;
output  [10:0] v6517_15_address0;
output   v6517_15_ce0;
output   v6517_15_we0;
output  [7:0] v6517_15_d0;
input  [7:0] v6506_0;
output  [13:0] v9216_0_0_0_address0;
output   v9216_0_0_0_ce0;
input  [7:0] v9216_0_0_0_q0;
output  [13:0] v9216_0_0_1_address0;
output   v9216_0_0_1_ce0;
input  [7:0] v9216_0_0_1_q0;
output  [13:0] v9216_0_0_2_address0;
output   v9216_0_0_2_ce0;
input  [7:0] v9216_0_0_2_q0;
output  [13:0] v9216_0_0_3_address0;
output   v9216_0_0_3_ce0;
input  [7:0] v9216_0_0_3_q0;
output  [13:0] v9216_0_1_0_address0;
output   v9216_0_1_0_ce0;
input  [7:0] v9216_0_1_0_q0;
output  [13:0] v9216_0_1_1_address0;
output   v9216_0_1_1_ce0;
input  [7:0] v9216_0_1_1_q0;
output  [13:0] v9216_0_1_2_address0;
output   v9216_0_1_2_ce0;
input  [7:0] v9216_0_1_2_q0;
output  [13:0] v9216_0_1_3_address0;
output   v9216_0_1_3_ce0;
input  [7:0] v9216_0_1_3_q0;
output  [13:0] v9216_1_0_0_address0;
output   v9216_1_0_0_ce0;
input  [7:0] v9216_1_0_0_q0;
output  [13:0] v9216_1_0_1_address0;
output   v9216_1_0_1_ce0;
input  [7:0] v9216_1_0_1_q0;
output  [13:0] v9216_1_0_2_address0;
output   v9216_1_0_2_ce0;
input  [7:0] v9216_1_0_2_q0;
output  [13:0] v9216_1_0_3_address0;
output   v9216_1_0_3_ce0;
input  [7:0] v9216_1_0_3_q0;
output  [13:0] v9216_1_1_0_address0;
output   v9216_1_1_0_ce0;
input  [7:0] v9216_1_1_0_q0;
output  [13:0] v9216_1_1_1_address0;
output   v9216_1_1_1_ce0;
input  [7:0] v9216_1_1_1_q0;
output  [13:0] v9216_1_1_2_address0;
output   v9216_1_1_2_ce0;
input  [7:0] v9216_1_1_2_q0;
output  [13:0] v9216_1_1_3_address0;
output   v9216_1_1_3_ce0;
input  [7:0] v9216_1_1_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] trunc_ln_fu_206_p4;
reg    ap_block_state1;
reg   [0:0] tmp_reg_336;
wire   [0:0] trunc_ln10056_fu_274_p1;
reg   [0:0] trunc_ln10056_reg_342;
wire   [2:0] empty_fu_294_p2;
reg   [2:0] empty_reg_347;
wire   [0:0] empty_479_fu_306_p1;
reg   [0:0] empty_479_reg_352;
wire   [5:0] mul_i_fu_310_p3;
reg   [5:0] mul_i_reg_357;
wire    ap_CS_fsm_state9;
wire   [1:0] empty_478_fu_318_p1;
reg   [1:0] empty_478_reg_362;
wire   [2:0] zext_ln9975_1_cast_cast_fu_323_p3;
reg   [2:0] zext_ln9975_1_cast_cast_reg_367;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_ready;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_3_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_3_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_3_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [4:0] mul_ln10060_fu_220_p0;
wire   [10:0] zext_ln10060_fu_216_p1;
wire   [6:0] mul_ln10060_fu_220_p1;
wire   [10:0] mul_ln10060_fu_220_p2;
wire   [14:0] mul_ln10060_cast_fu_226_p1;
wire   [4:0] mul_ln10059_fu_238_p0;
wire   [6:0] mul_ln10059_fu_238_p1;
wire   [10:0] mul_ln10059_fu_238_p2;
wire   [2:0] trunc_ln49_fu_244_p4;
wire   [0:0] icmp_ln10059_fu_254_p2;
wire   [2:0] add_ln10059_fu_260_p2;
wire   [2:0] select_ln10059_fu_266_p3;
wire   [0:0] tmp_537_fu_278_p3;
wire   [2:0] mul10_i_fu_286_p3;
wire   [4:0] grp_fu_300_p0;
wire   [2:0] grp_fu_300_p1;
wire   [1:0] grp_fu_300_p2;
reg    grp_fu_300_ap_start;
wire    grp_fu_300_ap_done;
reg    grp_fu_300_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_ready),.mul_i(mul_i_reg_357),.empty(tmp_reg_336),.select_ln10059(trunc_ln10056_reg_342),.zext_ln9975(empty_reg_347),.v6517_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_address0),.v6517_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_ce0),.v6517_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_we0),.v6517_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_d0),.v6517_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_address0),.v6517_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_ce0),.v6517_1_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_we0),.v6517_1_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_d0),.v6517_2_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_address0),.v6517_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_ce0),.v6517_2_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_we0),.v6517_2_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_d0),.v6517_3_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_address0),.v6517_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_ce0),.v6517_3_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_we0),.v6517_3_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_d0),.v6517_4_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_address0),.v6517_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_ce0),.v6517_4_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_we0),.v6517_4_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_d0),.v6517_5_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_address0),.v6517_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_ce0),.v6517_5_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_we0),.v6517_5_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_d0),.v6517_6_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_address0),.v6517_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_ce0),.v6517_6_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_we0),.v6517_6_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_d0),.v6517_7_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_address0),.v6517_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_ce0),.v6517_7_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_we0),.v6517_7_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_d0),.v6517_8_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_address0),.v6517_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_ce0),.v6517_8_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_we0),.v6517_8_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_d0),.v6517_9_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_address0),.v6517_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_ce0),.v6517_9_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_we0),.v6517_9_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_d0),.v6517_10_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_address0),.v6517_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_ce0),.v6517_10_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_we0),.v6517_10_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_d0),.v6517_11_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_address0),.v6517_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_ce0),.v6517_11_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_we0),.v6517_11_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_d0),.v6517_12_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_address0),.v6517_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_ce0),.v6517_12_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_we0),.v6517_12_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_d0),.v6517_13_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_address0),.v6517_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_ce0),.v6517_13_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_we0),.v6517_13_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_d0),.v6517_14_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_address0),.v6517_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_ce0),.v6517_14_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_we0),.v6517_14_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_d0),.v6517_15_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_address0),.v6517_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_ce0),.v6517_15_we0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_we0),.v6517_15_d0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_d0),.urem_ln10058(empty_478_reg_362),.zext_ln9975_1_cast_cast(zext_ln9975_1_cast_cast_reg_367),.v9216_0_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_0_address0),.v9216_0_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_0_ce0),.v9216_0_0_0_q0(v9216_0_0_0_q0),.v9216_0_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_1_address0),.v9216_0_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_1_ce0),.v9216_0_0_1_q0(v9216_0_0_1_q0),.v9216_0_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_2_address0),.v9216_0_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_2_ce0),.v9216_0_0_2_q0(v9216_0_0_2_q0),.v9216_0_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_3_address0),.v9216_0_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_3_ce0),.v9216_0_0_3_q0(v9216_0_0_3_q0),.v9216_0_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_0_address0),.v9216_0_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_0_ce0),.v9216_0_1_0_q0(v9216_0_1_0_q0),.v9216_0_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_1_address0),.v9216_0_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_1_ce0),.v9216_0_1_1_q0(v9216_0_1_1_q0),.v9216_0_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_2_address0),.v9216_0_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_2_ce0),.v9216_0_1_2_q0(v9216_0_1_2_q0),.v9216_0_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_3_address0),.v9216_0_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_3_ce0),.v9216_0_1_3_q0(v9216_0_1_3_q0),.v9216_1_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_0_address0),.v9216_1_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_0_ce0),.v9216_1_0_0_q0(v9216_1_0_0_q0),.v9216_1_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_1_address0),.v9216_1_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_1_ce0),.v9216_1_0_1_q0(v9216_1_0_1_q0),.v9216_1_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_2_address0),.v9216_1_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_2_ce0),.v9216_1_0_2_q0(v9216_1_0_2_q0),.v9216_1_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_3_address0),.v9216_1_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_3_ce0),.v9216_1_0_3_q0(v9216_1_0_3_q0),.v9216_1_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_0_address0),.v9216_1_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_0_ce0),.v9216_1_1_0_q0(v9216_1_1_0_q0),.v9216_1_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_1_address0),.v9216_1_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_1_ce0),.v9216_1_1_1_q0(v9216_1_1_1_q0),.v9216_1_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_2_address0),.v9216_1_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_2_ce0),.v9216_1_1_2_q0(v9216_1_1_2_q0),.v9216_1_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_3_address0),.v9216_1_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_3_ce0),.v9216_1_1_3_q0(v9216_1_1_3_q0));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U4707(.din0(mul_ln10060_fu_220_p0),.din1(mul_ln10060_fu_220_p1),.dout(mul_ln10060_fu_220_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U4708(.din0(mul_ln10059_fu_238_p0),.din1(mul_ln10059_fu_238_p1),.dout(mul_ln10059_fu_238_p2));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U4709(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_300_ap_start),.done(grp_fu_300_ap_done),.din0(grp_fu_300_p0),.din1(grp_fu_300_p1),.ce(grp_fu_300_ce),.dout(grp_fu_300_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_478_reg_362 <= empty_478_fu_318_p1;
        mul_i_reg_357[5] <= mul_i_fu_310_p3[5];
        zext_ln9975_1_cast_cast_reg_367[2] <= zext_ln9975_1_cast_cast_fu_323_p3[2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_479_reg_352 <= empty_479_fu_306_p1;
        empty_reg_347 <= empty_fu_294_p2;
        tmp_reg_336 <= mul_ln10060_cast_fu_226_p1[32'd9];
        trunc_ln10056_reg_342 <= trunc_ln10056_fu_274_p1;
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_300_ap_start = 1'b1;
    end else begin
        grp_fu_300_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_300_ce = 1'b0;
    end else begin
        grp_fu_300_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln10059_fu_260_p2 = ($signed(trunc_ln49_fu_244_p4) + $signed(3'd5));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_478_fu_318_p1 = grp_fu_300_p2[1:0];
assign empty_479_fu_306_p1 = v6506_0[0:0];
assign empty_fu_294_p2 = (select_ln10059_fu_266_p3 | mul10_i_fu_286_p3);
assign grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_ap_start_reg;
assign grp_fu_300_p0 = {{v6506_0[7:3]}};
assign grp_fu_300_p1 = 5'd3;
assign icmp_ln10059_fu_254_p2 = ((trunc_ln49_fu_244_p4 < 3'd3) ? 1'b1 : 1'b0);
assign mul10_i_fu_286_p3 = ((tmp_537_fu_278_p3[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign mul_i_fu_310_p3 = {{tmp_reg_336}, {5'd0}};
assign mul_ln10059_fu_238_p0 = zext_ln10060_fu_216_p1;
assign mul_ln10059_fu_238_p1 = 11'd43;
assign mul_ln10060_cast_fu_226_p1 = mul_ln10060_fu_220_p2;
assign mul_ln10060_fu_220_p0 = zext_ln10060_fu_216_p1;
assign mul_ln10060_fu_220_p1 = 11'd57;
assign select_ln10059_fu_266_p3 = ((icmp_ln10059_fu_254_p2[0:0] == 1'b1) ? trunc_ln49_fu_244_p4 : add_ln10059_fu_260_p2);
assign tmp_537_fu_278_p3 = v6506_0[32'd1];
assign trunc_ln10056_fu_274_p1 = select_ln10059_fu_266_p3[0:0];
assign trunc_ln49_fu_244_p4 = {{mul_ln10059_fu_238_p2[9:7]}};
assign trunc_ln_fu_206_p4 = {{v6506_0[7:3]}};
assign v6517_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_address0;
assign v6517_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_ce0;
assign v6517_10_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_d0;
assign v6517_10_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_10_we0;
assign v6517_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_address0;
assign v6517_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_ce0;
assign v6517_11_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_d0;
assign v6517_11_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_11_we0;
assign v6517_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_address0;
assign v6517_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_ce0;
assign v6517_12_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_d0;
assign v6517_12_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_12_we0;
assign v6517_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_address0;
assign v6517_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_ce0;
assign v6517_13_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_d0;
assign v6517_13_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_13_we0;
assign v6517_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_address0;
assign v6517_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_ce0;
assign v6517_14_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_d0;
assign v6517_14_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_14_we0;
assign v6517_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_address0;
assign v6517_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_ce0;
assign v6517_15_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_d0;
assign v6517_15_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_15_we0;
assign v6517_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_address0;
assign v6517_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_ce0;
assign v6517_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_d0;
assign v6517_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_1_we0;
assign v6517_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_address0;
assign v6517_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_ce0;
assign v6517_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_d0;
assign v6517_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_2_we0;
assign v6517_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_address0;
assign v6517_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_ce0;
assign v6517_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_d0;
assign v6517_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_3_we0;
assign v6517_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_address0;
assign v6517_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_ce0;
assign v6517_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_d0;
assign v6517_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_4_we0;
assign v6517_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_address0;
assign v6517_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_ce0;
assign v6517_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_d0;
assign v6517_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_5_we0;
assign v6517_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_address0;
assign v6517_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_ce0;
assign v6517_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_d0;
assign v6517_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_6_we0;
assign v6517_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_address0;
assign v6517_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_ce0;
assign v6517_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_d0;
assign v6517_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_7_we0;
assign v6517_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_address0;
assign v6517_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_ce0;
assign v6517_8_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_d0;
assign v6517_8_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_8_we0;
assign v6517_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_address0;
assign v6517_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_ce0;
assign v6517_9_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_d0;
assign v6517_9_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_9_we0;
assign v6517_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_address0;
assign v6517_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_ce0;
assign v6517_d0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_d0;
assign v6517_we0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v6517_we0;
assign v9216_0_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_0_address0;
assign v9216_0_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_0_ce0;
assign v9216_0_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_1_address0;
assign v9216_0_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_1_ce0;
assign v9216_0_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_2_address0;
assign v9216_0_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_2_ce0;
assign v9216_0_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_3_address0;
assign v9216_0_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_0_3_ce0;
assign v9216_0_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_0_address0;
assign v9216_0_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_0_ce0;
assign v9216_0_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_1_address0;
assign v9216_0_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_1_ce0;
assign v9216_0_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_2_address0;
assign v9216_0_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_2_ce0;
assign v9216_0_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_3_address0;
assign v9216_0_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_0_1_3_ce0;
assign v9216_1_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_0_address0;
assign v9216_1_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_0_ce0;
assign v9216_1_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_1_address0;
assign v9216_1_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_1_ce0;
assign v9216_1_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_2_address0;
assign v9216_1_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_2_ce0;
assign v9216_1_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_3_address0;
assign v9216_1_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_0_3_ce0;
assign v9216_1_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_0_address0;
assign v9216_1_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_0_ce0;
assign v9216_1_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_1_address0;
assign v9216_1_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_1_ce0;
assign v9216_1_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_2_address0;
assign v9216_1_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_2_ce0;
assign v9216_1_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_3_address0;
assign v9216_1_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9975_1_proc82_Pipeline_VITIS_fu_132_v9216_1_1_3_ce0;
assign zext_ln10060_fu_216_p1 = trunc_ln_fu_206_p4;
assign zext_ln9975_1_cast_cast_fu_323_p3 = ((empty_479_reg_352[0:0] == 1'b1) ? 3'd4 : 3'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_357[4:0] <= 5'b00000;
    zext_ln9975_1_cast_cast_reg_367[1:0] <= 2'b00;
end
endmodule 
