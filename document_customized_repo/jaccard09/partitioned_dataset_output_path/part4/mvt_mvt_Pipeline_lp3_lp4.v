
module mvt_mvt_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_address1,buff_A_ce1,buff_A_q1,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_1_address1,buff_A_1_ce1,buff_A_1_q1,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_2_address1,buff_A_2_ce1,buff_A_2_q1,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_3_address1,buff_A_3_ce1,buff_A_3_q1,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_4_address1,buff_A_4_ce1,buff_A_4_q1,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_5_address1,buff_A_5_ce1,buff_A_5_q1,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_6_address1,buff_A_6_ce1,buff_A_6_q1,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_7_address1,buff_A_7_ce1,buff_A_7_q1,buff_y2_address0,buff_y2_ce0,buff_y2_q0,buff_y2_2_address0,buff_y2_2_ce0,buff_y2_2_q0,buff_y2_4_address0,buff_y2_4_ce0,buff_y2_4_q0,buff_y2_6_address0,buff_y2_6_ce0,buff_y2_6_q0,buff_y2_1_address0,buff_y2_1_ce0,buff_y2_1_q0,buff_y2_3_address0,buff_y2_3_ce0,buff_y2_3_q0,buff_y2_5_address0,buff_y2_5_ce0,buff_y2_5_q0,buff_y2_7_address0,buff_y2_7_ce0,buff_y2_7_q0,buff_x2_address0,buff_x2_ce0,buff_x2_we0,buff_x2_d0,buff_x2_q0,buff_x2_1_address0,buff_x2_1_ce0,buff_x2_1_we0,buff_x2_1_d0,buff_x2_1_q0,buff_x2_2_address0,buff_x2_2_ce0,buff_x2_2_we0,buff_x2_2_d0,buff_x2_2_q0,buff_x2_3_address0,buff_x2_3_ce0,buff_x2_3_we0,buff_x2_3_d0,buff_x2_3_q0,buff_x2_4_address0,buff_x2_4_ce0,buff_x2_4_we0,buff_x2_4_d0,buff_x2_4_q0,buff_x2_5_address0,buff_x2_5_ce0,buff_x2_5_we0,buff_x2_5_d0,buff_x2_5_q0,buff_x2_6_address0,buff_x2_6_ce0,buff_x2_6_we0,buff_x2_6_d0,buff_x2_6_q0,buff_x2_7_address0,buff_x2_7_ce0,buff_x2_7_we0,buff_x2_7_d0,buff_x2_7_q0,grp_fu_2239_p_din0,grp_fu_2239_p_din1,grp_fu_2239_p_opcode,grp_fu_2239_p_dout0,grp_fu_2239_p_ce,grp_fu_2243_p_din0,grp_fu_2243_p_din1,grp_fu_2243_p_dout0,grp_fu_2243_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_address1;
output   buff_A_ce1;
input  [31:0] buff_A_q1;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_1_address1;
output   buff_A_1_ce1;
input  [31:0] buff_A_1_q1;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_2_address1;
output   buff_A_2_ce1;
input  [31:0] buff_A_2_q1;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_3_address1;
output   buff_A_3_ce1;
input  [31:0] buff_A_3_q1;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_4_address1;
output   buff_A_4_ce1;
input  [31:0] buff_A_4_q1;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_5_address1;
output   buff_A_5_ce1;
input  [31:0] buff_A_5_q1;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_6_address1;
output   buff_A_6_ce1;
input  [31:0] buff_A_6_q1;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [8:0] buff_A_7_address1;
output   buff_A_7_ce1;
input  [31:0] buff_A_7_q1;
output  [2:0] buff_y2_address0;
output   buff_y2_ce0;
input  [31:0] buff_y2_q0;
output  [2:0] buff_y2_2_address0;
output   buff_y2_2_ce0;
input  [31:0] buff_y2_2_q0;
output  [2:0] buff_y2_4_address0;
output   buff_y2_4_ce0;
input  [31:0] buff_y2_4_q0;
output  [2:0] buff_y2_6_address0;
output   buff_y2_6_ce0;
input  [31:0] buff_y2_6_q0;
output  [2:0] buff_y2_1_address0;
output   buff_y2_1_ce0;
input  [31:0] buff_y2_1_q0;
output  [2:0] buff_y2_3_address0;
output   buff_y2_3_ce0;
input  [31:0] buff_y2_3_q0;
output  [2:0] buff_y2_5_address0;
output   buff_y2_5_ce0;
input  [31:0] buff_y2_5_q0;
output  [2:0] buff_y2_7_address0;
output   buff_y2_7_ce0;
input  [31:0] buff_y2_7_q0;
output  [2:0] buff_x2_address0;
output   buff_x2_ce0;
output   buff_x2_we0;
output  [31:0] buff_x2_d0;
input  [31:0] buff_x2_q0;
output  [2:0] buff_x2_1_address0;
output   buff_x2_1_ce0;
output   buff_x2_1_we0;
output  [31:0] buff_x2_1_d0;
input  [31:0] buff_x2_1_q0;
output  [2:0] buff_x2_2_address0;
output   buff_x2_2_ce0;
output   buff_x2_2_we0;
output  [31:0] buff_x2_2_d0;
input  [31:0] buff_x2_2_q0;
output  [2:0] buff_x2_3_address0;
output   buff_x2_3_ce0;
output   buff_x2_3_we0;
output  [31:0] buff_x2_3_d0;
input  [31:0] buff_x2_3_q0;
output  [2:0] buff_x2_4_address0;
output   buff_x2_4_ce0;
output   buff_x2_4_we0;
output  [31:0] buff_x2_4_d0;
input  [31:0] buff_x2_4_q0;
output  [2:0] buff_x2_5_address0;
output   buff_x2_5_ce0;
output   buff_x2_5_we0;
output  [31:0] buff_x2_5_d0;
input  [31:0] buff_x2_5_q0;
output  [2:0] buff_x2_6_address0;
output   buff_x2_6_ce0;
output   buff_x2_6_we0;
output  [31:0] buff_x2_6_d0;
input  [31:0] buff_x2_6_q0;
output  [2:0] buff_x2_7_address0;
output   buff_x2_7_ce0;
output   buff_x2_7_we0;
output  [31:0] buff_x2_7_d0;
input  [31:0] buff_x2_7_q0;
output  [31:0] grp_fu_2239_p_din0;
output  [31:0] grp_fu_2239_p_din1;
output  [1:0] grp_fu_2239_p_opcode;
input  [31:0] grp_fu_2239_p_dout0;
output   grp_fu_2239_p_ce;
output  [31:0] grp_fu_2243_p_din0;
output  [31:0] grp_fu_2243_p_din1;
input  [31:0] grp_fu_2243_p_dout0;
output   grp_fu_2243_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_974;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_552;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_583_p2;
wire   [6:0] select_ln6_fu_615_p3;
reg   [6:0] select_ln6_reg_978;
wire   [5:0] trunc_ln29_fu_623_p1;
reg   [5:0] trunc_ln29_reg_985;
wire   [0:0] first_iter_0_fu_635_p2;
reg   [0:0] first_iter_0_reg_990;
wire   [2:0] trunc_ln29_1_fu_641_p1;
reg   [2:0] trunc_ln29_1_reg_994;
reg   [2:0] trunc_ln29_1_reg_994_pp0_iter1_reg;
wire   [2:0] lshr_ln6_2_fu_645_p4;
reg   [2:0] lshr_ln6_2_reg_1001;
reg   [2:0] buff_x2_addr_reg_1007;
reg   [2:0] buff_x2_addr_reg_1007_pp0_iter1_reg;
reg   [2:0] buff_x2_1_addr_reg_1012;
reg   [2:0] buff_x2_1_addr_reg_1012_pp0_iter1_reg;
reg   [2:0] buff_x2_2_addr_reg_1017;
reg   [2:0] buff_x2_2_addr_reg_1017_pp0_iter1_reg;
reg   [2:0] buff_x2_3_addr_reg_1022;
reg   [2:0] buff_x2_3_addr_reg_1022_pp0_iter1_reg;
reg   [2:0] buff_x2_4_addr_reg_1027;
reg   [2:0] buff_x2_4_addr_reg_1027_pp0_iter1_reg;
reg   [2:0] buff_x2_5_addr_reg_1032;
reg   [2:0] buff_x2_5_addr_reg_1032_pp0_iter1_reg;
reg   [2:0] buff_x2_6_addr_reg_1037;
reg   [2:0] buff_x2_6_addr_reg_1037_pp0_iter1_reg;
reg   [2:0] buff_x2_7_addr_reg_1042;
reg   [2:0] buff_x2_7_addr_reg_1042_pp0_iter1_reg;
wire   [31:0] tmp_2_fu_699_p19;
reg   [31:0] tmp_2_reg_1087;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_4_fu_759_p11;
reg   [31:0] tmp_4_reg_1132;
wire   [31:0] tmp_6_fu_813_p11;
reg   [31:0] tmp_6_reg_1177;
wire   [31:0] tmp_3_fu_837_p19;
reg   [31:0] tmp_3_reg_1182;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_5_fu_876_p19;
reg   [31:0] tmp_5_reg_1187;
reg   [31:0] mul1_reg_1192;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul65_1_reg_1202;
reg   [0:0] tmp_8_reg_1207;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_fu_655_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_1_fu_677_p1;
wire   [63:0] zext_ln31_fu_744_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_1_fu_801_p1;
reg   [6:0] j_1_fu_120;
wire   [6:0] add_ln30_fu_923_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_124;
wire   [6:0] select_ln29_fu_627_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten_fu_128;
wire   [11:0] add_ln29_1_fu_589_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_132;
wire    ap_block_pp0_stage7;
reg    buff_x2_ce0_local;
reg   [2:0] buff_x2_address0_local;
reg    buff_x2_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_x2_1_ce0_local;
reg   [2:0] buff_x2_1_address0_local;
reg    buff_x2_1_we0_local;
reg    buff_x2_2_ce0_local;
reg   [2:0] buff_x2_2_address0_local;
reg    buff_x2_2_we0_local;
reg    buff_x2_3_ce0_local;
reg   [2:0] buff_x2_3_address0_local;
reg    buff_x2_3_we0_local;
reg    buff_x2_4_ce0_local;
reg   [2:0] buff_x2_4_address0_local;
reg    buff_x2_4_we0_local;
reg    buff_x2_5_ce0_local;
reg   [2:0] buff_x2_5_address0_local;
reg    buff_x2_5_we0_local;
reg    buff_x2_6_ce0_local;
reg   [2:0] buff_x2_6_address0_local;
reg    buff_x2_6_we0_local;
reg    buff_x2_7_ce0_local;
reg   [2:0] buff_x2_7_address0_local;
reg    buff_x2_7_we0_local;
reg    buff_y2_ce0_local;
reg    buff_y2_2_ce0_local;
reg    buff_y2_4_ce0_local;
reg    buff_y2_6_ce0_local;
reg    buff_y2_1_ce0_local;
reg    buff_y2_3_ce0_local;
reg    buff_y2_5_ce0_local;
reg    buff_y2_7_ce0_local;
reg    buff_A_ce1_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce1_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce1_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce1_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce1_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce1_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce1_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce1_local;
reg    buff_A_7_ce0_local;
reg   [31:0] grp_fu_544_p0;
reg   [31:0] grp_fu_544_p1;
wire    ap_block_pp0_stage14;
reg   [31:0] grp_fu_548_p0;
reg   [31:0] grp_fu_548_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [0:0] tmp_fu_607_p3;
wire   [6:0] add_ln29_fu_601_p2;
wire   [2:0] lshr_ln6_5_fu_667_p4;
wire   [31:0] tmp_2_fu_699_p17;
wire   [8:0] tmp_s_fu_738_p3;
wire   [31:0] tmp_4_fu_759_p9;
wire   [2:0] trunc_ln30_fu_756_p1;
wire   [4:0] tmp_1_fu_783_p4;
wire   [8:0] tmp_7_fu_792_p4;
wire   [31:0] tmp_6_fu_813_p9;
wire   [31:0] tmp_3_fu_837_p17;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_5_fu_876_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_condition_1096;
wire   [2:0] tmp_2_fu_699_p1;
wire   [2:0] tmp_2_fu_699_p3;
wire   [2:0] tmp_2_fu_699_p5;
wire   [2:0] tmp_2_fu_699_p7;
wire  signed [2:0] tmp_2_fu_699_p9;
wire  signed [2:0] tmp_2_fu_699_p11;
wire  signed [2:0] tmp_2_fu_699_p13;
wire  signed [2:0] tmp_2_fu_699_p15;
wire   [2:0] tmp_4_fu_759_p1;
wire   [2:0] tmp_4_fu_759_p3;
wire  signed [2:0] tmp_4_fu_759_p5;
wire  signed [2:0] tmp_4_fu_759_p7;
wire   [2:0] tmp_6_fu_813_p1;
wire   [2:0] tmp_6_fu_813_p3;
wire  signed [2:0] tmp_6_fu_813_p5;
wire  signed [2:0] tmp_6_fu_813_p7;
wire   [2:0] tmp_3_fu_837_p1;
wire   [2:0] tmp_3_fu_837_p3;
wire   [2:0] tmp_3_fu_837_p5;
wire   [2:0] tmp_3_fu_837_p7;
wire  signed [2:0] tmp_3_fu_837_p9;
wire  signed [2:0] tmp_3_fu_837_p11;
wire  signed [2:0] tmp_3_fu_837_p13;
wire  signed [2:0] tmp_3_fu_837_p15;
wire   [2:0] tmp_5_fu_876_p1;
wire   [2:0] tmp_5_fu_876_p3;
wire   [2:0] tmp_5_fu_876_p5;
wire   [2:0] tmp_5_fu_876_p7;
wire  signed [2:0] tmp_5_fu_876_p9;
wire  signed [2:0] tmp_5_fu_876_p11;
wire  signed [2:0] tmp_5_fu_876_p13;
wire  signed [2:0] tmp_5_fu_876_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_120 = 7'd0;
#0 i_fu_124 = 7'd0;
#0 indvar_flatten_fu_128 = 12'd0;
#0 empty_fu_132 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U361(.din0(buff_x2_q0),.din1(buff_x2_1_q0),.din2(buff_x2_2_q0),.din3(buff_x2_3_q0),.din4(buff_x2_4_q0),.din5(buff_x2_5_q0),.din6(buff_x2_6_q0),.din7(buff_x2_7_q0),.def(tmp_2_fu_699_p17),.sel(trunc_ln29_1_reg_994),.dout(tmp_2_fu_699_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U362(.din0(buff_y2_q0),.din1(buff_y2_2_q0),.din2(buff_y2_4_q0),.din3(buff_y2_6_q0),.def(tmp_4_fu_759_p9),.sel(trunc_ln30_fu_756_p1),.dout(tmp_4_fu_759_p11));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U363(.din0(buff_y2_1_q0),.din1(buff_y2_3_q0),.din2(buff_y2_5_q0),.din3(buff_y2_7_q0),.def(tmp_6_fu_813_p9),.sel(trunc_ln30_fu_756_p1),.dout(tmp_6_fu_813_p11));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U364(.din0(buff_A_q1),.din1(buff_A_1_q1),.din2(buff_A_2_q1),.din3(buff_A_3_q1),.din4(buff_A_4_q1),.din5(buff_A_5_q1),.din6(buff_A_6_q1),.din7(buff_A_7_q1),.def(tmp_3_fu_837_p17),.sel(trunc_ln29_1_reg_994),.dout(tmp_3_fu_837_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U365(.din0(buff_A_q0),.din1(buff_A_1_q0),.din2(buff_A_2_q0),.din3(buff_A_3_q0),.din4(buff_A_4_q0),.din5(buff_A_5_q0),.din6(buff_A_6_q0),.din7(buff_A_7_q0),.def(tmp_5_fu_876_p17),.sel(trunc_ln29_1_reg_994),.dout(tmp_5_fu_876_p19));
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_1096)) begin
            empty_fu_132 <= tmp_2_reg_1087;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_132 <= reg_552;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_583_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_124 <= select_ln29_fu_627_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_124 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_583_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_128 <= add_ln29_1_fu_589_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_120 <= 7'd0;
    end else if (((icmp_ln29_reg_974 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        j_1_fu_120 <= add_ln30_fu_923_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_addr_reg_1012 <= zext_ln6_fu_655_p1;
        buff_x2_1_addr_reg_1012_pp0_iter1_reg <= buff_x2_1_addr_reg_1012;
        buff_x2_2_addr_reg_1017 <= zext_ln6_fu_655_p1;
        buff_x2_2_addr_reg_1017_pp0_iter1_reg <= buff_x2_2_addr_reg_1017;
        buff_x2_3_addr_reg_1022 <= zext_ln6_fu_655_p1;
        buff_x2_3_addr_reg_1022_pp0_iter1_reg <= buff_x2_3_addr_reg_1022;
        buff_x2_4_addr_reg_1027 <= zext_ln6_fu_655_p1;
        buff_x2_4_addr_reg_1027_pp0_iter1_reg <= buff_x2_4_addr_reg_1027;
        buff_x2_5_addr_reg_1032 <= zext_ln6_fu_655_p1;
        buff_x2_5_addr_reg_1032_pp0_iter1_reg <= buff_x2_5_addr_reg_1032;
        buff_x2_6_addr_reg_1037 <= zext_ln6_fu_655_p1;
        buff_x2_6_addr_reg_1037_pp0_iter1_reg <= buff_x2_6_addr_reg_1037;
        buff_x2_7_addr_reg_1042 <= zext_ln6_fu_655_p1;
        buff_x2_7_addr_reg_1042_pp0_iter1_reg <= buff_x2_7_addr_reg_1042;
        buff_x2_addr_reg_1007 <= zext_ln6_fu_655_p1;
        buff_x2_addr_reg_1007_pp0_iter1_reg <= buff_x2_addr_reg_1007;
        first_iter_0_reg_990 <= first_iter_0_fu_635_p2;
        icmp_ln29_reg_974 <= icmp_ln29_fu_583_p2;
        lshr_ln6_2_reg_1001 <= {{select_ln29_fu_627_p3[5:3]}};
        select_ln6_reg_978 <= select_ln6_fu_615_p3;
        trunc_ln29_1_reg_994 <= trunc_ln29_1_fu_641_p1;
        trunc_ln29_1_reg_994_pp0_iter1_reg <= trunc_ln29_1_reg_994;
        trunc_ln29_reg_985 <= trunc_ln29_fu_623_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_1192 <= grp_fu_2243_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul65_1_reg_1202 <= grp_fu_2243_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_552 <= grp_fu_2239_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_2_reg_1087 <= tmp_2_fu_699_p19;
        tmp_4_reg_1132 <= tmp_4_fu_759_p11;
        tmp_6_reg_1177 <= tmp_6_fu_813_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_3_reg_1182 <= tmp_3_fu_837_p19;
        tmp_5_reg_1187 <= tmp_5_fu_876_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_8_reg_1207 <= add_ln30_fu_923_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_974 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_124;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_120;
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
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce1_local = 1'b1;
    end else begin
        buff_A_4_ce1_local = 1'b0;
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
        buff_A_5_ce1_local = 1'b1;
    end else begin
        buff_A_5_ce1_local = 1'b0;
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
        buff_A_6_ce1_local = 1'b1;
    end else begin
        buff_A_6_ce1_local = 1'b0;
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
        buff_A_7_ce1_local = 1'b1;
    end else begin
        buff_A_7_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_1_address0_local = buff_x2_1_addr_reg_1012_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_1_ce0_local = 1'b1;
    end else begin
        buff_x2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_1_we0_local = 1'b1;
    end else begin
        buff_x2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_2_address0_local = buff_x2_2_addr_reg_1017_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_2_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_2_ce0_local = 1'b1;
    end else begin
        buff_x2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_2_we0_local = 1'b1;
    end else begin
        buff_x2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_3_address0_local = buff_x2_3_addr_reg_1022_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_3_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_3_ce0_local = 1'b1;
    end else begin
        buff_x2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_3_we0_local = 1'b1;
    end else begin
        buff_x2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_4_address0_local = buff_x2_4_addr_reg_1027_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_4_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_4_ce0_local = 1'b1;
    end else begin
        buff_x2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_4_we0_local = 1'b1;
    end else begin
        buff_x2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_5_address0_local = buff_x2_5_addr_reg_1032_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_5_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_5_ce0_local = 1'b1;
    end else begin
        buff_x2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_5_we0_local = 1'b1;
    end else begin
        buff_x2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_6_address0_local = buff_x2_6_addr_reg_1037_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_6_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_6_ce0_local = 1'b1;
    end else begin
        buff_x2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_6_we0_local = 1'b1;
    end else begin
        buff_x2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_7_address0_local = buff_x2_7_addr_reg_1042_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_7_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_7_ce0_local = 1'b1;
    end else begin
        buff_x2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_7_we0_local = 1'b1;
    end else begin
        buff_x2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_address0_local = buff_x2_addr_reg_1007_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_address0_local = zext_ln6_fu_655_p1;
    end else begin
        buff_x2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1207 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_1_reg_994_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_1_ce0_local = 1'b1;
    end else begin
        buff_y2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_2_ce0_local = 1'b1;
    end else begin
        buff_y2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_3_ce0_local = 1'b1;
    end else begin
        buff_y2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_4_ce0_local = 1'b1;
    end else begin
        buff_y2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_5_ce0_local = 1'b1;
    end else begin
        buff_y2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_6_ce0_local = 1'b1;
    end else begin
        buff_y2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_7_ce0_local = 1'b1;
    end else begin
        buff_y2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_544_p0 = reg_552;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_544_p0 = empty_fu_132;
        end else begin
            grp_fu_544_p0 = 'bx;
        end
    end else begin
        grp_fu_544_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_544_p1 = mul65_1_reg_1202;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_544_p1 = mul1_reg_1192;
        end else begin
            grp_fu_544_p1 = 'bx;
        end
    end else begin
        grp_fu_544_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_548_p0 = tmp_5_reg_1187;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_548_p0 = tmp_3_reg_1182;
        end else begin
            grp_fu_548_p0 = 'bx;
        end
    end else begin
        grp_fu_548_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_548_p1 = tmp_6_reg_1177;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_548_p1 = tmp_4_reg_1132;
        end else begin
            grp_fu_548_p1 = 'bx;
        end
    end else begin
        grp_fu_548_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_589_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln29_fu_601_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln30_fu_923_p2 = (select_ln6_reg_978 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1096 = ((icmp_ln29_reg_974 == 1'd0) & (first_iter_0_reg_990 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_1_address1 = zext_ln31_fu_744_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_ce1 = buff_A_1_ce1_local;
assign buff_A_2_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_2_address1 = zext_ln31_fu_744_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_ce1 = buff_A_2_ce1_local;
assign buff_A_3_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_3_address1 = zext_ln31_fu_744_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_ce1 = buff_A_3_ce1_local;
assign buff_A_4_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_4_address1 = zext_ln31_fu_744_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_4_ce1 = buff_A_4_ce1_local;
assign buff_A_5_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_5_address1 = zext_ln31_fu_744_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_5_ce1 = buff_A_5_ce1_local;
assign buff_A_6_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_6_address1 = zext_ln31_fu_744_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_6_ce1 = buff_A_6_ce1_local;
assign buff_A_7_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_7_address1 = zext_ln31_fu_744_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_7_ce1 = buff_A_7_ce1_local;
assign buff_A_address0 = zext_ln31_1_fu_801_p1;
assign buff_A_address1 = zext_ln31_fu_744_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_ce1 = buff_A_ce1_local;
assign buff_x2_1_address0 = buff_x2_1_address0_local;
assign buff_x2_1_ce0 = buff_x2_1_ce0_local;
assign buff_x2_1_d0 = reg_552;
assign buff_x2_1_we0 = buff_x2_1_we0_local;
assign buff_x2_2_address0 = buff_x2_2_address0_local;
assign buff_x2_2_ce0 = buff_x2_2_ce0_local;
assign buff_x2_2_d0 = reg_552;
assign buff_x2_2_we0 = buff_x2_2_we0_local;
assign buff_x2_3_address0 = buff_x2_3_address0_local;
assign buff_x2_3_ce0 = buff_x2_3_ce0_local;
assign buff_x2_3_d0 = reg_552;
assign buff_x2_3_we0 = buff_x2_3_we0_local;
assign buff_x2_4_address0 = buff_x2_4_address0_local;
assign buff_x2_4_ce0 = buff_x2_4_ce0_local;
assign buff_x2_4_d0 = reg_552;
assign buff_x2_4_we0 = buff_x2_4_we0_local;
assign buff_x2_5_address0 = buff_x2_5_address0_local;
assign buff_x2_5_ce0 = buff_x2_5_ce0_local;
assign buff_x2_5_d0 = reg_552;
assign buff_x2_5_we0 = buff_x2_5_we0_local;
assign buff_x2_6_address0 = buff_x2_6_address0_local;
assign buff_x2_6_ce0 = buff_x2_6_ce0_local;
assign buff_x2_6_d0 = reg_552;
assign buff_x2_6_we0 = buff_x2_6_we0_local;
assign buff_x2_7_address0 = buff_x2_7_address0_local;
assign buff_x2_7_ce0 = buff_x2_7_ce0_local;
assign buff_x2_7_d0 = reg_552;
assign buff_x2_7_we0 = buff_x2_7_we0_local;
assign buff_x2_address0 = buff_x2_address0_local;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign buff_x2_d0 = reg_552;
assign buff_x2_we0 = buff_x2_we0_local;
assign buff_y2_1_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_1_ce0 = buff_y2_1_ce0_local;
assign buff_y2_2_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_2_ce0 = buff_y2_2_ce0_local;
assign buff_y2_3_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_3_ce0 = buff_y2_3_ce0_local;
assign buff_y2_4_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_4_ce0 = buff_y2_4_ce0_local;
assign buff_y2_5_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_5_ce0 = buff_y2_5_ce0_local;
assign buff_y2_6_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_6_ce0 = buff_y2_6_ce0_local;
assign buff_y2_7_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_7_ce0 = buff_y2_7_ce0_local;
assign buff_y2_address0 = zext_ln6_1_fu_677_p1;
assign buff_y2_ce0 = buff_y2_ce0_local;
assign first_iter_0_fu_635_p2 = ((select_ln6_fu_615_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_2239_p_ce = 1'b1;
assign grp_fu_2239_p_din0 = grp_fu_544_p0;
assign grp_fu_2239_p_din1 = grp_fu_544_p1;
assign grp_fu_2239_p_opcode = 2'd0;
assign grp_fu_2243_p_ce = 1'b1;
assign grp_fu_2243_p_din0 = grp_fu_548_p0;
assign grp_fu_2243_p_din1 = grp_fu_548_p1;
assign icmp_ln29_fu_583_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln6_2_fu_645_p4 = {{select_ln29_fu_627_p3[5:3]}};
assign lshr_ln6_5_fu_667_p4 = {{select_ln6_fu_615_p3[5:3]}};
assign select_ln29_fu_627_p3 = ((tmp_fu_607_p3[0:0] == 1'b1) ? add_ln29_fu_601_p2 : ap_sig_allocacmp_i_load);
assign select_ln6_fu_615_p3 = ((tmp_fu_607_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_1_load);
assign tmp_1_fu_783_p4 = {{select_ln6_reg_978[5:1]}};
assign tmp_2_fu_699_p17 = 'bx;
assign tmp_3_fu_837_p17 = 'bx;
assign tmp_4_fu_759_p9 = 'bx;
assign tmp_5_fu_876_p17 = 'bx;
assign tmp_6_fu_813_p9 = 'bx;
assign tmp_7_fu_792_p4 = {{{tmp_1_fu_783_p4}, {1'd1}}, {lshr_ln6_2_reg_1001}};
assign tmp_fu_607_p3 = ap_sig_allocacmp_j_1_load[32'd6];
assign tmp_s_fu_738_p3 = {{trunc_ln29_reg_985}, {lshr_ln6_2_reg_1001}};
assign trunc_ln29_1_fu_641_p1 = select_ln29_fu_627_p3[2:0];
assign trunc_ln29_fu_623_p1 = select_ln6_fu_615_p3[5:0];
assign trunc_ln30_fu_756_p1 = select_ln6_reg_978[2:0];
assign zext_ln31_1_fu_801_p1 = tmp_7_fu_792_p4;
assign zext_ln31_fu_744_p1 = tmp_s_fu_738_p3;
assign zext_ln6_1_fu_677_p1 = lshr_ln6_5_fu_667_p4;
assign zext_ln6_fu_655_p1 = lshr_ln6_2_fu_645_p4;
endmodule 
