module SgdLR_sw_SgdLR_sw_Pipeline_label_311 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,v5_2,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v22_2,grp_fu_2623_p_din0,grp_fu_2623_p_din1,grp_fu_2623_p_dout0,grp_fu_2623_p_ce,grp_fu_2627_p_din0,grp_fu_2627_p_din1,grp_fu_2627_p_dout0,grp_fu_2627_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [12:0] v5_2;
output  [20:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [20:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [20:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [20:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [20:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [20:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [20:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [20:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
input  [31:0] v22_2;
output  [31:0] grp_fu_2623_p_din0;
output  [31:0] grp_fu_2623_p_din1;
input  [31:0] grp_fu_2623_p_dout0;
output   grp_fu_2623_p_ce;
output  [31:0] grp_fu_2627_p_din0;
output  [31:0] grp_fu_2627_p_din1;
input  [31:0] grp_fu_2627_p_dout0;
output   grp_fu_2627_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_729;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_368;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_374;
reg   [10:0] v19_reg_723;
wire   [22:0] add_ln51_8_fu_406_p3;
reg   [22:0] add_ln51_8_reg_733;
reg   [22:0] add_ln51_8_reg_733_pp0_iter1_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter2_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter3_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter4_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter5_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter6_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter7_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter8_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter9_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter10_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter11_reg;
reg   [22:0] add_ln51_8_reg_733_pp0_iter12_reg;
wire   [22:0] add_ln51_9_fu_430_p4;
reg   [22:0] add_ln51_9_reg_739;
reg   [22:0] add_ln51_9_reg_739_pp0_iter1_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter2_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter3_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter4_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter5_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter6_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter7_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter8_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter9_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter10_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter11_reg;
reg   [22:0] add_ln51_9_reg_739_pp0_iter12_reg;
wire   [7:0] lshr_ln48_2_fu_446_p4;
reg   [7:0] lshr_ln48_2_reg_745;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter1_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter2_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter3_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter4_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter5_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter6_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter7_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter8_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter9_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter10_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter11_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter12_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter13_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter14_reg;
reg   [7:0] lshr_ln48_2_reg_745_pp0_iter15_reg;
wire   [22:0] add_ln51_s_fu_455_p4;
reg   [22:0] add_ln51_s_reg_750;
reg   [22:0] add_ln51_s_reg_750_pp0_iter1_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter2_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter3_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter4_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter5_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter6_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter7_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter8_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter9_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter10_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter11_reg;
reg   [22:0] add_ln51_s_reg_750_pp0_iter12_reg;
wire   [22:0] add_ln51_4_fu_470_p4;
reg   [22:0] add_ln51_4_reg_756;
reg   [22:0] add_ln51_4_reg_756_pp0_iter1_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter2_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter3_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter4_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter5_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter6_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter7_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter8_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter9_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter10_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter11_reg;
reg   [22:0] add_ln51_4_reg_756_pp0_iter12_reg;
reg   [1:0] trunc_ln51_8_reg_762;
reg   [1:0] trunc_ln51_9_reg_767;
reg   [1:0] trunc_ln51_s_reg_812;
reg   [1:0] trunc_ln51_10_reg_817;
wire   [31:0] v23_8_fu_543_p11;
reg   [31:0] v23_8_reg_822;
wire   [31:0] v23_9_fu_582_p11;
reg   [31:0] v23_9_reg_827;
wire   [31:0] v23_fu_637_p11;
reg   [31:0] v23_reg_872;
wire   [31:0] v23_19_fu_676_p11;
reg   [31:0] v23_19_reg_877;
wire   [63:0] zext_ln48_fu_699_p1;
reg   [63:0] zext_ln48_reg_882;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_8_fu_503_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_9_fu_511_p1;
wire   [63:0] zext_ln51_10_fu_605_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_11_fu_613_p1;
reg   [10:0] v19_2_fu_98;
wire   [10:0] add_ln47_fu_485_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19;
reg    v0_0_ce1_local;
reg   [20:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [20:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [20:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [20:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [20:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [20:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [20:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [20:0] v0_3_address0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg   [31:0] grp_fu_330_p1;
reg   [31:0] grp_fu_334_p1;
reg   [22:0] grp_fu_338_p0;
wire   [46:0] zext_ln51_fu_495_p1;
wire   [46:0] zext_ln51_32_fu_519_p1;
wire   [24:0] grp_fu_338_p1;
reg   [22:0] grp_fu_343_p0;
wire   [46:0] zext_ln51_31_fu_499_p1;
wire   [46:0] zext_ln51_33_fu_523_p1;
wire   [24:0] grp_fu_343_p1;
wire   [46:0] grp_fu_338_p2;
wire   [46:0] grp_fu_343_p2;
wire   [11:0] tmp_5_fu_396_p4;
wire   [22:0] grp_fu_414_p0;
wire   [21:0] grp_fu_414_p1;
wire   [8:0] tmp_s_fu_420_p4;
wire   [22:0] grp_fu_440_p0;
wire   [21:0] grp_fu_440_p1;
wire   [22:0] grp_fu_464_p0;
wire   [21:0] grp_fu_464_p1;
wire   [22:0] grp_fu_479_p0;
wire   [21:0] grp_fu_479_p1;
wire   [22:0] grp_fu_414_p2;
wire   [22:0] grp_fu_440_p2;
wire   [31:0] v23_8_fu_543_p2;
wire   [31:0] v23_8_fu_543_p4;
wire   [31:0] v23_8_fu_543_p6;
wire   [31:0] v23_8_fu_543_p8;
wire   [31:0] v23_8_fu_543_p9;
wire   [31:0] v23_9_fu_582_p2;
wire   [31:0] v23_9_fu_582_p4;
wire   [31:0] v23_9_fu_582_p6;
wire   [31:0] v23_9_fu_582_p8;
wire   [31:0] v23_9_fu_582_p9;
wire   [22:0] grp_fu_464_p2;
wire   [22:0] grp_fu_479_p2;
wire   [31:0] v23_fu_637_p2;
wire   [31:0] v23_fu_637_p4;
wire   [31:0] v23_fu_637_p6;
wire   [31:0] v23_fu_637_p8;
wire   [31:0] v23_fu_637_p9;
wire   [31:0] v23_19_fu_676_p2;
wire   [31:0] v23_19_fu_676_p4;
wire   [31:0] v23_19_fu_676_p6;
wire   [31:0] v23_19_fu_676_p8;
wire   [31:0] v23_19_fu_676_p9;
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
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v23_8_fu_543_p1;
wire   [1:0] v23_8_fu_543_p3;
wire  signed [1:0] v23_8_fu_543_p5;
wire  signed [1:0] v23_8_fu_543_p7;
wire   [1:0] v23_9_fu_582_p1;
wire   [1:0] v23_9_fu_582_p3;
wire  signed [1:0] v23_9_fu_582_p5;
wire  signed [1:0] v23_9_fu_582_p7;
wire   [1:0] v23_fu_637_p1;
wire   [1:0] v23_fu_637_p3;
wire  signed [1:0] v23_fu_637_p5;
wire  signed [1:0] v23_fu_637_p7;
wire   [1:0] v23_19_fu_676_p1;
wire   [1:0] v23_19_fu_676_p3;
wire  signed [1:0] v23_19_fu_676_p5;
wire  signed [1:0] v23_19_fu_676_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_2_fu_98 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U265(.din0(grp_fu_338_p0),.din1(grp_fu_338_p1),.dout(grp_fu_338_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U266(.din0(grp_fu_343_p0),.din1(grp_fu_343_p1),.dout(grp_fu_343_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_414_p0),.din1(grp_fu_414_p1),.ce(1'b1),.dout(grp_fu_414_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_440_p0),.din1(grp_fu_440_p1),.ce(1'b1),.dout(grp_fu_440_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_464_p0),.din1(grp_fu_464_p1),.ce(1'b1),.dout(grp_fu_464_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_479_p0),.din1(grp_fu_479_p1),.ce(1'b1),.dout(grp_fu_479_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U271(.din0(v23_8_fu_543_p2),.din1(v23_8_fu_543_p4),.din2(v23_8_fu_543_p6),.din3(v23_8_fu_543_p8),.def(v23_8_fu_543_p9),.sel(trunc_ln51_8_reg_762),.dout(v23_8_fu_543_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U272(.din0(v23_9_fu_582_p2),.din1(v23_9_fu_582_p4),.din2(v23_9_fu_582_p6),.din3(v23_9_fu_582_p8),.def(v23_9_fu_582_p9),.sel(trunc_ln51_9_reg_767),.dout(v23_9_fu_582_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U273(.din0(v23_fu_637_p2),.din1(v23_fu_637_p4),.din2(v23_fu_637_p6),.din3(v23_fu_637_p8),.def(v23_fu_637_p9),.sel(trunc_ln51_s_reg_812),.dout(v23_fu_637_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U274(.din0(v23_19_fu_676_p2),.din1(v23_19_fu_676_p4),.din2(v23_19_fu_676_p6),.din3(v23_19_fu_676_p8),.def(v23_19_fu_676_p9),.sel(trunc_ln51_10_reg_817),.dout(v23_19_fu_676_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_2_fu_98 <= 11'd0;
    end else if (((tmp_reg_729 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_2_fu_98 <= add_ln47_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_4_reg_756[22 : 2] <= add_ln51_4_fu_470_p4[22 : 2];
        add_ln51_4_reg_756_pp0_iter10_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter9_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter11_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter10_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter12_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter11_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter1_reg[22 : 2] <= add_ln51_4_reg_756[22 : 2];
        add_ln51_4_reg_756_pp0_iter2_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter1_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter3_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter2_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter4_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter3_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter5_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter4_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter6_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter5_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter7_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter6_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter8_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter7_reg[22 : 2];
        add_ln51_4_reg_756_pp0_iter9_reg[22 : 2] <= add_ln51_4_reg_756_pp0_iter8_reg[22 : 2];
        add_ln51_s_reg_750[22 : 2] <= add_ln51_s_fu_455_p4[22 : 2];
        add_ln51_s_reg_750_pp0_iter10_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter9_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter11_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter10_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter12_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter11_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter1_reg[22 : 2] <= add_ln51_s_reg_750[22 : 2];
        add_ln51_s_reg_750_pp0_iter2_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter1_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter3_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter2_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter4_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter3_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter5_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter4_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter6_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter5_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter7_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter6_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter8_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter7_reg[22 : 2];
        add_ln51_s_reg_750_pp0_iter9_reg[22 : 2] <= add_ln51_s_reg_750_pp0_iter8_reg[22 : 2];
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln48_2_reg_745 <= {{v19_reg_723[9:2]}};
        lshr_ln48_2_reg_745_pp0_iter10_reg <= lshr_ln48_2_reg_745_pp0_iter9_reg;
        lshr_ln48_2_reg_745_pp0_iter11_reg <= lshr_ln48_2_reg_745_pp0_iter10_reg;
        lshr_ln48_2_reg_745_pp0_iter12_reg <= lshr_ln48_2_reg_745_pp0_iter11_reg;
        lshr_ln48_2_reg_745_pp0_iter13_reg <= lshr_ln48_2_reg_745_pp0_iter12_reg;
        lshr_ln48_2_reg_745_pp0_iter14_reg <= lshr_ln48_2_reg_745_pp0_iter13_reg;
        lshr_ln48_2_reg_745_pp0_iter15_reg <= lshr_ln48_2_reg_745_pp0_iter14_reg;
        lshr_ln48_2_reg_745_pp0_iter1_reg <= lshr_ln48_2_reg_745;
        lshr_ln48_2_reg_745_pp0_iter2_reg <= lshr_ln48_2_reg_745_pp0_iter1_reg;
        lshr_ln48_2_reg_745_pp0_iter3_reg <= lshr_ln48_2_reg_745_pp0_iter2_reg;
        lshr_ln48_2_reg_745_pp0_iter4_reg <= lshr_ln48_2_reg_745_pp0_iter3_reg;
        lshr_ln48_2_reg_745_pp0_iter5_reg <= lshr_ln48_2_reg_745_pp0_iter4_reg;
        lshr_ln48_2_reg_745_pp0_iter6_reg <= lshr_ln48_2_reg_745_pp0_iter5_reg;
        lshr_ln48_2_reg_745_pp0_iter7_reg <= lshr_ln48_2_reg_745_pp0_iter6_reg;
        lshr_ln48_2_reg_745_pp0_iter8_reg <= lshr_ln48_2_reg_745_pp0_iter7_reg;
        lshr_ln48_2_reg_745_pp0_iter9_reg <= lshr_ln48_2_reg_745_pp0_iter8_reg;
        v23_8_reg_822 <= v23_8_fu_543_p11;
        v23_9_reg_827 <= v23_9_fu_582_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln51_8_reg_733 <= add_ln51_8_fu_406_p3;
        add_ln51_8_reg_733_pp0_iter10_reg <= add_ln51_8_reg_733_pp0_iter9_reg;
        add_ln51_8_reg_733_pp0_iter11_reg <= add_ln51_8_reg_733_pp0_iter10_reg;
        add_ln51_8_reg_733_pp0_iter12_reg <= add_ln51_8_reg_733_pp0_iter11_reg;
        add_ln51_8_reg_733_pp0_iter1_reg <= add_ln51_8_reg_733;
        add_ln51_8_reg_733_pp0_iter2_reg <= add_ln51_8_reg_733_pp0_iter1_reg;
        add_ln51_8_reg_733_pp0_iter3_reg <= add_ln51_8_reg_733_pp0_iter2_reg;
        add_ln51_8_reg_733_pp0_iter4_reg <= add_ln51_8_reg_733_pp0_iter3_reg;
        add_ln51_8_reg_733_pp0_iter5_reg <= add_ln51_8_reg_733_pp0_iter4_reg;
        add_ln51_8_reg_733_pp0_iter6_reg <= add_ln51_8_reg_733_pp0_iter5_reg;
        add_ln51_8_reg_733_pp0_iter7_reg <= add_ln51_8_reg_733_pp0_iter6_reg;
        add_ln51_8_reg_733_pp0_iter8_reg <= add_ln51_8_reg_733_pp0_iter7_reg;
        add_ln51_8_reg_733_pp0_iter9_reg <= add_ln51_8_reg_733_pp0_iter8_reg;
        add_ln51_9_reg_739[22 : 1] <= add_ln51_9_fu_430_p4[22 : 1];
        add_ln51_9_reg_739_pp0_iter10_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter9_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter11_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter10_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter12_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter11_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter1_reg[22 : 1] <= add_ln51_9_reg_739[22 : 1];
        add_ln51_9_reg_739_pp0_iter2_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter1_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter3_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter2_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter4_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter3_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter5_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter4_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter6_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter5_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter7_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter6_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter8_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter7_reg[22 : 1];
        add_ln51_9_reg_739_pp0_iter9_reg[22 : 1] <= add_ln51_9_reg_739_pp0_iter8_reg[22 : 1];
        tmp_reg_729 <= ap_sig_allocacmp_v19[32'd10];
        v19_reg_723 <= ap_sig_allocacmp_v19;
        v23_19_reg_877 <= v23_19_fu_676_p11;
        v23_reg_872 <= v23_fu_637_p11;
        zext_ln48_reg_882[7 : 0] <= zext_ln48_fu_699_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_368 <= grp_fu_2623_p_dout0;
        reg_374 <= grp_fu_2627_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln51_10_reg_817 <= {{grp_fu_343_p2[45:44]}};
        trunc_ln51_s_reg_812 <= {{grp_fu_338_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln51_8_reg_762 <= {{grp_fu_338_p2[45:44]}};
        trunc_ln51_9_reg_767 <= {{grp_fu_343_p2[45:44]}};
    end
end
always @ (*) begin
    if (((tmp_reg_729 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19 = v19_2_fu_98;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_330_p1 = v23_reg_872;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_330_p1 = v23_8_reg_822;
        end else begin
            grp_fu_330_p1 = 'bx;
        end
    end else begin
        grp_fu_330_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_334_p1 = v23_19_reg_877;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_334_p1 = v23_9_reg_827;
        end else begin
            grp_fu_334_p1 = 'bx;
        end
    end else begin
        grp_fu_334_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p0 = zext_ln51_32_fu_519_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_338_p0 = zext_ln51_fu_495_p1;
    end else begin
        grp_fu_338_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_343_p0 = zext_ln51_33_fu_523_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_343_p0 = zext_ln51_31_fu_499_p1;
    end else begin
        grp_fu_343_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln51_11_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln51_9_fu_511_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln51_10_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_8_fu_503_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address0_local = zext_ln51_11_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln51_9_fu_511_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln51_10_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_8_fu_503_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address0_local = zext_ln51_11_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address0_local = zext_ln51_9_fu_511_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address1_local = zext_ln51_10_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address1_local = zext_ln51_8_fu_503_p1;
        end else begin
            v0_2_address1_local = 'bx;
        end
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address0_local = zext_ln51_11_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address0_local = zext_ln51_9_fu_511_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address1_local = zext_ln51_10_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address1_local = zext_ln51_8_fu_503_p1;
        end else begin
            v0_3_address1_local = 'bx;
        end
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln47_fu_485_p2 = (v19_reg_723 + 11'd4);
assign add_ln51_4_fu_470_p4 = {{{v5_2}, {lshr_ln48_2_fu_446_p4}}, {2'd3}};
assign add_ln51_8_fu_406_p3 = {{tmp_5_fu_396_p4}, {ap_sig_allocacmp_v19}};
assign add_ln51_9_fu_430_p4 = {{{v5_2}, {tmp_s_fu_420_p4}}, {1'd1}};
assign add_ln51_s_fu_455_p4 = {{{v5_2}, {lshr_ln48_2_fu_446_p4}}, {2'd2}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_2623_p_ce = 1'b1;
assign grp_fu_2623_p_din0 = v22_2;
assign grp_fu_2623_p_din1 = grp_fu_330_p1;
assign grp_fu_2627_p_ce = 1'b1;
assign grp_fu_2627_p_din0 = v22_2;
assign grp_fu_2627_p_din1 = grp_fu_334_p1;
assign grp_fu_338_p1 = 47'd15270995;
assign grp_fu_343_p1 = 47'd15270995;
assign grp_fu_414_p0 = {{tmp_5_fu_396_p4}, {ap_sig_allocacmp_v19}};
assign grp_fu_414_p1 = 23'd1152000;
assign grp_fu_440_p0 = {{{v5_2}, {tmp_s_fu_420_p4}}, {1'd1}};
assign grp_fu_440_p1 = 23'd1152000;
assign grp_fu_464_p0 = {{{v5_2}, {lshr_ln48_2_fu_446_p4}}, {2'd2}};
assign grp_fu_464_p1 = 23'd1152000;
assign grp_fu_479_p0 = {{{v5_2}, {lshr_ln48_2_fu_446_p4}}, {2'd3}};
assign grp_fu_479_p1 = 23'd1152000;
assign lshr_ln48_2_fu_446_p4 = {{v19_reg_723[9:2]}};
assign tmp_5_fu_396_p4 = {{v5_2[12:1]}};
assign tmp_s_fu_420_p4 = {{ap_sig_allocacmp_v19[9:1]}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v23_19_fu_676_p2 = v0_0_q0;
assign v23_19_fu_676_p4 = v0_1_q0;
assign v23_19_fu_676_p6 = v0_2_q0;
assign v23_19_fu_676_p8 = v0_3_q0;
assign v23_19_fu_676_p9 = 'bx;
assign v23_8_fu_543_p2 = v0_0_q1;
assign v23_8_fu_543_p4 = v0_1_q1;
assign v23_8_fu_543_p6 = v0_2_q1;
assign v23_8_fu_543_p8 = v0_3_q1;
assign v23_8_fu_543_p9 = 'bx;
assign v23_9_fu_582_p2 = v0_0_q0;
assign v23_9_fu_582_p4 = v0_1_q0;
assign v23_9_fu_582_p6 = v0_2_q0;
assign v23_9_fu_582_p8 = v0_3_q0;
assign v23_9_fu_582_p9 = 'bx;
assign v23_fu_637_p2 = v0_0_q1;
assign v23_fu_637_p4 = v0_1_q1;
assign v23_fu_637_p6 = v0_2_q1;
assign v23_fu_637_p8 = v0_3_q1;
assign v23_fu_637_p9 = 'bx;
assign v3_1_address0 = zext_ln48_fu_699_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_374;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_reg_882;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_368;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_reg_882;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_374;
assign v3_3_we0 = v3_3_we0_local;
assign v3_address0 = zext_ln48_fu_699_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_368;
assign v3_we0 = v3_we0_local;
assign zext_ln48_fu_699_p1 = lshr_ln48_2_reg_745_pp0_iter15_reg;
assign zext_ln51_10_fu_605_p1 = grp_fu_464_p2;
assign zext_ln51_11_fu_613_p1 = grp_fu_479_p2;
assign zext_ln51_31_fu_499_p1 = add_ln51_9_reg_739_pp0_iter12_reg;
assign zext_ln51_32_fu_519_p1 = add_ln51_s_reg_750_pp0_iter12_reg;
assign zext_ln51_33_fu_523_p1 = add_ln51_4_reg_756_pp0_iter12_reg;
assign zext_ln51_8_fu_503_p1 = grp_fu_414_p2;
assign zext_ln51_9_fu_511_p1 = grp_fu_440_p2;
assign zext_ln51_fu_495_p1 = add_ln51_8_reg_733_pp0_iter12_reg;
always @ (posedge ap_clk) begin
    add_ln51_9_reg_739[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter7_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter8_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter9_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter10_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter11_reg[0] <= 1'b1;
    add_ln51_9_reg_739_pp0_iter12_reg[0] <= 1'b1;
    add_ln51_s_reg_750[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter7_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter8_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter9_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter10_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter11_reg[1:0] <= 2'b10;
    add_ln51_s_reg_750_pp0_iter12_reg[1:0] <= 2'b10;
    add_ln51_4_reg_756[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter7_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter8_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter9_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter10_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter11_reg[1:0] <= 2'b11;
    add_ln51_4_reg_756_pp0_iter12_reg[1:0] <= 2'b11;
    zext_ln48_reg_882[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 