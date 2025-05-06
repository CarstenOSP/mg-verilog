
module forward_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15874_address0,v15874_ce0,v15874_we0,v15874_d0,v15874_1_address0,v15874_1_ce0,v15874_1_we0,v15874_1_d0,v15874_2_address0,v15874_2_ce0,v15874_2_we0,v15874_2_d0,v15874_3_address0,v15874_3_ce0,v15874_3_we0,v15874_3_d0,v15874_4_address0,v15874_4_ce0,v15874_4_we0,v15874_4_d0,v15874_5_address0,v15874_5_ce0,v15874_5_we0,v15874_5_d0,v15874_6_address0,v15874_6_ce0,v15874_6_we0,v15874_6_d0,v15874_7_address0,v15874_7_ce0,v15874_7_we0,v15874_7_d0,v15867_0,v16145_0_0_address0,v16145_0_0_ce0,v16145_0_0_q0,v16145_0_1_address0,v16145_0_1_ce0,v16145_0_1_q0,v16145_1_0_address0,v16145_1_0_ce0,v16145_1_0_q0,v16145_1_1_address0,v16145_1_1_ce0,v16145_1_1_q0,v16145_2_0_address0,v16145_2_0_ce0,v16145_2_0_q0,v16145_2_1_address0,v16145_2_1_ce0,v16145_2_1_q0,v16145_3_0_address0,v16145_3_0_ce0,v16145_3_0_q0,v16145_3_1_address0,v16145_3_1_ce0,v16145_3_1_q0,ap_return);  
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
output  [4:0] v15874_address0;
output   v15874_ce0;
output   v15874_we0;
output  [7:0] v15874_d0;
output  [4:0] v15874_1_address0;
output   v15874_1_ce0;
output   v15874_1_we0;
output  [7:0] v15874_1_d0;
output  [4:0] v15874_2_address0;
output   v15874_2_ce0;
output   v15874_2_we0;
output  [7:0] v15874_2_d0;
output  [4:0] v15874_3_address0;
output   v15874_3_ce0;
output   v15874_3_we0;
output  [7:0] v15874_3_d0;
output  [4:0] v15874_4_address0;
output   v15874_4_ce0;
output   v15874_4_we0;
output  [7:0] v15874_4_d0;
output  [4:0] v15874_5_address0;
output   v15874_5_ce0;
output   v15874_5_we0;
output  [7:0] v15874_5_d0;
output  [4:0] v15874_6_address0;
output   v15874_6_ce0;
output   v15874_6_we0;
output  [7:0] v15874_6_d0;
output  [4:0] v15874_7_address0;
output   v15874_7_ce0;
output   v15874_7_we0;
output  [7:0] v15874_7_d0;
input  [10:0] v15867_0;
output  [10:0] v16145_0_0_address0;
output   v16145_0_0_ce0;
input  [7:0] v16145_0_0_q0;
output  [10:0] v16145_0_1_address0;
output   v16145_0_1_ce0;
input  [7:0] v16145_0_1_q0;
output  [10:0] v16145_1_0_address0;
output   v16145_1_0_ce0;
input  [7:0] v16145_1_0_q0;
output  [10:0] v16145_1_1_address0;
output   v16145_1_1_ce0;
input  [7:0] v16145_1_1_q0;
output  [10:0] v16145_2_0_address0;
output   v16145_2_0_ce0;
input  [7:0] v16145_2_0_q0;
output  [10:0] v16145_2_1_address0;
output   v16145_2_1_ce0;
input  [7:0] v16145_2_1_q0;
output  [10:0] v16145_3_0_address0;
output   v16145_3_0_ce0;
input  [7:0] v16145_3_0_q0;
output  [10:0] v16145_3_1_address0;
output   v16145_3_1_ce0;
input  [7:0] v16145_3_1_q0;
output  [10:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_257;
reg   [0:0] tmp_223_reg_263;
reg   [2:0] trunc_ln_reg_269;
wire   [4:0] rem4_fu_214_p3;
reg   [4:0] rem4_reg_281;
wire    ap_CS_fsm_state9;
wire   [4:0] mul_i_fu_222_p3;
reg   [4:0] mul_i_reg_286;
wire   [2:0] select_ln20490_fu_240_p3;
reg   [2:0] select_ln20490_reg_291;
wire   [1:0] empty_fu_248_p1;
reg   [1:0] empty_reg_296;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_ready;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_d0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_d0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_d0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_d0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_d0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_d0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_d0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_d0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_0_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_0_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_0_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_0_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_1_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_1_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_1_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [10:0] mul_ln20488_fu_146_p0;
wire   [22:0] zext_ln20488_fu_142_p1;
wire   [12:0] mul_ln20488_fu_146_p1;
wire   [22:0] mul_ln20488_fu_146_p2;
wire   [28:0] mul_ln20488_cast_fu_152_p1;
wire   [10:0] mul_ln20491_fu_164_p0;
wire   [12:0] mul_ln20491_fu_164_p1;
wire   [22:0] mul_ln20491_fu_164_p2;
wire   [32:0] mul_ln20491_cast_fu_170_p1;
wire   [10:0] mul_ln20490_fu_182_p0;
wire   [12:0] mul_ln20490_fu_182_p1;
wire   [22:0] mul_ln20490_fu_182_p2;
wire   [4:0] grp_fu_208_p0;
wire   [2:0] grp_fu_208_p1;
wire   [0:0] icmp_ln20490_fu_230_p2;
wire   [2:0] add_ln20490_fu_235_p2;
wire   [1:0] grp_fu_208_p2;
reg    grp_fu_208_ap_start;
wire    grp_fu_208_ap_done;
reg    grp_fu_208_ce;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start_reg = 1'b0;
#0 ap_return_preg = 11'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_ready),.rem4(rem4_reg_281),.v15874_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_address0),.v15874_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_ce0),.v15874_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_we0),.v15874_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_d0),.v15874_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_address0),.v15874_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_ce0),.v15874_1_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_we0),.v15874_1_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_d0),.v15874_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_address0),.v15874_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_ce0),.v15874_2_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_we0),.v15874_2_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_d0),.v15874_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_address0),.v15874_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_ce0),.v15874_3_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_we0),.v15874_3_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_d0),.v15874_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_address0),.v15874_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_ce0),.v15874_4_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_we0),.v15874_4_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_d0),.v15874_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_address0),.v15874_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_ce0),.v15874_5_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_we0),.v15874_5_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_d0),.v15874_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_address0),.v15874_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_ce0),.v15874_6_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_we0),.v15874_6_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_d0),.v15874_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_address0),.v15874_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_ce0),.v15874_7_we0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_we0),.v15874_7_d0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_d0),.mul_i(mul_i_reg_286),.empty_96(tmp_reg_257),.empty(tmp_223_reg_263),.zext_ln20229_1(select_ln20490_reg_291),.zext_ln20229(empty_reg_296),.v16145_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_0_address0),.v16145_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_0_ce0),.v16145_0_0_q0(v16145_0_0_q0),.v16145_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_0_address0),.v16145_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_0_ce0),.v16145_1_0_q0(v16145_1_0_q0),.v16145_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_0_address0),.v16145_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_0_ce0),.v16145_2_0_q0(v16145_2_0_q0),.v16145_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_0_address0),.v16145_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_0_ce0),.v16145_3_0_q0(v16145_3_0_q0),.v16145_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_1_address0),.v16145_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_1_ce0),.v16145_0_1_q0(v16145_0_1_q0),.v16145_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_1_address0),.v16145_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_1_ce0),.v16145_1_1_q0(v16145_1_1_q0),.v16145_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_1_address0),.v16145_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_1_ce0),.v16145_2_1_q0(v16145_2_1_q0),.v16145_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_1_address0),.v16145_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_1_ce0),.v16145_3_1_q0(v16145_3_1_q0));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U952(.din0(mul_ln20488_fu_146_p0),.din1(mul_ln20488_fu_146_p1),.dout(mul_ln20488_fu_146_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U953(.din0(mul_ln20491_fu_164_p0),.din1(mul_ln20491_fu_164_p1),.dout(mul_ln20491_fu_164_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U954(.din0(mul_ln20490_fu_182_p0),.din1(mul_ln20490_fu_182_p1),.dout(mul_ln20490_fu_182_p2));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U955(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_208_ap_start),.done(grp_fu_208_ap_done),.din0(grp_fu_208_p0),.din1(grp_fu_208_p1),.ce(grp_fu_208_ce),.dout(grp_fu_208_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 11'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done == 1'b1))) begin
            ap_return_preg <= v15867_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_reg_296 <= empty_fu_248_p1;
        mul_i_reg_286[4] <= mul_i_fu_222_p3[4];
        rem4_reg_281[4] <= rem4_fu_214_p3[4];
        select_ln20490_reg_291 <= select_ln20490_fu_240_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        tmp_223_reg_263 <= mul_ln20491_cast_fu_170_p1[32'd21];
        tmp_reg_257 <= mul_ln20488_cast_fu_152_p1[32'd17];
        trunc_ln_reg_269 <= {{mul_ln20490_fu_182_p2[22:20]}};
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done == 1'b1))) begin
        ap_return = v15867_0;
    end else begin
        ap_return = ap_return_preg;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_done == 1'b1))) begin
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
assign add_ln20490_fu_235_p2 = ($signed(trunc_ln_reg_269) + $signed(3'd5));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_248_p1 = grp_fu_208_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_ap_start_reg;
assign grp_fu_208_p0 = {{mul_ln20488_fu_146_p2[22:18]}};
assign grp_fu_208_p1 = 5'd3;
assign icmp_ln20490_fu_230_p2 = ((trunc_ln_reg_269 < 3'd3) ? 1'b1 : 1'b0);
assign mul_i_fu_222_p3 = {{tmp_223_reg_263}, {4'd0}};
assign mul_ln20488_cast_fu_152_p1 = mul_ln20488_fu_146_p2;
assign mul_ln20488_fu_146_p0 = zext_ln20488_fu_142_p1;
assign mul_ln20488_fu_146_p1 = 23'd2675;
assign mul_ln20490_fu_182_p0 = zext_ln20488_fu_142_p1;
assign mul_ln20490_fu_182_p1 = 23'd3567;
assign mul_ln20491_cast_fu_170_p1 = mul_ln20491_fu_164_p2;
assign mul_ln20491_fu_164_p0 = zext_ln20488_fu_142_p1;
assign mul_ln20491_fu_164_p1 = 23'd2378;
assign rem4_fu_214_p3 = {{tmp_reg_257}, {4'd0}};
assign select_ln20490_fu_240_p3 = ((icmp_ln20490_fu_230_p2[0:0] == 1'b1) ? trunc_ln_reg_269 : add_ln20490_fu_235_p2);
assign v15874_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_address0;
assign v15874_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_ce0;
assign v15874_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_d0;
assign v15874_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_1_we0;
assign v15874_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_address0;
assign v15874_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_ce0;
assign v15874_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_d0;
assign v15874_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_2_we0;
assign v15874_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_address0;
assign v15874_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_ce0;
assign v15874_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_d0;
assign v15874_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_3_we0;
assign v15874_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_address0;
assign v15874_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_ce0;
assign v15874_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_d0;
assign v15874_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_4_we0;
assign v15874_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_address0;
assign v15874_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_ce0;
assign v15874_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_d0;
assign v15874_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_5_we0;
assign v15874_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_address0;
assign v15874_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_ce0;
assign v15874_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_d0;
assign v15874_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_6_we0;
assign v15874_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_address0;
assign v15874_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_ce0;
assign v15874_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_d0;
assign v15874_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_7_we0;
assign v15874_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_address0;
assign v15874_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_ce0;
assign v15874_d0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_d0;
assign v15874_we0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v15874_we0;
assign v16145_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_0_address0;
assign v16145_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_0_ce0;
assign v16145_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_1_address0;
assign v16145_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_0_1_ce0;
assign v16145_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_0_address0;
assign v16145_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_0_ce0;
assign v16145_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_1_address0;
assign v16145_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_1_1_ce0;
assign v16145_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_0_address0;
assign v16145_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_0_ce0;
assign v16145_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_1_address0;
assign v16145_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_2_1_ce0;
assign v16145_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_0_address0;
assign v16145_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_0_ce0;
assign v16145_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_1_address0;
assign v16145_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20484_1_Loop_VITIS_LOOP_20187_1_proc38_Pipeline_VITI_fu_100_v16145_3_1_ce0;
assign zext_ln20488_fu_142_p1 = v15867_0;
always @ (posedge ap_clk) begin
    rem4_reg_281[3:0] <= 4'b0000;
    mul_i_reg_286[3:0] <= 4'b0000;
end
endmodule 
