module forward_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v11205_address0,v11205_ce0,v11205_we0,v11205_d0,v11205_1_address0,v11205_1_ce0,v11205_1_we0,v11205_1_d0,v11205_2_address0,v11205_2_ce0,v11205_2_we0,v11205_2_d0,v11205_3_address0,v11205_3_ce0,v11205_3_we0,v11205_3_d0,v11205_4_address0,v11205_4_ce0,v11205_4_we0,v11205_4_d0,v11205_5_address0,v11205_5_ce0,v11205_5_we0,v11205_5_d0,v11205_6_address0,v11205_6_ce0,v11205_6_we0,v11205_6_d0,v11205_7_address0,v11205_7_ce0,v11205_7_we0,v11205_7_d0,v11198_0,v13683_0_0_address0,v13683_0_0_ce0,v13683_0_0_q0,v13683_0_1_address0,v13683_0_1_ce0,v13683_0_1_q0,v13683_1_0_address0,v13683_1_0_ce0,v13683_1_0_q0,v13683_1_1_address0,v13683_1_1_ce0,v13683_1_1_q0,v13683_2_0_address0,v13683_2_0_ce0,v13683_2_0_q0,v13683_2_1_address0,v13683_2_1_ce0,v13683_2_1_q0,v13683_3_0_address0,v13683_3_0_ce0,v13683_3_0_q0,v13683_3_1_address0,v13683_3_1_ce0,v13683_3_1_q0,ap_return); 
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
output  [5:0] v11205_address0;
output   v11205_ce0;
output   v11205_we0;
output  [7:0] v11205_d0;
output  [5:0] v11205_1_address0;
output   v11205_1_ce0;
output   v11205_1_we0;
output  [7:0] v11205_1_d0;
output  [5:0] v11205_2_address0;
output   v11205_2_ce0;
output   v11205_2_we0;
output  [7:0] v11205_2_d0;
output  [5:0] v11205_3_address0;
output   v11205_3_ce0;
output   v11205_3_we0;
output  [7:0] v11205_3_d0;
output  [5:0] v11205_4_address0;
output   v11205_4_ce0;
output   v11205_4_we0;
output  [7:0] v11205_4_d0;
output  [5:0] v11205_5_address0;
output   v11205_5_ce0;
output   v11205_5_we0;
output  [7:0] v11205_5_d0;
output  [5:0] v11205_6_address0;
output   v11205_6_ce0;
output   v11205_6_we0;
output  [7:0] v11205_6_d0;
output  [5:0] v11205_7_address0;
output   v11205_7_ce0;
output   v11205_7_we0;
output  [7:0] v11205_7_d0;
input  [10:0] v11198_0;
output  [11:0] v13683_0_0_address0;
output   v13683_0_0_ce0;
input  [7:0] v13683_0_0_q0;
output  [11:0] v13683_0_1_address0;
output   v13683_0_1_ce0;
input  [7:0] v13683_0_1_q0;
output  [11:0] v13683_1_0_address0;
output   v13683_1_0_ce0;
input  [7:0] v13683_1_0_q0;
output  [11:0] v13683_1_1_address0;
output   v13683_1_1_ce0;
input  [7:0] v13683_1_1_q0;
output  [11:0] v13683_2_0_address0;
output   v13683_2_0_ce0;
input  [7:0] v13683_2_0_q0;
output  [11:0] v13683_2_1_address0;
output   v13683_2_1_ce0;
input  [7:0] v13683_2_1_q0;
output  [11:0] v13683_3_0_address0;
output   v13683_3_0_ce0;
input  [7:0] v13683_3_0_q0;
output  [11:0] v13683_3_1_address0;
output   v13683_3_1_ce0;
input  [7:0] v13683_3_1_q0;
output  [10:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_259;
reg   [0:0] tmp_490_reg_265;
reg   [2:0] trunc_ln_reg_271;
wire   [5:0] rem4_fu_216_p3;
reg   [5:0] rem4_reg_283;
wire    ap_CS_fsm_state9;
wire   [4:0] mul_i_fu_224_p3;
reg   [4:0] mul_i_reg_288;
wire   [2:0] select_ln14368_fu_242_p3;
reg   [2:0] select_ln14368_reg_293;
wire   [1:0] empty_fu_250_p1;
reg   [1:0] empty_reg_298;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_ready;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_0_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_0_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_0_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_0_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [10:0] mul_ln14366_fu_148_p0;
wire   [22:0] zext_ln14366_fu_144_p1;
wire   [12:0] mul_ln14366_fu_148_p1;
wire   [22:0] mul_ln14366_fu_148_p2;
wire   [27:0] mul_ln14366_cast_fu_154_p1;
wire   [10:0] mul_ln14369_fu_166_p0;
wire   [12:0] mul_ln14369_fu_166_p1;
wire   [22:0] mul_ln14369_fu_166_p2;
wire   [32:0] mul_ln14369_cast_fu_172_p1;
wire   [10:0] mul_ln14368_fu_184_p0;
wire   [12:0] mul_ln14368_fu_184_p1;
wire   [22:0] mul_ln14368_fu_184_p2;
wire   [4:0] grp_fu_210_p0;
wire   [2:0] grp_fu_210_p1;
wire   [0:0] icmp_ln14368_fu_232_p2;
wire   [2:0] add_ln14368_fu_237_p2;
wire   [1:0] grp_fu_210_p2;
reg    grp_fu_210_ap_start;
wire    grp_fu_210_ap_done;
reg    grp_fu_210_ce;
reg   [10:0] ap_return_preg;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start_reg = 1'b0;
#0 ap_return_preg = 11'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_ready),.rem4(rem4_reg_283),.v11205_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_address0),.v11205_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_ce0),.v11205_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_we0),.v11205_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_d0),.v11205_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_address0),.v11205_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_ce0),.v11205_1_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_we0),.v11205_1_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_d0),.v11205_2_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_address0),.v11205_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_ce0),.v11205_2_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_we0),.v11205_2_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_d0),.v11205_3_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_address0),.v11205_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_ce0),.v11205_3_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_we0),.v11205_3_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_d0),.v11205_4_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_address0),.v11205_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_ce0),.v11205_4_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_we0),.v11205_4_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_d0),.v11205_5_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_address0),.v11205_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_ce0),.v11205_5_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_we0),.v11205_5_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_d0),.v11205_6_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_address0),.v11205_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_ce0),.v11205_6_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_we0),.v11205_6_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_d0),.v11205_7_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_address0),.v11205_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_ce0),.v11205_7_we0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_we0),.v11205_7_d0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_d0),.mul_i(mul_i_reg_288),.empty_108(tmp_reg_259),.empty(tmp_490_reg_265),.zext_ln14107_1(select_ln14368_reg_293),.zext_ln14107(empty_reg_298),.v13683_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_0_address0),.v13683_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_0_ce0),.v13683_0_0_q0(v13683_0_0_q0),.v13683_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_0_address0),.v13683_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_0_ce0),.v13683_1_0_q0(v13683_1_0_q0),.v13683_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_0_address0),.v13683_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_0_ce0),.v13683_2_0_q0(v13683_2_0_q0),.v13683_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_0_address0),.v13683_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_0_ce0),.v13683_3_0_q0(v13683_3_0_q0),.v13683_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_1_address0),.v13683_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_1_ce0),.v13683_0_1_q0(v13683_0_1_q0),.v13683_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_1_address0),.v13683_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_1_ce0),.v13683_1_1_q0(v13683_1_1_q0),.v13683_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_1_address0),.v13683_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_1_ce0),.v13683_2_1_q0(v13683_2_1_q0),.v13683_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_1_address0),.v13683_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_1_ce0),.v13683_3_1_q0(v13683_3_1_q0));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U3989(.din0(mul_ln14366_fu_148_p0),.din1(mul_ln14366_fu_148_p1),.dout(mul_ln14366_fu_148_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U3990(.din0(mul_ln14369_fu_166_p0),.din1(mul_ln14369_fu_166_p1),.dout(mul_ln14369_fu_166_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U3991(.din0(mul_ln14368_fu_184_p0),.din1(mul_ln14368_fu_184_p1),.dout(mul_ln14368_fu_184_p2));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U3992(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_210_ap_start),.done(grp_fu_210_ap_done),.din0(grp_fu_210_p0),.din1(grp_fu_210_p1),.ce(grp_fu_210_ce),.dout(grp_fu_210_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 11'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
            ap_return_preg <= v11198_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_reg_298 <= empty_fu_250_p1;
        mul_i_reg_288[4] <= mul_i_fu_224_p3[4];
        rem4_reg_283[5] <= rem4_fu_216_p3[5];
        select_ln14368_reg_293 <= select_ln14368_fu_242_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        tmp_490_reg_265 <= mul_ln14369_cast_fu_172_p1[32'd21];
        tmp_reg_259 <= mul_ln14366_cast_fu_154_p1[32'd16];
        trunc_ln_reg_271 <= {{mul_ln14368_fu_184_p2[21:19]}};
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
        ap_return = v11198_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_210_ap_start = 1'b1;
    end else begin
        grp_fu_210_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_210_ce = 1'b0;
    end else begin
        grp_fu_210_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
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
assign add_ln14368_fu_237_p2 = ($signed(trunc_ln_reg_271) + $signed(3'd5));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_250_p1 = grp_fu_210_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_ap_start_reg;
assign grp_fu_210_p0 = {{mul_ln14366_fu_148_p2[21:17]}};
assign grp_fu_210_p1 = 5'd3;
assign icmp_ln14368_fu_232_p2 = ((trunc_ln_reg_271 < 3'd3) ? 1'b1 : 1'b0);
assign mul_i_fu_224_p3 = {{tmp_490_reg_265}, {4'd0}};
assign mul_ln14366_cast_fu_154_p1 = mul_ln14366_fu_148_p2;
assign mul_ln14366_fu_148_p0 = zext_ln14366_fu_144_p1;
assign mul_ln14366_fu_148_p1 = 23'd2185;
assign mul_ln14368_fu_184_p0 = zext_ln14366_fu_144_p1;
assign mul_ln14368_fu_184_p1 = 23'd2913;
assign mul_ln14369_cast_fu_172_p1 = mul_ln14369_fu_166_p2;
assign mul_ln14369_fu_166_p0 = zext_ln14366_fu_144_p1;
assign mul_ln14369_fu_166_p1 = 23'd3884;
assign rem4_fu_216_p3 = {{tmp_reg_259}, {5'd0}};
assign select_ln14368_fu_242_p3 = ((icmp_ln14368_fu_232_p2[0:0] == 1'b1) ? trunc_ln_reg_271 : add_ln14368_fu_237_p2);
assign v11205_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_address0;
assign v11205_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_ce0;
assign v11205_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_d0;
assign v11205_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_1_we0;
assign v11205_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_address0;
assign v11205_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_ce0;
assign v11205_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_d0;
assign v11205_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_2_we0;
assign v11205_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_address0;
assign v11205_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_ce0;
assign v11205_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_d0;
assign v11205_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_3_we0;
assign v11205_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_address0;
assign v11205_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_ce0;
assign v11205_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_d0;
assign v11205_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_4_we0;
assign v11205_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_address0;
assign v11205_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_ce0;
assign v11205_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_d0;
assign v11205_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_5_we0;
assign v11205_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_address0;
assign v11205_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_ce0;
assign v11205_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_d0;
assign v11205_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_6_we0;
assign v11205_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_address0;
assign v11205_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_ce0;
assign v11205_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_d0;
assign v11205_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_7_we0;
assign v11205_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_address0;
assign v11205_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_ce0;
assign v11205_d0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_d0;
assign v11205_we0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v11205_we0;
assign v13683_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_0_address0;
assign v13683_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_0_ce0;
assign v13683_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_1_address0;
assign v13683_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_0_1_ce0;
assign v13683_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_0_address0;
assign v13683_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_0_ce0;
assign v13683_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_1_address0;
assign v13683_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_1_1_ce0;
assign v13683_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_0_address0;
assign v13683_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_0_ce0;
assign v13683_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_1_address0;
assign v13683_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_2_1_ce0;
assign v13683_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_0_address0;
assign v13683_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_0_ce0;
assign v13683_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_1_address0;
assign v13683_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI_fu_102_v13683_3_1_ce0;
assign zext_ln14366_fu_144_p1 = v11198_0;
always @ (posedge ap_clk) begin
    rem4_reg_283[4:0] <= 5'b00000;
    mul_i_reg_288[3:0] <= 4'b0000;
end
endmodule 