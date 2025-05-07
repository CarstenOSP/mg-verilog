module forward_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v2740_address0,v2740_ce0,v2740_we0,v2740_d0,v2740_1_address0,v2740_1_ce0,v2740_1_we0,v2740_1_d0,v2740_2_address0,v2740_2_ce0,v2740_2_we0,v2740_2_d0,v2740_3_address0,v2740_3_ce0,v2740_3_we0,v2740_3_d0,v2731_0,v9256_0_address0,v9256_0_ce0,v9256_0_q0,v9256_1_address0,v9256_1_ce0,v9256_1_q0,v9256_2_address0,v9256_2_ce0,v9256_2_q0,v9256_3_address0,v9256_3_ce0,v9256_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] v2740_address0;
output   v2740_ce0;
output   v2740_we0;
output  [7:0] v2740_d0;
output  [2:0] v2740_1_address0;
output   v2740_1_ce0;
output   v2740_1_we0;
output  [7:0] v2740_1_d0;
output  [2:0] v2740_2_address0;
output   v2740_2_ce0;
output   v2740_2_we0;
output  [7:0] v2740_2_d0;
output  [2:0] v2740_3_address0;
output   v2740_3_ce0;
output   v2740_3_we0;
output  [7:0] v2740_3_d0;
input  [15:0] v2731_0;
output  [13:0] v9256_0_address0;
output   v9256_0_ce0;
input  [7:0] v9256_0_q0;
output  [13:0] v9256_1_address0;
output   v9256_1_ce0;
input  [7:0] v9256_1_q0;
output  [13:0] v9256_2_address0;
output   v9256_2_ce0;
input  [7:0] v9256_2_q0;
output  [13:0] v9256_3_address0;
output   v9256_3_ce0;
input  [7:0] v9256_3_q0;
output  [15:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [2:0] tmp_s_reg_293;
wire    ap_CS_fsm_state3;
reg   [12:0] trunc_ln_reg_299;
reg   [4:0] trunc_ln20_reg_304;
reg   [6:0] trunc_ln21_reg_309;
wire   [4:0] grp_fu_202_p2;
reg   [4:0] urem_ln3874_reg_314;
wire    ap_CS_fsm_state14;
wire   [4:0] sub_i132_fu_234_p2;
reg   [4:0] sub_i132_reg_319;
wire    ap_CS_fsm_state20;
wire   [4:0] sub7_i_fu_265_p2;
reg   [4:0] sub7_i_reg_324;
wire   [7:0] mul_i_fu_271_p3;
reg   [7:0] mul_i_reg_329;
wire    ap_CS_fsm_state21;
wire   [5:0] shl_ln_fu_279_p3;
reg   [5:0] shl_ln_reg_334;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_3_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start_reg;
wire    ap_CS_fsm_state22;
wire   [3:0] grp_fu_124_p1;
wire   [15:0] mul_ln3876_fu_133_p0;
wire   [32:0] zext_ln3876_fu_130_p1;
wire   [17:0] mul_ln3876_fu_133_p1;
wire   [32:0] mul_ln3876_fu_133_p2;
wire   [15:0] mul_ln3872_fu_149_p0;
wire   [17:0] mul_ln3872_fu_149_p1;
wire   [32:0] mul_ln3872_fu_149_p2;
wire   [15:0] mul_ln3875_fu_165_p0;
wire   [17:0] mul_ln3875_fu_165_p1;
wire   [32:0] mul_ln3875_fu_165_p2;
wire   [15:0] mul_ln3874_fu_181_p0;
wire   [17:0] mul_ln3874_fu_181_p1;
wire   [32:0] mul_ln3874_fu_181_p2;
wire   [3:0] grp_fu_197_p1;
wire    ap_CS_fsm_state4;
wire   [2:0] grp_fu_202_p1;
wire   [2:0] grp_fu_207_p1;
wire    ap_CS_fsm_state12;
wire   [2:0] grp_fu_197_p2;
wire   [2:0] empty_fu_212_p1;
wire   [3:0] mul1_i_fu_216_p3;
wire   [4:0] mul1_i_cast_fu_224_p1;
wire   [4:0] tmp_fu_228_p2;
wire   [4:0] grp_fu_207_p2;
wire   [2:0] grp_fu_124_p2;
wire   [2:0] empty_346_fu_240_p1;
wire   [3:0] mul5_i_fu_244_p3;
wire   [4:0] mul5_i134_cast_fu_252_p1;
wire   [4:0] tmp1_fu_259_p2;
wire   [4:0] trunc_ln3874_fu_256_p1;
reg    grp_fu_124_ap_start;
wire    grp_fu_124_ap_done;
reg    grp_fu_124_ce;
reg    grp_fu_197_ap_start;
wire    grp_fu_197_ap_done;
reg    grp_fu_202_ap_start;
wire    grp_fu_202_ap_done;
reg    grp_fu_207_ap_start;
wire    grp_fu_207_ap_done;
reg   [15:0] ap_return_preg;
reg   [21:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state22_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 22'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start_reg = 1'b0;
#0 ap_return_preg = 16'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_ready),.mul_i(mul_i_reg_329),.shl_ln(shl_ln_reg_334),.idxprom3_i133(sub_i132_reg_319),.idxprom8_i136(sub7_i_reg_324),.v9256_0_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_0_address0),.v9256_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_0_ce0),.v9256_0_q0(v9256_0_q0),.v9256_1_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_1_address0),.v9256_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_1_ce0),.v9256_1_q0(v9256_1_q0),.v9256_2_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_2_address0),.v9256_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_2_ce0),.v9256_2_q0(v9256_2_q0),.v9256_3_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_3_address0),.v9256_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_3_ce0),.v9256_3_q0(v9256_3_q0),.v2740_3_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_address0),.v2740_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_ce0),.v2740_3_we0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_we0),.v2740_3_d0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_d0),.v2740_2_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_address0),.v2740_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_ce0),.v2740_2_we0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_we0),.v2740_2_d0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_d0),.v2740_1_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_address0),.v2740_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_ce0),.v2740_1_we0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_we0),.v2740_1_d0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_d0),.v2740_address0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_address0),.v2740_ce0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_ce0),.v2740_we0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_we0),.v2740_d0(grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_d0));
forward_urem_16ns_4ns_3_20_seq_1 #(.ID( 1 ),.NUM_STAGE( 20 ),.din0_WIDTH( 16 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_16ns_4ns_3_20_seq_1_U9387(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_124_ap_start),.done(grp_fu_124_ap_done),.din0(v2731_0),.din1(grp_fu_124_p1),.ce(grp_fu_124_ce),.dout(grp_fu_124_p2));
forward_mul_16ns_18ns_33_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 18 ),.dout_WIDTH( 33 ))
mul_16ns_18ns_33_1_1_U9388(.din0(mul_ln3876_fu_133_p0),.din1(mul_ln3876_fu_133_p1),.dout(mul_ln3876_fu_133_p2));
forward_mul_16ns_18ns_33_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 18 ),.dout_WIDTH( 33 ))
mul_16ns_18ns_33_1_1_U9389(.din0(mul_ln3872_fu_149_p0),.din1(mul_ln3872_fu_149_p1),.dout(mul_ln3872_fu_149_p2));
forward_mul_16ns_18ns_33_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 18 ),.dout_WIDTH( 33 ))
mul_16ns_18ns_33_1_1_U9390(.din0(mul_ln3875_fu_165_p0),.din1(mul_ln3875_fu_165_p1),.dout(mul_ln3875_fu_165_p2));
forward_mul_16ns_18ns_33_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 18 ),.dout_WIDTH( 33 ))
mul_16ns_18ns_33_1_1_U9391(.din0(mul_ln3874_fu_181_p0),.din1(mul_ln3874_fu_181_p1),.dout(mul_ln3874_fu_181_p2));
forward_urem_13ns_4ns_3_17_seq_1 #(.ID( 1 ),.NUM_STAGE( 17 ),.din0_WIDTH( 13 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_13ns_4ns_3_17_seq_1_U9392(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_197_ap_start),.done(grp_fu_197_ap_done),.din0(trunc_ln_reg_299),.din1(grp_fu_197_p1),.ce(1'b1),.dout(grp_fu_197_p2));
forward_urem_7ns_3ns_5_11_seq_1 #(.ID( 1 ),.NUM_STAGE( 11 ),.din0_WIDTH( 7 ),.din1_WIDTH( 3 ),.dout_WIDTH( 5 ))
urem_7ns_3ns_5_11_seq_1_U9393(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_202_ap_start),.done(grp_fu_202_ap_done),.din0(trunc_ln21_reg_309),.din1(grp_fu_202_p1),.ce(1'b1),.dout(grp_fu_202_p2));
forward_urem_5ns_3ns_5_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 5 ))
urem_5ns_3ns_5_9_seq_1_U9394(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_207_ap_start),.done(grp_fu_207_ap_done),.din0(trunc_ln20_reg_304),.din1(grp_fu_207_p1),.ce(1'b1),.dout(grp_fu_207_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state22) & (grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state22) & (grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done == 1'b1))) begin
            ap_return_preg <= v2731_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        mul_i_reg_329[7 : 5] <= mul_i_fu_271_p3[7 : 5];
        shl_ln_reg_334[5 : 3] <= shl_ln_fu_279_p3[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sub7_i_reg_324 <= sub7_i_fu_265_p2;
        sub_i132_reg_319 <= sub_i132_fu_234_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_293 <= {{mul_ln3876_fu_133_p2[31:29]}};
        trunc_ln20_reg_304 <= {{mul_ln3875_fu_165_p2[32:28]}};
        trunc_ln21_reg_309 <= {{mul_ln3874_fu_181_p2[32:26]}};
        trunc_ln_reg_299 <= {{mul_ln3872_fu_149_p2[31:19]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        urem_ln3874_reg_314 <= grp_fu_202_p2;
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state22) & (grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state22) & (grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) & (grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done == 1'b1))) begin
        ap_return = v2731_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_124_ap_start = 1'b1;
    end else begin
        grp_fu_124_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_124_ce = 1'b0;
    end else begin
        grp_fu_124_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_197_ap_start = 1'b1;
    end else begin
        grp_fu_197_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_202_ap_start = 1'b1;
    end else begin
        grp_fu_202_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_207_ap_start = 1'b1;
    end else begin
        grp_fu_207_ap_start = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state22) & (grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_346_fu_240_p1 = grp_fu_124_p2[2:0];
assign empty_fu_212_p1 = grp_fu_197_p2[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_ap_start_reg;
assign grp_fu_124_p1 = 16'd7;
assign grp_fu_197_p1 = 13'd7;
assign grp_fu_202_p1 = 7'd3;
assign grp_fu_207_p1 = 5'd3;
assign mul1_i_cast_fu_224_p1 = mul1_i_fu_216_p3;
assign mul1_i_fu_216_p3 = {{empty_fu_212_p1}, {1'd0}};
assign mul5_i134_cast_fu_252_p1 = mul5_i_fu_244_p3;
assign mul5_i_fu_244_p3 = {{empty_346_fu_240_p1}, {1'd0}};
assign mul_i_fu_271_p3 = {{tmp_s_reg_293}, {5'd0}};
assign mul_ln3872_fu_149_p0 = zext_ln3876_fu_130_p1;
assign mul_ln3872_fu_149_p1 = 33'd74899;
assign mul_ln3874_fu_181_p0 = zext_ln3876_fu_130_p1;
assign mul_ln3874_fu_181_p1 = 33'd85599;
assign mul_ln3875_fu_165_p0 = zext_ln3876_fu_130_p1;
assign mul_ln3875_fu_165_p1 = 33'd114131;
assign mul_ln3876_fu_133_p0 = zext_ln3876_fu_130_p1;
assign mul_ln3876_fu_133_p1 = 33'd76088;
assign shl_ln_fu_279_p3 = {{tmp_s_reg_293}, {3'd0}};
assign sub7_i_fu_265_p2 = (tmp1_fu_259_p2 + trunc_ln3874_fu_256_p1);
assign sub_i132_fu_234_p2 = (tmp_fu_228_p2 + grp_fu_207_p2);
assign tmp1_fu_259_p2 = ($signed(mul5_i134_cast_fu_252_p1) + $signed(5'd31));
assign tmp_fu_228_p2 = ($signed(mul1_i_cast_fu_224_p1) + $signed(5'd31));
assign trunc_ln3874_fu_256_p1 = urem_ln3874_reg_314[4:0];
assign v2740_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_address0;
assign v2740_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_ce0;
assign v2740_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_d0;
assign v2740_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_1_we0;
assign v2740_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_address0;
assign v2740_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_ce0;
assign v2740_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_d0;
assign v2740_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_2_we0;
assign v2740_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_address0;
assign v2740_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_ce0;
assign v2740_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_d0;
assign v2740_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_3_we0;
assign v2740_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_address0;
assign v2740_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_ce0;
assign v2740_d0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_d0;
assign v2740_we0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v2740_we0;
assign v9256_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_0_address0;
assign v9256_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_0_ce0;
assign v9256_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_1_address0;
assign v9256_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_1_ce0;
assign v9256_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_2_address0;
assign v9256_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_2_ce0;
assign v9256_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_3_address0;
assign v9256_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO_fu_100_v9256_3_ce0;
assign zext_ln3876_fu_130_p1 = v2731_0;
always @ (posedge ap_clk) begin
    mul_i_reg_329[4:0] <= 5'b00000;
    shl_ln_reg_334[2:0] <= 3'b000;
end
endmodule 