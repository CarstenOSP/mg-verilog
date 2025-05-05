module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_4_address0,buff_B_4_ce0,buff_B_4_q0,buff_B_5_address0,buff_B_5_ce0,buff_B_5_q0,buff_B_6_address0,buff_B_6_ce0,buff_B_6_q0,buff_B_7_address0,buff_B_7_ce0,buff_B_7_q0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_q1,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_address1,buff_C_out_2_ce1,buff_C_out_2_q1,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_address1,buff_C_out_3_ce1,buff_C_out_3_q1,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_address1,buff_C_out_4_ce1,buff_C_out_4_q1,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_address1,buff_C_out_5_ce1,buff_C_out_5_q1,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_address1,buff_C_out_6_ce1,buff_C_out_6_q1,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_address1,buff_C_out_7_ce1,buff_C_out_7_q1,beta,grp_fu_416_p_din0,grp_fu_416_p_din1,grp_fu_416_p_opcode,grp_fu_416_p_dout0,grp_fu_416_p_ce,grp_fu_420_p_din0,grp_fu_420_p_din1,grp_fu_420_p_dout0,grp_fu_420_p_ce); 
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
input  [31:0] grp_fu_420_p_dout0;
output   grp_fu_420_p_ce;
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
wire   [0:0] icmp_ln29_fu_380_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln30_1_fu_435_p1;
reg   [2:0] trunc_ln30_1_reg_593;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter2_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter3_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter4_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter5_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter6_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter7_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter8_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter9_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter10_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter11_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter12_reg;
reg   [2:0] trunc_ln30_1_reg_593_pp0_iter13_reg;
wire   [63:0] zext_ln32_fu_457_p1;
reg   [63:0] zext_ln32_reg_599;
reg   [63:0] zext_ln32_reg_599_pp0_iter2_reg;
reg   [63:0] zext_ln32_reg_599_pp0_iter3_reg;
reg   [63:0] zext_ln32_reg_599_pp0_iter4_reg;
wire   [31:0] tmp_1_fu_485_p19;
reg   [31:0] tmp_1_reg_651;
reg   [8:0] buff_C_out_addr_reg_656;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter6_reg;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter7_reg;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter8_reg;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter9_reg;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter10_reg;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter11_reg;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter12_reg;
reg   [8:0] buff_C_out_addr_reg_656_pp0_iter13_reg;
reg   [8:0] buff_C_out_1_addr_reg_662;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter6_reg;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter7_reg;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter8_reg;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter9_reg;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter10_reg;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter11_reg;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter12_reg;
reg   [8:0] buff_C_out_1_addr_reg_662_pp0_iter13_reg;
reg   [8:0] buff_C_out_2_addr_reg_668;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter6_reg;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter7_reg;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter8_reg;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter9_reg;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter10_reg;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter11_reg;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter12_reg;
reg   [8:0] buff_C_out_2_addr_reg_668_pp0_iter13_reg;
reg   [8:0] buff_C_out_3_addr_reg_674;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter6_reg;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter7_reg;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter8_reg;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter9_reg;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter10_reg;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter11_reg;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter12_reg;
reg   [8:0] buff_C_out_3_addr_reg_674_pp0_iter13_reg;
reg   [8:0] buff_C_out_4_addr_reg_680;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter6_reg;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter7_reg;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter8_reg;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter9_reg;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter10_reg;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter11_reg;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter12_reg;
reg   [8:0] buff_C_out_4_addr_reg_680_pp0_iter13_reg;
reg   [8:0] buff_C_out_5_addr_reg_686;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter6_reg;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter7_reg;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter8_reg;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter9_reg;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter10_reg;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter11_reg;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter12_reg;
reg   [8:0] buff_C_out_5_addr_reg_686_pp0_iter13_reg;
reg   [8:0] buff_C_out_6_addr_reg_692;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter6_reg;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter7_reg;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter8_reg;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter9_reg;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter10_reg;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter11_reg;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter12_reg;
reg   [8:0] buff_C_out_6_addr_reg_692_pp0_iter13_reg;
reg   [8:0] buff_C_out_7_addr_reg_698;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter6_reg;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter7_reg;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter8_reg;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter9_reg;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter10_reg;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter11_reg;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter12_reg;
reg   [8:0] buff_C_out_7_addr_reg_698_pp0_iter13_reg;
reg   [31:0] mul2_reg_704;
wire   [31:0] tmp_2_fu_524_p19;
reg   [31:0] tmp_2_reg_709;
reg   [31:0] add1_reg_714;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_96;
wire   [6:0] add_ln30_fu_469_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_100;
wire   [6:0] select_ln29_fu_423_p3;
reg   [12:0] indvar_flatten13_fu_104;
wire   [12:0] add_ln29_1_fu_386_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten13_load;
reg    buff_B_ce0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_2_ce0_local;
reg    buff_B_3_ce0_local;
reg    buff_B_4_ce0_local;
reg    buff_B_5_ce0_local;
reg    buff_B_6_ce0_local;
reg    buff_B_7_ce0_local;
reg    buff_C_out_ce1_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce1_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_ce1_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_ce1_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_4_ce1_local;
reg    buff_C_out_4_we0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_5_ce1_local;
reg    buff_C_out_5_we0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_6_ce1_local;
reg    buff_C_out_6_we0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_7_ce1_local;
reg    buff_C_out_7_we0_local;
reg    buff_C_out_7_ce0_local;
wire   [0:0] icmp_ln30_fu_409_p2;
wire   [6:0] add_ln29_fu_403_p2;
wire   [6:0] select_ln5_fu_415_p3;
wire   [5:0] trunc_ln30_fu_431_p1;
wire   [2:0] lshr_ln5_2_fu_439_p4;
wire   [8:0] tmp_s_fu_449_p3;
wire   [31:0] tmp_1_fu_485_p17;
wire   [31:0] tmp_2_fu_524_p17;
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
wire   [2:0] tmp_1_fu_485_p1;
wire   [2:0] tmp_1_fu_485_p3;
wire   [2:0] tmp_1_fu_485_p5;
wire   [2:0] tmp_1_fu_485_p7;
wire  signed [2:0] tmp_1_fu_485_p9;
wire  signed [2:0] tmp_1_fu_485_p11;
wire  signed [2:0] tmp_1_fu_485_p13;
wire  signed [2:0] tmp_1_fu_485_p15;
wire   [2:0] tmp_2_fu_524_p1;
wire   [2:0] tmp_2_fu_524_p3;
wire   [2:0] tmp_2_fu_524_p5;
wire   [2:0] tmp_2_fu_524_p7;
wire  signed [2:0] tmp_2_fu_524_p9;
wire  signed [2:0] tmp_2_fu_524_p11;
wire  signed [2:0] tmp_2_fu_524_p13;
wire  signed [2:0] tmp_2_fu_524_p15;
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
#0 j_fu_96 = 7'd0;
#0 i_fu_100 = 7'd0;
#0 indvar_flatten13_fu_104 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U272(.din0(buff_B_q0),.din1(buff_B_1_q0),.din2(buff_B_2_q0),.din3(buff_B_3_q0),.din4(buff_B_4_q0),.din5(buff_B_5_q0),.din6(buff_B_6_q0),.din7(buff_B_7_q0),.def(tmp_1_fu_485_p17),.sel(trunc_ln30_1_reg_593),.dout(tmp_1_fu_485_p19));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U273(.din0(buff_C_out_q1),.din1(buff_C_out_1_q1),.din2(buff_C_out_2_q1),.din3(buff_C_out_3_q1),.din4(buff_C_out_4_q1),.din5(buff_C_out_5_q1),.din6(buff_C_out_6_q1),.din7(buff_C_out_7_q1),.def(tmp_2_fu_524_p17),.sel(trunc_ln30_1_reg_593_pp0_iter5_reg),.dout(tmp_2_fu_524_p19));
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
            i_fu_100 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_100 <= select_ln29_fu_423_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_380_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_104 <= add_ln29_1_fu_386_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_104 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_96 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_96 <= add_ln30_fu_469_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_714 <= grp_fu_416_p_dout0;
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
        buff_C_out_1_addr_reg_662 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_1_addr_reg_662_pp0_iter10_reg <= buff_C_out_1_addr_reg_662_pp0_iter9_reg;
        buff_C_out_1_addr_reg_662_pp0_iter11_reg <= buff_C_out_1_addr_reg_662_pp0_iter10_reg;
        buff_C_out_1_addr_reg_662_pp0_iter12_reg <= buff_C_out_1_addr_reg_662_pp0_iter11_reg;
        buff_C_out_1_addr_reg_662_pp0_iter13_reg <= buff_C_out_1_addr_reg_662_pp0_iter12_reg;
        buff_C_out_1_addr_reg_662_pp0_iter6_reg <= buff_C_out_1_addr_reg_662;
        buff_C_out_1_addr_reg_662_pp0_iter7_reg <= buff_C_out_1_addr_reg_662_pp0_iter6_reg;
        buff_C_out_1_addr_reg_662_pp0_iter8_reg <= buff_C_out_1_addr_reg_662_pp0_iter7_reg;
        buff_C_out_1_addr_reg_662_pp0_iter9_reg <= buff_C_out_1_addr_reg_662_pp0_iter8_reg;
        buff_C_out_2_addr_reg_668 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_2_addr_reg_668_pp0_iter10_reg <= buff_C_out_2_addr_reg_668_pp0_iter9_reg;
        buff_C_out_2_addr_reg_668_pp0_iter11_reg <= buff_C_out_2_addr_reg_668_pp0_iter10_reg;
        buff_C_out_2_addr_reg_668_pp0_iter12_reg <= buff_C_out_2_addr_reg_668_pp0_iter11_reg;
        buff_C_out_2_addr_reg_668_pp0_iter13_reg <= buff_C_out_2_addr_reg_668_pp0_iter12_reg;
        buff_C_out_2_addr_reg_668_pp0_iter6_reg <= buff_C_out_2_addr_reg_668;
        buff_C_out_2_addr_reg_668_pp0_iter7_reg <= buff_C_out_2_addr_reg_668_pp0_iter6_reg;
        buff_C_out_2_addr_reg_668_pp0_iter8_reg <= buff_C_out_2_addr_reg_668_pp0_iter7_reg;
        buff_C_out_2_addr_reg_668_pp0_iter9_reg <= buff_C_out_2_addr_reg_668_pp0_iter8_reg;
        buff_C_out_3_addr_reg_674 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_3_addr_reg_674_pp0_iter10_reg <= buff_C_out_3_addr_reg_674_pp0_iter9_reg;
        buff_C_out_3_addr_reg_674_pp0_iter11_reg <= buff_C_out_3_addr_reg_674_pp0_iter10_reg;
        buff_C_out_3_addr_reg_674_pp0_iter12_reg <= buff_C_out_3_addr_reg_674_pp0_iter11_reg;
        buff_C_out_3_addr_reg_674_pp0_iter13_reg <= buff_C_out_3_addr_reg_674_pp0_iter12_reg;
        buff_C_out_3_addr_reg_674_pp0_iter6_reg <= buff_C_out_3_addr_reg_674;
        buff_C_out_3_addr_reg_674_pp0_iter7_reg <= buff_C_out_3_addr_reg_674_pp0_iter6_reg;
        buff_C_out_3_addr_reg_674_pp0_iter8_reg <= buff_C_out_3_addr_reg_674_pp0_iter7_reg;
        buff_C_out_3_addr_reg_674_pp0_iter9_reg <= buff_C_out_3_addr_reg_674_pp0_iter8_reg;
        buff_C_out_4_addr_reg_680 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_4_addr_reg_680_pp0_iter10_reg <= buff_C_out_4_addr_reg_680_pp0_iter9_reg;
        buff_C_out_4_addr_reg_680_pp0_iter11_reg <= buff_C_out_4_addr_reg_680_pp0_iter10_reg;
        buff_C_out_4_addr_reg_680_pp0_iter12_reg <= buff_C_out_4_addr_reg_680_pp0_iter11_reg;
        buff_C_out_4_addr_reg_680_pp0_iter13_reg <= buff_C_out_4_addr_reg_680_pp0_iter12_reg;
        buff_C_out_4_addr_reg_680_pp0_iter6_reg <= buff_C_out_4_addr_reg_680;
        buff_C_out_4_addr_reg_680_pp0_iter7_reg <= buff_C_out_4_addr_reg_680_pp0_iter6_reg;
        buff_C_out_4_addr_reg_680_pp0_iter8_reg <= buff_C_out_4_addr_reg_680_pp0_iter7_reg;
        buff_C_out_4_addr_reg_680_pp0_iter9_reg <= buff_C_out_4_addr_reg_680_pp0_iter8_reg;
        buff_C_out_5_addr_reg_686 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_5_addr_reg_686_pp0_iter10_reg <= buff_C_out_5_addr_reg_686_pp0_iter9_reg;
        buff_C_out_5_addr_reg_686_pp0_iter11_reg <= buff_C_out_5_addr_reg_686_pp0_iter10_reg;
        buff_C_out_5_addr_reg_686_pp0_iter12_reg <= buff_C_out_5_addr_reg_686_pp0_iter11_reg;
        buff_C_out_5_addr_reg_686_pp0_iter13_reg <= buff_C_out_5_addr_reg_686_pp0_iter12_reg;
        buff_C_out_5_addr_reg_686_pp0_iter6_reg <= buff_C_out_5_addr_reg_686;
        buff_C_out_5_addr_reg_686_pp0_iter7_reg <= buff_C_out_5_addr_reg_686_pp0_iter6_reg;
        buff_C_out_5_addr_reg_686_pp0_iter8_reg <= buff_C_out_5_addr_reg_686_pp0_iter7_reg;
        buff_C_out_5_addr_reg_686_pp0_iter9_reg <= buff_C_out_5_addr_reg_686_pp0_iter8_reg;
        buff_C_out_6_addr_reg_692 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_6_addr_reg_692_pp0_iter10_reg <= buff_C_out_6_addr_reg_692_pp0_iter9_reg;
        buff_C_out_6_addr_reg_692_pp0_iter11_reg <= buff_C_out_6_addr_reg_692_pp0_iter10_reg;
        buff_C_out_6_addr_reg_692_pp0_iter12_reg <= buff_C_out_6_addr_reg_692_pp0_iter11_reg;
        buff_C_out_6_addr_reg_692_pp0_iter13_reg <= buff_C_out_6_addr_reg_692_pp0_iter12_reg;
        buff_C_out_6_addr_reg_692_pp0_iter6_reg <= buff_C_out_6_addr_reg_692;
        buff_C_out_6_addr_reg_692_pp0_iter7_reg <= buff_C_out_6_addr_reg_692_pp0_iter6_reg;
        buff_C_out_6_addr_reg_692_pp0_iter8_reg <= buff_C_out_6_addr_reg_692_pp0_iter7_reg;
        buff_C_out_6_addr_reg_692_pp0_iter9_reg <= buff_C_out_6_addr_reg_692_pp0_iter8_reg;
        buff_C_out_7_addr_reg_698 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_7_addr_reg_698_pp0_iter10_reg <= buff_C_out_7_addr_reg_698_pp0_iter9_reg;
        buff_C_out_7_addr_reg_698_pp0_iter11_reg <= buff_C_out_7_addr_reg_698_pp0_iter10_reg;
        buff_C_out_7_addr_reg_698_pp0_iter12_reg <= buff_C_out_7_addr_reg_698_pp0_iter11_reg;
        buff_C_out_7_addr_reg_698_pp0_iter13_reg <= buff_C_out_7_addr_reg_698_pp0_iter12_reg;
        buff_C_out_7_addr_reg_698_pp0_iter6_reg <= buff_C_out_7_addr_reg_698;
        buff_C_out_7_addr_reg_698_pp0_iter7_reg <= buff_C_out_7_addr_reg_698_pp0_iter6_reg;
        buff_C_out_7_addr_reg_698_pp0_iter8_reg <= buff_C_out_7_addr_reg_698_pp0_iter7_reg;
        buff_C_out_7_addr_reg_698_pp0_iter9_reg <= buff_C_out_7_addr_reg_698_pp0_iter8_reg;
        buff_C_out_addr_reg_656 <= zext_ln32_reg_599_pp0_iter4_reg;
        buff_C_out_addr_reg_656_pp0_iter10_reg <= buff_C_out_addr_reg_656_pp0_iter9_reg;
        buff_C_out_addr_reg_656_pp0_iter11_reg <= buff_C_out_addr_reg_656_pp0_iter10_reg;
        buff_C_out_addr_reg_656_pp0_iter12_reg <= buff_C_out_addr_reg_656_pp0_iter11_reg;
        buff_C_out_addr_reg_656_pp0_iter13_reg <= buff_C_out_addr_reg_656_pp0_iter12_reg;
        buff_C_out_addr_reg_656_pp0_iter6_reg <= buff_C_out_addr_reg_656;
        buff_C_out_addr_reg_656_pp0_iter7_reg <= buff_C_out_addr_reg_656_pp0_iter6_reg;
        buff_C_out_addr_reg_656_pp0_iter8_reg <= buff_C_out_addr_reg_656_pp0_iter7_reg;
        buff_C_out_addr_reg_656_pp0_iter9_reg <= buff_C_out_addr_reg_656_pp0_iter8_reg;
        mul2_reg_704 <= grp_fu_420_p_dout0;
        tmp_1_reg_651 <= tmp_1_fu_485_p19;
        tmp_2_reg_709 <= tmp_2_fu_524_p19;
        trunc_ln30_1_reg_593_pp0_iter10_reg <= trunc_ln30_1_reg_593_pp0_iter9_reg;
        trunc_ln30_1_reg_593_pp0_iter11_reg <= trunc_ln30_1_reg_593_pp0_iter10_reg;
        trunc_ln30_1_reg_593_pp0_iter12_reg <= trunc_ln30_1_reg_593_pp0_iter11_reg;
        trunc_ln30_1_reg_593_pp0_iter13_reg <= trunc_ln30_1_reg_593_pp0_iter12_reg;
        trunc_ln30_1_reg_593_pp0_iter2_reg <= trunc_ln30_1_reg_593;
        trunc_ln30_1_reg_593_pp0_iter3_reg <= trunc_ln30_1_reg_593_pp0_iter2_reg;
        trunc_ln30_1_reg_593_pp0_iter4_reg <= trunc_ln30_1_reg_593_pp0_iter3_reg;
        trunc_ln30_1_reg_593_pp0_iter5_reg <= trunc_ln30_1_reg_593_pp0_iter4_reg;
        trunc_ln30_1_reg_593_pp0_iter6_reg <= trunc_ln30_1_reg_593_pp0_iter5_reg;
        trunc_ln30_1_reg_593_pp0_iter7_reg <= trunc_ln30_1_reg_593_pp0_iter6_reg;
        trunc_ln30_1_reg_593_pp0_iter8_reg <= trunc_ln30_1_reg_593_pp0_iter7_reg;
        trunc_ln30_1_reg_593_pp0_iter9_reg <= trunc_ln30_1_reg_593_pp0_iter8_reg;
        zext_ln32_reg_599_pp0_iter2_reg[8 : 0] <= zext_ln32_reg_599[8 : 0];
        zext_ln32_reg_599_pp0_iter3_reg[8 : 0] <= zext_ln32_reg_599_pp0_iter2_reg[8 : 0];
        zext_ln32_reg_599_pp0_iter4_reg[8 : 0] <= zext_ln32_reg_599_pp0_iter3_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln30_1_reg_593 <= trunc_ln30_1_fu_435_p1;
        zext_ln32_reg_599[8 : 0] <= zext_ln32_fu_457_p1[8 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_380_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten13_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_104;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd4))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd5))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd6))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd7))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln30_1_reg_593_pp0_iter13_reg == 3'd0))) begin
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
assign add_ln29_1_fu_386_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 13'd1);
assign add_ln29_fu_403_p2 = (i_fu_100 + 7'd1);
assign add_ln30_fu_469_p2 = (select_ln5_fu_415_p3 + 7'd1);
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
assign buff_B_1_address0 = zext_ln32_fu_457_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_2_address0 = zext_ln32_fu_457_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_3_address0 = zext_ln32_fu_457_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_4_address0 = zext_ln32_fu_457_p1;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_5_address0 = zext_ln32_fu_457_p1;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_6_address0 = zext_ln32_fu_457_p1;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_7_address0 = zext_ln32_fu_457_p1;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_address0 = zext_ln32_fu_457_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_addr_reg_662_pp0_iter13_reg;
assign buff_C_out_1_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add1_reg_714;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_addr_reg_668_pp0_iter13_reg;
assign buff_C_out_2_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_ce1 = buff_C_out_2_ce1_local;
assign buff_C_out_2_d0 = add1_reg_714;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_addr_reg_674_pp0_iter13_reg;
assign buff_C_out_3_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_ce1 = buff_C_out_3_ce1_local;
assign buff_C_out_3_d0 = add1_reg_714;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_addr_reg_680_pp0_iter13_reg;
assign buff_C_out_4_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_ce1 = buff_C_out_4_ce1_local;
assign buff_C_out_4_d0 = add1_reg_714;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_addr_reg_686_pp0_iter13_reg;
assign buff_C_out_5_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_ce1 = buff_C_out_5_ce1_local;
assign buff_C_out_5_d0 = add1_reg_714;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_addr_reg_692_pp0_iter13_reg;
assign buff_C_out_6_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_ce1 = buff_C_out_6_ce1_local;
assign buff_C_out_6_d0 = add1_reg_714;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_addr_reg_698_pp0_iter13_reg;
assign buff_C_out_7_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_ce1 = buff_C_out_7_ce1_local;
assign buff_C_out_7_d0 = add1_reg_714;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = buff_C_out_addr_reg_656_pp0_iter13_reg;
assign buff_C_out_address1 = zext_ln32_reg_599_pp0_iter4_reg;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add1_reg_714;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign grp_fu_416_p_ce = 1'b1;
assign grp_fu_416_p_din0 = tmp_2_reg_709;
assign grp_fu_416_p_din1 = mul2_reg_704;
assign grp_fu_416_p_opcode = 2'd0;
assign grp_fu_420_p_ce = 1'b1;
assign grp_fu_420_p_din0 = tmp_1_reg_651;
assign grp_fu_420_p_din1 = beta;
assign icmp_ln29_fu_380_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_409_p2 = ((j_fu_96 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_439_p4 = {{select_ln5_fu_415_p3[5:3]}};
assign select_ln29_fu_423_p3 = ((icmp_ln30_fu_409_p2[0:0] == 1'b1) ? add_ln29_fu_403_p2 : i_fu_100);
assign select_ln5_fu_415_p3 = ((icmp_ln30_fu_409_p2[0:0] == 1'b1) ? 7'd0 : j_fu_96);
assign tmp_1_fu_485_p17 = 'bx;
assign tmp_2_fu_524_p17 = 'bx;
assign tmp_s_fu_449_p3 = {{trunc_ln30_fu_431_p1}, {lshr_ln5_2_fu_439_p4}};
assign trunc_ln30_1_fu_435_p1 = select_ln5_fu_415_p3[2:0];
assign trunc_ln30_fu_431_p1 = select_ln29_fu_423_p3[5:0];
assign zext_ln32_fu_457_p1 = tmp_s_fu_449_p3;
always @ (posedge ap_clk) begin
    zext_ln32_reg_599[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_599_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_599_pp0_iter3_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_599_pp0_iter4_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 