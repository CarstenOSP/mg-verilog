module forward_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8997_address0,v8997_ce0,v8997_we0,v8997_d0,v8997_1_address0,v8997_1_ce0,v8997_1_we0,v8997_1_d0,v8997_2_address0,v8997_2_ce0,v8997_2_we0,v8997_2_d0,v8997_3_address0,v8997_3_ce0,v8997_3_we0,v8997_3_d0,v8989_0,v9000_0_0_address0,v9000_0_0_ce0,v9000_0_0_q0,v9000_0_1_address0,v9000_0_1_ce0,v9000_0_1_q0,v9000_0_2_address0,v9000_0_2_ce0,v9000_0_2_q0,v9000_0_3_address0,v9000_0_3_ce0,v9000_0_3_q0,v9000_1_0_address0,v9000_1_0_ce0,v9000_1_0_q0,v9000_1_1_address0,v9000_1_1_ce0,v9000_1_1_q0,v9000_1_2_address0,v9000_1_2_ce0,v9000_1_2_q0,v9000_1_3_address0,v9000_1_3_ce0,v9000_1_3_q0,v9000_2_0_address0,v9000_2_0_ce0,v9000_2_0_q0,v9000_2_1_address0,v9000_2_1_ce0,v9000_2_1_q0,v9000_2_2_address0,v9000_2_2_ce0,v9000_2_2_q0,v9000_2_3_address0,v9000_2_3_ce0,v9000_2_3_q0,v9000_3_0_address0,v9000_3_0_ce0,v9000_3_0_q0,v9000_3_1_address0,v9000_3_1_ce0,v9000_3_1_q0,v9000_3_2_address0,v9000_3_2_ce0,v9000_3_2_q0,v9000_3_3_address0,v9000_3_3_ce0,v9000_3_3_q0); 
parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] v8997_address0;
output   v8997_ce0;
output   v8997_we0;
output  [7:0] v8997_d0;
output  [6:0] v8997_1_address0;
output   v8997_1_ce0;
output   v8997_1_we0;
output  [7:0] v8997_1_d0;
output  [6:0] v8997_2_address0;
output   v8997_2_ce0;
output   v8997_2_we0;
output  [7:0] v8997_2_d0;
output  [6:0] v8997_3_address0;
output   v8997_3_ce0;
output   v8997_3_we0;
output  [7:0] v8997_3_d0;
input  [13:0] v8989_0;
output  [13:0] v9000_0_0_address0;
output   v9000_0_0_ce0;
input  [7:0] v9000_0_0_q0;
output  [13:0] v9000_0_1_address0;
output   v9000_0_1_ce0;
input  [7:0] v9000_0_1_q0;
output  [13:0] v9000_0_2_address0;
output   v9000_0_2_ce0;
input  [7:0] v9000_0_2_q0;
output  [13:0] v9000_0_3_address0;
output   v9000_0_3_ce0;
input  [7:0] v9000_0_3_q0;
output  [13:0] v9000_1_0_address0;
output   v9000_1_0_ce0;
input  [7:0] v9000_1_0_q0;
output  [13:0] v9000_1_1_address0;
output   v9000_1_1_ce0;
input  [7:0] v9000_1_1_q0;
output  [13:0] v9000_1_2_address0;
output   v9000_1_2_ce0;
input  [7:0] v9000_1_2_q0;
output  [13:0] v9000_1_3_address0;
output   v9000_1_3_ce0;
input  [7:0] v9000_1_3_q0;
output  [13:0] v9000_2_0_address0;
output   v9000_2_0_ce0;
input  [7:0] v9000_2_0_q0;
output  [13:0] v9000_2_1_address0;
output   v9000_2_1_ce0;
input  [7:0] v9000_2_1_q0;
output  [13:0] v9000_2_2_address0;
output   v9000_2_2_ce0;
input  [7:0] v9000_2_2_q0;
output  [13:0] v9000_2_3_address0;
output   v9000_2_3_ce0;
input  [7:0] v9000_2_3_q0;
output  [13:0] v9000_3_0_address0;
output   v9000_3_0_ce0;
input  [7:0] v9000_3_0_q0;
output  [13:0] v9000_3_1_address0;
output   v9000_3_1_ce0;
input  [7:0] v9000_3_1_q0;
output  [13:0] v9000_3_2_address0;
output   v9000_3_2_ce0;
input  [7:0] v9000_3_2_q0;
output  [13:0] v9000_3_3_address0;
output   v9000_3_3_ce0;
input  [7:0] v9000_3_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [4:0] trunc_ln_reg_335;
wire    ap_CS_fsm_state5;
reg   [11:0] trunc_ln18_reg_340;
reg   [7:0] trunc_ln19_reg_345;
reg   [1:0] tmp_reg_350;
reg   [0:0] tmp_235_reg_355;
wire    ap_CS_fsm_state18;
wire  signed [7:0] grp_fu_258_p2;
wire    ap_CS_fsm_state20;
wire   [7:0] mul5_i588_fu_276_p2;
reg   [7:0] mul5_i588_reg_370;
wire    ap_CS_fsm_state21;
wire  signed [7:0] grp_fu_320_p3;
reg   [7:0] thr_add_reg_375;
wire   [1:0] trunc_ln11265_1_fu_282_p1;
reg   [1:0] trunc_ln11265_1_reg_380;
wire   [2:0] trunc_ln11585_fu_285_p1;
reg   [2:0] trunc_ln11585_reg_385;
wire    ap_CS_fsm_state22;
wire   [6:0] sub_ln11265_fu_308_p2;
reg   [6:0] sub_ln11265_reg_390;
wire   [1:0] trunc_ln11265_2_fu_315_p1;
reg   [1:0] trunc_ln11265_2_reg_395;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_ready;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_3_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_3_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_3_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start_reg;
wire    ap_CS_fsm_state23;
wire   [3:0] grp_fu_172_p1;
wire   [13:0] mul_ln11588_fu_181_p0;
wire   [28:0] zext_ln11588_fu_178_p1;
wire   [15:0] mul_ln11588_fu_181_p1;
wire   [28:0] mul_ln11588_fu_181_p2;
wire   [13:0] mul_ln11585_fu_197_p0;
wire   [15:0] mul_ln11585_fu_197_p1;
wire   [28:0] mul_ln11585_fu_197_p2;
wire   [13:0] mul_ln11587_fu_213_p0;
wire   [15:0] mul_ln11587_fu_213_p1;
wire   [28:0] mul_ln11587_fu_213_p2;
wire   [13:0] mul_ln11589_fu_229_p0;
wire   [15:0] mul_ln11589_fu_229_p1;
wire   [28:0] mul_ln11589_fu_229_p2;
wire   [3:0] grp_fu_253_p1;
wire    ap_CS_fsm_state6;
wire   [3:0] grp_fu_258_p1;
wire    ap_CS_fsm_state9;
wire   [3:0] grp_fu_263_p1;
wire    ap_CS_fsm_state14;
wire   [7:0] grp_fu_172_p2;
wire   [7:0] grp_fu_253_p2;
wire  signed [7:0] mul5_i588_fu_276_p0;
wire   [6:0] mul5_i588_fu_276_p1;
wire   [2:0] grp_fu_263_p2;
wire   [4:0] tmp_236_fu_290_p3;
wire   [6:0] tmp_237_fu_297_p3;
wire   [6:0] zext_ln11269_fu_304_p1;
wire  signed [7:0] grp_fu_320_p0;
wire   [5:0] grp_fu_320_p1;
wire  signed [3:0] grp_fu_320_p2;
reg    grp_fu_172_ap_start;
wire    grp_fu_172_ap_done;
reg    grp_fu_172_ce;
wire    ap_CS_fsm_state19;
reg    grp_fu_253_ap_start;
wire    grp_fu_253_ap_done;
reg    grp_fu_258_ap_start;
wire    grp_fu_258_ap_done;
reg    grp_fu_263_ap_start;
wire    grp_fu_263_ap_done;
reg   [22:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 23'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_ready),.zext_ln11585(trunc_ln11585_reg_385),.mul5_i588(mul5_i588_reg_370),.mul_ln11269(sub_ln11265_reg_390),.v8997_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_address0),.v8997_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_ce0),.v8997_we0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_we0),.v8997_d0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_d0),.v8997_1_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_address0),.v8997_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_ce0),.v8997_1_we0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_we0),.v8997_1_d0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_d0),.v8997_2_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_address0),.v8997_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_ce0),.v8997_2_we0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_we0),.v8997_2_d0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_d0),.v8997_3_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_address0),.v8997_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_ce0),.v8997_3_we0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_we0),.v8997_3_d0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_d0),.thr_add(thr_add_reg_375),.v9000_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_0_address0),.v9000_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_0_ce0),.v9000_0_0_q0(v9000_0_0_q0),.v9000_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_1_address0),.v9000_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_1_ce0),.v9000_0_1_q0(v9000_0_1_q0),.v9000_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_2_address0),.v9000_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_2_ce0),.v9000_0_2_q0(v9000_0_2_q0),.v9000_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_3_address0),.v9000_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_3_ce0),.v9000_0_3_q0(v9000_0_3_q0),.v9000_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_0_address0),.v9000_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_0_ce0),.v9000_1_0_q0(v9000_1_0_q0),.v9000_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_1_address0),.v9000_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_1_ce0),.v9000_1_1_q0(v9000_1_1_q0),.v9000_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_2_address0),.v9000_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_2_ce0),.v9000_1_2_q0(v9000_1_2_q0),.v9000_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_3_address0),.v9000_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_3_ce0),.v9000_1_3_q0(v9000_1_3_q0),.v9000_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_0_address0),.v9000_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_0_ce0),.v9000_2_0_q0(v9000_2_0_q0),.v9000_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_1_address0),.v9000_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_1_ce0),.v9000_2_1_q0(v9000_2_1_q0),.v9000_2_2_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_2_address0),.v9000_2_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_2_ce0),.v9000_2_2_q0(v9000_2_2_q0),.v9000_2_3_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_3_address0),.v9000_2_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_3_ce0),.v9000_2_3_q0(v9000_2_3_q0),.v9000_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_0_address0),.v9000_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_0_ce0),.v9000_3_0_q0(v9000_3_0_q0),.v9000_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_1_address0),.v9000_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_1_ce0),.v9000_3_1_q0(v9000_3_1_q0),.v9000_3_2_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_2_address0),.v9000_3_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_2_ce0),.v9000_3_2_q0(v9000_3_2_q0),.v9000_3_3_address0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_3_address0),.v9000_3_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_3_ce0),.v9000_3_3_q0(v9000_3_3_q0),.empty_79(trunc_ln11265_1_reg_380),.empty(trunc_ln11265_2_reg_395));
forward_urem_14ns_4ns_8_18_seq_1 #(.ID( 1 ),.NUM_STAGE( 18 ),.din0_WIDTH( 14 ),.din1_WIDTH( 4 ),.dout_WIDTH( 8 ))
urem_14ns_4ns_8_18_seq_1_U608(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_172_ap_start),.done(grp_fu_172_ap_done),.din0(v8989_0),.din1(grp_fu_172_p1),.ce(grp_fu_172_ce),.dout(grp_fu_172_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U609(.din0(mul_ln11588_fu_181_p0),.din1(mul_ln11588_fu_181_p1),.dout(mul_ln11588_fu_181_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U610(.din0(mul_ln11585_fu_197_p0),.din1(mul_ln11585_fu_197_p1),.dout(mul_ln11585_fu_197_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U611(.din0(mul_ln11587_fu_213_p0),.din1(mul_ln11587_fu_213_p1),.dout(mul_ln11587_fu_213_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U612(.din0(mul_ln11589_fu_229_p0),.din1(mul_ln11589_fu_229_p1),.dout(mul_ln11589_fu_229_p2));
forward_urem_12ns_4ns_8_16_seq_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 4 ),.dout_WIDTH( 8 ))
urem_12ns_4ns_8_16_seq_1_U613(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_253_ap_start),.done(grp_fu_253_ap_done),.din0(trunc_ln18_reg_340),.din1(grp_fu_253_p1),.ce(1'b1),.dout(grp_fu_253_p2));
forward_urem_8ns_4ns_8_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.dout_WIDTH( 8 ))
urem_8ns_4ns_8_12_seq_1_U614(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_258_ap_start),.done(grp_fu_258_ap_done),.din0(trunc_ln19_reg_345),.din1(grp_fu_258_p1),.ce(1'b1),.dout(grp_fu_258_p2));
forward_urem_5ns_4ns_3_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_5ns_4ns_3_9_seq_1_U615(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_263_ap_start),.done(grp_fu_263_ap_done),.din0(trunc_ln_reg_335),.din1(grp_fu_263_p1),.ce(1'b1),.dout(grp_fu_263_p2));
forward_mul_8s_7ns_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
mul_8s_7ns_8_1_1_U616(.din0(mul5_i588_fu_276_p0),.din1(mul5_i588_fu_276_p1),.dout(mul5_i588_fu_276_p2));
forward_mac_muladd_8s_6ns_4s_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 4 ),.dout_WIDTH( 8 ))
mac_muladd_8s_6ns_4s_8_4_1_U617(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_320_p0),.din1(grp_fu_320_p1),.din2(grp_fu_320_p2),.ce(1'b1),.dout(grp_fu_320_p3));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        mul5_i588_reg_370 <= mul5_i588_fu_276_p2;
        thr_add_reg_375 <= grp_fu_320_p3;
        trunc_ln11265_1_reg_380 <= trunc_ln11265_1_fu_282_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        sub_ln11265_reg_390[6 : 3] <= sub_ln11265_fu_308_p2[6 : 3];
        trunc_ln11265_2_reg_395 <= trunc_ln11265_2_fu_315_p1;
        trunc_ln11585_reg_385 <= trunc_ln11585_fu_285_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_235_reg_355 <= mul_ln11589_fu_229_p2[32'd26];
        tmp_reg_350 <= {{mul_ln11589_fu_229_p2[27:26]}};
        trunc_ln18_reg_340 <= {{mul_ln11585_fu_197_p2[28:17]}};
        trunc_ln19_reg_345 <= {{mul_ln11587_fu_213_p2[28:21]}};
        trunc_ln_reg_335 <= {{mul_ln11588_fu_181_p2[28:24]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_172_ap_start = 1'b1;
    end else begin
        grp_fu_172_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_172_ce = 1'b0;
    end else begin
        grp_fu_172_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_253_ap_start = 1'b1;
    end else begin
        grp_fu_253_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_258_ap_start = 1'b1;
    end else begin
        grp_fu_258_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_263_ap_start = 1'b1;
    end else begin
        grp_fu_263_ap_start = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_ap_start_reg;
assign grp_fu_172_p1 = 14'd5;
assign grp_fu_253_p1 = 12'd5;
assign grp_fu_258_p1 = 8'd7;
assign grp_fu_263_p1 = 5'd7;
assign grp_fu_320_p0 = grp_fu_172_p2[7:0];
assign grp_fu_320_p1 = 8'd44;
assign grp_fu_320_p2 = grp_fu_258_p2;
assign mul5_i588_fu_276_p0 = grp_fu_253_p2[7:0];
assign mul5_i588_fu_276_p1 = 8'd44;
assign mul_ln11585_fu_197_p0 = zext_ln11588_fu_178_p1;
assign mul_ln11585_fu_197_p1 = 29'd26215;
assign mul_ln11587_fu_213_p0 = zext_ln11588_fu_178_p1;
assign mul_ln11587_fu_213_p1 = 29'd27963;
assign mul_ln11588_fu_181_p0 = zext_ln11588_fu_178_p1;
assign mul_ln11588_fu_181_p1 = 29'd31957;
assign mul_ln11589_fu_229_p0 = zext_ln11588_fu_178_p1;
assign mul_ln11589_fu_229_p1 = 29'd18261;
assign sub_ln11265_fu_308_p2 = (tmp_237_fu_297_p3 - zext_ln11269_fu_304_p1);
assign tmp_236_fu_290_p3 = {{tmp_reg_350}, {3'd0}};
assign tmp_237_fu_297_p3 = {{tmp_235_reg_355}, {6'd0}};
assign trunc_ln11265_1_fu_282_p1 = grp_fu_320_p3[1:0];
assign trunc_ln11265_2_fu_315_p1 = grp_fu_263_p2[1:0];
assign trunc_ln11585_fu_285_p1 = grp_fu_263_p2[2:0];
assign v8997_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_address0;
assign v8997_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_ce0;
assign v8997_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_d0;
assign v8997_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_1_we0;
assign v8997_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_address0;
assign v8997_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_ce0;
assign v8997_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_d0;
assign v8997_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_2_we0;
assign v8997_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_address0;
assign v8997_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_ce0;
assign v8997_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_d0;
assign v8997_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_3_we0;
assign v8997_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_address0;
assign v8997_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_ce0;
assign v8997_d0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_d0;
assign v8997_we0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v8997_we0;
assign v9000_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_0_address0;
assign v9000_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_0_ce0;
assign v9000_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_1_address0;
assign v9000_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_1_ce0;
assign v9000_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_2_address0;
assign v9000_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_2_ce0;
assign v9000_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_3_address0;
assign v9000_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_0_3_ce0;
assign v9000_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_0_address0;
assign v9000_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_0_ce0;
assign v9000_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_1_address0;
assign v9000_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_1_ce0;
assign v9000_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_2_address0;
assign v9000_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_2_ce0;
assign v9000_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_3_address0;
assign v9000_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_1_3_ce0;
assign v9000_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_0_address0;
assign v9000_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_0_ce0;
assign v9000_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_1_address0;
assign v9000_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_1_ce0;
assign v9000_2_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_2_address0;
assign v9000_2_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_2_ce0;
assign v9000_2_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_3_address0;
assign v9000_2_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_2_3_ce0;
assign v9000_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_0_address0;
assign v9000_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_0_ce0;
assign v9000_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_1_address0;
assign v9000_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_1_ce0;
assign v9000_3_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_2_address0;
assign v9000_3_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_2_ce0;
assign v9000_3_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_3_address0;
assign v9000_3_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI_fu_122_v9000_3_3_ce0;
assign zext_ln11269_fu_304_p1 = tmp_236_fu_290_p3;
assign zext_ln11588_fu_178_p1 = v8989_0;
always @ (posedge ap_clk) begin
    sub_ln11265_reg_390[2:0] <= 3'b000;
end
endmodule 