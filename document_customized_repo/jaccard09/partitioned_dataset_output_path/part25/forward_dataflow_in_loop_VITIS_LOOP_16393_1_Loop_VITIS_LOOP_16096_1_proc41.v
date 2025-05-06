
module forward_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12757_address0,v12757_ce0,v12757_we0,v12757_d0,v12757_1_address0,v12757_1_ce0,v12757_1_we0,v12757_1_d0,v12757_2_address0,v12757_2_ce0,v12757_2_we0,v12757_2_d0,v12757_3_address0,v12757_3_ce0,v12757_3_we0,v12757_3_d0,v12757_4_address0,v12757_4_ce0,v12757_4_we0,v12757_4_d0,v12757_5_address0,v12757_5_ce0,v12757_5_we0,v12757_5_d0,v12757_6_address0,v12757_6_ce0,v12757_6_we0,v12757_6_d0,v12757_7_address0,v12757_7_ce0,v12757_7_we0,v12757_7_d0,v12750_0,v13682_0_0_address0,v13682_0_0_ce0,v13682_0_0_q0,v13682_0_1_address0,v13682_0_1_ce0,v13682_0_1_q0,v13682_1_0_address0,v13682_1_0_ce0,v13682_1_0_q0,v13682_1_1_address0,v13682_1_1_ce0,v13682_1_1_q0,v13682_2_0_address0,v13682_2_0_ce0,v13682_2_0_q0,v13682_2_1_address0,v13682_2_1_ce0,v13682_2_1_q0,v13682_3_0_address0,v13682_3_0_ce0,v13682_3_0_q0,v13682_3_1_address0,v13682_3_1_ce0,v13682_3_1_q0,ap_return);  
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
output  [3:0] v12757_address0;
output   v12757_ce0;
output   v12757_we0;
output  [7:0] v12757_d0;
output  [3:0] v12757_1_address0;
output   v12757_1_ce0;
output   v12757_1_we0;
output  [7:0] v12757_1_d0;
output  [3:0] v12757_2_address0;
output   v12757_2_ce0;
output   v12757_2_we0;
output  [7:0] v12757_2_d0;
output  [3:0] v12757_3_address0;
output   v12757_3_ce0;
output   v12757_3_we0;
output  [7:0] v12757_3_d0;
output  [3:0] v12757_4_address0;
output   v12757_4_ce0;
output   v12757_4_we0;
output  [7:0] v12757_4_d0;
output  [3:0] v12757_5_address0;
output   v12757_5_ce0;
output   v12757_5_we0;
output  [7:0] v12757_5_d0;
output  [3:0] v12757_6_address0;
output   v12757_6_ce0;
output   v12757_6_we0;
output  [7:0] v12757_6_d0;
output  [3:0] v12757_7_address0;
output   v12757_7_ce0;
output   v12757_7_we0;
output  [7:0] v12757_7_d0;
input  [12:0] v12750_0;
output  [9:0] v13682_0_0_address0;
output   v13682_0_0_ce0;
input  [7:0] v13682_0_0_q0;
output  [9:0] v13682_0_1_address0;
output   v13682_0_1_ce0;
input  [7:0] v13682_0_1_q0;
output  [9:0] v13682_1_0_address0;
output   v13682_1_0_ce0;
input  [7:0] v13682_1_0_q0;
output  [9:0] v13682_1_1_address0;
output   v13682_1_1_ce0;
input  [7:0] v13682_1_1_q0;
output  [9:0] v13682_2_0_address0;
output   v13682_2_0_ce0;
input  [7:0] v13682_2_0_q0;
output  [9:0] v13682_2_1_address0;
output   v13682_2_1_ce0;
input  [7:0] v13682_2_1_q0;
output  [9:0] v13682_3_0_address0;
output   v13682_3_0_ce0;
input  [7:0] v13682_3_0_q0;
output  [9:0] v13682_3_1_address0;
output   v13682_3_1_ce0;
input  [7:0] v13682_3_1_q0;
output  [12:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_259;
reg   [0:0] tmp_416_reg_265;
reg   [2:0] trunc_ln_reg_271;
wire   [4:0] rem4_fu_216_p3;
reg   [4:0] rem4_reg_283;
wire    ap_CS_fsm_state9;
wire   [3:0] mul_i_fu_224_p3;
reg   [3:0] mul_i_reg_288;
wire   [2:0] select_ln16399_fu_242_p3;
reg   [2:0] select_ln16399_reg_293;
wire   [1:0] empty_fu_250_p1;
reg   [1:0] empty_reg_298;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_ready;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_0_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_0_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_0_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_0_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_1_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_1_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_1_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [12:0] mul_ln16397_fu_148_p0;
wire   [26:0] zext_ln16397_fu_144_p1;
wire   [14:0] mul_ln16397_fu_148_p1;
wire   [26:0] mul_ln16397_fu_148_p2;
wire   [33:0] mul_ln16397_cast_fu_154_p1;
wire   [12:0] mul_ln16400_fu_166_p0;
wire   [14:0] mul_ln16400_fu_166_p1;
wire   [26:0] mul_ln16400_fu_166_p2;
wire   [38:0] mul_ln16400_cast_fu_172_p1;
wire   [12:0] mul_ln16399_fu_184_p0;
wire   [14:0] mul_ln16399_fu_184_p1;
wire   [26:0] mul_ln16399_fu_184_p2;
wire   [4:0] grp_fu_210_p0;
wire   [2:0] grp_fu_210_p1;
wire   [0:0] icmp_ln16399_fu_232_p2;
wire   [2:0] add_ln16399_fu_237_p2;
wire   [1:0] grp_fu_210_p2;
reg    grp_fu_210_ap_start;
wire    grp_fu_210_ap_done;
reg    grp_fu_210_ce;
reg   [12:0] ap_return_preg;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start_reg = 1'b0;
#0 ap_return_preg = 13'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_ready),.rem4(rem4_reg_283),.v12757_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_address0),.v12757_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_ce0),.v12757_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_we0),.v12757_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_d0),.v12757_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_address0),.v12757_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_ce0),.v12757_1_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_we0),.v12757_1_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_d0),.v12757_2_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_address0),.v12757_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_ce0),.v12757_2_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_we0),.v12757_2_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_d0),.v12757_3_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_address0),.v12757_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_ce0),.v12757_3_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_we0),.v12757_3_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_d0),.v12757_4_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_address0),.v12757_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_ce0),.v12757_4_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_we0),.v12757_4_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_d0),.v12757_5_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_address0),.v12757_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_ce0),.v12757_5_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_we0),.v12757_5_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_d0),.v12757_6_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_address0),.v12757_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_ce0),.v12757_6_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_we0),.v12757_6_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_d0),.v12757_7_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_address0),.v12757_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_ce0),.v12757_7_we0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_we0),.v12757_7_d0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_d0),.mul_i(mul_i_reg_288),.empty_101(tmp_reg_259),.empty(tmp_416_reg_265),.zext_ln16138_1(select_ln16399_reg_293),.zext_ln16138(empty_reg_298),.v13682_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_0_address0),.v13682_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_0_ce0),.v13682_0_0_q0(v13682_0_0_q0),.v13682_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_0_address0),.v13682_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_0_ce0),.v13682_1_0_q0(v13682_1_0_q0),.v13682_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_0_address0),.v13682_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_0_ce0),.v13682_2_0_q0(v13682_2_0_q0),.v13682_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_0_address0),.v13682_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_0_ce0),.v13682_3_0_q0(v13682_3_0_q0),.v13682_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_1_address0),.v13682_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_1_ce0),.v13682_0_1_q0(v13682_0_1_q0),.v13682_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_1_address0),.v13682_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_1_ce0),.v13682_1_1_q0(v13682_1_1_q0),.v13682_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_1_address0),.v13682_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_1_ce0),.v13682_2_1_q0(v13682_2_1_q0),.v13682_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_1_address0),.v13682_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_1_ce0),.v13682_3_1_q0(v13682_3_1_q0));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U2086(.din0(mul_ln16397_fu_148_p0),.din1(mul_ln16397_fu_148_p1),.dout(mul_ln16397_fu_148_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U2087(.din0(mul_ln16400_fu_166_p0),.din1(mul_ln16400_fu_166_p1),.dout(mul_ln16400_fu_166_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U2088(.din0(mul_ln16399_fu_184_p0),.din1(mul_ln16399_fu_184_p1),.dout(mul_ln16399_fu_184_p2));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U2089(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_210_ap_start),.done(grp_fu_210_ap_done),.din0(grp_fu_210_p0),.din1(grp_fu_210_p1),.ce(grp_fu_210_ce),.dout(grp_fu_210_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 13'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
            ap_return_preg <= v12750_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_reg_298 <= empty_fu_250_p1;
        mul_i_reg_288[3] <= mul_i_fu_224_p3[3];
        rem4_reg_283[4] <= rem4_fu_216_p3[4];
        select_ln16399_reg_293 <= select_ln16399_fu_242_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        tmp_416_reg_265 <= mul_ln16400_cast_fu_172_p1[32'd25];
        tmp_reg_259 <= mul_ln16397_cast_fu_154_p1[32'd20];
        trunc_ln_reg_271 <= {{mul_ln16399_fu_184_p2[25:23]}};
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
        ap_return = v12750_0;
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_done == 1'b1))) begin
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
assign add_ln16399_fu_237_p2 = ($signed(trunc_ln_reg_271) + $signed(3'd5));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_250_p1 = grp_fu_210_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_ap_start_reg;
assign grp_fu_210_p0 = {{mul_ln16397_fu_148_p2[25:21]}};
assign grp_fu_210_p1 = 5'd3;
assign icmp_ln16399_fu_232_p2 = ((trunc_ln_reg_271 < 3'd3) ? 1'b1 : 1'b0);
assign mul_i_fu_224_p3 = {{tmp_416_reg_265}, {3'd0}};
assign mul_ln16397_cast_fu_154_p1 = mul_ln16397_fu_148_p2;
assign mul_ln16397_fu_148_p0 = zext_ln16397_fu_144_p1;
assign mul_ln16397_fu_148_p1 = 27'd8739;
assign mul_ln16399_fu_184_p0 = zext_ln16397_fu_144_p1;
assign mul_ln16399_fu_184_p1 = 27'd11651;
assign mul_ln16400_cast_fu_172_p1 = mul_ln16400_fu_166_p2;
assign mul_ln16400_fu_166_p0 = zext_ln16397_fu_144_p1;
assign mul_ln16400_fu_166_p1 = 27'd15535;
assign rem4_fu_216_p3 = {{tmp_reg_259}, {4'd0}};
assign select_ln16399_fu_242_p3 = ((icmp_ln16399_fu_232_p2[0:0] == 1'b1) ? trunc_ln_reg_271 : add_ln16399_fu_237_p2);
assign v12757_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_address0;
assign v12757_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_ce0;
assign v12757_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_d0;
assign v12757_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_1_we0;
assign v12757_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_address0;
assign v12757_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_ce0;
assign v12757_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_d0;
assign v12757_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_2_we0;
assign v12757_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_address0;
assign v12757_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_ce0;
assign v12757_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_d0;
assign v12757_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_3_we0;
assign v12757_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_address0;
assign v12757_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_ce0;
assign v12757_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_d0;
assign v12757_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_4_we0;
assign v12757_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_address0;
assign v12757_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_ce0;
assign v12757_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_d0;
assign v12757_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_5_we0;
assign v12757_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_address0;
assign v12757_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_ce0;
assign v12757_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_d0;
assign v12757_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_6_we0;
assign v12757_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_address0;
assign v12757_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_ce0;
assign v12757_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_d0;
assign v12757_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_7_we0;
assign v12757_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_address0;
assign v12757_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_ce0;
assign v12757_d0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_d0;
assign v12757_we0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v12757_we0;
assign v13682_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_0_address0;
assign v13682_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_0_ce0;
assign v13682_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_1_address0;
assign v13682_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_0_1_ce0;
assign v13682_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_0_address0;
assign v13682_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_0_ce0;
assign v13682_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_1_address0;
assign v13682_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_1_1_ce0;
assign v13682_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_0_address0;
assign v13682_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_0_ce0;
assign v13682_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_1_address0;
assign v13682_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_2_1_ce0;
assign v13682_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_0_address0;
assign v13682_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_0_ce0;
assign v13682_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_1_address0;
assign v13682_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16393_1_Loop_VITIS_LOOP_16096_1_proc41_Pipeline_VITI_fu_102_v13682_3_1_ce0;
assign zext_ln16397_fu_144_p1 = v12750_0;
always @ (posedge ap_clk) begin
    rem4_reg_283[3:0] <= 4'b0000;
    mul_i_reg_288[2:0] <= 3'b000;
end
endmodule 
