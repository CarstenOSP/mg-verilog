module forward_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3985_address0,v3985_ce0,v3985_we0,v3985_d0,v3985_1_address0,v3985_1_ce0,v3985_1_we0,v3985_1_d0,v3985_2_address0,v3985_2_ce0,v3985_2_we0,v3985_2_d0,v3985_3_address0,v3985_3_ce0,v3985_3_we0,v3985_3_d0,v3985_4_address0,v3985_4_ce0,v3985_4_we0,v3985_4_d0,v3985_5_address0,v3985_5_ce0,v3985_5_we0,v3985_5_d0,v3985_6_address0,v3985_6_ce0,v3985_6_we0,v3985_6_d0,v3985_7_address0,v3985_7_ce0,v3985_7_we0,v3985_7_d0,v3977_0,v16206_0_address0,v16206_0_ce0,v16206_0_q0,v16206_1_address0,v16206_1_ce0,v16206_1_q0,v16206_2_address0,v16206_2_ce0,v16206_2_q0,v16206_3_address0,v16206_3_ce0,v16206_3_q0,v16206_4_address0,v16206_4_ce0,v16206_4_q0,v16206_5_address0,v16206_5_ce0,v16206_5_q0,v16206_6_address0,v16206_6_ce0,v16206_6_q0,v16206_7_address0,v16206_7_ce0,v16206_7_q0); 
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
output  [7:0] v3985_address0;
output   v3985_ce0;
output   v3985_we0;
output  [7:0] v3985_d0;
output  [7:0] v3985_1_address0;
output   v3985_1_ce0;
output   v3985_1_we0;
output  [7:0] v3985_1_d0;
output  [7:0] v3985_2_address0;
output   v3985_2_ce0;
output   v3985_2_we0;
output  [7:0] v3985_2_d0;
output  [7:0] v3985_3_address0;
output   v3985_3_ce0;
output   v3985_3_we0;
output  [7:0] v3985_3_d0;
output  [7:0] v3985_4_address0;
output   v3985_4_ce0;
output   v3985_4_we0;
output  [7:0] v3985_4_d0;
output  [7:0] v3985_5_address0;
output   v3985_5_ce0;
output   v3985_5_we0;
output  [7:0] v3985_5_d0;
output  [7:0] v3985_6_address0;
output   v3985_6_ce0;
output   v3985_6_we0;
output  [7:0] v3985_6_d0;
output  [7:0] v3985_7_address0;
output   v3985_7_ce0;
output   v3985_7_we0;
output  [7:0] v3985_7_d0;
input  [13:0] v3977_0;
output  [13:0] v16206_0_address0;
output   v16206_0_ce0;
input  [7:0] v16206_0_q0;
output  [13:0] v16206_1_address0;
output   v16206_1_ce0;
input  [7:0] v16206_1_q0;
output  [13:0] v16206_2_address0;
output   v16206_2_ce0;
input  [7:0] v16206_2_q0;
output  [13:0] v16206_3_address0;
output   v16206_3_ce0;
input  [7:0] v16206_3_q0;
output  [13:0] v16206_4_address0;
output   v16206_4_ce0;
input  [7:0] v16206_4_q0;
output  [13:0] v16206_5_address0;
output   v16206_5_ce0;
input  [7:0] v16206_5_q0;
output  [13:0] v16206_6_address0;
output   v16206_6_ce0;
input  [7:0] v16206_6_q0;
output  [13:0] v16206_7_address0;
output   v16206_7_ce0;
input  [7:0] v16206_7_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] trunc_ln_fu_148_p4;
reg    ap_block_state1;
reg   [3:0] tmp_s_reg_256;
reg   [0:0] tmp_reg_262;
wire   [0:0] empty_223_fu_208_p1;
reg   [0:0] empty_223_reg_272;
wire   [1:0] grp_fu_202_p2;
reg   [1:0] urem_ln5124_reg_277;
wire    ap_CS_fsm_state10;
wire   [8:0] mul_i_fu_218_p3;
reg   [8:0] mul_i_reg_282;
wire    ap_CS_fsm_state12;
wire   [5:0] p_udiv62_cast_fu_226_p3;
reg   [5:0] p_udiv62_cast_reg_287;
wire   [3:0] select_ln5124_fu_234_p3;
reg   [3:0] select_ln5124_reg_292;
wire   [1:0] empty_fu_242_p1;
reg   [1:0] empty_reg_297;
wire   [1:0] empty_224_fu_246_p1;
reg   [1:0] empty_224_reg_302;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_ready;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_3_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_4_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_5_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_6_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_7_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [7:0] mul_ln5125_fu_162_p0;
wire   [16:0] zext_ln5125_fu_158_p1;
wire   [9:0] mul_ln5125_fu_162_p1;
wire   [16:0] mul_ln5125_fu_162_p2;
wire   [7:0] mul_ln5124_fu_186_p0;
wire   [9:0] mul_ln5124_fu_186_p1;
wire   [16:0] mul_ln5124_fu_186_p2;
wire   [5:0] grp_fu_202_p0;
wire   [2:0] grp_fu_202_p1;
wire   [7:0] grp_fu_212_p0;
wire   [2:0] grp_fu_212_p1;
wire   [1:0] grp_fu_212_p2;
reg    grp_fu_202_ap_start;
wire    grp_fu_202_ap_done;
reg    grp_fu_202_ce;
wire    ap_CS_fsm_state11;
reg    grp_fu_212_ap_start;
wire    grp_fu_212_ap_done;
reg    grp_fu_212_ce;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_ready),.mul_i(mul_i_reg_282),.p_udiv62_cast(p_udiv62_cast_reg_287),.empty_88(empty_reg_297),.select_ln5124(select_ln5124_reg_292),.v3985_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_address0),.v3985_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_ce0),.v3985_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_we0),.v3985_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_d0),.v3985_1_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_address0),.v3985_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_ce0),.v3985_1_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_we0),.v3985_1_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_d0),.v3985_2_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_address0),.v3985_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_ce0),.v3985_2_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_we0),.v3985_2_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_d0),.v3985_3_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_address0),.v3985_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_ce0),.v3985_3_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_we0),.v3985_3_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_d0),.v3985_4_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_address0),.v3985_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_ce0),.v3985_4_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_we0),.v3985_4_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_d0),.v3985_5_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_address0),.v3985_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_ce0),.v3985_5_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_we0),.v3985_5_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_d0),.v3985_6_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_address0),.v3985_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_ce0),.v3985_6_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_we0),.v3985_6_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_d0),.v3985_7_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_address0),.v3985_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_ce0),.v3985_7_we0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_we0),.v3985_7_d0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_d0),.empty_89(empty_223_reg_272),.empty(empty_224_reg_302),.v16206_0_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_0_address0),.v16206_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_0_ce0),.v16206_0_q0(v16206_0_q0),.v16206_1_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_1_address0),.v16206_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_1_ce0),.v16206_1_q0(v16206_1_q0),.v16206_2_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_2_address0),.v16206_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_2_ce0),.v16206_2_q0(v16206_2_q0),.v16206_3_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_3_address0),.v16206_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_3_ce0),.v16206_3_q0(v16206_3_q0),.v16206_4_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_4_address0),.v16206_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_4_ce0),.v16206_4_q0(v16206_4_q0),.v16206_5_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_5_address0),.v16206_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_5_ce0),.v16206_5_q0(v16206_5_q0),.v16206_6_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_6_address0),.v16206_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_6_ce0),.v16206_6_q0(v16206_6_q0),.v16206_7_address0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_7_address0),.v16206_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_7_ce0),.v16206_7_q0(v16206_7_q0));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U13089(.din0(mul_ln5125_fu_162_p0),.din1(mul_ln5125_fu_162_p1),.dout(mul_ln5125_fu_162_p2));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U13090(.din0(mul_ln5124_fu_186_p0),.din1(mul_ln5124_fu_186_p1),.dout(mul_ln5124_fu_186_p2));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U13091(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_202_ap_start),.done(grp_fu_202_ap_done),.din0(grp_fu_202_p0),.din1(grp_fu_202_p1),.ce(grp_fu_202_ce),.dout(grp_fu_202_p2));
forward_urem_8ns_3ns_2_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_8ns_3ns_2_12_seq_1_U13092(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_212_ap_start),.done(grp_fu_212_ap_done),.din0(grp_fu_212_p0),.din1(grp_fu_212_p1),.ce(grp_fu_212_ce),.dout(grp_fu_212_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        empty_223_reg_272 <= empty_223_fu_208_p1;
        tmp_reg_262 <= v3977_0[32'd1];
        tmp_s_reg_256 <= {{mul_ln5125_fu_162_p2[15:12]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_224_reg_302 <= empty_224_fu_246_p1;
        empty_reg_297 <= empty_fu_242_p1;
        mul_i_reg_282[8 : 5] <= mul_i_fu_218_p3[8 : 5];
        p_udiv62_cast_reg_287[5 : 2] <= p_udiv62_cast_fu_226_p3[5 : 2];
        select_ln5124_reg_292[0] <= select_ln5124_fu_234_p3[0];
select_ln5124_reg_292[3] <= select_ln5124_fu_234_p3[3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        urem_ln5124_reg_277 <= grp_fu_202_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_202_ce = 1'b0;
    end else begin
        grp_fu_202_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_done == 1'b1))) begin
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
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_223_fu_208_p1 = v3977_0[0:0];
assign empty_224_fu_246_p1 = grp_fu_212_p2[1:0];
assign empty_fu_242_p1 = urem_ln5124_reg_277[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_ap_start_reg;
assign grp_fu_202_p0 = {{mul_ln5124_fu_186_p2[15:10]}};
assign grp_fu_202_p1 = 6'd3;
assign grp_fu_212_p0 = {{v3977_0[13:6]}};
assign grp_fu_212_p1 = 8'd3;
assign mul_i_fu_218_p3 = {{tmp_s_reg_256}, {5'd0}};
assign mul_ln5124_fu_186_p0 = zext_ln5125_fu_158_p1;
assign mul_ln5124_fu_186_p1 = 17'd342;
assign mul_ln5125_fu_162_p0 = zext_ln5125_fu_158_p1;
assign mul_ln5125_fu_162_p1 = 17'd456;
assign p_udiv62_cast_fu_226_p3 = {{tmp_s_reg_256}, {2'd0}};
assign select_ln5124_fu_234_p3 = ((tmp_reg_262[0:0] == 1'b1) ? 4'd6 : 4'd15);
assign trunc_ln_fu_148_p4 = {{v3977_0[13:6]}};
assign v16206_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_0_address0;
assign v16206_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_0_ce0;
assign v16206_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_1_address0;
assign v16206_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_1_ce0;
assign v16206_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_2_address0;
assign v16206_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_2_ce0;
assign v16206_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_3_address0;
assign v16206_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_3_ce0;
assign v16206_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_4_address0;
assign v16206_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_4_ce0;
assign v16206_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_5_address0;
assign v16206_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_5_ce0;
assign v16206_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_6_address0;
assign v16206_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_6_ce0;
assign v16206_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_7_address0;
assign v16206_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v16206_7_ce0;
assign v3985_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_address0;
assign v3985_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_ce0;
assign v3985_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_d0;
assign v3985_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_1_we0;
assign v3985_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_address0;
assign v3985_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_ce0;
assign v3985_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_d0;
assign v3985_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_2_we0;
assign v3985_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_address0;
assign v3985_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_ce0;
assign v3985_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_d0;
assign v3985_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_3_we0;
assign v3985_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_address0;
assign v3985_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_ce0;
assign v3985_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_d0;
assign v3985_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_4_we0;
assign v3985_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_address0;
assign v3985_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_ce0;
assign v3985_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_d0;
assign v3985_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_5_we0;
assign v3985_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_address0;
assign v3985_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_ce0;
assign v3985_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_d0;
assign v3985_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_6_we0;
assign v3985_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_address0;
assign v3985_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_ce0;
assign v3985_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_d0;
assign v3985_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_7_we0;
assign v3985_address0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_address0;
assign v3985_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_ce0;
assign v3985_d0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_d0;
assign v3985_we0 = grp_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_5017_1_proc133_Pipeline_VITIS_fu_106_v3985_we0;
assign zext_ln5125_fu_158_p1 = trunc_ln_fu_148_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_282[4:0] <= 5'b00000;
    p_udiv62_cast_reg_287[1:0] <= 2'b00;
    select_ln5124_reg_292[2:1] <= 2'b11;
end
endmodule 