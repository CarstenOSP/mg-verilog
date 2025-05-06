
module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_4_address0,buff_B_4_ce0,buff_B_4_q0,buff_B_5_address0,buff_B_5_ce0,buff_B_5_q0,buff_B_6_address0,buff_B_6_ce0,buff_B_6_q0,buff_B_7_address0,buff_B_7_ce0,buff_B_7_q0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_q1,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_address1,buff_C_out_2_ce1,buff_C_out_2_q1,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_address1,buff_C_out_3_ce1,buff_C_out_3_q1,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_address1,buff_C_out_4_ce1,buff_C_out_4_q1,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_address1,buff_C_out_5_ce1,buff_C_out_5_q1,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_address1,buff_C_out_6_ce1,buff_C_out_6_q1,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_address1,buff_C_out_7_ce1,buff_C_out_7_q1,beta,grp_fu_416_p_din0,grp_fu_416_p_din1,grp_fu_416_p_opcode,grp_fu_416_p_dout0,grp_fu_416_p_ce,grp_fu_420_p_din0,grp_fu_420_p_din1,grp_fu_420_p_opcode,grp_fu_420_p_dout0,grp_fu_420_p_ce,grp_fu_424_p_din0,grp_fu_424_p_din1,grp_fu_424_p_dout0,grp_fu_424_p_ce,grp_fu_428_p_din0,grp_fu_428_p_din1,grp_fu_428_p_dout0,grp_fu_428_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [8:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [8:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [8:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [8:0] buff_B_4_address0;
output   buff_B_4_ce0;
input  [31:0] buff_B_4_q0;
output  [8:0] buff_B_5_address0;
output   buff_B_5_ce0;
input  [31:0] buff_B_5_q0;
output  [8:0] buff_B_6_address0;
output   buff_B_6_ce0;
input  [31:0] buff_B_6_q0;
output  [8:0] buff_B_7_address0;
output   buff_B_7_ce0;
input  [31:0] buff_B_7_q0;
output  [8:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
output  [8:0] buff_C_out_address1;
output   buff_C_out_ce1;
input  [31:0] buff_C_out_q1;
output  [8:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
output  [8:0] buff_C_out_1_address1;
output   buff_C_out_1_ce1;
input  [31:0] buff_C_out_1_q1;
output  [8:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
output  [8:0] buff_C_out_2_address1;
output   buff_C_out_2_ce1;
input  [31:0] buff_C_out_2_q1;
output  [8:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
output  [8:0] buff_C_out_3_address1;
output   buff_C_out_3_ce1;
input  [31:0] buff_C_out_3_q1;
output  [8:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
output  [8:0] buff_C_out_4_address1;
output   buff_C_out_4_ce1;
input  [31:0] buff_C_out_4_q1;
output  [8:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
output  [8:0] buff_C_out_5_address1;
output   buff_C_out_5_ce1;
input  [31:0] buff_C_out_5_q1;
output  [8:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
output  [8:0] buff_C_out_6_address1;
output   buff_C_out_6_ce1;
input  [31:0] buff_C_out_6_q1;
output  [8:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
output  [8:0] buff_C_out_7_address1;
output   buff_C_out_7_ce1;
input  [31:0] buff_C_out_7_q1;
input  [31:0] beta;
output  [31:0] grp_fu_416_p_din0;
output  [31:0] grp_fu_416_p_din1;
output  [1:0] grp_fu_416_p_opcode;
input  [31:0] grp_fu_416_p_dout0;
output   grp_fu_416_p_ce;
output  [31:0] grp_fu_420_p_din0;
output  [31:0] grp_fu_420_p_din1;
output  [1:0] grp_fu_420_p_opcode;
input  [31:0] grp_fu_420_p_dout0;
output   grp_fu_420_p_ce;
output  [31:0] grp_fu_424_p_din0;
output  [31:0] grp_fu_424_p_din1;
input  [31:0] grp_fu_424_p_dout0;
output   grp_fu_424_p_ce;
output  [31:0] grp_fu_428_p_din0;
output  [31:0] grp_fu_428_p_din1;
input  [31:0] grp_fu_428_p_dout0;
output   grp_fu_428_p_ce;
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
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln29_fu_384_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln30_1_fu_441_p1;
reg   [2:0] trunc_ln30_1_reg_614;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter2_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter3_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter4_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter5_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter6_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter7_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter8_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter9_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter10_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter11_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter12_reg;
reg   [2:0] trunc_ln30_1_reg_614_pp0_iter13_reg;
wire   [63:0] zext_ln32_fu_463_p1;
reg   [63:0] zext_ln32_reg_622;
reg   [63:0] zext_ln32_reg_622_pp0_iter2_reg;
reg   [63:0] zext_ln32_reg_622_pp0_iter3_reg;
reg   [63:0] zext_ln32_reg_622_pp0_iter4_reg;
wire   [31:0] tmp_1_fu_491_p11;
reg   [31:0] tmp_1_reg_674;
wire   [31:0] tmp_3_fu_514_p11;
reg   [31:0] tmp_3_reg_679;
reg   [8:0] buff_C_out_addr_reg_684;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter6_reg;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter7_reg;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter8_reg;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter9_reg;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter10_reg;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter11_reg;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter12_reg;
reg   [8:0] buff_C_out_addr_reg_684_pp0_iter13_reg;
reg   [8:0] buff_C_out_1_addr_reg_690;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter6_reg;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter7_reg;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter8_reg;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter9_reg;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter10_reg;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter11_reg;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter12_reg;
reg   [8:0] buff_C_out_1_addr_reg_690_pp0_iter13_reg;
reg   [8:0] buff_C_out_2_addr_reg_696;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter6_reg;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter7_reg;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter8_reg;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter9_reg;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter10_reg;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter11_reg;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter12_reg;
reg   [8:0] buff_C_out_2_addr_reg_696_pp0_iter13_reg;
reg   [8:0] buff_C_out_3_addr_reg_702;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter6_reg;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter7_reg;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter8_reg;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter9_reg;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter10_reg;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter11_reg;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter12_reg;
reg   [8:0] buff_C_out_3_addr_reg_702_pp0_iter13_reg;
reg   [8:0] buff_C_out_4_addr_reg_708;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter6_reg;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter7_reg;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter8_reg;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter9_reg;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter10_reg;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter11_reg;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter12_reg;
reg   [8:0] buff_C_out_4_addr_reg_708_pp0_iter13_reg;
reg   [8:0] buff_C_out_5_addr_reg_714;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter6_reg;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter7_reg;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter8_reg;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter9_reg;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter10_reg;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter11_reg;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter12_reg;
reg   [8:0] buff_C_out_5_addr_reg_714_pp0_iter13_reg;
reg   [8:0] buff_C_out_6_addr_reg_720;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter6_reg;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter7_reg;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter8_reg;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter9_reg;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter10_reg;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter11_reg;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter12_reg;
reg   [8:0] buff_C_out_6_addr_reg_720_pp0_iter13_reg;
reg   [8:0] buff_C_out_7_addr_reg_726;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter6_reg;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter7_reg;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter8_reg;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter9_reg;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter10_reg;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter11_reg;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter12_reg;
reg   [8:0] buff_C_out_7_addr_reg_726_pp0_iter13_reg;
reg   [31:0] mul2_reg_732;
wire   [31:0] tmp_2_fu_537_p11;
reg   [31:0] tmp_2_reg_737;
reg   [31:0] mul74_1_reg_742;
wire   [31:0] tmp_4_fu_560_p11;
reg   [31:0] tmp_4_reg_747;
reg   [31:0] add1_reg_752;
reg   [31:0] add79_1_reg_760;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_92;
wire   [6:0] add_ln30_fu_475_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_96;
wire   [6:0] select_ln29_fu_429_p3;
reg   [11:0] indvar_flatten13_fu_100;
wire   [11:0] add_ln29_1_fu_390_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten13_load;
reg    buff_B_ce0_local;
reg    buff_B_2_ce0_local;
reg    buff_B_4_ce0_local;
reg    buff_B_6_ce0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_3_ce0_local;
reg    buff_B_5_ce0_local;
reg    buff_B_7_ce0_local;
reg    buff_C_out_ce1_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_2_ce1_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_4_ce1_local;
reg    buff_C_out_4_we0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_6_ce1_local;
reg    buff_C_out_6_we0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_1_ce1_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_3_ce1_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_5_ce1_local;
reg    buff_C_out_5_we0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_7_ce1_local;
reg    buff_C_out_7_we0_local;
reg    buff_C_out_7_ce0_local;
wire   [0:0] tmp_fu_413_p3;
wire   [6:0] add_ln29_fu_407_p2;
wire   [6:0] select_ln5_fu_421_p3;
wire   [5:0] trunc_ln30_fu_437_p1;
wire   [2:0] lshr_ln5_2_fu_445_p4;
wire   [8:0] tmp_s_fu_455_p3;
wire   [31:0] tmp_1_fu_491_p9;
wire   [31:0] tmp_3_fu_514_p9;
wire   [31:0] tmp_2_fu_537_p9;
wire   [31:0] tmp_4_fu_560_p9;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_1_fu_491_p1;
wire   [2:0] tmp_1_fu_491_p3;
wire  signed [2:0] tmp_1_fu_491_p5;
wire  signed [2:0] tmp_1_fu_491_p7;
wire   [2:0] tmp_3_fu_514_p1;
wire   [2:0] tmp_3_fu_514_p3;
wire  signed [2:0] tmp_3_fu_514_p5;
wire  signed [2:0] tmp_3_fu_514_p7;
wire   [2:0] tmp_2_fu_537_p1;
wire   [2:0] tmp_2_fu_537_p3;
wire  signed [2:0] tmp_2_fu_537_p5;
wire  signed [2:0] tmp_2_fu_537_p7;
wire   [2:0] tmp_4_fu_560_p1;
wire   [2:0] tmp_4_fu_560_p3;
wire  signed [2:0] tmp_4_fu_560_p5;
wire  signed [2:0] tmp_4_fu_560_p7;
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
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 j_fu_92 = 7'd0;
#0 i_fu_96 = 7'd0;
#0 indvar_flatten13_fu_100 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U274(.din0(buff_B_q0),.din1(buff_B_2_q0),.din2(buff_B_4_q0),.din3(buff_B_6_q0),.def(tmp_1_fu_491_p9),.sel(trunc_ln30_1_reg_614),.dout(tmp_1_fu_491_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U275(.din0(buff_B_1_q0),.din1(buff_B_3_q0),.din2(buff_B_5_q0),.din3(buff_B_7_q0),.def(tmp_3_fu_514_p9),.sel(trunc_ln30_1_reg_614),.dout(tmp_3_fu_514_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U276(.din0(buff_C_out_q1),.din1(buff_C_out_2_q1),.din2(buff_C_out_4_q1),.din3(buff_C_out_6_q1),.def(tmp_2_fu_537_p9),.sel(trunc_ln30_1_reg_614_pp0_iter5_reg),.dout(tmp_2_fu_537_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U277(.din0(buff_C_out_1_q1),.din1(buff_C_out_3_q1),.din2(buff_C_out_5_q1),.din3(buff_C_out_7_q1),.def(tmp_4_fu_560_p9),.sel(trunc_ln30_1_reg_614_pp0_iter5_reg),.dout(tmp_4_fu_560_p11));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
        if ((ap_loop_init == 1'b1)) begin
            i_fu_96 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_96 <= select_ln29_fu_429_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_384_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_100 <= add_ln29_1_fu_390_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_100 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_92 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_92 <= add_ln30_fu_475_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_752 <= grp_fu_416_p_dout0;
        add79_1_reg_760 <= grp_fu_420_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_C_out_1_addr_reg_690 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_1_addr_reg_690_pp0_iter10_reg <= buff_C_out_1_addr_reg_690_pp0_iter9_reg;
        buff_C_out_1_addr_reg_690_pp0_iter11_reg <= buff_C_out_1_addr_reg_690_pp0_iter10_reg;
        buff_C_out_1_addr_reg_690_pp0_iter12_reg <= buff_C_out_1_addr_reg_690_pp0_iter11_reg;
        buff_C_out_1_addr_reg_690_pp0_iter13_reg <= buff_C_out_1_addr_reg_690_pp0_iter12_reg;
        buff_C_out_1_addr_reg_690_pp0_iter6_reg <= buff_C_out_1_addr_reg_690;
        buff_C_out_1_addr_reg_690_pp0_iter7_reg <= buff_C_out_1_addr_reg_690_pp0_iter6_reg;
        buff_C_out_1_addr_reg_690_pp0_iter8_reg <= buff_C_out_1_addr_reg_690_pp0_iter7_reg;
        buff_C_out_1_addr_reg_690_pp0_iter9_reg <= buff_C_out_1_addr_reg_690_pp0_iter8_reg;
        buff_C_out_2_addr_reg_696 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_2_addr_reg_696_pp0_iter10_reg <= buff_C_out_2_addr_reg_696_pp0_iter9_reg;
        buff_C_out_2_addr_reg_696_pp0_iter11_reg <= buff_C_out_2_addr_reg_696_pp0_iter10_reg;
        buff_C_out_2_addr_reg_696_pp0_iter12_reg <= buff_C_out_2_addr_reg_696_pp0_iter11_reg;
        buff_C_out_2_addr_reg_696_pp0_iter13_reg <= buff_C_out_2_addr_reg_696_pp0_iter12_reg;
        buff_C_out_2_addr_reg_696_pp0_iter6_reg <= buff_C_out_2_addr_reg_696;
        buff_C_out_2_addr_reg_696_pp0_iter7_reg <= buff_C_out_2_addr_reg_696_pp0_iter6_reg;
        buff_C_out_2_addr_reg_696_pp0_iter8_reg <= buff_C_out_2_addr_reg_696_pp0_iter7_reg;
        buff_C_out_2_addr_reg_696_pp0_iter9_reg <= buff_C_out_2_addr_reg_696_pp0_iter8_reg;
        buff_C_out_3_addr_reg_702 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_3_addr_reg_702_pp0_iter10_reg <= buff_C_out_3_addr_reg_702_pp0_iter9_reg;
        buff_C_out_3_addr_reg_702_pp0_iter11_reg <= buff_C_out_3_addr_reg_702_pp0_iter10_reg;
        buff_C_out_3_addr_reg_702_pp0_iter12_reg <= buff_C_out_3_addr_reg_702_pp0_iter11_reg;
        buff_C_out_3_addr_reg_702_pp0_iter13_reg <= buff_C_out_3_addr_reg_702_pp0_iter12_reg;
        buff_C_out_3_addr_reg_702_pp0_iter6_reg <= buff_C_out_3_addr_reg_702;
        buff_C_out_3_addr_reg_702_pp0_iter7_reg <= buff_C_out_3_addr_reg_702_pp0_iter6_reg;
        buff_C_out_3_addr_reg_702_pp0_iter8_reg <= buff_C_out_3_addr_reg_702_pp0_iter7_reg;
        buff_C_out_3_addr_reg_702_pp0_iter9_reg <= buff_C_out_3_addr_reg_702_pp0_iter8_reg;
        buff_C_out_4_addr_reg_708 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_4_addr_reg_708_pp0_iter10_reg <= buff_C_out_4_addr_reg_708_pp0_iter9_reg;
        buff_C_out_4_addr_reg_708_pp0_iter11_reg <= buff_C_out_4_addr_reg_708_pp0_iter10_reg;
        buff_C_out_4_addr_reg_708_pp0_iter12_reg <= buff_C_out_4_addr_reg_708_pp0_iter11_reg;
        buff_C_out_4_addr_reg_708_pp0_iter13_reg <= buff_C_out_4_addr_reg_708_pp0_iter12_reg;
        buff_C_out_4_addr_reg_708_pp0_iter6_reg <= buff_C_out_4_addr_reg_708;
        buff_C_out_4_addr_reg_708_pp0_iter7_reg <= buff_C_out_4_addr_reg_708_pp0_iter6_reg;
        buff_C_out_4_addr_reg_708_pp0_iter8_reg <= buff_C_out_4_addr_reg_708_pp0_iter7_reg;
        buff_C_out_4_addr_reg_708_pp0_iter9_reg <= buff_C_out_4_addr_reg_708_pp0_iter8_reg;
        buff_C_out_5_addr_reg_714 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_5_addr_reg_714_pp0_iter10_reg <= buff_C_out_5_addr_reg_714_pp0_iter9_reg;
        buff_C_out_5_addr_reg_714_pp0_iter11_reg <= buff_C_out_5_addr_reg_714_pp0_iter10_reg;
        buff_C_out_5_addr_reg_714_pp0_iter12_reg <= buff_C_out_5_addr_reg_714_pp0_iter11_reg;
        buff_C_out_5_addr_reg_714_pp0_iter13_reg <= buff_C_out_5_addr_reg_714_pp0_iter12_reg;
        buff_C_out_5_addr_reg_714_pp0_iter6_reg <= buff_C_out_5_addr_reg_714;
        buff_C_out_5_addr_reg_714_pp0_iter7_reg <= buff_C_out_5_addr_reg_714_pp0_iter6_reg;
        buff_C_out_5_addr_reg_714_pp0_iter8_reg <= buff_C_out_5_addr_reg_714_pp0_iter7_reg;
        buff_C_out_5_addr_reg_714_pp0_iter9_reg <= buff_C_out_5_addr_reg_714_pp0_iter8_reg;
        buff_C_out_6_addr_reg_720 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_6_addr_reg_720_pp0_iter10_reg <= buff_C_out_6_addr_reg_720_pp0_iter9_reg;
        buff_C_out_6_addr_reg_720_pp0_iter11_reg <= buff_C_out_6_addr_reg_720_pp0_iter10_reg;
        buff_C_out_6_addr_reg_720_pp0_iter12_reg <= buff_C_out_6_addr_reg_720_pp0_iter11_reg;
        buff_C_out_6_addr_reg_720_pp0_iter13_reg <= buff_C_out_6_addr_reg_720_pp0_iter12_reg;
        buff_C_out_6_addr_reg_720_pp0_iter6_reg <= buff_C_out_6_addr_reg_720;
        buff_C_out_6_addr_reg_720_pp0_iter7_reg <= buff_C_out_6_addr_reg_720_pp0_iter6_reg;
        buff_C_out_6_addr_reg_720_pp0_iter8_reg <= buff_C_out_6_addr_reg_720_pp0_iter7_reg;
        buff_C_out_6_addr_reg_720_pp0_iter9_reg <= buff_C_out_6_addr_reg_720_pp0_iter8_reg;
        buff_C_out_7_addr_reg_726 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_7_addr_reg_726_pp0_iter10_reg <= buff_C_out_7_addr_reg_726_pp0_iter9_reg;
        buff_C_out_7_addr_reg_726_pp0_iter11_reg <= buff_C_out_7_addr_reg_726_pp0_iter10_reg;
        buff_C_out_7_addr_reg_726_pp0_iter12_reg <= buff_C_out_7_addr_reg_726_pp0_iter11_reg;
        buff_C_out_7_addr_reg_726_pp0_iter13_reg <= buff_C_out_7_addr_reg_726_pp0_iter12_reg;
        buff_C_out_7_addr_reg_726_pp0_iter6_reg <= buff_C_out_7_addr_reg_726;
        buff_C_out_7_addr_reg_726_pp0_iter7_reg <= buff_C_out_7_addr_reg_726_pp0_iter6_reg;
        buff_C_out_7_addr_reg_726_pp0_iter8_reg <= buff_C_out_7_addr_reg_726_pp0_iter7_reg;
        buff_C_out_7_addr_reg_726_pp0_iter9_reg <= buff_C_out_7_addr_reg_726_pp0_iter8_reg;
        buff_C_out_addr_reg_684 <= zext_ln32_reg_622_pp0_iter4_reg;
        buff_C_out_addr_reg_684_pp0_iter10_reg <= buff_C_out_addr_reg_684_pp0_iter9_reg;
        buff_C_out_addr_reg_684_pp0_iter11_reg <= buff_C_out_addr_reg_684_pp0_iter10_reg;
        buff_C_out_addr_reg_684_pp0_iter12_reg <= buff_C_out_addr_reg_684_pp0_iter11_reg;
        buff_C_out_addr_reg_684_pp0_iter13_reg <= buff_C_out_addr_reg_684_pp0_iter12_reg;
        buff_C_out_addr_reg_684_pp0_iter6_reg <= buff_C_out_addr_reg_684;
        buff_C_out_addr_reg_684_pp0_iter7_reg <= buff_C_out_addr_reg_684_pp0_iter6_reg;
        buff_C_out_addr_reg_684_pp0_iter8_reg <= buff_C_out_addr_reg_684_pp0_iter7_reg;
        buff_C_out_addr_reg_684_pp0_iter9_reg <= buff_C_out_addr_reg_684_pp0_iter8_reg;
        mul2_reg_732 <= grp_fu_424_p_dout0;
        mul74_1_reg_742 <= grp_fu_428_p_dout0;
        tmp_1_reg_674 <= tmp_1_fu_491_p11;
        tmp_2_reg_737 <= tmp_2_fu_537_p11;
        tmp_3_reg_679 <= tmp_3_fu_514_p11;
        tmp_4_reg_747 <= tmp_4_fu_560_p11;
        trunc_ln30_1_reg_614_pp0_iter10_reg <= trunc_ln30_1_reg_614_pp0_iter9_reg;
        trunc_ln30_1_reg_614_pp0_iter11_reg <= trunc_ln30_1_reg_614_pp0_iter10_reg;
        trunc_ln30_1_reg_614_pp0_iter12_reg <= trunc_ln30_1_reg_614_pp0_iter11_reg;
        trunc_ln30_1_reg_614_pp0_iter13_reg <= trunc_ln30_1_reg_614_pp0_iter12_reg;
        trunc_ln30_1_reg_614_pp0_iter2_reg <= trunc_ln30_1_reg_614;
        trunc_ln30_1_reg_614_pp0_iter3_reg <= trunc_ln30_1_reg_614_pp0_iter2_reg;
        trunc_ln30_1_reg_614_pp0_iter4_reg <= trunc_ln30_1_reg_614_pp0_iter3_reg;
        trunc_ln30_1_reg_614_pp0_iter5_reg <= trunc_ln30_1_reg_614_pp0_iter4_reg;
        trunc_ln30_1_reg_614_pp0_iter6_reg <= trunc_ln30_1_reg_614_pp0_iter5_reg;
        trunc_ln30_1_reg_614_pp0_iter7_reg <= trunc_ln30_1_reg_614_pp0_iter6_reg;
        trunc_ln30_1_reg_614_pp0_iter8_reg <= trunc_ln30_1_reg_614_pp0_iter7_reg;
        trunc_ln30_1_reg_614_pp0_iter9_reg <= trunc_ln30_1_reg_614_pp0_iter8_reg;
        zext_ln32_reg_622_pp0_iter2_reg[8 : 0] <= zext_ln32_reg_622[8 : 0];
        zext_ln32_reg_622_pp0_iter3_reg[8 : 0] <= zext_ln32_reg_622_pp0_iter2_reg[8 : 0];
        zext_ln32_reg_622_pp0_iter4_reg[8 : 0] <= zext_ln32_reg_622_pp0_iter3_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln30_1_reg_614 <= trunc_ln30_1_fu_441_p1;
        zext_ln32_reg_622[8 : 0] <= zext_ln32_fu_463_p1[8 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_384_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten13_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_1_ce1_local = 1'b1;
    end else begin
        buff_C_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd0))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_2_ce1_local = 1'b1;
    end else begin
        buff_C_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd2))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_3_ce1_local = 1'b1;
    end else begin
        buff_C_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd2))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_4_ce1_local = 1'b1;
    end else begin
        buff_C_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd4))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_5_ce1_local = 1'b1;
    end else begin
        buff_C_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd4))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_6_ce1_local = 1'b1;
    end else begin
        buff_C_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd4) & ~(trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd2) & ~(trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_7_ce1_local = 1'b1;
    end else begin
        buff_C_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd4) & ~(trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd2) & ~(trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_ce1_local = 1'b1;
    end else begin
        buff_C_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_614_pp0_iter13_reg == 3'd0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
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
assign add_ln29_1_fu_390_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 12'd1);
assign add_ln29_fu_407_p2 = (i_fu_96 + 7'd1);
assign add_ln30_fu_475_p2 = (select_ln5_fu_421_p3 + 7'd2);
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
assign buff_B_1_address0 = zext_ln32_fu_463_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_2_address0 = zext_ln32_fu_463_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_3_address0 = zext_ln32_fu_463_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_4_address0 = zext_ln32_fu_463_p1;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_5_address0 = zext_ln32_fu_463_p1;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_6_address0 = zext_ln32_fu_463_p1;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_7_address0 = zext_ln32_fu_463_p1;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_address0 = zext_ln32_fu_463_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_addr_reg_690_pp0_iter13_reg;
assign buff_C_out_1_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add79_1_reg_760;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_addr_reg_696_pp0_iter13_reg;
assign buff_C_out_2_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_ce1 = buff_C_out_2_ce1_local;
assign buff_C_out_2_d0 = add1_reg_752;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_addr_reg_702_pp0_iter13_reg;
assign buff_C_out_3_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_ce1 = buff_C_out_3_ce1_local;
assign buff_C_out_3_d0 = add79_1_reg_760;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_addr_reg_708_pp0_iter13_reg;
assign buff_C_out_4_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_ce1 = buff_C_out_4_ce1_local;
assign buff_C_out_4_d0 = add1_reg_752;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_addr_reg_714_pp0_iter13_reg;
assign buff_C_out_5_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_ce1 = buff_C_out_5_ce1_local;
assign buff_C_out_5_d0 = add79_1_reg_760;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_addr_reg_720_pp0_iter13_reg;
assign buff_C_out_6_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_ce1 = buff_C_out_6_ce1_local;
assign buff_C_out_6_d0 = add1_reg_752;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_addr_reg_726_pp0_iter13_reg;
assign buff_C_out_7_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_ce1 = buff_C_out_7_ce1_local;
assign buff_C_out_7_d0 = add79_1_reg_760;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = buff_C_out_addr_reg_684_pp0_iter13_reg;
assign buff_C_out_address1 = zext_ln32_reg_622_pp0_iter4_reg;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add1_reg_752;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign grp_fu_416_p_ce = 1'b1;
assign grp_fu_416_p_din0 = tmp_2_reg_737;
assign grp_fu_416_p_din1 = mul2_reg_732;
assign grp_fu_416_p_opcode = 2'd0;
assign grp_fu_420_p_ce = 1'b1;
assign grp_fu_420_p_din0 = tmp_4_reg_747;
assign grp_fu_420_p_din1 = mul74_1_reg_742;
assign grp_fu_420_p_opcode = 2'd0;
assign grp_fu_424_p_ce = 1'b1;
assign grp_fu_424_p_din0 = tmp_1_reg_674;
assign grp_fu_424_p_din1 = beta;
assign grp_fu_428_p_ce = 1'b1;
assign grp_fu_428_p_din0 = tmp_3_reg_679;
assign grp_fu_428_p_din1 = beta;
assign icmp_ln29_fu_384_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_445_p4 = {{select_ln5_fu_421_p3[5:3]}};
assign select_ln29_fu_429_p3 = ((tmp_fu_413_p3[0:0] == 1'b1) ? add_ln29_fu_407_p2 : i_fu_96);
assign select_ln5_fu_421_p3 = ((tmp_fu_413_p3[0:0] == 1'b1) ? 7'd0 : j_fu_92);
assign tmp_1_fu_491_p9 = 'bx;
assign tmp_2_fu_537_p9 = 'bx;
assign tmp_3_fu_514_p9 = 'bx;
assign tmp_4_fu_560_p9 = 'bx;
assign tmp_fu_413_p3 = j_fu_92[32'd6];
assign tmp_s_fu_455_p3 = {{trunc_ln30_fu_437_p1}, {lshr_ln5_2_fu_445_p4}};
assign trunc_ln30_1_fu_441_p1 = select_ln5_fu_421_p3[2:0];
assign trunc_ln30_fu_437_p1 = select_ln29_fu_429_p3[5:0];
assign zext_ln32_fu_463_p1 = tmp_s_fu_455_p3;
always @ (posedge ap_clk) begin
    zext_ln32_reg_622[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_622_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_622_pp0_iter3_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_622_pp0_iter4_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
