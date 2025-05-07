module forward_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v798_address0,v798_ce0,v798_we0,v798_d0,v798_1_address0,v798_1_ce0,v798_1_we0,v798_1_d0,v798_2_address0,v798_2_ce0,v798_2_we0,v798_2_d0,v798_3_address0,v798_3_ce0,v798_3_we0,v798_3_d0,v798_4_address0,v798_4_ce0,v798_4_we0,v798_4_d0,v798_5_address0,v798_5_ce0,v798_5_we0,v798_5_d0,v798_6_address0,v798_6_ce0,v798_6_we0,v798_6_d0,v798_7_address0,v798_7_ce0,v798_7_we0,v798_7_d0,v787_0,v9273_0_address0,v9273_0_ce0,v9273_0_q0,v9273_1_address0,v9273_1_ce0,v9273_1_q0,v9273_2_address0,v9273_2_ce0,v9273_2_q0,v9273_3_address0,v9273_3_ce0,v9273_3_q0,v9273_4_address0,v9273_4_ce0,v9273_4_q0,v9273_5_address0,v9273_5_ce0,v9273_5_q0,v9273_6_address0,v9273_6_ce0,v9273_6_q0,v9273_7_address0,v9273_7_ce0,v9273_7_q0,ap_return); 
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
output  [1:0] v798_address0;
output   v798_ce0;
output   v798_we0;
output  [7:0] v798_d0;
output  [1:0] v798_1_address0;
output   v798_1_ce0;
output   v798_1_we0;
output  [7:0] v798_1_d0;
output  [1:0] v798_2_address0;
output   v798_2_ce0;
output   v798_2_we0;
output  [7:0] v798_2_d0;
output  [1:0] v798_3_address0;
output   v798_3_ce0;
output   v798_3_we0;
output  [7:0] v798_3_d0;
output  [1:0] v798_4_address0;
output   v798_4_ce0;
output   v798_4_we0;
output  [7:0] v798_4_d0;
output  [1:0] v798_5_address0;
output   v798_5_ce0;
output   v798_5_we0;
output  [7:0] v798_5_d0;
output  [1:0] v798_6_address0;
output   v798_6_ce0;
output   v798_6_we0;
output  [7:0] v798_6_d0;
output  [1:0] v798_7_address0;
output   v798_7_ce0;
output   v798_7_we0;
output  [7:0] v798_7_d0;
input  [16:0] v787_0;
output  [11:0] v9273_0_address0;
output   v9273_0_ce0;
input  [7:0] v9273_0_q0;
output  [11:0] v9273_1_address0;
output   v9273_1_ce0;
input  [7:0] v9273_1_q0;
output  [11:0] v9273_2_address0;
output   v9273_2_ce0;
input  [7:0] v9273_2_q0;
output  [11:0] v9273_3_address0;
output   v9273_3_ce0;
input  [7:0] v9273_3_q0;
output  [11:0] v9273_4_address0;
output   v9273_4_ce0;
input  [7:0] v9273_4_q0;
output  [11:0] v9273_5_address0;
output   v9273_5_ce0;
input  [7:0] v9273_5_q0;
output  [11:0] v9273_6_address0;
output   v9273_6_ce0;
input  [7:0] v9273_6_q0;
output  [11:0] v9273_7_address0;
output   v9273_7_ce0;
input  [7:0] v9273_7_q0;
output  [16:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[16:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] tmp_s_reg_311;
wire    ap_CS_fsm_state3;
reg   [13:0] trunc_ln_reg_317;
reg   [7:0] trunc_ln42_reg_327;
wire   [1:0] grp_fu_209_p2;
reg   [1:0] urem_ln1188_reg_332;
wire    ap_CS_fsm_state12;
wire   [1:0] grp_fu_236_p2;
reg   [1:0] urem_ln1187_reg_337;
wire    ap_CS_fsm_state15;
wire   [8:0] mul_i_fu_241_p3;
reg   [8:0] mul_i_reg_342;
wire    ap_CS_fsm_state21;
wire   [5:0] shl_ln_fu_249_p3;
reg   [5:0] shl_ln_reg_347;
wire   [3:0] sub_i363_fu_274_p2;
reg   [3:0] sub_i363_reg_352;
wire   [3:0] sub5_i_fu_298_p2;
reg   [3:0] sub5_i_reg_357;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_0_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_2_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_3_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_4_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_5_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_6_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_7_ce0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_d0;
wire   [1:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start_reg;
wire    ap_CS_fsm_state22;
wire   [3:0] grp_fu_152_p1;
wire   [16:0] mul_ln1189_fu_161_p0;
wire   [34:0] zext_ln1189_fu_158_p1;
wire   [18:0] mul_ln1189_fu_161_p1;
wire   [34:0] mul_ln1189_fu_161_p2;
wire   [16:0] mul_ln1185_fu_177_p0;
wire   [18:0] mul_ln1185_fu_177_p1;
wire   [34:0] mul_ln1185_fu_177_p2;
wire   [16:0] mul_ln1188_fu_193_p0;
wire   [18:0] mul_ln1188_fu_193_p1;
wire   [34:0] mul_ln1188_fu_193_p2;
wire   [5:0] grp_fu_209_p0;
wire   [2:0] grp_fu_209_p1;
wire   [16:0] mul_ln1187_fu_215_p0;
wire   [18:0] mul_ln1187_fu_215_p1;
wire   [34:0] mul_ln1187_fu_215_p2;
wire   [3:0] grp_fu_231_p1;
wire    ap_CS_fsm_state4;
wire   [2:0] grp_fu_236_p1;
wire   [3:0] grp_fu_231_p2;
wire   [1:0] empty_fu_261_p1;
wire   [1:0] tmp_fu_264_p2;
wire  signed [3:0] tmp_cast_fu_270_p1;
wire   [3:0] trunc_ln904_fu_257_p1;
wire   [3:0] grp_fu_152_p2;
wire   [1:0] empty_415_fu_285_p1;
wire   [1:0] tmp1_fu_288_p2;
wire  signed [3:0] tmp1_cast_fu_294_p1;
wire   [3:0] trunc_ln905_fu_281_p1;
reg    grp_fu_152_ap_start;
wire    grp_fu_152_ap_done;
reg    grp_fu_152_ce;
reg    grp_fu_209_ap_start;
wire    grp_fu_209_ap_done;
reg    grp_fu_231_ap_start;
wire    grp_fu_231_ap_done;
reg    grp_fu_236_ap_start;
wire    grp_fu_236_ap_done;
reg   [16:0] ap_return_preg;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start_reg = 1'b0;
#0 ap_return_preg = 17'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_ready),.mul_i(mul_i_reg_342),.shl_ln(shl_ln_reg_347),.idxprom2_i(sub_i363_reg_352),.idxprom6_i(sub5_i_reg_357),.v9273_0_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_0_address0),.v9273_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_0_ce0),.v9273_0_q0(v9273_0_q0),.v9273_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_1_address0),.v9273_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_1_ce0),.v9273_1_q0(v9273_1_q0),.v9273_2_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_2_address0),.v9273_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_2_ce0),.v9273_2_q0(v9273_2_q0),.v9273_3_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_3_address0),.v9273_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_3_ce0),.v9273_3_q0(v9273_3_q0),.v9273_4_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_4_address0),.v9273_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_4_ce0),.v9273_4_q0(v9273_4_q0),.v9273_5_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_5_address0),.v9273_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_5_ce0),.v9273_5_q0(v9273_5_q0),.v9273_6_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_6_address0),.v9273_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_6_ce0),.v9273_6_q0(v9273_6_q0),.v9273_7_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_7_address0),.v9273_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_7_ce0),.v9273_7_q0(v9273_7_q0),.v798_7_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_address0),.v798_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_ce0),.v798_7_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_we0),.v798_7_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_d0),.v798_6_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_address0),.v798_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_ce0),.v798_6_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_we0),.v798_6_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_d0),.v798_5_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_address0),.v798_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_ce0),.v798_5_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_we0),.v798_5_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_d0),.v798_4_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_address0),.v798_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_ce0),.v798_4_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_we0),.v798_4_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_d0),.v798_3_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_address0),.v798_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_ce0),.v798_3_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_we0),.v798_3_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_d0),.v798_2_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_address0),.v798_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_ce0),.v798_2_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_we0),.v798_2_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_d0),.v798_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_address0),.v798_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_ce0),.v798_1_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_we0),.v798_1_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_d0),.v798_address0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_address0),.v798_ce0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_ce0),.v798_we0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_we0),.v798_d0(grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_d0));
forward_urem_17ns_4ns_4_21_seq_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 17 ),.din1_WIDTH( 4 ),.dout_WIDTH( 4 ))
urem_17ns_4ns_4_21_seq_1_U11855(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_152_ap_start),.done(grp_fu_152_ap_done),.din0(v787_0),.din1(grp_fu_152_p1),.ce(grp_fu_152_ce),.dout(grp_fu_152_p2));
forward_mul_17ns_19ns_35_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 17 ),.din1_WIDTH( 19 ),.dout_WIDTH( 35 ))
mul_17ns_19ns_35_1_1_U11856(.din0(mul_ln1189_fu_161_p0),.din1(mul_ln1189_fu_161_p1),.dout(mul_ln1189_fu_161_p2));
forward_mul_17ns_19ns_35_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 17 ),.din1_WIDTH( 19 ),.dout_WIDTH( 35 ))
mul_17ns_19ns_35_1_1_U11857(.din0(mul_ln1185_fu_177_p0),.din1(mul_ln1185_fu_177_p1),.dout(mul_ln1185_fu_177_p2));
forward_mul_17ns_19ns_35_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 17 ),.din1_WIDTH( 19 ),.dout_WIDTH( 35 ))
mul_17ns_19ns_35_1_1_U11858(.din0(mul_ln1188_fu_193_p0),.din1(mul_ln1188_fu_193_p1),.dout(mul_ln1188_fu_193_p2));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U11859(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_209_ap_start),.done(grp_fu_209_ap_done),.din0(grp_fu_209_p0),.din1(grp_fu_209_p1),.ce(1'b1),.dout(grp_fu_209_p2));
forward_mul_17ns_19ns_35_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 17 ),.din1_WIDTH( 19 ),.dout_WIDTH( 35 ))
mul_17ns_19ns_35_1_1_U11860(.din0(mul_ln1187_fu_215_p0),.din1(mul_ln1187_fu_215_p1),.dout(mul_ln1187_fu_215_p2));
forward_urem_14ns_4ns_4_18_seq_1 #(.ID( 1 ),.NUM_STAGE( 18 ),.din0_WIDTH( 14 ),.din1_WIDTH( 4 ),.dout_WIDTH( 4 ))
urem_14ns_4ns_4_18_seq_1_U11861(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_231_ap_start),.done(grp_fu_231_ap_done),.din0(trunc_ln_reg_317),.din1(grp_fu_231_p1),.ce(1'b1),.dout(grp_fu_231_p2));
forward_urem_8ns_3ns_2_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_8ns_3ns_2_12_seq_1_U11862(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_236_ap_start),.done(grp_fu_236_ap_done),.din0(trunc_ln42_reg_327),.din1(grp_fu_236_p1),.ce(1'b1),.dout(grp_fu_236_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 17'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
            ap_return_preg <= v787_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        mul_i_reg_342[8 : 5] <= mul_i_fu_241_p3[8 : 5];
        shl_ln_reg_347[5 : 2] <= shl_ln_fu_249_p3[5 : 2];
        sub5_i_reg_357 <= sub5_i_fu_298_p2;
        sub_i363_reg_352 <= sub_i363_fu_274_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_311 <= {{mul_ln1189_fu_161_p2[33:30]}};
        trunc_ln42_reg_327 <= {{mul_ln1187_fu_215_p2[34:27]}};
        trunc_ln_reg_317 <= {{mul_ln1185_fu_177_p2[33:20]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        urem_ln1187_reg_337 <= grp_fu_236_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        urem_ln1188_reg_332 <= grp_fu_209_p2;
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        ap_return = v787_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_152_ap_start = 1'b1;
    end else begin
        grp_fu_152_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_152_ce = 1'b0;
    end else begin
        grp_fu_152_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_209_ap_start = 1'b1;
    end else begin
        grp_fu_209_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_231_ap_start = 1'b1;
    end else begin
        grp_fu_231_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_236_ap_start = 1'b1;
    end else begin
        grp_fu_236_ap_start = 1'b0;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
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
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_415_fu_285_p1 = urem_ln1187_reg_337[1:0];
assign empty_fu_261_p1 = urem_ln1188_reg_332[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_ap_start_reg;
assign grp_fu_152_p1 = 17'd7;
assign grp_fu_209_p0 = {{mul_ln1188_fu_193_p2[34:29]}};
assign grp_fu_209_p1 = 6'd3;
assign grp_fu_231_p1 = 14'd7;
assign grp_fu_236_p1 = 8'd3;
assign mul_i_fu_241_p3 = {{tmp_s_reg_311}, {5'd0}};
assign mul_ln1185_fu_177_p0 = zext_ln1189_fu_158_p1;
assign mul_ln1185_fu_177_p1 = 35'd149797;
assign mul_ln1187_fu_215_p0 = zext_ln1189_fu_158_p1;
assign mul_ln1187_fu_215_p1 = 35'd171197;
assign mul_ln1188_fu_193_p0 = zext_ln1189_fu_158_p1;
assign mul_ln1188_fu_193_p1 = 35'd228262;
assign mul_ln1189_fu_161_p0 = zext_ln1189_fu_158_p1;
assign mul_ln1189_fu_161_p1 = 35'd152175;
assign shl_ln_fu_249_p3 = {{tmp_s_reg_311}, {2'd0}};
assign sub5_i_fu_298_p2 = ($signed(tmp1_cast_fu_294_p1) + $signed(trunc_ln905_fu_281_p1));
assign sub_i363_fu_274_p2 = ($signed(tmp_cast_fu_270_p1) + $signed(trunc_ln904_fu_257_p1));
assign tmp1_cast_fu_294_p1 = $signed(tmp1_fu_288_p2);
assign tmp1_fu_288_p2 = ($signed(empty_415_fu_285_p1) + $signed(2'd3));
assign tmp_cast_fu_270_p1 = $signed(tmp_fu_264_p2);
assign tmp_fu_264_p2 = ($signed(empty_fu_261_p1) + $signed(2'd3));
assign trunc_ln904_fu_257_p1 = grp_fu_231_p2[3:0];
assign trunc_ln905_fu_281_p1 = grp_fu_152_p2[3:0];
assign v798_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_address0;
assign v798_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_ce0;
assign v798_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_d0;
assign v798_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_1_we0;
assign v798_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_address0;
assign v798_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_ce0;
assign v798_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_d0;
assign v798_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_2_we0;
assign v798_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_address0;
assign v798_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_ce0;
assign v798_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_d0;
assign v798_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_3_we0;
assign v798_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_address0;
assign v798_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_ce0;
assign v798_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_d0;
assign v798_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_4_we0;
assign v798_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_address0;
assign v798_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_ce0;
assign v798_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_d0;
assign v798_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_5_we0;
assign v798_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_address0;
assign v798_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_ce0;
assign v798_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_d0;
assign v798_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_6_we0;
assign v798_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_address0;
assign v798_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_ce0;
assign v798_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_d0;
assign v798_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_7_we0;
assign v798_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_address0;
assign v798_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_ce0;
assign v798_d0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_d0;
assign v798_we0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v798_we0;
assign v9273_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_0_address0;
assign v9273_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_0_ce0;
assign v9273_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_1_address0;
assign v9273_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_1_ce0;
assign v9273_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_2_address0;
assign v9273_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_2_ce0;
assign v9273_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_3_address0;
assign v9273_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_3_ce0;
assign v9273_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_4_address0;
assign v9273_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_4_ce0;
assign v9273_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_5_address0;
assign v9273_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_5_ce0;
assign v9273_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_6_address0;
assign v9273_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_6_ce0;
assign v9273_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_7_address0;
assign v9273_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_1135_1_proc_Pipeline_VITIS_LO_fu_112_v9273_7_ce0;
assign zext_ln1189_fu_158_p1 = v787_0;
always @ (posedge ap_clk) begin
    mul_i_reg_342[4:0] <= 5'b00000;
    shl_ln_reg_347[1:0] <= 2'b00;
end
endmodule 