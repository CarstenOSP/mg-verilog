
module forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15399_address0,v15399_ce0,v15399_we0,v15399_d0,v15399_1_address0,v15399_1_ce0,v15399_1_we0,v15399_1_d0,v15399_2_address0,v15399_2_ce0,v15399_2_we0,v15399_2_d0,v15399_3_address0,v15399_3_ce0,v15399_3_we0,v15399_3_d0,v15399_4_address0,v15399_4_ce0,v15399_4_we0,v15399_4_d0,v15399_5_address0,v15399_5_ce0,v15399_5_we0,v15399_5_d0,v15399_6_address0,v15399_6_ce0,v15399_6_we0,v15399_6_d0,v15399_7_address0,v15399_7_ce0,v15399_7_we0,v15399_7_d0,v15391_0,v15401_0_0_address0,v15401_0_0_ce0,v15401_0_0_q0,v15401_0_1_address0,v15401_0_1_ce0,v15401_0_1_q0,v15401_0_2_address0,v15401_0_2_ce0,v15401_0_2_q0,v15401_0_7_address0,v15401_0_7_ce0,v15401_0_7_q0,v15401_1_0_address0,v15401_1_0_ce0,v15401_1_0_q0,v15401_1_1_address0,v15401_1_1_ce0,v15401_1_1_q0,v15401_1_2_address0,v15401_1_2_ce0,v15401_1_2_q0,v15401_1_7_address0,v15401_1_7_ce0,v15401_1_7_q0,v15401_2_0_address0,v15401_2_0_ce0,v15401_2_0_q0,v15401_2_1_address0,v15401_2_1_ce0,v15401_2_1_q0,v15401_2_2_address0,v15401_2_2_ce0,v15401_2_2_q0,v15401_2_7_address0,v15401_2_7_ce0,v15401_2_7_q0,v15401_3_0_address0,v15401_3_0_ce0,v15401_3_0_q0,v15401_3_1_address0,v15401_3_1_ce0,v15401_3_1_q0,v15401_3_2_address0,v15401_3_2_ce0,v15401_3_2_q0,v15401_3_7_address0,v15401_3_7_ce0,v15401_3_7_q0,v15401_0_3_address0,v15401_0_3_ce0,v15401_0_3_q0,v15401_0_4_address0,v15401_0_4_ce0,v15401_0_4_q0,v15401_1_3_address0,v15401_1_3_ce0,v15401_1_3_q0,v15401_1_4_address0,v15401_1_4_ce0,v15401_1_4_q0,v15401_2_3_address0,v15401_2_3_ce0,v15401_2_3_q0,v15401_2_4_address0,v15401_2_4_ce0,v15401_2_4_q0,v15401_3_3_address0,v15401_3_3_ce0,v15401_3_3_q0,v15401_3_4_address0,v15401_3_4_ce0,v15401_3_4_q0,v15401_0_5_address0,v15401_0_5_ce0,v15401_0_5_q0,v15401_0_6_address0,v15401_0_6_ce0,v15401_0_6_q0,v15401_1_5_address0,v15401_1_5_ce0,v15401_1_5_q0,v15401_1_6_address0,v15401_1_6_ce0,v15401_1_6_q0,v15401_2_5_address0,v15401_2_5_ce0,v15401_2_5_q0,v15401_2_6_address0,v15401_2_6_ce0,v15401_2_6_q0,v15401_3_5_address0,v15401_3_5_ce0,v15401_3_5_q0,v15401_3_6_address0,v15401_3_6_ce0,v15401_3_6_q0,ap_return);  
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
output  [6:0] v15399_address0;
output   v15399_ce0;
output   v15399_we0;
output  [7:0] v15399_d0;
output  [6:0] v15399_1_address0;
output   v15399_1_ce0;
output   v15399_1_we0;
output  [7:0] v15399_1_d0;
output  [6:0] v15399_2_address0;
output   v15399_2_ce0;
output   v15399_2_we0;
output  [7:0] v15399_2_d0;
output  [6:0] v15399_3_address0;
output   v15399_3_ce0;
output   v15399_3_we0;
output  [7:0] v15399_3_d0;
output  [6:0] v15399_4_address0;
output   v15399_4_ce0;
output   v15399_4_we0;
output  [7:0] v15399_4_d0;
output  [6:0] v15399_5_address0;
output   v15399_5_ce0;
output   v15399_5_we0;
output  [7:0] v15399_5_d0;
output  [6:0] v15399_6_address0;
output   v15399_6_ce0;
output   v15399_6_we0;
output  [7:0] v15399_6_d0;
output  [6:0] v15399_7_address0;
output   v15399_7_ce0;
output   v15399_7_we0;
output  [7:0] v15399_7_d0;
input  [9:0] v15391_0;
output  [12:0] v15401_0_0_address0;
output   v15401_0_0_ce0;
input  [7:0] v15401_0_0_q0;
output  [12:0] v15401_0_1_address0;
output   v15401_0_1_ce0;
input  [7:0] v15401_0_1_q0;
output  [12:0] v15401_0_2_address0;
output   v15401_0_2_ce0;
input  [7:0] v15401_0_2_q0;
output  [12:0] v15401_0_7_address0;
output   v15401_0_7_ce0;
input  [7:0] v15401_0_7_q0;
output  [12:0] v15401_1_0_address0;
output   v15401_1_0_ce0;
input  [7:0] v15401_1_0_q0;
output  [12:0] v15401_1_1_address0;
output   v15401_1_1_ce0;
input  [7:0] v15401_1_1_q0;
output  [12:0] v15401_1_2_address0;
output   v15401_1_2_ce0;
input  [7:0] v15401_1_2_q0;
output  [12:0] v15401_1_7_address0;
output   v15401_1_7_ce0;
input  [7:0] v15401_1_7_q0;
output  [12:0] v15401_2_0_address0;
output   v15401_2_0_ce0;
input  [7:0] v15401_2_0_q0;
output  [12:0] v15401_2_1_address0;
output   v15401_2_1_ce0;
input  [7:0] v15401_2_1_q0;
output  [12:0] v15401_2_2_address0;
output   v15401_2_2_ce0;
input  [7:0] v15401_2_2_q0;
output  [12:0] v15401_2_7_address0;
output   v15401_2_7_ce0;
input  [7:0] v15401_2_7_q0;
output  [12:0] v15401_3_0_address0;
output   v15401_3_0_ce0;
input  [7:0] v15401_3_0_q0;
output  [12:0] v15401_3_1_address0;
output   v15401_3_1_ce0;
input  [7:0] v15401_3_1_q0;
output  [12:0] v15401_3_2_address0;
output   v15401_3_2_ce0;
input  [7:0] v15401_3_2_q0;
output  [12:0] v15401_3_7_address0;
output   v15401_3_7_ce0;
input  [7:0] v15401_3_7_q0;
output  [12:0] v15401_0_3_address0;
output   v15401_0_3_ce0;
input  [7:0] v15401_0_3_q0;
output  [12:0] v15401_0_4_address0;
output   v15401_0_4_ce0;
input  [7:0] v15401_0_4_q0;
output  [12:0] v15401_1_3_address0;
output   v15401_1_3_ce0;
input  [7:0] v15401_1_3_q0;
output  [12:0] v15401_1_4_address0;
output   v15401_1_4_ce0;
input  [7:0] v15401_1_4_q0;
output  [12:0] v15401_2_3_address0;
output   v15401_2_3_ce0;
input  [7:0] v15401_2_3_q0;
output  [12:0] v15401_2_4_address0;
output   v15401_2_4_ce0;
input  [7:0] v15401_2_4_q0;
output  [12:0] v15401_3_3_address0;
output   v15401_3_3_ce0;
input  [7:0] v15401_3_3_q0;
output  [12:0] v15401_3_4_address0;
output   v15401_3_4_ce0;
input  [7:0] v15401_3_4_q0;
output  [12:0] v15401_0_5_address0;
output   v15401_0_5_ce0;
input  [7:0] v15401_0_5_q0;
output  [12:0] v15401_0_6_address0;
output   v15401_0_6_ce0;
input  [7:0] v15401_0_6_q0;
output  [12:0] v15401_1_5_address0;
output   v15401_1_5_ce0;
input  [7:0] v15401_1_5_q0;
output  [12:0] v15401_1_6_address0;
output   v15401_1_6_ce0;
input  [7:0] v15401_1_6_q0;
output  [12:0] v15401_2_5_address0;
output   v15401_2_5_ce0;
input  [7:0] v15401_2_5_q0;
output  [12:0] v15401_2_6_address0;
output   v15401_2_6_ce0;
input  [7:0] v15401_2_6_q0;
output  [12:0] v15401_3_5_address0;
output   v15401_3_5_ce0;
input  [7:0] v15401_3_5_q0;
output  [12:0] v15401_3_6_address0;
output   v15401_3_6_ce0;
input  [7:0] v15401_3_6_q0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [4:0] trunc_ln_reg_445;
reg   [1:0] tmp_46_reg_451;
wire   [1:0] empty_fu_274_p1;
reg   [1:0] empty_reg_457;
wire    ap_CS_fsm_state2;
reg   [1:0] tmp_49_reg_468;
reg   [0:0] tmp_50_reg_473;
wire   [1:0] trunc_ln20313_fu_327_p1;
reg   [1:0] trunc_ln20313_reg_478;
wire    ap_CS_fsm_state9;
wire   [7:0] mul5_i_fu_351_p2;
reg   [7:0] mul5_i_reg_484;
wire   [7:0] thr_add2_fu_402_p3;
reg   [7:0] thr_add2_reg_489;
wire   [6:0] sub_ln20315_fu_429_p2;
reg   [6:0] sub_ln20315_reg_494;
wire   [1:0] trunc_ln20315_fu_436_p1;
reg   [1:0] trunc_ln20315_reg_499;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_ready;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_d0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_7_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_7_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_7_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_7_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_4_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_4_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_4_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_4_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_5_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_6_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_5_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_6_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_5_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_6_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_5_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_6_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [4:0] grp_fu_268_p0;
wire   [2:0] grp_fu_268_p1;
wire   [4:0] mul_ln20316_fu_281_p0;
wire   [10:0] zext_ln20316_fu_278_p1;
wire   [6:0] mul_ln20316_fu_281_p1;
wire   [10:0] mul_ln20316_fu_281_p2;
wire   [3:0] grp_fu_297_p0;
wire   [2:0] grp_fu_297_p1;
wire   [4:0] mul_ln20317_fu_303_p0;
wire   [6:0] mul_ln20317_fu_303_p1;
wire   [10:0] mul_ln20317_fu_303_p2;
wire   [1:0] grp_fu_297_p2;
wire   [4:0] tmp_47_fu_340_p3;
wire   [7:0] p_shl_fu_333_p3;
wire   [7:0] p_shl643_fu_347_p1;
wire   [4:0] tmp_48_fu_365_p3;
wire   [7:0] p_shl131_fu_358_p3;
wire   [7:0] p_shl641_fu_372_p1;
wire   [7:0] mul11_i_fu_376_p2;
wire   [4:0] empty_171_fu_382_p1;
wire   [4:0] grp_fu_268_p2;
wire   [2:0] tmp_fu_392_p4;
wire   [4:0] empty_172_fu_386_p2;
wire   [4:0] tmp_51_fu_411_p3;
wire   [6:0] tmp_52_fu_418_p3;
wire   [6:0] zext_ln20270_fu_425_p1;
reg    grp_fu_268_ap_start;
wire    grp_fu_268_ap_done;
reg    grp_fu_268_ce;
reg    grp_fu_297_ap_start;
wire    grp_fu_297_ap_done;
reg   [9:0] ap_return_preg;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_ready),.urem_ln20316(trunc_ln20313_reg_478),.mul5_i(mul5_i_reg_484),.mul_ln20270(sub_ln20315_reg_494),.v15399_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_address0),.v15399_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_ce0),.v15399_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_we0),.v15399_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_d0),.v15399_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_address0),.v15399_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_ce0),.v15399_1_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_we0),.v15399_1_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_d0),.v15399_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_address0),.v15399_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_ce0),.v15399_2_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_we0),.v15399_2_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_d0),.v15399_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_address0),.v15399_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_ce0),.v15399_3_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_we0),.v15399_3_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_d0),.v15399_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_address0),.v15399_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_ce0),.v15399_4_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_we0),.v15399_4_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_d0),.v15399_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_address0),.v15399_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_ce0),.v15399_5_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_we0),.v15399_5_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_d0),.v15399_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_address0),.v15399_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_ce0),.v15399_6_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_we0),.v15399_6_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_d0),.v15399_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_address0),.v15399_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_ce0),.v15399_7_we0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_we0),.v15399_7_d0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_d0),.zext_ln20266(thr_add2_reg_489),.v15401_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_0_address0),.v15401_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_0_ce0),.v15401_0_0_q0(v15401_0_0_q0),.v15401_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_1_address0),.v15401_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_1_ce0),.v15401_0_1_q0(v15401_0_1_q0),.v15401_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_2_address0),.v15401_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_2_ce0),.v15401_0_2_q0(v15401_0_2_q0),.v15401_0_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_7_address0),.v15401_0_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_7_ce0),.v15401_0_7_q0(v15401_0_7_q0),.v15401_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_0_address0),.v15401_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_0_ce0),.v15401_1_0_q0(v15401_1_0_q0),.v15401_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_1_address0),.v15401_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_1_ce0),.v15401_1_1_q0(v15401_1_1_q0),.v15401_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_2_address0),.v15401_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_2_ce0),.v15401_1_2_q0(v15401_1_2_q0),.v15401_1_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_7_address0),.v15401_1_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_7_ce0),.v15401_1_7_q0(v15401_1_7_q0),.v15401_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_0_address0),.v15401_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_0_ce0),.v15401_2_0_q0(v15401_2_0_q0),.v15401_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_1_address0),.v15401_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_1_ce0),.v15401_2_1_q0(v15401_2_1_q0),.v15401_2_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_2_address0),.v15401_2_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_2_ce0),.v15401_2_2_q0(v15401_2_2_q0),.v15401_2_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_7_address0),.v15401_2_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_7_ce0),.v15401_2_7_q0(v15401_2_7_q0),.v15401_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_0_address0),.v15401_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_0_ce0),.v15401_3_0_q0(v15401_3_0_q0),.v15401_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_1_address0),.v15401_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_1_ce0),.v15401_3_1_q0(v15401_3_1_q0),.v15401_3_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_2_address0),.v15401_3_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_2_ce0),.v15401_3_2_q0(v15401_3_2_q0),.v15401_3_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_7_address0),.v15401_3_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_7_ce0),.v15401_3_7_q0(v15401_3_7_q0),.empty_104(trunc_ln20315_reg_499),.empty(trunc_ln20313_reg_478),.v15401_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_3_address0),.v15401_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_3_ce0),.v15401_0_3_q0(v15401_0_3_q0),.v15401_0_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_4_address0),.v15401_0_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_4_ce0),.v15401_0_4_q0(v15401_0_4_q0),.v15401_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_3_address0),.v15401_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_3_ce0),.v15401_1_3_q0(v15401_1_3_q0),.v15401_1_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_4_address0),.v15401_1_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_4_ce0),.v15401_1_4_q0(v15401_1_4_q0),.v15401_2_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_3_address0),.v15401_2_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_3_ce0),.v15401_2_3_q0(v15401_2_3_q0),.v15401_2_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_4_address0),.v15401_2_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_4_ce0),.v15401_2_4_q0(v15401_2_4_q0),.v15401_3_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_3_address0),.v15401_3_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_3_ce0),.v15401_3_3_q0(v15401_3_3_q0),.v15401_3_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_4_address0),.v15401_3_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_4_ce0),.v15401_3_4_q0(v15401_3_4_q0),.v15401_0_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_5_address0),.v15401_0_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_5_ce0),.v15401_0_5_q0(v15401_0_5_q0),.v15401_0_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_6_address0),.v15401_0_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_6_ce0),.v15401_0_6_q0(v15401_0_6_q0),.v15401_1_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_5_address0),.v15401_1_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_5_ce0),.v15401_1_5_q0(v15401_1_5_q0),.v15401_1_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_6_address0),.v15401_1_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_6_ce0),.v15401_1_6_q0(v15401_1_6_q0),.v15401_2_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_5_address0),.v15401_2_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_5_ce0),.v15401_2_5_q0(v15401_2_5_q0),.v15401_2_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_6_address0),.v15401_2_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_6_ce0),.v15401_2_6_q0(v15401_2_6_q0),.v15401_3_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_5_address0),.v15401_3_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_5_ce0),.v15401_3_5_q0(v15401_3_5_q0),.v15401_3_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_6_address0),.v15401_3_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_6_ce0),.v15401_3_6_q0(v15401_3_6_q0));
forward_urem_5ns_3ns_5_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 5 ))
urem_5ns_3ns_5_9_seq_1_U76(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_268_ap_start),.done(grp_fu_268_ap_done),.din0(grp_fu_268_p0),.din1(grp_fu_268_p1),.ce(grp_fu_268_ce),.dout(grp_fu_268_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U77(.din0(mul_ln20316_fu_281_p0),.din1(mul_ln20316_fu_281_p1),.dout(mul_ln20316_fu_281_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U78(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_297_ap_start),.done(grp_fu_297_ap_done),.din0(grp_fu_297_p0),.din1(grp_fu_297_p1),.ce(1'b1),.dout(grp_fu_297_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U79(.din0(mul_ln20317_fu_303_p0),.din1(mul_ln20317_fu_303_p1),.dout(mul_ln20317_fu_303_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_return_preg <= v15391_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_457 <= empty_fu_274_p1;
        tmp_46_reg_451 <= {{v15391_0[3:2]}};
        trunc_ln_reg_445 <= {{v15391_0[9:5]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul5_i_reg_484[7 : 3] <= mul5_i_fu_351_p2[7 : 3];
        sub_ln20315_reg_494[6 : 3] <= sub_ln20315_fu_429_p2[6 : 3];
        thr_add2_reg_489 <= thr_add2_fu_402_p3;
        trunc_ln20313_reg_478 <= trunc_ln20313_fu_327_p1;
        trunc_ln20315_reg_499 <= trunc_ln20315_fu_436_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_49_reg_468 <= {{mul_ln20317_fu_303_p2[10:9]}};
        tmp_50_reg_473 <= mul_ln20317_fu_303_p2[32'd9];
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_return = v15391_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_268_ap_start = 1'b1;
    end else begin
        grp_fu_268_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_268_ce = 1'b0;
    end else begin
        grp_fu_268_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_297_ap_start = 1'b1;
    end else begin
        grp_fu_297_ap_start = 1'b0;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_171_fu_382_p1 = mul11_i_fu_376_p2[4:0];
assign empty_172_fu_386_p2 = (grp_fu_268_p2 | empty_171_fu_382_p1);
assign empty_fu_274_p1 = v15391_0[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_ap_start_reg;
assign grp_fu_268_p0 = {{v15391_0[9:5]}};
assign grp_fu_268_p1 = 5'd3;
assign grp_fu_297_p0 = {{mul_ln20316_fu_281_p2[10:7]}};
assign grp_fu_297_p1 = 4'd3;
assign mul11_i_fu_376_p2 = (p_shl131_fu_358_p3 - p_shl641_fu_372_p1);
assign mul5_i_fu_351_p2 = (p_shl_fu_333_p3 - p_shl643_fu_347_p1);
assign mul_ln20316_fu_281_p0 = zext_ln20316_fu_278_p1;
assign mul_ln20316_fu_281_p1 = 11'd43;
assign mul_ln20317_fu_303_p0 = zext_ln20316_fu_278_p1;
assign mul_ln20317_fu_303_p1 = 11'd57;
assign p_shl131_fu_358_p3 = {{empty_reg_457}, {6'd0}};
assign p_shl641_fu_372_p1 = tmp_48_fu_365_p3;
assign p_shl643_fu_347_p1 = tmp_47_fu_340_p3;
assign p_shl_fu_333_p3 = {{tmp_46_reg_451}, {6'd0}};
assign sub_ln20315_fu_429_p2 = (tmp_52_fu_418_p3 - zext_ln20270_fu_425_p1);
assign thr_add2_fu_402_p3 = {{tmp_fu_392_p4}, {empty_172_fu_386_p2}};
assign tmp_47_fu_340_p3 = {{tmp_46_reg_451}, {3'd0}};
assign tmp_48_fu_365_p3 = {{empty_reg_457}, {3'd0}};
assign tmp_51_fu_411_p3 = {{tmp_49_reg_468}, {3'd0}};
assign tmp_52_fu_418_p3 = {{tmp_50_reg_473}, {6'd0}};
assign tmp_fu_392_p4 = {{mul11_i_fu_376_p2[7:5]}};
assign trunc_ln20313_fu_327_p1 = grp_fu_297_p2[1:0];
assign trunc_ln20315_fu_436_p1 = grp_fu_268_p2[1:0];
assign v15399_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_address0;
assign v15399_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_ce0;
assign v15399_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_d0;
assign v15399_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_1_we0;
assign v15399_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_address0;
assign v15399_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_ce0;
assign v15399_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_d0;
assign v15399_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_2_we0;
assign v15399_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_address0;
assign v15399_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_ce0;
assign v15399_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_d0;
assign v15399_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_3_we0;
assign v15399_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_address0;
assign v15399_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_ce0;
assign v15399_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_d0;
assign v15399_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_4_we0;
assign v15399_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_address0;
assign v15399_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_ce0;
assign v15399_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_d0;
assign v15399_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_5_we0;
assign v15399_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_address0;
assign v15399_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_ce0;
assign v15399_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_d0;
assign v15399_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_6_we0;
assign v15399_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_address0;
assign v15399_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_ce0;
assign v15399_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_d0;
assign v15399_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_7_we0;
assign v15399_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_address0;
assign v15399_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_ce0;
assign v15399_d0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_d0;
assign v15399_we0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15399_we0;
assign v15401_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_0_address0;
assign v15401_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_0_ce0;
assign v15401_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_1_address0;
assign v15401_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_1_ce0;
assign v15401_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_2_address0;
assign v15401_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_2_ce0;
assign v15401_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_3_address0;
assign v15401_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_3_ce0;
assign v15401_0_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_4_address0;
assign v15401_0_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_4_ce0;
assign v15401_0_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_5_address0;
assign v15401_0_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_5_ce0;
assign v15401_0_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_6_address0;
assign v15401_0_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_6_ce0;
assign v15401_0_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_7_address0;
assign v15401_0_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_0_7_ce0;
assign v15401_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_0_address0;
assign v15401_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_0_ce0;
assign v15401_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_1_address0;
assign v15401_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_1_ce0;
assign v15401_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_2_address0;
assign v15401_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_2_ce0;
assign v15401_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_3_address0;
assign v15401_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_3_ce0;
assign v15401_1_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_4_address0;
assign v15401_1_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_4_ce0;
assign v15401_1_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_5_address0;
assign v15401_1_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_5_ce0;
assign v15401_1_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_6_address0;
assign v15401_1_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_6_ce0;
assign v15401_1_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_7_address0;
assign v15401_1_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_1_7_ce0;
assign v15401_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_0_address0;
assign v15401_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_0_ce0;
assign v15401_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_1_address0;
assign v15401_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_1_ce0;
assign v15401_2_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_2_address0;
assign v15401_2_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_2_ce0;
assign v15401_2_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_3_address0;
assign v15401_2_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_3_ce0;
assign v15401_2_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_4_address0;
assign v15401_2_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_4_ce0;
assign v15401_2_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_5_address0;
assign v15401_2_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_5_ce0;
assign v15401_2_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_6_address0;
assign v15401_2_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_6_ce0;
assign v15401_2_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_7_address0;
assign v15401_2_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_2_7_ce0;
assign v15401_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_0_address0;
assign v15401_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_0_ce0;
assign v15401_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_1_address0;
assign v15401_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_1_ce0;
assign v15401_3_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_2_address0;
assign v15401_3_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_2_ce0;
assign v15401_3_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_3_address0;
assign v15401_3_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_3_ce0;
assign v15401_3_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_4_address0;
assign v15401_3_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_4_ce0;
assign v15401_3_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_5_address0;
assign v15401_3_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_5_ce0;
assign v15401_3_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_6_address0;
assign v15401_3_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_6_ce0;
assign v15401_3_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_7_address0;
assign v15401_3_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20266_1_proc37_Pipeline_VITI_fu_158_v15401_3_7_ce0;
assign zext_ln20270_fu_425_p1 = tmp_51_fu_411_p3;
assign zext_ln20316_fu_278_p1 = trunc_ln_reg_445;
always @ (posedge ap_clk) begin
    mul5_i_reg_484[2:0] <= 3'b000;
    sub_ln20315_reg_494[2:0] <= 3'b000;
end
endmodule 
