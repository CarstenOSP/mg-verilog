module SgdLR_sw_SgdLR_sw_Pipeline_label_38 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,zext_ln33_2,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v22_5,tmp_33,grp_fu_2623_p_din0,grp_fu_2623_p_din1,grp_fu_2623_p_dout0,grp_fu_2623_p_ce,grp_fu_2627_p_din0,grp_fu_2627_p_din1,grp_fu_2627_p_dout0,grp_fu_2627_p_ce); 
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
input  [22:0] zext_ln33_2;
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
input  [31:0] v22_5;
input  [11:0] tmp_33;
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
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_760;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_375;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_381;
wire   [23:0] zext_ln33_2_cast_fu_387_p1;
reg   [23:0] zext_ln33_2_cast_reg_749;
reg   [10:0] v19_1_reg_754;
wire   [7:0] lshr_ln48_5_fu_407_p4;
reg   [7:0] lshr_ln48_5_reg_764;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter1_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter2_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter3_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter4_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter5_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter6_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter7_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter8_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter9_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter10_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter11_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter12_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter13_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter14_reg;
reg   [7:0] lshr_ln48_5_reg_764_pp0_iter15_reg;
wire   [22:0] tmp_1_fu_427_p5;
reg   [22:0] tmp_1_reg_770;
reg   [22:0] tmp_1_reg_770_pp0_iter1_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter2_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter3_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter4_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter5_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter6_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter7_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter8_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter9_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter10_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter11_reg;
reg   [22:0] tmp_1_reg_770_pp0_iter12_reg;
wire   [22:0] tmp_2_fu_445_p5;
reg   [22:0] tmp_2_reg_776;
reg   [22:0] tmp_2_reg_776_pp0_iter1_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter2_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter3_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter4_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter5_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter6_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter7_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter8_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter9_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter10_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter11_reg;
reg   [22:0] tmp_2_reg_776_pp0_iter12_reg;
wire   [23:0] add_ln51_fu_466_p2;
reg   [23:0] add_ln51_reg_782;
reg   [23:0] add_ln51_reg_782_pp0_iter1_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter2_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter3_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter4_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter5_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter6_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter7_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter8_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter9_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter10_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter11_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter12_reg;
reg   [23:0] add_ln51_reg_782_pp0_iter13_reg;
wire   [22:0] tmp_3_fu_477_p5;
reg   [22:0] tmp_3_reg_788;
reg   [22:0] tmp_3_reg_788_pp0_iter1_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter2_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter3_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter4_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter5_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter6_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter7_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter8_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter9_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter10_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter11_reg;
reg   [22:0] tmp_3_reg_788_pp0_iter12_reg;
reg   [1:0] trunc_ln51_1_reg_794;
reg   [1:0] trunc_ln51_2_reg_819;
reg   [1:0] trunc_ln51_3_reg_844;
wire   [31:0] v23_1_fu_557_p11;
reg   [31:0] v23_1_reg_849;
wire   [31:0] v23_2_fu_596_p11;
reg   [31:0] v23_2_reg_854;
wire   [23:0] grp_fu_471_p2;
reg   [23:0] urem_ln51_reg_879;
wire   [31:0] v23_3_fu_643_p11;
reg   [31:0] v23_3_reg_884;
reg   [1:0] trunc_ln51_s_reg_889;
wire   [31:0] v23_fu_703_p11;
reg   [31:0] v23_reg_914;
wire   [63:0] zext_ln48_fu_726_p1;
reg   [63:0] zext_ln48_reg_919;
reg   [63:0] zext_ln48_reg_919_pp0_iter17_reg;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_2_fu_507_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_4_fu_515_p1;
wire   [63:0] zext_ln51_6_fu_619_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_fu_666_p1;
reg   [10:0] v19_fu_104;
wire   [10:0] add_ln47_fu_493_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
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
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [31:0] grp_fu_342_p1;
reg   [31:0] grp_fu_346_p1;
reg   [22:0] grp_fu_350_p0;
wire   [46:0] zext_ln51_3_fu_503_p1;
wire   [46:0] zext_ln51_5_fu_523_p1;
wire   [24:0] grp_fu_350_p1;
wire   [22:0] mul_ln51_3_fu_355_p0;
wire   [24:0] mul_ln51_3_fu_355_p1;
wire   [23:0] mul_ln51_fu_360_p0;
wire   [25:0] mul_ln51_fu_360_p1;
wire   [46:0] grp_fu_350_p2;
wire   [8:0] tmp_s_fu_417_p4;
wire   [22:0] grp_fu_439_p0;
wire   [21:0] grp_fu_439_p1;
wire   [22:0] grp_fu_457_p0;
wire   [21:0] grp_fu_457_p1;
wire   [23:0] zext_ln47_fu_463_p1;
wire   [23:0] grp_fu_471_p0;
wire   [21:0] grp_fu_471_p1;
wire   [22:0] grp_fu_487_p0;
wire   [21:0] grp_fu_487_p1;
wire   [22:0] grp_fu_439_p2;
wire   [22:0] grp_fu_457_p2;
wire   [46:0] mul_ln51_3_fu_355_p2;
wire   [31:0] v23_1_fu_557_p2;
wire   [31:0] v23_1_fu_557_p4;
wire   [31:0] v23_1_fu_557_p6;
wire   [31:0] v23_1_fu_557_p8;
wire   [31:0] v23_1_fu_557_p9;
wire   [31:0] v23_2_fu_596_p2;
wire   [31:0] v23_2_fu_596_p4;
wire   [31:0] v23_2_fu_596_p6;
wire   [31:0] v23_2_fu_596_p8;
wire   [31:0] v23_2_fu_596_p9;
wire   [22:0] grp_fu_487_p2;
wire   [31:0] v23_3_fu_643_p2;
wire   [31:0] v23_3_fu_643_p4;
wire   [31:0] v23_3_fu_643_p6;
wire   [31:0] v23_3_fu_643_p8;
wire   [31:0] v23_3_fu_643_p9;
wire   [48:0] mul_ln51_fu_360_p2;
wire   [31:0] v23_fu_703_p2;
wire   [31:0] v23_fu_703_p4;
wire   [31:0] v23_fu_703_p6;
wire   [31:0] v23_fu_703_p8;
wire   [31:0] v23_fu_703_p9;
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
wire   [46:0] mul_ln51_3_fu_355_p00;
wire   [48:0] mul_ln51_fu_360_p00;
wire   [1:0] v23_1_fu_557_p1;
wire   [1:0] v23_1_fu_557_p3;
wire  signed [1:0] v23_1_fu_557_p5;
wire  signed [1:0] v23_1_fu_557_p7;
wire   [1:0] v23_2_fu_596_p1;
wire   [1:0] v23_2_fu_596_p3;
wire  signed [1:0] v23_2_fu_596_p5;
wire  signed [1:0] v23_2_fu_596_p7;
wire   [1:0] v23_3_fu_643_p1;
wire   [1:0] v23_3_fu_643_p3;
wire  signed [1:0] v23_3_fu_643_p5;
wire  signed [1:0] v23_3_fu_643_p7;
wire   [1:0] v23_fu_703_p1;
wire   [1:0] v23_fu_703_p3;
wire  signed [1:0] v23_fu_703_p5;
wire  signed [1:0] v23_fu_703_p7;
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
#0 v19_fu_104 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U205(.din0(grp_fu_350_p0),.din1(grp_fu_350_p1),.dout(grp_fu_350_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U206(.din0(mul_ln51_3_fu_355_p0),.din1(mul_ln51_3_fu_355_p1),.dout(mul_ln51_3_fu_355_p2));
SgdLR_sw_mul_24ns_26ns_49_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 24 ),.din1_WIDTH( 26 ),.dout_WIDTH( 49 ))
mul_24ns_26ns_49_1_1_U207(.din0(mul_ln51_fu_360_p0),.din1(mul_ln51_fu_360_p1),.dout(mul_ln51_fu_360_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U208(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_439_p0),.din1(grp_fu_439_p1),.ce(1'b1),.dout(grp_fu_439_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_457_p0),.din1(grp_fu_457_p1),.ce(1'b1),.dout(grp_fu_457_p2));
SgdLR_sw_urem_24ns_22ns_24_28_1 #(.ID( 1 ),.NUM_STAGE( 28 ),.din0_WIDTH( 24 ),.din1_WIDTH( 22 ),.dout_WIDTH( 24 ))
urem_24ns_22ns_24_28_1_U210(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_471_p0),.din1(grp_fu_471_p1),.ce(1'b1),.dout(grp_fu_471_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U211(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_487_p0),.din1(grp_fu_487_p1),.ce(1'b1),.dout(grp_fu_487_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U212(.din0(v23_1_fu_557_p2),.din1(v23_1_fu_557_p4),.din2(v23_1_fu_557_p6),.din3(v23_1_fu_557_p8),.def(v23_1_fu_557_p9),.sel(trunc_ln51_1_reg_794),.dout(v23_1_fu_557_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U213(.din0(v23_2_fu_596_p2),.din1(v23_2_fu_596_p4),.din2(v23_2_fu_596_p6),.din3(v23_2_fu_596_p8),.def(v23_2_fu_596_p9),.sel(trunc_ln51_2_reg_819),.dout(v23_2_fu_596_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U214(.din0(v23_3_fu_643_p2),.din1(v23_3_fu_643_p4),.din2(v23_3_fu_643_p6),.din3(v23_3_fu_643_p8),.def(v23_3_fu_643_p9),.sel(trunc_ln51_3_reg_844),.dout(v23_3_fu_643_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U215(.din0(v23_fu_703_p2),.din1(v23_fu_703_p4),.din2(v23_fu_703_p6),.din3(v23_fu_703_p8),.def(v23_fu_703_p9),.sel(trunc_ln51_s_reg_889),.dout(v23_fu_703_p11));
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
        v19_fu_104 <= 11'd0;
    end else if (((tmp_reg_760 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_104 <= add_ln47_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_reg_782 <= add_ln51_fu_466_p2;
        add_ln51_reg_782_pp0_iter10_reg <= add_ln51_reg_782_pp0_iter9_reg;
        add_ln51_reg_782_pp0_iter11_reg <= add_ln51_reg_782_pp0_iter10_reg;
        add_ln51_reg_782_pp0_iter12_reg <= add_ln51_reg_782_pp0_iter11_reg;
        add_ln51_reg_782_pp0_iter13_reg <= add_ln51_reg_782_pp0_iter12_reg;
        add_ln51_reg_782_pp0_iter1_reg <= add_ln51_reg_782;
        add_ln51_reg_782_pp0_iter2_reg <= add_ln51_reg_782_pp0_iter1_reg;
        add_ln51_reg_782_pp0_iter3_reg <= add_ln51_reg_782_pp0_iter2_reg;
        add_ln51_reg_782_pp0_iter4_reg <= add_ln51_reg_782_pp0_iter3_reg;
        add_ln51_reg_782_pp0_iter5_reg <= add_ln51_reg_782_pp0_iter4_reg;
        add_ln51_reg_782_pp0_iter6_reg <= add_ln51_reg_782_pp0_iter5_reg;
        add_ln51_reg_782_pp0_iter7_reg <= add_ln51_reg_782_pp0_iter6_reg;
        add_ln51_reg_782_pp0_iter8_reg <= add_ln51_reg_782_pp0_iter7_reg;
        add_ln51_reg_782_pp0_iter9_reg <= add_ln51_reg_782_pp0_iter8_reg;
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
        tmp_3_reg_788[9 : 2] <= tmp_3_fu_477_p5[9 : 2];
tmp_3_reg_788[22 : 11] <= tmp_3_fu_477_p5[22 : 11];
        tmp_3_reg_788_pp0_iter10_reg[9 : 2] <= tmp_3_reg_788_pp0_iter9_reg[9 : 2];
tmp_3_reg_788_pp0_iter10_reg[22 : 11] <= tmp_3_reg_788_pp0_iter9_reg[22 : 11];
        tmp_3_reg_788_pp0_iter11_reg[9 : 2] <= tmp_3_reg_788_pp0_iter10_reg[9 : 2];
tmp_3_reg_788_pp0_iter11_reg[22 : 11] <= tmp_3_reg_788_pp0_iter10_reg[22 : 11];
        tmp_3_reg_788_pp0_iter12_reg[9 : 2] <= tmp_3_reg_788_pp0_iter11_reg[9 : 2];
tmp_3_reg_788_pp0_iter12_reg[22 : 11] <= tmp_3_reg_788_pp0_iter11_reg[22 : 11];
        tmp_3_reg_788_pp0_iter1_reg[9 : 2] <= tmp_3_reg_788[9 : 2];
tmp_3_reg_788_pp0_iter1_reg[22 : 11] <= tmp_3_reg_788[22 : 11];
        tmp_3_reg_788_pp0_iter2_reg[9 : 2] <= tmp_3_reg_788_pp0_iter1_reg[9 : 2];
tmp_3_reg_788_pp0_iter2_reg[22 : 11] <= tmp_3_reg_788_pp0_iter1_reg[22 : 11];
        tmp_3_reg_788_pp0_iter3_reg[9 : 2] <= tmp_3_reg_788_pp0_iter2_reg[9 : 2];
tmp_3_reg_788_pp0_iter3_reg[22 : 11] <= tmp_3_reg_788_pp0_iter2_reg[22 : 11];
        tmp_3_reg_788_pp0_iter4_reg[9 : 2] <= tmp_3_reg_788_pp0_iter3_reg[9 : 2];
tmp_3_reg_788_pp0_iter4_reg[22 : 11] <= tmp_3_reg_788_pp0_iter3_reg[22 : 11];
        tmp_3_reg_788_pp0_iter5_reg[9 : 2] <= tmp_3_reg_788_pp0_iter4_reg[9 : 2];
tmp_3_reg_788_pp0_iter5_reg[22 : 11] <= tmp_3_reg_788_pp0_iter4_reg[22 : 11];
        tmp_3_reg_788_pp0_iter6_reg[9 : 2] <= tmp_3_reg_788_pp0_iter5_reg[9 : 2];
tmp_3_reg_788_pp0_iter6_reg[22 : 11] <= tmp_3_reg_788_pp0_iter5_reg[22 : 11];
        tmp_3_reg_788_pp0_iter7_reg[9 : 2] <= tmp_3_reg_788_pp0_iter6_reg[9 : 2];
tmp_3_reg_788_pp0_iter7_reg[22 : 11] <= tmp_3_reg_788_pp0_iter6_reg[22 : 11];
        tmp_3_reg_788_pp0_iter8_reg[9 : 2] <= tmp_3_reg_788_pp0_iter7_reg[9 : 2];
tmp_3_reg_788_pp0_iter8_reg[22 : 11] <= tmp_3_reg_788_pp0_iter7_reg[22 : 11];
        tmp_3_reg_788_pp0_iter9_reg[9 : 2] <= tmp_3_reg_788_pp0_iter8_reg[9 : 2];
tmp_3_reg_788_pp0_iter9_reg[22 : 11] <= tmp_3_reg_788_pp0_iter8_reg[22 : 11];
        trunc_ln51_s_reg_889 <= {{mul_ln51_fu_360_p2[46:45]}};
        v23_1_reg_849 <= v23_1_fu_557_p11;
        v23_2_reg_854 <= v23_2_fu_596_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_5_reg_764 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        lshr_ln48_5_reg_764_pp0_iter10_reg <= lshr_ln48_5_reg_764_pp0_iter9_reg;
        lshr_ln48_5_reg_764_pp0_iter11_reg <= lshr_ln48_5_reg_764_pp0_iter10_reg;
        lshr_ln48_5_reg_764_pp0_iter12_reg <= lshr_ln48_5_reg_764_pp0_iter11_reg;
        lshr_ln48_5_reg_764_pp0_iter13_reg <= lshr_ln48_5_reg_764_pp0_iter12_reg;
        lshr_ln48_5_reg_764_pp0_iter14_reg <= lshr_ln48_5_reg_764_pp0_iter13_reg;
        lshr_ln48_5_reg_764_pp0_iter15_reg <= lshr_ln48_5_reg_764_pp0_iter14_reg;
        lshr_ln48_5_reg_764_pp0_iter1_reg <= lshr_ln48_5_reg_764;
        lshr_ln48_5_reg_764_pp0_iter2_reg <= lshr_ln48_5_reg_764_pp0_iter1_reg;
        lshr_ln48_5_reg_764_pp0_iter3_reg <= lshr_ln48_5_reg_764_pp0_iter2_reg;
        lshr_ln48_5_reg_764_pp0_iter4_reg <= lshr_ln48_5_reg_764_pp0_iter3_reg;
        lshr_ln48_5_reg_764_pp0_iter5_reg <= lshr_ln48_5_reg_764_pp0_iter4_reg;
        lshr_ln48_5_reg_764_pp0_iter6_reg <= lshr_ln48_5_reg_764_pp0_iter5_reg;
        lshr_ln48_5_reg_764_pp0_iter7_reg <= lshr_ln48_5_reg_764_pp0_iter6_reg;
        lshr_ln48_5_reg_764_pp0_iter8_reg <= lshr_ln48_5_reg_764_pp0_iter7_reg;
        lshr_ln48_5_reg_764_pp0_iter9_reg <= lshr_ln48_5_reg_764_pp0_iter8_reg;
        tmp_1_reg_770[9 : 1] <= tmp_1_fu_427_p5[9 : 1];
tmp_1_reg_770[22 : 11] <= tmp_1_fu_427_p5[22 : 11];
        tmp_1_reg_770_pp0_iter10_reg[9 : 1] <= tmp_1_reg_770_pp0_iter9_reg[9 : 1];
tmp_1_reg_770_pp0_iter10_reg[22 : 11] <= tmp_1_reg_770_pp0_iter9_reg[22 : 11];
        tmp_1_reg_770_pp0_iter11_reg[9 : 1] <= tmp_1_reg_770_pp0_iter10_reg[9 : 1];
tmp_1_reg_770_pp0_iter11_reg[22 : 11] <= tmp_1_reg_770_pp0_iter10_reg[22 : 11];
        tmp_1_reg_770_pp0_iter12_reg[9 : 1] <= tmp_1_reg_770_pp0_iter11_reg[9 : 1];
tmp_1_reg_770_pp0_iter12_reg[22 : 11] <= tmp_1_reg_770_pp0_iter11_reg[22 : 11];
        tmp_1_reg_770_pp0_iter1_reg[9 : 1] <= tmp_1_reg_770[9 : 1];
tmp_1_reg_770_pp0_iter1_reg[22 : 11] <= tmp_1_reg_770[22 : 11];
        tmp_1_reg_770_pp0_iter2_reg[9 : 1] <= tmp_1_reg_770_pp0_iter1_reg[9 : 1];
tmp_1_reg_770_pp0_iter2_reg[22 : 11] <= tmp_1_reg_770_pp0_iter1_reg[22 : 11];
        tmp_1_reg_770_pp0_iter3_reg[9 : 1] <= tmp_1_reg_770_pp0_iter2_reg[9 : 1];
tmp_1_reg_770_pp0_iter3_reg[22 : 11] <= tmp_1_reg_770_pp0_iter2_reg[22 : 11];
        tmp_1_reg_770_pp0_iter4_reg[9 : 1] <= tmp_1_reg_770_pp0_iter3_reg[9 : 1];
tmp_1_reg_770_pp0_iter4_reg[22 : 11] <= tmp_1_reg_770_pp0_iter3_reg[22 : 11];
        tmp_1_reg_770_pp0_iter5_reg[9 : 1] <= tmp_1_reg_770_pp0_iter4_reg[9 : 1];
tmp_1_reg_770_pp0_iter5_reg[22 : 11] <= tmp_1_reg_770_pp0_iter4_reg[22 : 11];
        tmp_1_reg_770_pp0_iter6_reg[9 : 1] <= tmp_1_reg_770_pp0_iter5_reg[9 : 1];
tmp_1_reg_770_pp0_iter6_reg[22 : 11] <= tmp_1_reg_770_pp0_iter5_reg[22 : 11];
        tmp_1_reg_770_pp0_iter7_reg[9 : 1] <= tmp_1_reg_770_pp0_iter6_reg[9 : 1];
tmp_1_reg_770_pp0_iter7_reg[22 : 11] <= tmp_1_reg_770_pp0_iter6_reg[22 : 11];
        tmp_1_reg_770_pp0_iter8_reg[9 : 1] <= tmp_1_reg_770_pp0_iter7_reg[9 : 1];
tmp_1_reg_770_pp0_iter8_reg[22 : 11] <= tmp_1_reg_770_pp0_iter7_reg[22 : 11];
        tmp_1_reg_770_pp0_iter9_reg[9 : 1] <= tmp_1_reg_770_pp0_iter8_reg[9 : 1];
tmp_1_reg_770_pp0_iter9_reg[22 : 11] <= tmp_1_reg_770_pp0_iter8_reg[22 : 11];
        tmp_2_reg_776[9 : 2] <= tmp_2_fu_445_p5[9 : 2];
tmp_2_reg_776[22 : 11] <= tmp_2_fu_445_p5[22 : 11];
        tmp_2_reg_776_pp0_iter10_reg[9 : 2] <= tmp_2_reg_776_pp0_iter9_reg[9 : 2];
tmp_2_reg_776_pp0_iter10_reg[22 : 11] <= tmp_2_reg_776_pp0_iter9_reg[22 : 11];
        tmp_2_reg_776_pp0_iter11_reg[9 : 2] <= tmp_2_reg_776_pp0_iter10_reg[9 : 2];
tmp_2_reg_776_pp0_iter11_reg[22 : 11] <= tmp_2_reg_776_pp0_iter10_reg[22 : 11];
        tmp_2_reg_776_pp0_iter12_reg[9 : 2] <= tmp_2_reg_776_pp0_iter11_reg[9 : 2];
tmp_2_reg_776_pp0_iter12_reg[22 : 11] <= tmp_2_reg_776_pp0_iter11_reg[22 : 11];
        tmp_2_reg_776_pp0_iter1_reg[9 : 2] <= tmp_2_reg_776[9 : 2];
tmp_2_reg_776_pp0_iter1_reg[22 : 11] <= tmp_2_reg_776[22 : 11];
        tmp_2_reg_776_pp0_iter2_reg[9 : 2] <= tmp_2_reg_776_pp0_iter1_reg[9 : 2];
tmp_2_reg_776_pp0_iter2_reg[22 : 11] <= tmp_2_reg_776_pp0_iter1_reg[22 : 11];
        tmp_2_reg_776_pp0_iter3_reg[9 : 2] <= tmp_2_reg_776_pp0_iter2_reg[9 : 2];
tmp_2_reg_776_pp0_iter3_reg[22 : 11] <= tmp_2_reg_776_pp0_iter2_reg[22 : 11];
        tmp_2_reg_776_pp0_iter4_reg[9 : 2] <= tmp_2_reg_776_pp0_iter3_reg[9 : 2];
tmp_2_reg_776_pp0_iter4_reg[22 : 11] <= tmp_2_reg_776_pp0_iter3_reg[22 : 11];
        tmp_2_reg_776_pp0_iter5_reg[9 : 2] <= tmp_2_reg_776_pp0_iter4_reg[9 : 2];
tmp_2_reg_776_pp0_iter5_reg[22 : 11] <= tmp_2_reg_776_pp0_iter4_reg[22 : 11];
        tmp_2_reg_776_pp0_iter6_reg[9 : 2] <= tmp_2_reg_776_pp0_iter5_reg[9 : 2];
tmp_2_reg_776_pp0_iter6_reg[22 : 11] <= tmp_2_reg_776_pp0_iter5_reg[22 : 11];
        tmp_2_reg_776_pp0_iter7_reg[9 : 2] <= tmp_2_reg_776_pp0_iter6_reg[9 : 2];
tmp_2_reg_776_pp0_iter7_reg[22 : 11] <= tmp_2_reg_776_pp0_iter6_reg[22 : 11];
        tmp_2_reg_776_pp0_iter8_reg[9 : 2] <= tmp_2_reg_776_pp0_iter7_reg[9 : 2];
tmp_2_reg_776_pp0_iter8_reg[22 : 11] <= tmp_2_reg_776_pp0_iter7_reg[22 : 11];
        tmp_2_reg_776_pp0_iter9_reg[9 : 2] <= tmp_2_reg_776_pp0_iter8_reg[9 : 2];
tmp_2_reg_776_pp0_iter9_reg[22 : 11] <= tmp_2_reg_776_pp0_iter8_reg[22 : 11];
        tmp_reg_760 <= ap_sig_allocacmp_v19_1[32'd10];
        trunc_ln51_3_reg_844 <= {{mul_ln51_3_fu_355_p2[45:44]}};
        urem_ln51_reg_879 <= grp_fu_471_p2;
        v19_1_reg_754 <= ap_sig_allocacmp_v19_1;
        v23_3_reg_884 <= v23_3_fu_643_p11;
        v23_reg_914 <= v23_fu_703_p11;
        zext_ln33_2_cast_reg_749[22 : 0] <= zext_ln33_2_cast_fu_387_p1[22 : 0];
        zext_ln48_reg_919[7 : 0] <= zext_ln48_fu_726_p1[7 : 0];
        zext_ln48_reg_919_pp0_iter17_reg[7 : 0] <= zext_ln48_reg_919[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_375 <= grp_fu_2623_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_381 <= grp_fu_2627_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln51_1_reg_794 <= {{grp_fu_350_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln51_2_reg_819 <= {{grp_fu_350_p2[45:44]}};
    end
end
always @ (*) begin
    if (((tmp_reg_760 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_104;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_342_p1 = v23_3_reg_884;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_342_p1 = v23_1_reg_849;
        end else begin
            grp_fu_342_p1 = 'bx;
        end
    end else begin
        grp_fu_342_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p1 = v23_reg_914;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_346_p1 = v23_2_reg_854;
    end else begin
        grp_fu_346_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_350_p0 = zext_ln51_5_fu_523_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_350_p0 = zext_ln51_3_fu_503_p1;
    end else begin
        grp_fu_350_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_4_fu_515_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln51_6_fu_619_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_2_fu_507_p1;
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
        v0_1_address0_local = zext_ln51_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_4_fu_515_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln51_6_fu_619_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_2_fu_507_p1;
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
        v0_2_address0_local = zext_ln51_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln51_4_fu_515_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address1_local = zext_ln51_6_fu_619_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address1_local = zext_ln51_2_fu_507_p1;
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
        v0_3_address0_local = zext_ln51_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln51_4_fu_515_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address1_local = zext_ln51_6_fu_619_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address1_local = zext_ln51_2_fu_507_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign add_ln47_fu_493_p2 = (v19_1_reg_754 + 11'd4);
assign add_ln51_fu_466_p2 = (zext_ln47_fu_463_p1 + zext_ln33_2_cast_reg_749);
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
assign grp_fu_2623_p_din0 = v22_5;
assign grp_fu_2623_p_din1 = grp_fu_342_p1;
assign grp_fu_2627_p_ce = 1'b1;
assign grp_fu_2627_p_din0 = v22_5;
assign grp_fu_2627_p_din1 = grp_fu_346_p1;
assign grp_fu_350_p1 = 47'd15270995;
assign grp_fu_439_p0 = {{{{tmp_33}, {1'd1}}, {tmp_s_fu_417_p4}}, {1'd1}};
assign grp_fu_439_p1 = 23'd1152000;
assign grp_fu_457_p0 = {{{{tmp_33}, {1'd1}}, {lshr_ln48_5_fu_407_p4}}, {2'd2}};
assign grp_fu_457_p1 = 23'd1152000;
assign grp_fu_471_p0 = (zext_ln47_fu_463_p1 + zext_ln33_2_cast_reg_749);
assign grp_fu_471_p1 = 24'd1152000;
assign grp_fu_487_p0 = {{{{tmp_33}, {1'd1}}, {lshr_ln48_5_reg_764}}, {2'd3}};
assign grp_fu_487_p1 = 23'd1152000;
assign lshr_ln48_5_fu_407_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign mul_ln51_3_fu_355_p0 = mul_ln51_3_fu_355_p00;
assign mul_ln51_3_fu_355_p00 = tmp_3_reg_788_pp0_iter12_reg;
assign mul_ln51_3_fu_355_p1 = 47'd15270995;
assign mul_ln51_fu_360_p0 = mul_ln51_fu_360_p00;
assign mul_ln51_fu_360_p00 = add_ln51_reg_782_pp0_iter13_reg;
assign mul_ln51_fu_360_p1 = 49'd30541990;
assign tmp_1_fu_427_p5 = {{{{tmp_33}, {1'd1}}, {tmp_s_fu_417_p4}}, {1'd1}};
assign tmp_2_fu_445_p5 = {{{{tmp_33}, {1'd1}}, {lshr_ln48_5_fu_407_p4}}, {2'd2}};
assign tmp_3_fu_477_p5 = {{{{tmp_33}, {1'd1}}, {lshr_ln48_5_reg_764}}, {2'd3}};
assign tmp_s_fu_417_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
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
assign v23_1_fu_557_p2 = v0_0_q1;
assign v23_1_fu_557_p4 = v0_1_q1;
assign v23_1_fu_557_p6 = v0_2_q1;
assign v23_1_fu_557_p8 = v0_3_q1;
assign v23_1_fu_557_p9 = 'bx;
assign v23_2_fu_596_p2 = v0_0_q0;
assign v23_2_fu_596_p4 = v0_1_q0;
assign v23_2_fu_596_p6 = v0_2_q0;
assign v23_2_fu_596_p8 = v0_3_q0;
assign v23_2_fu_596_p9 = 'bx;
assign v23_3_fu_643_p2 = v0_0_q1;
assign v23_3_fu_643_p4 = v0_1_q1;
assign v23_3_fu_643_p6 = v0_2_q1;
assign v23_3_fu_643_p8 = v0_3_q1;
assign v23_3_fu_643_p9 = 'bx;
assign v23_fu_703_p2 = v0_0_q0;
assign v23_fu_703_p4 = v0_1_q0;
assign v23_fu_703_p6 = v0_2_q0;
assign v23_fu_703_p8 = v0_3_q0;
assign v23_fu_703_p9 = 'bx;
assign v3_1_address0 = zext_ln48_fu_726_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_375;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_fu_726_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_381;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_reg_919;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_375;
assign v3_3_we0 = v3_3_we0_local;
assign v3_address0 = zext_ln48_reg_919_pp0_iter17_reg;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_381;
assign v3_we0 = v3_we0_local;
assign zext_ln33_2_cast_fu_387_p1 = zext_ln33_2;
assign zext_ln47_fu_463_p1 = v19_1_reg_754;
assign zext_ln48_fu_726_p1 = lshr_ln48_5_reg_764_pp0_iter15_reg;
assign zext_ln51_2_fu_507_p1 = grp_fu_439_p2;
assign zext_ln51_3_fu_503_p1 = tmp_1_reg_770_pp0_iter12_reg;
assign zext_ln51_4_fu_515_p1 = grp_fu_457_p2;
assign zext_ln51_5_fu_523_p1 = tmp_2_reg_776_pp0_iter12_reg;
assign zext_ln51_6_fu_619_p1 = grp_fu_487_p2;
assign zext_ln51_fu_666_p1 = urem_ln51_reg_879;
always @ (posedge ap_clk) begin
    zext_ln33_2_cast_reg_749[23] <= 1'b0;
    tmp_1_reg_770[0] <= 1'b1;
    tmp_1_reg_770[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter1_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter1_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter2_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter2_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter3_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter3_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter4_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter4_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter5_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter5_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter6_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter6_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter7_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter7_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter8_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter8_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter9_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter9_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter10_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter10_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter11_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter11_reg[10] <= 1'b1;
    tmp_1_reg_770_pp0_iter12_reg[0] <= 1'b1;
    tmp_1_reg_770_pp0_iter12_reg[10] <= 1'b1;
    tmp_2_reg_776[1:0] <= 2'b10;
    tmp_2_reg_776[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter1_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter1_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter2_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter2_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter3_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter3_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter4_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter4_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter5_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter5_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter6_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter6_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter7_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter7_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter8_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter8_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter9_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter9_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter10_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter10_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter11_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter11_reg[10] <= 1'b1;
    tmp_2_reg_776_pp0_iter12_reg[1:0] <= 2'b10;
    tmp_2_reg_776_pp0_iter12_reg[10] <= 1'b1;
    tmp_3_reg_788[1:0] <= 2'b11;
    tmp_3_reg_788[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter1_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter1_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter2_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter2_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter3_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter3_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter4_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter4_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter5_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter5_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter6_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter6_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter7_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter7_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter8_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter8_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter9_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter9_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter10_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter10_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter11_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter11_reg[10] <= 1'b1;
    tmp_3_reg_788_pp0_iter12_reg[1:0] <= 2'b11;
    tmp_3_reg_788_pp0_iter12_reg[10] <= 1'b1;
    zext_ln48_reg_919[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_919_pp0_iter17_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 