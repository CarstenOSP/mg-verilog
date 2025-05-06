
module forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v16140_address0,v16140_ce0,v16140_we0,v16140_d0,v16140_1_address0,v16140_1_ce0,v16140_1_we0,v16140_1_d0,v16140_2_address0,v16140_2_ce0,v16140_2_we0,v16140_2_d0,v16140_3_address0,v16140_3_ce0,v16140_3_we0,v16140_3_d0,v16140_4_address0,v16140_4_ce0,v16140_4_we0,v16140_4_d0,v16140_5_address0,v16140_5_ce0,v16140_5_we0,v16140_5_d0,v16140_6_address0,v16140_6_ce0,v16140_6_we0,v16140_6_d0,v16140_7_address0,v16140_7_ce0,v16140_7_we0,v16140_7_d0,v16133_0,v16143_0_0_address0,v16143_0_0_ce0,v16143_0_0_q0,v16143_0_1_address0,v16143_0_1_ce0,v16143_0_1_q0,v16143_0_2_address0,v16143_0_2_ce0,v16143_0_2_q0,v16143_0_3_address0,v16143_0_3_ce0,v16143_0_3_q0,v16143_1_0_address0,v16143_1_0_ce0,v16143_1_0_q0,v16143_1_1_address0,v16143_1_1_ce0,v16143_1_1_q0,v16143_1_2_address0,v16143_1_2_ce0,v16143_1_2_q0,v16143_1_3_address0,v16143_1_3_ce0,v16143_1_3_q0);  
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] v16140_address0;
output   v16140_ce0;
output   v16140_we0;
output  [7:0] v16140_d0;
output  [6:0] v16140_1_address0;
output   v16140_1_ce0;
output   v16140_1_we0;
output  [7:0] v16140_1_d0;
output  [6:0] v16140_2_address0;
output   v16140_2_ce0;
output   v16140_2_we0;
output  [7:0] v16140_2_d0;
output  [6:0] v16140_3_address0;
output   v16140_3_ce0;
output   v16140_3_we0;
output  [7:0] v16140_3_d0;
output  [6:0] v16140_4_address0;
output   v16140_4_ce0;
output   v16140_4_we0;
output  [7:0] v16140_4_d0;
output  [6:0] v16140_5_address0;
output   v16140_5_ce0;
output   v16140_5_we0;
output  [7:0] v16140_5_d0;
output  [6:0] v16140_6_address0;
output   v16140_6_ce0;
output   v16140_6_we0;
output  [7:0] v16140_6_d0;
output  [6:0] v16140_7_address0;
output   v16140_7_ce0;
output   v16140_7_we0;
output  [7:0] v16140_7_d0;
input  [11:0] v16133_0;
output  [14:0] v16143_0_0_address0;
output   v16143_0_0_ce0;
input  [7:0] v16143_0_0_q0;
output  [14:0] v16143_0_1_address0;
output   v16143_0_1_ce0;
input  [7:0] v16143_0_1_q0;
output  [14:0] v16143_0_2_address0;
output   v16143_0_2_ce0;
input  [7:0] v16143_0_2_q0;
output  [14:0] v16143_0_3_address0;
output   v16143_0_3_ce0;
input  [7:0] v16143_0_3_q0;
output  [14:0] v16143_1_0_address0;
output   v16143_1_0_ce0;
input  [7:0] v16143_1_0_q0;
output  [14:0] v16143_1_1_address0;
output   v16143_1_1_ce0;
input  [7:0] v16143_1_1_q0;
output  [14:0] v16143_1_2_address0;
output   v16143_1_2_ce0;
input  [7:0] v16143_1_2_q0;
output  [14:0] v16143_1_3_address0;
output   v16143_1_3_ce0;
input  [7:0] v16143_1_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] trunc_ln_reg_310;
wire    ap_CS_fsm_state3;
reg   [8:0] trunc_ln2_reg_315;
reg   [1:0] tmp_reg_325;
reg   [0:0] tmp_183_reg_330;
wire   [1:0] grp_fu_214_p2;
reg   [1:0] urem_ln20939_reg_335;
wire    ap_CS_fsm_state11;
wire   [7:0] tmp_2_fu_258_p4;
reg   [7:0] tmp_2_reg_340;
wire    ap_CS_fsm_state16;
wire   [1:0] trunc_ln20936_fu_269_p1;
reg   [1:0] trunc_ln20936_reg_345;
wire   [2:0] trunc_ln20941_fu_274_p1;
reg   [2:0] trunc_ln20941_reg_351;
wire   [7:0] sub_ln20940_fu_297_p2;
reg   [7:0] sub_ln20940_reg_356;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_ready;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_d0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_2_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_3_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_2_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start_reg;
wire    ap_CS_fsm_state17;
wire   [3:0] grp_fu_157_p1;
wire   [11:0] mul_ln20940_fu_166_p0;
wire   [24:0] zext_ln20940_fu_163_p1;
wire   [13:0] mul_ln20940_fu_166_p1;
wire   [24:0] mul_ln20940_fu_166_p2;
wire   [11:0] mul_ln20937_fu_182_p0;
wire   [13:0] mul_ln20937_fu_182_p1;
wire   [24:0] mul_ln20937_fu_182_p2;
wire   [11:0] mul_ln20939_fu_198_p0;
wire   [13:0] mul_ln20939_fu_198_p1;
wire   [24:0] mul_ln20939_fu_198_p2;
wire   [4:0] grp_fu_214_p0;
wire   [2:0] grp_fu_214_p1;
wire   [11:0] mul_ln20941_fu_220_p0;
wire   [13:0] mul_ln20941_fu_220_p1;
wire   [24:0] mul_ln20941_fu_220_p2;
wire   [3:0] grp_fu_244_p1;
wire    ap_CS_fsm_state4;
wire   [2:0] grp_fu_249_p1;
wire    ap_CS_fsm_state9;
wire   [2:0] grp_fu_244_p2;
wire   [2:0] empty_fu_254_p1;
wire   [3:0] grp_fu_249_p2;
wire   [2:0] grp_fu_157_p2;
wire   [5:0] tmp_184_fu_279_p3;
wire   [7:0] tmp_185_fu_286_p3;
wire   [7:0] zext_ln20832_fu_293_p1;
reg    grp_fu_157_ap_start;
wire    grp_fu_157_ap_done;
reg    grp_fu_157_ce;
reg    grp_fu_214_ap_start;
wire    grp_fu_214_ap_done;
reg    grp_fu_244_ap_start;
wire    grp_fu_244_ap_done;
reg    grp_fu_249_ap_start;
wire    grp_fu_249_ap_done;
reg   [16:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 17'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_ready),.zext_ln20828(tmp_2_reg_340),.mul_ln20832(sub_ln20940_reg_356),.v16140_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_address0),.v16140_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_ce0),.v16140_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_we0),.v16140_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_d0),.v16140_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_address0),.v16140_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_ce0),.v16140_1_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_we0),.v16140_1_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_d0),.v16140_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_address0),.v16140_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_ce0),.v16140_2_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_we0),.v16140_2_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_d0),.v16140_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_address0),.v16140_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_ce0),.v16140_3_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_we0),.v16140_3_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_d0),.v16140_4_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_address0),.v16140_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_ce0),.v16140_4_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_we0),.v16140_4_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_d0),.v16140_5_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_address0),.v16140_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_ce0),.v16140_5_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_we0),.v16140_5_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_d0),.v16140_6_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_address0),.v16140_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_ce0),.v16140_6_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_we0),.v16140_6_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_d0),.v16140_7_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_address0),.v16140_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_ce0),.v16140_7_we0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_we0),.v16140_7_d0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_d0),.urem_ln20939(trunc_ln20936_reg_345),.urem_ln20936(trunc_ln20941_reg_351),.v16143_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_0_address0),.v16143_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_0_ce0),.v16143_0_0_q0(v16143_0_0_q0),.v16143_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_1_address0),.v16143_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_1_ce0),.v16143_0_1_q0(v16143_0_1_q0),.v16143_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_2_address0),.v16143_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_2_ce0),.v16143_0_2_q0(v16143_0_2_q0),.v16143_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_3_address0),.v16143_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_3_ce0),.v16143_0_3_q0(v16143_0_3_q0),.v16143_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_0_address0),.v16143_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_0_ce0),.v16143_1_0_q0(v16143_1_0_q0),.v16143_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_1_address0),.v16143_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_1_ce0),.v16143_1_1_q0(v16143_1_1_q0),.v16143_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_2_address0),.v16143_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_2_ce0),.v16143_1_2_q0(v16143_1_2_q0),.v16143_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_3_address0),.v16143_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_3_ce0),.v16143_1_3_q0(v16143_1_3_q0),.empty(trunc_ln20936_reg_345));
forward_urem_12ns_4ns_3_16_seq_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_12ns_4ns_3_16_seq_1_U110(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_157_ap_start),.done(grp_fu_157_ap_done),.din0(v16133_0),.din1(grp_fu_157_p1),.ce(grp_fu_157_ce),.dout(grp_fu_157_p2));
forward_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U111(.din0(mul_ln20940_fu_166_p0),.din1(mul_ln20940_fu_166_p1),.dout(mul_ln20940_fu_166_p2));
forward_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U112(.din0(mul_ln20937_fu_182_p0),.din1(mul_ln20937_fu_182_p1),.dout(mul_ln20937_fu_182_p2));
forward_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U113(.din0(mul_ln20939_fu_198_p0),.din1(mul_ln20939_fu_198_p1),.dout(mul_ln20939_fu_198_p2));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U114(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_214_ap_start),.done(grp_fu_214_ap_done),.din0(grp_fu_214_p0),.din1(grp_fu_214_p1),.ce(1'b1),.dout(grp_fu_214_p2));
forward_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U115(.din0(mul_ln20941_fu_220_p0),.din1(mul_ln20941_fu_220_p1),.dout(mul_ln20941_fu_220_p2));
forward_urem_9ns_4ns_3_13_seq_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_seq_1_U116(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_244_ap_start),.done(grp_fu_244_ap_done),.din0(trunc_ln2_reg_315),.din1(grp_fu_244_p1),.ce(1'b1),.dout(grp_fu_244_p2));
forward_urem_4ns_3ns_4_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 4 ))
urem_4ns_3ns_4_8_seq_1_U117(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_249_ap_start),.done(grp_fu_249_ap_done),.din0(trunc_ln_reg_310),.din1(grp_fu_249_p1),.ce(1'b1),.dout(grp_fu_249_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        sub_ln20940_reg_356[7 : 4] <= sub_ln20940_fu_297_p2[7 : 4];
        tmp_2_reg_340[3 : 0] <= tmp_2_fu_258_p4[3 : 0];
tmp_2_reg_340[7 : 5] <= tmp_2_fu_258_p4[7 : 5];
        trunc_ln20936_reg_345 <= trunc_ln20936_fu_269_p1;
        trunc_ln20941_reg_351 <= trunc_ln20941_fu_274_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_183_reg_330 <= mul_ln20941_fu_220_p2[32'd22];
        tmp_reg_325 <= {{mul_ln20941_fu_220_p2[23:22]}};
        trunc_ln2_reg_315 <= {{mul_ln20937_fu_182_p2[23:15]}};
        trunc_ln_reg_310 <= {{mul_ln20940_fu_166_p2[24:21]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        urem_ln20939_reg_335 <= grp_fu_214_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_157_ap_start = 1'b1;
    end else begin
        grp_fu_157_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_157_ce = 1'b0;
    end else begin
        grp_fu_157_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_214_ap_start = 1'b1;
    end else begin
        grp_fu_214_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_244_ap_start = 1'b1;
    end else begin
        grp_fu_244_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_249_ap_start = 1'b1;
    end else begin
        grp_fu_249_ap_start = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_254_p1 = grp_fu_244_p2[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_ap_start_reg;
assign grp_fu_157_p1 = 12'd7;
assign grp_fu_214_p0 = {{mul_ln20939_fu_198_p2[23:19]}};
assign grp_fu_214_p1 = 5'd3;
assign grp_fu_244_p1 = 9'd7;
assign grp_fu_249_p1 = 4'd3;
assign mul_ln20937_fu_182_p0 = zext_ln20940_fu_163_p1;
assign mul_ln20937_fu_182_p1 = 25'd4682;
assign mul_ln20939_fu_198_p0 = zext_ln20940_fu_163_p1;
assign mul_ln20939_fu_198_p1 = 25'd5350;
assign mul_ln20940_fu_166_p0 = zext_ln20940_fu_163_p1;
assign mul_ln20940_fu_166_p1 = 25'd7134;
assign mul_ln20941_fu_220_p0 = zext_ln20940_fu_163_p1;
assign mul_ln20941_fu_220_p1 = 25'd4756;
assign sub_ln20940_fu_297_p2 = (tmp_185_fu_286_p3 - zext_ln20832_fu_293_p1);
assign tmp_184_fu_279_p3 = {{tmp_reg_325}, {4'd0}};
assign tmp_185_fu_286_p3 = {{tmp_183_reg_330}, {7'd0}};
assign tmp_2_fu_258_p4 = {{{empty_fu_254_p1}, {1'd0}}, {grp_fu_249_p2}};
assign trunc_ln20936_fu_269_p1 = urem_ln20939_reg_335[1:0];
assign trunc_ln20941_fu_274_p1 = grp_fu_157_p2[2:0];
assign v16140_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_address0;
assign v16140_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_ce0;
assign v16140_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_d0;
assign v16140_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_1_we0;
assign v16140_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_address0;
assign v16140_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_ce0;
assign v16140_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_d0;
assign v16140_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_2_we0;
assign v16140_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_address0;
assign v16140_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_ce0;
assign v16140_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_d0;
assign v16140_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_3_we0;
assign v16140_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_address0;
assign v16140_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_ce0;
assign v16140_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_d0;
assign v16140_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_4_we0;
assign v16140_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_address0;
assign v16140_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_ce0;
assign v16140_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_d0;
assign v16140_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_5_we0;
assign v16140_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_address0;
assign v16140_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_ce0;
assign v16140_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_d0;
assign v16140_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_6_we0;
assign v16140_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_address0;
assign v16140_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_ce0;
assign v16140_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_d0;
assign v16140_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_7_we0;
assign v16140_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_address0;
assign v16140_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_ce0;
assign v16140_d0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_d0;
assign v16140_we0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16140_we0;
assign v16143_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_0_address0;
assign v16143_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_0_ce0;
assign v16143_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_1_address0;
assign v16143_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_1_ce0;
assign v16143_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_2_address0;
assign v16143_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_2_ce0;
assign v16143_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_3_address0;
assign v16143_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_0_3_ce0;
assign v16143_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_0_address0;
assign v16143_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_0_ce0;
assign v16143_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_1_address0;
assign v16143_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_1_ce0;
assign v16143_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_2_address0;
assign v16143_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_2_ce0;
assign v16143_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_3_address0;
assign v16143_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI_fu_116_v16143_1_3_ce0;
assign zext_ln20832_fu_293_p1 = tmp_184_fu_279_p3;
assign zext_ln20940_fu_163_p1 = v16133_0;
always @ (posedge ap_clk) begin
    tmp_2_reg_340[4] <= 1'b0;
    sub_ln20940_reg_356[3:0] <= 4'b0000;
end
endmodule 
