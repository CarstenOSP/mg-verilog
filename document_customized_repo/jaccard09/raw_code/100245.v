module syrk_syrk_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_out_0_din,C_out_0_full_n,C_out_0_write,C_out_1_din,C_out_1_full_n,C_out_1_write,C_out_2_din,C_out_2_full_n,C_out_2_write,C_out_3_din,C_out_3_full_n,C_out_3_write,C_out_4_din,C_out_4_full_n,C_out_4_write,C_out_5_din,C_out_5_full_n,C_out_5_write,C_out_6_din,C_out_6_full_n,C_out_6_write,C_out_7_din,C_out_7_full_n,C_out_7_write,buff_C_out_address0,buff_C_out_ce0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_q0,buff_C_out_8_address0,buff_C_out_8_ce0,buff_C_out_8_q0,buff_C_out_9_address0,buff_C_out_9_ce0,buff_C_out_9_q0,buff_C_out_10_address0,buff_C_out_10_ce0,buff_C_out_10_q0,buff_C_out_11_address0,buff_C_out_11_ce0,buff_C_out_11_q0,buff_C_out_12_address0,buff_C_out_12_ce0,buff_C_out_12_q0,buff_C_out_13_address0,buff_C_out_13_ce0,buff_C_out_13_q0,buff_C_out_14_address0,buff_C_out_14_ce0,buff_C_out_14_q0,buff_C_out_15_address0,buff_C_out_15_ce0,buff_C_out_15_q0,buff_C_out_16_address0,buff_C_out_16_ce0,buff_C_out_16_q0,buff_C_out_17_address0,buff_C_out_17_ce0,buff_C_out_17_q0,buff_C_out_18_address0,buff_C_out_18_ce0,buff_C_out_18_q0,buff_C_out_19_address0,buff_C_out_19_ce0,buff_C_out_19_q0,buff_C_out_20_address0,buff_C_out_20_ce0,buff_C_out_20_q0,buff_C_out_21_address0,buff_C_out_21_ce0,buff_C_out_21_q0,buff_C_out_22_address0,buff_C_out_22_ce0,buff_C_out_22_q0,buff_C_out_23_address0,buff_C_out_23_ce0,buff_C_out_23_q0,buff_C_out_24_address0,buff_C_out_24_ce0,buff_C_out_24_q0,buff_C_out_25_address0,buff_C_out_25_ce0,buff_C_out_25_q0,buff_C_out_26_address0,buff_C_out_26_ce0,buff_C_out_26_q0,buff_C_out_27_address0,buff_C_out_27_ce0,buff_C_out_27_q0,buff_C_out_28_address0,buff_C_out_28_ce0,buff_C_out_28_q0,buff_C_out_29_address0,buff_C_out_29_ce0,buff_C_out_29_q0,buff_C_out_30_address0,buff_C_out_30_ce0,buff_C_out_30_q0,buff_C_out_31_address0,buff_C_out_31_ce0,buff_C_out_31_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] C_out_0_din;
input   C_out_0_full_n;
output   C_out_0_write;
output  [31:0] C_out_1_din;
input   C_out_1_full_n;
output   C_out_1_write;
output  [31:0] C_out_2_din;
input   C_out_2_full_n;
output   C_out_2_write;
output  [31:0] C_out_3_din;
input   C_out_3_full_n;
output   C_out_3_write;
output  [31:0] C_out_4_din;
input   C_out_4_full_n;
output   C_out_4_write;
output  [31:0] C_out_5_din;
input   C_out_5_full_n;
output   C_out_5_write;
output  [31:0] C_out_6_din;
input   C_out_6_full_n;
output   C_out_6_write;
output  [31:0] C_out_7_din;
input   C_out_7_full_n;
output   C_out_7_write;
output  [6:0] buff_C_out_address0;
output   buff_C_out_ce0;
input  [31:0] buff_C_out_q0;
output  [6:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
input  [31:0] buff_C_out_1_q0;
output  [6:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
input  [31:0] buff_C_out_2_q0;
output  [6:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
input  [31:0] buff_C_out_3_q0;
output  [6:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
input  [31:0] buff_C_out_4_q0;
output  [6:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
input  [31:0] buff_C_out_5_q0;
output  [6:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
input  [31:0] buff_C_out_6_q0;
output  [6:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
input  [31:0] buff_C_out_7_q0;
output  [6:0] buff_C_out_8_address0;
output   buff_C_out_8_ce0;
input  [31:0] buff_C_out_8_q0;
output  [6:0] buff_C_out_9_address0;
output   buff_C_out_9_ce0;
input  [31:0] buff_C_out_9_q0;
output  [6:0] buff_C_out_10_address0;
output   buff_C_out_10_ce0;
input  [31:0] buff_C_out_10_q0;
output  [6:0] buff_C_out_11_address0;
output   buff_C_out_11_ce0;
input  [31:0] buff_C_out_11_q0;
output  [6:0] buff_C_out_12_address0;
output   buff_C_out_12_ce0;
input  [31:0] buff_C_out_12_q0;
output  [6:0] buff_C_out_13_address0;
output   buff_C_out_13_ce0;
input  [31:0] buff_C_out_13_q0;
output  [6:0] buff_C_out_14_address0;
output   buff_C_out_14_ce0;
input  [31:0] buff_C_out_14_q0;
output  [6:0] buff_C_out_15_address0;
output   buff_C_out_15_ce0;
input  [31:0] buff_C_out_15_q0;
output  [6:0] buff_C_out_16_address0;
output   buff_C_out_16_ce0;
input  [31:0] buff_C_out_16_q0;
output  [6:0] buff_C_out_17_address0;
output   buff_C_out_17_ce0;
input  [31:0] buff_C_out_17_q0;
output  [6:0] buff_C_out_18_address0;
output   buff_C_out_18_ce0;
input  [31:0] buff_C_out_18_q0;
output  [6:0] buff_C_out_19_address0;
output   buff_C_out_19_ce0;
input  [31:0] buff_C_out_19_q0;
output  [6:0] buff_C_out_20_address0;
output   buff_C_out_20_ce0;
input  [31:0] buff_C_out_20_q0;
output  [6:0] buff_C_out_21_address0;
output   buff_C_out_21_ce0;
input  [31:0] buff_C_out_21_q0;
output  [6:0] buff_C_out_22_address0;
output   buff_C_out_22_ce0;
input  [31:0] buff_C_out_22_q0;
output  [6:0] buff_C_out_23_address0;
output   buff_C_out_23_ce0;
input  [31:0] buff_C_out_23_q0;
output  [6:0] buff_C_out_24_address0;
output   buff_C_out_24_ce0;
input  [31:0] buff_C_out_24_q0;
output  [6:0] buff_C_out_25_address0;
output   buff_C_out_25_ce0;
input  [31:0] buff_C_out_25_q0;
output  [6:0] buff_C_out_26_address0;
output   buff_C_out_26_ce0;
input  [31:0] buff_C_out_26_q0;
output  [6:0] buff_C_out_27_address0;
output   buff_C_out_27_ce0;
input  [31:0] buff_C_out_27_q0;
output  [6:0] buff_C_out_28_address0;
output   buff_C_out_28_ce0;
input  [31:0] buff_C_out_28_q0;
output  [6:0] buff_C_out_29_address0;
output   buff_C_out_29_ce0;
input  [31:0] buff_C_out_29_q0;
output  [6:0] buff_C_out_30_address0;
output   buff_C_out_30_ce0;
input  [31:0] buff_C_out_30_q0;
output  [6:0] buff_C_out_31_address0;
output   buff_C_out_31_ce0;
input  [31:0] buff_C_out_31_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln40_reg_1404;
reg   [0:0] icmp_ln40_reg_1404_pp0_iter2_reg;
reg   [0:0] icmp_ln40_1_reg_1408;
reg   [0:0] icmp_ln40_1_reg_1408_pp0_iter2_reg;
reg   [0:0] icmp_ln40_2_reg_1412;
reg   [0:0] icmp_ln40_2_reg_1412_pp0_iter2_reg;
reg   [0:0] icmp_ln40_3_reg_1416;
reg   [0:0] icmp_ln40_3_reg_1416_pp0_iter2_reg;
reg   [0:0] icmp_ln40_4_reg_1420;
reg   [0:0] icmp_ln40_4_reg_1420_pp0_iter2_reg;
reg   [0:0] icmp_ln40_5_reg_1424;
reg   [0:0] icmp_ln40_5_reg_1424_pp0_iter2_reg;
reg   [0:0] icmp_ln40_6_reg_1428;
reg   [0:0] icmp_ln40_6_reg_1428_pp0_iter2_reg;
reg   [0:0] icmp_ln40_7_reg_1432;
reg   [0:0] icmp_ln40_7_reg_1432_pp0_iter2_reg;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln38_fu_676_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    C_out_7_blk_n;
wire    ap_block_pp0_stage0;
reg    C_out_6_blk_n;
reg    C_out_5_blk_n;
reg    C_out_4_blk_n;
reg    C_out_3_blk_n;
reg    C_out_2_blk_n;
reg    C_out_1_blk_n;
reg    C_out_0_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln38_fu_729_p1;
reg   [1:0] trunc_ln38_reg_1232;
wire   [0:0] icmp_ln40_fu_797_p2;
wire   [0:0] icmp_ln40_1_fu_825_p2;
wire   [0:0] icmp_ln40_2_fu_859_p2;
wire   [0:0] icmp_ln40_3_fu_877_p2;
wire   [0:0] icmp_ln40_4_fu_901_p2;
wire   [0:0] icmp_ln40_5_fu_931_p2;
wire   [0:0] icmp_ln40_6_fu_951_p2;
wire   [0:0] icmp_ln40_7_fu_969_p2;
wire   [31:0] tmp_s_fu_991_p11;
reg   [31:0] tmp_s_reg_1436;
wire   [31:0] tmp_9_fu_1014_p11;
reg   [31:0] tmp_9_reg_1441;
wire   [31:0] tmp_5_fu_1037_p11;
reg   [31:0] tmp_5_reg_1446;
wire   [31:0] tmp_6_fu_1060_p11;
reg   [31:0] tmp_6_reg_1451;
wire   [31:0] tmp_7_fu_1083_p11;
reg   [31:0] tmp_7_reg_1456;
wire   [31:0] tmp_10_fu_1106_p11;
reg   [31:0] tmp_10_reg_1461;
wire   [31:0] tmp_11_fu_1129_p11;
reg   [31:0] tmp_11_reg_1466;
wire   [31:0] tmp_12_fu_1152_p11;
reg   [31:0] tmp_12_reg_1471;
wire   [63:0] zext_ln41_fu_761_p1;
reg   [6:0] j_fu_166;
wire   [6:0] add_ln39_fu_975_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_170;
wire   [6:0] select_ln38_fu_721_p3;
reg   [9:0] indvar_flatten28_fu_174;
wire   [9:0] add_ln38_1_fu_682_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten28_load;
wire   [31:0] bitcast_ln41_fu_1175_p1;
reg   [31:0] C_out_0_din_local;
reg    ap_block_pp0_stage0_01001;
reg    C_out_0_write_local;
wire   [31:0] bitcast_ln41_1_fu_1179_p1;
reg   [31:0] C_out_1_din_local;
reg    C_out_1_write_local;
wire   [31:0] bitcast_ln41_2_fu_1183_p1;
reg   [31:0] C_out_2_din_local;
reg    C_out_2_write_local;
wire   [31:0] bitcast_ln41_3_fu_1187_p1;
reg   [31:0] C_out_3_din_local;
reg    C_out_3_write_local;
wire   [31:0] bitcast_ln41_4_fu_1191_p1;
reg   [31:0] C_out_4_din_local;
reg    C_out_4_write_local;
wire   [31:0] bitcast_ln41_5_fu_1195_p1;
reg   [31:0] C_out_5_din_local;
reg    C_out_5_write_local;
wire   [31:0] bitcast_ln41_6_fu_1199_p1;
reg   [31:0] C_out_6_din_local;
reg    C_out_6_write_local;
wire   [31:0] bitcast_ln41_7_fu_1203_p1;
reg   [31:0] C_out_7_din_local;
reg    C_out_7_write_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_7_ce0_local;
reg    buff_C_out_8_ce0_local;
reg    buff_C_out_9_ce0_local;
reg    buff_C_out_10_ce0_local;
reg    buff_C_out_11_ce0_local;
reg    buff_C_out_12_ce0_local;
reg    buff_C_out_13_ce0_local;
reg    buff_C_out_14_ce0_local;
reg    buff_C_out_15_ce0_local;
reg    buff_C_out_16_ce0_local;
reg    buff_C_out_17_ce0_local;
reg    buff_C_out_18_ce0_local;
reg    buff_C_out_19_ce0_local;
reg    buff_C_out_20_ce0_local;
reg    buff_C_out_21_ce0_local;
reg    buff_C_out_22_ce0_local;
reg    buff_C_out_23_ce0_local;
reg    buff_C_out_24_ce0_local;
reg    buff_C_out_25_ce0_local;
reg    buff_C_out_26_ce0_local;
reg    buff_C_out_27_ce0_local;
reg    buff_C_out_28_ce0_local;
reg    buff_C_out_29_ce0_local;
reg    buff_C_out_30_ce0_local;
reg    buff_C_out_31_ce0_local;
wire   [0:0] tmp_fu_705_p3;
wire   [6:0] add_ln38_fu_699_p2;
wire   [6:0] select_ln5_fu_713_p3;
wire   [3:0] tmp_1_fu_743_p4;
wire   [2:0] lshr_ln5_7_fu_733_p4;
wire   [6:0] tmp_2_fu_753_p3;
wire   [4:0] tmp_3_fu_803_p4;
wire   [5:0] or_ln_fu_813_p3;
wire   [6:0] zext_ln40_fu_821_p1;
wire   [3:0] tmp_4_fu_831_p4;
wire   [0:0] trunc_ln39_fu_841_p1;
wire   [5:0] or_ln39_1_fu_845_p4;
wire   [6:0] zext_ln40_1_fu_855_p1;
wire   [5:0] or_ln39_2_fu_865_p3;
wire   [6:0] zext_ln40_2_fu_873_p1;
wire   [1:0] trunc_ln39_1_fu_883_p1;
wire   [5:0] or_ln39_3_fu_887_p4;
wire   [6:0] zext_ln40_3_fu_897_p1;
wire   [0:0] tmp_8_fu_907_p3;
wire   [5:0] or_ln39_4_fu_915_p5;
wire   [6:0] zext_ln40_4_fu_927_p1;
wire   [5:0] or_ln39_5_fu_937_p4;
wire   [6:0] zext_ln40_5_fu_947_p1;
wire   [5:0] or_ln39_6_fu_957_p3;
wire   [6:0] zext_ln40_6_fu_965_p1;
wire   [31:0] tmp_s_fu_991_p9;
wire   [31:0] tmp_9_fu_1014_p9;
wire   [31:0] tmp_5_fu_1037_p9;
wire   [31:0] tmp_6_fu_1060_p9;
wire   [31:0] tmp_7_fu_1083_p9;
wire   [31:0] tmp_10_fu_1106_p9;
wire   [31:0] tmp_11_fu_1129_p9;
wire   [31:0] tmp_12_fu_1152_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_s_fu_991_p1;
wire   [1:0] tmp_s_fu_991_p3;
wire  signed [1:0] tmp_s_fu_991_p5;
wire  signed [1:0] tmp_s_fu_991_p7;
wire   [1:0] tmp_9_fu_1014_p1;
wire   [1:0] tmp_9_fu_1014_p3;
wire  signed [1:0] tmp_9_fu_1014_p5;
wire  signed [1:0] tmp_9_fu_1014_p7;
wire   [1:0] tmp_5_fu_1037_p1;
wire   [1:0] tmp_5_fu_1037_p3;
wire  signed [1:0] tmp_5_fu_1037_p5;
wire  signed [1:0] tmp_5_fu_1037_p7;
wire   [1:0] tmp_6_fu_1060_p1;
wire   [1:0] tmp_6_fu_1060_p3;
wire  signed [1:0] tmp_6_fu_1060_p5;
wire  signed [1:0] tmp_6_fu_1060_p7;
wire   [1:0] tmp_7_fu_1083_p1;
wire   [1:0] tmp_7_fu_1083_p3;
wire  signed [1:0] tmp_7_fu_1083_p5;
wire  signed [1:0] tmp_7_fu_1083_p7;
wire   [1:0] tmp_10_fu_1106_p1;
wire   [1:0] tmp_10_fu_1106_p3;
wire  signed [1:0] tmp_10_fu_1106_p5;
wire  signed [1:0] tmp_10_fu_1106_p7;
wire   [1:0] tmp_11_fu_1129_p1;
wire   [1:0] tmp_11_fu_1129_p3;
wire  signed [1:0] tmp_11_fu_1129_p5;
wire  signed [1:0] tmp_11_fu_1129_p7;
wire   [1:0] tmp_12_fu_1152_p1;
wire   [1:0] tmp_12_fu_1152_p3;
wire  signed [1:0] tmp_12_fu_1152_p5;
wire  signed [1:0] tmp_12_fu_1152_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_fu_166 = 7'd0;
#0 i_fu_170 = 7'd0;
#0 indvar_flatten28_fu_174 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U288(.din0(buff_C_out_q0),.din1(buff_C_out_1_q0),.din2(buff_C_out_2_q0),.din3(buff_C_out_3_q0),.def(tmp_s_fu_991_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_s_fu_991_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U289(.din0(buff_C_out_4_q0),.din1(buff_C_out_5_q0),.din2(buff_C_out_6_q0),.din3(buff_C_out_7_q0),.def(tmp_9_fu_1014_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_9_fu_1014_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U290(.din0(buff_C_out_8_q0),.din1(buff_C_out_9_q0),.din2(buff_C_out_10_q0),.din3(buff_C_out_11_q0),.def(tmp_5_fu_1037_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_5_fu_1037_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U291(.din0(buff_C_out_12_q0),.din1(buff_C_out_13_q0),.din2(buff_C_out_14_q0),.din3(buff_C_out_15_q0),.def(tmp_6_fu_1060_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_6_fu_1060_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U292(.din0(buff_C_out_16_q0),.din1(buff_C_out_17_q0),.din2(buff_C_out_18_q0),.din3(buff_C_out_19_q0),.def(tmp_7_fu_1083_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_7_fu_1083_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U293(.din0(buff_C_out_20_q0),.din1(buff_C_out_21_q0),.din2(buff_C_out_22_q0),.din3(buff_C_out_23_q0),.def(tmp_10_fu_1106_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_10_fu_1106_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U294(.din0(buff_C_out_24_q0),.din1(buff_C_out_25_q0),.din2(buff_C_out_26_q0),.din3(buff_C_out_27_q0),.def(tmp_11_fu_1129_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_11_fu_1129_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U295(.din0(buff_C_out_28_q0),.din1(buff_C_out_29_q0),.din2(buff_C_out_30_q0),.din3(buff_C_out_31_q0),.def(tmp_12_fu_1152_p9),.sel(trunc_ln38_reg_1232),.dout(tmp_12_fu_1152_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_170 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_170 <= select_ln38_fu_721_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln38_fu_676_p2 == 1'd0))) begin
            indvar_flatten28_fu_174 <= add_ln38_1_fu_682_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten28_fu_174 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_166 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_166 <= add_ln39_fu_975_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln40_1_reg_1408 <= icmp_ln40_1_fu_825_p2;
        icmp_ln40_2_reg_1412 <= icmp_ln40_2_fu_859_p2;
        icmp_ln40_3_reg_1416 <= icmp_ln40_3_fu_877_p2;
        icmp_ln40_4_reg_1420 <= icmp_ln40_4_fu_901_p2;
        icmp_ln40_5_reg_1424 <= icmp_ln40_5_fu_931_p2;
        icmp_ln40_6_reg_1428 <= icmp_ln40_6_fu_951_p2;
        icmp_ln40_7_reg_1432 <= icmp_ln40_7_fu_969_p2;
        icmp_ln40_reg_1404 <= icmp_ln40_fu_797_p2;
        trunc_ln38_reg_1232 <= trunc_ln38_fu_729_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln40_1_reg_1408_pp0_iter2_reg <= icmp_ln40_1_reg_1408;
        icmp_ln40_2_reg_1412_pp0_iter2_reg <= icmp_ln40_2_reg_1412;
        icmp_ln40_3_reg_1416_pp0_iter2_reg <= icmp_ln40_3_reg_1416;
        icmp_ln40_4_reg_1420_pp0_iter2_reg <= icmp_ln40_4_reg_1420;
        icmp_ln40_5_reg_1424_pp0_iter2_reg <= icmp_ln40_5_reg_1424;
        icmp_ln40_6_reg_1428_pp0_iter2_reg <= icmp_ln40_6_reg_1428;
        icmp_ln40_7_reg_1432_pp0_iter2_reg <= icmp_ln40_7_reg_1432;
        icmp_ln40_reg_1404_pp0_iter2_reg <= icmp_ln40_reg_1404;
        tmp_10_reg_1461 <= tmp_10_fu_1106_p11;
        tmp_11_reg_1466 <= tmp_11_fu_1129_p11;
        tmp_12_reg_1471 <= tmp_12_fu_1152_p11;
        tmp_5_reg_1446 <= tmp_5_fu_1037_p11;
        tmp_6_reg_1451 <= tmp_6_fu_1060_p11;
        tmp_7_reg_1456 <= tmp_7_fu_1083_p11;
        tmp_9_reg_1441 <= tmp_9_fu_1014_p11;
        tmp_s_reg_1436 <= tmp_s_fu_991_p11;
    end
end
always @ (*) begin
    if ((((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_0_blk_n = C_out_0_full_n;
    end else begin
        C_out_0_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd1)) begin
            C_out_0_din_local = 32'd0;
        end else if ((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd0)) begin
            C_out_0_din_local = bitcast_ln41_fu_1175_p1;
        end else begin
            C_out_0_din_local = 'bx;
        end
    end else begin
        C_out_0_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_0_write_local = 1'b1;
    end else begin
        C_out_0_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_1_blk_n = C_out_1_full_n;
    end else begin
        C_out_1_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd1)) begin
            C_out_1_din_local = 32'd0;
        end else if ((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd0)) begin
            C_out_1_din_local = bitcast_ln41_1_fu_1179_p1;
        end else begin
            C_out_1_din_local = 'bx;
        end
    end else begin
        C_out_1_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_1_write_local = 1'b1;
    end else begin
        C_out_1_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_2_blk_n = C_out_2_full_n;
    end else begin
        C_out_2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd1)) begin
            C_out_2_din_local = 32'd0;
        end else if ((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd0)) begin
            C_out_2_din_local = bitcast_ln41_2_fu_1183_p1;
        end else begin
            C_out_2_din_local = 'bx;
        end
    end else begin
        C_out_2_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_2_write_local = 1'b1;
    end else begin
        C_out_2_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_3_blk_n = C_out_3_full_n;
    end else begin
        C_out_3_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd1)) begin
            C_out_3_din_local = 32'd0;
        end else if ((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd0)) begin
            C_out_3_din_local = bitcast_ln41_3_fu_1187_p1;
        end else begin
            C_out_3_din_local = 'bx;
        end
    end else begin
        C_out_3_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_3_write_local = 1'b1;
    end else begin
        C_out_3_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_4_blk_n = C_out_4_full_n;
    end else begin
        C_out_4_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd1)) begin
            C_out_4_din_local = 32'd0;
        end else if ((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd0)) begin
            C_out_4_din_local = bitcast_ln41_4_fu_1191_p1;
        end else begin
            C_out_4_din_local = 'bx;
        end
    end else begin
        C_out_4_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_4_write_local = 1'b1;
    end else begin
        C_out_4_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd0)))) begin
        C_out_5_blk_n = C_out_5_full_n;
    end else begin
        C_out_5_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd1)) begin
            C_out_5_din_local = 32'd0;
        end else if ((icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd0)) begin
            C_out_5_din_local = bitcast_ln41_5_fu_1195_p1;
        end else begin
            C_out_5_din_local = 'bx;
        end
    end else begin
        C_out_5_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd0)))) begin
        C_out_5_write_local = 1'b1;
    end else begin
        C_out_5_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_6_reg_1428_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_6_reg_1428_pp0_iter2_reg == 1'd0)))) begin
        C_out_6_blk_n = C_out_6_full_n;
    end else begin
        C_out_6_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_6_reg_1428_pp0_iter2_reg == 1'd1)) begin
            C_out_6_din_local = 32'd0;
        end else if ((icmp_ln40_6_reg_1428_pp0_iter2_reg == 1'd0)) begin
            C_out_6_din_local = bitcast_ln41_6_fu_1199_p1;
        end else begin
            C_out_6_din_local = 'bx;
        end
    end else begin
        C_out_6_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_6_reg_1428_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_6_reg_1428_pp0_iter2_reg == 1'd0)))) begin
        C_out_6_write_local = 1'b1;
    end else begin
        C_out_6_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd0)))) begin
        C_out_7_blk_n = C_out_7_full_n;
    end else begin
        C_out_7_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd1)) begin
            C_out_7_din_local = 32'd0;
        end else if ((icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd0)) begin
            C_out_7_din_local = bitcast_ln41_7_fu_1203_p1;
        end else begin
            C_out_7_din_local = 'bx;
        end
    end else begin
        C_out_7_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd0)))) begin
        C_out_7_write_local = 1'b1;
    end else begin
        C_out_7_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln38_fu_676_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten28_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten28_load = indvar_flatten28_fu_174;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_10_ce0_local = 1'b1;
    end else begin
        buff_C_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_11_ce0_local = 1'b1;
    end else begin
        buff_C_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_12_ce0_local = 1'b1;
    end else begin
        buff_C_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_13_ce0_local = 1'b1;
    end else begin
        buff_C_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_14_ce0_local = 1'b1;
    end else begin
        buff_C_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_15_ce0_local = 1'b1;
    end else begin
        buff_C_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_16_ce0_local = 1'b1;
    end else begin
        buff_C_out_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_17_ce0_local = 1'b1;
    end else begin
        buff_C_out_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_18_ce0_local = 1'b1;
    end else begin
        buff_C_out_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_19_ce0_local = 1'b1;
    end else begin
        buff_C_out_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_20_ce0_local = 1'b1;
    end else begin
        buff_C_out_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_21_ce0_local = 1'b1;
    end else begin
        buff_C_out_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_22_ce0_local = 1'b1;
    end else begin
        buff_C_out_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_23_ce0_local = 1'b1;
    end else begin
        buff_C_out_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_24_ce0_local = 1'b1;
    end else begin
        buff_C_out_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_25_ce0_local = 1'b1;
    end else begin
        buff_C_out_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_26_ce0_local = 1'b1;
    end else begin
        buff_C_out_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_27_ce0_local = 1'b1;
    end else begin
        buff_C_out_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_28_ce0_local = 1'b1;
    end else begin
        buff_C_out_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_29_ce0_local = 1'b1;
    end else begin
        buff_C_out_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_30_ce0_local = 1'b1;
    end else begin
        buff_C_out_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_31_ce0_local = 1'b1;
    end else begin
        buff_C_out_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_8_ce0_local = 1'b1;
    end else begin
        buff_C_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_9_ce0_local = 1'b1;
    end else begin
        buff_C_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
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
assign C_out_0_din = C_out_0_din_local;
assign C_out_0_write = C_out_0_write_local;
assign C_out_1_din = C_out_1_din_local;
assign C_out_1_write = C_out_1_write_local;
assign C_out_2_din = C_out_2_din_local;
assign C_out_2_write = C_out_2_write_local;
assign C_out_3_din = C_out_3_din_local;
assign C_out_3_write = C_out_3_write_local;
assign C_out_4_din = C_out_4_din_local;
assign C_out_4_write = C_out_4_write_local;
assign C_out_5_din = C_out_5_din_local;
assign C_out_5_write = C_out_5_write_local;
assign C_out_6_din = C_out_6_din_local;
assign C_out_6_write = C_out_6_write_local;
assign C_out_7_din = C_out_7_din_local;
assign C_out_7_write = C_out_7_write_local;
assign add_ln38_1_fu_682_p2 = (ap_sig_allocacmp_indvar_flatten28_load + 10'd1);
assign add_ln38_fu_699_p2 = (i_fu_170 + 7'd1);
assign add_ln39_fu_975_p2 = (select_ln5_fu_713_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
ap_block_state4_pp0_stage0_iter3 = (((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_4_full_n)) | ((icmp_ln40_4_reg_1420_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_4_full_n)) | ((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_3_full_n)) | ((icmp_ln40_3_reg_1416_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_3_full_n)) | ((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_2_full_n)) | ((icmp_ln40_2_reg_1412_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_2_full_n)) | ((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_1_full_n)) | ((icmp_ln40_1_reg_1408_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_1_full_n)) | ((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_0_full_n)) | ((icmp_ln40_reg_1404_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_0_full_n)) | ((1'b0 == C_out_7_full_n) & (icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd1)) | ((1'b0 == C_out_7_full_n) & (icmp_ln40_7_reg_1432_pp0_iter2_reg == 1'd0)) | ((1'b0 == C_out_6_full_n) & (icmp_ln40_6_reg_1428_pp0_iter2_reg == 1'd1)) | ((1'b0 == C_out_6_full_n) & (icmp_ln40_6_reg_1428_pp0_iter2_reg== 1'd0)) | ((1'b0 == C_out_5_full_n) & (icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd1)) | ((1'b0 == C_out_5_full_n) & (icmp_ln40_5_reg_1424_pp0_iter2_reg == 1'd0)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln41_1_fu_1179_p1 = tmp_9_reg_1441;
assign bitcast_ln41_2_fu_1183_p1 = tmp_5_reg_1446;
assign bitcast_ln41_3_fu_1187_p1 = tmp_6_reg_1451;
assign bitcast_ln41_4_fu_1191_p1 = tmp_7_reg_1456;
assign bitcast_ln41_5_fu_1195_p1 = tmp_10_reg_1461;
assign bitcast_ln41_6_fu_1199_p1 = tmp_11_reg_1466;
assign bitcast_ln41_7_fu_1203_p1 = tmp_12_reg_1471;
assign bitcast_ln41_fu_1175_p1 = tmp_s_reg_1436;
assign buff_C_out_10_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_10_ce0 = buff_C_out_10_ce0_local;
assign buff_C_out_11_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_11_ce0 = buff_C_out_11_ce0_local;
assign buff_C_out_12_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_12_ce0 = buff_C_out_12_ce0_local;
assign buff_C_out_13_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_13_ce0 = buff_C_out_13_ce0_local;
assign buff_C_out_14_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_14_ce0 = buff_C_out_14_ce0_local;
assign buff_C_out_15_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_15_ce0 = buff_C_out_15_ce0_local;
assign buff_C_out_16_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_16_ce0 = buff_C_out_16_ce0_local;
assign buff_C_out_17_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_17_ce0 = buff_C_out_17_ce0_local;
assign buff_C_out_18_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_18_ce0 = buff_C_out_18_ce0_local;
assign buff_C_out_19_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_19_ce0 = buff_C_out_19_ce0_local;
assign buff_C_out_1_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_20_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_20_ce0 = buff_C_out_20_ce0_local;
assign buff_C_out_21_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_21_ce0 = buff_C_out_21_ce0_local;
assign buff_C_out_22_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_22_ce0 = buff_C_out_22_ce0_local;
assign buff_C_out_23_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_23_ce0 = buff_C_out_23_ce0_local;
assign buff_C_out_24_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_24_ce0 = buff_C_out_24_ce0_local;
assign buff_C_out_25_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_25_ce0 = buff_C_out_25_ce0_local;
assign buff_C_out_26_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_26_ce0 = buff_C_out_26_ce0_local;
assign buff_C_out_27_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_27_ce0 = buff_C_out_27_ce0_local;
assign buff_C_out_28_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_28_ce0 = buff_C_out_28_ce0_local;
assign buff_C_out_29_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_29_ce0 = buff_C_out_29_ce0_local;
assign buff_C_out_2_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_30_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_30_ce0 = buff_C_out_30_ce0_local;
assign buff_C_out_31_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_31_ce0 = buff_C_out_31_ce0_local;
assign buff_C_out_3_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_4_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_5_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_6_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_7_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_8_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_8_ce0 = buff_C_out_8_ce0_local;
assign buff_C_out_9_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_9_ce0 = buff_C_out_9_ce0_local;
assign buff_C_out_address0 = zext_ln41_fu_761_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign icmp_ln38_fu_676_p2 = ((ap_sig_allocacmp_indvar_flatten28_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_825_p2 = ((zext_ln40_fu_821_p1 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_859_p2 = ((zext_ln40_1_fu_855_p1 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_877_p2 = ((zext_ln40_2_fu_873_p1 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_4_fu_901_p2 = ((zext_ln40_3_fu_897_p1 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_5_fu_931_p2 = ((zext_ln40_4_fu_927_p1 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_6_fu_951_p2 = ((zext_ln40_5_fu_947_p1 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_7_fu_969_p2 = ((zext_ln40_6_fu_965_p1 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_797_p2 = ((select_ln5_fu_713_p3 > select_ln38_fu_721_p3) ? 1'b1 : 1'b0);
assign lshr_ln5_7_fu_733_p4 = {{select_ln5_fu_713_p3[5:3]}};
assign or_ln39_1_fu_845_p4 = {{{tmp_4_fu_831_p4}, {1'd1}}, {trunc_ln39_fu_841_p1}};
assign or_ln39_2_fu_865_p3 = {{tmp_4_fu_831_p4}, {2'd3}};
assign or_ln39_3_fu_887_p4 = {{{lshr_ln5_7_fu_733_p4}, {1'd1}}, {trunc_ln39_1_fu_883_p1}};
assign or_ln39_4_fu_915_p5 = {{{{lshr_ln5_7_fu_733_p4}, {1'd1}}, {tmp_8_fu_907_p3}}, {1'd1}};
assign or_ln39_5_fu_937_p4 = {{{lshr_ln5_7_fu_733_p4}, {2'd3}}, {trunc_ln39_fu_841_p1}};
assign or_ln39_6_fu_957_p3 = {{lshr_ln5_7_fu_733_p4}, {3'd7}};
assign or_ln_fu_813_p3 = {{tmp_3_fu_803_p4}, {1'd1}};
assign select_ln38_fu_721_p3 = ((tmp_fu_705_p3[0:0] == 1'b1) ? add_ln38_fu_699_p2 : i_fu_170);
assign select_ln5_fu_713_p3 = ((tmp_fu_705_p3[0:0] == 1'b1) ? 7'd0 : j_fu_166);
assign tmp_10_fu_1106_p9 = 'bx;
assign tmp_11_fu_1129_p9 = 'bx;
assign tmp_12_fu_1152_p9 = 'bx;
assign tmp_1_fu_743_p4 = {{select_ln38_fu_721_p3[5:2]}};
assign tmp_2_fu_753_p3 = {{tmp_1_fu_743_p4}, {lshr_ln5_7_fu_733_p4}};
assign tmp_3_fu_803_p4 = {{select_ln5_fu_713_p3[5:1]}};
assign tmp_4_fu_831_p4 = {{select_ln5_fu_713_p3[5:2]}};
assign tmp_5_fu_1037_p9 = 'bx;
assign tmp_6_fu_1060_p9 = 'bx;
assign tmp_7_fu_1083_p9 = 'bx;
assign tmp_8_fu_907_p3 = select_ln5_fu_713_p3[32'd1];
assign tmp_9_fu_1014_p9 = 'bx;
assign tmp_fu_705_p3 = j_fu_166[32'd6];
assign tmp_s_fu_991_p9 = 'bx;
assign trunc_ln38_fu_729_p1 = select_ln38_fu_721_p3[1:0];
assign trunc_ln39_1_fu_883_p1 = select_ln5_fu_713_p3[1:0];
assign trunc_ln39_fu_841_p1 = select_ln5_fu_713_p3[0:0];
assign zext_ln40_1_fu_855_p1 = or_ln39_1_fu_845_p4;
assign zext_ln40_2_fu_873_p1 = or_ln39_2_fu_865_p3;
assign zext_ln40_3_fu_897_p1 = or_ln39_3_fu_887_p4;
assign zext_ln40_4_fu_927_p1 = or_ln39_4_fu_915_p5;
assign zext_ln40_5_fu_947_p1 = or_ln39_5_fu_937_p4;
assign zext_ln40_6_fu_965_p1 = or_ln39_6_fu_957_p3;
assign zext_ln40_fu_821_p1 = or_ln_fu_813_p3;
assign zext_ln41_fu_761_p1 = tmp_2_fu_753_p3;
endmodule 