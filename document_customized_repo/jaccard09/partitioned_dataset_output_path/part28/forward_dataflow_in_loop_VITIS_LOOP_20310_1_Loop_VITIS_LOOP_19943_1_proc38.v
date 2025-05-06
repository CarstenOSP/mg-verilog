
module forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15428_1_1_3_address0,v15428_1_1_3_ce0,v15428_1_1_3_we0,v15428_1_1_3_d0,v15428_1_1_2_address0,v15428_1_1_2_ce0,v15428_1_1_2_we0,v15428_1_1_2_d0,v15428_1_1_1_address0,v15428_1_1_1_ce0,v15428_1_1_1_we0,v15428_1_1_1_d0,v15428_1_1_0_address0,v15428_1_1_0_ce0,v15428_1_1_0_we0,v15428_1_1_0_d0,v15428_1_0_3_address0,v15428_1_0_3_ce0,v15428_1_0_3_we0,v15428_1_0_3_d0,v15428_1_0_2_address0,v15428_1_0_2_ce0,v15428_1_0_2_we0,v15428_1_0_2_d0,v15428_1_0_1_address0,v15428_1_0_1_ce0,v15428_1_0_1_we0,v15428_1_0_1_d0,v15428_1_0_0_address0,v15428_1_0_0_ce0,v15428_1_0_0_we0,v15428_1_0_0_d0,v15428_0_1_3_address0,v15428_0_1_3_ce0,v15428_0_1_3_we0,v15428_0_1_3_d0,v15428_0_1_2_address0,v15428_0_1_2_ce0,v15428_0_1_2_we0,v15428_0_1_2_d0,v15428_0_1_1_address0,v15428_0_1_1_ce0,v15428_0_1_1_we0,v15428_0_1_1_d0,v15428_0_1_0_address0,v15428_0_1_0_ce0,v15428_0_1_0_we0,v15428_0_1_0_d0,v15428_0_0_3_address0,v15428_0_0_3_ce0,v15428_0_0_3_we0,v15428_0_0_3_d0,v15428_0_0_2_address0,v15428_0_0_2_ce0,v15428_0_0_2_we0,v15428_0_0_2_d0,v15428_0_0_1_address0,v15428_0_0_1_ce0,v15428_0_0_1_we0,v15428_0_0_1_d0,v15428_0_0_0_address0,v15428_0_0_0_ce0,v15428_0_0_0_we0,v15428_0_0_0_d0,p_read,v15400_15_address0,v15400_15_ce0,v15400_15_q0,v15400_14_address0,v15400_14_ce0,v15400_14_q0,v15400_13_address0,v15400_13_ce0,v15400_13_q0,v15400_12_address0,v15400_12_ce0,v15400_12_q0,v15400_11_address0,v15400_11_ce0,v15400_11_q0,v15400_10_address0,v15400_10_ce0,v15400_10_q0,v15400_9_address0,v15400_9_ce0,v15400_9_q0,v15400_8_address0,v15400_8_ce0,v15400_8_q0,v15400_7_address0,v15400_7_ce0,v15400_7_q0,v15400_6_address0,v15400_6_ce0,v15400_6_q0,v15400_5_address0,v15400_5_ce0,v15400_5_q0,v15400_4_address0,v15400_4_ce0,v15400_4_q0,v15400_3_address0,v15400_3_ce0,v15400_3_q0,v15400_2_address0,v15400_2_ce0,v15400_2_q0,v15400_1_address0,v15400_1_ce0,v15400_1_q0,v15400_address0,v15400_ce0,v15400_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [14:0] v15428_1_1_3_address0;
output   v15428_1_1_3_ce0;
output   v15428_1_1_3_we0;
output  [7:0] v15428_1_1_3_d0;
output  [14:0] v15428_1_1_2_address0;
output   v15428_1_1_2_ce0;
output   v15428_1_1_2_we0;
output  [7:0] v15428_1_1_2_d0;
output  [14:0] v15428_1_1_1_address0;
output   v15428_1_1_1_ce0;
output   v15428_1_1_1_we0;
output  [7:0] v15428_1_1_1_d0;
output  [14:0] v15428_1_1_0_address0;
output   v15428_1_1_0_ce0;
output   v15428_1_1_0_we0;
output  [7:0] v15428_1_1_0_d0;
output  [14:0] v15428_1_0_3_address0;
output   v15428_1_0_3_ce0;
output   v15428_1_0_3_we0;
output  [7:0] v15428_1_0_3_d0;
output  [14:0] v15428_1_0_2_address0;
output   v15428_1_0_2_ce0;
output   v15428_1_0_2_we0;
output  [7:0] v15428_1_0_2_d0;
output  [14:0] v15428_1_0_1_address0;
output   v15428_1_0_1_ce0;
output   v15428_1_0_1_we0;
output  [7:0] v15428_1_0_1_d0;
output  [14:0] v15428_1_0_0_address0;
output   v15428_1_0_0_ce0;
output   v15428_1_0_0_we0;
output  [7:0] v15428_1_0_0_d0;
output  [14:0] v15428_0_1_3_address0;
output   v15428_0_1_3_ce0;
output   v15428_0_1_3_we0;
output  [7:0] v15428_0_1_3_d0;
output  [14:0] v15428_0_1_2_address0;
output   v15428_0_1_2_ce0;
output   v15428_0_1_2_we0;
output  [7:0] v15428_0_1_2_d0;
output  [14:0] v15428_0_1_1_address0;
output   v15428_0_1_1_ce0;
output   v15428_0_1_1_we0;
output  [7:0] v15428_0_1_1_d0;
output  [14:0] v15428_0_1_0_address0;
output   v15428_0_1_0_ce0;
output   v15428_0_1_0_we0;
output  [7:0] v15428_0_1_0_d0;
output  [14:0] v15428_0_0_3_address0;
output   v15428_0_0_3_ce0;
output   v15428_0_0_3_we0;
output  [7:0] v15428_0_0_3_d0;
output  [14:0] v15428_0_0_2_address0;
output   v15428_0_0_2_ce0;
output   v15428_0_0_2_we0;
output  [7:0] v15428_0_0_2_d0;
output  [14:0] v15428_0_0_1_address0;
output   v15428_0_0_1_ce0;
output   v15428_0_0_1_we0;
output  [7:0] v15428_0_0_1_d0;
output  [14:0] v15428_0_0_0_address0;
output   v15428_0_0_0_ce0;
output   v15428_0_0_0_we0;
output  [7:0] v15428_0_0_0_d0;
input  [4:0] p_read;
output  [9:0] v15400_15_address0;
output   v15400_15_ce0;
input  [7:0] v15400_15_q0;
output  [9:0] v15400_14_address0;
output   v15400_14_ce0;
input  [7:0] v15400_14_q0;
output  [9:0] v15400_13_address0;
output   v15400_13_ce0;
input  [7:0] v15400_13_q0;
output  [9:0] v15400_12_address0;
output   v15400_12_ce0;
input  [7:0] v15400_12_q0;
output  [9:0] v15400_11_address0;
output   v15400_11_ce0;
input  [7:0] v15400_11_q0;
output  [9:0] v15400_10_address0;
output   v15400_10_ce0;
input  [7:0] v15400_10_q0;
output  [9:0] v15400_9_address0;
output   v15400_9_ce0;
input  [7:0] v15400_9_q0;
output  [9:0] v15400_8_address0;
output   v15400_8_ce0;
input  [7:0] v15400_8_q0;
output  [9:0] v15400_7_address0;
output   v15400_7_ce0;
input  [7:0] v15400_7_q0;
output  [9:0] v15400_6_address0;
output   v15400_6_ce0;
input  [7:0] v15400_6_q0;
output  [9:0] v15400_5_address0;
output   v15400_5_ce0;
input  [7:0] v15400_5_q0;
output  [9:0] v15400_4_address0;
output   v15400_4_ce0;
input  [7:0] v15400_4_q0;
output  [9:0] v15400_3_address0;
output   v15400_3_ce0;
input  [7:0] v15400_3_q0;
output  [9:0] v15400_2_address0;
output   v15400_2_ce0;
input  [7:0] v15400_2_q0;
output  [9:0] v15400_1_address0;
output   v15400_1_ce0;
input  [7:0] v15400_1_q0;
output  [9:0] v15400_address0;
output   v15400_ce0;
input  [7:0] v15400_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_fu_202_p3;
reg   [0:0] tmp_reg_310;
reg    ap_block_state1;
wire   [4:0] and_ln_fu_211_p3;
reg   [4:0] and_ln_reg_315;
wire   [6:0] mul9_i115_fu_250_p2;
reg   [6:0] mul9_i115_reg_320;
reg   [5:0] p_udiv14_cast_reg_325;
wire   [6:0] mul13_i_fu_292_p2;
reg   [6:0] mul13_i_reg_330;
reg   [4:0] trunc_ln_reg_335;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_ready;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_15_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_14_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_13_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_12_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_11_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_10_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_9_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_8_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_7_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_6_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_5_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_4_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_3_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_2_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_1_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start_reg;
reg    ap_block_state1_ignore_call63;
wire    ap_CS_fsm_state2;
wire   [1:0] tmp_76_fu_220_p4;
wire   [3:0] tmp_77_fu_238_p3;
wire   [6:0] p_shl133_fu_230_p3;
wire   [6:0] p_shl296_fu_246_p1;
wire   [1:0] empty_fu_268_p1;
wire   [3:0] tmp_78_fu_280_p3;
wire   [6:0] p_shl_fu_272_p3;
wire   [6:0] p_shl294_fu_288_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_ready),.v15428_0_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_address0),.v15428_0_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_ce0),.v15428_0_0_0_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_we0),.v15428_0_0_0_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_d0),.v15428_0_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_address0),.v15428_0_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_ce0),.v15428_0_0_1_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_we0),.v15428_0_0_1_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_d0),.v15428_0_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_address0),.v15428_0_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_ce0),.v15428_0_0_2_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_we0),.v15428_0_0_2_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_d0),.v15428_0_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_address0),.v15428_0_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_ce0),.v15428_0_0_3_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_we0),.v15428_0_0_3_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_d0),.v15428_0_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_address0),.v15428_0_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_ce0),.v15428_0_1_0_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_we0),.v15428_0_1_0_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_d0),.v15428_0_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_address0),.v15428_0_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_ce0),.v15428_0_1_1_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_we0),.v15428_0_1_1_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_d0),.v15428_0_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_address0),.v15428_0_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_ce0),.v15428_0_1_2_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_we0),.v15428_0_1_2_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_d0),.v15428_0_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_address0),.v15428_0_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_ce0),.v15428_0_1_3_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_we0),.v15428_0_1_3_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_d0),.v15428_1_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_address0),.v15428_1_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_ce0),.v15428_1_0_0_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_we0),.v15428_1_0_0_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_d0),.v15428_1_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_address0),.v15428_1_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_ce0),.v15428_1_0_1_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_we0),.v15428_1_0_1_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_d0),.v15428_1_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_address0),.v15428_1_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_ce0),.v15428_1_0_2_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_we0),.v15428_1_0_2_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_d0),.v15428_1_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_address0),.v15428_1_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_ce0),.v15428_1_0_3_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_we0),.v15428_1_0_3_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_d0),.v15428_1_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_address0),.v15428_1_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_ce0),.v15428_1_1_0_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_we0),.v15428_1_1_0_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_d0),.v15428_1_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_address0),.v15428_1_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_ce0),.v15428_1_1_1_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_we0),.v15428_1_1_1_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_d0),.v15428_1_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_address0),.v15428_1_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_ce0),.v15428_1_1_2_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_we0),.v15428_1_1_2_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_d0),.v15428_1_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_address0),.v15428_1_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_ce0),.v15428_1_1_3_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_we0),.v15428_1_1_3_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_d0),.and_ln(and_ln_reg_315),.empty(tmp_reg_310),.mul9_i115(mul9_i115_reg_320),.p_udiv14_cast(p_udiv14_cast_reg_325),.v15400_15_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_15_address0),.v15400_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_15_ce0),.v15400_15_q0(v15400_15_q0),.v15400_14_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_14_address0),.v15400_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_14_ce0),.v15400_14_q0(v15400_14_q0),.v15400_13_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_13_address0),.v15400_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_13_ce0),.v15400_13_q0(v15400_13_q0),.v15400_12_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_12_address0),.v15400_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_12_ce0),.v15400_12_q0(v15400_12_q0),.v15400_11_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_11_address0),.v15400_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_11_ce0),.v15400_11_q0(v15400_11_q0),.v15400_10_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_10_address0),.v15400_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_10_ce0),.v15400_10_q0(v15400_10_q0),.v15400_9_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_9_address0),.v15400_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_9_ce0),.v15400_9_q0(v15400_9_q0),.v15400_8_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_8_address0),.v15400_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_8_ce0),.v15400_8_q0(v15400_8_q0),.v15400_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_7_address0),.v15400_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_7_ce0),.v15400_7_q0(v15400_7_q0),.v15400_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_6_address0),.v15400_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_6_ce0),.v15400_6_q0(v15400_6_q0),.v15400_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_5_address0),.v15400_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_5_ce0),.v15400_5_q0(v15400_5_q0),.v15400_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_4_address0),.v15400_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_4_ce0),.v15400_4_q0(v15400_4_q0),.v15400_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_3_address0),.v15400_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_3_ce0),.v15400_3_q0(v15400_3_q0),.v15400_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_2_address0),.v15400_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_2_ce0),.v15400_2_q0(v15400_2_q0),.v15400_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_1_address0),.v15400_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_1_ce0),.v15400_1_q0(v15400_1_q0),.v15400_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_address0),.v15400_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_ce0),.v15400_q0(v15400_q0),.mul13_i(mul13_i_reg_330),.trunc_ln(trunc_ln_reg_335));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call63) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        and_ln_reg_315[4] <= and_ln_fu_211_p3[4];
        mul13_i_reg_330[6 : 2] <= mul13_i_fu_292_p2[6 : 2];
        mul9_i115_reg_320[6 : 2] <= mul9_i115_fu_250_p2[6 : 2];
        p_udiv14_cast_reg_325 <= {{mul9_i115_fu_250_p2[6:1]}};
        tmp_reg_310 <= p_read[32'd4];
        trunc_ln_reg_335 <= {{mul13_i_fu_292_p2[6:2]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign and_ln_fu_211_p3 = {{tmp_fu_202_p3}, {4'd0}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call63 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_268_p1 = p_read[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_ap_start_reg;
assign mul13_i_fu_292_p2 = (p_shl_fu_272_p3 - p_shl294_fu_288_p1);
assign mul9_i115_fu_250_p2 = (p_shl133_fu_230_p3 - p_shl296_fu_246_p1);
assign p_shl133_fu_230_p3 = {{tmp_76_fu_220_p4}, {5'd0}};
assign p_shl294_fu_288_p1 = tmp_78_fu_280_p3;
assign p_shl296_fu_246_p1 = tmp_77_fu_238_p3;
assign p_shl_fu_272_p3 = {{empty_fu_268_p1}, {5'd0}};
assign tmp_76_fu_220_p4 = {{p_read[3:2]}};
assign tmp_77_fu_238_p3 = {{tmp_76_fu_220_p4}, {2'd0}};
assign tmp_78_fu_280_p3 = {{empty_fu_268_p1}, {2'd0}};
assign tmp_fu_202_p3 = p_read[32'd4];
assign v15400_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_10_address0;
assign v15400_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_10_ce0;
assign v15400_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_11_address0;
assign v15400_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_11_ce0;
assign v15400_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_12_address0;
assign v15400_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_12_ce0;
assign v15400_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_13_address0;
assign v15400_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_13_ce0;
assign v15400_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_14_address0;
assign v15400_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_14_ce0;
assign v15400_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_15_address0;
assign v15400_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_15_ce0;
assign v15400_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_1_address0;
assign v15400_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_1_ce0;
assign v15400_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_2_address0;
assign v15400_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_2_ce0;
assign v15400_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_3_address0;
assign v15400_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_3_ce0;
assign v15400_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_4_address0;
assign v15400_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_4_ce0;
assign v15400_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_5_address0;
assign v15400_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_5_ce0;
assign v15400_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_6_address0;
assign v15400_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_6_ce0;
assign v15400_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_7_address0;
assign v15400_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_7_ce0;
assign v15400_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_8_address0;
assign v15400_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_8_ce0;
assign v15400_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_9_address0;
assign v15400_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_9_ce0;
assign v15400_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_address0;
assign v15400_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15400_ce0;
assign v15428_0_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_address0;
assign v15428_0_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_ce0;
assign v15428_0_0_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_d0;
assign v15428_0_0_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_0_we0;
assign v15428_0_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_address0;
assign v15428_0_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_ce0;
assign v15428_0_0_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_d0;
assign v15428_0_0_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_1_we0;
assign v15428_0_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_address0;
assign v15428_0_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_ce0;
assign v15428_0_0_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_d0;
assign v15428_0_0_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_2_we0;
assign v15428_0_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_address0;
assign v15428_0_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_ce0;
assign v15428_0_0_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_d0;
assign v15428_0_0_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_0_3_we0;
assign v15428_0_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_address0;
assign v15428_0_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_ce0;
assign v15428_0_1_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_d0;
assign v15428_0_1_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_0_we0;
assign v15428_0_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_address0;
assign v15428_0_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_ce0;
assign v15428_0_1_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_d0;
assign v15428_0_1_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_1_we0;
assign v15428_0_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_address0;
assign v15428_0_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_ce0;
assign v15428_0_1_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_d0;
assign v15428_0_1_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_2_we0;
assign v15428_0_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_address0;
assign v15428_0_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_ce0;
assign v15428_0_1_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_d0;
assign v15428_0_1_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_0_1_3_we0;
assign v15428_1_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_address0;
assign v15428_1_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_ce0;
assign v15428_1_0_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_d0;
assign v15428_1_0_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_0_we0;
assign v15428_1_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_address0;
assign v15428_1_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_ce0;
assign v15428_1_0_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_d0;
assign v15428_1_0_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_1_we0;
assign v15428_1_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_address0;
assign v15428_1_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_ce0;
assign v15428_1_0_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_d0;
assign v15428_1_0_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_2_we0;
assign v15428_1_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_address0;
assign v15428_1_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_ce0;
assign v15428_1_0_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_d0;
assign v15428_1_0_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_0_3_we0;
assign v15428_1_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_address0;
assign v15428_1_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_ce0;
assign v15428_1_1_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_d0;
assign v15428_1_1_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_0_we0;
assign v15428_1_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_address0;
assign v15428_1_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_ce0;
assign v15428_1_1_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_d0;
assign v15428_1_1_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_1_we0;
assign v15428_1_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_address0;
assign v15428_1_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_ce0;
assign v15428_1_1_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_d0;
assign v15428_1_1_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_2_we0;
assign v15428_1_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_address0;
assign v15428_1_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_ce0;
assign v15428_1_1_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_d0;
assign v15428_1_1_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI_fu_128_v15428_1_1_3_we0;
always @ (posedge ap_clk) begin
    and_ln_reg_315[3:0] <= 4'b0000;
    mul9_i115_reg_320[1:0] <= 2'b00;
    mul13_i_reg_330[1:0] <= 2'b00;
end
endmodule 
