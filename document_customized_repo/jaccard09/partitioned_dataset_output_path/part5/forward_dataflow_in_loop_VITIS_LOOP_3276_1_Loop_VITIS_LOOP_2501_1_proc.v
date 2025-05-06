
module forward_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9263_7_address0,v9263_7_ce0,v9263_7_we0,v9263_7_d0,v9263_6_address0,v9263_6_ce0,v9263_6_we0,v9263_6_d0,v9263_5_address0,v9263_5_ce0,v9263_5_we0,v9263_5_d0,v9263_4_address0,v9263_4_ce0,v9263_4_we0,v9263_4_d0,v9263_3_address0,v9263_3_ce0,v9263_3_we0,v9263_3_d0,v9263_2_address0,v9263_2_ce0,v9263_2_we0,v9263_2_d0,v9263_1_address0,v9263_1_ce0,v9263_1_we0,v9263_1_d0,v9263_0_address0,v9263_0_ce0,v9263_0_we0,v9263_0_d0,v2316_7_address0,v2316_7_ce0,v2316_7_q0,p_read,v2316_6_address0,v2316_6_ce0,v2316_6_q0,v2316_5_address0,v2316_5_ce0,v2316_5_q0,v2316_4_address0,v2316_4_ce0,v2316_4_q0,v2316_3_address0,v2316_3_ce0,v2316_3_q0,v2316_2_address0,v2316_2_ce0,v2316_2_q0,v2316_1_address0,v2316_1_ce0,v2316_1_q0,v2316_address0,v2316_ce0,v2316_q0);  
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
output  [11:0] v9263_7_address0;
output   v9263_7_ce0;
output   v9263_7_we0;
output  [7:0] v9263_7_d0;
output  [11:0] v9263_6_address0;
output   v9263_6_ce0;
output   v9263_6_we0;
output  [7:0] v9263_6_d0;
output  [11:0] v9263_5_address0;
output   v9263_5_ce0;
output   v9263_5_we0;
output  [7:0] v9263_5_d0;
output  [11:0] v9263_4_address0;
output   v9263_4_ce0;
output   v9263_4_we0;
output  [7:0] v9263_4_d0;
output  [11:0] v9263_3_address0;
output   v9263_3_ce0;
output   v9263_3_we0;
output  [7:0] v9263_3_d0;
output  [11:0] v9263_2_address0;
output   v9263_2_ce0;
output   v9263_2_we0;
output  [7:0] v9263_2_d0;
output  [11:0] v9263_1_address0;
output   v9263_1_ce0;
output   v9263_1_we0;
output  [7:0] v9263_1_d0;
output  [11:0] v9263_0_address0;
output   v9263_0_ce0;
output   v9263_0_we0;
output  [7:0] v9263_0_d0;
output  [1:0] v2316_7_address0;
output   v2316_7_ce0;
input  [7:0] v2316_7_q0;
input  [16:0] p_read;
output  [1:0] v2316_6_address0;
output   v2316_6_ce0;
input  [7:0] v2316_6_q0;
output  [1:0] v2316_5_address0;
output   v2316_5_ce0;
input  [7:0] v2316_5_q0;
output  [1:0] v2316_4_address0;
output   v2316_4_ce0;
input  [7:0] v2316_4_q0;
output  [1:0] v2316_3_address0;
output   v2316_3_ce0;
input  [7:0] v2316_3_q0;
output  [1:0] v2316_2_address0;
output   v2316_2_ce0;
input  [7:0] v2316_2_q0;
output  [1:0] v2316_1_address0;
output   v2316_1_ce0;
input  [7:0] v2316_1_q0;
output  [1:0] v2316_address0;
output   v2316_ce0;
input  [7:0] v2316_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] tmp_reg_210;
wire    ap_CS_fsm_state2;
reg   [13:0] trunc_ln_reg_216;
wire   [2:0] grp_fu_175_p2;
reg   [2:0] urem_ln3279_reg_221;
wire    ap_CS_fsm_state20;
wire   [2:0] grp_fu_134_p2;
reg   [2:0] urem_ln3278_reg_226;
wire    ap_CS_fsm_state21;
wire   [8:0] rem4_fu_180_p3;
reg   [8:0] rem4_reg_231;
wire    ap_CS_fsm_state22;
wire   [5:0] shl_ln_fu_188_p3;
reg   [5:0] shl_ln_reg_236;
wire   [2:0] empty_fu_196_p1;
reg   [2:0] empty_reg_241;
wire   [2:0] trunc_ln2501_fu_200_p1;
reg   [2:0] trunc_ln2501_reg_246;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_7_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_6_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_5_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_4_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_3_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_2_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_1_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg;
wire    ap_CS_fsm_state23;
wire   [3:0] grp_fu_134_p1;
wire   [16:0] mul_ln3280_fu_143_p0;
wire   [34:0] zext_ln3280_fu_140_p1;
wire   [18:0] mul_ln3280_fu_143_p1;
wire   [34:0] mul_ln3280_fu_143_p2;
wire   [16:0] mul_ln3279_fu_159_p0;
wire   [18:0] mul_ln3279_fu_159_p1;
wire   [34:0] mul_ln3279_fu_159_p2;
wire   [3:0] grp_fu_175_p1;
wire    ap_CS_fsm_state3;
reg    grp_fu_134_ap_start;
wire    grp_fu_134_ap_done;
reg    grp_fu_134_ce;
reg    grp_fu_175_ap_start;
wire    grp_fu_175_ap_done;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_ready),.v9263_0_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_address0),.v9263_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_ce0),.v9263_0_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_we0),.v9263_0_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_d0),.v9263_1_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_address0),.v9263_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_ce0),.v9263_1_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_we0),.v9263_1_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_d0),.v9263_2_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_address0),.v9263_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_ce0),.v9263_2_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_we0),.v9263_2_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_d0),.v9263_3_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_address0),.v9263_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_ce0),.v9263_3_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_we0),.v9263_3_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_d0),.v9263_4_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_address0),.v9263_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_ce0),.v9263_4_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_we0),.v9263_4_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_d0),.v9263_5_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_address0),.v9263_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_ce0),.v9263_5_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_we0),.v9263_5_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_d0),.v9263_6_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_address0),.v9263_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_ce0),.v9263_6_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_we0),.v9263_6_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_d0),.v9263_7_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_address0),.v9263_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_ce0),.v9263_7_we0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_we0),.v9263_7_d0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_d0),.v2316_7_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_7_address0),.v2316_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_7_ce0),.v2316_7_q0(v2316_7_q0),.rem4(rem4_reg_231),.shl_ln(shl_ln_reg_236),.urem_ln3279_cast(trunc_ln2501_reg_246),.urem_ln3278_cast(empty_reg_241),.v2316_6_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_6_address0),.v2316_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_6_ce0),.v2316_6_q0(v2316_6_q0),.v2316_5_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_5_address0),.v2316_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_5_ce0),.v2316_5_q0(v2316_5_q0),.v2316_4_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_4_address0),.v2316_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_4_ce0),.v2316_4_q0(v2316_4_q0),.v2316_3_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_3_address0),.v2316_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_3_ce0),.v2316_3_q0(v2316_3_q0),.v2316_2_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_2_address0),.v2316_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_2_ce0),.v2316_2_q0(v2316_2_q0),.v2316_1_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_1_address0),.v2316_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_1_ce0),.v2316_1_q0(v2316_1_q0),.v2316_address0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_address0),.v2316_ce0(grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_ce0),.v2316_q0(v2316_q0));
forward_urem_17ns_4ns_3_21_seq_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 17 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_17ns_4ns_3_21_seq_1_U10469(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_134_ap_start),.done(grp_fu_134_ap_done),.din0(p_read),.din1(grp_fu_134_p1),.ce(grp_fu_134_ce),.dout(grp_fu_134_p2));
forward_mul_17ns_19ns_35_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 17 ),.din1_WIDTH( 19 ),.dout_WIDTH( 35 ))
mul_17ns_19ns_35_1_1_U10470(.din0(mul_ln3280_fu_143_p0),.din1(mul_ln3280_fu_143_p1),.dout(mul_ln3280_fu_143_p2));
forward_mul_17ns_19ns_35_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 17 ),.din1_WIDTH( 19 ),.dout_WIDTH( 35 ))
mul_17ns_19ns_35_1_1_U10471(.din0(mul_ln3279_fu_159_p0),.din1(mul_ln3279_fu_159_p1),.dout(mul_ln3279_fu_159_p2));
forward_urem_14ns_4ns_3_18_seq_1 #(.ID( 1 ),.NUM_STAGE( 18 ),.din0_WIDTH( 14 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_14ns_4ns_3_18_seq_1_U10472(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_175_ap_start),.done(grp_fu_175_ap_done),.din0(trunc_ln_reg_216),.din1(grp_fu_175_p1),.ce(1'b1),.dout(grp_fu_175_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state23) & (grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        empty_reg_241 <= empty_fu_196_p1;
        rem4_reg_231[8 : 5] <= rem4_fu_180_p3[8 : 5];
        shl_ln_reg_236[5 : 2] <= shl_ln_fu_188_p3[5 : 2];
        trunc_ln2501_reg_246 <= trunc_ln2501_fu_200_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_reg_210 <= {{mul_ln3280_fu_143_p2[26:23]}};
        trunc_ln_reg_216 <= {{mul_ln3279_fu_159_p2[33:20]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        urem_ln3278_reg_226 <= grp_fu_134_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        urem_ln3279_reg_221 <= grp_fu_175_p2;
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state23) & (grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_134_ap_start = 1'b1;
    end else begin
        grp_fu_134_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_134_ce = 1'b0;
    end else begin
        grp_fu_134_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_175_ap_start = 1'b1;
    end else begin
        grp_fu_175_ap_start = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state23) & (grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_done == 1'b1))) begin
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_196_p1 = urem_ln3278_reg_226[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_ap_start_reg;
assign grp_fu_134_p1 = 17'd7;
assign grp_fu_175_p1 = 14'd7;
assign mul_ln3279_fu_159_p0 = zext_ln3280_fu_140_p1;
assign mul_ln3279_fu_159_p1 = 35'd149797;
assign mul_ln3280_fu_143_p0 = zext_ln3280_fu_140_p1;
assign mul_ln3280_fu_143_p1 = 35'd171197;
assign rem4_fu_180_p3 = {{tmp_reg_210}, {5'd0}};
assign shl_ln_fu_188_p3 = {{tmp_reg_210}, {2'd0}};
assign trunc_ln2501_fu_200_p1 = urem_ln3279_reg_221[2:0];
assign v2316_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_1_address0;
assign v2316_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_1_ce0;
assign v2316_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_2_address0;
assign v2316_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_2_ce0;
assign v2316_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_3_address0;
assign v2316_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_3_ce0;
assign v2316_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_4_address0;
assign v2316_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_4_ce0;
assign v2316_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_5_address0;
assign v2316_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_5_ce0;
assign v2316_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_6_address0;
assign v2316_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_6_ce0;
assign v2316_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_7_address0;
assign v2316_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_7_ce0;
assign v2316_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_address0;
assign v2316_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v2316_ce0;
assign v9263_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_address0;
assign v9263_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_ce0;
assign v9263_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_d0;
assign v9263_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_0_we0;
assign v9263_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_address0;
assign v9263_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_ce0;
assign v9263_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_d0;
assign v9263_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_1_we0;
assign v9263_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_address0;
assign v9263_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_ce0;
assign v9263_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_d0;
assign v9263_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_2_we0;
assign v9263_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_address0;
assign v9263_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_ce0;
assign v9263_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_d0;
assign v9263_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_3_we0;
assign v9263_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_address0;
assign v9263_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_ce0;
assign v9263_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_d0;
assign v9263_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_4_we0;
assign v9263_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_address0;
assign v9263_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_ce0;
assign v9263_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_d0;
assign v9263_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_5_we0;
assign v9263_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_address0;
assign v9263_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_ce0;
assign v9263_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_d0;
assign v9263_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_6_we0;
assign v9263_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_address0;
assign v9263_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_ce0;
assign v9263_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_d0;
assign v9263_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_3276_1_Loop_VITIS_LOOP_2501_1_proc_Pipeline_VITIS_LO_fu_94_v9263_7_we0;
assign zext_ln3280_fu_140_p1 = p_read;
always @ (posedge ap_clk) begin
    rem4_reg_231[4:0] <= 5'b00000;
    shl_ln_reg_236[1:0] <= 2'b00;
end
endmodule 
