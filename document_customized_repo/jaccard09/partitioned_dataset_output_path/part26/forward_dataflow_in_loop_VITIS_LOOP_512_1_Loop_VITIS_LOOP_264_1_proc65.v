
module forward_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v239_i_address0,v239_i_ce0,v239_i_we0,v239_i_d0,v239_1_i_address0,v239_1_i_ce0,v239_1_i_we0,v239_1_i_d0,v239_2_i_address0,v239_2_i_ce0,v239_2_i_we0,v239_2_i_d0,v239_3_i_address0,v239_3_i_ce0,v239_3_i_we0,v239_3_i_d0,v243_1_i_address0,v243_1_i_ce0,v243_1_i_q0,v243_i_address0,v243_i_ce0,v243_i_q0,v244_i_address0,v244_i_ce0,v244_i_we0,v244_i_d0,v244_i_address1,v244_i_ce1,v244_i_q1,v244_1_i_address0,v244_1_i_ce0,v244_1_i_we0,v244_1_i_d0,v244_1_i_address1,v244_1_i_ce1,v244_1_i_q1,v244_2_i_address0,v244_2_i_ce0,v244_2_i_we0,v244_2_i_d0,v244_2_i_address1,v244_2_i_ce1,v244_2_i_q1,v244_3_i_address0,v244_3_i_ce0,v244_3_i_we0,v244_3_i_d0,v244_3_i_address1,v244_3_i_ce1,v244_3_i_q1,v242_7_i_address0,v242_7_i_ce0,v242_7_i_q0,v241_3_i_address0,v241_3_i_ce0,v241_3_i_q0,v242_6_i_address0,v242_6_i_ce0,v242_6_i_q0,v241_2_i_address0,v241_2_i_ce0,v241_2_i_q0,v242_5_i_address0,v242_5_i_ce0,v242_5_i_q0,v241_1_i_address0,v241_1_i_ce0,v241_1_i_q0,v242_4_i_address0,v242_4_i_ce0,v242_4_i_q0,v241_i_address0,v241_i_ce0,v241_i_q0,v242_3_i_address0,v242_3_i_ce0,v242_3_i_q0,v242_2_i_address0,v242_2_i_ce0,v242_2_i_q0,v242_1_i_address0,v242_1_i_ce0,v242_1_i_q0,v242_i_address0,v242_i_ce0,v242_i_q0,v240_3_i_address0,v240_3_i_ce0,v240_3_i_q0,v240_2_i_address0,v240_2_i_ce0,v240_2_i_q0,v240_1_i_address0,v240_1_i_ce0,v240_1_i_q0,v240_i_address0,v240_i_ce0,v240_i_q0,ap_return_0,ap_return_1);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [13:0] p_read;
output  [2:0] v239_i_address0;
output   v239_i_ce0;
output   v239_i_we0;
output  [6:0] v239_i_d0;
output  [2:0] v239_1_i_address0;
output   v239_1_i_ce0;
output   v239_1_i_we0;
output  [6:0] v239_1_i_d0;
output  [2:0] v239_2_i_address0;
output   v239_2_i_ce0;
output   v239_2_i_we0;
output  [6:0] v239_2_i_d0;
output  [2:0] v239_3_i_address0;
output   v239_3_i_ce0;
output   v239_3_i_we0;
output  [6:0] v239_3_i_d0;
output  [3:0] v243_1_i_address0;
output   v243_1_i_ce0;
input  [7:0] v243_1_i_q0;
output  [3:0] v243_i_address0;
output   v243_i_ce0;
input  [7:0] v243_i_q0;
output  [2:0] v244_i_address0;
output   v244_i_ce0;
output   v244_i_we0;
output  [7:0] v244_i_d0;
output  [2:0] v244_i_address1;
output   v244_i_ce1;
input  [7:0] v244_i_q1;
output  [2:0] v244_1_i_address0;
output   v244_1_i_ce0;
output   v244_1_i_we0;
output  [7:0] v244_1_i_d0;
output  [2:0] v244_1_i_address1;
output   v244_1_i_ce1;
input  [7:0] v244_1_i_q1;
output  [2:0] v244_2_i_address0;
output   v244_2_i_ce0;
output   v244_2_i_we0;
output  [7:0] v244_2_i_d0;
output  [2:0] v244_2_i_address1;
output   v244_2_i_ce1;
input  [7:0] v244_2_i_q1;
output  [2:0] v244_3_i_address0;
output   v244_3_i_ce0;
output   v244_3_i_we0;
output  [7:0] v244_3_i_d0;
output  [2:0] v244_3_i_address1;
output   v244_3_i_ce1;
input  [7:0] v244_3_i_q1;
output  [6:0] v242_7_i_address0;
output   v242_7_i_ce0;
input  [7:0] v242_7_i_q0;
output  [2:0] v241_3_i_address0;
output   v241_3_i_ce0;
input  [7:0] v241_3_i_q0;
output  [6:0] v242_6_i_address0;
output   v242_6_i_ce0;
input  [7:0] v242_6_i_q0;
output  [2:0] v241_2_i_address0;
output   v241_2_i_ce0;
input  [7:0] v241_2_i_q0;
output  [6:0] v242_5_i_address0;
output   v242_5_i_ce0;
input  [7:0] v242_5_i_q0;
output  [2:0] v241_1_i_address0;
output   v241_1_i_ce0;
input  [7:0] v241_1_i_q0;
output  [6:0] v242_4_i_address0;
output   v242_4_i_ce0;
input  [7:0] v242_4_i_q0;
output  [2:0] v241_i_address0;
output   v241_i_ce0;
input  [7:0] v241_i_q0;
output  [6:0] v242_3_i_address0;
output   v242_3_i_ce0;
input  [7:0] v242_3_i_q0;
output  [6:0] v242_2_i_address0;
output   v242_2_i_ce0;
input  [7:0] v242_2_i_q0;
output  [6:0] v242_1_i_address0;
output   v242_1_i_ce0;
input  [7:0] v242_1_i_q0;
output  [6:0] v242_i_address0;
output   v242_i_ce0;
input  [7:0] v242_i_q0;
output  [2:0] v240_3_i_address0;
output   v240_3_i_ce0;
input  [7:0] v240_3_i_q0;
output  [2:0] v240_2_i_address0;
output   v240_2_i_ce0;
input  [7:0] v240_2_i_q0;
output  [2:0] v240_1_i_address0;
output   v240_1_i_ce0;
input  [7:0] v240_1_i_q0;
output  [2:0] v240_i_address0;
output   v240_i_ce0;
input  [7:0] v240_i_q0;
output  [14:0] ap_return_0;
output  [14:0] ap_return_1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] ap_return_0;
reg[14:0] ap_return_1;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [6:0] tmp_reg_191;
wire   [12:0] mul_i47_i_i_fu_164_p2;
reg   [12:0] mul_i47_i_i_reg_196;
wire    ap_CS_fsm_state2;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_ready;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_1_i_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_7_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_7_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_6_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_6_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_5_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_5_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_4_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_4_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_3_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_2_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_1_i_ce0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_3_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_ce1;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_2_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_ce1;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_1_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_ce1;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_ce1;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_3_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_2_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_1_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_i_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_we0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_we0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_we0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_we0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [11:0] tmp_135_fu_153_p3;
wire   [12:0] p_shl_fu_160_p1;
wire   [14:0] p_read_cast_fu_171_p1;
reg   [14:0] ap_return_0_preg;
reg   [14:0] ap_return_1_preg;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 15'd0;
#0 ap_return_1_preg = 15'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_ready),.v243_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_1_i_address0),.v243_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_1_i_ce0),.v243_1_i_q0(v243_1_i_q0),.v243_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_i_address0),.v243_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_i_ce0),.v243_i_q0(v243_i_q0),.mul_i47_i_i(mul_i47_i_i_reg_196),.v242_7_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_7_i_address0),.v242_7_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_7_i_ce0),.v242_7_i_q0(v242_7_i_q0),.v242_6_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_6_i_address0),.v242_6_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_6_i_ce0),.v242_6_i_q0(v242_6_i_q0),.v242_5_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_5_i_address0),.v242_5_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_5_i_ce0),.v242_5_i_q0(v242_5_i_q0),.v242_4_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_4_i_address0),.v242_4_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_4_i_ce0),.v242_4_i_q0(v242_4_i_q0),.v242_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_3_i_address0),.v242_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_3_i_ce0),.v242_3_i_q0(v242_3_i_q0),.v242_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_2_i_address0),.v242_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_2_i_ce0),.v242_2_i_q0(v242_2_i_q0),.v242_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_1_i_address0),.v242_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_1_i_ce0),.v242_1_i_q0(v242_1_i_q0),.v242_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_i_address0),.v242_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_i_ce0),.v242_i_q0(v242_i_q0),.v241_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_3_i_address0),.v241_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_3_i_ce0),.v241_3_i_q0(v241_3_i_q0),.v244_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_address0),.v244_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_ce0),.v244_3_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_we0),.v244_3_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_d0),.v244_3_i_address1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_address1),.v244_3_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_ce1),.v244_3_i_q1(v244_3_i_q1),.v241_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_2_i_address0),.v241_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_2_i_ce0),.v241_2_i_q0(v241_2_i_q0),.v244_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_address0),.v244_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_ce0),.v244_2_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_we0),.v244_2_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_d0),.v244_2_i_address1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_address1),.v244_2_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_ce1),.v244_2_i_q1(v244_2_i_q1),.v241_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_1_i_address0),.v241_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_1_i_ce0),.v241_1_i_q0(v241_1_i_q0),.v244_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_address0),.v244_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_ce0),.v244_1_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_we0),.v244_1_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_d0),.v244_1_i_address1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_address1),.v244_1_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_ce1),.v244_1_i_q1(v244_1_i_q1),.v241_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_i_address0),.v241_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_i_ce0),.v241_i_q0(v241_i_q0),.v244_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_address0),.v244_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_ce0),.v244_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_we0),.v244_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_d0),.v244_i_address1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_address1),.v244_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_ce1),.v244_i_q1(v244_i_q1),.v240_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_3_i_address0),.v240_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_3_i_ce0),.v240_3_i_q0(v240_3_i_q0),.v240_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_2_i_address0),.v240_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_2_i_ce0),.v240_2_i_q0(v240_2_i_q0),.v240_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_1_i_address0),.v240_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_1_i_ce0),.v240_1_i_q0(v240_1_i_q0),.v240_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_i_address0),.v240_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_i_ce0),.v240_i_q0(v240_i_q0),.v239_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_address0),.v239_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_ce0),.v239_3_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_we0),.v239_3_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_d0),.v239_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_address0),.v239_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_ce0),.v239_2_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_we0),.v239_2_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_d0),.v239_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_address0),.v239_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_ce0),.v239_1_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_we0),.v239_1_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_d0),.v239_i_address0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_address0),.v239_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_ce0),.v239_i_we0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_we0),.v239_i_d0(grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_d0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_0_preg[0] <= 1'b0;
        ap_return_0_preg[1] <= 1'b0;
        ap_return_0_preg[2] <= 1'b0;
        ap_return_0_preg[3] <= 1'b0;
        ap_return_0_preg[4] <= 1'b0;
        ap_return_0_preg[5] <= 1'b0;
        ap_return_0_preg[6] <= 1'b0;
        ap_return_0_preg[7] <= 1'b0;
        ap_return_0_preg[8] <= 1'b0;
        ap_return_0_preg[9] <= 1'b0;
        ap_return_0_preg[10] <= 1'b0;
        ap_return_0_preg[11] <= 1'b0;
        ap_return_0_preg[12] <= 1'b0;
        ap_return_0_preg[13] <= 1'b0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                        ap_return_0_preg[13 : 0] <= p_read_cast_fu_171_p1[13 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_1_preg[0] <= 1'b0;
        ap_return_1_preg[1] <= 1'b0;
        ap_return_1_preg[2] <= 1'b0;
        ap_return_1_preg[3] <= 1'b0;
        ap_return_1_preg[4] <= 1'b0;
        ap_return_1_preg[5] <= 1'b0;
        ap_return_1_preg[6] <= 1'b0;
        ap_return_1_preg[7] <= 1'b0;
        ap_return_1_preg[8] <= 1'b0;
        ap_return_1_preg[9] <= 1'b0;
        ap_return_1_preg[10] <= 1'b0;
        ap_return_1_preg[11] <= 1'b0;
        ap_return_1_preg[12] <= 1'b0;
        ap_return_1_preg[13] <= 1'b0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                        ap_return_1_preg[13 : 0] <= p_read_cast_fu_171_p1[13 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_i47_i_i_reg_196[12 : 5] <= mul_i47_i_i_fu_164_p2[12 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_191 <= {{p_read[13:7]}};
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return_0 = p_read_cast_fu_171_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return_1 = p_read_cast_fu_171_p1;
    end else begin
        ap_return_1 = ap_return_1_preg;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_ap_start_reg;
