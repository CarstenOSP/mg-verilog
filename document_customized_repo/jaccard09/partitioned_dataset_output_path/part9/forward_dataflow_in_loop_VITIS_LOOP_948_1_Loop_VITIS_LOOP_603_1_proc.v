
module forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v509_3_address0,v509_3_ce0,v509_3_q0,v509_2_address0,v509_2_ce0,v509_2_q0,v509_1_address0,v509_1_ce0,v509_1_q0,v509_address0,v509_ce0,v509_q0,v512_address0,v512_ce0,v512_we0,v512_d0,v512_address1,v512_ce1,v512_q1,v512_1_address0,v512_1_ce0,v512_1_we0,v512_1_d0,v512_1_address1,v512_1_ce1,v512_1_q1,v512_2_address0,v512_2_ce0,v512_2_we0,v512_2_d0,v512_2_address1,v512_2_ce1,v512_2_q1,v512_3_address0,v512_3_ce0,v512_3_we0,v512_3_d0,v512_3_address1,v512_3_ce1,v512_3_q1,v511_3_address0,v511_3_ce0,v511_3_q0,v510_3_address0,v510_3_ce0,v510_3_q0,v508_15_address0,v508_15_ce0,v508_15_q0,v511_2_address0,v511_2_ce0,v511_2_q0,v510_2_address0,v510_2_ce0,v510_2_q0,v508_11_address0,v508_11_ce0,v508_11_q0,v511_1_address0,v511_1_ce0,v511_1_q0,v510_1_address0,v510_1_ce0,v510_1_q0,v508_7_address0,v508_7_ce0,v508_7_q0,v511_address0,v511_ce0,v511_q0,v510_address0,v510_ce0,v510_q0,v508_3_address0,v508_3_ce0,v508_3_q0,v508_14_address0,v508_14_ce0,v508_14_q0,v508_10_address0,v508_10_ce0,v508_10_q0,v508_6_address0,v508_6_ce0,v508_6_q0,v508_2_address0,v508_2_ce0,v508_2_q0,v508_13_address0,v508_13_ce0,v508_13_q0,v508_9_address0,v508_9_ce0,v508_9_q0,v508_5_address0,v508_5_ce0,v508_5_q0,v508_1_address0,v508_1_ce0,v508_1_q0,v508_12_address0,v508_12_ce0,v508_12_q0,v508_8_address0,v508_8_ce0,v508_8_q0,v508_4_address0,v508_4_ce0,v508_4_q0,v508_address0,v508_ce0,v508_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [14:0] p_read;
output  [2:0] v509_3_address0;
output   v509_3_ce0;
input  [7:0] v509_3_q0;
output  [2:0] v509_2_address0;
output   v509_2_ce0;
input  [7:0] v509_2_q0;
output  [2:0] v509_1_address0;
output   v509_1_ce0;
input  [7:0] v509_1_q0;
output  [2:0] v509_address0;
output   v509_ce0;
input  [7:0] v509_q0;
output  [2:0] v512_address0;
output   v512_ce0;
output   v512_we0;
output  [7:0] v512_d0;
output  [2:0] v512_address1;
output   v512_ce1;
input  [7:0] v512_q1;
output  [2:0] v512_1_address0;
output   v512_1_ce0;
output   v512_1_we0;
output  [7:0] v512_1_d0;
output  [2:0] v512_1_address1;
output   v512_1_ce1;
input  [7:0] v512_1_q1;
output  [2:0] v512_2_address0;
output   v512_2_ce0;
output   v512_2_we0;
output  [7:0] v512_2_d0;
output  [2:0] v512_2_address1;
output   v512_2_ce1;
input  [7:0] v512_2_q1;
output  [2:0] v512_3_address0;
output   v512_3_ce0;
output   v512_3_we0;
output  [7:0] v512_3_d0;
output  [2:0] v512_3_address1;
output   v512_3_ce1;
input  [7:0] v512_3_q1;
output  [2:0] v511_3_address0;
output   v511_3_ce0;
input  [7:0] v511_3_q0;
output  [2:0] v510_3_address0;
output   v510_3_ce0;
input  [7:0] v510_3_q0;
output  [5:0] v508_15_address0;
output   v508_15_ce0;
input  [7:0] v508_15_q0;
output  [2:0] v511_2_address0;
output   v511_2_ce0;
input  [7:0] v511_2_q0;
output  [2:0] v510_2_address0;
output   v510_2_ce0;
input  [7:0] v510_2_q0;
output  [5:0] v508_11_address0;
output   v508_11_ce0;
input  [7:0] v508_11_q0;
output  [2:0] v511_1_address0;
output   v511_1_ce0;
input  [7:0] v511_1_q0;
output  [2:0] v510_1_address0;
output   v510_1_ce0;
input  [7:0] v510_1_q0;
output  [5:0] v508_7_address0;
output   v508_7_ce0;
input  [7:0] v508_7_q0;
output  [2:0] v511_address0;
output   v511_ce0;
input  [7:0] v511_q0;
output  [2:0] v510_address0;
output   v510_ce0;
input  [7:0] v510_q0;
output  [5:0] v508_3_address0;
output   v508_3_ce0;
input  [7:0] v508_3_q0;
output  [5:0] v508_14_address0;
output   v508_14_ce0;
input  [7:0] v508_14_q0;
output  [5:0] v508_10_address0;
output   v508_10_ce0;
input  [7:0] v508_10_q0;
output  [5:0] v508_6_address0;
output   v508_6_ce0;
input  [7:0] v508_6_q0;
output  [5:0] v508_2_address0;
output   v508_2_ce0;
input  [7:0] v508_2_q0;
output  [5:0] v508_13_address0;
output   v508_13_ce0;
input  [7:0] v508_13_q0;
output  [5:0] v508_9_address0;
output   v508_9_ce0;
input  [7:0] v508_9_q0;
output  [5:0] v508_5_address0;
output   v508_5_ce0;
input  [7:0] v508_5_q0;
output  [5:0] v508_1_address0;
output   v508_1_ce0;
input  [7:0] v508_1_q0;
output  [5:0] v508_12_address0;
output   v508_12_ce0;
input  [7:0] v508_12_q0;
output  [5:0] v508_8_address0;
output   v508_8_ce0;
input  [7:0] v508_8_q0;
output  [5:0] v508_4_address0;
output   v508_4_ce0;
input  [7:0] v508_4_q0;
output  [5:0] v508_address0;
output   v508_ce0;
input  [7:0] v508_q0;
output  [6:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] empty_fu_198_p1;
reg   [6:0] empty_reg_341;
reg    ap_block_state1;
reg   [7:0] trunc_ln_reg_345;
wire    ap_CS_fsm_state3;
reg   [2:0] tmp_reg_356;
reg   [3:0] tmp_47_reg_361;
wire   [8:0] empty_94_fu_307_p2;
reg   [8:0] empty_94_reg_366;
wire    ap_CS_fsm_state12;
wire   [8:0] empty_95_fu_314_p2;
reg   [8:0] empty_95_reg_371;
wire   [0:0] empty_97_fu_327_p2;
reg   [0:0] empty_97_reg_376;
wire   [0:0] tmp2_fu_334_p2;
reg   [0:0] tmp2_reg_381;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_ready;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_3_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_2_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_1_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_15_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_11_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_7_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_3_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_14_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_10_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_6_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_2_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_13_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_9_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_5_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_1_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_12_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_8_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_4_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_3_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_3_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_ce1;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_2_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_2_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_ce1;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_1_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_1_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_ce1;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_ce1;
reg    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [7:0] grp_fu_212_p0;
wire   [3:0] grp_fu_212_p1;
wire   [7:0] mul_ln953_fu_221_p0;
wire   [16:0] zext_ln953_fu_218_p1;
wire   [9:0] mul_ln953_fu_221_p1;
wire   [7:0] mul_ln952_fu_227_p0;
wire   [9:0] mul_ln952_fu_227_p1;
wire   [16:0] mul_ln952_fu_227_p2;
wire   [5:0] grp_fu_243_p0;
wire   [3:0] grp_fu_243_p1;
wire   [16:0] mul_ln953_fu_221_p2;
wire   [2:0] grp_fu_243_p2;
wire   [2:0] grp_fu_212_p2;
wire   [7:0] mul_i_fu_277_p3;
wire   [2:0] trunc_ln801_fu_269_p1;
wire   [2:0] trunc_ln802_fu_273_p1;
wire   [8:0] mul_i46_cast_fu_284_p1;
wire   [8:0] p_shl_fu_288_p3;
wire   [2:0] empty_96_fu_321_p2;
wire   [0:0] cmp559_i_not_i_fu_295_p2;
wire   [0:0] cmp563_i_not_i_fu_301_p2;
reg    grp_fu_212_ap_start;
wire    grp_fu_212_ap_done;
reg    grp_fu_212_ce;
reg    grp_fu_243_ap_start;
wire    grp_fu_243_ap_done;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_ready),.v509_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_3_address0),.v509_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_3_ce0),.v509_3_q0(v509_3_q0),.v509_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_2_address0),.v509_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_2_ce0),.v509_2_q0(v509_2_q0),.v509_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_1_address0),.v509_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_1_ce0),.v509_1_q0(v509_1_q0),.v509_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_address0),.v509_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_ce0),.v509_q0(v509_q0),.sext_ln603(empty_95_reg_371),.empty_71(empty_94_reg_366),.empty(empty_97_reg_376),.tmp2(tmp2_reg_381),.v508_15_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_15_address0),.v508_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_15_ce0),.v508_15_q0(v508_15_q0),.v508_11_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_11_address0),.v508_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_11_ce0),.v508_11_q0(v508_11_q0),.v508_7_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_7_address0),.v508_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_7_ce0),.v508_7_q0(v508_7_q0),.v508_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_3_address0),.v508_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_3_ce0),.v508_3_q0(v508_3_q0),.v508_14_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_14_address0),.v508_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_14_ce0),.v508_14_q0(v508_14_q0),.v508_10_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_10_address0),.v508_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_10_ce0),.v508_10_q0(v508_10_q0),.v508_6_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_6_address0),.v508_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_6_ce0),.v508_6_q0(v508_6_q0),.v508_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_2_address0),.v508_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_2_ce0),.v508_2_q0(v508_2_q0),.v508_13_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_13_address0),.v508_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_13_ce0),.v508_13_q0(v508_13_q0),.v508_9_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_9_address0),.v508_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_9_ce0),.v508_9_q0(v508_9_q0),.v508_5_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_5_address0),.v508_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_5_ce0),.v508_5_q0(v508_5_q0),.v508_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_1_address0),.v508_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_1_ce0),.v508_1_q0(v508_1_q0),.v508_12_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_12_address0),.v508_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_12_ce0),.v508_12_q0(v508_12_q0),.v508_8_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_8_address0),.v508_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_8_ce0),.v508_8_q0(v508_8_q0),.v508_4_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_4_address0),.v508_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_4_ce0),.v508_4_q0(v508_4_q0),.v508_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_address0),.v508_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_ce0),.v508_q0(v508_q0),.v511_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_3_address0),.v511_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_3_ce0),.v511_3_q0(v511_3_q0),.v510_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_3_address0),.v510_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_3_ce0),.v510_3_q0(v510_3_q0),.v512_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_address0),.v512_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_ce0),.v512_3_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_we0),.v512_3_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_d0),.v512_3_address1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_address1),.v512_3_ce1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_ce1),.v512_3_q1(v512_3_q1),.v511_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_2_address0),.v511_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_2_ce0),.v511_2_q0(v511_2_q0),.v510_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_2_address0),.v510_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_2_ce0),.v510_2_q0(v510_2_q0),.v512_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_address0),.v512_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_ce0),.v512_2_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_we0),.v512_2_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_d0),.v512_2_address1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_address1),.v512_2_ce1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_ce1),.v512_2_q1(v512_2_q1),.v511_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_1_address0),.v511_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_1_ce0),.v511_1_q0(v511_1_q0),.v510_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_1_address0),.v510_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_1_ce0),.v510_1_q0(v510_1_q0),.v512_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_address0),.v512_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_ce0),.v512_1_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_we0),.v512_1_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_d0),.v512_1_address1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_address1),.v512_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_ce1),.v512_1_q1(v512_1_q1),.v511_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_address0),.v511_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_ce0),.v511_q0(v511_q0),.v510_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_address0),.v510_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_ce0),.v510_q0(v510_q0),.v512_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_address0),.v512_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_ce0),.v512_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_we0),.v512_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_d0),.v512_address1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_address1),.v512_ce1(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_ce1),.v512_q1(v512_q1));
forward_urem_8ns_4ns_3_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_8ns_4ns_3_12_seq_1_U9774(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_212_ap_start),.done(grp_fu_212_ap_done),.din0(grp_fu_212_p0),.din1(grp_fu_212_p1),.ce(grp_fu_212_ce),.dout(grp_fu_212_p2));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U9775(.din0(mul_ln953_fu_221_p0),.din1(mul_ln953_fu_221_p1),.dout(mul_ln953_fu_221_p2));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U9776(.din0(mul_ln952_fu_227_p0),.din1(mul_ln952_fu_227_p1),.dout(mul_ln952_fu_227_p2));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U9777(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_243_ap_start),.done(grp_fu_243_ap_done),.din0(grp_fu_243_p0),.din1(grp_fu_243_p1),.ce(1'b1),.dout(grp_fu_243_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_94_reg_366[8 : 5] <= empty_94_fu_307_p2[8 : 5];
        empty_95_reg_371[8 : 5] <= empty_95_fu_314_p2[8 : 5];
        empty_97_reg_376 <= empty_97_fu_327_p2;
        tmp2_reg_381 <= tmp2_fu_334_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_341 <= empty_fu_198_p1;
        trunc_ln_reg_345 <= {{p_read[14:7]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_47_reg_361 <= {{mul_ln953_fu_221_p2[16:13]}};
        tmp_reg_356 <= {{mul_ln953_fu_221_p2[15:13]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_212_ap_start = 1'b1;
    end else begin
        grp_fu_212_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_212_ce = 1'b0;
    end else begin
        grp_fu_212_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_243_ap_start = 1'b1;
    end else begin
        grp_fu_243_ap_start = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign ap_return = empty_reg_341;
assign cmp559_i_not_i_fu_295_p2 = ((trunc_ln801_fu_269_p1 != 3'd4) ? 1'b1 : 1'b0);
assign cmp563_i_not_i_fu_301_p2 = ((trunc_ln802_fu_273_p1 != 3'd4) ? 1'b1 : 1'b0);
assign empty_94_fu_307_p2 = (9'd0 - mul_i46_cast_fu_284_p1);
assign empty_95_fu_314_p2 = ($signed(9'd509) - $signed(p_shl_fu_288_p3));
assign empty_96_fu_321_p2 = (trunc_ln802_fu_273_p1 | trunc_ln801_fu_269_p1);
assign empty_97_fu_327_p2 = ((empty_96_fu_321_p2 != 3'd0) ? 1'b1 : 1'b0);
assign empty_fu_198_p1 = p_read[6:0];
assign grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_ap_start_reg;
assign grp_fu_212_p0 = {{p_read[14:7]}};
assign grp_fu_212_p1 = 8'd5;
assign grp_fu_243_p0 = {{mul_ln952_fu_227_p2[16:11]}};
assign grp_fu_243_p1 = 6'd5;
assign mul_i46_cast_fu_284_p1 = mul_i_fu_277_p3;
assign mul_i_fu_277_p3 = {{tmp_reg_356}, {5'd0}};
assign mul_ln952_fu_227_p0 = zext_ln953_fu_218_p1;
assign mul_ln952_fu_227_p1 = 17'd410;
assign mul_ln953_fu_221_p0 = zext_ln953_fu_218_p1;
assign mul_ln953_fu_221_p1 = 17'd328;
assign p_shl_fu_288_p3 = {{tmp_47_reg_361}, {5'd0}};
assign tmp2_fu_334_p2 = (cmp563_i_not_i_fu_301_p2 | cmp559_i_not_i_fu_295_p2);
assign trunc_ln801_fu_269_p1 = grp_fu_243_p2[2:0];
assign trunc_ln802_fu_273_p1 = grp_fu_212_p2[2:0];
assign v508_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_10_address0;
assign v508_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_10_ce0;
assign v508_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_11_address0;
assign v508_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_11_ce0;
assign v508_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_12_address0;
assign v508_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_12_ce0;
assign v508_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_13_address0;
assign v508_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_13_ce0;
assign v508_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_14_address0;
assign v508_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_14_ce0;
assign v508_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_15_address0;
assign v508_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_15_ce0;
assign v508_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_1_address0;
assign v508_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_1_ce0;
assign v508_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_2_address0;
assign v508_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_2_ce0;
assign v508_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_3_address0;
assign v508_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_3_ce0;
assign v508_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_4_address0;
assign v508_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_4_ce0;
assign v508_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_5_address0;
assign v508_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_5_ce0;
assign v508_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_6_address0;
assign v508_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_6_ce0;
assign v508_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_7_address0;
assign v508_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_7_ce0;
assign v508_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_8_address0;
assign v508_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_8_ce0;
assign v508_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_9_address0;
assign v508_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_9_ce0;
assign v508_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_address0;
assign v508_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v508_ce0;
assign v509_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_1_address0;
assign v509_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_1_ce0;
assign v509_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_2_address0;
assign v509_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_2_ce0;
assign v509_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_3_address0;
assign v509_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_3_ce0;
assign v509_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_address0;
assign v509_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v509_ce0;
assign v510_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_1_address0;
assign v510_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_1_ce0;
assign v510_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_2_address0;
assign v510_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_2_ce0;
assign v510_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_3_address0;
assign v510_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_3_ce0;
assign v510_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_address0;
assign v510_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v510_ce0;
assign v511_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_1_address0;
assign v511_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_1_ce0;
assign v511_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_2_address0;
assign v511_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_2_ce0;
assign v511_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_3_address0;
assign v511_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_3_ce0;
assign v511_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_address0;
assign v511_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v511_ce0;
assign v512_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_address0;
assign v512_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_address1;
assign v512_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_ce0;
assign v512_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_ce1;
assign v512_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_d0;
assign v512_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_1_we0;
assign v512_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_address0;
assign v512_2_address1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_address1;
assign v512_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_ce0;
assign v512_2_ce1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_ce1;
assign v512_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_d0;
assign v512_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_2_we0;
assign v512_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_address0;
assign v512_3_address1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_address1;
assign v512_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_ce0;
assign v512_3_ce1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_ce1;
assign v512_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_d0;
assign v512_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_3_we0;
assign v512_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_address0;
assign v512_address1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_address1;
assign v512_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_ce0;
assign v512_ce1 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_ce1;
assign v512_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_d0;
assign v512_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP_fu_126_v512_we0;
assign zext_ln953_fu_218_p1 = trunc_ln_reg_345;
always @ (posedge ap_clk) begin
    empty_94_reg_366[4:0] <= 5'b00000;
    empty_95_reg_371[4:0] <= 5'b11101;
end
endmodule 
