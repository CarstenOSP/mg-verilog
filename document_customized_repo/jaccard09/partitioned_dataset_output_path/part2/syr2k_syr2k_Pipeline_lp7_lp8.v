
module syr2k_syr2k_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_address0,buff_C_ce0,buff_C_q0,buff_C_1_address0,buff_C_1_ce0,buff_C_1_q0,buff_C_2_address0,buff_C_2_ce0,buff_C_2_q0,buff_C_3_address0,buff_C_3_ce0,buff_C_3_q0,buff_C_4_address0,buff_C_4_ce0,buff_C_4_q0,buff_C_5_address0,buff_C_5_ce0,buff_C_5_q0,buff_C_6_address0,buff_C_6_ce0,buff_C_6_q0,buff_C_7_address0,buff_C_7_ce0,buff_C_7_q0,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_we0,buff_D_out_2_d0,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_we0,buff_D_out_3_d0,buff_D_out_4_address0,buff_D_out_4_ce0,buff_D_out_4_we0,buff_D_out_4_d0,buff_D_out_5_address0,buff_D_out_5_ce0,buff_D_out_5_we0,buff_D_out_5_d0,buff_D_out_6_address0,buff_D_out_6_ce0,buff_D_out_6_we0,buff_D_out_6_d0,buff_D_out_7_address0,buff_D_out_7_ce0,buff_D_out_7_we0,buff_D_out_7_d0,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_q0,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,tmp2_4_address0,tmp2_4_ce0,tmp2_4_q0,tmp2_5_address0,tmp2_5_ce0,tmp2_5_q0,tmp2_6_address0,tmp2_6_ce0,tmp2_6_q0,tmp2_7_address0,tmp2_7_ce0,tmp2_7_q0,beta,grp_fu_640_p_din0,grp_fu_640_p_din1,grp_fu_640_p_opcode,grp_fu_640_p_dout0,grp_fu_640_p_ce,grp_fu_644_p_din0,grp_fu_644_p_din1,grp_fu_644_p_opcode,grp_fu_644_p_dout0,grp_fu_644_p_ce,grp_fu_896_p_din0,grp_fu_896_p_din1,grp_fu_896_p_dout0,grp_fu_896_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_C_address0;
output   buff_C_ce0;
input  [31:0] buff_C_q0;
output  [8:0] buff_C_1_address0;
output   buff_C_1_ce0;
input  [31:0] buff_C_1_q0;
output  [8:0] buff_C_2_address0;
output   buff_C_2_ce0;
input  [31:0] buff_C_2_q0;
output  [8:0] buff_C_3_address0;
output   buff_C_3_ce0;
input  [31:0] buff_C_3_q0;
output  [8:0] buff_C_4_address0;
output   buff_C_4_ce0;
input  [31:0] buff_C_4_q0;
output  [8:0] buff_C_5_address0;
output   buff_C_5_ce0;
input  [31:0] buff_C_5_q0;
output  [8:0] buff_C_6_address0;
output   buff_C_6_ce0;
input  [31:0] buff_C_6_q0;
output  [8:0] buff_C_7_address0;
output   buff_C_7_ce0;
input  [31:0] buff_C_7_q0;
output  [8:0] buff_D_out_address0;
output   buff_D_out_ce0;
output   buff_D_out_we0;
output  [31:0] buff_D_out_d0;
output  [8:0] buff_D_out_1_address0;
output   buff_D_out_1_ce0;
output   buff_D_out_1_we0;
output  [31:0] buff_D_out_1_d0;
output  [8:0] buff_D_out_2_address0;
output   buff_D_out_2_ce0;
output   buff_D_out_2_we0;
output  [31:0] buff_D_out_2_d0;
output  [8:0] buff_D_out_3_address0;
output   buff_D_out_3_ce0;
output   buff_D_out_3_we0;
output  [31:0] buff_D_out_3_d0;
output  [8:0] buff_D_out_4_address0;
output   buff_D_out_4_ce0;
output   buff_D_out_4_we0;
output  [31:0] buff_D_out_4_d0;
output  [8:0] buff_D_out_5_address0;
output   buff_D_out_5_ce0;
output   buff_D_out_5_we0;
output  [31:0] buff_D_out_5_d0;
output  [8:0] buff_D_out_6_address0;
output   buff_D_out_6_ce0;
output   buff_D_out_6_we0;
output  [31:0] buff_D_out_6_d0;
output  [8:0] buff_D_out_7_address0;
output   buff_D_out_7_ce0;
output   buff_D_out_7_we0;
output  [31:0] buff_D_out_7_d0;
output  [8:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [8:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [8:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [8:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [8:0] tmp1_4_address0;
output   tmp1_4_ce0;
input  [31:0] tmp1_4_q0;
output  [8:0] tmp1_5_address0;
output   tmp1_5_ce0;
input  [31:0] tmp1_5_q0;
output  [8:0] tmp1_6_address0;
output   tmp1_6_ce0;
input  [31:0] tmp1_6_q0;
output  [8:0] tmp1_7_address0;
output   tmp1_7_ce0;
input  [31:0] tmp1_7_q0;
output  [8:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [8:0] tmp2_1_address0;
output   tmp2_1_ce0;
input  [31:0] tmp2_1_q0;
output  [8:0] tmp2_2_address0;
output   tmp2_2_ce0;
input  [31:0] tmp2_2_q0;
output  [8:0] tmp2_3_address0;
output   tmp2_3_ce0;
input  [31:0] tmp2_3_q0;
output  [8:0] tmp2_4_address0;
output   tmp2_4_ce0;
input  [31:0] tmp2_4_q0;
output  [8:0] tmp2_5_address0;
output   tmp2_5_ce0;
input  [31:0] tmp2_5_q0;
output  [8:0] tmp2_6_address0;
output   tmp2_6_ce0;
input  [31:0] tmp2_6_q0;
output  [8:0] tmp2_7_address0;
output   tmp2_7_ce0;
input  [31:0] tmp2_7_q0;
input  [31:0] beta;
output  [31:0] grp_fu_640_p_din0;
output  [31:0] grp_fu_640_p_din1;
output  [1:0] grp_fu_640_p_opcode;
input  [31:0] grp_fu_640_p_dout0;
output   grp_fu_640_p_ce;
output  [31:0] grp_fu_644_p_din0;
output  [31:0] grp_fu_644_p_din1;
output  [1:0] grp_fu_644_p_opcode;
input  [31:0] grp_fu_644_p_dout0;
output   grp_fu_644_p_ce;
output  [31:0] grp_fu_896_p_din0;
output  [31:0] grp_fu_896_p_din1;
input  [31:0] grp_fu_896_p_dout0;
output   grp_fu_896_p_ce;
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
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln45_fu_592_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln46_1_fu_647_p1;
reg   [2:0] trunc_ln46_1_reg_852;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter2_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter3_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter4_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter5_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter6_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter7_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter8_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter9_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter10_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter11_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter12_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter13_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter14_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter15_reg;
reg   [2:0] trunc_ln46_1_reg_852_pp0_iter16_reg;
wire   [63:0] zext_ln48_fu_669_p1;
reg   [63:0] zext_ln48_reg_859;
reg   [63:0] zext_ln48_reg_859_pp0_iter2_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter3_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter4_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter5_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter6_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter7_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter8_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter9_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter10_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter11_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter12_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter13_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter14_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter15_reg;
reg   [63:0] zext_ln48_reg_859_pp0_iter16_reg;
wire   [31:0] tmp_3_fu_705_p19;
reg   [31:0] tmp_3_reg_959;
wire   [31:0] tmp_4_fu_744_p19;
reg   [31:0] tmp_4_reg_964;
wire   [31:0] tmp_5_fu_783_p19;
reg   [31:0] tmp_5_reg_1009;
reg   [31:0] add2_reg_1014;
reg   [31:0] mul4_reg_1019;
reg   [31:0] add3_reg_1024;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_128;
wire   [6:0] add_ln46_fu_689_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_132;
wire   [6:0] select_ln45_fu_635_p3;
reg   [12:0] indvar_flatten20_fu_136;
wire   [12:0] add_ln45_1_fu_598_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp1_4_ce0_local;
reg    tmp1_5_ce0_local;
reg    tmp1_6_ce0_local;
reg    tmp1_7_ce0_local;
reg    tmp2_ce0_local;
reg    tmp2_1_ce0_local;
reg    tmp2_2_ce0_local;
reg    tmp2_3_ce0_local;
reg    tmp2_4_ce0_local;
reg    tmp2_5_ce0_local;
reg    tmp2_6_ce0_local;
reg    tmp2_7_ce0_local;
reg    buff_C_ce0_local;
reg    buff_C_1_ce0_local;
reg    buff_C_2_ce0_local;
reg    buff_C_3_ce0_local;
reg    buff_C_4_ce0_local;
reg    buff_C_5_ce0_local;
reg    buff_C_6_ce0_local;
reg    buff_C_7_ce0_local;
reg    buff_D_out_6_we0_local;
reg    buff_D_out_6_ce0_local;
reg    buff_D_out_5_we0_local;
reg    buff_D_out_5_ce0_local;
reg    buff_D_out_4_we0_local;
reg    buff_D_out_4_ce0_local;
reg    buff_D_out_3_we0_local;
reg    buff_D_out_3_ce0_local;
reg    buff_D_out_2_we0_local;
reg    buff_D_out_2_ce0_local;
reg    buff_D_out_1_we0_local;
reg    buff_D_out_1_ce0_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
reg    buff_D_out_7_we0_local;
reg    buff_D_out_7_ce0_local;
wire   [0:0] icmp_ln46_fu_621_p2;
wire   [6:0] add_ln45_fu_615_p2;
wire   [6:0] select_ln5_fu_627_p3;
wire   [5:0] trunc_ln46_fu_643_p1;
wire   [2:0] lshr_ln5_3_fu_651_p4;
wire   [8:0] tmp_s_fu_661_p3;
wire   [31:0] tmp_3_fu_705_p17;
wire   [31:0] tmp_4_fu_744_p17;
wire   [31:0] tmp_5_fu_783_p17;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_3_fu_705_p1;
wire   [2:0] tmp_3_fu_705_p3;
wire   [2:0] tmp_3_fu_705_p5;
wire   [2:0] tmp_3_fu_705_p7;
wire  signed [2:0] tmp_3_fu_705_p9;
wire  signed [2:0] tmp_3_fu_705_p11;
wire  signed [2:0] tmp_3_fu_705_p13;
wire  signed [2:0] tmp_3_fu_705_p15;
wire   [2:0] tmp_4_fu_744_p1;
wire   [2:0] tmp_4_fu_744_p3;
wire   [2:0] tmp_4_fu_744_p5;
wire   [2:0] tmp_4_fu_744_p7;
wire  signed [2:0] tmp_4_fu_744_p9;
wire  signed [2:0] tmp_4_fu_744_p11;
wire  signed [2:0] tmp_4_fu_744_p13;
wire  signed [2:0] tmp_4_fu_744_p15;
wire   [2:0] tmp_5_fu_783_p1;
wire   [2:0] tmp_5_fu_783_p3;
wire   [2:0] tmp_5_fu_783_p5;
wire   [2:0] tmp_5_fu_783_p7;
wire  signed [2:0] tmp_5_fu_783_p9;
wire  signed [2:0] tmp_5_fu_783_p11;
wire  signed [2:0] tmp_5_fu_783_p13;
wire  signed [2:0] tmp_5_fu_783_p15;
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
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 j_fu_128 = 7'd0;
#0 i_fu_132 = 7'd0;
#0 indvar_flatten20_fu_136 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U653(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.din4(tmp1_4_q0),.din5(tmp1_5_q0),.din6(tmp1_6_q0),.din7(tmp1_7_q0),.def(tmp_3_fu_705_p17),.sel(trunc_ln46_1_reg_852),.dout(tmp_3_fu_705_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U654(.din0(tmp2_q0),.din1(tmp2_1_q0),.din2(tmp2_2_q0),.din3(tmp2_3_q0),.din4(tmp2_4_q0),.din5(tmp2_5_q0),.din6(tmp2_6_q0),.din7(tmp2_7_q0),.def(tmp_4_fu_744_p17),.sel(trunc_ln46_1_reg_852),.dout(tmp_4_fu_744_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U655(.din0(buff_C_q0),.din1(buff_C_1_q0),.din2(buff_C_2_q0),.din3(buff_C_3_q0),.din4(buff_C_4_q0),.din5(buff_C_5_q0),.din6(buff_C_6_q0),.din7(buff_C_7_q0),.def(tmp_5_fu_783_p17),.sel(trunc_ln46_1_reg_852_pp0_iter4_reg),.dout(tmp_5_fu_783_p19));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
            i_fu_132 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_132 <= select_ln45_fu_635_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln45_fu_592_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_136 <= add_ln45_1_fu_598_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_136 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_128 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_128 <= add_ln46_fu_689_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add2_reg_1014 <= grp_fu_640_p_dout0;
        add3_reg_1024 <= grp_fu_644_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul4_reg_1019 <= grp_fu_896_p_dout0;
        tmp_3_reg_959 <= tmp_3_fu_705_p19;
        tmp_4_reg_964 <= tmp_4_fu_744_p19;
        tmp_5_reg_1009 <= tmp_5_fu_783_p19;
        trunc_ln46_1_reg_852_pp0_iter10_reg <= trunc_ln46_1_reg_852_pp0_iter9_reg;
        trunc_ln46_1_reg_852_pp0_iter11_reg <= trunc_ln46_1_reg_852_pp0_iter10_reg;
        trunc_ln46_1_reg_852_pp0_iter12_reg <= trunc_ln46_1_reg_852_pp0_iter11_reg;
        trunc_ln46_1_reg_852_pp0_iter13_reg <= trunc_ln46_1_reg_852_pp0_iter12_reg;
        trunc_ln46_1_reg_852_pp0_iter14_reg <= trunc_ln46_1_reg_852_pp0_iter13_reg;
        trunc_ln46_1_reg_852_pp0_iter15_reg <= trunc_ln46_1_reg_852_pp0_iter14_reg;
        trunc_ln46_1_reg_852_pp0_iter16_reg <= trunc_ln46_1_reg_852_pp0_iter15_reg;
        trunc_ln46_1_reg_852_pp0_iter2_reg <= trunc_ln46_1_reg_852;
        trunc_ln46_1_reg_852_pp0_iter3_reg <= trunc_ln46_1_reg_852_pp0_iter2_reg;
        trunc_ln46_1_reg_852_pp0_iter4_reg <= trunc_ln46_1_reg_852_pp0_iter3_reg;
        trunc_ln46_1_reg_852_pp0_iter5_reg <= trunc_ln46_1_reg_852_pp0_iter4_reg;
        trunc_ln46_1_reg_852_pp0_iter6_reg <= trunc_ln46_1_reg_852_pp0_iter5_reg;
        trunc_ln46_1_reg_852_pp0_iter7_reg <= trunc_ln46_1_reg_852_pp0_iter6_reg;
        trunc_ln46_1_reg_852_pp0_iter8_reg <= trunc_ln46_1_reg_852_pp0_iter7_reg;
        trunc_ln46_1_reg_852_pp0_iter9_reg <= trunc_ln46_1_reg_852_pp0_iter8_reg;
        zext_ln48_reg_859_pp0_iter10_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter9_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter11_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter10_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter12_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter11_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter13_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter12_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter14_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter13_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter15_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter14_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter16_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter15_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter2_reg[8 : 0] <= zext_ln48_reg_859[8 : 0];
        zext_ln48_reg_859_pp0_iter3_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter2_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter4_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter3_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter5_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter4_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter6_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter5_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter7_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter6_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter8_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter7_reg[8 : 0];
        zext_ln48_reg_859_pp0_iter9_reg[8 : 0] <= zext_ln48_reg_859_pp0_iter8_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln46_1_reg_852 <= trunc_ln46_1_fu_647_p1;
        zext_ln48_reg_859[8 : 0] <= zext_ln48_fu_669_p1[8 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln45_fu_592_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten20_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_1_ce0_local = 1'b1;
    end else begin
        buff_C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_2_ce0_local = 1'b1;
    end else begin
        buff_C_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_3_ce0_local = 1'b1;
    end else begin
        buff_C_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_4_ce0_local = 1'b1;
    end else begin
        buff_C_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_5_ce0_local = 1'b1;
    end else begin
        buff_C_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_6_ce0_local = 1'b1;
    end else begin
        buff_C_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_7_ce0_local = 1'b1;
    end else begin
        buff_C_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_1_ce0_local = 1'b1;
    end else begin
        buff_D_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd1))) begin
        buff_D_out_1_we0_local = 1'b1;
    end else begin
        buff_D_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_2_ce0_local = 1'b1;
    end else begin
        buff_D_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd2))) begin
        buff_D_out_2_we0_local = 1'b1;
    end else begin
        buff_D_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_3_ce0_local = 1'b1;
    end else begin
        buff_D_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd3))) begin
        buff_D_out_3_we0_local = 1'b1;
    end else begin
        buff_D_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_4_ce0_local = 1'b1;
    end else begin
        buff_D_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd4))) begin
        buff_D_out_4_we0_local = 1'b1;
    end else begin
        buff_D_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_5_ce0_local = 1'b1;
    end else begin
        buff_D_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd5))) begin
        buff_D_out_5_we0_local = 1'b1;
    end else begin
        buff_D_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_6_ce0_local = 1'b1;
    end else begin
        buff_D_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd6))) begin
        buff_D_out_6_we0_local = 1'b1;
    end else begin
        buff_D_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_7_ce0_local = 1'b1;
    end else begin
        buff_D_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd7))) begin
        buff_D_out_7_we0_local = 1'b1;
    end else begin
        buff_D_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln46_1_reg_852_pp0_iter16_reg == 3'd0))) begin
        buff_D_out_we0_local = 1'b1;
    end else begin
        buff_D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_4_ce0_local = 1'b1;
    end else begin
        tmp2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_5_ce0_local = 1'b1;
    end else begin
        tmp2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_6_ce0_local = 1'b1;
    end else begin
        tmp2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_7_ce0_local = 1'b1;
    end else begin
        tmp2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
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
assign add_ln45_1_fu_598_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 13'd1);
assign add_ln45_fu_615_p2 = (i_fu_132 + 7'd1);
assign add_ln46_fu_689_p2 = (select_ln5_fu_627_p3 + 7'd1);
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
assign buff_C_1_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_2_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_2_ce0 = buff_C_2_ce0_local;
assign buff_C_3_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_3_ce0 = buff_C_3_ce0_local;
assign buff_C_4_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_4_ce0 = buff_C_4_ce0_local;
assign buff_C_5_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_5_ce0 = buff_C_5_ce0_local;
assign buff_C_6_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_6_ce0 = buff_C_6_ce0_local;
assign buff_C_7_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_7_ce0 = buff_C_7_ce0_local;
assign buff_C_address0 = zext_ln48_reg_859_pp0_iter3_reg;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_D_out_1_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_d0 = add3_reg_1024;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_2_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_2_d0 = add3_reg_1024;
assign buff_D_out_2_we0 = buff_D_out_2_we0_local;
assign buff_D_out_3_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_3_d0 = add3_reg_1024;
assign buff_D_out_3_we0 = buff_D_out_3_we0_local;
assign buff_D_out_4_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_4_ce0 = buff_D_out_4_ce0_local;
assign buff_D_out_4_d0 = add3_reg_1024;
assign buff_D_out_4_we0 = buff_D_out_4_we0_local;
assign buff_D_out_5_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_5_ce0 = buff_D_out_5_ce0_local;
assign buff_D_out_5_d0 = add3_reg_1024;
assign buff_D_out_5_we0 = buff_D_out_5_we0_local;
assign buff_D_out_6_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_6_ce0 = buff_D_out_6_ce0_local;
assign buff_D_out_6_d0 = add3_reg_1024;
assign buff_D_out_6_we0 = buff_D_out_6_we0_local;
assign buff_D_out_7_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_7_ce0 = buff_D_out_7_ce0_local;
assign buff_D_out_7_d0 = add3_reg_1024;
assign buff_D_out_7_we0 = buff_D_out_7_we0_local;
assign buff_D_out_address0 = zext_ln48_reg_859_pp0_iter16_reg;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_d0 = add3_reg_1024;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign grp_fu_640_p_ce = 1'b1;
assign grp_fu_640_p_din0 = tmp_3_reg_959;
assign grp_fu_640_p_din1 = tmp_4_reg_964;
assign grp_fu_640_p_opcode = 2'd0;
assign grp_fu_644_p_ce = 1'b1;
assign grp_fu_644_p_din0 = add2_reg_1014;
assign grp_fu_644_p_din1 = mul4_reg_1019;
assign grp_fu_644_p_opcode = 2'd0;
assign grp_fu_896_p_ce = 1'b1;
assign grp_fu_896_p_din0 = tmp_5_reg_1009;
assign grp_fu_896_p_din1 = beta;
assign icmp_ln45_fu_592_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_621_p2 = ((j_fu_128 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_651_p4 = {{select_ln5_fu_627_p3[5:3]}};
assign select_ln45_fu_635_p3 = ((icmp_ln46_fu_621_p2[0:0] == 1'b1) ? add_ln45_fu_615_p2 : i_fu_132);
assign select_ln5_fu_627_p3 = ((icmp_ln46_fu_621_p2[0:0] == 1'b1) ? 7'd0 : j_fu_128);
assign tmp1_1_address0 = zext_ln48_fu_669_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln48_fu_669_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln48_fu_669_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_4_address0 = zext_ln48_fu_669_p1;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_5_address0 = zext_ln48_fu_669_p1;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_6_address0 = zext_ln48_fu_669_p1;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_7_address0 = zext_ln48_fu_669_p1;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_address0 = zext_ln48_fu_669_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp2_1_address0 = zext_ln48_fu_669_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_2_address0 = zext_ln48_fu_669_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_3_address0 = zext_ln48_fu_669_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_4_address0 = zext_ln48_fu_669_p1;
assign tmp2_4_ce0 = tmp2_4_ce0_local;
assign tmp2_5_address0 = zext_ln48_fu_669_p1;
assign tmp2_5_ce0 = tmp2_5_ce0_local;
assign tmp2_6_address0 = zext_ln48_fu_669_p1;
assign tmp2_6_ce0 = tmp2_6_ce0_local;
assign tmp2_7_address0 = zext_ln48_fu_669_p1;
assign tmp2_7_ce0 = tmp2_7_ce0_local;
assign tmp2_address0 = zext_ln48_fu_669_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp_3_fu_705_p17 = 'bx;
assign tmp_4_fu_744_p17 = 'bx;
assign tmp_5_fu_783_p17 = 'bx;
assign tmp_s_fu_661_p3 = {{trunc_ln46_fu_643_p1}, {lshr_ln5_3_fu_651_p4}};
assign trunc_ln46_1_fu_647_p1 = select_ln5_fu_627_p3[2:0];
assign trunc_ln46_fu_643_p1 = select_ln45_fu_635_p3[5:0];
assign zext_ln48_fu_669_p1 = tmp_s_fu_661_p3;
always @ (posedge ap_clk) begin
    zext_ln48_reg_859[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter3_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter4_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter5_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter6_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter7_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter8_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter9_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter10_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter11_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter12_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter13_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter14_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter15_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_859_pp0_iter16_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
