module kernel_3mm_Loop_VITIS_LOOP_290_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v261_5_1_address0,v261_5_1_ce0,v261_5_1_we0,v261_5_1_d0,v261_5_1_address1,v261_5_1_ce1,v261_5_1_q1,v261_5_0_address0,v261_5_0_ce0,v261_5_0_we0,v261_5_0_d0,v261_5_0_address1,v261_5_0_ce1,v261_5_0_q1,v261_4_1_address0,v261_4_1_ce0,v261_4_1_we0,v261_4_1_d0,v261_4_1_address1,v261_4_1_ce1,v261_4_1_q1,v261_4_0_address0,v261_4_0_ce0,v261_4_0_we0,v261_4_0_d0,v261_4_0_address1,v261_4_0_ce1,v261_4_0_q1,v261_3_1_address0,v261_3_1_ce0,v261_3_1_we0,v261_3_1_d0,v261_3_1_address1,v261_3_1_ce1,v261_3_1_q1,v261_3_0_address0,v261_3_0_ce0,v261_3_0_we0,v261_3_0_d0,v261_3_0_address1,v261_3_0_ce1,v261_3_0_q1,v261_2_1_address0,v261_2_1_ce0,v261_2_1_we0,v261_2_1_d0,v261_2_1_address1,v261_2_1_ce1,v261_2_1_q1,v261_2_0_address0,v261_2_0_ce0,v261_2_0_we0,v261_2_0_d0,v261_2_0_address1,v261_2_0_ce1,v261_2_0_q1,v261_1_1_address0,v261_1_1_ce0,v261_1_1_we0,v261_1_1_d0,v261_1_1_address1,v261_1_1_ce1,v261_1_1_q1,v261_1_0_address0,v261_1_0_ce0,v261_1_0_we0,v261_1_0_d0,v261_1_0_address1,v261_1_0_ce1,v261_1_0_q1,v261_0_1_address0,v261_0_1_ce0,v261_0_1_we0,v261_0_1_d0,v261_0_1_address1,v261_0_1_ce1,v261_0_1_q1,v261_0_0_address0,v261_0_0_ce0,v261_0_0_we0,v261_0_0_d0,v261_0_0_address1,v261_0_0_ce1,v261_0_0_q1,v262_0_address0,v262_0_ce0,v262_0_q0,v262_1_address0,v262_1_ce0,v262_1_q0,v262_2_address0,v262_2_ce0,v262_2_q0,v262_3_address0,v262_3_ce0,v262_3_q0,v262_4_address0,v262_4_ce0,v262_4_q0,v262_5_address0,v262_5_ce0,v262_5_q0,v263_0_address0,v263_0_ce0,v263_0_q0,v263_1_address0,v263_1_ce0,v263_1_q0); 
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
output  [11:0] v261_5_1_address0;
output   v261_5_1_ce0;
output   v261_5_1_we0;
output  [31:0] v261_5_1_d0;
output  [11:0] v261_5_1_address1;
output   v261_5_1_ce1;
input  [31:0] v261_5_1_q1;
output  [11:0] v261_5_0_address0;
output   v261_5_0_ce0;
output   v261_5_0_we0;
output  [31:0] v261_5_0_d0;
output  [11:0] v261_5_0_address1;
output   v261_5_0_ce1;
input  [31:0] v261_5_0_q1;
output  [11:0] v261_4_1_address0;
output   v261_4_1_ce0;
output   v261_4_1_we0;
output  [31:0] v261_4_1_d0;
output  [11:0] v261_4_1_address1;
output   v261_4_1_ce1;
input  [31:0] v261_4_1_q1;
output  [11:0] v261_4_0_address0;
output   v261_4_0_ce0;
output   v261_4_0_we0;
output  [31:0] v261_4_0_d0;
output  [11:0] v261_4_0_address1;
output   v261_4_0_ce1;
input  [31:0] v261_4_0_q1;
output  [11:0] v261_3_1_address0;
output   v261_3_1_ce0;
output   v261_3_1_we0;
output  [31:0] v261_3_1_d0;
output  [11:0] v261_3_1_address1;
output   v261_3_1_ce1;
input  [31:0] v261_3_1_q1;
output  [11:0] v261_3_0_address0;
output   v261_3_0_ce0;
output   v261_3_0_we0;
output  [31:0] v261_3_0_d0;
output  [11:0] v261_3_0_address1;
output   v261_3_0_ce1;
input  [31:0] v261_3_0_q1;
output  [11:0] v261_2_1_address0;
output   v261_2_1_ce0;
output   v261_2_1_we0;
output  [31:0] v261_2_1_d0;
output  [11:0] v261_2_1_address1;
output   v261_2_1_ce1;
input  [31:0] v261_2_1_q1;
output  [11:0] v261_2_0_address0;
output   v261_2_0_ce0;
output   v261_2_0_we0;
output  [31:0] v261_2_0_d0;
output  [11:0] v261_2_0_address1;
output   v261_2_0_ce1;
input  [31:0] v261_2_0_q1;
output  [11:0] v261_1_1_address0;
output   v261_1_1_ce0;
output   v261_1_1_we0;
output  [31:0] v261_1_1_d0;
output  [11:0] v261_1_1_address1;
output   v261_1_1_ce1;
input  [31:0] v261_1_1_q1;
output  [11:0] v261_1_0_address0;
output   v261_1_0_ce0;
output   v261_1_0_we0;
output  [31:0] v261_1_0_d0;
output  [11:0] v261_1_0_address1;
output   v261_1_0_ce1;
input  [31:0] v261_1_0_q1;
output  [11:0] v261_0_1_address0;
output   v261_0_1_ce0;
output   v261_0_1_we0;
output  [31:0] v261_0_1_d0;
output  [11:0] v261_0_1_address1;
output   v261_0_1_ce1;
input  [31:0] v261_0_1_q1;
output  [11:0] v261_0_0_address0;
output   v261_0_0_ce0;
output   v261_0_0_we0;
output  [31:0] v261_0_0_d0;
output  [11:0] v261_0_0_address1;
output   v261_0_0_ce1;
input  [31:0] v261_0_0_q1;
output  [12:0] v262_0_address0;
output   v262_0_ce0;
input  [31:0] v262_0_q0;
output  [12:0] v262_1_address0;
output   v262_1_ce0;
input  [31:0] v262_1_q0;
output  [12:0] v262_2_address0;
output   v262_2_ce0;
input  [31:0] v262_2_q0;
output  [12:0] v262_3_address0;
output   v262_3_ce0;
input  [31:0] v262_3_q0;
output  [12:0] v262_4_address0;
output   v262_4_ce0;
input  [31:0] v262_4_q0;
output  [12:0] v262_5_address0;
output   v262_5_ce0;
input  [31:0] v262_5_q0;
output  [14:0] v263_0_address0;
output   v263_0_ce0;
input  [31:0] v263_0_q0;
output  [14:0] v263_1_address0;
output   v263_1_ce0;
input  [31:0] v263_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [14:0] phi_mul_load_reg_198;
wire    ap_CS_fsm_state2;
reg   [7:0] v196_1_reg_203;
wire   [0:0] cmp11_i_fu_167_p2;
reg   [0:0] cmp11_i_reg_211;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_done;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_idle;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_ready;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_ce1;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_ce0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_we0;
wire   [31:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_d0;
wire   [11:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_address1;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_ce1;
wire   [12:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_0_ce0;
wire   [12:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_1_ce0;
wire   [12:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_2_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_2_ce0;
wire   [12:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_3_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_3_ce0;
wire   [12:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_4_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_4_ce0;
wire   [12:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_5_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_5_ce0;
wire   [14:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_0_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_0_ce0;
wire   [14:0] grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_1_address0;
wire    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_1_ce0;
reg    grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start_reg;
wire   [0:0] icmp_ln290_fu_155_p2;
wire    ap_CS_fsm_state3;
reg   [14:0] phi_mul_fu_76;
wire   [14:0] add_ln290_1_fu_149_p2;
reg    ap_block_state1;
reg   [7:0] v196_fu_80;
wire   [7:0] add_ln290_fu_161_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start_reg = 1'b0;
#0 phi_mul_fu_76 = 15'd0;
#0 v196_fu_80 = 8'd0;
end
kernel_3mm_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3 grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start),.ap_done(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_done),.ap_idle(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_idle),.ap_ready(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_ready),.v261_5_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_address0),.v261_5_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_ce0),.v261_5_1_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_we0),.v261_5_1_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_d0),.v261_5_1_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_address1),.v261_5_1_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_ce1),.v261_5_1_q1(v261_5_1_q1),.v261_5_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_address0),.v261_5_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_ce0),.v261_5_0_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_we0),.v261_5_0_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_d0),.v261_5_0_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_address1),.v261_5_0_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_ce1),.v261_5_0_q1(v261_5_0_q1),.v261_4_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_address0),.v261_4_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_ce0),.v261_4_1_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_we0),.v261_4_1_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_d0),.v261_4_1_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_address1),.v261_4_1_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_ce1),.v261_4_1_q1(v261_4_1_q1),.v261_4_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_address0),.v261_4_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_ce0),.v261_4_0_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_we0),.v261_4_0_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_d0),.v261_4_0_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_address1),.v261_4_0_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_ce1),.v261_4_0_q1(v261_4_0_q1),.v261_3_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_address0),.v261_3_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_ce0),.v261_3_1_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_we0),.v261_3_1_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_d0),.v261_3_1_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_address1),.v261_3_1_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_ce1),.v261_3_1_q1(v261_3_1_q1),.v261_3_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_address0),.v261_3_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_ce0),.v261_3_0_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_we0),.v261_3_0_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_d0),.v261_3_0_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_address1),.v261_3_0_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_ce1),.v261_3_0_q1(v261_3_0_q1),.v261_2_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_address0),.v261_2_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_ce0),.v261_2_1_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_we0),.v261_2_1_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_d0),.v261_2_1_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_address1),.v261_2_1_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_ce1),.v261_2_1_q1(v261_2_1_q1),.v261_2_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_address0),.v261_2_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_ce0),.v261_2_0_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_we0),.v261_2_0_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_d0),.v261_2_0_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_address1),.v261_2_0_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_ce1),.v261_2_0_q1(v261_2_0_q1),.v261_1_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_address0),.v261_1_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_ce0),.v261_1_1_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_we0),.v261_1_1_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_d0),.v261_1_1_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_address1),.v261_1_1_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_ce1),.v261_1_1_q1(v261_1_1_q1),.v261_1_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_address0),.v261_1_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_ce0),.v261_1_0_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_we0),.v261_1_0_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_d0),.v261_1_0_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_address1),.v261_1_0_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_ce1),.v261_1_0_q1(v261_1_0_q1),.v261_0_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_address0),.v261_0_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_ce0),.v261_0_1_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_we0),.v261_0_1_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_d0),.v261_0_1_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_address1),.v261_0_1_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_ce1),.v261_0_1_q1(v261_0_1_q1),.v261_0_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_address0),.v261_0_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_ce0),.v261_0_0_we0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_we0),.v261_0_0_d0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_d0),.v261_0_0_address1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_address1),.v261_0_0_ce1(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_ce1),.v261_0_0_q1(v261_0_0_q1),.zext_ln290(v196_1_reg_203),.v262_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_0_address0),.v262_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_0_ce0),.v262_0_q0(v262_0_q0),.v262_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_1_address0),.v262_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_1_ce0),.v262_1_q0(v262_1_q0),.v262_2_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_2_address0),.v262_2_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_2_ce0),.v262_2_q0(v262_2_q0),.v262_3_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_3_address0),.v262_3_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_3_ce0),.v262_3_q0(v262_3_q0),.v262_4_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_4_address0),.v262_4_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_4_ce0),.v262_4_q0(v262_4_q0),.v262_5_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_5_address0),.v262_5_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_5_ce0),.v262_5_q0(v262_5_q0),.phi_mul(phi_mul_load_reg_198),.v263_0_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_0_address0),.v263_0_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_0_ce0),.v263_0_q0(v263_0_q0),.v263_1_address0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_1_address0),.v263_1_ce0(grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_1_ce0),.v263_1_q0(v263_1_q0),.cmp11_i(cmp11_i_reg_211));
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
        end else if (((icmp_ln290_fu_155_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln290_fu_155_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start_reg <= 1'b1;
        end else if ((grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_ready == 1'b1)) begin
            grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_76 <= 15'd0;
    end else if (((icmp_ln290_fu_155_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul_fu_76 <= add_ln290_1_fu_149_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v196_fu_80 <= 8'd0;
    end else if (((icmp_ln290_fu_155_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v196_fu_80 <= add_ln290_fu_161_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_i_reg_211 <= cmp11_i_fu_167_p2;
        phi_mul_load_reg_198 <= phi_mul_fu_76;
        v196_1_reg_203 <= v196_fu_80;
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
    if ((grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln290_fu_155_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln290_fu_155_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln290_fu_155_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln290_1_fu_149_p2 = (phi_mul_fu_76 + 15'd95);
assign add_ln290_fu_161_p2 = (v196_fu_80 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign cmp11_i_fu_167_p2 = ((v196_fu_80 == 8'd0) ? 1'b1 : 1'b0);
assign grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_ap_start_reg;
assign icmp_ln290_fu_155_p2 = ((v196_fu_80 == 8'd200) ? 1'b1 : 1'b0);
assign v261_0_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_address0;
assign v261_0_0_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_address1;
assign v261_0_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_ce0;
assign v261_0_0_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_ce1;
assign v261_0_0_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_d0;
assign v261_0_0_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_0_we0;
assign v261_0_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_address0;
assign v261_0_1_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_address1;
assign v261_0_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_ce0;
assign v261_0_1_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_ce1;
assign v261_0_1_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_d0;
assign v261_0_1_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_0_1_we0;
assign v261_1_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_address0;
assign v261_1_0_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_address1;
assign v261_1_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_ce0;
assign v261_1_0_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_ce1;
assign v261_1_0_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_d0;
assign v261_1_0_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_0_we0;
assign v261_1_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_address0;
assign v261_1_1_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_address1;
assign v261_1_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_ce0;
assign v261_1_1_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_ce1;
assign v261_1_1_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_d0;
assign v261_1_1_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_1_1_we0;
assign v261_2_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_address0;
assign v261_2_0_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_address1;
assign v261_2_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_ce0;
assign v261_2_0_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_ce1;
assign v261_2_0_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_d0;
assign v261_2_0_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_0_we0;
assign v261_2_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_address0;
assign v261_2_1_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_address1;
assign v261_2_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_ce0;
assign v261_2_1_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_ce1;
assign v261_2_1_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_d0;
assign v261_2_1_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_2_1_we0;
assign v261_3_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_address0;
assign v261_3_0_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_address1;
assign v261_3_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_ce0;
assign v261_3_0_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_ce1;
assign v261_3_0_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_d0;
assign v261_3_0_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_0_we0;
assign v261_3_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_address0;
assign v261_3_1_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_address1;
assign v261_3_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_ce0;
assign v261_3_1_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_ce1;
assign v261_3_1_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_d0;
assign v261_3_1_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_3_1_we0;
assign v261_4_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_address0;
assign v261_4_0_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_address1;
assign v261_4_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_ce0;
assign v261_4_0_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_ce1;
assign v261_4_0_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_d0;
assign v261_4_0_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_0_we0;
assign v261_4_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_address0;
assign v261_4_1_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_address1;
assign v261_4_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_ce0;
assign v261_4_1_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_ce1;
assign v261_4_1_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_d0;
assign v261_4_1_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_4_1_we0;
assign v261_5_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_address0;
assign v261_5_0_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_address1;
assign v261_5_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_ce0;
assign v261_5_0_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_ce1;
assign v261_5_0_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_d0;
assign v261_5_0_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_0_we0;
assign v261_5_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_address0;
assign v261_5_1_address1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_address1;
assign v261_5_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_ce0;
assign v261_5_1_ce1 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_ce1;
assign v261_5_1_d0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_d0;
assign v261_5_1_we0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v261_5_1_we0;
assign v262_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_0_address0;
assign v262_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_0_ce0;
assign v262_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_1_address0;
assign v262_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_1_ce0;
assign v262_2_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_2_address0;
assign v262_2_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_2_ce0;
assign v262_3_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_3_address0;
assign v262_3_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_3_ce0;
assign v262_4_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_4_address0;
assign v262_4_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_4_ce0;
assign v262_5_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_5_address0;
assign v262_5_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v262_5_ce0;
assign v263_0_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_0_address0;
assign v263_0_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_0_ce0;
assign v263_1_address0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_1_address0;
assign v263_1_ce0 = grp_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3_fu_84_v263_1_ce0;
endmodule 