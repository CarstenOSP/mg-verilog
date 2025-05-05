module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_address1,buff_A_ce1,buff_A_q1,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_1_address1,buff_A_1_ce1,buff_A_1_q1,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_2_address1,buff_A_2_ce1,buff_A_2_q1,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_3_address1,buff_A_3_ce1,buff_A_3_q1,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_q0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_we1,buff_y_out_d1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_q0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_we1,buff_y_out_1_d1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_q0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_we1,buff_y_out_2_d1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_q0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_we1,buff_y_out_3_d1,buff_y_out_3_q1,grp_fu_1730_p_din0,grp_fu_1730_p_din1,grp_fu_1730_p_opcode,grp_fu_1730_p_dout0,grp_fu_1730_p_ce,grp_fu_1734_p_din0,grp_fu_1734_p_din1,grp_fu_1734_p_opcode,grp_fu_1734_p_dout0,grp_fu_1734_p_ce,grp_fu_1738_p_din0,grp_fu_1738_p_din1,grp_fu_1738_p_opcode,grp_fu_1738_p_dout0,grp_fu_1738_p_ce,grp_fu_1742_p_din0,grp_fu_1742_p_din1,grp_fu_1742_p_opcode,grp_fu_1742_p_dout0,grp_fu_1742_p_ce,grp_fu_1746_p_din0,grp_fu_1746_p_din1,grp_fu_1746_p_dout0,grp_fu_1746_p_ce,grp_fu_1750_p_din0,grp_fu_1750_p_din1,grp_fu_1750_p_dout0,grp_fu_1750_p_ce,grp_fu_1754_p_din0,grp_fu_1754_p_din1,grp_fu_1754_p_dout0,grp_fu_1754_p_ce,grp_fu_1758_p_din0,grp_fu_1758_p_din1,grp_fu_1758_p_dout0,grp_fu_1758_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [3:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [3:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [3:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_address1;
output   buff_A_ce1;
input  [31:0] buff_A_q1;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_1_address1;
output   buff_A_1_ce1;
input  [31:0] buff_A_1_q1;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_2_address1;
output   buff_A_2_ce1;
input  [31:0] buff_A_2_q1;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [9:0] buff_A_3_address1;
output   buff_A_3_ce1;
input  [31:0] buff_A_3_q1;
output  [3:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
input  [31:0] buff_y_out_q0;
output  [3:0] buff_y_out_address1;
output   buff_y_out_ce1;
output   buff_y_out_we1;
output  [31:0] buff_y_out_d1;
input  [31:0] buff_y_out_q1;
output  [3:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
input  [31:0] buff_y_out_1_q0;
output  [3:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
output   buff_y_out_1_we1;
output  [31:0] buff_y_out_1_d1;
input  [31:0] buff_y_out_1_q1;
output  [3:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
input  [31:0] buff_y_out_2_q0;
output  [3:0] buff_y_out_2_address1;
output   buff_y_out_2_ce1;
output   buff_y_out_2_we1;
output  [31:0] buff_y_out_2_d1;
input  [31:0] buff_y_out_2_q1;
output  [3:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
input  [31:0] buff_y_out_3_q0;
output  [3:0] buff_y_out_3_address1;
output   buff_y_out_3_ce1;
output   buff_y_out_3_we1;
output  [31:0] buff_y_out_3_d1;
input  [31:0] buff_y_out_3_q1;
output  [31:0] grp_fu_1730_p_din0;
output  [31:0] grp_fu_1730_p_din1;
output  [1:0] grp_fu_1730_p_opcode;
input  [31:0] grp_fu_1730_p_dout0;
output   grp_fu_1730_p_ce;
output  [31:0] grp_fu_1734_p_din0;
output  [31:0] grp_fu_1734_p_din1;
output  [1:0] grp_fu_1734_p_opcode;
input  [31:0] grp_fu_1734_p_dout0;
output   grp_fu_1734_p_ce;
output  [31:0] grp_fu_1738_p_din0;
output  [31:0] grp_fu_1738_p_din1;
output  [1:0] grp_fu_1738_p_opcode;
input  [31:0] grp_fu_1738_p_dout0;
output   grp_fu_1738_p_ce;
output  [31:0] grp_fu_1742_p_din0;
output  [31:0] grp_fu_1742_p_din1;
output  [1:0] grp_fu_1742_p_opcode;
input  [31:0] grp_fu_1742_p_dout0;
output   grp_fu_1742_p_ce;
output  [31:0] grp_fu_1746_p_din0;
output  [31:0] grp_fu_1746_p_din1;
input  [31:0] grp_fu_1746_p_dout0;
output   grp_fu_1746_p_ce;
output  [31:0] grp_fu_1750_p_din0;
output  [31:0] grp_fu_1750_p_din1;
input  [31:0] grp_fu_1750_p_dout0;
output   grp_fu_1750_p_ce;
output  [31:0] grp_fu_1754_p_din0;
output  [31:0] grp_fu_1754_p_din1;
input  [31:0] grp_fu_1754_p_dout0;
output   grp_fu_1754_p_ce;
output  [31:0] grp_fu_1758_p_din0;
output  [31:0] grp_fu_1758_p_din1;
input  [31:0] grp_fu_1758_p_dout0;
output   grp_fu_1758_p_ce;
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
reg   [0:0] icmp_ln26_reg_615;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] icmp_ln26_fu_404_p2;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] j_1_load_reg_619;
wire   [0:0] tmp_fu_428_p3;
reg   [0:0] tmp_reg_624;
wire   [5:0] trunc_ln26_fu_444_p1;
reg   [5:0] trunc_ln26_reg_629;
wire   [1:0] trunc_ln26_1_fu_448_p1;
reg   [1:0] trunc_ln26_1_reg_635;
wire   [31:0] tmp_1_fu_486_p11;
reg   [31:0] tmp_1_reg_660;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] tmp_1_reg_660_pp0_iter1_reg;
wire   [3:0] lshr_ln5_5_fu_509_p4;
reg   [3:0] lshr_ln5_5_reg_668;
reg   [3:0] lshr_ln5_5_reg_668_pp0_iter1_reg;
wire   [2:0] tmp_2_fu_534_p4;
reg   [2:0] tmp_2_reg_693;
reg   [2:0] tmp_2_reg_693_pp0_iter1_reg;
reg   [2:0] tmp_2_reg_693_pp0_iter2_reg;
reg   [31:0] buff_A_load_reg_718;
reg   [31:0] buff_A_1_load_reg_723;
reg   [31:0] buff_A_2_load_reg_728;
reg   [31:0] buff_A_3_load_reg_733;
reg   [31:0] buff_A_load_1_reg_738;
reg   [31:0] buff_A_1_load_1_reg_743;
reg   [31:0] buff_A_2_load_1_reg_748;
reg   [31:0] buff_A_3_load_1_reg_753;
reg   [3:0] buff_y_out_addr_reg_758;
reg   [3:0] buff_y_out_addr_reg_758_pp0_iter3_reg;
reg   [3:0] buff_y_out_addr_reg_758_pp0_iter4_reg;
reg   [3:0] buff_y_out_addr_reg_758_pp0_iter5_reg;
reg   [3:0] buff_y_out_addr_reg_758_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_reg_758_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_reg_763;
reg   [3:0] buff_y_out_1_addr_reg_763_pp0_iter3_reg;
reg   [3:0] buff_y_out_1_addr_reg_763_pp0_iter4_reg;
reg   [3:0] buff_y_out_1_addr_reg_763_pp0_iter5_reg;
reg   [3:0] buff_y_out_1_addr_reg_763_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_reg_763_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_reg_768;
reg   [3:0] buff_y_out_2_addr_reg_768_pp0_iter3_reg;
reg   [3:0] buff_y_out_2_addr_reg_768_pp0_iter4_reg;
reg   [3:0] buff_y_out_2_addr_reg_768_pp0_iter5_reg;
reg   [3:0] buff_y_out_2_addr_reg_768_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_reg_768_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_reg_773;
reg   [3:0] buff_y_out_3_addr_reg_773_pp0_iter3_reg;
reg   [3:0] buff_y_out_3_addr_reg_773_pp0_iter4_reg;
reg   [3:0] buff_y_out_3_addr_reg_773_pp0_iter5_reg;
reg   [3:0] buff_y_out_3_addr_reg_773_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_reg_773_pp0_iter7_reg;
reg   [31:0] buff_y_out_load_reg_778;
reg   [31:0] buff_y_out_1_load_reg_783;
reg   [31:0] buff_y_out_2_load_reg_788;
reg   [31:0] buff_y_out_3_load_reg_793;
reg   [31:0] mul1_reg_798;
reg   [3:0] buff_y_out_addr_1_reg_803;
reg   [3:0] buff_y_out_addr_1_reg_803_pp0_iter4_reg;
reg   [3:0] buff_y_out_addr_1_reg_803_pp0_iter5_reg;
reg   [3:0] buff_y_out_addr_1_reg_803_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_1_reg_803_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_808;
reg   [3:0] buff_y_out_1_addr_1_reg_808_pp0_iter4_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_808_pp0_iter5_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_808_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_808_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_813;
reg   [3:0] buff_y_out_2_addr_1_reg_813_pp0_iter4_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_813_pp0_iter5_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_813_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_813_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_818;
reg   [3:0] buff_y_out_3_addr_1_reg_818_pp0_iter4_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_818_pp0_iter5_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_818_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_818_pp0_iter7_reg;
reg   [31:0] mul57_1_reg_823;
reg   [31:0] mul57_2_reg_828;
reg   [31:0] mul57_3_reg_833;
reg   [31:0] mul57_4_reg_838;
reg   [31:0] mul57_5_reg_843;
reg   [31:0] mul57_6_reg_848;
reg   [31:0] mul57_7_reg_853;
reg   [31:0] buff_y_out_load_1_reg_858;
reg   [31:0] buff_y_out_1_load_1_reg_863;
reg   [31:0] buff_y_out_2_load_1_reg_868;
reg   [31:0] buff_y_out_3_load_1_reg_873;
reg   [31:0] add1_reg_878;
reg   [31:0] add58_1_reg_883;
reg   [31:0] add58_2_reg_888;
reg   [31:0] add58_3_reg_893;
reg   [31:0] add58_4_reg_898;
reg   [31:0] add58_5_reg_903;
reg   [31:0] add58_6_reg_908;
reg   [31:0] add58_7_reg_913;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_462_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_1_fu_526_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln28_2_fu_553_p1;
wire   [63:0] zext_ln5_1_fu_572_p1;
wire   [63:0] zext_ln28_fu_586_p1;
reg   [6:0] j_1_fu_90;
wire   [6:0] add_ln27_fu_561_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_94;
wire   [6:0] select_ln26_fu_436_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten_fu_98;
wire   [9:0] add_ln26_1_fu_410_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    buff_A_ce1_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce1_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce1_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce1_local;
reg    buff_A_3_ce0_local;
reg    buff_y_out_ce1_local;
reg   [3:0] buff_y_out_address1_local;
reg    buff_y_out_ce0_local;
reg   [3:0] buff_y_out_address0_local;
reg    buff_y_out_we1_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_1_ce1_local;
reg   [3:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_ce0_local;
reg   [3:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_we1_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_2_ce1_local;
reg   [3:0] buff_y_out_2_address1_local;
reg    buff_y_out_2_ce0_local;
reg   [3:0] buff_y_out_2_address0_local;
reg    buff_y_out_2_we1_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_3_ce1_local;
reg   [3:0] buff_y_out_3_address1_local;
reg    buff_y_out_3_ce0_local;
reg   [3:0] buff_y_out_3_address0_local;
reg    buff_y_out_3_we1_local;
reg    buff_y_out_3_we0_local;
reg   [31:0] grp_fu_354_p0;
reg   [31:0] grp_fu_354_p1;
reg   [31:0] grp_fu_358_p0;
reg   [31:0] grp_fu_358_p1;
reg   [31:0] grp_fu_362_p0;
reg   [31:0] grp_fu_362_p1;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_366_p1;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_370_p1;
reg   [31:0] grp_fu_374_p0;
reg   [31:0] grp_fu_374_p1;
reg   [31:0] grp_fu_378_p0;
reg   [31:0] grp_fu_378_p1;
reg   [31:0] grp_fu_382_p0;
reg   [31:0] grp_fu_382_p1;
wire   [6:0] add_ln26_fu_422_p2;
wire   [3:0] lshr_ln5_2_fu_452_p4;
wire   [31:0] tmp_1_fu_486_p9;
wire   [6:0] select_ln5_fu_480_p3;
wire   [9:0] tmp_s_fu_519_p3;
wire   [9:0] tmp_3_fu_544_p4;
wire   [3:0] or_ln_fu_579_p3;
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
wire   [1:0] tmp_1_fu_486_p1;
wire   [1:0] tmp_1_fu_486_p3;
wire  signed [1:0] tmp_1_fu_486_p5;
wire  signed [1:0] tmp_1_fu_486_p7;
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
#0 j_1_fu_90 = 7'd0;
#0 i_fu_94 = 7'd0;
#0 indvar_flatten_fu_98 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U222(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_1_fu_486_p9),.sel(trunc_ln26_1_reg_635),.dout(tmp_1_fu_486_p11));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((icmp_ln26_fu_404_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_94 <= select_ln26_fu_436_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_94 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_404_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_98 <= add_ln26_1_fu_410_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_98 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_90 <= 7'd0;
    end else if (((icmp_ln26_reg_615 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_1_fu_90 <= add_ln27_fu_561_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1_reg_878 <= grp_fu_1730_p_dout0;
        add58_1_reg_883 <= grp_fu_1734_p_dout0;
        add58_2_reg_888 <= grp_fu_1738_p_dout0;
        add58_3_reg_893 <= grp_fu_1742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add58_4_reg_898 <= grp_fu_1730_p_dout0;
        add58_5_reg_903 <= grp_fu_1734_p_dout0;
        add58_6_reg_908 <= grp_fu_1738_p_dout0;
        add58_7_reg_913 <= grp_fu_1742_p_dout0;
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
        lshr_ln5_5_reg_668 <= {{select_ln5_fu_480_p3[5:2]}};
        lshr_ln5_5_reg_668_pp0_iter1_reg <= lshr_ln5_5_reg_668;
        tmp_1_reg_660 <= tmp_1_fu_486_p11;
        tmp_1_reg_660_pp0_iter1_reg <= tmp_1_reg_660;
        tmp_2_reg_693 <= {{select_ln5_fu_480_p3[5:3]}};
        tmp_2_reg_693_pp0_iter1_reg <= tmp_2_reg_693;
        tmp_2_reg_693_pp0_iter2_reg <= tmp_2_reg_693_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_load_1_reg_743 <= buff_A_1_q0;
        buff_A_1_load_reg_723 <= buff_A_1_q1;
        buff_A_2_load_1_reg_748 <= buff_A_2_q0;
        buff_A_2_load_reg_728 <= buff_A_2_q1;
        buff_A_3_load_1_reg_753 <= buff_A_3_q0;
        buff_A_3_load_reg_733 <= buff_A_3_q1;
        buff_A_load_1_reg_738 <= buff_A_q0;
        buff_A_load_reg_718 <= buff_A_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_addr_1_reg_808[3 : 1] <= zext_ln28_fu_586_p1[3 : 1];
        buff_y_out_1_addr_1_reg_808_pp0_iter4_reg[3 : 1] <= buff_y_out_1_addr_1_reg_808[3 : 1];
        buff_y_out_1_addr_1_reg_808_pp0_iter5_reg[3 : 1] <= buff_y_out_1_addr_1_reg_808_pp0_iter4_reg[3 : 1];
        buff_y_out_1_addr_1_reg_808_pp0_iter6_reg[3 : 1] <= buff_y_out_1_addr_1_reg_808_pp0_iter5_reg[3 : 1];
        buff_y_out_1_addr_1_reg_808_pp0_iter7_reg[3 : 1] <= buff_y_out_1_addr_1_reg_808_pp0_iter6_reg[3 : 1];
        buff_y_out_1_addr_reg_763 <= zext_ln5_1_fu_572_p1;
        buff_y_out_1_addr_reg_763_pp0_iter3_reg <= buff_y_out_1_addr_reg_763;
        buff_y_out_1_addr_reg_763_pp0_iter4_reg <= buff_y_out_1_addr_reg_763_pp0_iter3_reg;
        buff_y_out_1_addr_reg_763_pp0_iter5_reg <= buff_y_out_1_addr_reg_763_pp0_iter4_reg;
        buff_y_out_1_addr_reg_763_pp0_iter6_reg <= buff_y_out_1_addr_reg_763_pp0_iter5_reg;
        buff_y_out_1_addr_reg_763_pp0_iter7_reg <= buff_y_out_1_addr_reg_763_pp0_iter6_reg;
        buff_y_out_2_addr_1_reg_813[3 : 1] <= zext_ln28_fu_586_p1[3 : 1];
        buff_y_out_2_addr_1_reg_813_pp0_iter4_reg[3 : 1] <= buff_y_out_2_addr_1_reg_813[3 : 1];
        buff_y_out_2_addr_1_reg_813_pp0_iter5_reg[3 : 1] <= buff_y_out_2_addr_1_reg_813_pp0_iter4_reg[3 : 1];
        buff_y_out_2_addr_1_reg_813_pp0_iter6_reg[3 : 1] <= buff_y_out_2_addr_1_reg_813_pp0_iter5_reg[3 : 1];
        buff_y_out_2_addr_1_reg_813_pp0_iter7_reg[3 : 1] <= buff_y_out_2_addr_1_reg_813_pp0_iter6_reg[3 : 1];
        buff_y_out_2_addr_reg_768 <= zext_ln5_1_fu_572_p1;
        buff_y_out_2_addr_reg_768_pp0_iter3_reg <= buff_y_out_2_addr_reg_768;
        buff_y_out_2_addr_reg_768_pp0_iter4_reg <= buff_y_out_2_addr_reg_768_pp0_iter3_reg;
        buff_y_out_2_addr_reg_768_pp0_iter5_reg <= buff_y_out_2_addr_reg_768_pp0_iter4_reg;
        buff_y_out_2_addr_reg_768_pp0_iter6_reg <= buff_y_out_2_addr_reg_768_pp0_iter5_reg;
        buff_y_out_2_addr_reg_768_pp0_iter7_reg <= buff_y_out_2_addr_reg_768_pp0_iter6_reg;
        buff_y_out_3_addr_1_reg_818[3 : 1] <= zext_ln28_fu_586_p1[3 : 1];
        buff_y_out_3_addr_1_reg_818_pp0_iter4_reg[3 : 1] <= buff_y_out_3_addr_1_reg_818[3 : 1];
        buff_y_out_3_addr_1_reg_818_pp0_iter5_reg[3 : 1] <= buff_y_out_3_addr_1_reg_818_pp0_iter4_reg[3 : 1];
        buff_y_out_3_addr_1_reg_818_pp0_iter6_reg[3 : 1] <= buff_y_out_3_addr_1_reg_818_pp0_iter5_reg[3 : 1];
        buff_y_out_3_addr_1_reg_818_pp0_iter7_reg[3 : 1] <= buff_y_out_3_addr_1_reg_818_pp0_iter6_reg[3 : 1];
        buff_y_out_3_addr_reg_773 <= zext_ln5_1_fu_572_p1;
        buff_y_out_3_addr_reg_773_pp0_iter3_reg <= buff_y_out_3_addr_reg_773;
        buff_y_out_3_addr_reg_773_pp0_iter4_reg <= buff_y_out_3_addr_reg_773_pp0_iter3_reg;
        buff_y_out_3_addr_reg_773_pp0_iter5_reg <= buff_y_out_3_addr_reg_773_pp0_iter4_reg;
        buff_y_out_3_addr_reg_773_pp0_iter6_reg <= buff_y_out_3_addr_reg_773_pp0_iter5_reg;
        buff_y_out_3_addr_reg_773_pp0_iter7_reg <= buff_y_out_3_addr_reg_773_pp0_iter6_reg;
        buff_y_out_addr_1_reg_803[3 : 1] <= zext_ln28_fu_586_p1[3 : 1];
        buff_y_out_addr_1_reg_803_pp0_iter4_reg[3 : 1] <= buff_y_out_addr_1_reg_803[3 : 1];
        buff_y_out_addr_1_reg_803_pp0_iter5_reg[3 : 1] <= buff_y_out_addr_1_reg_803_pp0_iter4_reg[3 : 1];
        buff_y_out_addr_1_reg_803_pp0_iter6_reg[3 : 1] <= buff_y_out_addr_1_reg_803_pp0_iter5_reg[3 : 1];
        buff_y_out_addr_1_reg_803_pp0_iter7_reg[3 : 1] <= buff_y_out_addr_1_reg_803_pp0_iter6_reg[3 : 1];
        buff_y_out_addr_reg_758 <= zext_ln5_1_fu_572_p1;
        buff_y_out_addr_reg_758_pp0_iter3_reg <= buff_y_out_addr_reg_758;
        buff_y_out_addr_reg_758_pp0_iter4_reg <= buff_y_out_addr_reg_758_pp0_iter3_reg;
        buff_y_out_addr_reg_758_pp0_iter5_reg <= buff_y_out_addr_reg_758_pp0_iter4_reg;
        buff_y_out_addr_reg_758_pp0_iter6_reg <= buff_y_out_addr_reg_758_pp0_iter5_reg;
        buff_y_out_addr_reg_758_pp0_iter7_reg <= buff_y_out_addr_reg_758_pp0_iter6_reg;
        icmp_ln26_reg_615 <= icmp_ln26_fu_404_p2;
        j_1_load_reg_619 <= ap_sig_allocacmp_j_1_load;
        tmp_reg_624 <= ap_sig_allocacmp_j_1_load[32'd6];
        trunc_ln26_1_reg_635 <= trunc_ln26_1_fu_448_p1;
        trunc_ln26_reg_629 <= trunc_ln26_fu_444_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_1_reg_863 <= buff_y_out_1_q0;
        buff_y_out_2_load_1_reg_868 <= buff_y_out_2_q0;
        buff_y_out_3_load_1_reg_873 <= buff_y_out_3_q0;
        buff_y_out_load_1_reg_858 <= buff_y_out_q0;
        mul57_4_reg_838 <= grp_fu_1746_p_dout0;
        mul57_5_reg_843 <= grp_fu_1750_p_dout0;
        mul57_6_reg_848 <= grp_fu_1754_p_dout0;
        mul57_7_reg_853 <= grp_fu_1758_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_reg_783 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_788 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_793 <= buff_y_out_3_q1;
        buff_y_out_load_reg_778 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul1_reg_798 <= grp_fu_1746_p_dout0;
        mul57_1_reg_823 <= grp_fu_1750_p_dout0;
        mul57_2_reg_828 <= grp_fu_1754_p_dout0;
        mul57_3_reg_833 <= grp_fu_1758_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln26_reg_615 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_90;
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
        buff_A_1_ce1_local = 1'b1;
    end else begin
        buff_A_1_ce1_local = 1'b0;
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
        buff_A_2_ce1_local = 1'b1;
    end else begin
        buff_A_2_ce1_local = 1'b0;
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
        buff_A_3_ce1_local = 1'b1;
    end else begin
        buff_A_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce1_local = 1'b1;
    end else begin
        buff_A_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_1_reg_808_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_address0_local = zext_ln28_fu_586_p1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_reg_763_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_address1_local = zext_ln5_1_fu_572_p1;
    end else begin
        buff_y_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_1_reg_813_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_address0_local = zext_ln28_fu_586_p1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_reg_768_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_address1_local = zext_ln5_1_fu_572_p1;
    end else begin
        buff_y_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_we1_local = 1'b1;
    end else begin
        buff_y_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_1_reg_818_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_address0_local = zext_ln28_fu_586_p1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_reg_773_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_address1_local = zext_ln5_1_fu_572_p1;
    end else begin
        buff_y_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_we1_local = 1'b1;
    end else begin
        buff_y_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_address0_local = buff_y_out_addr_1_reg_803_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_address0_local = zext_ln28_fu_586_p1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_address1_local = buff_y_out_addr_reg_758_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_address1_local = zext_ln5_1_fu_572_p1;
    end else begin
        buff_y_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_354_p0 = buff_y_out_load_1_reg_858;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_354_p0 = buff_y_out_load_reg_778;
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_354_p1 = mul57_4_reg_838;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_354_p1 = mul1_reg_798;
    end else begin
        grp_fu_354_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_358_p0 = buff_y_out_1_load_1_reg_863;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_358_p0 = buff_y_out_1_load_reg_783;
    end else begin
        grp_fu_358_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_358_p1 = mul57_5_reg_843;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_358_p1 = mul57_1_reg_823;
    end else begin
        grp_fu_358_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_362_p0 = buff_y_out_2_load_1_reg_868;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_362_p0 = buff_y_out_2_load_reg_788;
    end else begin
        grp_fu_362_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_362_p1 = mul57_6_reg_848;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_362_p1 = mul57_2_reg_828;
    end else begin
        grp_fu_362_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p0 = buff_y_out_3_load_1_reg_873;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_366_p0 = buff_y_out_3_load_reg_793;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p1 = mul57_7_reg_853;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_366_p1 = mul57_3_reg_833;
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p0 = buff_A_load_1_reg_738;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p0 = buff_A_load_reg_718;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p1 = tmp_1_reg_660_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p1 = tmp_1_reg_660;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p0 = buff_A_1_load_1_reg_743;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_374_p0 = buff_A_1_load_reg_723;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p1 = tmp_1_reg_660_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_374_p1 = tmp_1_reg_660;
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_378_p0 = buff_A_2_load_1_reg_748;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_378_p0 = buff_A_2_load_reg_728;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_378_p1 = tmp_1_reg_660_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_378_p1 = tmp_1_reg_660;
    end else begin
        grp_fu_378_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_382_p0 = buff_A_3_load_1_reg_753;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_382_p0 = buff_A_3_load_reg_733;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_382_p1 = tmp_1_reg_660_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_382_p1 = tmp_1_reg_660;
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
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
assign add_ln26_1_fu_410_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln26_fu_422_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln27_fu_561_p2 = (select_ln5_fu_480_p3 + 7'd8);
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
assign buff_A_1_address0 = zext_ln28_2_fu_553_p1;
assign buff_A_1_address1 = zext_ln28_1_fu_526_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_ce1 = buff_A_1_ce1_local;
assign buff_A_2_address0 = zext_ln28_2_fu_553_p1;
assign buff_A_2_address1 = zext_ln28_1_fu_526_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_ce1 = buff_A_2_ce1_local;
assign buff_A_3_address0 = zext_ln28_2_fu_553_p1;
assign buff_A_3_address1 = zext_ln28_1_fu_526_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_ce1 = buff_A_3_ce1_local;
assign buff_A_address0 = zext_ln28_2_fu_553_p1;
assign buff_A_address1 = zext_ln28_1_fu_526_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_ce1 = buff_A_ce1_local;
assign buff_y_out_1_address0 = buff_y_out_1_address0_local;
assign buff_y_out_1_address1 = buff_y_out_1_address1_local;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = add58_5_reg_903;
assign buff_y_out_1_d1 = add58_1_reg_883;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_1_we1 = buff_y_out_1_we1_local;
assign buff_y_out_2_address0 = buff_y_out_2_address0_local;
assign buff_y_out_2_address1 = buff_y_out_2_address1_local;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = add58_6_reg_908;
assign buff_y_out_2_d1 = add58_2_reg_888;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_2_we1 = buff_y_out_2_we1_local;
assign buff_y_out_3_address0 = buff_y_out_3_address0_local;
assign buff_y_out_3_address1 = buff_y_out_3_address1_local;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = add58_7_reg_913;
assign buff_y_out_3_d1 = add58_3_reg_893;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_3_we1 = buff_y_out_3_we1_local;
assign buff_y_out_address0 = buff_y_out_address0_local;
assign buff_y_out_address1 = buff_y_out_address1_local;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = add58_4_reg_898;
assign buff_y_out_d1 = add1_reg_878;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign buff_y_out_we1 = buff_y_out_we1_local;
assign grp_fu_1730_p_ce = 1'b1;
assign grp_fu_1730_p_din0 = grp_fu_354_p0;
assign grp_fu_1730_p_din1 = grp_fu_354_p1;
assign grp_fu_1730_p_opcode = 2'd0;
assign grp_fu_1734_p_ce = 1'b1;
assign grp_fu_1734_p_din0 = grp_fu_358_p0;
assign grp_fu_1734_p_din1 = grp_fu_358_p1;
assign grp_fu_1734_p_opcode = 2'd0;
assign grp_fu_1738_p_ce = 1'b1;
assign grp_fu_1738_p_din0 = grp_fu_362_p0;
assign grp_fu_1738_p_din1 = grp_fu_362_p1;
assign grp_fu_1738_p_opcode = 2'd0;
assign grp_fu_1742_p_ce = 1'b1;
assign grp_fu_1742_p_din0 = grp_fu_366_p0;
assign grp_fu_1742_p_din1 = grp_fu_366_p1;
assign grp_fu_1742_p_opcode = 2'd0;
assign grp_fu_1746_p_ce = 1'b1;
assign grp_fu_1746_p_din0 = grp_fu_370_p0;
assign grp_fu_1746_p_din1 = grp_fu_370_p1;
assign grp_fu_1750_p_ce = 1'b1;
assign grp_fu_1750_p_din0 = grp_fu_374_p0;
assign grp_fu_1750_p_din1 = grp_fu_374_p1;
assign grp_fu_1754_p_ce = 1'b1;
assign grp_fu_1754_p_din0 = grp_fu_378_p0;
assign grp_fu_1754_p_din1 = grp_fu_378_p1;
assign grp_fu_1758_p_ce = 1'b1;
assign grp_fu_1758_p_din0 = grp_fu_382_p0;
assign grp_fu_1758_p_din1 = grp_fu_382_p1;
assign icmp_ln26_fu_404_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_452_p4 = {{select_ln26_fu_436_p3[5:2]}};
assign lshr_ln5_5_fu_509_p4 = {{select_ln5_fu_480_p3[5:2]}};
assign or_ln_fu_579_p3 = {{tmp_2_reg_693_pp0_iter2_reg}, {1'd1}};
assign select_ln26_fu_436_p3 = ((tmp_fu_428_p3[0:0] == 1'b1) ? add_ln26_fu_422_p2 : ap_sig_allocacmp_i_load);
assign select_ln5_fu_480_p3 = ((tmp_reg_624[0:0] == 1'b1) ? 7'd0 : j_1_load_reg_619);
assign tmp1_1_address0 = zext_ln5_fu_462_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln5_fu_462_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln5_fu_462_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_address0 = zext_ln5_fu_462_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_1_fu_486_p9 = 'bx;
assign tmp_2_fu_534_p4 = {{select_ln5_fu_480_p3[5:3]}};
assign tmp_3_fu_544_p4 = {{{trunc_ln26_reg_629}, {tmp_2_fu_534_p4}}, {1'd1}};
assign tmp_fu_428_p3 = ap_sig_allocacmp_j_1_load[32'd6];
assign tmp_s_fu_519_p3 = {{trunc_ln26_reg_629}, {lshr_ln5_5_fu_509_p4}};
assign trunc_ln26_1_fu_448_p1 = select_ln26_fu_436_p3[1:0];
assign trunc_ln26_fu_444_p1 = select_ln26_fu_436_p3[5:0];
assign zext_ln28_1_fu_526_p1 = tmp_s_fu_519_p3;
assign zext_ln28_2_fu_553_p1 = tmp_3_fu_544_p4;
assign zext_ln28_fu_586_p1 = or_ln_fu_579_p3;
assign zext_ln5_1_fu_572_p1 = lshr_ln5_5_reg_668_pp0_iter1_reg;
assign zext_ln5_fu_462_p1 = lshr_ln5_2_fu_452_p4;
always @ (posedge ap_clk) begin
    buff_y_out_addr_1_reg_803[0] <= 1'b1;
    buff_y_out_addr_1_reg_803_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_addr_1_reg_803_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_addr_1_reg_803_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_addr_1_reg_803_pp0_iter7_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_808[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_808_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_808_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_808_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_808_pp0_iter7_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_813[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_813_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_813_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_813_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_813_pp0_iter7_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_818[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_818_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_818_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_818_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_818_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 