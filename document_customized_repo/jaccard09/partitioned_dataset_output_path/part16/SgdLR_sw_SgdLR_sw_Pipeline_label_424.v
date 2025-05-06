
module SgdLR_sw_SgdLR_sw_Pipeline_label_424 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_q0,v2_2_address1,v2_2_ce1,v2_2_we1,v2_2_d1,v2_2_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_q0,v2_3_address1,v2_3_ce1,v2_3_we1,v2_3_d1,v2_3_q1,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_q0,v2_4_address1,v2_4_ce1,v2_4_we1,v2_4_d1,v2_4_q1,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_q0,v2_5_address1,v2_5_ce1,v2_5_we1,v2_5_d1,v2_5_q1,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_q0,v2_6_address1,v2_6_ce1,v2_6_we1,v2_6_d1,v2_6_q1,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_q0,v2_7_address1,v2_7_ce1,v2_7_we1,v2_7_d1,v2_7_q1,grp_fu_1354_p_din0,grp_fu_1354_p_din1,grp_fu_1354_p_opcode,grp_fu_1354_p_dout0,grp_fu_1354_p_ce,grp_fu_2857_p_din0,grp_fu_2857_p_din1,grp_fu_2857_p_dout0,grp_fu_2857_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [6:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [6:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
input  [31:0] v2_2_q0;
output  [6:0] v2_2_address1;
output   v2_2_ce1;
output   v2_2_we1;
output  [31:0] v2_2_d1;
input  [31:0] v2_2_q1;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
input  [31:0] v2_3_q0;
output  [6:0] v2_3_address1;
output   v2_3_ce1;
output   v2_3_we1;
output  [31:0] v2_3_d1;
input  [31:0] v2_3_q1;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
output   v2_4_we0;
output  [31:0] v2_4_d0;
input  [31:0] v2_4_q0;
output  [6:0] v2_4_address1;
output   v2_4_ce1;
output   v2_4_we1;
output  [31:0] v2_4_d1;
input  [31:0] v2_4_q1;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
output   v2_5_we0;
output  [31:0] v2_5_d0;
input  [31:0] v2_5_q0;
output  [6:0] v2_5_address1;
output   v2_5_ce1;
output   v2_5_we1;
output  [31:0] v2_5_d1;
input  [31:0] v2_5_q1;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
output   v2_6_we0;
output  [31:0] v2_6_d0;
input  [31:0] v2_6_q0;
output  [6:0] v2_6_address1;
output   v2_6_ce1;
output   v2_6_we1;
output  [31:0] v2_6_d1;
input  [31:0] v2_6_q1;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
output   v2_7_we0;
output  [31:0] v2_7_d0;
input  [31:0] v2_7_q0;
output  [6:0] v2_7_address1;
output   v2_7_ce1;
output   v2_7_we1;
output  [31:0] v2_7_d1;
input  [31:0] v2_7_q1;
output  [31:0] grp_fu_1354_p_din0;
output  [31:0] grp_fu_1354_p_din1;
output  [0:0] grp_fu_1354_p_opcode;
input  [31:0] grp_fu_1354_p_dout0;
output   grp_fu_1354_p_ce;
output  [31:0] grp_fu_2857_p_din0;
output  [31:0] grp_fu_2857_p_din1;
input  [31:0] grp_fu_2857_p_dout0;
output   grp_fu_2857_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_600;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_reg_593;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v25_reg_593_pp0_iter1_reg;
reg   [2:0] trunc_ln55_6_reg_604;
reg   [2:0] trunc_ln55_6_reg_604_pp0_iter1_reg;
reg   [2:0] trunc_ln55_6_reg_604_pp0_iter2_reg;
reg   [2:0] trunc_ln55_6_reg_604_pp0_iter3_reg;
reg   [2:0] trunc_ln55_6_reg_604_pp0_iter4_reg;
reg   [2:0] trunc_ln55_6_reg_604_pp0_iter5_reg;
reg   [2:0] trunc_ln55_6_reg_604_pp0_iter6_reg;
reg   [2:0] trunc_ln55_6_reg_604_pp0_iter7_reg;
reg   [31:0] v26_reg_620;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v26_11_reg_625;
reg   [6:0] v2_0_addr_reg_630;
reg   [6:0] v2_0_addr_reg_630_pp0_iter3_reg;
reg   [6:0] v2_0_addr_reg_630_pp0_iter4_reg;
reg   [6:0] v2_0_addr_reg_630_pp0_iter5_reg;
reg   [6:0] v2_0_addr_reg_630_pp0_iter6_reg;
reg   [6:0] v2_1_addr_reg_635;
reg   [6:0] v2_1_addr_reg_635_pp0_iter3_reg;
reg   [6:0] v2_1_addr_reg_635_pp0_iter4_reg;
reg   [6:0] v2_1_addr_reg_635_pp0_iter5_reg;
reg   [6:0] v2_1_addr_reg_635_pp0_iter6_reg;
reg   [6:0] v2_2_addr_reg_640;
reg   [6:0] v2_2_addr_reg_640_pp0_iter3_reg;
reg   [6:0] v2_2_addr_reg_640_pp0_iter4_reg;
reg   [6:0] v2_2_addr_reg_640_pp0_iter5_reg;
reg   [6:0] v2_2_addr_reg_640_pp0_iter6_reg;
reg   [6:0] v2_3_addr_reg_645;
reg   [6:0] v2_3_addr_reg_645_pp0_iter3_reg;
reg   [6:0] v2_3_addr_reg_645_pp0_iter4_reg;
reg   [6:0] v2_3_addr_reg_645_pp0_iter5_reg;
reg   [6:0] v2_3_addr_reg_645_pp0_iter6_reg;
reg   [6:0] v2_4_addr_reg_650;
reg   [6:0] v2_4_addr_reg_650_pp0_iter3_reg;
reg   [6:0] v2_4_addr_reg_650_pp0_iter4_reg;
reg   [6:0] v2_4_addr_reg_650_pp0_iter5_reg;
reg   [6:0] v2_4_addr_reg_650_pp0_iter6_reg;
reg   [6:0] v2_5_addr_reg_655;
reg   [6:0] v2_5_addr_reg_655_pp0_iter3_reg;
reg   [6:0] v2_5_addr_reg_655_pp0_iter4_reg;
reg   [6:0] v2_5_addr_reg_655_pp0_iter5_reg;
reg   [6:0] v2_5_addr_reg_655_pp0_iter6_reg;
reg   [6:0] v2_6_addr_reg_660;
reg   [6:0] v2_6_addr_reg_660_pp0_iter3_reg;
reg   [6:0] v2_6_addr_reg_660_pp0_iter4_reg;
reg   [6:0] v2_6_addr_reg_660_pp0_iter5_reg;
reg   [6:0] v2_6_addr_reg_660_pp0_iter6_reg;
reg   [6:0] v2_7_addr_reg_665;
reg   [6:0] v2_7_addr_reg_665_pp0_iter3_reg;
reg   [6:0] v2_7_addr_reg_665_pp0_iter4_reg;
reg   [6:0] v2_7_addr_reg_665_pp0_iter5_reg;
reg   [6:0] v2_7_addr_reg_665_pp0_iter6_reg;
reg   [6:0] v2_0_addr_11_reg_670;
reg   [6:0] v2_0_addr_11_reg_670_pp0_iter3_reg;
reg   [6:0] v2_0_addr_11_reg_670_pp0_iter4_reg;
reg   [6:0] v2_0_addr_11_reg_670_pp0_iter5_reg;
reg   [6:0] v2_0_addr_11_reg_670_pp0_iter6_reg;
reg   [6:0] v2_0_addr_11_reg_670_pp0_iter7_reg;
reg   [6:0] v2_1_addr_11_reg_675;
reg   [6:0] v2_1_addr_11_reg_675_pp0_iter3_reg;
reg   [6:0] v2_1_addr_11_reg_675_pp0_iter4_reg;
reg   [6:0] v2_1_addr_11_reg_675_pp0_iter5_reg;
reg   [6:0] v2_1_addr_11_reg_675_pp0_iter6_reg;
reg   [6:0] v2_1_addr_11_reg_675_pp0_iter7_reg;
reg   [6:0] v2_2_addr_11_reg_680;
reg   [6:0] v2_2_addr_11_reg_680_pp0_iter3_reg;
reg   [6:0] v2_2_addr_11_reg_680_pp0_iter4_reg;
reg   [6:0] v2_2_addr_11_reg_680_pp0_iter5_reg;
reg   [6:0] v2_2_addr_11_reg_680_pp0_iter6_reg;
reg   [6:0] v2_2_addr_11_reg_680_pp0_iter7_reg;
reg   [6:0] v2_3_addr_11_reg_685;
reg   [6:0] v2_3_addr_11_reg_685_pp0_iter3_reg;
reg   [6:0] v2_3_addr_11_reg_685_pp0_iter4_reg;
reg   [6:0] v2_3_addr_11_reg_685_pp0_iter5_reg;
reg   [6:0] v2_3_addr_11_reg_685_pp0_iter6_reg;
reg   [6:0] v2_3_addr_11_reg_685_pp0_iter7_reg;
reg   [6:0] v2_4_addr_11_reg_690;
reg   [6:0] v2_4_addr_11_reg_690_pp0_iter3_reg;
reg   [6:0] v2_4_addr_11_reg_690_pp0_iter4_reg;
reg   [6:0] v2_4_addr_11_reg_690_pp0_iter5_reg;
reg   [6:0] v2_4_addr_11_reg_690_pp0_iter6_reg;
reg   [6:0] v2_4_addr_11_reg_690_pp0_iter7_reg;
reg   [6:0] v2_5_addr_11_reg_695;
reg   [6:0] v2_5_addr_11_reg_695_pp0_iter3_reg;
reg   [6:0] v2_5_addr_11_reg_695_pp0_iter4_reg;
reg   [6:0] v2_5_addr_11_reg_695_pp0_iter5_reg;
reg   [6:0] v2_5_addr_11_reg_695_pp0_iter6_reg;
reg   [6:0] v2_5_addr_11_reg_695_pp0_iter7_reg;
reg   [6:0] v2_6_addr_11_reg_700;
reg   [6:0] v2_6_addr_11_reg_700_pp0_iter3_reg;
reg   [6:0] v2_6_addr_11_reg_700_pp0_iter4_reg;
reg   [6:0] v2_6_addr_11_reg_700_pp0_iter5_reg;
reg   [6:0] v2_6_addr_11_reg_700_pp0_iter6_reg;
reg   [6:0] v2_6_addr_11_reg_700_pp0_iter7_reg;
reg   [6:0] v2_7_addr_11_reg_705;
reg   [6:0] v2_7_addr_11_reg_705_pp0_iter3_reg;
reg   [6:0] v2_7_addr_11_reg_705_pp0_iter4_reg;
reg   [6:0] v2_7_addr_11_reg_705_pp0_iter5_reg;
reg   [6:0] v2_7_addr_11_reg_705_pp0_iter6_reg;
reg   [6:0] v2_7_addr_11_reg_705_pp0_iter7_reg;
reg   [31:0] v27_4_reg_710;
wire   [31:0] v28_4_fu_468_p19;
reg   [31:0] v28_4_reg_715;
wire   [31:0] v28_6_fu_539_p19;
reg   [31:0] v28_6_reg_720;
reg   [31:0] v27_6_reg_725;
wire   [31:0] bitcast_ln60_4_fu_578_p1;
reg   [31:0] bitcast_ln60_4_reg_730;
wire   [31:0] bitcast_ln60_6_fu_582_p1;
reg   [31:0] bitcast_ln60_6_reg_742;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_4_fu_344_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_4_fu_377_p1;
wire   [63:0] zext_ln55_6_fu_395_p1;
wire   [63:0] zext_ln56_5_fu_424_p1;
reg   [10:0] v25_2_fu_90;
wire   [10:0] add_ln55_fu_382_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg   [6:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [6:0] v2_0_address0_local;
reg    v2_0_we1_local;
wire    ap_block_pp0_stage1;
reg    v2_0_we0_local;
reg    v2_1_ce1_local;
reg   [6:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [6:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg    v2_1_we0_local;
reg    v2_2_ce1_local;
reg   [6:0] v2_2_address1_local;
reg    v2_2_ce0_local;
reg   [6:0] v2_2_address0_local;
reg    v2_2_we1_local;
reg    v2_2_we0_local;
reg    v2_3_ce1_local;
reg   [6:0] v2_3_address1_local;
reg    v2_3_ce0_local;
reg   [6:0] v2_3_address0_local;
reg    v2_3_we1_local;
reg    v2_3_we0_local;
reg    v2_4_ce1_local;
reg   [6:0] v2_4_address1_local;
reg    v2_4_ce0_local;
reg   [6:0] v2_4_address0_local;
reg    v2_4_we1_local;
reg    v2_4_we0_local;
reg    v2_5_ce1_local;
reg   [6:0] v2_5_address1_local;
reg    v2_5_ce0_local;
reg   [6:0] v2_5_address0_local;
reg    v2_5_we1_local;
reg    v2_5_we0_local;
reg    v2_6_ce1_local;
reg   [6:0] v2_6_address1_local;
reg    v2_6_ce0_local;
reg   [6:0] v2_6_address0_local;
reg    v2_6_we1_local;
reg    v2_6_we0_local;
reg    v2_7_ce1_local;
reg   [6:0] v2_7_address1_local;
reg    v2_7_ce0_local;
reg   [6:0] v2_7_address0_local;
reg    v2_7_we1_local;
reg    v2_7_we0_local;
reg   [31:0] grp_fu_319_p0;
reg   [31:0] grp_fu_319_p1;
reg   [31:0] grp_fu_323_p0;
wire   [8:0] tmp_s_fu_359_p4;
wire   [9:0] or_ln55_2_fu_369_p3;
wire   [6:0] trunc_ln55_fu_392_p1;
wire   [5:0] tmp_12_fu_407_p4;
wire   [6:0] or_ln56_2_fu_416_p3;
wire   [31:0] v28_4_fu_468_p2;
wire   [31:0] v28_4_fu_468_p4;
wire   [31:0] v28_4_fu_468_p6;
wire   [31:0] v28_4_fu_468_p8;
wire   [31:0] v28_4_fu_468_p10;
wire   [31:0] v28_4_fu_468_p12;
wire   [31:0] v28_4_fu_468_p14;
wire   [31:0] v28_4_fu_468_p16;
wire   [31:0] v28_4_fu_468_p17;
wire   [31:0] v28_6_fu_539_p2;
wire   [31:0] v28_6_fu_539_p4;
wire   [31:0] v28_6_fu_539_p6;
wire   [31:0] v28_6_fu_539_p8;
wire   [31:0] v28_6_fu_539_p10;
wire   [31:0] v28_6_fu_539_p12;
wire   [31:0] v28_6_fu_539_p14;
wire   [31:0] v28_6_fu_539_p16;
wire   [31:0] v28_6_fu_539_p17;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v28_4_fu_468_p1;
wire   [2:0] v28_4_fu_468_p3;
wire   [2:0] v28_4_fu_468_p5;
wire   [2:0] v28_4_fu_468_p7;
wire  signed [2:0] v28_4_fu_468_p9;
wire  signed [2:0] v28_4_fu_468_p11;
wire  signed [2:0] v28_4_fu_468_p13;
wire  signed [2:0] v28_4_fu_468_p15;
wire   [2:0] v28_6_fu_539_p1;
wire   [2:0] v28_6_fu_539_p3;
wire   [2:0] v28_6_fu_539_p5;
wire   [2:0] v28_6_fu_539_p7;
wire  signed [2:0] v28_6_fu_539_p9;
wire  signed [2:0] v28_6_fu_539_p11;
wire  signed [2:0] v28_6_fu_539_p13;
wire  signed [2:0] v28_6_fu_539_p15;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_2_fu_90 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U323(.din0(v28_4_fu_468_p2),.din1(v28_4_fu_468_p4),.din2(v28_4_fu_468_p6),.din3(v28_4_fu_468_p8),.din4(v28_4_fu_468_p10),.din5(v28_4_fu_468_p12),.din6(v28_4_fu_468_p14),.din7(v28_4_fu_468_p16),.def(v28_4_fu_468_p17),.sel(trunc_ln55_6_reg_604_pp0_iter2_reg),.dout(v28_4_fu_468_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U324(.din0(v28_6_fu_539_p2),.din1(v28_6_fu_539_p4),.din2(v28_6_fu_539_p6),.din3(v28_6_fu_539_p8),.din4(v28_6_fu_539_p10),.din5(v28_6_fu_539_p12),.din6(v28_6_fu_539_p14),.din7(v28_6_fu_539_p16),.def(v28_6_fu_539_p17),.sel(trunc_ln55_6_reg_604_pp0_iter2_reg),.dout(v28_6_fu_539_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_2_fu_90 <= 11'd0;
    end else if (((tmp_reg_600 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v25_2_fu_90 <= add_ln55_fu_382_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        bitcast_ln60_6_reg_742 <= bitcast_ln60_6_fu_582_p1;
        v28_4_reg_715 <= v28_4_fu_468_p19;
        v28_6_reg_720 <= v28_6_fu_539_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln60_4_reg_730 <= bitcast_ln60_4_fu_578_p1;
        tmp_reg_600 <= ap_sig_allocacmp_v25[32'd10];
        trunc_ln55_6_reg_604 <= {{ap_sig_allocacmp_v25[9:7]}};
        trunc_ln55_6_reg_604_pp0_iter1_reg <= trunc_ln55_6_reg_604;
        trunc_ln55_6_reg_604_pp0_iter2_reg <= trunc_ln55_6_reg_604_pp0_iter1_reg;
        trunc_ln55_6_reg_604_pp0_iter3_reg <= trunc_ln55_6_reg_604_pp0_iter2_reg;
        trunc_ln55_6_reg_604_pp0_iter4_reg <= trunc_ln55_6_reg_604_pp0_iter3_reg;
        trunc_ln55_6_reg_604_pp0_iter5_reg <= trunc_ln55_6_reg_604_pp0_iter4_reg;
        trunc_ln55_6_reg_604_pp0_iter6_reg <= trunc_ln55_6_reg_604_pp0_iter5_reg;
        trunc_ln55_6_reg_604_pp0_iter7_reg <= trunc_ln55_6_reg_604_pp0_iter6_reg;
        v25_reg_593 <= ap_sig_allocacmp_v25;
        v25_reg_593_pp0_iter1_reg <= v25_reg_593;
        v2_0_addr_11_reg_670[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_0_addr_11_reg_670_pp0_iter3_reg[6 : 1] <= v2_0_addr_11_reg_670[6 : 1];
        v2_0_addr_11_reg_670_pp0_iter4_reg[6 : 1] <= v2_0_addr_11_reg_670_pp0_iter3_reg[6 : 1];
        v2_0_addr_11_reg_670_pp0_iter5_reg[6 : 1] <= v2_0_addr_11_reg_670_pp0_iter4_reg[6 : 1];
        v2_0_addr_11_reg_670_pp0_iter6_reg[6 : 1] <= v2_0_addr_11_reg_670_pp0_iter5_reg[6 : 1];
        v2_0_addr_11_reg_670_pp0_iter7_reg[6 : 1] <= v2_0_addr_11_reg_670_pp0_iter6_reg[6 : 1];
        v2_0_addr_reg_630 <= zext_ln55_6_fu_395_p1;
        v2_0_addr_reg_630_pp0_iter3_reg <= v2_0_addr_reg_630;
        v2_0_addr_reg_630_pp0_iter4_reg <= v2_0_addr_reg_630_pp0_iter3_reg;
        v2_0_addr_reg_630_pp0_iter5_reg <= v2_0_addr_reg_630_pp0_iter4_reg;
        v2_0_addr_reg_630_pp0_iter6_reg <= v2_0_addr_reg_630_pp0_iter5_reg;
        v2_1_addr_11_reg_675[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_1_addr_11_reg_675_pp0_iter3_reg[6 : 1] <= v2_1_addr_11_reg_675[6 : 1];
        v2_1_addr_11_reg_675_pp0_iter4_reg[6 : 1] <= v2_1_addr_11_reg_675_pp0_iter3_reg[6 : 1];
        v2_1_addr_11_reg_675_pp0_iter5_reg[6 : 1] <= v2_1_addr_11_reg_675_pp0_iter4_reg[6 : 1];
        v2_1_addr_11_reg_675_pp0_iter6_reg[6 : 1] <= v2_1_addr_11_reg_675_pp0_iter5_reg[6 : 1];
        v2_1_addr_11_reg_675_pp0_iter7_reg[6 : 1] <= v2_1_addr_11_reg_675_pp0_iter6_reg[6 : 1];
        v2_1_addr_reg_635 <= zext_ln55_6_fu_395_p1;
        v2_1_addr_reg_635_pp0_iter3_reg <= v2_1_addr_reg_635;
        v2_1_addr_reg_635_pp0_iter4_reg <= v2_1_addr_reg_635_pp0_iter3_reg;
        v2_1_addr_reg_635_pp0_iter5_reg <= v2_1_addr_reg_635_pp0_iter4_reg;
        v2_1_addr_reg_635_pp0_iter6_reg <= v2_1_addr_reg_635_pp0_iter5_reg;
        v2_2_addr_11_reg_680[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_2_addr_11_reg_680_pp0_iter3_reg[6 : 1] <= v2_2_addr_11_reg_680[6 : 1];
        v2_2_addr_11_reg_680_pp0_iter4_reg[6 : 1] <= v2_2_addr_11_reg_680_pp0_iter3_reg[6 : 1];
        v2_2_addr_11_reg_680_pp0_iter5_reg[6 : 1] <= v2_2_addr_11_reg_680_pp0_iter4_reg[6 : 1];
        v2_2_addr_11_reg_680_pp0_iter6_reg[6 : 1] <= v2_2_addr_11_reg_680_pp0_iter5_reg[6 : 1];
        v2_2_addr_11_reg_680_pp0_iter7_reg[6 : 1] <= v2_2_addr_11_reg_680_pp0_iter6_reg[6 : 1];
        v2_2_addr_reg_640 <= zext_ln55_6_fu_395_p1;
        v2_2_addr_reg_640_pp0_iter3_reg <= v2_2_addr_reg_640;
        v2_2_addr_reg_640_pp0_iter4_reg <= v2_2_addr_reg_640_pp0_iter3_reg;
        v2_2_addr_reg_640_pp0_iter5_reg <= v2_2_addr_reg_640_pp0_iter4_reg;
        v2_2_addr_reg_640_pp0_iter6_reg <= v2_2_addr_reg_640_pp0_iter5_reg;
        v2_3_addr_11_reg_685[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_3_addr_11_reg_685_pp0_iter3_reg[6 : 1] <= v2_3_addr_11_reg_685[6 : 1];
        v2_3_addr_11_reg_685_pp0_iter4_reg[6 : 1] <= v2_3_addr_11_reg_685_pp0_iter3_reg[6 : 1];
        v2_3_addr_11_reg_685_pp0_iter5_reg[6 : 1] <= v2_3_addr_11_reg_685_pp0_iter4_reg[6 : 1];
        v2_3_addr_11_reg_685_pp0_iter6_reg[6 : 1] <= v2_3_addr_11_reg_685_pp0_iter5_reg[6 : 1];
        v2_3_addr_11_reg_685_pp0_iter7_reg[6 : 1] <= v2_3_addr_11_reg_685_pp0_iter6_reg[6 : 1];
        v2_3_addr_reg_645 <= zext_ln55_6_fu_395_p1;
        v2_3_addr_reg_645_pp0_iter3_reg <= v2_3_addr_reg_645;
        v2_3_addr_reg_645_pp0_iter4_reg <= v2_3_addr_reg_645_pp0_iter3_reg;
        v2_3_addr_reg_645_pp0_iter5_reg <= v2_3_addr_reg_645_pp0_iter4_reg;
        v2_3_addr_reg_645_pp0_iter6_reg <= v2_3_addr_reg_645_pp0_iter5_reg;
        v2_4_addr_11_reg_690[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_4_addr_11_reg_690_pp0_iter3_reg[6 : 1] <= v2_4_addr_11_reg_690[6 : 1];
        v2_4_addr_11_reg_690_pp0_iter4_reg[6 : 1] <= v2_4_addr_11_reg_690_pp0_iter3_reg[6 : 1];
        v2_4_addr_11_reg_690_pp0_iter5_reg[6 : 1] <= v2_4_addr_11_reg_690_pp0_iter4_reg[6 : 1];
        v2_4_addr_11_reg_690_pp0_iter6_reg[6 : 1] <= v2_4_addr_11_reg_690_pp0_iter5_reg[6 : 1];
        v2_4_addr_11_reg_690_pp0_iter7_reg[6 : 1] <= v2_4_addr_11_reg_690_pp0_iter6_reg[6 : 1];
        v2_4_addr_reg_650 <= zext_ln55_6_fu_395_p1;
        v2_4_addr_reg_650_pp0_iter3_reg <= v2_4_addr_reg_650;
        v2_4_addr_reg_650_pp0_iter4_reg <= v2_4_addr_reg_650_pp0_iter3_reg;
        v2_4_addr_reg_650_pp0_iter5_reg <= v2_4_addr_reg_650_pp0_iter4_reg;
        v2_4_addr_reg_650_pp0_iter6_reg <= v2_4_addr_reg_650_pp0_iter5_reg;
        v2_5_addr_11_reg_695[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_5_addr_11_reg_695_pp0_iter3_reg[6 : 1] <= v2_5_addr_11_reg_695[6 : 1];
        v2_5_addr_11_reg_695_pp0_iter4_reg[6 : 1] <= v2_5_addr_11_reg_695_pp0_iter3_reg[6 : 1];
        v2_5_addr_11_reg_695_pp0_iter5_reg[6 : 1] <= v2_5_addr_11_reg_695_pp0_iter4_reg[6 : 1];
        v2_5_addr_11_reg_695_pp0_iter6_reg[6 : 1] <= v2_5_addr_11_reg_695_pp0_iter5_reg[6 : 1];
        v2_5_addr_11_reg_695_pp0_iter7_reg[6 : 1] <= v2_5_addr_11_reg_695_pp0_iter6_reg[6 : 1];
        v2_5_addr_reg_655 <= zext_ln55_6_fu_395_p1;
        v2_5_addr_reg_655_pp0_iter3_reg <= v2_5_addr_reg_655;
        v2_5_addr_reg_655_pp0_iter4_reg <= v2_5_addr_reg_655_pp0_iter3_reg;
        v2_5_addr_reg_655_pp0_iter5_reg <= v2_5_addr_reg_655_pp0_iter4_reg;
        v2_5_addr_reg_655_pp0_iter6_reg <= v2_5_addr_reg_655_pp0_iter5_reg;
        v2_6_addr_11_reg_700[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_6_addr_11_reg_700_pp0_iter3_reg[6 : 1] <= v2_6_addr_11_reg_700[6 : 1];
        v2_6_addr_11_reg_700_pp0_iter4_reg[6 : 1] <= v2_6_addr_11_reg_700_pp0_iter3_reg[6 : 1];
        v2_6_addr_11_reg_700_pp0_iter5_reg[6 : 1] <= v2_6_addr_11_reg_700_pp0_iter4_reg[6 : 1];
        v2_6_addr_11_reg_700_pp0_iter6_reg[6 : 1] <= v2_6_addr_11_reg_700_pp0_iter5_reg[6 : 1];
        v2_6_addr_11_reg_700_pp0_iter7_reg[6 : 1] <= v2_6_addr_11_reg_700_pp0_iter6_reg[6 : 1];
        v2_6_addr_reg_660 <= zext_ln55_6_fu_395_p1;
        v2_6_addr_reg_660_pp0_iter3_reg <= v2_6_addr_reg_660;
        v2_6_addr_reg_660_pp0_iter4_reg <= v2_6_addr_reg_660_pp0_iter3_reg;
        v2_6_addr_reg_660_pp0_iter5_reg <= v2_6_addr_reg_660_pp0_iter4_reg;
        v2_6_addr_reg_660_pp0_iter6_reg <= v2_6_addr_reg_660_pp0_iter5_reg;
        v2_7_addr_11_reg_705[6 : 1] <= zext_ln56_5_fu_424_p1[6 : 1];
        v2_7_addr_11_reg_705_pp0_iter3_reg[6 : 1] <= v2_7_addr_11_reg_705[6 : 1];
        v2_7_addr_11_reg_705_pp0_iter4_reg[6 : 1] <= v2_7_addr_11_reg_705_pp0_iter3_reg[6 : 1];
        v2_7_addr_11_reg_705_pp0_iter5_reg[6 : 1] <= v2_7_addr_11_reg_705_pp0_iter4_reg[6 : 1];
        v2_7_addr_11_reg_705_pp0_iter6_reg[6 : 1] <= v2_7_addr_11_reg_705_pp0_iter5_reg[6 : 1];
        v2_7_addr_11_reg_705_pp0_iter7_reg[6 : 1] <= v2_7_addr_11_reg_705_pp0_iter6_reg[6 : 1];
        v2_7_addr_reg_665 <= zext_ln55_6_fu_395_p1;
        v2_7_addr_reg_665_pp0_iter3_reg <= v2_7_addr_reg_665;
        v2_7_addr_reg_665_pp0_iter4_reg <= v2_7_addr_reg_665_pp0_iter3_reg;
        v2_7_addr_reg_665_pp0_iter5_reg <= v2_7_addr_reg_665_pp0_iter4_reg;
        v2_7_addr_reg_665_pp0_iter6_reg <= v2_7_addr_reg_665_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_11_reg_625 <= v3_q0;
        v26_reg_620 <= v3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_4_reg_710 <= grp_fu_2857_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_6_reg_725 <= grp_fu_2857_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_600 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
        ap_sig_allocacmp_v25 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25 = v25_2_fu_90;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_319_p0 = v28_6_reg_720;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_319_p0 = v28_4_reg_715;
        end else begin
            grp_fu_319_p0 = 'bx;
        end
    end else begin
        grp_fu_319_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_319_p1 = v27_6_reg_725;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_319_p1 = v27_4_reg_710;
        end else begin
            grp_fu_319_p1 = 'bx;
        end
    end else begin
        grp_fu_319_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_323_p0 = v26_11_reg_625;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_323_p0 = v26_reg_620;
        end else begin
            grp_fu_323_p0 = 'bx;
        end
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = v2_0_addr_11_reg_670_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = v2_0_addr_reg_630_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = v2_1_addr_11_reg_675_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = v2_1_addr_reg_635_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address0_local = v2_2_addr_11_reg_680_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address1_local = v2_2_addr_reg_640_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_we1_local = 1'b1;
    end else begin
        v2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address0_local = v2_3_addr_11_reg_685_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address1_local = v2_3_addr_reg_645_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_we1_local = 1'b1;
    end else begin
        v2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_4_address0_local = v2_4_addr_11_reg_690_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_4_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_4_address1_local = v2_4_addr_reg_650_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_4_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_4_ce1_local = 1'b1;
    end else begin
        v2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_4_we0_local = 1'b1;
    end else begin
        v2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_4_we1_local = 1'b1;
    end else begin
        v2_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_5_address0_local = v2_5_addr_11_reg_695_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_5_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_5_address1_local = v2_5_addr_reg_655_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_5_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_5_ce1_local = 1'b1;
    end else begin
        v2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_5_we0_local = 1'b1;
    end else begin
        v2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_5_we1_local = 1'b1;
    end else begin
        v2_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_6_address0_local = v2_6_addr_11_reg_700_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_6_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_6_address1_local = v2_6_addr_reg_660_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_6_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_6_ce1_local = 1'b1;
    end else begin
        v2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_6_we0_local = 1'b1;
    end else begin
        v2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_6_we1_local = 1'b1;
    end else begin
        v2_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_7_address0_local = v2_7_addr_11_reg_705_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_7_address0_local = zext_ln56_5_fu_424_p1;
    end else begin
        v2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_7_address1_local = v2_7_addr_reg_665_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_7_address1_local = zext_ln55_6_fu_395_p1;
    end else begin
        v2_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_7_ce1_local = 1'b1;
    end else begin
        v2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter7_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_7_we0_local = 1'b1;
    end else begin
        v2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln55_6_reg_604_pp0_iter6_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_7_we1_local = 1'b1;
    end else begin
        v2_7_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln55_fu_382_p2 = (v25_reg_593 + 11'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_4_fu_578_p1 = grp_fu_1354_p_dout0;
assign bitcast_ln60_6_fu_582_p1 = grp_fu_1354_p_dout0;
assign grp_fu_1354_p_ce = 1'b1;
assign grp_fu_1354_p_din0 = grp_fu_319_p0;
assign grp_fu_1354_p_din1 = grp_fu_319_p1;
assign grp_fu_1354_p_opcode = 2'd0;
assign grp_fu_2857_p_ce = 1'b1;
assign grp_fu_2857_p_din0 = grp_fu_323_p0;
assign grp_fu_2857_p_din1 = 32'd3345637376;
assign or_ln55_2_fu_369_p3 = {{tmp_s_fu_359_p4}, {1'd1}};
assign or_ln56_2_fu_416_p3 = {{tmp_12_fu_407_p4}, {1'd1}};
assign tmp_12_fu_407_p4 = {{v25_reg_593_pp0_iter1_reg[6:1]}};
assign tmp_s_fu_359_p4 = {{ap_sig_allocacmp_v25[9:1]}};
assign trunc_ln55_fu_392_p1 = v25_reg_593_pp0_iter1_reg[6:0];
assign v28_4_fu_468_p10 = v2_4_q1;
assign v28_4_fu_468_p12 = v2_5_q1;
assign v28_4_fu_468_p14 = v2_6_q1;
assign v28_4_fu_468_p16 = v2_7_q1;
assign v28_4_fu_468_p17 = 'bx;
assign v28_4_fu_468_p2 = v2_0_q1;
assign v28_4_fu_468_p4 = v2_1_q1;
assign v28_4_fu_468_p6 = v2_2_q1;
assign v28_4_fu_468_p8 = v2_3_q1;
assign v28_6_fu_539_p10 = v2_4_q0;
assign v28_6_fu_539_p12 = v2_5_q0;
assign v28_6_fu_539_p14 = v2_6_q0;
assign v28_6_fu_539_p16 = v2_7_q0;
assign v28_6_fu_539_p17 = 'bx;
assign v28_6_fu_539_p2 = v2_0_q0;
assign v28_6_fu_539_p4 = v2_1_q0;
assign v28_6_fu_539_p6 = v2_2_q0;
assign v28_6_fu_539_p8 = v2_3_q0;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_6_reg_742;
assign v2_0_d1 = bitcast_ln60_4_reg_730;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_6_reg_742;
assign v2_1_d1 = bitcast_ln60_4_reg_730;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_address1 = v2_2_address1_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_6_reg_742;
assign v2_2_d1 = bitcast_ln60_4_reg_730;
assign v2_2_we0 = v2_2_we0_local;
assign v2_2_we1 = v2_2_we1_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_address1 = v2_3_address1_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_6_reg_742;
assign v2_3_d1 = bitcast_ln60_4_reg_730;
assign v2_3_we0 = v2_3_we0_local;
assign v2_3_we1 = v2_3_we1_local;
assign v2_4_address0 = v2_4_address0_local;
assign v2_4_address1 = v2_4_address1_local;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_ce1 = v2_4_ce1_local;
assign v2_4_d0 = bitcast_ln60_6_reg_742;
assign v2_4_d1 = bitcast_ln60_4_reg_730;
assign v2_4_we0 = v2_4_we0_local;
assign v2_4_we1 = v2_4_we1_local;
assign v2_5_address0 = v2_5_address0_local;
assign v2_5_address1 = v2_5_address1_local;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_ce1 = v2_5_ce1_local;
assign v2_5_d0 = bitcast_ln60_6_reg_742;
assign v2_5_d1 = bitcast_ln60_4_reg_730;
assign v2_5_we0 = v2_5_we0_local;
assign v2_5_we1 = v2_5_we1_local;
assign v2_6_address0 = v2_6_address0_local;
assign v2_6_address1 = v2_6_address1_local;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_ce1 = v2_6_ce1_local;
assign v2_6_d0 = bitcast_ln60_6_reg_742;
assign v2_6_d1 = bitcast_ln60_4_reg_730;
assign v2_6_we0 = v2_6_we0_local;
assign v2_6_we1 = v2_6_we1_local;
assign v2_7_address0 = v2_7_address0_local;
assign v2_7_address1 = v2_7_address1_local;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_ce1 = v2_7_ce1_local;
assign v2_7_d0 = bitcast_ln60_6_reg_742;
assign v2_7_d1 = bitcast_ln60_4_reg_730;
assign v2_7_we0 = v2_7_we0_local;
assign v2_7_we1 = v2_7_we1_local;
assign v3_address0 = zext_ln56_4_fu_377_p1;
assign v3_address1 = zext_ln55_4_fu_344_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_4_fu_344_p1 = ap_sig_allocacmp_v25;
assign zext_ln55_6_fu_395_p1 = trunc_ln55_fu_392_p1;
assign zext_ln56_4_fu_377_p1 = or_ln55_2_fu_369_p3;
assign zext_ln56_5_fu_424_p1 = or_ln56_2_fu_416_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_11_reg_670[0] <= 1'b1;
    v2_0_addr_11_reg_670_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_11_reg_670_pp0_iter4_reg[0] <= 1'b1;
    v2_0_addr_11_reg_670_pp0_iter5_reg[0] <= 1'b1;
    v2_0_addr_11_reg_670_pp0_iter6_reg[0] <= 1'b1;
    v2_0_addr_11_reg_670_pp0_iter7_reg[0] <= 1'b1;
    v2_1_addr_11_reg_675[0] <= 1'b1;
    v2_1_addr_11_reg_675_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_11_reg_675_pp0_iter4_reg[0] <= 1'b1;
    v2_1_addr_11_reg_675_pp0_iter5_reg[0] <= 1'b1;
    v2_1_addr_11_reg_675_pp0_iter6_reg[0] <= 1'b1;
    v2_1_addr_11_reg_675_pp0_iter7_reg[0] <= 1'b1;
    v2_2_addr_11_reg_680[0] <= 1'b1;
    v2_2_addr_11_reg_680_pp0_iter3_reg[0] <= 1'b1;
    v2_2_addr_11_reg_680_pp0_iter4_reg[0] <= 1'b1;
    v2_2_addr_11_reg_680_pp0_iter5_reg[0] <= 1'b1;
    v2_2_addr_11_reg_680_pp0_iter6_reg[0] <= 1'b1;
    v2_2_addr_11_reg_680_pp0_iter7_reg[0] <= 1'b1;
    v2_3_addr_11_reg_685[0] <= 1'b1;
    v2_3_addr_11_reg_685_pp0_iter3_reg[0] <= 1'b1;
    v2_3_addr_11_reg_685_pp0_iter4_reg[0] <= 1'b1;
    v2_3_addr_11_reg_685_pp0_iter5_reg[0] <= 1'b1;
    v2_3_addr_11_reg_685_pp0_iter6_reg[0] <= 1'b1;
    v2_3_addr_11_reg_685_pp0_iter7_reg[0] <= 1'b1;
    v2_4_addr_11_reg_690[0] <= 1'b1;
    v2_4_addr_11_reg_690_pp0_iter3_reg[0] <= 1'b1;
    v2_4_addr_11_reg_690_pp0_iter4_reg[0] <= 1'b1;
    v2_4_addr_11_reg_690_pp0_iter5_reg[0] <= 1'b1;
    v2_4_addr_11_reg_690_pp0_iter6_reg[0] <= 1'b1;
    v2_4_addr_11_reg_690_pp0_iter7_reg[0] <= 1'b1;
    v2_5_addr_11_reg_695[0] <= 1'b1;
    v2_5_addr_11_reg_695_pp0_iter3_reg[0] <= 1'b1;
    v2_5_addr_11_reg_695_pp0_iter4_reg[0] <= 1'b1;
    v2_5_addr_11_reg_695_pp0_iter5_reg[0] <= 1'b1;
    v2_5_addr_11_reg_695_pp0_iter6_reg[0] <= 1'b1;
    v2_5_addr_11_reg_695_pp0_iter7_reg[0] <= 1'b1;
    v2_6_addr_11_reg_700[0] <= 1'b1;
    v2_6_addr_11_reg_700_pp0_iter3_reg[0] <= 1'b1;
    v2_6_addr_11_reg_700_pp0_iter4_reg[0] <= 1'b1;
    v2_6_addr_11_reg_700_pp0_iter5_reg[0] <= 1'b1;
    v2_6_addr_11_reg_700_pp0_iter6_reg[0] <= 1'b1;
    v2_6_addr_11_reg_700_pp0_iter7_reg[0] <= 1'b1;
    v2_7_addr_11_reg_705[0] <= 1'b1;
    v2_7_addr_11_reg_705_pp0_iter3_reg[0] <= 1'b1;
    v2_7_addr_11_reg_705_pp0_iter4_reg[0] <= 1'b1;
    v2_7_addr_11_reg_705_pp0_iter5_reg[0] <= 1'b1;
    v2_7_addr_11_reg_705_pp0_iter6_reg[0] <= 1'b1;
    v2_7_addr_11_reg_705_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 
