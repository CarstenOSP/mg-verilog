module SgdLR_sw_SgdLR_sw_Pipeline_label_32 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,zext_ln33_1,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v22_1,tmp_11,grp_fu_836_p_din0,grp_fu_836_p_din1,grp_fu_836_p_dout0,grp_fu_836_p_ce,grp_fu_840_p_din0,grp_fu_840_p_din1,grp_fu_840_p_dout0,grp_fu_840_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [8:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [22:0] zext_ln33_1;
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
input  [31:0] v22_1;
input  [11:0] tmp_11;
output  [31:0] grp_fu_836_p_din0;
output  [31:0] grp_fu_836_p_din1;
input  [31:0] grp_fu_836_p_dout0;
output   grp_fu_836_p_ce;
output  [31:0] grp_fu_840_p_din0;
output  [31:0] grp_fu_840_p_din1;
input  [31:0] grp_fu_840_p_dout0;
output   grp_fu_840_p_ce;
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
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_757;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_363;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_368;
wire   [23:0] zext_ln33_1_cast_fu_373_p1;
reg   [23:0] zext_ln33_1_cast_reg_746;
reg   [10:0] v19_reg_751;
wire   [8:0] lshr_ln48_1_fu_393_p4;
reg   [8:0] lshr_ln48_1_reg_761;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter1_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter2_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter3_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter4_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter5_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter6_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter7_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter8_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter9_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter10_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter11_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter12_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter13_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter14_reg;
reg   [8:0] lshr_ln48_1_reg_761_pp0_iter15_reg;
wire   [22:0] tmp_3_fu_403_p5;
reg   [22:0] tmp_3_reg_766;
reg   [22:0] tmp_3_reg_766_pp0_iter1_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter2_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter3_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter4_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter5_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter6_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter7_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter8_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter9_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter10_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter11_reg;
reg   [22:0] tmp_3_reg_766_pp0_iter12_reg;
wire   [7:0] tmp_s_fu_421_p4;
reg   [7:0] tmp_s_reg_772;
reg   [7:0] tmp_s_reg_772_pp0_iter1_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter2_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter3_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter4_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter5_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter6_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter7_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter8_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter9_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter10_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter11_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter12_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter13_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter14_reg;
reg   [7:0] tmp_s_reg_772_pp0_iter15_reg;
wire   [22:0] tmp_5_fu_431_p5;
reg   [22:0] tmp_5_reg_778;
reg   [22:0] tmp_5_reg_778_pp0_iter1_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter2_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter3_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter4_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter5_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter6_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter7_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter8_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter9_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter10_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter11_reg;
reg   [22:0] tmp_5_reg_778_pp0_iter12_reg;
wire   [23:0] add_ln51_fu_452_p2;
reg   [23:0] add_ln51_reg_784;
reg   [23:0] add_ln51_reg_784_pp0_iter1_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter2_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter3_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter4_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter5_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter6_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter7_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter8_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter9_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter10_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter11_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter12_reg;
reg   [23:0] add_ln51_reg_784_pp0_iter13_reg;
wire   [22:0] tmp_7_fu_463_p5;
reg   [22:0] tmp_7_reg_790;
reg   [22:0] tmp_7_reg_790_pp0_iter1_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter2_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter3_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter4_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter5_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter6_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter7_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter8_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter9_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter10_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter11_reg;
reg   [22:0] tmp_7_reg_790_pp0_iter12_reg;
reg   [1:0] trunc_ln51_5_reg_796;
reg   [1:0] trunc_ln51_6_reg_821;
reg   [1:0] trunc_ln51_7_reg_846;
wire   [31:0] v23_5_fu_543_p11;
reg   [31:0] v23_5_reg_851;
wire   [31:0] v23_6_fu_582_p11;
reg   [31:0] v23_6_reg_856;
wire   [23:0] grp_fu_457_p2;
reg   [23:0] urem_ln51_4_reg_881;
wire   [31:0] v23_fu_629_p11;
reg   [31:0] v23_reg_886;
reg   [1:0] trunc_ln51_4_reg_891;
wire   [31:0] v23_4_fu_689_p11;
reg   [31:0] v23_4_reg_916;
wire   [63:0] zext_ln48_fu_712_p1;
reg   [63:0] zext_ln48_reg_921;
reg   [63:0] zext_ln48_reg_921_pp0_iter17_reg;
wire   [63:0] zext_ln51_7_fu_723_p1;
reg   [63:0] zext_ln51_7_reg_926;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_6_fu_493_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_8_fu_501_p1;
wire   [63:0] zext_ln51_9_fu_605_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_5_fu_652_p1;
reg   [10:0] v19_1_fu_102;
wire   [10:0] add_ln47_fu_479_p2;
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
reg   [8:0] v3_address0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg   [8:0] v3_1_address0_local;
reg   [31:0] grp_fu_330_p1;
reg   [31:0] grp_fu_334_p1;
reg   [22:0] grp_fu_338_p0;
wire   [46:0] zext_ln51_17_fu_489_p1;
wire   [46:0] zext_ln51_18_fu_509_p1;
wire   [24:0] grp_fu_338_p1;
wire   [22:0] mul_ln51_fu_343_p0;
wire   [24:0] mul_ln51_fu_343_p1;
wire   [23:0] mul_ln51_4_fu_348_p0;
wire   [25:0] mul_ln51_4_fu_348_p1;
wire   [46:0] grp_fu_338_p2;
wire   [22:0] grp_fu_415_p0;
wire   [21:0] grp_fu_415_p1;
wire   [22:0] grp_fu_443_p0;
wire   [21:0] grp_fu_443_p1;
wire   [23:0] zext_ln47_fu_449_p1;
wire   [23:0] grp_fu_457_p0;
wire   [21:0] grp_fu_457_p1;
wire   [22:0] grp_fu_473_p0;
wire   [21:0] grp_fu_473_p1;
wire   [22:0] grp_fu_415_p2;
wire   [22:0] grp_fu_443_p2;
wire   [46:0] mul_ln51_fu_343_p2;
wire   [31:0] v23_5_fu_543_p2;
wire   [31:0] v23_5_fu_543_p4;
wire   [31:0] v23_5_fu_543_p6;
wire   [31:0] v23_5_fu_543_p8;
wire   [31:0] v23_5_fu_543_p9;
wire   [31:0] v23_6_fu_582_p2;
wire   [31:0] v23_6_fu_582_p4;
wire   [31:0] v23_6_fu_582_p6;
wire   [31:0] v23_6_fu_582_p8;
wire   [31:0] v23_6_fu_582_p9;
wire   [22:0] grp_fu_473_p2;
wire   [31:0] v23_fu_629_p2;
wire   [31:0] v23_fu_629_p4;
wire   [31:0] v23_fu_629_p6;
wire   [31:0] v23_fu_629_p8;
wire   [31:0] v23_fu_629_p9;
wire   [48:0] mul_ln51_4_fu_348_p2;
wire   [31:0] v23_4_fu_689_p2;
wire   [31:0] v23_4_fu_689_p4;
wire   [31:0] v23_4_fu_689_p6;
wire   [31:0] v23_4_fu_689_p8;
wire   [31:0] v23_4_fu_689_p9;
wire   [8:0] or_ln48_1_fu_716_p3;
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
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to17;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [48:0] mul_ln51_4_fu_348_p00;
wire   [46:0] mul_ln51_fu_343_p00;
wire   [1:0] v23_5_fu_543_p1;
wire   [1:0] v23_5_fu_543_p3;
wire  signed [1:0] v23_5_fu_543_p5;
wire  signed [1:0] v23_5_fu_543_p7;
wire   [1:0] v23_6_fu_582_p1;
wire   [1:0] v23_6_fu_582_p3;
wire  signed [1:0] v23_6_fu_582_p5;
wire  signed [1:0] v23_6_fu_582_p7;
wire   [1:0] v23_fu_629_p1;
wire   [1:0] v23_fu_629_p3;
wire  signed [1:0] v23_fu_629_p5;
wire  signed [1:0] v23_fu_629_p7;
wire   [1:0] v23_4_fu_689_p1;
wire   [1:0] v23_4_fu_689_p3;
wire  signed [1:0] v23_4_fu_689_p5;
wire  signed [1:0] v23_4_fu_689_p7;
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
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_1_fu_102 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U57(.din0(grp_fu_338_p0),.din1(grp_fu_338_p1),.dout(grp_fu_338_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U58(.din0(mul_ln51_fu_343_p0),.din1(mul_ln51_fu_343_p1),.dout(mul_ln51_fu_343_p2));
SgdLR_sw_mul_24ns_26ns_49_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 24 ),.din1_WIDTH( 26 ),.dout_WIDTH( 49 ))
mul_24ns_26ns_49_1_1_U59(.din0(mul_ln51_4_fu_348_p0),.din1(mul_ln51_4_fu_348_p1),.dout(mul_ln51_4_fu_348_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_415_p0),.din1(grp_fu_415_p1),.ce(1'b1),.dout(grp_fu_415_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_443_p0),.din1(grp_fu_443_p1),.ce(1'b1),.dout(grp_fu_443_p2));
SgdLR_sw_urem_24ns_22ns_24_28_1 #(.ID( 1 ),.NUM_STAGE( 28 ),.din0_WIDTH( 24 ),.din1_WIDTH( 22 ),.dout_WIDTH( 24 ))
urem_24ns_22ns_24_28_1_U62(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_457_p0),.din1(grp_fu_457_p1),.ce(1'b1),.dout(grp_fu_457_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U63(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_473_p0),.din1(grp_fu_473_p1),.ce(1'b1),.dout(grp_fu_473_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U64(.din0(v23_5_fu_543_p2),.din1(v23_5_fu_543_p4),.din2(v23_5_fu_543_p6),.din3(v23_5_fu_543_p8),.def(v23_5_fu_543_p9),.sel(trunc_ln51_5_reg_796),.dout(v23_5_fu_543_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U65(.din0(v23_6_fu_582_p2),.din1(v23_6_fu_582_p4),.din2(v23_6_fu_582_p6),.din3(v23_6_fu_582_p8),.def(v23_6_fu_582_p9),.sel(trunc_ln51_6_reg_821),.dout(v23_6_fu_582_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U66(.din0(v23_fu_629_p2),.din1(v23_fu_629_p4),.din2(v23_fu_629_p6),.din3(v23_fu_629_p8),.def(v23_fu_629_p9),.sel(trunc_ln51_7_reg_846),.dout(v23_fu_629_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U67(.din0(v23_4_fu_689_p2),.din1(v23_4_fu_689_p4),.din2(v23_4_fu_689_p6),.din3(v23_4_fu_689_p8),.def(v23_4_fu_689_p9),.sel(trunc_ln51_4_reg_891),.dout(v23_4_fu_689_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
        v19_1_fu_102 <= 11'd0;
    end else if (((tmp_reg_757 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_1_fu_102 <= add_ln47_fu_479_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_reg_784 <= add_ln51_fu_452_p2;
        add_ln51_reg_784_pp0_iter10_reg <= add_ln51_reg_784_pp0_iter9_reg;
        add_ln51_reg_784_pp0_iter11_reg <= add_ln51_reg_784_pp0_iter10_reg;
        add_ln51_reg_784_pp0_iter12_reg <= add_ln51_reg_784_pp0_iter11_reg;
        add_ln51_reg_784_pp0_iter13_reg <= add_ln51_reg_784_pp0_iter12_reg;
        add_ln51_reg_784_pp0_iter1_reg <= add_ln51_reg_784;
        add_ln51_reg_784_pp0_iter2_reg <= add_ln51_reg_784_pp0_iter1_reg;
        add_ln51_reg_784_pp0_iter3_reg <= add_ln51_reg_784_pp0_iter2_reg;
        add_ln51_reg_784_pp0_iter4_reg <= add_ln51_reg_784_pp0_iter3_reg;
        add_ln51_reg_784_pp0_iter5_reg <= add_ln51_reg_784_pp0_iter4_reg;
        add_ln51_reg_784_pp0_iter6_reg <= add_ln51_reg_784_pp0_iter5_reg;
        add_ln51_reg_784_pp0_iter7_reg <= add_ln51_reg_784_pp0_iter6_reg;
        add_ln51_reg_784_pp0_iter8_reg <= add_ln51_reg_784_pp0_iter7_reg;
        add_ln51_reg_784_pp0_iter9_reg <= add_ln51_reg_784_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        tmp_7_reg_790[9 : 2] <= tmp_7_fu_463_p5[9 : 2];
tmp_7_reg_790[22 : 11] <= tmp_7_fu_463_p5[22 : 11];
        tmp_7_reg_790_pp0_iter10_reg[9 : 2] <= tmp_7_reg_790_pp0_iter9_reg[9 : 2];
tmp_7_reg_790_pp0_iter10_reg[22 : 11] <= tmp_7_reg_790_pp0_iter9_reg[22 : 11];
        tmp_7_reg_790_pp0_iter11_reg[9 : 2] <= tmp_7_reg_790_pp0_iter10_reg[9 : 2];
tmp_7_reg_790_pp0_iter11_reg[22 : 11] <= tmp_7_reg_790_pp0_iter10_reg[22 : 11];
        tmp_7_reg_790_pp0_iter12_reg[9 : 2] <= tmp_7_reg_790_pp0_iter11_reg[9 : 2];
tmp_7_reg_790_pp0_iter12_reg[22 : 11] <= tmp_7_reg_790_pp0_iter11_reg[22 : 11];
        tmp_7_reg_790_pp0_iter1_reg[9 : 2] <= tmp_7_reg_790[9 : 2];
tmp_7_reg_790_pp0_iter1_reg[22 : 11] <= tmp_7_reg_790[22 : 11];
        tmp_7_reg_790_pp0_iter2_reg[9 : 2] <= tmp_7_reg_790_pp0_iter1_reg[9 : 2];
tmp_7_reg_790_pp0_iter2_reg[22 : 11] <= tmp_7_reg_790_pp0_iter1_reg[22 : 11];
        tmp_7_reg_790_pp0_iter3_reg[9 : 2] <= tmp_7_reg_790_pp0_iter2_reg[9 : 2];
tmp_7_reg_790_pp0_iter3_reg[22 : 11] <= tmp_7_reg_790_pp0_iter2_reg[22 : 11];
        tmp_7_reg_790_pp0_iter4_reg[9 : 2] <= tmp_7_reg_790_pp0_iter3_reg[9 : 2];
tmp_7_reg_790_pp0_iter4_reg[22 : 11] <= tmp_7_reg_790_pp0_iter3_reg[22 : 11];
        tmp_7_reg_790_pp0_iter5_reg[9 : 2] <= tmp_7_reg_790_pp0_iter4_reg[9 : 2];
tmp_7_reg_790_pp0_iter5_reg[22 : 11] <= tmp_7_reg_790_pp0_iter4_reg[22 : 11];
        tmp_7_reg_790_pp0_iter6_reg[9 : 2] <= tmp_7_reg_790_pp0_iter5_reg[9 : 2];
tmp_7_reg_790_pp0_iter6_reg[22 : 11] <= tmp_7_reg_790_pp0_iter5_reg[22 : 11];
        tmp_7_reg_790_pp0_iter7_reg[9 : 2] <= tmp_7_reg_790_pp0_iter6_reg[9 : 2];
tmp_7_reg_790_pp0_iter7_reg[22 : 11] <= tmp_7_reg_790_pp0_iter6_reg[22 : 11];
        tmp_7_reg_790_pp0_iter8_reg[9 : 2] <= tmp_7_reg_790_pp0_iter7_reg[9 : 2];
tmp_7_reg_790_pp0_iter8_reg[22 : 11] <= tmp_7_reg_790_pp0_iter7_reg[22 : 11];
        tmp_7_reg_790_pp0_iter9_reg[9 : 2] <= tmp_7_reg_790_pp0_iter8_reg[9 : 2];
tmp_7_reg_790_pp0_iter9_reg[22 : 11] <= tmp_7_reg_790_pp0_iter8_reg[22 : 11];
        trunc_ln51_4_reg_891 <= {{mul_ln51_4_fu_348_p2[46:45]}};
        v23_5_reg_851 <= v23_5_fu_543_p11;
        v23_6_reg_856 <= v23_6_fu_582_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_1_reg_761 <= {{ap_sig_allocacmp_v19[9:1]}};
        lshr_ln48_1_reg_761_pp0_iter10_reg <= lshr_ln48_1_reg_761_pp0_iter9_reg;
        lshr_ln48_1_reg_761_pp0_iter11_reg <= lshr_ln48_1_reg_761_pp0_iter10_reg;
        lshr_ln48_1_reg_761_pp0_iter12_reg <= lshr_ln48_1_reg_761_pp0_iter11_reg;
        lshr_ln48_1_reg_761_pp0_iter13_reg <= lshr_ln48_1_reg_761_pp0_iter12_reg;
        lshr_ln48_1_reg_761_pp0_iter14_reg <= lshr_ln48_1_reg_761_pp0_iter13_reg;
        lshr_ln48_1_reg_761_pp0_iter15_reg <= lshr_ln48_1_reg_761_pp0_iter14_reg;
        lshr_ln48_1_reg_761_pp0_iter1_reg <= lshr_ln48_1_reg_761;
        lshr_ln48_1_reg_761_pp0_iter2_reg <= lshr_ln48_1_reg_761_pp0_iter1_reg;
        lshr_ln48_1_reg_761_pp0_iter3_reg <= lshr_ln48_1_reg_761_pp0_iter2_reg;
        lshr_ln48_1_reg_761_pp0_iter4_reg <= lshr_ln48_1_reg_761_pp0_iter3_reg;
        lshr_ln48_1_reg_761_pp0_iter5_reg <= lshr_ln48_1_reg_761_pp0_iter4_reg;
        lshr_ln48_1_reg_761_pp0_iter6_reg <= lshr_ln48_1_reg_761_pp0_iter5_reg;
        lshr_ln48_1_reg_761_pp0_iter7_reg <= lshr_ln48_1_reg_761_pp0_iter6_reg;
        lshr_ln48_1_reg_761_pp0_iter8_reg <= lshr_ln48_1_reg_761_pp0_iter7_reg;
        lshr_ln48_1_reg_761_pp0_iter9_reg <= lshr_ln48_1_reg_761_pp0_iter8_reg;
        tmp_3_reg_766[9 : 1] <= tmp_3_fu_403_p5[9 : 1];
tmp_3_reg_766[22 : 11] <= tmp_3_fu_403_p5[22 : 11];
        tmp_3_reg_766_pp0_iter10_reg[9 : 1] <= tmp_3_reg_766_pp0_iter9_reg[9 : 1];
tmp_3_reg_766_pp0_iter10_reg[22 : 11] <= tmp_3_reg_766_pp0_iter9_reg[22 : 11];
        tmp_3_reg_766_pp0_iter11_reg[9 : 1] <= tmp_3_reg_766_pp0_iter10_reg[9 : 1];
tmp_3_reg_766_pp0_iter11_reg[22 : 11] <= tmp_3_reg_766_pp0_iter10_reg[22 : 11];
        tmp_3_reg_766_pp0_iter12_reg[9 : 1] <= tmp_3_reg_766_pp0_iter11_reg[9 : 1];
tmp_3_reg_766_pp0_iter12_reg[22 : 11] <= tmp_3_reg_766_pp0_iter11_reg[22 : 11];
        tmp_3_reg_766_pp0_iter1_reg[9 : 1] <= tmp_3_reg_766[9 : 1];
tmp_3_reg_766_pp0_iter1_reg[22 : 11] <= tmp_3_reg_766[22 : 11];
        tmp_3_reg_766_pp0_iter2_reg[9 : 1] <= tmp_3_reg_766_pp0_iter1_reg[9 : 1];
tmp_3_reg_766_pp0_iter2_reg[22 : 11] <= tmp_3_reg_766_pp0_iter1_reg[22 : 11];
        tmp_3_reg_766_pp0_iter3_reg[9 : 1] <= tmp_3_reg_766_pp0_iter2_reg[9 : 1];
tmp_3_reg_766_pp0_iter3_reg[22 : 11] <= tmp_3_reg_766_pp0_iter2_reg[22 : 11];
        tmp_3_reg_766_pp0_iter4_reg[9 : 1] <= tmp_3_reg_766_pp0_iter3_reg[9 : 1];
tmp_3_reg_766_pp0_iter4_reg[22 : 11] <= tmp_3_reg_766_pp0_iter3_reg[22 : 11];
        tmp_3_reg_766_pp0_iter5_reg[9 : 1] <= tmp_3_reg_766_pp0_iter4_reg[9 : 1];
tmp_3_reg_766_pp0_iter5_reg[22 : 11] <= tmp_3_reg_766_pp0_iter4_reg[22 : 11];
        tmp_3_reg_766_pp0_iter6_reg[9 : 1] <= tmp_3_reg_766_pp0_iter5_reg[9 : 1];
tmp_3_reg_766_pp0_iter6_reg[22 : 11] <= tmp_3_reg_766_pp0_iter5_reg[22 : 11];
        tmp_3_reg_766_pp0_iter7_reg[9 : 1] <= tmp_3_reg_766_pp0_iter6_reg[9 : 1];
tmp_3_reg_766_pp0_iter7_reg[22 : 11] <= tmp_3_reg_766_pp0_iter6_reg[22 : 11];
        tmp_3_reg_766_pp0_iter8_reg[9 : 1] <= tmp_3_reg_766_pp0_iter7_reg[9 : 1];
tmp_3_reg_766_pp0_iter8_reg[22 : 11] <= tmp_3_reg_766_pp0_iter7_reg[22 : 11];
        tmp_3_reg_766_pp0_iter9_reg[9 : 1] <= tmp_3_reg_766_pp0_iter8_reg[9 : 1];
tmp_3_reg_766_pp0_iter9_reg[22 : 11] <= tmp_3_reg_766_pp0_iter8_reg[22 : 11];
        tmp_5_reg_778[9 : 2] <= tmp_5_fu_431_p5[9 : 2];
tmp_5_reg_778[22 : 11] <= tmp_5_fu_431_p5[22 : 11];
        tmp_5_reg_778_pp0_iter10_reg[9 : 2] <= tmp_5_reg_778_pp0_iter9_reg[9 : 2];
tmp_5_reg_778_pp0_iter10_reg[22 : 11] <= tmp_5_reg_778_pp0_iter9_reg[22 : 11];
        tmp_5_reg_778_pp0_iter11_reg[9 : 2] <= tmp_5_reg_778_pp0_iter10_reg[9 : 2];
tmp_5_reg_778_pp0_iter11_reg[22 : 11] <= tmp_5_reg_778_pp0_iter10_reg[22 : 11];
        tmp_5_reg_778_pp0_iter12_reg[9 : 2] <= tmp_5_reg_778_pp0_iter11_reg[9 : 2];
tmp_5_reg_778_pp0_iter12_reg[22 : 11] <= tmp_5_reg_778_pp0_iter11_reg[22 : 11];
        tmp_5_reg_778_pp0_iter1_reg[9 : 2] <= tmp_5_reg_778[9 : 2];
tmp_5_reg_778_pp0_iter1_reg[22 : 11] <= tmp_5_reg_778[22 : 11];
        tmp_5_reg_778_pp0_iter2_reg[9 : 2] <= tmp_5_reg_778_pp0_iter1_reg[9 : 2];
tmp_5_reg_778_pp0_iter2_reg[22 : 11] <= tmp_5_reg_778_pp0_iter1_reg[22 : 11];
        tmp_5_reg_778_pp0_iter3_reg[9 : 2] <= tmp_5_reg_778_pp0_iter2_reg[9 : 2];
tmp_5_reg_778_pp0_iter3_reg[22 : 11] <= tmp_5_reg_778_pp0_iter2_reg[22 : 11];
        tmp_5_reg_778_pp0_iter4_reg[9 : 2] <= tmp_5_reg_778_pp0_iter3_reg[9 : 2];
tmp_5_reg_778_pp0_iter4_reg[22 : 11] <= tmp_5_reg_778_pp0_iter3_reg[22 : 11];
        tmp_5_reg_778_pp0_iter5_reg[9 : 2] <= tmp_5_reg_778_pp0_iter4_reg[9 : 2];
tmp_5_reg_778_pp0_iter5_reg[22 : 11] <= tmp_5_reg_778_pp0_iter4_reg[22 : 11];
        tmp_5_reg_778_pp0_iter6_reg[9 : 2] <= tmp_5_reg_778_pp0_iter5_reg[9 : 2];
tmp_5_reg_778_pp0_iter6_reg[22 : 11] <= tmp_5_reg_778_pp0_iter5_reg[22 : 11];
        tmp_5_reg_778_pp0_iter7_reg[9 : 2] <= tmp_5_reg_778_pp0_iter6_reg[9 : 2];
tmp_5_reg_778_pp0_iter7_reg[22 : 11] <= tmp_5_reg_778_pp0_iter6_reg[22 : 11];
        tmp_5_reg_778_pp0_iter8_reg[9 : 2] <= tmp_5_reg_778_pp0_iter7_reg[9 : 2];
tmp_5_reg_778_pp0_iter8_reg[22 : 11] <= tmp_5_reg_778_pp0_iter7_reg[22 : 11];
        tmp_5_reg_778_pp0_iter9_reg[9 : 2] <= tmp_5_reg_778_pp0_iter8_reg[9 : 2];
tmp_5_reg_778_pp0_iter9_reg[22 : 11] <= tmp_5_reg_778_pp0_iter8_reg[22 : 11];
        tmp_reg_757 <= ap_sig_allocacmp_v19[32'd10];
        tmp_s_reg_772 <= {{ap_sig_allocacmp_v19[9:2]}};
        tmp_s_reg_772_pp0_iter10_reg <= tmp_s_reg_772_pp0_iter9_reg;
        tmp_s_reg_772_pp0_iter11_reg <= tmp_s_reg_772_pp0_iter10_reg;
        tmp_s_reg_772_pp0_iter12_reg <= tmp_s_reg_772_pp0_iter11_reg;
        tmp_s_reg_772_pp0_iter13_reg <= tmp_s_reg_772_pp0_iter12_reg;
        tmp_s_reg_772_pp0_iter14_reg <= tmp_s_reg_772_pp0_iter13_reg;
        tmp_s_reg_772_pp0_iter15_reg <= tmp_s_reg_772_pp0_iter14_reg;
        tmp_s_reg_772_pp0_iter1_reg <= tmp_s_reg_772;
        tmp_s_reg_772_pp0_iter2_reg <= tmp_s_reg_772_pp0_iter1_reg;
        tmp_s_reg_772_pp0_iter3_reg <= tmp_s_reg_772_pp0_iter2_reg;
        tmp_s_reg_772_pp0_iter4_reg <= tmp_s_reg_772_pp0_iter3_reg;
        tmp_s_reg_772_pp0_iter5_reg <= tmp_s_reg_772_pp0_iter4_reg;
        tmp_s_reg_772_pp0_iter6_reg <= tmp_s_reg_772_pp0_iter5_reg;
        tmp_s_reg_772_pp0_iter7_reg <= tmp_s_reg_772_pp0_iter6_reg;
        tmp_s_reg_772_pp0_iter8_reg <= tmp_s_reg_772_pp0_iter7_reg;
        tmp_s_reg_772_pp0_iter9_reg <= tmp_s_reg_772_pp0_iter8_reg;
        trunc_ln51_7_reg_846 <= {{mul_ln51_fu_343_p2[45:44]}};
        urem_ln51_4_reg_881 <= grp_fu_457_p2;
        v19_reg_751 <= ap_sig_allocacmp_v19;
        v23_4_reg_916 <= v23_4_fu_689_p11;
        v23_reg_886 <= v23_fu_629_p11;
        zext_ln33_1_cast_reg_746[22 : 0] <= zext_ln33_1_cast_fu_373_p1[22 : 0];
        zext_ln48_reg_921[8 : 0] <= zext_ln48_fu_712_p1[8 : 0];
        zext_ln48_reg_921_pp0_iter17_reg[8 : 0] <= zext_ln48_reg_921[8 : 0];
        zext_ln51_7_reg_926[8 : 1] <= zext_ln51_7_fu_723_p1[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_363 <= grp_fu_836_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_368 <= grp_fu_840_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln51_5_reg_796 <= {{grp_fu_338_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln51_6_reg_821 <= {{grp_fu_338_p2[45:44]}};
    end
end
always @ (*) begin
    if (((tmp_reg_757 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to17 = 1'b1;
    end else begin
        ap_idle_pp0_1to17 = 1'b0;
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
        ap_sig_allocacmp_v19 = v19_1_fu_102;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_330_p1 = v23_reg_886;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_330_p1 = v23_5_reg_851;
        end else begin
            grp_fu_330_p1 = 'bx;
        end
    end else begin
        grp_fu_330_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_334_p1 = v23_4_reg_916;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_334_p1 = v23_6_reg_856;
    end else begin
        grp_fu_334_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p0 = zext_ln51_18_fu_509_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_338_p0 = zext_ln51_17_fu_489_p1;
    end else begin
        grp_fu_338_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_5_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_8_fu_501_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln51_9_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_6_fu_493_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln51_5_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_8_fu_501_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln51_9_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_6_fu_493_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln51_5_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln51_8_fu_501_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address1_local = zext_ln51_9_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address1_local = zext_ln51_6_fu_493_p1;
        end else begin
            v0_2_address1_local = 'bx;
        end
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln51_5_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln51_8_fu_501_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address1_local = zext_ln51_9_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address1_local = zext_ln51_6_fu_493_p1;
        end else begin
            v0_3_address1_local = 'bx;
        end
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln51_7_reg_926;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln48_fu_712_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address0_local = zext_ln48_reg_921_pp0_iter17_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address0_local = zext_ln51_7_fu_723_p1;
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to17 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln47_fu_479_p2 = (v19_reg_751 + 11'd4);
assign add_ln51_fu_452_p2 = (zext_ln47_fu_449_p1 + zext_ln33_1_cast_reg_746);
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
assign grp_fu_338_p1 = 47'd15270995;
assign grp_fu_415_p0 = {{{{tmp_11}, {1'd1}}, {lshr_ln48_1_fu_393_p4}}, {1'd1}};
assign grp_fu_415_p1 = 23'd1152000;
assign grp_fu_443_p0 = {{{{tmp_11}, {1'd1}}, {tmp_s_fu_421_p4}}, {2'd2}};
assign grp_fu_443_p1 = 23'd1152000;
assign grp_fu_457_p0 = (zext_ln47_fu_449_p1 + zext_ln33_1_cast_reg_746);
assign grp_fu_457_p1 = 24'd1152000;
assign grp_fu_473_p0 = {{{{tmp_11}, {1'd1}}, {tmp_s_reg_772}}, {2'd3}};
assign grp_fu_473_p1 = 23'd1152000;
assign grp_fu_836_p_ce = 1'b1;
assign grp_fu_836_p_din0 = v22_1;
assign grp_fu_836_p_din1 = grp_fu_330_p1;
assign grp_fu_840_p_ce = 1'b1;
assign grp_fu_840_p_din0 = v22_1;
assign grp_fu_840_p_din1 = grp_fu_334_p1;
assign lshr_ln48_1_fu_393_p4 = {{ap_sig_allocacmp_v19[9:1]}};
assign mul_ln51_4_fu_348_p0 = mul_ln51_4_fu_348_p00;
assign mul_ln51_4_fu_348_p00 = add_ln51_reg_784_pp0_iter13_reg;
assign mul_ln51_4_fu_348_p1 = 49'd30541990;
assign mul_ln51_fu_343_p0 = mul_ln51_fu_343_p00;
assign mul_ln51_fu_343_p00 = tmp_7_reg_790_pp0_iter12_reg;
assign mul_ln51_fu_343_p1 = 47'd15270995;
assign or_ln48_1_fu_716_p3 = {{tmp_s_reg_772_pp0_iter15_reg}, {1'd1}};
assign tmp_3_fu_403_p5 = {{{{tmp_11}, {1'd1}}, {lshr_ln48_1_fu_393_p4}}, {1'd1}};
assign tmp_5_fu_431_p5 = {{{{tmp_11}, {1'd1}}, {tmp_s_fu_421_p4}}, {2'd2}};
assign tmp_7_fu_463_p5 = {{{{tmp_11}, {1'd1}}, {tmp_s_reg_772}}, {2'd3}};
assign tmp_s_fu_421_p4 = {{ap_sig_allocacmp_v19[9:2]}};
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
assign v23_4_fu_689_p2 = v0_0_q0;
assign v23_4_fu_689_p4 = v0_1_q0;
assign v23_4_fu_689_p6 = v0_2_q0;
assign v23_4_fu_689_p8 = v0_3_q0;
assign v23_4_fu_689_p9 = 'bx;
assign v23_5_fu_543_p2 = v0_0_q1;
assign v23_5_fu_543_p4 = v0_1_q1;
assign v23_5_fu_543_p6 = v0_2_q1;
assign v23_5_fu_543_p8 = v0_3_q1;
assign v23_5_fu_543_p9 = 'bx;
assign v23_6_fu_582_p2 = v0_0_q0;
assign v23_6_fu_582_p4 = v0_1_q0;
assign v23_6_fu_582_p6 = v0_2_q0;
assign v23_6_fu_582_p8 = v0_3_q0;
assign v23_6_fu_582_p9 = 'bx;
assign v23_fu_629_p2 = v0_0_q1;
assign v23_fu_629_p4 = v0_1_q1;
assign v23_fu_629_p6 = v0_2_q1;
assign v23_fu_629_p8 = v0_3_q1;
assign v23_fu_629_p9 = 'bx;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_363;
assign v3_1_we0 = v3_1_we0_local;
assign v3_address0 = v3_address0_local;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_368;
assign v3_we0 = v3_we0_local;
assign zext_ln33_1_cast_fu_373_p1 = zext_ln33_1;
assign zext_ln47_fu_449_p1 = v19_reg_751;
assign zext_ln48_fu_712_p1 = lshr_ln48_1_reg_761_pp0_iter15_reg;
assign zext_ln51_17_fu_489_p1 = tmp_3_reg_766_pp0_iter12_reg;
assign zext_ln51_18_fu_509_p1 = tmp_5_reg_778_pp0_iter12_reg;
assign zext_ln51_5_fu_652_p1 = urem_ln51_4_reg_881;
assign zext_ln51_6_fu_493_p1 = grp_fu_415_p2;
assign zext_ln51_7_fu_723_p1 = or_ln48_1_fu_716_p3;
assign zext_ln51_8_fu_501_p1 = grp_fu_443_p2;
assign zext_ln51_9_fu_605_p1 = grp_fu_473_p2;
always @ (posedge ap_clk) begin
    zext_ln33_1_cast_reg_746[23] <= 1'b0;
    tmp_3_reg_766[0] <= 1'b1;
    tmp_3_reg_766[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter1_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter1_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter2_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter2_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter3_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter3_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter4_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter4_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter5_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter5_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter6_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter6_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter7_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter7_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter8_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter8_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter9_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter9_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter10_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter10_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter11_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter11_reg[10] <= 1'b1;
    tmp_3_reg_766_pp0_iter12_reg[0] <= 1'b1;
    tmp_3_reg_766_pp0_iter12_reg[10] <= 1'b1;
    tmp_5_reg_778[1:0] <= 2'b10;
    tmp_5_reg_778[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter1_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter1_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter2_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter2_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter3_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter3_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter4_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter4_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter5_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter5_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter6_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter6_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter7_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter7_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter8_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter8_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter9_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter9_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter10_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter10_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter11_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter11_reg[10] <= 1'b1;
    tmp_5_reg_778_pp0_iter12_reg[1:0] <= 2'b10;
    tmp_5_reg_778_pp0_iter12_reg[10] <= 1'b1;
    tmp_7_reg_790[1:0] <= 2'b11;
    tmp_7_reg_790[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter1_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter1_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter2_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter2_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter3_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter3_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter4_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter4_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter5_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter5_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter6_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter6_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter7_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter7_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter8_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter8_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter9_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter9_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter10_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter10_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter11_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter11_reg[10] <= 1'b1;
    tmp_7_reg_790_pp0_iter12_reg[1:0] <= 2'b11;
    tmp_7_reg_790_pp0_iter12_reg[10] <= 1'b1;
    zext_ln48_reg_921[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_921_pp0_iter17_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln51_7_reg_926[0] <= 1'b1;
    zext_ln51_7_reg_926[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 