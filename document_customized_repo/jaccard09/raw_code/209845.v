module SgdLR_sw_SgdLR_sw_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_address1,v2_7_ce1,v2_7_q1,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_address1,v2_6_ce1,v2_6_q1,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_address1,v2_5_ce1,v2_5_q1,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_address1,v2_4_ce1,v2_4_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_223_p_din0,grp_fu_223_p_din1,grp_fu_223_p_opcode,grp_fu_223_p_dout0,grp_fu_223_p_ce,grp_fu_408_p_din0,grp_fu_408_p_din1,grp_fu_408_p_dout0,grp_fu_408_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
output   v2_7_we0;
output  [31:0] v2_7_d0;
output  [6:0] v2_7_address1;
output   v2_7_ce1;
input  [31:0] v2_7_q1;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
output   v2_6_we0;
output  [31:0] v2_6_d0;
output  [6:0] v2_6_address1;
output   v2_6_ce1;
input  [31:0] v2_6_q1;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
output   v2_5_we0;
output  [31:0] v2_5_d0;
output  [6:0] v2_5_address1;
output   v2_5_ce1;
input  [31:0] v2_5_q1;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
output   v2_4_we0;
output  [31:0] v2_4_d0;
output  [6:0] v2_4_address1;
output   v2_4_ce1;
input  [31:0] v2_4_q1;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [6:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [6:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [6:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [6:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [31:0] grp_fu_223_p_din0;
output  [31:0] grp_fu_223_p_din1;
output  [0:0] grp_fu_223_p_opcode;
input  [31:0] grp_fu_223_p_dout0;
output   grp_fu_223_p_ce;
output  [31:0] grp_fu_408_p_din0;
output  [31:0] grp_fu_408_p_din1;
input  [31:0] grp_fu_408_p_dout0;
output   grp_fu_408_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_354_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln57_fu_396_p2;
reg   [0:0] icmp_ln57_reg_528;
reg   [0:0] icmp_ln57_reg_528_pp0_iter1_reg;
reg   [0:0] icmp_ln57_reg_528_pp0_iter2_reg;
reg   [0:0] icmp_ln57_reg_528_pp0_iter3_reg;
reg   [0:0] icmp_ln57_reg_528_pp0_iter4_reg;
reg   [6:0] v2_0_addr_reg_540;
reg   [6:0] v2_0_addr_reg_540_pp0_iter1_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter2_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter3_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter4_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter5_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter6_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter7_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter8_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter9_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter10_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter11_reg;
reg   [6:0] v2_0_addr_reg_540_pp0_iter12_reg;
reg   [6:0] v2_4_addr_reg_546;
reg   [6:0] v2_4_addr_reg_546_pp0_iter1_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter2_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter3_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter4_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter5_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter6_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter7_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter8_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter9_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter10_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter11_reg;
reg   [6:0] v2_4_addr_reg_546_pp0_iter12_reg;
wire   [0:0] icmp_ln60_fu_402_p2;
reg   [0:0] icmp_ln60_reg_552;
reg   [0:0] icmp_ln60_reg_552_pp0_iter1_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter2_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter3_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter4_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter5_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter6_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter7_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter8_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter9_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter10_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter11_reg;
reg   [0:0] icmp_ln60_reg_552_pp0_iter12_reg;
reg   [6:0] v2_1_addr_reg_566;
reg   [6:0] v2_1_addr_reg_566_pp0_iter1_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter2_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter3_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter4_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter5_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter6_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter7_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter8_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter9_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter10_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter11_reg;
reg   [6:0] v2_1_addr_reg_566_pp0_iter12_reg;
reg   [6:0] v2_5_addr_reg_572;
reg   [6:0] v2_5_addr_reg_572_pp0_iter1_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter2_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter3_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter4_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter5_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter6_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter7_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter8_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter9_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter10_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter11_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter12_reg;
reg   [6:0] v2_2_addr_reg_588;
reg   [6:0] v2_2_addr_reg_588_pp0_iter1_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter2_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter3_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter4_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter5_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter6_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter7_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter8_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter9_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter10_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter11_reg;
reg   [6:0] v2_2_addr_reg_588_pp0_iter12_reg;
reg   [6:0] v2_6_addr_reg_594;
reg   [6:0] v2_6_addr_reg_594_pp0_iter1_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter2_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter3_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter4_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter5_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter6_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter7_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter8_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter9_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter10_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter11_reg;
reg   [6:0] v2_6_addr_reg_594_pp0_iter12_reg;
reg   [6:0] v2_3_addr_reg_610;
reg   [6:0] v2_3_addr_reg_610_pp0_iter1_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter2_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter3_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter4_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter5_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter6_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter7_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter8_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter9_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter10_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter11_reg;
reg   [6:0] v2_3_addr_reg_610_pp0_iter12_reg;
reg   [6:0] v2_7_addr_reg_616;
reg   [6:0] v2_7_addr_reg_616_pp0_iter1_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter2_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter3_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter4_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter5_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter6_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter7_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter8_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter9_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter10_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter11_reg;
reg   [6:0] v2_7_addr_reg_616_pp0_iter12_reg;
wire   [31:0] v26_fu_419_p3;
reg   [31:0] v26_reg_622;
wire   [31:0] v26_1_fu_426_p3;
reg   [31:0] v26_1_reg_627;
wire   [31:0] v26_2_fu_433_p3;
reg   [31:0] v26_2_reg_632;
wire   [31:0] v26_3_fu_440_p3;
reg   [31:0] v26_3_reg_637;
reg   [31:0] v27_reg_642;
wire   [31:0] select_ln58_fu_447_p3;
reg   [31:0] select_ln58_reg_647;
wire   [31:0] grp_fu_331_p2;
reg   [31:0] v27_1_reg_652;
wire   [31:0] select_ln58_1_fu_454_p3;
reg   [31:0] select_ln58_1_reg_657;
wire   [31:0] grp_fu_336_p2;
reg   [31:0] v27_2_reg_662;
wire   [31:0] select_ln58_2_fu_461_p3;
reg   [31:0] select_ln58_2_reg_667;
wire   [31:0] grp_fu_341_p2;
reg   [31:0] v27_3_reg_672;
wire   [31:0] select_ln58_3_fu_468_p3;
reg   [31:0] select_ln58_3_reg_677;
wire   [31:0] v28_fu_475_p1;
wire   [31:0] bitcast_ln60_fu_491_p1;
reg   [31:0] bitcast_ln60_reg_702;
wire   [31:0] bitcast_ln60_1_fu_495_p1;
reg   [31:0] bitcast_ln60_1_reg_708;
wire   [31:0] bitcast_ln60_2_fu_499_p1;
reg   [31:0] bitcast_ln60_2_reg_714;
wire   [31:0] bitcast_ln60_3_fu_503_p1;
reg   [31:0] bitcast_ln60_3_reg_720;
wire   [63:0] zext_ln55_fu_376_p1;
wire    ap_block_pp0_stage0;
reg   [10:0] v25_fu_74;
wire   [10:0] add_ln55_fu_408_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_1_ce0_local;
reg    v3_5_ce0_local;
reg    v3_2_ce0_local;
reg    v3_6_ce0_local;
reg    v3_3_ce0_local;
reg    v3_7_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
reg    v2_0_ce0_local;
reg    v2_4_ce1_local;
reg    v2_4_we0_local;
reg    v2_4_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
reg    v2_1_ce0_local;
reg    v2_5_ce1_local;
reg    v2_5_we0_local;
reg    v2_5_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
reg    v2_2_ce0_local;
reg    v2_6_ce1_local;
reg    v2_6_we0_local;
reg    v2_6_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
reg    v2_3_ce0_local;
reg    v2_7_ce1_local;
reg    v2_7_we0_local;
reg    v2_7_ce0_local;
wire   [31:0] grp_fu_314_p0;
wire   [31:0] grp_fu_318_p0;
wire   [31:0] grp_fu_322_p0;
wire   [6:0] lshr_ln2_fu_366_p4;
wire   [2:0] trunc_ln55_fu_362_p1;
wire   [31:0] grp_fu_314_p2;
wire   [31:0] grp_fu_318_p2;
wire   [31:0] grp_fu_322_p2;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 v25_fu_74 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_314_p0),.din1(v27_1_reg_652),.ce(1'b1),.dout(grp_fu_314_p2));
SgdLR_sw_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_318_p0),.din1(v27_2_reg_662),.ce(1'b1),.dout(grp_fu_318_p2));
SgdLR_sw_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_322_p0),.din1(v27_3_reg_672),.ce(1'b1),.dout(grp_fu_322_p2));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(v26_1_reg_627),.din1(32'd3345637376),.ce(1'b1),.dout(grp_fu_331_p2));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(v26_2_reg_632),.din1(32'd3345637376),.ce(1'b1),.dout(grp_fu_336_p2));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(v26_3_reg_637),.din1(32'd3345637376),.ce(1'b1),.dout(grp_fu_341_p2));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_354_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_74 <= add_ln55_fu_408_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_74 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        bitcast_ln60_1_reg_708 <= bitcast_ln60_1_fu_495_p1;
        bitcast_ln60_2_reg_714 <= bitcast_ln60_2_fu_499_p1;
        bitcast_ln60_3_reg_720 <= bitcast_ln60_3_fu_503_p1;
        bitcast_ln60_reg_702 <= bitcast_ln60_fu_491_p1;
        icmp_ln57_reg_528_pp0_iter2_reg <= icmp_ln57_reg_528_pp0_iter1_reg;
        icmp_ln57_reg_528_pp0_iter3_reg <= icmp_ln57_reg_528_pp0_iter2_reg;
        icmp_ln57_reg_528_pp0_iter4_reg <= icmp_ln57_reg_528_pp0_iter3_reg;
        icmp_ln60_reg_552_pp0_iter10_reg <= icmp_ln60_reg_552_pp0_iter9_reg;
        icmp_ln60_reg_552_pp0_iter11_reg <= icmp_ln60_reg_552_pp0_iter10_reg;
        icmp_ln60_reg_552_pp0_iter12_reg <= icmp_ln60_reg_552_pp0_iter11_reg;
        icmp_ln60_reg_552_pp0_iter2_reg <= icmp_ln60_reg_552_pp0_iter1_reg;
        icmp_ln60_reg_552_pp0_iter3_reg <= icmp_ln60_reg_552_pp0_iter2_reg;
        icmp_ln60_reg_552_pp0_iter4_reg <= icmp_ln60_reg_552_pp0_iter3_reg;
        icmp_ln60_reg_552_pp0_iter5_reg <= icmp_ln60_reg_552_pp0_iter4_reg;
        icmp_ln60_reg_552_pp0_iter6_reg <= icmp_ln60_reg_552_pp0_iter5_reg;
        icmp_ln60_reg_552_pp0_iter7_reg <= icmp_ln60_reg_552_pp0_iter6_reg;
        icmp_ln60_reg_552_pp0_iter8_reg <= icmp_ln60_reg_552_pp0_iter7_reg;
        icmp_ln60_reg_552_pp0_iter9_reg <= icmp_ln60_reg_552_pp0_iter8_reg;
        select_ln58_1_reg_657 <= select_ln58_1_fu_454_p3;
        select_ln58_2_reg_667 <= select_ln58_2_fu_461_p3;
        select_ln58_3_reg_677 <= select_ln58_3_fu_468_p3;
        select_ln58_reg_647 <= select_ln58_fu_447_p3;
        v27_1_reg_652 <= grp_fu_331_p2;
        v27_2_reg_662 <= grp_fu_336_p2;
        v27_3_reg_672 <= grp_fu_341_p2;
        v27_reg_642 <= grp_fu_408_p_dout0;
        v2_0_addr_reg_540_pp0_iter10_reg <= v2_0_addr_reg_540_pp0_iter9_reg;
        v2_0_addr_reg_540_pp0_iter11_reg <= v2_0_addr_reg_540_pp0_iter10_reg;
        v2_0_addr_reg_540_pp0_iter12_reg <= v2_0_addr_reg_540_pp0_iter11_reg;
        v2_0_addr_reg_540_pp0_iter2_reg <= v2_0_addr_reg_540_pp0_iter1_reg;
        v2_0_addr_reg_540_pp0_iter3_reg <= v2_0_addr_reg_540_pp0_iter2_reg;
        v2_0_addr_reg_540_pp0_iter4_reg <= v2_0_addr_reg_540_pp0_iter3_reg;
        v2_0_addr_reg_540_pp0_iter5_reg <= v2_0_addr_reg_540_pp0_iter4_reg;
        v2_0_addr_reg_540_pp0_iter6_reg <= v2_0_addr_reg_540_pp0_iter5_reg;
        v2_0_addr_reg_540_pp0_iter7_reg <= v2_0_addr_reg_540_pp0_iter6_reg;
        v2_0_addr_reg_540_pp0_iter8_reg <= v2_0_addr_reg_540_pp0_iter7_reg;
        v2_0_addr_reg_540_pp0_iter9_reg <= v2_0_addr_reg_540_pp0_iter8_reg;
        v2_1_addr_reg_566_pp0_iter10_reg <= v2_1_addr_reg_566_pp0_iter9_reg;
        v2_1_addr_reg_566_pp0_iter11_reg <= v2_1_addr_reg_566_pp0_iter10_reg;
        v2_1_addr_reg_566_pp0_iter12_reg <= v2_1_addr_reg_566_pp0_iter11_reg;
        v2_1_addr_reg_566_pp0_iter2_reg <= v2_1_addr_reg_566_pp0_iter1_reg;
        v2_1_addr_reg_566_pp0_iter3_reg <= v2_1_addr_reg_566_pp0_iter2_reg;
        v2_1_addr_reg_566_pp0_iter4_reg <= v2_1_addr_reg_566_pp0_iter3_reg;
        v2_1_addr_reg_566_pp0_iter5_reg <= v2_1_addr_reg_566_pp0_iter4_reg;
        v2_1_addr_reg_566_pp0_iter6_reg <= v2_1_addr_reg_566_pp0_iter5_reg;
        v2_1_addr_reg_566_pp0_iter7_reg <= v2_1_addr_reg_566_pp0_iter6_reg;
        v2_1_addr_reg_566_pp0_iter8_reg <= v2_1_addr_reg_566_pp0_iter7_reg;
        v2_1_addr_reg_566_pp0_iter9_reg <= v2_1_addr_reg_566_pp0_iter8_reg;
        v2_2_addr_reg_588_pp0_iter10_reg <= v2_2_addr_reg_588_pp0_iter9_reg;
        v2_2_addr_reg_588_pp0_iter11_reg <= v2_2_addr_reg_588_pp0_iter10_reg;
        v2_2_addr_reg_588_pp0_iter12_reg <= v2_2_addr_reg_588_pp0_iter11_reg;
        v2_2_addr_reg_588_pp0_iter2_reg <= v2_2_addr_reg_588_pp0_iter1_reg;
        v2_2_addr_reg_588_pp0_iter3_reg <= v2_2_addr_reg_588_pp0_iter2_reg;
        v2_2_addr_reg_588_pp0_iter4_reg <= v2_2_addr_reg_588_pp0_iter3_reg;
        v2_2_addr_reg_588_pp0_iter5_reg <= v2_2_addr_reg_588_pp0_iter4_reg;
        v2_2_addr_reg_588_pp0_iter6_reg <= v2_2_addr_reg_588_pp0_iter5_reg;
        v2_2_addr_reg_588_pp0_iter7_reg <= v2_2_addr_reg_588_pp0_iter6_reg;
        v2_2_addr_reg_588_pp0_iter8_reg <= v2_2_addr_reg_588_pp0_iter7_reg;
        v2_2_addr_reg_588_pp0_iter9_reg <= v2_2_addr_reg_588_pp0_iter8_reg;
        v2_3_addr_reg_610_pp0_iter10_reg <= v2_3_addr_reg_610_pp0_iter9_reg;
        v2_3_addr_reg_610_pp0_iter11_reg <= v2_3_addr_reg_610_pp0_iter10_reg;
        v2_3_addr_reg_610_pp0_iter12_reg <= v2_3_addr_reg_610_pp0_iter11_reg;
        v2_3_addr_reg_610_pp0_iter2_reg <= v2_3_addr_reg_610_pp0_iter1_reg;
        v2_3_addr_reg_610_pp0_iter3_reg <= v2_3_addr_reg_610_pp0_iter2_reg;
        v2_3_addr_reg_610_pp0_iter4_reg <= v2_3_addr_reg_610_pp0_iter3_reg;
        v2_3_addr_reg_610_pp0_iter5_reg <= v2_3_addr_reg_610_pp0_iter4_reg;
        v2_3_addr_reg_610_pp0_iter6_reg <= v2_3_addr_reg_610_pp0_iter5_reg;
        v2_3_addr_reg_610_pp0_iter7_reg <= v2_3_addr_reg_610_pp0_iter6_reg;
        v2_3_addr_reg_610_pp0_iter8_reg <= v2_3_addr_reg_610_pp0_iter7_reg;
        v2_3_addr_reg_610_pp0_iter9_reg <= v2_3_addr_reg_610_pp0_iter8_reg;
        v2_4_addr_reg_546_pp0_iter10_reg <= v2_4_addr_reg_546_pp0_iter9_reg;
        v2_4_addr_reg_546_pp0_iter11_reg <= v2_4_addr_reg_546_pp0_iter10_reg;
        v2_4_addr_reg_546_pp0_iter12_reg <= v2_4_addr_reg_546_pp0_iter11_reg;
        v2_4_addr_reg_546_pp0_iter2_reg <= v2_4_addr_reg_546_pp0_iter1_reg;
        v2_4_addr_reg_546_pp0_iter3_reg <= v2_4_addr_reg_546_pp0_iter2_reg;
        v2_4_addr_reg_546_pp0_iter4_reg <= v2_4_addr_reg_546_pp0_iter3_reg;
        v2_4_addr_reg_546_pp0_iter5_reg <= v2_4_addr_reg_546_pp0_iter4_reg;
        v2_4_addr_reg_546_pp0_iter6_reg <= v2_4_addr_reg_546_pp0_iter5_reg;
        v2_4_addr_reg_546_pp0_iter7_reg <= v2_4_addr_reg_546_pp0_iter6_reg;
        v2_4_addr_reg_546_pp0_iter8_reg <= v2_4_addr_reg_546_pp0_iter7_reg;
        v2_4_addr_reg_546_pp0_iter9_reg <= v2_4_addr_reg_546_pp0_iter8_reg;
        v2_5_addr_reg_572_pp0_iter10_reg <= v2_5_addr_reg_572_pp0_iter9_reg;
        v2_5_addr_reg_572_pp0_iter11_reg <= v2_5_addr_reg_572_pp0_iter10_reg;
        v2_5_addr_reg_572_pp0_iter12_reg <= v2_5_addr_reg_572_pp0_iter11_reg;
        v2_5_addr_reg_572_pp0_iter2_reg <= v2_5_addr_reg_572_pp0_iter1_reg;
        v2_5_addr_reg_572_pp0_iter3_reg <= v2_5_addr_reg_572_pp0_iter2_reg;
        v2_5_addr_reg_572_pp0_iter4_reg <= v2_5_addr_reg_572_pp0_iter3_reg;
        v2_5_addr_reg_572_pp0_iter5_reg <= v2_5_addr_reg_572_pp0_iter4_reg;
        v2_5_addr_reg_572_pp0_iter6_reg <= v2_5_addr_reg_572_pp0_iter5_reg;
        v2_5_addr_reg_572_pp0_iter7_reg <= v2_5_addr_reg_572_pp0_iter6_reg;
        v2_5_addr_reg_572_pp0_iter8_reg <= v2_5_addr_reg_572_pp0_iter7_reg;
        v2_5_addr_reg_572_pp0_iter9_reg <= v2_5_addr_reg_572_pp0_iter8_reg;
        v2_6_addr_reg_594_pp0_iter10_reg <= v2_6_addr_reg_594_pp0_iter9_reg;
        v2_6_addr_reg_594_pp0_iter11_reg <= v2_6_addr_reg_594_pp0_iter10_reg;
        v2_6_addr_reg_594_pp0_iter12_reg <= v2_6_addr_reg_594_pp0_iter11_reg;
        v2_6_addr_reg_594_pp0_iter2_reg <= v2_6_addr_reg_594_pp0_iter1_reg;
        v2_6_addr_reg_594_pp0_iter3_reg <= v2_6_addr_reg_594_pp0_iter2_reg;
        v2_6_addr_reg_594_pp0_iter4_reg <= v2_6_addr_reg_594_pp0_iter3_reg;
        v2_6_addr_reg_594_pp0_iter5_reg <= v2_6_addr_reg_594_pp0_iter4_reg;
        v2_6_addr_reg_594_pp0_iter6_reg <= v2_6_addr_reg_594_pp0_iter5_reg;
        v2_6_addr_reg_594_pp0_iter7_reg <= v2_6_addr_reg_594_pp0_iter6_reg;
        v2_6_addr_reg_594_pp0_iter8_reg <= v2_6_addr_reg_594_pp0_iter7_reg;
        v2_6_addr_reg_594_pp0_iter9_reg <= v2_6_addr_reg_594_pp0_iter8_reg;
        v2_7_addr_reg_616_pp0_iter10_reg <= v2_7_addr_reg_616_pp0_iter9_reg;
        v2_7_addr_reg_616_pp0_iter11_reg <= v2_7_addr_reg_616_pp0_iter10_reg;
        v2_7_addr_reg_616_pp0_iter12_reg <= v2_7_addr_reg_616_pp0_iter11_reg;
        v2_7_addr_reg_616_pp0_iter2_reg <= v2_7_addr_reg_616_pp0_iter1_reg;
        v2_7_addr_reg_616_pp0_iter3_reg <= v2_7_addr_reg_616_pp0_iter2_reg;
        v2_7_addr_reg_616_pp0_iter4_reg <= v2_7_addr_reg_616_pp0_iter3_reg;
        v2_7_addr_reg_616_pp0_iter5_reg <= v2_7_addr_reg_616_pp0_iter4_reg;
        v2_7_addr_reg_616_pp0_iter6_reg <= v2_7_addr_reg_616_pp0_iter5_reg;
        v2_7_addr_reg_616_pp0_iter7_reg <= v2_7_addr_reg_616_pp0_iter6_reg;
        v2_7_addr_reg_616_pp0_iter8_reg <= v2_7_addr_reg_616_pp0_iter7_reg;
        v2_7_addr_reg_616_pp0_iter9_reg <= v2_7_addr_reg_616_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln57_reg_528 <= icmp_ln57_fu_396_p2;
        icmp_ln57_reg_528_pp0_iter1_reg <= icmp_ln57_reg_528;
        icmp_ln60_reg_552 <= icmp_ln60_fu_402_p2;
        icmp_ln60_reg_552_pp0_iter1_reg <= icmp_ln60_reg_552;
        v26_1_reg_627 <= v26_1_fu_426_p3;
        v26_2_reg_632 <= v26_2_fu_433_p3;
        v26_3_reg_637 <= v26_3_fu_440_p3;
        v26_reg_622 <= v26_fu_419_p3;
        v2_0_addr_reg_540 <= zext_ln55_fu_376_p1;
        v2_0_addr_reg_540_pp0_iter1_reg <= v2_0_addr_reg_540;
        v2_1_addr_reg_566 <= zext_ln55_fu_376_p1;
        v2_1_addr_reg_566_pp0_iter1_reg <= v2_1_addr_reg_566;
        v2_2_addr_reg_588 <= zext_ln55_fu_376_p1;
        v2_2_addr_reg_588_pp0_iter1_reg <= v2_2_addr_reg_588;
        v2_3_addr_reg_610 <= zext_ln55_fu_376_p1;
        v2_3_addr_reg_610_pp0_iter1_reg <= v2_3_addr_reg_610;
        v2_4_addr_reg_546 <= zext_ln55_fu_376_p1;
        v2_4_addr_reg_546_pp0_iter1_reg <= v2_4_addr_reg_546;
        v2_5_addr_reg_572 <= zext_ln55_fu_376_p1;
        v2_5_addr_reg_572_pp0_iter1_reg <= v2_5_addr_reg_572;
        v2_6_addr_reg_594 <= zext_ln55_fu_376_p1;
        v2_6_addr_reg_594_pp0_iter1_reg <= v2_6_addr_reg_594;
        v2_7_addr_reg_616 <= zext_ln55_fu_376_p1;
        v2_7_addr_reg_616_pp0_iter1_reg <= v2_7_addr_reg_616;
    end
end
always @ (*) begin
    if (((tmp_fu_354_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_1 = v25_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd1))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd1))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_4_ce1_local = 1'b1;
    end else begin
        v2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd0))) begin
        v2_4_we0_local = 1'b1;
    end else begin
        v2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_5_ce1_local = 1'b1;
    end else begin
        v2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd0))) begin
        v2_5_we0_local = 1'b1;
    end else begin
        v2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_6_ce1_local = 1'b1;
    end else begin
        v2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd0))) begin
        v2_6_we0_local = 1'b1;
    end else begin
        v2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_7_ce1_local = 1'b1;
    end else begin
        v2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_552_pp0_iter12_reg == 1'd0))) begin
        v2_7_we0_local = 1'b1;
    end else begin
        v2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_408_p2 = (ap_sig_allocacmp_v25_1 + 11'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_1_fu_495_p1 = grp_fu_314_p2;
assign bitcast_ln60_2_fu_499_p1 = grp_fu_318_p2;
assign bitcast_ln60_3_fu_503_p1 = grp_fu_322_p2;
assign bitcast_ln60_fu_491_p1 = grp_fu_223_p_dout0;
assign grp_fu_223_p_ce = 1'b1;
assign grp_fu_223_p_din0 = v28_fu_475_p1;
assign grp_fu_223_p_din1 = v27_reg_642;
assign grp_fu_223_p_opcode = 2'd0;
assign grp_fu_314_p0 = select_ln58_1_reg_657;
assign grp_fu_318_p0 = select_ln58_2_reg_667;
assign grp_fu_322_p0 = select_ln58_3_reg_677;
assign grp_fu_408_p_ce = 1'b1;
assign grp_fu_408_p_din0 = v26_reg_622;
assign grp_fu_408_p_din1 = 32'd3345637376;
assign icmp_ln57_fu_396_p2 = ((trunc_ln55_fu_362_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln60_fu_402_p2 = ((trunc_ln55_fu_362_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_366_p4 = {{ap_sig_allocacmp_v25_1[9:3]}};
assign select_ln58_1_fu_454_p3 = ((icmp_ln57_reg_528_pp0_iter4_reg[0:0] == 1'b1) ? v2_5_q1 : v2_1_q1);
assign select_ln58_2_fu_461_p3 = ((icmp_ln57_reg_528_pp0_iter4_reg[0:0] == 1'b1) ? v2_6_q1 : v2_2_q1);
assign select_ln58_3_fu_468_p3 = ((icmp_ln57_reg_528_pp0_iter4_reg[0:0] == 1'b1) ? v2_7_q1 : v2_3_q1);
assign select_ln58_fu_447_p3 = ((icmp_ln57_reg_528_pp0_iter4_reg[0:0] == 1'b1) ? v2_4_q1 : v2_0_q1);
assign tmp_fu_354_p3 = ap_sig_allocacmp_v25_1[32'd10];
assign trunc_ln55_fu_362_p1 = ap_sig_allocacmp_v25_1[2:0];
assign v26_1_fu_426_p3 = ((icmp_ln57_reg_528[0:0] == 1'b1) ? v3_5_q0 : v3_1_q0);
assign v26_2_fu_433_p3 = ((icmp_ln57_reg_528[0:0] == 1'b1) ? v3_6_q0 : v3_2_q0);
assign v26_3_fu_440_p3 = ((icmp_ln57_reg_528[0:0] == 1'b1) ? v3_7_q0 : v3_3_q0);
assign v26_fu_419_p3 = ((icmp_ln57_reg_528[0:0] == 1'b1) ? v3_4_q0 : v3_q0);
assign v28_fu_475_p1 = select_ln58_reg_647;
assign v2_0_address0 = v2_0_addr_reg_540_pp0_iter12_reg;
assign v2_0_address1 = v2_0_addr_reg_540_pp0_iter3_reg;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_reg_702;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_566_pp0_iter12_reg;
assign v2_1_address1 = v2_1_addr_reg_566_pp0_iter3_reg;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_1_reg_708;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_588_pp0_iter12_reg;
assign v2_2_address1 = v2_2_addr_reg_588_pp0_iter3_reg;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_2_reg_714;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_610_pp0_iter12_reg;
assign v2_3_address1 = v2_3_addr_reg_610_pp0_iter3_reg;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_3_reg_720;
assign v2_3_we0 = v2_3_we0_local;
assign v2_4_address0 = v2_4_addr_reg_546_pp0_iter12_reg;
assign v2_4_address1 = v2_4_addr_reg_546_pp0_iter3_reg;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_ce1 = v2_4_ce1_local;
assign v2_4_d0 = bitcast_ln60_reg_702;
assign v2_4_we0 = v2_4_we0_local;
assign v2_5_address0 = v2_5_addr_reg_572_pp0_iter12_reg;
assign v2_5_address1 = v2_5_addr_reg_572_pp0_iter3_reg;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_ce1 = v2_5_ce1_local;
assign v2_5_d0 = bitcast_ln60_1_reg_708;
assign v2_5_we0 = v2_5_we0_local;
assign v2_6_address0 = v2_6_addr_reg_594_pp0_iter12_reg;
assign v2_6_address1 = v2_6_addr_reg_594_pp0_iter3_reg;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_ce1 = v2_6_ce1_local;
assign v2_6_d0 = bitcast_ln60_2_reg_714;
assign v2_6_we0 = v2_6_we0_local;
assign v2_7_address0 = v2_7_addr_reg_616_pp0_iter12_reg;
assign v2_7_address1 = v2_7_addr_reg_616_pp0_iter3_reg;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_ce1 = v2_7_ce1_local;
assign v2_7_d0 = bitcast_ln60_3_reg_720;
assign v2_7_we0 = v2_7_we0_local;
assign v3_1_address0 = zext_ln55_fu_376_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_fu_376_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_fu_376_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_fu_376_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_fu_376_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_fu_376_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_fu_376_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_fu_376_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_fu_376_p1 = lshr_ln2_fu_366_p4;
endmodule 