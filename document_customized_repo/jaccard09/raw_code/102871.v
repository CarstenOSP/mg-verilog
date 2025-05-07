module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_q1,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_address1,buff_C_out_2_ce1,buff_C_out_2_q1,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_address1,buff_C_out_3_ce1,buff_C_out_3_q1,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_address1,buff_C_out_4_ce1,buff_C_out_4_q1,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_address1,buff_C_out_5_ce1,buff_C_out_5_q1,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_address1,buff_C_out_6_ce1,buff_C_out_6_q1,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_address1,buff_C_out_7_ce1,buff_C_out_7_q1,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_2_address1,buff_B_2_ce1,buff_B_2_q1,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_3_address1,buff_B_3_ce1,buff_B_3_q1,beta,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_opcode,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
output  [9:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [9:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [9:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [9:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [9:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [9:0] buff_B_2_address1;
output   buff_B_2_ce1;
input  [31:0] buff_B_2_q1;
output  [9:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [9:0] buff_B_3_address1;
output   buff_B_3_ce1;
input  [31:0] buff_B_3_q1;
input  [31:0] beta;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
output  [1:0] grp_fu_220_p_opcode;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_224_p_din0;
output  [31:0] grp_fu_224_p_din1;
input  [31:0] grp_fu_224_p_dout0;
output   grp_fu_224_p_ce;
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
wire   [0:0] icmp_ln29_fu_418_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln10_fu_471_p1;
reg   [5:0] trunc_ln10_reg_600;
reg   [5:0] trunc_ln10_reg_600_pp0_iter2_reg;
reg   [5:0] trunc_ln10_reg_600_pp0_iter3_reg;
reg   [5:0] trunc_ln10_reg_600_pp0_iter4_reg;
wire   [2:0] lshr_ln5_4_fu_475_p4;
reg   [2:0] lshr_ln5_4_reg_605;
reg   [2:0] lshr_ln5_4_reg_605_pp0_iter2_reg;
reg   [2:0] lshr_ln5_4_reg_605_pp0_iter3_reg;
reg   [2:0] lshr_ln5_4_reg_605_pp0_iter4_reg;
reg   [31:0] buff_B_load_reg_650;
reg   [31:0] buff_B_1_load_reg_655;
reg   [31:0] buff_B_2_load_reg_660;
reg   [31:0] buff_B_3_load_reg_665;
reg   [31:0] buff_B_load_1_reg_670;
reg   [31:0] buff_B_1_load_1_reg_675;
reg   [31:0] buff_B_2_load_1_reg_680;
reg   [31:0] buff_B_3_load_1_reg_685;
reg   [8:0] buff_C_out_addr_reg_690;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter6_reg;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter7_reg;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter8_reg;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter9_reg;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter10_reg;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter11_reg;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter12_reg;
reg   [8:0] buff_C_out_addr_reg_690_pp0_iter13_reg;
reg   [8:0] buff_C_out_1_addr_reg_696;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter6_reg;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter7_reg;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter8_reg;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter9_reg;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter10_reg;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter11_reg;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter12_reg;
reg   [8:0] buff_C_out_1_addr_reg_696_pp0_iter13_reg;
reg   [8:0] buff_C_out_2_addr_reg_702;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter6_reg;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter7_reg;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter8_reg;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter9_reg;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter10_reg;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter11_reg;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter12_reg;
reg   [8:0] buff_C_out_2_addr_reg_702_pp0_iter13_reg;
reg   [8:0] buff_C_out_3_addr_reg_708;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter6_reg;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter7_reg;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter8_reg;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter9_reg;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter10_reg;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter11_reg;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter12_reg;
reg   [8:0] buff_C_out_3_addr_reg_708_pp0_iter13_reg;
reg   [8:0] buff_C_out_4_addr_reg_714;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter6_reg;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter7_reg;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter8_reg;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter9_reg;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter10_reg;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter11_reg;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter12_reg;
reg   [8:0] buff_C_out_4_addr_reg_714_pp0_iter13_reg;
reg   [8:0] buff_C_out_5_addr_reg_720;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter6_reg;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter7_reg;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter8_reg;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter9_reg;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter10_reg;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter11_reg;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter12_reg;
reg   [8:0] buff_C_out_5_addr_reg_720_pp0_iter13_reg;
reg   [8:0] buff_C_out_6_addr_reg_726;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter6_reg;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter7_reg;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter8_reg;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter9_reg;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter10_reg;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter11_reg;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter12_reg;
reg   [8:0] buff_C_out_6_addr_reg_726_pp0_iter13_reg;
reg   [8:0] buff_C_out_7_addr_reg_732;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter6_reg;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter7_reg;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter8_reg;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter9_reg;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter10_reg;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter11_reg;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter12_reg;
reg   [8:0] buff_C_out_7_addr_reg_732_pp0_iter13_reg;
reg   [31:0] mul1_reg_738;
reg   [31:0] buff_C_out_load_reg_743;
wire   [31:0] grp_fu_372_p2;
reg   [31:0] mul74_1_reg_748;
wire   [31:0] grp_fu_376_p2;
reg   [31:0] mul74_2_reg_753;
wire   [31:0] grp_fu_380_p2;
reg   [31:0] mul74_3_reg_758;
wire   [31:0] grp_fu_384_p2;
reg   [31:0] mul74_4_reg_763;
wire   [31:0] grp_fu_388_p2;
reg   [31:0] mul74_5_reg_768;
wire   [31:0] grp_fu_392_p2;
reg   [31:0] mul74_6_reg_773;
wire   [31:0] grp_fu_396_p2;
reg   [31:0] mul74_7_reg_778;
reg   [31:0] buff_C_out_1_load_reg_783;
reg   [31:0] buff_C_out_2_load_reg_788;
reg   [31:0] buff_C_out_3_load_reg_793;
reg   [31:0] buff_C_out_4_load_reg_798;
reg   [31:0] buff_C_out_5_load_reg_803;
reg   [31:0] buff_C_out_6_load_reg_808;
reg   [31:0] buff_C_out_7_load_reg_813;
reg   [31:0] add1_reg_818;
wire   [31:0] grp_fu_340_p2;
reg   [31:0] add79_1_reg_823;
wire   [31:0] grp_fu_344_p2;
reg   [31:0] add79_2_reg_828;
wire   [31:0] grp_fu_348_p2;
reg   [31:0] add79_3_reg_833;
wire   [31:0] grp_fu_352_p2;
reg   [31:0] add79_4_reg_838;
wire   [31:0] grp_fu_356_p2;
reg   [31:0] add79_5_reg_843;
wire   [31:0] grp_fu_360_p2;
reg   [31:0] add79_6_reg_848;
wire   [31:0] grp_fu_364_p2;
reg   [31:0] add79_7_reg_853;
wire   [63:0] zext_ln32_1_fu_503_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln32_2_fu_521_p1;
wire   [63:0] zext_ln32_fu_551_p1;
reg   [6:0] j_fu_82;
wire   [6:0] add_ln30_fu_529_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_86;
wire   [6:0] select_ln29_fu_463_p3;
reg   [9:0] indvar_flatten28_fu_90;
wire   [9:0] add_ln29_1_fu_424_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten28_load;
reg    buff_B_ce1_local;
reg    buff_B_ce0_local;
reg    buff_B_1_ce1_local;
reg    buff_B_1_ce0_local;
reg    buff_B_2_ce1_local;
reg    buff_B_2_ce0_local;
reg    buff_B_3_ce1_local;
reg    buff_B_3_ce0_local;
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
wire   [0:0] tmp_fu_447_p3;
wire   [6:0] add_ln29_fu_441_p2;
wire   [6:0] select_ln5_fu_455_p3;
wire   [3:0] lshr_ln5_5_fu_485_p4;
wire   [9:0] tmp_1_fu_495_p3;
wire   [9:0] tmp_2_fu_511_p4;
wire   [8:0] tmp_s_fu_545_p3;
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
#0 j_fu_82 = 7'd0;
#0 i_fu_86 = 7'd0;
#0 indvar_flatten28_fu_90 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_1_load_reg_783),.din1(mul74_1_reg_748),.ce(1'b1),.dout(grp_fu_340_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_2_load_reg_788),.din1(mul74_2_reg_753),.ce(1'b1),.dout(grp_fu_344_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_3_load_reg_793),.din1(mul74_3_reg_758),.ce(1'b1),.dout(grp_fu_348_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U40(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_4_load_reg_798),.din1(mul74_4_reg_763),.ce(1'b1),.dout(grp_fu_352_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U41(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_5_load_reg_803),.din1(mul74_5_reg_768),.ce(1'b1),.dout(grp_fu_356_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U42(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_6_load_reg_808),.din1(mul74_6_reg_773),.ce(1'b1),.dout(grp_fu_360_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U43(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_7_load_reg_813),.din1(mul74_7_reg_778),.ce(1'b1),.dout(grp_fu_364_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U45(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_1_load_reg_655),.din1(beta),.ce(1'b1),.dout(grp_fu_372_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U46(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_2_load_reg_660),.din1(beta),.ce(1'b1),.dout(grp_fu_376_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U47(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_3_load_reg_665),.din1(beta),.ce(1'b1),.dout(grp_fu_380_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_load_1_reg_670),.din1(beta),.ce(1'b1),.dout(grp_fu_384_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_1_load_1_reg_675),.din1(beta),.ce(1'b1),.dout(grp_fu_388_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_2_load_1_reg_680),.din1(beta),.ce(1'b1),.dout(grp_fu_392_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_3_load_1_reg_685),.din1(beta),.ce(1'b1),.dout(grp_fu_396_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            i_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_86 <= select_ln29_fu_463_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_418_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten28_fu_90 <= add_ln29_1_fu_424_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten28_fu_90 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_82 <= add_ln30_fu_529_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_818 <= grp_fu_220_p_dout0;
        add79_1_reg_823 <= grp_fu_340_p2;
        add79_2_reg_828 <= grp_fu_344_p2;
        add79_3_reg_833 <= grp_fu_348_p2;
        add79_4_reg_838 <= grp_fu_352_p2;
        add79_5_reg_843 <= grp_fu_356_p2;
        add79_6_reg_848 <= grp_fu_360_p2;
        add79_7_reg_853 <= grp_fu_364_p2;
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
        buff_C_out_1_addr_reg_696 <= zext_ln32_fu_551_p1;
        buff_C_out_1_addr_reg_696_pp0_iter10_reg <= buff_C_out_1_addr_reg_696_pp0_iter9_reg;
        buff_C_out_1_addr_reg_696_pp0_iter11_reg <= buff_C_out_1_addr_reg_696_pp0_iter10_reg;
        buff_C_out_1_addr_reg_696_pp0_iter12_reg <= buff_C_out_1_addr_reg_696_pp0_iter11_reg;
        buff_C_out_1_addr_reg_696_pp0_iter13_reg <= buff_C_out_1_addr_reg_696_pp0_iter12_reg;
        buff_C_out_1_addr_reg_696_pp0_iter6_reg <= buff_C_out_1_addr_reg_696;
        buff_C_out_1_addr_reg_696_pp0_iter7_reg <= buff_C_out_1_addr_reg_696_pp0_iter6_reg;
        buff_C_out_1_addr_reg_696_pp0_iter8_reg <= buff_C_out_1_addr_reg_696_pp0_iter7_reg;
        buff_C_out_1_addr_reg_696_pp0_iter9_reg <= buff_C_out_1_addr_reg_696_pp0_iter8_reg;
        buff_C_out_2_addr_reg_702 <= zext_ln32_fu_551_p1;
        buff_C_out_2_addr_reg_702_pp0_iter10_reg <= buff_C_out_2_addr_reg_702_pp0_iter9_reg;
        buff_C_out_2_addr_reg_702_pp0_iter11_reg <= buff_C_out_2_addr_reg_702_pp0_iter10_reg;
        buff_C_out_2_addr_reg_702_pp0_iter12_reg <= buff_C_out_2_addr_reg_702_pp0_iter11_reg;
        buff_C_out_2_addr_reg_702_pp0_iter13_reg <= buff_C_out_2_addr_reg_702_pp0_iter12_reg;
        buff_C_out_2_addr_reg_702_pp0_iter6_reg <= buff_C_out_2_addr_reg_702;
        buff_C_out_2_addr_reg_702_pp0_iter7_reg <= buff_C_out_2_addr_reg_702_pp0_iter6_reg;
        buff_C_out_2_addr_reg_702_pp0_iter8_reg <= buff_C_out_2_addr_reg_702_pp0_iter7_reg;
        buff_C_out_2_addr_reg_702_pp0_iter9_reg <= buff_C_out_2_addr_reg_702_pp0_iter8_reg;
        buff_C_out_3_addr_reg_708 <= zext_ln32_fu_551_p1;
        buff_C_out_3_addr_reg_708_pp0_iter10_reg <= buff_C_out_3_addr_reg_708_pp0_iter9_reg;
        buff_C_out_3_addr_reg_708_pp0_iter11_reg <= buff_C_out_3_addr_reg_708_pp0_iter10_reg;
        buff_C_out_3_addr_reg_708_pp0_iter12_reg <= buff_C_out_3_addr_reg_708_pp0_iter11_reg;
        buff_C_out_3_addr_reg_708_pp0_iter13_reg <= buff_C_out_3_addr_reg_708_pp0_iter12_reg;
        buff_C_out_3_addr_reg_708_pp0_iter6_reg <= buff_C_out_3_addr_reg_708;
        buff_C_out_3_addr_reg_708_pp0_iter7_reg <= buff_C_out_3_addr_reg_708_pp0_iter6_reg;
        buff_C_out_3_addr_reg_708_pp0_iter8_reg <= buff_C_out_3_addr_reg_708_pp0_iter7_reg;
        buff_C_out_3_addr_reg_708_pp0_iter9_reg <= buff_C_out_3_addr_reg_708_pp0_iter8_reg;
        buff_C_out_4_addr_reg_714 <= zext_ln32_fu_551_p1;
        buff_C_out_4_addr_reg_714_pp0_iter10_reg <= buff_C_out_4_addr_reg_714_pp0_iter9_reg;
        buff_C_out_4_addr_reg_714_pp0_iter11_reg <= buff_C_out_4_addr_reg_714_pp0_iter10_reg;
        buff_C_out_4_addr_reg_714_pp0_iter12_reg <= buff_C_out_4_addr_reg_714_pp0_iter11_reg;
        buff_C_out_4_addr_reg_714_pp0_iter13_reg <= buff_C_out_4_addr_reg_714_pp0_iter12_reg;
        buff_C_out_4_addr_reg_714_pp0_iter6_reg <= buff_C_out_4_addr_reg_714;
        buff_C_out_4_addr_reg_714_pp0_iter7_reg <= buff_C_out_4_addr_reg_714_pp0_iter6_reg;
        buff_C_out_4_addr_reg_714_pp0_iter8_reg <= buff_C_out_4_addr_reg_714_pp0_iter7_reg;
        buff_C_out_4_addr_reg_714_pp0_iter9_reg <= buff_C_out_4_addr_reg_714_pp0_iter8_reg;
        buff_C_out_5_addr_reg_720 <= zext_ln32_fu_551_p1;
        buff_C_out_5_addr_reg_720_pp0_iter10_reg <= buff_C_out_5_addr_reg_720_pp0_iter9_reg;
        buff_C_out_5_addr_reg_720_pp0_iter11_reg <= buff_C_out_5_addr_reg_720_pp0_iter10_reg;
        buff_C_out_5_addr_reg_720_pp0_iter12_reg <= buff_C_out_5_addr_reg_720_pp0_iter11_reg;
        buff_C_out_5_addr_reg_720_pp0_iter13_reg <= buff_C_out_5_addr_reg_720_pp0_iter12_reg;
        buff_C_out_5_addr_reg_720_pp0_iter6_reg <= buff_C_out_5_addr_reg_720;
        buff_C_out_5_addr_reg_720_pp0_iter7_reg <= buff_C_out_5_addr_reg_720_pp0_iter6_reg;
        buff_C_out_5_addr_reg_720_pp0_iter8_reg <= buff_C_out_5_addr_reg_720_pp0_iter7_reg;
        buff_C_out_5_addr_reg_720_pp0_iter9_reg <= buff_C_out_5_addr_reg_720_pp0_iter8_reg;
        buff_C_out_6_addr_reg_726 <= zext_ln32_fu_551_p1;
        buff_C_out_6_addr_reg_726_pp0_iter10_reg <= buff_C_out_6_addr_reg_726_pp0_iter9_reg;
        buff_C_out_6_addr_reg_726_pp0_iter11_reg <= buff_C_out_6_addr_reg_726_pp0_iter10_reg;
        buff_C_out_6_addr_reg_726_pp0_iter12_reg <= buff_C_out_6_addr_reg_726_pp0_iter11_reg;
        buff_C_out_6_addr_reg_726_pp0_iter13_reg <= buff_C_out_6_addr_reg_726_pp0_iter12_reg;
        buff_C_out_6_addr_reg_726_pp0_iter6_reg <= buff_C_out_6_addr_reg_726;
        buff_C_out_6_addr_reg_726_pp0_iter7_reg <= buff_C_out_6_addr_reg_726_pp0_iter6_reg;
        buff_C_out_6_addr_reg_726_pp0_iter8_reg <= buff_C_out_6_addr_reg_726_pp0_iter7_reg;
        buff_C_out_6_addr_reg_726_pp0_iter9_reg <= buff_C_out_6_addr_reg_726_pp0_iter8_reg;
        buff_C_out_7_addr_reg_732 <= zext_ln32_fu_551_p1;
        buff_C_out_7_addr_reg_732_pp0_iter10_reg <= buff_C_out_7_addr_reg_732_pp0_iter9_reg;
        buff_C_out_7_addr_reg_732_pp0_iter11_reg <= buff_C_out_7_addr_reg_732_pp0_iter10_reg;
        buff_C_out_7_addr_reg_732_pp0_iter12_reg <= buff_C_out_7_addr_reg_732_pp0_iter11_reg;
        buff_C_out_7_addr_reg_732_pp0_iter13_reg <= buff_C_out_7_addr_reg_732_pp0_iter12_reg;
        buff_C_out_7_addr_reg_732_pp0_iter6_reg <= buff_C_out_7_addr_reg_732;
        buff_C_out_7_addr_reg_732_pp0_iter7_reg <= buff_C_out_7_addr_reg_732_pp0_iter6_reg;
        buff_C_out_7_addr_reg_732_pp0_iter8_reg <= buff_C_out_7_addr_reg_732_pp0_iter7_reg;
        buff_C_out_7_addr_reg_732_pp0_iter9_reg <= buff_C_out_7_addr_reg_732_pp0_iter8_reg;
        buff_C_out_addr_reg_690 <= zext_ln32_fu_551_p1;
        buff_C_out_addr_reg_690_pp0_iter10_reg <= buff_C_out_addr_reg_690_pp0_iter9_reg;
        buff_C_out_addr_reg_690_pp0_iter11_reg <= buff_C_out_addr_reg_690_pp0_iter10_reg;
        buff_C_out_addr_reg_690_pp0_iter12_reg <= buff_C_out_addr_reg_690_pp0_iter11_reg;
        buff_C_out_addr_reg_690_pp0_iter13_reg <= buff_C_out_addr_reg_690_pp0_iter12_reg;
        buff_C_out_addr_reg_690_pp0_iter6_reg <= buff_C_out_addr_reg_690;
        buff_C_out_addr_reg_690_pp0_iter7_reg <= buff_C_out_addr_reg_690_pp0_iter6_reg;
        buff_C_out_addr_reg_690_pp0_iter8_reg <= buff_C_out_addr_reg_690_pp0_iter7_reg;
        buff_C_out_addr_reg_690_pp0_iter9_reg <= buff_C_out_addr_reg_690_pp0_iter8_reg;
        lshr_ln5_4_reg_605_pp0_iter2_reg <= lshr_ln5_4_reg_605;
        lshr_ln5_4_reg_605_pp0_iter3_reg <= lshr_ln5_4_reg_605_pp0_iter2_reg;
        lshr_ln5_4_reg_605_pp0_iter4_reg <= lshr_ln5_4_reg_605_pp0_iter3_reg;
        mul1_reg_738 <= grp_fu_224_p_dout0;
        mul74_1_reg_748 <= grp_fu_372_p2;
        mul74_2_reg_753 <= grp_fu_376_p2;
        mul74_3_reg_758 <= grp_fu_380_p2;
        mul74_4_reg_763 <= grp_fu_384_p2;
        mul74_5_reg_768 <= grp_fu_388_p2;
        mul74_6_reg_773 <= grp_fu_392_p2;
        mul74_7_reg_778 <= grp_fu_396_p2;
        trunc_ln10_reg_600_pp0_iter2_reg <= trunc_ln10_reg_600;
        trunc_ln10_reg_600_pp0_iter3_reg <= trunc_ln10_reg_600_pp0_iter2_reg;
        trunc_ln10_reg_600_pp0_iter4_reg <= trunc_ln10_reg_600_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_4_reg_605 <= {{select_ln5_fu_455_p3[5:3]}};
        trunc_ln10_reg_600 <= trunc_ln10_fu_471_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_1_load_1_reg_675 <= buff_B_1_q0;
        buff_B_1_load_reg_655 <= buff_B_1_q1;
        buff_B_2_load_1_reg_680 <= buff_B_2_q0;
        buff_B_2_load_reg_660 <= buff_B_2_q1;
        buff_B_3_load_1_reg_685 <= buff_B_3_q0;
        buff_B_3_load_reg_665 <= buff_B_3_q1;
        buff_B_load_1_reg_670 <= buff_B_q0;
        buff_B_load_reg_650 <= buff_B_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_C_out_1_load_reg_783 <= buff_C_out_1_q1;
        buff_C_out_2_load_reg_788 <= buff_C_out_2_q1;
        buff_C_out_3_load_reg_793 <= buff_C_out_3_q1;
        buff_C_out_4_load_reg_798 <= buff_C_out_4_q1;
        buff_C_out_5_load_reg_803 <= buff_C_out_5_q1;
        buff_C_out_6_load_reg_808 <= buff_C_out_6_q1;
        buff_C_out_7_load_reg_813 <= buff_C_out_7_q1;
        buff_C_out_load_reg_743 <= buff_C_out_q1;
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_418_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_indvar_flatten28_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten28_load = indvar_flatten28_fu_90;
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
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
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
        buff_B_2_ce1_local = 1'b1;
    end else begin
        buff_B_2_ce1_local = 1'b0;
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
        buff_B_3_ce1_local = 1'b1;
    end else begin
        buff_B_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
assign add_ln29_1_fu_424_p2 = (ap_sig_allocacmp_indvar_flatten28_load + 10'd1);
assign add_ln29_fu_441_p2 = (i_fu_86 + 7'd1);
assign add_ln30_fu_529_p2 = (select_ln5_fu_455_p3 + 7'd8);
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
assign buff_B_1_address0 = zext_ln32_2_fu_521_p1;
assign buff_B_1_address1 = zext_ln32_1_fu_503_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_2_address0 = zext_ln32_2_fu_521_p1;
assign buff_B_2_address1 = zext_ln32_1_fu_503_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_ce1 = buff_B_2_ce1_local;
assign buff_B_3_address0 = zext_ln32_2_fu_521_p1;
assign buff_B_3_address1 = zext_ln32_1_fu_503_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_ce1 = buff_B_3_ce1_local;
assign buff_B_address0 = zext_ln32_2_fu_521_p1;
assign buff_B_address1 = zext_ln32_1_fu_503_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign buff_C_out_1_address0 = buff_C_out_1_addr_reg_696_pp0_iter13_reg;
assign buff_C_out_1_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add79_1_reg_823;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_addr_reg_702_pp0_iter13_reg;
assign buff_C_out_2_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_ce1 = buff_C_out_2_ce1_local;
assign buff_C_out_2_d0 = add79_2_reg_828;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_addr_reg_708_pp0_iter13_reg;
assign buff_C_out_3_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_ce1 = buff_C_out_3_ce1_local;
assign buff_C_out_3_d0 = add79_3_reg_833;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_addr_reg_714_pp0_iter13_reg;
assign buff_C_out_4_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_ce1 = buff_C_out_4_ce1_local;
assign buff_C_out_4_d0 = add79_4_reg_838;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_addr_reg_720_pp0_iter13_reg;
assign buff_C_out_5_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_ce1 = buff_C_out_5_ce1_local;
assign buff_C_out_5_d0 = add79_5_reg_843;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_addr_reg_726_pp0_iter13_reg;
assign buff_C_out_6_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_ce1 = buff_C_out_6_ce1_local;
assign buff_C_out_6_d0 = add79_6_reg_848;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_addr_reg_732_pp0_iter13_reg;
assign buff_C_out_7_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_ce1 = buff_C_out_7_ce1_local;
assign buff_C_out_7_d0 = add79_7_reg_853;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = buff_C_out_addr_reg_690_pp0_iter13_reg;
assign buff_C_out_address1 = zext_ln32_fu_551_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add1_reg_818;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign grp_fu_220_p_ce = 1'b1;
assign grp_fu_220_p_din0 = buff_C_out_load_reg_743;
assign grp_fu_220_p_din1 = mul1_reg_738;
assign grp_fu_220_p_opcode = 2'd0;
assign grp_fu_224_p_ce = 1'b1;
assign grp_fu_224_p_din0 = buff_B_load_reg_650;
assign grp_fu_224_p_din1 = beta;
assign icmp_ln29_fu_418_p2 = ((ap_sig_allocacmp_indvar_flatten28_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_4_fu_475_p4 = {{select_ln5_fu_455_p3[5:3]}};
assign lshr_ln5_5_fu_485_p4 = {{select_ln5_fu_455_p3[5:2]}};
assign select_ln29_fu_463_p3 = ((tmp_fu_447_p3[0:0] == 1'b1) ? add_ln29_fu_441_p2 : i_fu_86);
assign select_ln5_fu_455_p3 = ((tmp_fu_447_p3[0:0] == 1'b1) ? 7'd0 : j_fu_82);
assign tmp_1_fu_495_p3 = {{trunc_ln10_fu_471_p1}, {lshr_ln5_5_fu_485_p4}};
assign tmp_2_fu_511_p4 = {{{trunc_ln10_fu_471_p1}, {lshr_ln5_4_fu_475_p4}}, {1'd1}};
assign tmp_fu_447_p3 = j_fu_82[32'd6];
assign tmp_s_fu_545_p3 = {{trunc_ln10_reg_600_pp0_iter4_reg}, {lshr_ln5_4_reg_605_pp0_iter4_reg}};
assign trunc_ln10_fu_471_p1 = select_ln29_fu_463_p3[5:0];
assign zext_ln32_1_fu_503_p1 = tmp_1_fu_495_p3;
assign zext_ln32_2_fu_521_p1 = tmp_2_fu_511_p4;
assign zext_ln32_fu_551_p1 = tmp_s_fu_545_p3;
endmodule 