assign mul_i47_i_i_fu_164_p2 = (13'd0 - p_shl_fu_160_p1);
assign p_read_cast_fu_171_p1 = p_read;
assign p_shl_fu_160_p1 = tmp_135_fu_153_p3;
assign tmp_135_fu_153_p3 = {{tmp_reg_191}, {5'd0}};
assign v239_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_address0;
assign v239_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_ce0;
assign v239_1_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_d0;
assign v239_1_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_1_i_we0;
assign v239_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_address0;
assign v239_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_ce0;
assign v239_2_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_d0;
assign v239_2_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_2_i_we0;
assign v239_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_address0;
assign v239_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_ce0;
assign v239_3_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_d0;
assign v239_3_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_3_i_we0;
assign v239_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_address0;
assign v239_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_ce0;
assign v239_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_d0;
assign v239_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v239_i_we0;
assign v240_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_1_i_address0;
assign v240_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_1_i_ce0;
assign v240_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_2_i_address0;
assign v240_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_2_i_ce0;
assign v240_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_3_i_address0;
assign v240_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_3_i_ce0;
assign v240_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_i_address0;
assign v240_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v240_i_ce0;
assign v241_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_1_i_address0;
assign v241_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_1_i_ce0;
assign v241_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_2_i_address0;
assign v241_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_2_i_ce0;
assign v241_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_3_i_address0;
assign v241_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_3_i_ce0;
assign v241_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_i_address0;
assign v241_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v241_i_ce0;
assign v242_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_1_i_address0;
assign v242_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_1_i_ce0;
assign v242_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_2_i_address0;
assign v242_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_2_i_ce0;
assign v242_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_3_i_address0;
assign v242_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_3_i_ce0;
assign v242_4_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_4_i_address0;
assign v242_4_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_4_i_ce0;
assign v242_5_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_5_i_address0;
assign v242_5_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_5_i_ce0;
assign v242_6_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_6_i_address0;
assign v242_6_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_6_i_ce0;
assign v242_7_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_7_i_address0;
assign v242_7_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_7_i_ce0;
assign v242_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_i_address0;
assign v242_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v242_i_ce0;
assign v243_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_1_i_address0;
assign v243_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_1_i_ce0;
assign v243_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_i_address0;
assign v243_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v243_i_ce0;
assign v244_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_address0;
assign v244_1_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_address1;
assign v244_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_ce0;
assign v244_1_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_ce1;
assign v244_1_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_d0;
assign v244_1_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_1_i_we0;
assign v244_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_address0;
assign v244_2_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_address1;
assign v244_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_ce0;
assign v244_2_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_ce1;
assign v244_2_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_d0;
assign v244_2_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_2_i_we0;
assign v244_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_address0;
assign v244_3_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_address1;
assign v244_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_ce0;
assign v244_3_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_ce1;
assign v244_3_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_d0;
assign v244_3_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_3_i_we0;
assign v244_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_address0;
assign v244_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_address1;
assign v244_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_ce0;
assign v244_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_ce1;
assign v244_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_d0;
assign v244_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_264_1_proc65_Pipeline_VITIS_LO_fu_86_v244_i_we0;
always @ (posedge ap_clk) begin
    mul_i47_i_i_reg_196[4:0] <= 5'b00000;
    ap_return_0_preg[14] <= 1'b0;
    ap_return_1_preg[14] <= 1'b0;
end
endmodule 
