
module forward_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7928_i_address0,v7928_i_ce0,v7928_i_we0,v7928_i_d0,v7928_1_i_address0,v7928_1_i_ce0,v7928_1_i_we0,v7928_1_i_d0,v7928_2_i_address0,v7928_2_i_ce0,v7928_2_i_we0,v7928_2_i_d0,v7928_3_i_address0,v7928_3_i_ce0,v7928_3_i_we0,v7928_3_i_d0,v7922_i,v9205_0_0_address0,v9205_0_0_ce0,v9205_0_0_q0,v7951,v9205_0_1_address0,v9205_0_1_ce0,v9205_0_1_q0,v9205_0_2_address0,v9205_0_2_ce0,v9205_0_2_q0,v9205_0_3_address0,v9205_0_3_ce0,v9205_0_3_q0,v9205_1_0_address0,v9205_1_0_ce0,v9205_1_0_q0,v9205_1_1_address0,v9205_1_1_ce0,v9205_1_1_q0,v9205_1_2_address0,v9205_1_2_ce0,v9205_1_2_q0,v9205_1_3_address0,v9205_1_3_ce0,v9205_1_3_q0,v9205_2_0_address0,v9205_2_0_ce0,v9205_2_0_q0,v9205_2_1_address0,v9205_2_1_ce0,v9205_2_1_q0,v9205_2_2_address0,v9205_2_2_ce0,v9205_2_2_q0,v9205_2_3_address0,v9205_2_3_ce0,v9205_2_3_q0,v9205_3_0_address0,v9205_3_0_ce0,v9205_3_0_q0,v9205_3_1_address0,v9205_3_1_ce0,v9205_3_1_q0,v9205_3_2_address0,v9205_3_2_ce0,v9205_3_2_q0,v9205_3_3_address0,v9205_3_3_ce0,v9205_3_3_q0,ap_return_0,ap_return_1);  
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v7928_i_address0;
output   v7928_i_ce0;
output   v7928_i_we0;
output  [7:0] v7928_i_d0;
output  [7:0] v7928_1_i_address0;
output   v7928_1_i_ce0;
output   v7928_1_i_we0;
output  [7:0] v7928_1_i_d0;
output  [7:0] v7928_2_i_address0;
output   v7928_2_i_ce0;
output   v7928_2_i_we0;
output  [7:0] v7928_2_i_d0;
output  [7:0] v7928_3_i_address0;
output   v7928_3_i_ce0;
output   v7928_3_i_we0;
output  [7:0] v7928_3_i_d0;
input  [5:0] v7922_i;
output  [15:0] v9205_0_0_address0;
output   v9205_0_0_ce0;
input  [7:0] v9205_0_0_q0;
input  [5:0] v7951;
output  [15:0] v9205_0_1_address0;
output   v9205_0_1_ce0;
input  [7:0] v9205_0_1_q0;
output  [15:0] v9205_0_2_address0;
output   v9205_0_2_ce0;
input  [7:0] v9205_0_2_q0;
output  [15:0] v9205_0_3_address0;
output   v9205_0_3_ce0;
input  [7:0] v9205_0_3_q0;
output  [15:0] v9205_1_0_address0;
output   v9205_1_0_ce0;
input  [7:0] v9205_1_0_q0;
output  [15:0] v9205_1_1_address0;
output   v9205_1_1_ce0;
input  [7:0] v9205_1_1_q0;
output  [15:0] v9205_1_2_address0;
output   v9205_1_2_ce0;
input  [7:0] v9205_1_2_q0;
output  [15:0] v9205_1_3_address0;
output   v9205_1_3_ce0;
input  [7:0] v9205_1_3_q0;
output  [15:0] v9205_2_0_address0;
output   v9205_2_0_ce0;
input  [7:0] v9205_2_0_q0;
output  [15:0] v9205_2_1_address0;
output   v9205_2_1_ce0;
input  [7:0] v9205_2_1_q0;
output  [15:0] v9205_2_2_address0;
output   v9205_2_2_ce0;
input  [7:0] v9205_2_2_q0;
output  [15:0] v9205_2_3_address0;
output   v9205_2_3_ce0;
input  [7:0] v9205_2_3_q0;
output  [15:0] v9205_3_0_address0;
output   v9205_3_0_ce0;
input  [7:0] v9205_3_0_q0;
output  [15:0] v9205_3_1_address0;
output   v9205_3_1_ce0;
input  [7:0] v9205_3_1_q0;
output  [15:0] v9205_3_2_address0;
output   v9205_3_2_ce0;
input  [7:0] v9205_3_2_q0;
output  [15:0] v9205_3_3_address0;
output   v9205_3_3_ce0;
input  [7:0] v9205_3_3_q0;
output  [5:0] ap_return_0;
output  [6:0] ap_return_1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] ap_return_0;
reg[6:0] ap_return_1;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] trunc_ln_i_reg_319;
reg   [0:0] tmp_reg_325;
wire   [0:0] empty_fu_198_p1;
reg   [0:0] empty_reg_330;
wire    ap_CS_fsm_state7;
wire   [10:0] mul_ln12378_fu_206_p2;
reg   [10:0] mul_ln12378_reg_340;
wire   [1:0] trunc_ln12407_fu_212_p1;
reg   [1:0] trunc_ln12407_reg_345;
wire    ap_CS_fsm_state8;
wire   [3:0] select_ln12409_fu_217_p3;
reg   [3:0] select_ln12409_reg_350;
wire   [4:0] tmp_6_i_fu_267_p4;
reg   [4:0] tmp_6_i_reg_355;
wire   [2:0] tmp_279_i_fu_278_p4;
reg   [2:0] tmp_279_i_reg_360;
reg   [1:0] thr_add_cast_i_i_reg_365;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_ready;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_3_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_3_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_3_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] grp_fu_184_p0;
wire   [2:0] grp_fu_184_p1;
wire   [5:0] mul_ln12378_fu_206_p0;
wire   [5:0] mul_ln12378_fu_206_p1;
wire   [1:0] grp_fu_184_p2;
wire   [3:0] mul_ln12409_fu_228_p0;
wire   [5:0] mul_ln12409_fu_228_p1;
wire   [8:0] mul_ln12409_fu_228_p2;
wire   [3:0] mul11_i_i_i_fu_244_p3;
wire   [0:0] tmp_391_fu_259_p3;
wire   [0:0] tmp_390_fu_251_p3;
wire   [2:0] tmp_389_fu_234_p4;
wire   [6:0] zext_ln12491_fu_300_p1;
reg    grp_fu_184_ap_start;
wire    grp_fu_184_ap_done;
reg    grp_fu_184_ce;
reg   [5:0] ap_return_0_preg;
reg   [6:0] ap_return_1_preg;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire   [10:0] mul_ln12378_fu_206_p00;
wire   [8:0] mul_ln12409_fu_228_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 6'd0;
#0 ap_return_1_preg = 7'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_ready),.urem_ln12408_i(trunc_ln12407_reg_345),.select_ln12409_i(select_ln12409_reg_350),.mul_ln12378_i(mul_ln12378_reg_340),.v7928_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_address0),.v7928_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_ce0),.v7928_i_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_we0),.v7928_i_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_d0),.v7928_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_address0),.v7928_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_ce0),.v7928_1_i_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_we0),.v7928_1_i_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_d0),.v7928_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_address0),.v7928_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_ce0),.v7928_2_i_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_we0),.v7928_2_i_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_d0),.v7928_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_address0),.v7928_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_ce0),.v7928_3_i_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_we0),.v7928_3_i_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_d0),.thr_add_udiv_cast_i_i(tmp_279_i_reg_360),.v9205_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_0_address0),.v9205_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_0_ce0),.v9205_0_0_q0(v9205_0_0_q0),.v9205_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_1_address0),.v9205_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_1_ce0),.v9205_0_1_q0(v9205_0_1_q0),.v9205_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_2_address0),.v9205_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_2_ce0),.v9205_0_2_q0(v9205_0_2_q0),.v9205_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_3_address0),.v9205_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_3_ce0),.v9205_0_3_q0(v9205_0_3_q0),.v9205_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_0_address0),.v9205_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_0_ce0),.v9205_1_0_q0(v9205_1_0_q0),.v9205_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_1_address0),.v9205_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_1_ce0),.v9205_1_1_q0(v9205_1_1_q0),.v9205_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_2_address0),.v9205_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_2_ce0),.v9205_1_2_q0(v9205_1_2_q0),.v9205_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_3_address0),.v9205_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_3_ce0),.v9205_1_3_q0(v9205_1_3_q0),.v9205_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_0_address0),.v9205_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_0_ce0),.v9205_2_0_q0(v9205_2_0_q0),.v9205_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_1_address0),.v9205_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_1_ce0),.v9205_2_1_q0(v9205_2_1_q0),.v9205_2_2_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_2_address0),.v9205_2_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_2_ce0),.v9205_2_2_q0(v9205_2_2_q0),.v9205_2_3_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_3_address0),.v9205_2_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_3_ce0),.v9205_2_3_q0(v9205_2_3_q0),.v9205_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_0_address0),.v9205_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_0_ce0),.v9205_3_0_q0(v9205_3_0_q0),.v9205_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_1_address0),.v9205_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_1_ce0),.v9205_3_1_q0(v9205_3_1_q0),.v9205_3_2_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_2_address0),.v9205_3_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_2_ce0),.v9205_3_2_q0(v9205_3_2_q0),.v9205_3_3_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_3_address0),.v9205_3_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_3_ce0),.v9205_3_3_q0(v9205_3_3_q0),.thr_add_cast_i_i(thr_add_cast_i_i_reg_365),.thr_add_i_cast_cast_i(tmp_6_i_reg_355));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U2727(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_184_ap_start),.done(grp_fu_184_ap_done),.din0(grp_fu_184_p0),.din1(grp_fu_184_p1),.ce(grp_fu_184_ce),.dout(grp_fu_184_p2));
forward_mul_6ns_6ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 6 ),.dout_WIDTH( 11 ))
mul_6ns_6ns_11_1_1_U2728(.din0(mul_ln12378_fu_206_p0),.din1(mul_ln12378_fu_206_p1),.dout(mul_ln12378_fu_206_p2));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U2729(.din0(mul_ln12409_fu_228_p0),.din1(mul_ln12409_fu_228_p1),.dout(mul_ln12409_fu_228_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 6'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_return_0_preg <= v7922_i;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_1_preg[0] <= 1'b0;
        ap_return_1_preg[1] <= 1'b0;
        ap_return_1_preg[2] <= 1'b0;
        ap_return_1_preg[3] <= 1'b0;
        ap_return_1_preg[4] <= 1'b0;
        ap_return_1_preg[5] <= 1'b0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                        ap_return_1_preg[5 : 0] <= zext_ln12491_fu_300_p1[5 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        empty_reg_330 <= empty_fu_198_p1;
        tmp_reg_325 <= v7922_i[32'd1];
        trunc_ln_i_reg_319 <= {{v7922_i[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mul_ln12378_reg_340 <= mul_ln12378_fu_206_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        select_ln12409_reg_350[3] <= select_ln12409_fu_217_p3[3];
        thr_add_cast_i_i_reg_365 <= {{mul_ln12409_fu_228_p2[7:6]}};
        tmp_279_i_reg_360[2 : 1] <= tmp_279_i_fu_278_p4[2 : 1];
        tmp_6_i_reg_355 <= tmp_6_i_fu_267_p4;
        trunc_ln12407_reg_345 <= trunc_ln12407_fu_212_p1;
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_return_0 = v7922_i;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_return_1 = zext_ln12491_fu_300_p1;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        grp_fu_184_ap_start = 1'b1;
    end else begin
        grp_fu_184_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_184_ce = 1'b0;
    end else begin
        grp_fu_184_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_198_p1 = v7922_i[0:0];
assign grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_ap_start_reg;
assign grp_fu_184_p0 = {{v7922_i[5:2]}};
assign grp_fu_184_p1 = 4'd3;
assign mul11_i_i_i_fu_244_p3 = ((empty_reg_330[0:0] == 1'b1) ? 4'd8 : 4'd0);
assign mul_ln12378_fu_206_p0 = mul_ln12378_fu_206_p00;
assign mul_ln12378_fu_206_p00 = v7951;
assign mul_ln12378_fu_206_p1 = 11'd29;
assign mul_ln12409_fu_228_p0 = mul_ln12409_fu_228_p00;
assign mul_ln12409_fu_228_p00 = trunc_ln_i_reg_319;
assign mul_ln12409_fu_228_p1 = 9'd22;
assign select_ln12409_fu_217_p3 = ((tmp_reg_325[0:0] == 1'b1) ? 4'd8 : 4'd0);
assign tmp_279_i_fu_278_p4 = {{{tmp_391_fu_259_p3}, {tmp_390_fu_251_p3}}, {1'd0}};
assign tmp_389_fu_234_p4 = {{mul_ln12409_fu_228_p2[8:6]}};
assign tmp_390_fu_251_p3 = mul11_i_i_i_fu_244_p3[32'd3];
assign tmp_391_fu_259_p3 = mul11_i_i_i_fu_244_p3[32'd3];
assign tmp_6_i_fu_267_p4 = {{{tmp_391_fu_259_p3}, {tmp_390_fu_251_p3}}, {tmp_389_fu_234_p4}};
assign trunc_ln12407_fu_212_p1 = grp_fu_184_p2[1:0];
assign v7928_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_address0;
assign v7928_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_ce0;
assign v7928_1_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_d0;
assign v7928_1_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_1_i_we0;
assign v7928_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_address0;
assign v7928_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_ce0;
assign v7928_2_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_d0;
assign v7928_2_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_2_i_we0;
assign v7928_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_address0;
assign v7928_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_ce0;
assign v7928_3_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_d0;
assign v7928_3_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_3_i_we0;
assign v7928_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_address0;
assign v7928_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_ce0;
assign v7928_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_d0;
assign v7928_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v7928_i_we0;
assign v9205_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_0_address0;
assign v9205_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_0_ce0;
assign v9205_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_1_address0;
assign v9205_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_1_ce0;
assign v9205_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_2_address0;
assign v9205_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_2_ce0;
assign v9205_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_3_address0;
assign v9205_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_0_3_ce0;
assign v9205_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_0_address0;
assign v9205_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_0_ce0;
assign v9205_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_1_address0;
assign v9205_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_1_ce0;
assign v9205_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_2_address0;
assign v9205_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_2_ce0;
assign v9205_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_3_address0;
assign v9205_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_1_3_ce0;
assign v9205_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_0_address0;
assign v9205_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_0_ce0;
assign v9205_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_1_address0;
assign v9205_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_1_ce0;
assign v9205_2_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_2_address0;
assign v9205_2_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_2_ce0;
assign v9205_2_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_3_address0;
assign v9205_2_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_2_3_ce0;
assign v9205_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_0_address0;
assign v9205_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_0_ce0;
assign v9205_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_1_address0;
assign v9205_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_1_ce0;
assign v9205_3_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_2_address0;
assign v9205_3_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_2_ce0;
assign v9205_3_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_3_address0;
assign v9205_3_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V_fu_124_v9205_3_3_ce0;
assign zext_ln12491_fu_300_p1 = v7951;
always @ (posedge ap_clk) begin
    select_ln12409_reg_350[2:0] <= 3'b000;
    tmp_279_i_reg_360[0] <= 1'b0;
    ap_return_1_preg[6] <= 1'b0;
end
endmodule 
