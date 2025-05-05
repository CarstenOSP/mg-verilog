module forward_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5280_address0,v5280_ce0,v5280_we0,v5280_d0,v5280_1_address0,v5280_1_ce0,v5280_1_we0,v5280_1_d0,v5280_2_address0,v5280_2_ce0,v5280_2_we0,v5280_2_d0,v5280_3_address0,v5280_3_ce0,v5280_3_we0,v5280_3_d0,v5280_4_address0,v5280_4_ce0,v5280_4_we0,v5280_4_d0,v5280_5_address0,v5280_5_ce0,v5280_5_we0,v5280_5_d0,v5280_6_address0,v5280_6_ce0,v5280_6_we0,v5280_6_d0,v5280_7_address0,v5280_7_ce0,v5280_7_we0,v5280_7_d0,v5272_0,v9181_0_0_address0,v9181_0_0_ce0,v9181_0_0_q0,v9181_0_1_address0,v9181_0_1_ce0,v9181_0_1_q0,v9181_1_0_address0,v9181_1_0_ce0,v9181_1_0_q0,v9181_1_1_address0,v9181_1_1_ce0,v9181_1_1_q0,v9181_2_0_address0,v9181_2_0_ce0,v9181_2_0_q0,v9181_2_1_address0,v9181_2_1_ce0,v9181_2_1_q0,v9181_3_0_address0,v9181_3_0_ce0,v9181_3_0_q0,v9181_3_1_address0,v9181_3_1_ce0,v9181_3_1_q0,ap_return); 
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
output  [6:0] v5280_address0;
output   v5280_ce0;
output   v5280_we0;
output  [7:0] v5280_d0;
output  [6:0] v5280_1_address0;
output   v5280_1_ce0;
output   v5280_1_we0;
output  [7:0] v5280_1_d0;
output  [6:0] v5280_2_address0;
output   v5280_2_ce0;
output   v5280_2_we0;
output  [7:0] v5280_2_d0;
output  [6:0] v5280_3_address0;
output   v5280_3_ce0;
output   v5280_3_we0;
output  [7:0] v5280_3_d0;
output  [6:0] v5280_4_address0;
output   v5280_4_ce0;
output   v5280_4_we0;
output  [7:0] v5280_4_d0;
output  [6:0] v5280_5_address0;
output   v5280_5_ce0;
output   v5280_5_we0;
output  [7:0] v5280_5_d0;
output  [6:0] v5280_6_address0;
output   v5280_6_ce0;
output   v5280_6_we0;
output  [7:0] v5280_6_d0;
output  [6:0] v5280_7_address0;
output   v5280_7_ce0;
output   v5280_7_we0;
output  [7:0] v5280_7_d0;
input  [9:0] v5272_0;
output  [14:0] v9181_0_0_address0;
output   v9181_0_0_ce0;
input  [7:0] v9181_0_0_q0;
output  [14:0] v9181_0_1_address0;
output   v9181_0_1_ce0;
input  [7:0] v9181_0_1_q0;
output  [14:0] v9181_1_0_address0;
output   v9181_1_0_ce0;
input  [7:0] v9181_1_0_q0;
output  [14:0] v9181_1_1_address0;
output   v9181_1_1_ce0;
input  [7:0] v9181_1_1_q0;
output  [14:0] v9181_2_0_address0;
output   v9181_2_0_ce0;
input  [7:0] v9181_2_0_q0;
output  [14:0] v9181_2_1_address0;
output   v9181_2_1_ce0;
input  [7:0] v9181_2_1_q0;
output  [14:0] v9181_3_0_address0;
output   v9181_3_0_ce0;
input  [7:0] v9181_3_0_q0;
output  [14:0] v9181_3_1_address0;
output   v9181_3_1_ce0;
input  [7:0] v9181_3_1_q0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [1:0] tmp_reg_251;
wire   [5:0] trunc_ln_fu_156_p4;
reg   [1:0] tmp_s_reg_262;
wire   [1:0] grp_fu_202_p2;
reg   [1:0] urem_ln7913_reg_273;
wire    ap_CS_fsm_state8;
wire   [6:0] mul_i_fu_214_p3;
reg   [6:0] mul_i_reg_278;
wire    ap_CS_fsm_state10;
wire   [6:0] mul_i3_fu_222_p3;
reg   [6:0] mul_i3_reg_283;
wire   [5:0] p_udiv_fu_230_p3;
reg   [5:0] p_udiv_reg_288;
wire   [1:0] trunc_ln7912_fu_238_p1;
reg   [1:0] trunc_ln7912_reg_293;
wire   [1:0] empty_fu_242_p1;
reg   [1:0] empty_reg_298;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_ready;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln7914_fu_170_p0;
wire   [12:0] zext_ln7914_fu_166_p1;
wire   [7:0] mul_ln7914_fu_170_p1;
wire   [12:0] mul_ln7914_fu_170_p2;
wire   [5:0] mul_ln7913_fu_186_p0;
wire   [7:0] mul_ln7913_fu_186_p1;
wire   [12:0] mul_ln7913_fu_186_p2;
wire   [3:0] grp_fu_202_p0;
wire   [2:0] grp_fu_202_p1;
wire   [5:0] grp_fu_208_p0;
wire   [2:0] grp_fu_208_p1;
wire   [1:0] grp_fu_208_p2;
reg    grp_fu_202_ap_start;
wire    grp_fu_202_ap_done;
reg    grp_fu_202_ce;
wire    ap_CS_fsm_state9;
reg    grp_fu_208_ap_start;
wire    grp_fu_208_ap_done;
reg    grp_fu_208_ce;
reg   [9:0] ap_return_preg;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_ready),.mul_i(mul_i_reg_278),.v5280_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_address0),.v5280_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_ce0),.v5280_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_we0),.v5280_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_d0),.v5280_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_address0),.v5280_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_ce0),.v5280_1_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_we0),.v5280_1_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_d0),.v5280_2_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_address0),.v5280_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_ce0),.v5280_2_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_we0),.v5280_2_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_d0),.v5280_3_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_address0),.v5280_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_ce0),.v5280_3_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_we0),.v5280_3_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_d0),.v5280_4_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_address0),.v5280_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_ce0),.v5280_4_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_we0),.v5280_4_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_d0),.v5280_5_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_address0),.v5280_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_ce0),.v5280_5_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_we0),.v5280_5_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_d0),.v5280_6_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_address0),.v5280_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_ce0),.v5280_6_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_we0),.v5280_6_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_d0),.v5280_7_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_address0),.v5280_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_ce0),.v5280_7_we0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_we0),.v5280_7_d0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_d0),.mul_i3(mul_i3_reg_283),.p_udiv(p_udiv_reg_288),.tmp(tmp_reg_251),.zext_ln7858_2(trunc_ln7912_reg_293),.zext_ln7858(empty_reg_298),.v9181_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_0_address0),.v9181_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_0_ce0),.v9181_0_0_q0(v9181_0_0_q0),.v9181_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_0_address0),.v9181_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_0_ce0),.v9181_1_0_q0(v9181_1_0_q0),.v9181_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_0_address0),.v9181_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_0_ce0),.v9181_2_0_q0(v9181_2_0_q0),.v9181_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_0_address0),.v9181_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_0_ce0),.v9181_3_0_q0(v9181_3_0_q0),.v9181_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_1_address0),.v9181_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_1_ce0),.v9181_0_1_q0(v9181_0_1_q0),.v9181_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_1_address0),.v9181_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_1_ce0),.v9181_1_1_q0(v9181_1_1_q0),.v9181_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_1_address0),.v9181_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_1_ce0),.v9181_2_1_q0(v9181_2_1_q0),.v9181_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_1_address0),.v9181_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_1_ce0),.v9181_3_1_q0(v9181_3_1_q0));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U6323(.din0(mul_ln7914_fu_170_p0),.din1(mul_ln7914_fu_170_p1),.dout(mul_ln7914_fu_170_p2));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U6324(.din0(mul_ln7913_fu_186_p0),.din1(mul_ln7913_fu_186_p1),.dout(mul_ln7913_fu_186_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U6325(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_202_ap_start),.done(grp_fu_202_ap_done),.din0(grp_fu_202_p0),.din1(grp_fu_202_p1),.ce(grp_fu_202_ce),.dout(grp_fu_202_p2));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U6326(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_208_ap_start),.done(grp_fu_208_ap_done),.din0(grp_fu_208_p0),.din1(grp_fu_208_p1),.ce(grp_fu_208_ce),.dout(grp_fu_208_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done == 1'b1))) begin
            ap_return_preg <= v5272_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_reg_298 <= empty_fu_242_p1;
        mul_i3_reg_283[6 : 5] <= mul_i3_fu_222_p3[6 : 5];
        mul_i_reg_278[6 : 5] <= mul_i_fu_214_p3[6 : 5];
        p_udiv_reg_288[5 : 4] <= p_udiv_fu_230_p3[5 : 4];
        trunc_ln7912_reg_293 <= trunc_ln7912_fu_238_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        tmp_reg_251 <= {{v5272_0[3:2]}};
        tmp_s_reg_262 <= {{mul_ln7914_fu_170_p2[11:10]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        urem_ln7913_reg_273 <= grp_fu_202_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done == 1'b1))) begin
        ap_return = v5272_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_202_ap_start = 1'b1;
    end else begin
        grp_fu_202_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_202_ce = 1'b0;
    end else begin
        grp_fu_202_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_done == 1'b1))) begin
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
assign empty_fu_242_p1 = grp_fu_208_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_ap_start_reg;
assign grp_fu_202_p0 = {{mul_ln7913_fu_186_p2[11:8]}};
assign grp_fu_202_p1 = 4'd3;
assign grp_fu_208_p0 = {{v5272_0[9:4]}};
assign grp_fu_208_p1 = 6'd3;
assign mul_i3_fu_222_p3 = {{tmp_s_reg_262}, {5'd0}};
assign mul_i_fu_214_p3 = {{tmp_reg_251}, {5'd0}};
assign mul_ln7913_fu_186_p0 = zext_ln7914_fu_166_p1;
assign mul_ln7913_fu_186_p1 = 13'd86;
assign mul_ln7914_fu_170_p0 = zext_ln7914_fu_166_p1;
assign mul_ln7914_fu_170_p1 = 13'd114;
assign p_udiv_fu_230_p3 = {{tmp_s_reg_262}, {4'd0}};
assign trunc_ln7912_fu_238_p1 = urem_ln7913_reg_273[1:0];
assign trunc_ln_fu_156_p4 = {{v5272_0[9:4]}};
assign v5280_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_address0;
assign v5280_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_ce0;
assign v5280_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_d0;
assign v5280_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_1_we0;
assign v5280_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_address0;
assign v5280_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_ce0;
assign v5280_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_d0;
assign v5280_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_2_we0;
assign v5280_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_address0;
assign v5280_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_ce0;
assign v5280_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_d0;
assign v5280_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_3_we0;
assign v5280_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_address0;
assign v5280_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_ce0;
assign v5280_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_d0;
assign v5280_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_4_we0;
assign v5280_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_address0;
assign v5280_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_ce0;
assign v5280_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_d0;
assign v5280_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_5_we0;
assign v5280_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_address0;
assign v5280_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_ce0;
assign v5280_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_d0;
assign v5280_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_6_we0;
assign v5280_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_address0;
assign v5280_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_ce0;
assign v5280_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_d0;
assign v5280_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_7_we0;
assign v5280_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_address0;
assign v5280_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_ce0;
assign v5280_d0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_d0;
assign v5280_we0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v5280_we0;
assign v9181_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_0_address0;
assign v9181_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_0_ce0;
assign v9181_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_1_address0;
assign v9181_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_0_1_ce0;
assign v9181_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_0_address0;
assign v9181_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_0_ce0;
assign v9181_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_1_address0;
assign v9181_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_1_1_ce0;
assign v9181_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_0_address0;
assign v9181_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_0_ce0;
assign v9181_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_1_address0;
assign v9181_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_2_1_ce0;
assign v9181_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_0_address0;
assign v9181_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_0_ce0;
assign v9181_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_1_address0;
assign v9181_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7816_1_proc111_Pipeline_VITIS_fu_104_v9181_3_1_ce0;
assign zext_ln7914_fu_166_p1 = trunc_ln_fu_156_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_278[4:0] <= 5'b00000;
    mul_i3_reg_283[4:0] <= 5'b00000;
    p_udiv_reg_288[3:0] <= 4'b0000;
end
endmodule 