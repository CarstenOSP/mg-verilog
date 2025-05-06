
module forward_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5281_address0,v5281_ce0,v5281_we0,v5281_d0,v5281_1_address0,v5281_1_ce0,v5281_1_we0,v5281_1_d0,v5281_2_address0,v5281_2_ce0,v5281_2_we0,v5281_2_d0,v5281_3_address0,v5281_3_ce0,v5281_3_we0,v5281_3_d0,v5281_4_address0,v5281_4_ce0,v5281_4_we0,v5281_4_d0,v5281_5_address0,v5281_5_ce0,v5281_5_we0,v5281_5_d0,v5281_6_address0,v5281_6_ce0,v5281_6_we0,v5281_6_d0,v5281_7_address0,v5281_7_ce0,v5281_7_we0,v5281_7_d0,v5272_0,v9229_0_0_0_address0,v9229_0_0_0_ce0,v9229_0_0_0_q0,v9229_0_0_0_address1,v9229_0_0_0_ce1,v9229_0_0_0_q1,v9229_0_0_1_address0,v9229_0_0_1_ce0,v9229_0_0_1_q0,v9229_0_0_1_address1,v9229_0_0_1_ce1,v9229_0_0_1_q1,v9229_0_1_0_address0,v9229_0_1_0_ce0,v9229_0_1_0_q0,v9229_0_1_0_address1,v9229_0_1_0_ce1,v9229_0_1_0_q1,v9229_0_1_1_address0,v9229_0_1_1_ce0,v9229_0_1_1_q0,v9229_0_1_1_address1,v9229_0_1_1_ce1,v9229_0_1_1_q1,v9229_1_0_0_address0,v9229_1_0_0_ce0,v9229_1_0_0_q0,v9229_1_0_0_address1,v9229_1_0_0_ce1,v9229_1_0_0_q1,v9229_1_0_1_address0,v9229_1_0_1_ce0,v9229_1_0_1_q0,v9229_1_0_1_address1,v9229_1_0_1_ce1,v9229_1_0_1_q1,v9229_1_1_0_address0,v9229_1_1_0_ce0,v9229_1_1_0_q0,v9229_1_1_0_address1,v9229_1_1_0_ce1,v9229_1_1_0_q1,v9229_1_1_1_address0,v9229_1_1_1_ce0,v9229_1_1_1_q0,v9229_1_1_1_address1,v9229_1_1_1_ce1,v9229_1_1_1_q1);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v5281_address0;
output   v5281_ce0;
output   v5281_we0;
output  [7:0] v5281_d0;
output  [9:0] v5281_1_address0;
output   v5281_1_ce0;
output   v5281_1_we0;
output  [7:0] v5281_1_d0;
output  [9:0] v5281_2_address0;
output   v5281_2_ce0;
output   v5281_2_we0;
output  [7:0] v5281_2_d0;
output  [9:0] v5281_3_address0;
output   v5281_3_ce0;
output   v5281_3_we0;
output  [7:0] v5281_3_d0;
output  [9:0] v5281_4_address0;
output   v5281_4_ce0;
output   v5281_4_we0;
output  [7:0] v5281_4_d0;
output  [9:0] v5281_5_address0;
output   v5281_5_ce0;
output   v5281_5_we0;
output  [7:0] v5281_5_d0;
output  [9:0] v5281_6_address0;
output   v5281_6_ce0;
output   v5281_6_we0;
output  [7:0] v5281_6_d0;
output  [9:0] v5281_7_address0;
output   v5281_7_ce0;
output   v5281_7_we0;
output  [7:0] v5281_7_d0;
input  [9:0] v5272_0;
output  [13:0] v9229_0_0_0_address0;
output   v9229_0_0_0_ce0;
input  [7:0] v9229_0_0_0_q0;
output  [13:0] v9229_0_0_0_address1;
output   v9229_0_0_0_ce1;
input  [7:0] v9229_0_0_0_q1;
output  [13:0] v9229_0_0_1_address0;
output   v9229_0_0_1_ce0;
input  [7:0] v9229_0_0_1_q0;
output  [13:0] v9229_0_0_1_address1;
output   v9229_0_0_1_ce1;
input  [7:0] v9229_0_0_1_q1;
output  [13:0] v9229_0_1_0_address0;
output   v9229_0_1_0_ce0;
input  [7:0] v9229_0_1_0_q0;
output  [13:0] v9229_0_1_0_address1;
output   v9229_0_1_0_ce1;
input  [7:0] v9229_0_1_0_q1;
output  [13:0] v9229_0_1_1_address0;
output   v9229_0_1_1_ce0;
input  [7:0] v9229_0_1_1_q0;
output  [13:0] v9229_0_1_1_address1;
output   v9229_0_1_1_ce1;
input  [7:0] v9229_0_1_1_q1;
output  [13:0] v9229_1_0_0_address0;
output   v9229_1_0_0_ce0;
input  [7:0] v9229_1_0_0_q0;
output  [13:0] v9229_1_0_0_address1;
output   v9229_1_0_0_ce1;
input  [7:0] v9229_1_0_0_q1;
output  [13:0] v9229_1_0_1_address0;
output   v9229_1_0_1_ce0;
input  [7:0] v9229_1_0_1_q0;
output  [13:0] v9229_1_0_1_address1;
output   v9229_1_0_1_ce1;
input  [7:0] v9229_1_0_1_q1;
output  [13:0] v9229_1_1_0_address0;
output   v9229_1_1_0_ce0;
input  [7:0] v9229_1_1_0_q0;
output  [13:0] v9229_1_1_0_address1;
output   v9229_1_1_0_ce1;
input  [7:0] v9229_1_1_0_q1;
output  [13:0] v9229_1_1_1_address0;
output   v9229_1_1_1_ce0;
input  [7:0] v9229_1_1_1_q0;
output  [13:0] v9229_1_1_1_address1;
output   v9229_1_1_1_ce1;
input  [7:0] v9229_1_1_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] trunc_ln_fu_148_p4;
reg    ap_block_state1;
reg   [1:0] tmp_s_reg_264;
reg   [0:0] tmp_reg_275;
wire   [0:0] empty_210_fu_214_p1;
reg   [0:0] empty_210_reg_280;
wire   [1:0] grp_fu_194_p2;
reg   [1:0] urem_ln7913_reg_285;
wire    ap_CS_fsm_state8;
wire   [6:0] mul_i_fu_218_p3;
reg   [6:0] mul_i_reg_290;
wire    ap_CS_fsm_state10;
wire   [5:0] p_udiv_fu_226_p3;
reg   [5:0] p_udiv_reg_295;
wire   [1:0] trunc_ln7910_fu_234_p1;
reg   [1:0] trunc_ln7910_reg_300;
wire   [1:0] select_ln7912_fu_238_p3;
reg   [1:0] select_ln7912_reg_305;
wire   [1:0] empty_fu_246_p1;
reg   [1:0] empty_reg_310;
wire   [1:0] zext_ln7858_2_cast_cast_fu_251_p3;
reg   [1:0] zext_ln7858_2_cast_cast_reg_315;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_ready;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_ce1;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_ce1;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_ce1;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_ce1;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_ce1;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_ce1;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_ce1;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_ce1;
reg    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln7914_fu_162_p0;
wire   [12:0] zext_ln7914_fu_158_p1;
wire   [7:0] mul_ln7914_fu_162_p1;
wire   [12:0] mul_ln7914_fu_162_p2;
wire   [5:0] mul_ln7913_fu_178_p0;
wire   [7:0] mul_ln7913_fu_178_p1;
wire   [12:0] mul_ln7913_fu_178_p2;
wire   [3:0] grp_fu_194_p0;
wire   [2:0] grp_fu_194_p1;
wire   [5:0] grp_fu_208_p0;
wire   [2:0] grp_fu_208_p1;
wire   [1:0] grp_fu_208_p2;
reg    grp_fu_194_ap_start;
wire    grp_fu_194_ap_done;
reg    grp_fu_194_ce;
wire    ap_CS_fsm_state9;
reg    grp_fu_208_ap_start;
wire    grp_fu_208_ap_done;
reg    grp_fu_208_ce;
reg   [10:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_ready),.mul_i(mul_i_reg_290),.p_udiv(p_udiv_reg_295),.zext_ln7858(trunc_ln7910_reg_300),.select_ln7912(select_ln7912_reg_305),.v5281_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_address0),.v5281_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_ce0),.v5281_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_we0),.v5281_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_d0),.v5281_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_address0),.v5281_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_ce0),.v5281_1_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_we0),.v5281_1_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_d0),.v5281_2_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_address0),.v5281_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_ce0),.v5281_2_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_we0),.v5281_2_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_d0),.v5281_3_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_address0),.v5281_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_ce0),.v5281_3_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_we0),.v5281_3_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_d0),.v5281_4_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_address0),.v5281_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_ce0),.v5281_4_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_we0),.v5281_4_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_d0),.v5281_5_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_address0),.v5281_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_ce0),.v5281_5_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_we0),.v5281_5_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_d0),.v5281_6_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_address0),.v5281_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_ce0),.v5281_6_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_we0),.v5281_6_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_d0),.v5281_7_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_address0),.v5281_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_ce0),.v5281_7_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_we0),.v5281_7_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_d0),.zext_ln7858_2_cast_cast(zext_ln7858_2_cast_cast_reg_315),.empty(empty_reg_310),.v9229_0_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_address0),.v9229_0_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_ce0),.v9229_0_0_0_q0(v9229_0_0_0_q0),.v9229_0_0_0_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_address1),.v9229_0_0_0_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_ce1),.v9229_0_0_0_q1(v9229_0_0_0_q1),.v9229_0_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_address0),.v9229_0_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_ce0),.v9229_0_0_1_q0(v9229_0_0_1_q0),.v9229_0_0_1_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_address1),.v9229_0_0_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_ce1),.v9229_0_0_1_q1(v9229_0_0_1_q1),.v9229_0_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_address0),.v9229_0_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_ce0),.v9229_0_1_0_q0(v9229_0_1_0_q0),.v9229_0_1_0_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_address1),.v9229_0_1_0_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_ce1),.v9229_0_1_0_q1(v9229_0_1_0_q1),.v9229_0_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_address0),.v9229_0_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_ce0),.v9229_0_1_1_q0(v9229_0_1_1_q0),.v9229_0_1_1_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_address1),.v9229_0_1_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_ce1),.v9229_0_1_1_q1(v9229_0_1_1_q1),.v9229_1_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_address0),.v9229_1_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_ce0),.v9229_1_0_0_q0(v9229_1_0_0_q0),.v9229_1_0_0_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_address1),.v9229_1_0_0_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_ce1),.v9229_1_0_0_q1(v9229_1_0_0_q1),.v9229_1_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_address0),.v9229_1_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_ce0),.v9229_1_0_1_q0(v9229_1_0_1_q0),.v9229_1_0_1_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_address1),.v9229_1_0_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_ce1),.v9229_1_0_1_q1(v9229_1_0_1_q1),.v9229_1_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_address0),.v9229_1_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_ce0),.v9229_1_1_0_q0(v9229_1_1_0_q0),.v9229_1_1_0_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_address1),.v9229_1_1_0_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_ce1),.v9229_1_1_0_q1(v9229_1_1_0_q1),.v9229_1_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_address0),.v9229_1_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_ce0),.v9229_1_1_1_q0(v9229_1_1_1_q0),.v9229_1_1_1_address1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_address1),.v9229_1_1_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_ce1),.v9229_1_1_1_q1(v9229_1_1_1_q1));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U6280(.din0(mul_ln7914_fu_162_p0),.din1(mul_ln7914_fu_162_p1),.dout(mul_ln7914_fu_162_p2));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U6281(.din0(mul_ln7913_fu_178_p0),.din1(mul_ln7913_fu_178_p1),.dout(mul_ln7913_fu_178_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U6282(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_194_ap_start),.done(grp_fu_194_ap_done),.din0(grp_fu_194_p0),.din1(grp_fu_194_p1),.ce(grp_fu_194_ce),.dout(grp_fu_194_p2));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U6283(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_208_ap_start),.done(grp_fu_208_ap_done),.din0(grp_fu_208_p0),.din1(grp_fu_208_p1),.ce(grp_fu_208_ce),.dout(grp_fu_208_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        empty_210_reg_280 <= empty_210_fu_214_p1;
        tmp_reg_275 <= v5272_0[32'd1];
        tmp_s_reg_264 <= {{mul_ln7914_fu_162_p2[11:10]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_reg_310 <= empty_fu_246_p1;
        mul_i_reg_290[6 : 5] <= mul_i_fu_218_p3[6 : 5];
        p_udiv_reg_295[5 : 4] <= p_udiv_fu_226_p3[5 : 4];
        select_ln7912_reg_305[1] <= select_ln7912_fu_238_p3[1];
        trunc_ln7910_reg_300 <= trunc_ln7910_fu_234_p1;
        zext_ln7858_2_cast_cast_reg_315[1] <= zext_ln7858_2_cast_cast_fu_251_p3[1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        urem_ln7913_reg_285 <= grp_fu_194_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_194_ap_start = 1'b1;
    end else begin
        grp_fu_194_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_194_ce = 1'b0;
    end else begin
        grp_fu_194_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_208_ap_start = 1'b1;
    end else begin
        grp_fu_208_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_208_ce = 1'b0;
    end else begin
        grp_fu_208_ce = 1'b1;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_210_fu_214_p1 = v5272_0[0:0];
assign empty_fu_246_p1 = grp_fu_208_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_ap_start_reg;
assign grp_fu_194_p0 = {{mul_ln7913_fu_178_p2[11:8]}};
assign grp_fu_194_p1 = 4'd3;
assign grp_fu_208_p0 = {{v5272_0[9:4]}};
assign grp_fu_208_p1 = 6'd3;
assign mul_i_fu_218_p3 = {{tmp_s_reg_264}, {5'd0}};
assign mul_ln7913_fu_178_p0 = zext_ln7914_fu_158_p1;
assign mul_ln7913_fu_178_p1 = 13'd86;
assign mul_ln7914_fu_162_p0 = zext_ln7914_fu_158_p1;
assign mul_ln7914_fu_162_p1 = 13'd114;
assign p_udiv_fu_226_p3 = {{tmp_s_reg_264}, {4'd0}};
assign select_ln7912_fu_238_p3 = ((tmp_reg_275[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign trunc_ln7910_fu_234_p1 = urem_ln7913_reg_285[1:0];
assign trunc_ln_fu_148_p4 = {{v5272_0[9:4]}};
assign v5281_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_address0;
assign v5281_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_ce0;
assign v5281_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_d0;
assign v5281_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_1_we0;
assign v5281_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_address0;
assign v5281_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_ce0;
assign v5281_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_d0;
assign v5281_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_2_we0;
assign v5281_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_address0;
assign v5281_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_ce0;
assign v5281_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_d0;
assign v5281_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_3_we0;
assign v5281_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_address0;
assign v5281_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_ce0;
assign v5281_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_d0;
assign v5281_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_4_we0;
assign v5281_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_address0;
assign v5281_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_ce0;
assign v5281_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_d0;
assign v5281_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_5_we0;
assign v5281_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_address0;
assign v5281_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_ce0;
assign v5281_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_d0;
assign v5281_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_6_we0;
assign v5281_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_address0;
assign v5281_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_ce0;
assign v5281_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_d0;
assign v5281_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_7_we0;
assign v5281_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_address0;
assign v5281_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_ce0;
assign v5281_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_d0;
assign v5281_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v5281_we0;
assign v9229_0_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_address0;
assign v9229_0_0_0_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_address1;
assign v9229_0_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_ce0;
assign v9229_0_0_0_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_0_ce1;
assign v9229_0_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_address0;
assign v9229_0_0_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_address1;
assign v9229_0_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_ce0;
assign v9229_0_0_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_0_1_ce1;
assign v9229_0_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_address0;
assign v9229_0_1_0_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_address1;
assign v9229_0_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_ce0;
assign v9229_0_1_0_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_0_ce1;
assign v9229_0_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_address0;
assign v9229_0_1_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_address1;
assign v9229_0_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_ce0;
assign v9229_0_1_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_0_1_1_ce1;
assign v9229_1_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_address0;
assign v9229_1_0_0_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_address1;
assign v9229_1_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_ce0;
assign v9229_1_0_0_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_0_ce1;
assign v9229_1_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_address0;
assign v9229_1_0_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_address1;
assign v9229_1_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_ce0;
assign v9229_1_0_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_0_1_ce1;
assign v9229_1_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_address0;
assign v9229_1_1_0_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_address1;
assign v9229_1_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_ce0;
assign v9229_1_1_0_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_0_ce1;
assign v9229_1_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_address0;
assign v9229_1_1_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_address1;
assign v9229_1_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_ce0;
assign v9229_1_1_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7858_1_proc112_Pipeline_VITIS_fu_106_v9229_1_1_1_ce1;
assign zext_ln7858_2_cast_cast_fu_251_p3 = ((empty_210_reg_280[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign zext_ln7914_fu_158_p1 = trunc_ln_fu_148_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_290[4:0] <= 5'b00000;
    p_udiv_reg_295[3:0] <= 4'b0000;
    select_ln7912_reg_305[0] <= 1'b0;
    zext_ln7858_2_cast_cast_reg_315[0] <= 1'b0;
end
endmodule 
