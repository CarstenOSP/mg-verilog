module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_r_1_address0,buff_r_1_ce0,buff_r_1_q0,buff_r_2_address0,buff_r_2_ce0,buff_r_2_q0,buff_r_3_address0,buff_r_3_ce0,buff_r_3_q0,buff_r_4_address0,buff_r_4_ce0,buff_r_4_q0,buff_r_5_address0,buff_r_5_ce0,buff_r_5_q0,buff_r_6_address0,buff_r_6_ce0,buff_r_6_q0,buff_r_7_address0,buff_r_7_ce0,buff_r_7_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_address1,buff_s_out_ce1,buff_s_out_q1,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_address1,buff_s_out_1_ce1,buff_s_out_1_q1,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_we0,buff_s_out_2_d0,buff_s_out_2_address1,buff_s_out_2_ce1,buff_s_out_2_q1,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_we0,buff_s_out_3_d0,buff_s_out_3_address1,buff_s_out_3_ce1,buff_s_out_3_q1,buff_s_out_4_address0,buff_s_out_4_ce0,buff_s_out_4_we0,buff_s_out_4_d0,buff_s_out_4_q0,buff_s_out_5_address0,buff_s_out_5_ce0,buff_s_out_5_we0,buff_s_out_5_d0,buff_s_out_5_q0,buff_s_out_6_address0,buff_s_out_6_ce0,buff_s_out_6_we0,buff_s_out_6_d0,buff_s_out_6_q0,buff_s_out_7_address0,buff_s_out_7_ce0,buff_s_out_7_we0,buff_s_out_7_d0,buff_s_out_7_q0,grp_fu_2202_p_din0,grp_fu_2202_p_din1,grp_fu_2202_p_opcode,grp_fu_2202_p_dout0,grp_fu_2202_p_ce,grp_fu_2206_p_din0,grp_fu_2206_p_din1,grp_fu_2206_p_opcode,grp_fu_2206_p_dout0,grp_fu_2206_p_ce,grp_fu_2210_p_din0,grp_fu_2210_p_din1,grp_fu_2210_p_opcode,grp_fu_2210_p_dout0,grp_fu_2210_p_ce,grp_fu_2214_p_din0,grp_fu_2214_p_din1,grp_fu_2214_p_opcode,grp_fu_2214_p_dout0,grp_fu_2214_p_ce,grp_fu_2218_p_din0,grp_fu_2218_p_din1,grp_fu_2218_p_dout0,grp_fu_2218_p_ce,grp_fu_2222_p_din0,grp_fu_2222_p_din1,grp_fu_2222_p_dout0,grp_fu_2222_p_ce,grp_fu_2226_p_din0,grp_fu_2226_p_din1,grp_fu_2226_p_dout0,grp_fu_2226_p_ce,grp_fu_2230_p_din0,grp_fu_2230_p_din1,grp_fu_2230_p_dout0,grp_fu_2230_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] buff_r_address0;
output   buff_r_ce0;
input  [31:0] buff_r_q0;
output  [2:0] buff_r_1_address0;
output   buff_r_1_ce0;
input  [31:0] buff_r_1_q0;
output  [2:0] buff_r_2_address0;
output   buff_r_2_ce0;
input  [31:0] buff_r_2_q0;
output  [2:0] buff_r_3_address0;
output   buff_r_3_ce0;
input  [31:0] buff_r_3_q0;
output  [2:0] buff_r_4_address0;
output   buff_r_4_ce0;
input  [31:0] buff_r_4_q0;
output  [2:0] buff_r_5_address0;
output   buff_r_5_ce0;
input  [31:0] buff_r_5_q0;
output  [2:0] buff_r_6_address0;
output   buff_r_6_ce0;
input  [31:0] buff_r_6_q0;
output  [2:0] buff_r_7_address0;
output   buff_r_7_ce0;
input  [31:0] buff_r_7_q0;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [2:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
output  [2:0] buff_s_out_address1;
output   buff_s_out_ce1;
input  [31:0] buff_s_out_q1;
output  [2:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
output  [2:0] buff_s_out_1_address1;
output   buff_s_out_1_ce1;
input  [31:0] buff_s_out_1_q1;
output  [2:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
output   buff_s_out_2_we0;
output  [31:0] buff_s_out_2_d0;
output  [2:0] buff_s_out_2_address1;
output   buff_s_out_2_ce1;
input  [31:0] buff_s_out_2_q1;
output  [2:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
output   buff_s_out_3_we0;
output  [31:0] buff_s_out_3_d0;
output  [2:0] buff_s_out_3_address1;
output   buff_s_out_3_ce1;
input  [31:0] buff_s_out_3_q1;
output  [2:0] buff_s_out_4_address0;
output   buff_s_out_4_ce0;
output   buff_s_out_4_we0;
output  [31:0] buff_s_out_4_d0;
input  [31:0] buff_s_out_4_q0;
output  [2:0] buff_s_out_5_address0;
output   buff_s_out_5_ce0;
output   buff_s_out_5_we0;
output  [31:0] buff_s_out_5_d0;
input  [31:0] buff_s_out_5_q0;
output  [2:0] buff_s_out_6_address0;
output   buff_s_out_6_ce0;
output   buff_s_out_6_we0;
output  [31:0] buff_s_out_6_d0;
input  [31:0] buff_s_out_6_q0;
output  [2:0] buff_s_out_7_address0;
output   buff_s_out_7_ce0;
output   buff_s_out_7_we0;
output  [31:0] buff_s_out_7_d0;
input  [31:0] buff_s_out_7_q0;
output  [31:0] grp_fu_2202_p_din0;
output  [31:0] grp_fu_2202_p_din1;
output  [1:0] grp_fu_2202_p_opcode;
input  [31:0] grp_fu_2202_p_dout0;
output   grp_fu_2202_p_ce;
output  [31:0] grp_fu_2206_p_din0;
output  [31:0] grp_fu_2206_p_din1;
output  [1:0] grp_fu_2206_p_opcode;
input  [31:0] grp_fu_2206_p_dout0;
output   grp_fu_2206_p_ce;
output  [31:0] grp_fu_2210_p_din0;
output  [31:0] grp_fu_2210_p_din1;
output  [1:0] grp_fu_2210_p_opcode;
input  [31:0] grp_fu_2210_p_dout0;
output   grp_fu_2210_p_ce;
output  [31:0] grp_fu_2214_p_din0;
output  [31:0] grp_fu_2214_p_din1;
output  [1:0] grp_fu_2214_p_opcode;
input  [31:0] grp_fu_2214_p_dout0;
output   grp_fu_2214_p_ce;
output  [31:0] grp_fu_2218_p_din0;
output  [31:0] grp_fu_2218_p_din1;
input  [31:0] grp_fu_2218_p_dout0;
output   grp_fu_2218_p_ce;
output  [31:0] grp_fu_2222_p_din0;
output  [31:0] grp_fu_2222_p_din1;
input  [31:0] grp_fu_2222_p_dout0;
output   grp_fu_2222_p_ce;
output  [31:0] grp_fu_2226_p_din0;
output  [31:0] grp_fu_2226_p_din1;
input  [31:0] grp_fu_2226_p_dout0;
output   grp_fu_2226_p_ce;
output  [31:0] grp_fu_2230_p_din0;
output  [31:0] grp_fu_2230_p_din1;
input  [31:0] grp_fu_2230_p_dout0;
output   grp_fu_2230_p_ce;
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
reg   [0:0] icmp_ln23_reg_719;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_480;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_486;
reg   [31:0] reg_492;
reg   [31:0] reg_498;
wire   [0:0] icmp_ln23_fu_522_p2;
reg   [6:0] j_load_reg_723;
wire   [0:0] tmp_1_fu_546_p3;
reg   [0:0] tmp_1_reg_728;
wire   [5:0] trunc_ln23_fu_562_p1;
reg   [5:0] trunc_ln23_reg_733;
wire   [2:0] trunc_ln23_1_fu_566_p1;
reg   [2:0] trunc_ln23_1_reg_738;
wire   [31:0] tmp_fu_608_p19;
reg   [31:0] tmp_reg_783;
reg   [31:0] tmp_reg_783_pp0_iter1_reg;
wire   [2:0] lshr_ln5_3_fu_647_p4;
reg   [2:0] lshr_ln5_3_reg_791;
reg   [2:0] lshr_ln5_3_reg_791_pp0_iter1_reg;
reg   [31:0] buff_A_load_reg_836;
reg   [31:0] buff_A_1_load_reg_841;
reg   [31:0] buff_A_2_load_reg_846;
reg   [31:0] buff_A_3_load_reg_851;
reg   [31:0] buff_A_4_load_reg_856;
reg   [31:0] buff_A_5_load_reg_861;
reg   [31:0] buff_A_6_load_reg_866;
reg   [31:0] buff_A_7_load_reg_871;
reg   [2:0] buff_s_out_addr_reg_876;
reg   [2:0] buff_s_out_addr_reg_876_pp0_iter3_reg;
reg   [2:0] buff_s_out_addr_reg_876_pp0_iter4_reg;
reg   [2:0] buff_s_out_addr_reg_876_pp0_iter5_reg;
reg   [2:0] buff_s_out_addr_reg_876_pp0_iter6_reg;
reg   [2:0] buff_s_out_1_addr_reg_882;
reg   [2:0] buff_s_out_1_addr_reg_882_pp0_iter3_reg;
reg   [2:0] buff_s_out_1_addr_reg_882_pp0_iter4_reg;
reg   [2:0] buff_s_out_1_addr_reg_882_pp0_iter5_reg;
reg   [2:0] buff_s_out_1_addr_reg_882_pp0_iter6_reg;
reg   [2:0] buff_s_out_2_addr_reg_888;
reg   [2:0] buff_s_out_2_addr_reg_888_pp0_iter3_reg;
reg   [2:0] buff_s_out_2_addr_reg_888_pp0_iter4_reg;
reg   [2:0] buff_s_out_2_addr_reg_888_pp0_iter5_reg;
reg   [2:0] buff_s_out_2_addr_reg_888_pp0_iter6_reg;
reg   [2:0] buff_s_out_3_addr_reg_894;
reg   [2:0] buff_s_out_3_addr_reg_894_pp0_iter3_reg;
reg   [2:0] buff_s_out_3_addr_reg_894_pp0_iter4_reg;
reg   [2:0] buff_s_out_3_addr_reg_894_pp0_iter5_reg;
reg   [2:0] buff_s_out_3_addr_reg_894_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_900;
reg   [2:0] buff_s_out_4_addr_reg_900_pp0_iter3_reg;
reg   [2:0] buff_s_out_4_addr_reg_900_pp0_iter4_reg;
reg   [2:0] buff_s_out_4_addr_reg_900_pp0_iter5_reg;
reg   [2:0] buff_s_out_4_addr_reg_900_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_900_pp0_iter7_reg;
reg   [2:0] buff_s_out_5_addr_reg_905;
reg   [2:0] buff_s_out_5_addr_reg_905_pp0_iter3_reg;
reg   [2:0] buff_s_out_5_addr_reg_905_pp0_iter4_reg;
reg   [2:0] buff_s_out_5_addr_reg_905_pp0_iter5_reg;
reg   [2:0] buff_s_out_5_addr_reg_905_pp0_iter6_reg;
reg   [2:0] buff_s_out_5_addr_reg_905_pp0_iter7_reg;
reg   [2:0] buff_s_out_6_addr_reg_910;
reg   [2:0] buff_s_out_6_addr_reg_910_pp0_iter3_reg;
reg   [2:0] buff_s_out_6_addr_reg_910_pp0_iter4_reg;
reg   [2:0] buff_s_out_6_addr_reg_910_pp0_iter5_reg;
reg   [2:0] buff_s_out_6_addr_reg_910_pp0_iter6_reg;
reg   [2:0] buff_s_out_6_addr_reg_910_pp0_iter7_reg;
reg   [2:0] buff_s_out_7_addr_reg_915;
reg   [2:0] buff_s_out_7_addr_reg_915_pp0_iter3_reg;
reg   [2:0] buff_s_out_7_addr_reg_915_pp0_iter4_reg;
reg   [2:0] buff_s_out_7_addr_reg_915_pp0_iter5_reg;
reg   [2:0] buff_s_out_7_addr_reg_915_pp0_iter6_reg;
reg   [2:0] buff_s_out_7_addr_reg_915_pp0_iter7_reg;
reg   [31:0] buff_s_out_load_reg_920;
reg   [31:0] buff_s_out_1_load_reg_925;
reg   [31:0] buff_s_out_2_load_reg_930;
reg   [31:0] buff_s_out_3_load_reg_935;
reg   [31:0] mul_reg_940;
reg   [31:0] mul_1_reg_945;
reg   [31:0] mul_2_reg_950;
reg   [31:0] mul_3_reg_955;
reg   [31:0] mul_4_reg_960;
reg   [31:0] mul_5_reg_965;
reg   [31:0] mul_6_reg_970;
reg   [31:0] mul_7_reg_975;
reg   [31:0] buff_s_out_4_load_reg_980;
reg   [31:0] buff_s_out_5_load_reg_985;
reg   [31:0] buff_s_out_6_load_reg_990;
reg   [31:0] buff_s_out_7_load_reg_995;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_580_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln25_fu_664_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln5_1_fu_687_p1;
reg   [6:0] j_fu_112;
wire   [6:0] add_ln24_fu_676_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_1_fu_116;
wire   [6:0] select_ln23_fu_554_p3;
reg   [6:0] ap_sig_allocacmp_i_1_load;
reg   [9:0] indvar_flatten_fu_120;
wire   [9:0] add_ln23_1_fu_528_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    buff_r_ce0_local;
reg    buff_r_1_ce0_local;
reg    buff_r_2_ce0_local;
reg    buff_r_3_ce0_local;
reg    buff_r_4_ce0_local;
reg    buff_r_5_ce0_local;
reg    buff_r_6_ce0_local;
reg    buff_r_7_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_s_out_ce1_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_s_out_1_ce1_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_s_out_2_ce1_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_s_out_3_ce1_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_s_out_4_ce0_local;
reg   [2:0] buff_s_out_4_address0_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_5_ce0_local;
reg   [2:0] buff_s_out_5_address0_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_6_ce0_local;
reg   [2:0] buff_s_out_6_address0_local;
reg    buff_s_out_6_we0_local;
reg    buff_s_out_7_ce0_local;
reg   [2:0] buff_s_out_7_address0_local;
reg    buff_s_out_7_we0_local;
reg   [31:0] grp_fu_448_p0;
reg   [31:0] grp_fu_448_p1;
reg   [31:0] grp_fu_452_p0;
reg   [31:0] grp_fu_452_p1;
reg   [31:0] grp_fu_456_p0;
reg   [31:0] grp_fu_456_p1;
reg   [31:0] grp_fu_460_p0;
reg   [31:0] grp_fu_460_p1;
reg   [31:0] grp_fu_464_p0;
reg   [31:0] grp_fu_464_p1;
reg   [31:0] grp_fu_468_p0;
reg   [31:0] grp_fu_468_p1;
reg   [31:0] grp_fu_472_p0;
reg   [31:0] grp_fu_472_p1;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_476_p1;
wire   [6:0] add_ln23_fu_540_p2;
wire   [2:0] lshr_ln5_1_fu_570_p4;
wire   [31:0] tmp_fu_608_p17;
wire   [6:0] select_ln5_fu_602_p3;
wire   [8:0] tmp_3_fu_657_p3;
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
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_fu_608_p1;
wire   [2:0] tmp_fu_608_p3;
wire   [2:0] tmp_fu_608_p5;
wire   [2:0] tmp_fu_608_p7;
wire  signed [2:0] tmp_fu_608_p9;
wire  signed [2:0] tmp_fu_608_p11;
wire  signed [2:0] tmp_fu_608_p13;
wire  signed [2:0] tmp_fu_608_p15;
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
#0 j_fu_112 = 7'd0;
#0 i_1_fu_116 = 7'd0;
#0 indvar_flatten_fu_120 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U26(.din0(buff_r_q0),.din1(buff_r_1_q0),.din2(buff_r_2_q0),.din3(buff_r_3_q0),.din4(buff_r_4_q0),.din5(buff_r_5_q0),.din6(buff_r_6_q0),.din7(buff_r_7_q0),.def(tmp_fu_608_p17),.sel(trunc_ln23_1_reg_738),.dout(tmp_fu_608_p19));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_522_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_116 <= select_ln23_fu_554_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_116 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_522_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_120 <= add_ln23_1_fu_528_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_120 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_112 <= 7'd0;
    end else if (((icmp_ln23_reg_719 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_112 <= add_ln24_fu_676_p2;
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
        lshr_ln5_3_reg_791 <= {{select_ln5_fu_602_p3[5:3]}};
        lshr_ln5_3_reg_791_pp0_iter1_reg <= lshr_ln5_3_reg_791;
        tmp_reg_783 <= tmp_fu_608_p19;
        tmp_reg_783_pp0_iter1_reg <= tmp_reg_783;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_load_reg_841 <= buff_A_1_q0;
        buff_A_2_load_reg_846 <= buff_A_2_q0;
        buff_A_3_load_reg_851 <= buff_A_3_q0;
        buff_A_4_load_reg_856 <= buff_A_4_q0;
        buff_A_5_load_reg_861 <= buff_A_5_q0;
        buff_A_6_load_reg_866 <= buff_A_6_q0;
        buff_A_7_load_reg_871 <= buff_A_7_q0;
        buff_A_load_reg_836 <= buff_A_q0;
        buff_s_out_1_addr_reg_882 <= zext_ln5_1_fu_687_p1;
        buff_s_out_1_addr_reg_882_pp0_iter3_reg <= buff_s_out_1_addr_reg_882;
        buff_s_out_1_addr_reg_882_pp0_iter4_reg <= buff_s_out_1_addr_reg_882_pp0_iter3_reg;
        buff_s_out_1_addr_reg_882_pp0_iter5_reg <= buff_s_out_1_addr_reg_882_pp0_iter4_reg;
        buff_s_out_1_addr_reg_882_pp0_iter6_reg <= buff_s_out_1_addr_reg_882_pp0_iter5_reg;
        buff_s_out_2_addr_reg_888 <= zext_ln5_1_fu_687_p1;
        buff_s_out_2_addr_reg_888_pp0_iter3_reg <= buff_s_out_2_addr_reg_888;
        buff_s_out_2_addr_reg_888_pp0_iter4_reg <= buff_s_out_2_addr_reg_888_pp0_iter3_reg;
        buff_s_out_2_addr_reg_888_pp0_iter5_reg <= buff_s_out_2_addr_reg_888_pp0_iter4_reg;
        buff_s_out_2_addr_reg_888_pp0_iter6_reg <= buff_s_out_2_addr_reg_888_pp0_iter5_reg;
        buff_s_out_3_addr_reg_894 <= zext_ln5_1_fu_687_p1;
        buff_s_out_3_addr_reg_894_pp0_iter3_reg <= buff_s_out_3_addr_reg_894;
        buff_s_out_3_addr_reg_894_pp0_iter4_reg <= buff_s_out_3_addr_reg_894_pp0_iter3_reg;
        buff_s_out_3_addr_reg_894_pp0_iter5_reg <= buff_s_out_3_addr_reg_894_pp0_iter4_reg;
        buff_s_out_3_addr_reg_894_pp0_iter6_reg <= buff_s_out_3_addr_reg_894_pp0_iter5_reg;
        buff_s_out_4_addr_reg_900 <= zext_ln5_1_fu_687_p1;
        buff_s_out_4_addr_reg_900_pp0_iter3_reg <= buff_s_out_4_addr_reg_900;
        buff_s_out_4_addr_reg_900_pp0_iter4_reg <= buff_s_out_4_addr_reg_900_pp0_iter3_reg;
        buff_s_out_4_addr_reg_900_pp0_iter5_reg <= buff_s_out_4_addr_reg_900_pp0_iter4_reg;
        buff_s_out_4_addr_reg_900_pp0_iter6_reg <= buff_s_out_4_addr_reg_900_pp0_iter5_reg;
        buff_s_out_4_addr_reg_900_pp0_iter7_reg <= buff_s_out_4_addr_reg_900_pp0_iter6_reg;
        buff_s_out_5_addr_reg_905 <= zext_ln5_1_fu_687_p1;
        buff_s_out_5_addr_reg_905_pp0_iter3_reg <= buff_s_out_5_addr_reg_905;
        buff_s_out_5_addr_reg_905_pp0_iter4_reg <= buff_s_out_5_addr_reg_905_pp0_iter3_reg;
        buff_s_out_5_addr_reg_905_pp0_iter5_reg <= buff_s_out_5_addr_reg_905_pp0_iter4_reg;
        buff_s_out_5_addr_reg_905_pp0_iter6_reg <= buff_s_out_5_addr_reg_905_pp0_iter5_reg;
        buff_s_out_5_addr_reg_905_pp0_iter7_reg <= buff_s_out_5_addr_reg_905_pp0_iter6_reg;
        buff_s_out_6_addr_reg_910 <= zext_ln5_1_fu_687_p1;
        buff_s_out_6_addr_reg_910_pp0_iter3_reg <= buff_s_out_6_addr_reg_910;
        buff_s_out_6_addr_reg_910_pp0_iter4_reg <= buff_s_out_6_addr_reg_910_pp0_iter3_reg;
        buff_s_out_6_addr_reg_910_pp0_iter5_reg <= buff_s_out_6_addr_reg_910_pp0_iter4_reg;
        buff_s_out_6_addr_reg_910_pp0_iter6_reg <= buff_s_out_6_addr_reg_910_pp0_iter5_reg;
        buff_s_out_6_addr_reg_910_pp0_iter7_reg <= buff_s_out_6_addr_reg_910_pp0_iter6_reg;
        buff_s_out_7_addr_reg_915 <= zext_ln5_1_fu_687_p1;
        buff_s_out_7_addr_reg_915_pp0_iter3_reg <= buff_s_out_7_addr_reg_915;
        buff_s_out_7_addr_reg_915_pp0_iter4_reg <= buff_s_out_7_addr_reg_915_pp0_iter3_reg;
        buff_s_out_7_addr_reg_915_pp0_iter5_reg <= buff_s_out_7_addr_reg_915_pp0_iter4_reg;
        buff_s_out_7_addr_reg_915_pp0_iter6_reg <= buff_s_out_7_addr_reg_915_pp0_iter5_reg;
        buff_s_out_7_addr_reg_915_pp0_iter7_reg <= buff_s_out_7_addr_reg_915_pp0_iter6_reg;
        buff_s_out_addr_reg_876 <= zext_ln5_1_fu_687_p1;
        buff_s_out_addr_reg_876_pp0_iter3_reg <= buff_s_out_addr_reg_876;
        buff_s_out_addr_reg_876_pp0_iter4_reg <= buff_s_out_addr_reg_876_pp0_iter3_reg;
        buff_s_out_addr_reg_876_pp0_iter5_reg <= buff_s_out_addr_reg_876_pp0_iter4_reg;
        buff_s_out_addr_reg_876_pp0_iter6_reg <= buff_s_out_addr_reg_876_pp0_iter5_reg;
        icmp_ln23_reg_719 <= icmp_ln23_fu_522_p2;
        j_load_reg_723 <= ap_sig_allocacmp_j_load;
        tmp_1_reg_728 <= ap_sig_allocacmp_j_load[32'd6];
        trunc_ln23_1_reg_738 <= trunc_ln23_1_fu_566_p1;
        trunc_ln23_reg_733 <= trunc_ln23_fu_562_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_1_load_reg_925 <= buff_s_out_1_q1;
        buff_s_out_2_load_reg_930 <= buff_s_out_2_q1;
        buff_s_out_3_load_reg_935 <= buff_s_out_3_q1;
        buff_s_out_load_reg_920 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_load_reg_980 <= buff_s_out_4_q0;
        buff_s_out_5_load_reg_985 <= buff_s_out_5_q0;
        buff_s_out_6_load_reg_990 <= buff_s_out_6_q0;
        buff_s_out_7_load_reg_995 <= buff_s_out_7_q0;
        mul_4_reg_960 <= grp_fu_2218_p_dout0;
        mul_5_reg_965 <= grp_fu_2222_p_dout0;
        mul_6_reg_970 <= grp_fu_2226_p_dout0;
        mul_7_reg_975 <= grp_fu_2230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_1_reg_945 <= grp_fu_2222_p_dout0;
        mul_2_reg_950 <= grp_fu_2226_p_dout0;
        mul_3_reg_955 <= grp_fu_2230_p_dout0;
        mul_reg_940 <= grp_fu_2218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_480 <= grp_fu_2202_p_dout0;
        reg_486 <= grp_fu_2206_p_dout0;
        reg_492 <= grp_fu_2210_p_dout0;
        reg_498 <= grp_fu_2214_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln23_reg_719 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_116;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_120;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_4_ce0_local = 1'b1;
    end else begin
        buff_r_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_5_ce0_local = 1'b1;
    end else begin
        buff_r_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_6_ce0_local = 1'b1;
    end else begin
        buff_r_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_7_ce0_local = 1'b1;
    end else begin
        buff_r_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_reg_900_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_reg_900;
    end else begin
        buff_s_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_reg_905_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_reg_905;
    end else begin
        buff_s_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_reg_910_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_reg_910;
    end else begin
        buff_s_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_reg_915_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_reg_915;
    end else begin
        buff_s_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p0 = buff_s_out_4_load_reg_980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p0 = buff_s_out_load_reg_920;
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p1 = mul_4_reg_960;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p1 = mul_reg_940;
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p0 = buff_s_out_5_load_reg_985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p0 = buff_s_out_1_load_reg_925;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p1 = mul_5_reg_965;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p1 = mul_1_reg_945;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p0 = buff_s_out_6_load_reg_990;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p0 = buff_s_out_2_load_reg_930;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p1 = mul_6_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p1 = mul_2_reg_950;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = buff_s_out_7_load_reg_995;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p0 = buff_s_out_3_load_reg_935;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p1 = mul_7_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p1 = mul_3_reg_955;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p0 = buff_A_4_load_reg_856;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p0 = buff_A_load_reg_836;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p1 = tmp_reg_783_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p1 = tmp_reg_783;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = buff_A_5_load_reg_861;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = buff_A_1_load_reg_841;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p1 = tmp_reg_783_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p1 = tmp_reg_783;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p0 = buff_A_6_load_reg_866;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p0 = buff_A_2_load_reg_846;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p1 = tmp_reg_783_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p1 = tmp_reg_783;
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p0 = buff_A_7_load_reg_871;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p0 = buff_A_3_load_reg_851;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p1 = tmp_reg_783_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p1 = tmp_reg_783;
    end else begin
        grp_fu_476_p1 = 'bx;
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
assign add_ln23_1_fu_528_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln23_fu_540_p2 = (ap_sig_allocacmp_i_1_load + 7'd1);
assign add_ln24_fu_676_p2 = (select_ln5_fu_602_p3 + 7'd8);
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
assign buff_A_1_address0 = zext_ln25_fu_664_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_664_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_664_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln25_fu_664_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln25_fu_664_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln25_fu_664_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln25_fu_664_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln25_fu_664_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_r_1_address0 = zext_ln5_fu_580_p1;
assign buff_r_1_ce0 = buff_r_1_ce0_local;
assign buff_r_2_address0 = zext_ln5_fu_580_p1;
assign buff_r_2_ce0 = buff_r_2_ce0_local;
assign buff_r_3_address0 = zext_ln5_fu_580_p1;
assign buff_r_3_ce0 = buff_r_3_ce0_local;
assign buff_r_4_address0 = zext_ln5_fu_580_p1;
assign buff_r_4_ce0 = buff_r_4_ce0_local;
assign buff_r_5_address0 = zext_ln5_fu_580_p1;
assign buff_r_5_ce0 = buff_r_5_ce0_local;
assign buff_r_6_address0 = zext_ln5_fu_580_p1;
assign buff_r_6_ce0 = buff_r_6_ce0_local;
assign buff_r_7_address0 = zext_ln5_fu_580_p1;
assign buff_r_7_ce0 = buff_r_7_ce0_local;
assign buff_r_address0 = zext_ln5_fu_580_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_addr_reg_882_pp0_iter6_reg;
assign buff_s_out_1_address1 = zext_ln5_1_fu_687_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_ce1 = buff_s_out_1_ce1_local;
assign buff_s_out_1_d0 = reg_486;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_2_address0 = buff_s_out_2_addr_reg_888_pp0_iter6_reg;
assign buff_s_out_2_address1 = zext_ln5_1_fu_687_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_2_ce1 = buff_s_out_2_ce1_local;
assign buff_s_out_2_d0 = reg_492;
assign buff_s_out_2_we0 = buff_s_out_2_we0_local;
assign buff_s_out_3_address0 = buff_s_out_3_addr_reg_894_pp0_iter6_reg;
assign buff_s_out_3_address1 = zext_ln5_1_fu_687_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_3_ce1 = buff_s_out_3_ce1_local;
assign buff_s_out_3_d0 = reg_498;
assign buff_s_out_3_we0 = buff_s_out_3_we0_local;
assign buff_s_out_4_address0 = buff_s_out_4_address0_local;
assign buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
assign buff_s_out_4_d0 = reg_480;
assign buff_s_out_4_we0 = buff_s_out_4_we0_local;
assign buff_s_out_5_address0 = buff_s_out_5_address0_local;
assign buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
assign buff_s_out_5_d0 = reg_486;
assign buff_s_out_5_we0 = buff_s_out_5_we0_local;
assign buff_s_out_6_address0 = buff_s_out_6_address0_local;
assign buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
assign buff_s_out_6_d0 = reg_492;
assign buff_s_out_6_we0 = buff_s_out_6_we0_local;
assign buff_s_out_7_address0 = buff_s_out_7_address0_local;
assign buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
assign buff_s_out_7_d0 = reg_498;
assign buff_s_out_7_we0 = buff_s_out_7_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_876_pp0_iter6_reg;
assign buff_s_out_address1 = zext_ln5_1_fu_687_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_ce1 = buff_s_out_ce1_local;
assign buff_s_out_d0 = reg_480;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_2202_p_ce = 1'b1;
assign grp_fu_2202_p_din0 = grp_fu_448_p0;
assign grp_fu_2202_p_din1 = grp_fu_448_p1;
assign grp_fu_2202_p_opcode = 2'd0;
assign grp_fu_2206_p_ce = 1'b1;
assign grp_fu_2206_p_din0 = grp_fu_452_p0;
assign grp_fu_2206_p_din1 = grp_fu_452_p1;
assign grp_fu_2206_p_opcode = 2'd0;
assign grp_fu_2210_p_ce = 1'b1;
assign grp_fu_2210_p_din0 = grp_fu_456_p0;
assign grp_fu_2210_p_din1 = grp_fu_456_p1;
assign grp_fu_2210_p_opcode = 2'd0;
assign grp_fu_2214_p_ce = 1'b1;
assign grp_fu_2214_p_din0 = grp_fu_460_p0;
assign grp_fu_2214_p_din1 = grp_fu_460_p1;
assign grp_fu_2214_p_opcode = 2'd0;
assign grp_fu_2218_p_ce = 1'b1;
assign grp_fu_2218_p_din0 = grp_fu_464_p0;
assign grp_fu_2218_p_din1 = grp_fu_464_p1;
assign grp_fu_2222_p_ce = 1'b1;
assign grp_fu_2222_p_din0 = grp_fu_468_p0;
assign grp_fu_2222_p_din1 = grp_fu_468_p1;
assign grp_fu_2226_p_ce = 1'b1;
assign grp_fu_2226_p_din0 = grp_fu_472_p0;
assign grp_fu_2226_p_din1 = grp_fu_472_p1;
assign grp_fu_2230_p_ce = 1'b1;
assign grp_fu_2230_p_din0 = grp_fu_476_p0;
assign grp_fu_2230_p_din1 = grp_fu_476_p1;
assign icmp_ln23_fu_522_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_570_p4 = {{select_ln23_fu_554_p3[5:3]}};
assign lshr_ln5_3_fu_647_p4 = {{select_ln5_fu_602_p3[5:3]}};
assign select_ln23_fu_554_p3 = ((tmp_1_fu_546_p3[0:0] == 1'b1) ? add_ln23_fu_540_p2 : ap_sig_allocacmp_i_1_load);
assign select_ln5_fu_602_p3 = ((tmp_1_reg_728[0:0] == 1'b1) ? 7'd0 : j_load_reg_723);
assign tmp_1_fu_546_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_3_fu_657_p3 = {{trunc_ln23_reg_733}, {lshr_ln5_3_fu_647_p4}};
assign tmp_fu_608_p17 = 'bx;
assign trunc_ln23_1_fu_566_p1 = select_ln23_fu_554_p3[2:0];
assign trunc_ln23_fu_562_p1 = select_ln23_fu_554_p3[5:0];
assign zext_ln25_fu_664_p1 = tmp_3_fu_657_p3;
assign zext_ln5_1_fu_687_p1 = lshr_ln5_3_reg_791_pp0_iter1_reg;
assign zext_ln5_fu_580_p1 = lshr_ln5_1_fu_570_p4;
endmodule 