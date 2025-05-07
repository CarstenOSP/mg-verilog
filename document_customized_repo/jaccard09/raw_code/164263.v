module forward_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v6695_address0,v6695_ce0,v6695_we0,v6695_d0,v6695_1_address0,v6695_1_ce0,v6695_1_we0,v6695_1_d0,v6695_2_address0,v6695_2_ce0,v6695_2_we0,v6695_2_d0,v6695_3_address0,v6695_3_ce0,v6695_3_we0,v6695_3_d0,v6695_4_address0,v6695_4_ce0,v6695_4_we0,v6695_4_d0,v6695_5_address0,v6695_5_ce0,v6695_5_we0,v6695_5_d0,v6695_6_address0,v6695_6_ce0,v6695_6_we0,v6695_6_d0,v6695_7_address0,v6695_7_ce0,v6695_7_we0,v6695_7_d0,v6690_0,v15501_0_address0,v15501_0_ce0,v15501_0_q0,v15501_1_address0,v15501_1_ce0,v15501_1_q0,v15501_2_address0,v15501_2_ce0,v15501_2_q0,v15501_3_address0,v15501_3_ce0,v15501_3_q0,v15501_4_address0,v15501_4_ce0,v15501_4_q0,v15501_5_address0,v15501_5_ce0,v15501_5_q0,v15501_6_address0,v15501_6_ce0,v15501_6_q0,v15501_7_address0,v15501_7_ce0,v15501_7_q0); 
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [1:0] v6695_address0;
output   v6695_ce0;
output   v6695_we0;
output  [7:0] v6695_d0;
output  [1:0] v6695_1_address0;
output   v6695_1_ce0;
output   v6695_1_we0;
output  [7:0] v6695_1_d0;
output  [1:0] v6695_2_address0;
output   v6695_2_ce0;
output   v6695_2_we0;
output  [7:0] v6695_2_d0;
output  [1:0] v6695_3_address0;
output   v6695_3_ce0;
output   v6695_3_we0;
output  [7:0] v6695_3_d0;
output  [1:0] v6695_4_address0;
output   v6695_4_ce0;
output   v6695_4_we0;
output  [7:0] v6695_4_d0;
output  [1:0] v6695_5_address0;
output   v6695_5_ce0;
output   v6695_5_we0;
output  [7:0] v6695_5_d0;
output  [1:0] v6695_6_address0;
output   v6695_6_ce0;
output   v6695_6_we0;
output  [7:0] v6695_6_d0;
output  [1:0] v6695_7_address0;
output   v6695_7_ce0;
output   v6695_7_we0;
output  [7:0] v6695_7_d0;
input  [14:0] v6690_0;
output  [12:0] v15501_0_address0;
output   v15501_0_ce0;
input  [7:0] v15501_0_q0;
output  [12:0] v15501_1_address0;
output   v15501_1_ce0;
input  [7:0] v15501_1_q0;
output  [12:0] v15501_2_address0;
output   v15501_2_ce0;
input  [7:0] v15501_2_q0;
output  [12:0] v15501_3_address0;
output   v15501_3_ce0;
input  [7:0] v15501_3_q0;
output  [12:0] v15501_4_address0;
output   v15501_4_ce0;
input  [7:0] v15501_4_q0;
output  [12:0] v15501_5_address0;
output   v15501_5_ce0;
input  [7:0] v15501_5_q0;
output  [12:0] v15501_6_address0;
output   v15501_6_ce0;
input  [7:0] v15501_6_q0;
output  [12:0] v15501_7_address0;
output   v15501_7_ce0;
input  [7:0] v15501_7_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [4:0] tmp_reg_210;
reg   [11:0] trunc_ln_reg_216;
wire   [2:0] grp_fu_176_p2;
reg   [2:0] urem_ln7830_reg_221;
wire    ap_CS_fsm_state17;
wire   [2:0] grp_fu_170_p2;
reg   [2:0] urem_ln7829_reg_226;
wire    ap_CS_fsm_state19;
wire   [9:0] rem4_fu_181_p3;
reg   [9:0] rem4_reg_231;
wire    ap_CS_fsm_state20;
wire   [6:0] shl_ln_fu_189_p3;
reg   [6:0] shl_ln_reg_236;
wire   [2:0] trunc_ln7829_fu_197_p1;
reg   [2:0] trunc_ln7829_reg_241;
wire   [2:0] trunc_ln7605_fu_201_p1;
reg   [2:0] trunc_ln7605_reg_246;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_ready;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_4_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_5_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_6_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_7_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg;
wire    ap_CS_fsm_state21;
wire   [14:0] mul_ln7831_fu_138_p0;
wire   [30:0] zext_ln7831_fu_134_p1;
wire   [16:0] mul_ln7831_fu_138_p1;
wire   [30:0] mul_ln7831_fu_138_p2;
wire   [14:0] mul_ln7830_fu_154_p0;
wire   [16:0] mul_ln7830_fu_154_p1;
wire   [30:0] mul_ln7830_fu_154_p2;
wire   [3:0] grp_fu_170_p1;
wire   [3:0] grp_fu_176_p1;
wire    ap_CS_fsm_state2;
reg    grp_fu_170_ap_start;
wire    grp_fu_170_ap_done;
reg    grp_fu_170_ce;
reg    grp_fu_176_ap_start;
wire    grp_fu_176_ap_done;
reg   [20:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state21_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 21'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_ready),.rem4(rem4_reg_231),.shl_ln(shl_ln_reg_236),.idxprom1_i1631(trunc_ln7829_reg_241),.idxprom3_i1642(trunc_ln7605_reg_246),.v15501_0_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_0_address0),.v15501_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_0_ce0),.v15501_0_q0(v15501_0_q0),.v15501_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_1_address0),.v15501_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_1_ce0),.v15501_1_q0(v15501_1_q0),.v15501_2_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_2_address0),.v15501_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_2_ce0),.v15501_2_q0(v15501_2_q0),.v15501_3_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_3_address0),.v15501_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_3_ce0),.v15501_3_q0(v15501_3_q0),.v15501_4_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_4_address0),.v15501_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_4_ce0),.v15501_4_q0(v15501_4_q0),.v15501_5_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_5_address0),.v15501_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_5_ce0),.v15501_5_q0(v15501_5_q0),.v15501_6_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_6_address0),.v15501_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_6_ce0),.v15501_6_q0(v15501_6_q0),.v15501_7_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_7_address0),.v15501_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_7_ce0),.v15501_7_q0(v15501_7_q0),.v6695_7_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_address0),.v6695_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_ce0),.v6695_7_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_we0),.v6695_7_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_d0),.v6695_6_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_address0),.v6695_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_ce0),.v6695_6_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_we0),.v6695_6_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_d0),.v6695_5_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_address0),.v6695_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_ce0),.v6695_5_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_we0),.v6695_5_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_d0),.v6695_4_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_address0),.v6695_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_ce0),.v6695_4_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_we0),.v6695_4_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_d0),.v6695_3_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_address0),.v6695_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_ce0),.v6695_3_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_we0),.v6695_3_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_d0),.v6695_2_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_address0),.v6695_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_ce0),.v6695_2_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_we0),.v6695_2_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_d0),.v6695_1_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_address0),.v6695_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_ce0),.v6695_1_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_we0),.v6695_1_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_d0),.v6695_address0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_address0),.v6695_ce0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_ce0),.v6695_we0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_we0),.v6695_d0(grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_d0));
forward_mul_15ns_17ns_31_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 15 ),.din1_WIDTH( 17 ),.dout_WIDTH( 31 ))
mul_15ns_17ns_31_1_1_U8795(.din0(mul_ln7831_fu_138_p0),.din1(mul_ln7831_fu_138_p1),.dout(mul_ln7831_fu_138_p2));
forward_mul_15ns_17ns_31_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 15 ),.din1_WIDTH( 17 ),.dout_WIDTH( 31 ))
mul_15ns_17ns_31_1_1_U8796(.din0(mul_ln7830_fu_154_p0),.din1(mul_ln7830_fu_154_p1),.dout(mul_ln7830_fu_154_p2));
forward_urem_15ns_4ns_3_19_seq_1 #(.ID( 1 ),.NUM_STAGE( 19 ),.din0_WIDTH( 15 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_15ns_4ns_3_19_seq_1_U8797(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_170_ap_start),.done(grp_fu_170_ap_done),.din0(v6690_0),.din1(grp_fu_170_p1),.ce(grp_fu_170_ce),.dout(grp_fu_170_p2));
forward_urem_12ns_4ns_3_16_seq_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_12ns_4ns_3_16_seq_1_U8798(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_176_ap_start),.done(grp_fu_176_ap_done),.din0(trunc_ln_reg_216),.din1(grp_fu_176_p1),.ce(1'b1),.dout(grp_fu_176_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state21) & (grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        rem4_reg_231[9 : 5] <= rem4_fu_181_p3[9 : 5];
        shl_ln_reg_236[6 : 2] <= shl_ln_fu_189_p3[6 : 2];
        trunc_ln7605_reg_246 <= trunc_ln7605_fu_201_p1;
        trunc_ln7829_reg_241 <= trunc_ln7829_fu_197_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        tmp_reg_210 <= {{mul_ln7831_fu_138_p2[25:21]}};
        trunc_ln_reg_216 <= {{mul_ln7830_fu_154_p2[29:18]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        urem_ln7829_reg_226 <= grp_fu_170_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        urem_ln7830_reg_221 <= grp_fu_176_p2;
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state21) & (grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state21) & (grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_170_ap_start = 1'b1;
    end else begin
        grp_fu_170_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_170_ce = 1'b0;
    end else begin
        grp_fu_170_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_176_ap_start = 1'b1;
    end else begin
        grp_fu_176_ap_start = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state21) & (grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg;
assign grp_fu_170_p1 = 15'd7;
assign grp_fu_176_p1 = 12'd7;
assign mul_ln7830_fu_154_p0 = zext_ln7831_fu_134_p1;
assign mul_ln7830_fu_154_p1 = 31'd37450;
assign mul_ln7831_fu_138_p0 = zext_ln7831_fu_134_p1;
assign mul_ln7831_fu_138_p1 = 31'd42800;
assign rem4_fu_181_p3 = {{tmp_reg_210}, {5'd0}};
assign shl_ln_fu_189_p3 = {{tmp_reg_210}, {2'd0}};
assign trunc_ln7605_fu_201_p1 = urem_ln7829_reg_226[2:0];
assign trunc_ln7829_fu_197_p1 = urem_ln7830_reg_221[2:0];
assign v15501_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_0_address0;
assign v15501_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_0_ce0;
assign v15501_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_1_address0;
assign v15501_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_1_ce0;
assign v15501_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_2_address0;
assign v15501_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_2_ce0;
assign v15501_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_3_address0;
assign v15501_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_3_ce0;
assign v15501_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_4_address0;
assign v15501_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_4_ce0;
assign v15501_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_5_address0;
assign v15501_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_5_ce0;
assign v15501_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_6_address0;
assign v15501_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_6_ce0;
assign v15501_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_7_address0;
assign v15501_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v15501_7_ce0;
assign v6695_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_address0;
assign v6695_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_ce0;
assign v6695_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_d0;
assign v6695_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_1_we0;
assign v6695_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_address0;
assign v6695_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_ce0;
assign v6695_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_d0;
assign v6695_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_2_we0;
assign v6695_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_address0;
assign v6695_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_ce0;
assign v6695_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_d0;
assign v6695_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_3_we0;
assign v6695_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_address0;
assign v6695_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_ce0;
assign v6695_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_d0;
assign v6695_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_4_we0;
assign v6695_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_address0;
assign v6695_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_ce0;
assign v6695_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_d0;
assign v6695_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_5_we0;
assign v6695_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_address0;
assign v6695_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_ce0;
assign v6695_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_d0;
assign v6695_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_6_we0;
assign v6695_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_address0;
assign v6695_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_ce0;
assign v6695_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_d0;
assign v6695_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_7_we0;
assign v6695_address0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_address0;
assign v6695_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_ce0;
assign v6695_d0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_d0;
assign v6695_we0 = grp_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO_fu_94_v6695_we0;
assign zext_ln7831_fu_134_p1 = v6690_0;
always @ (posedge ap_clk) begin
    rem4_reg_231[4:0] <= 5'b00000;
    shl_ln_reg_236[1:0] <= 2'b00;
end
endmodule 