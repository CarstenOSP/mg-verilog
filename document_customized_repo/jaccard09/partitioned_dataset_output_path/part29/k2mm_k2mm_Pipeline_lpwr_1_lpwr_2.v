
module k2mm_k2mm_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,E_out_0_din,E_out_0_full_n,E_out_0_write,E_out_1_din,E_out_1_full_n,E_out_1_write,E_out_2_din,E_out_2_full_n,E_out_2_write,E_out_3_din,E_out_3_full_n,E_out_3_write,E_out_4_din,E_out_4_full_n,E_out_4_write,E_out_5_din,E_out_5_full_n,E_out_5_write,E_out_6_din,E_out_6_full_n,E_out_6_write,E_out_7_din,E_out_7_full_n,E_out_7_write,buff_E_out_address0,buff_E_out_ce0,buff_E_out_q0,buff_E_out_1_address0,buff_E_out_1_ce0,buff_E_out_1_q0,buff_E_out_2_address0,buff_E_out_2_ce0,buff_E_out_2_q0,buff_E_out_3_address0,buff_E_out_3_ce0,buff_E_out_3_q0,buff_E_out_4_address0,buff_E_out_4_ce0,buff_E_out_4_q0,buff_E_out_5_address0,buff_E_out_5_ce0,buff_E_out_5_q0,buff_E_out_6_address0,buff_E_out_6_ce0,buff_E_out_6_q0,buff_E_out_7_address0,buff_E_out_7_ce0,buff_E_out_7_q0,buff_E_out_8_address0,buff_E_out_8_ce0,buff_E_out_8_q0,buff_E_out_9_address0,buff_E_out_9_ce0,buff_E_out_9_q0,buff_E_out_10_address0,buff_E_out_10_ce0,buff_E_out_10_q0,buff_E_out_11_address0,buff_E_out_11_ce0,buff_E_out_11_q0,buff_E_out_12_address0,buff_E_out_12_ce0,buff_E_out_12_q0,buff_E_out_13_address0,buff_E_out_13_ce0,buff_E_out_13_q0,buff_E_out_14_address0,buff_E_out_14_ce0,buff_E_out_14_q0,buff_E_out_15_address0,buff_E_out_15_ce0,buff_E_out_15_q0,buff_E_out_16_address0,buff_E_out_16_ce0,buff_E_out_16_q0,buff_E_out_17_address0,buff_E_out_17_ce0,buff_E_out_17_q0,buff_E_out_18_address0,buff_E_out_18_ce0,buff_E_out_18_q0,buff_E_out_19_address0,buff_E_out_19_ce0,buff_E_out_19_q0,buff_E_out_20_address0,buff_E_out_20_ce0,buff_E_out_20_q0,buff_E_out_21_address0,buff_E_out_21_ce0,buff_E_out_21_q0,buff_E_out_22_address0,buff_E_out_22_ce0,buff_E_out_22_q0,buff_E_out_23_address0,buff_E_out_23_ce0,buff_E_out_23_q0,buff_E_out_24_address0,buff_E_out_24_ce0,buff_E_out_24_q0,buff_E_out_25_address0,buff_E_out_25_ce0,buff_E_out_25_q0,buff_E_out_26_address0,buff_E_out_26_ce0,buff_E_out_26_q0,buff_E_out_27_address0,buff_E_out_27_ce0,buff_E_out_27_q0,buff_E_out_28_address0,buff_E_out_28_ce0,buff_E_out_28_q0,buff_E_out_29_address0,buff_E_out_29_ce0,buff_E_out_29_q0,buff_E_out_30_address0,buff_E_out_30_ce0,buff_E_out_30_q0,buff_E_out_31_address0,buff_E_out_31_ce0,buff_E_out_31_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] E_out_0_din;
input   E_out_0_full_n;
output   E_out_0_write;
output  [31:0] E_out_1_din;
input   E_out_1_full_n;
output   E_out_1_write;
output  [31:0] E_out_2_din;
input   E_out_2_full_n;
output   E_out_2_write;
output  [31:0] E_out_3_din;
input   E_out_3_full_n;
output   E_out_3_write;
output  [31:0] E_out_4_din;
input   E_out_4_full_n;
output   E_out_4_write;
output  [31:0] E_out_5_din;
input   E_out_5_full_n;
output   E_out_5_write;
output  [31:0] E_out_6_din;
input   E_out_6_full_n;
output   E_out_6_write;
output  [31:0] E_out_7_din;
input   E_out_7_full_n;
output   E_out_7_write;
output  [6:0] buff_E_out_address0;
output   buff_E_out_ce0;
input  [31:0] buff_E_out_q0;
output  [6:0] buff_E_out_1_address0;
output   buff_E_out_1_ce0;
input  [31:0] buff_E_out_1_q0;
output  [6:0] buff_E_out_2_address0;
output   buff_E_out_2_ce0;
input  [31:0] buff_E_out_2_q0;
output  [6:0] buff_E_out_3_address0;
output   buff_E_out_3_ce0;
input  [31:0] buff_E_out_3_q0;
output  [6:0] buff_E_out_4_address0;
output   buff_E_out_4_ce0;
input  [31:0] buff_E_out_4_q0;
output  [6:0] buff_E_out_5_address0;
output   buff_E_out_5_ce0;
input  [31:0] buff_E_out_5_q0;
output  [6:0] buff_E_out_6_address0;
output   buff_E_out_6_ce0;
input  [31:0] buff_E_out_6_q0;
output  [6:0] buff_E_out_7_address0;
output   buff_E_out_7_ce0;
input  [31:0] buff_E_out_7_q0;
output  [6:0] buff_E_out_8_address0;
output   buff_E_out_8_ce0;
input  [31:0] buff_E_out_8_q0;
output  [6:0] buff_E_out_9_address0;
output   buff_E_out_9_ce0;
input  [31:0] buff_E_out_9_q0;
output  [6:0] buff_E_out_10_address0;
output   buff_E_out_10_ce0;
input  [31:0] buff_E_out_10_q0;
output  [6:0] buff_E_out_11_address0;
output   buff_E_out_11_ce0;
input  [31:0] buff_E_out_11_q0;
output  [6:0] buff_E_out_12_address0;
output   buff_E_out_12_ce0;
input  [31:0] buff_E_out_12_q0;
output  [6:0] buff_E_out_13_address0;
output   buff_E_out_13_ce0;
input  [31:0] buff_E_out_13_q0;
output  [6:0] buff_E_out_14_address0;
output   buff_E_out_14_ce0;
input  [31:0] buff_E_out_14_q0;
output  [6:0] buff_E_out_15_address0;
output   buff_E_out_15_ce0;
input  [31:0] buff_E_out_15_q0;
output  [6:0] buff_E_out_16_address0;
output   buff_E_out_16_ce0;
input  [31:0] buff_E_out_16_q0;
output  [6:0] buff_E_out_17_address0;
output   buff_E_out_17_ce0;
input  [31:0] buff_E_out_17_q0;
output  [6:0] buff_E_out_18_address0;
output   buff_E_out_18_ce0;
input  [31:0] buff_E_out_18_q0;
output  [6:0] buff_E_out_19_address0;
output   buff_E_out_19_ce0;
input  [31:0] buff_E_out_19_q0;
output  [6:0] buff_E_out_20_address0;
output   buff_E_out_20_ce0;
input  [31:0] buff_E_out_20_q0;
output  [6:0] buff_E_out_21_address0;
output   buff_E_out_21_ce0;
input  [31:0] buff_E_out_21_q0;
output  [6:0] buff_E_out_22_address0;
output   buff_E_out_22_ce0;
input  [31:0] buff_E_out_22_q0;
output  [6:0] buff_E_out_23_address0;
output   buff_E_out_23_ce0;
input  [31:0] buff_E_out_23_q0;
output  [6:0] buff_E_out_24_address0;
output   buff_E_out_24_ce0;
input  [31:0] buff_E_out_24_q0;
output  [6:0] buff_E_out_25_address0;
output   buff_E_out_25_ce0;
input  [31:0] buff_E_out_25_q0;
output  [6:0] buff_E_out_26_address0;
output   buff_E_out_26_ce0;
input  [31:0] buff_E_out_26_q0;
output  [6:0] buff_E_out_27_address0;
output   buff_E_out_27_ce0;
input  [31:0] buff_E_out_27_q0;
output  [6:0] buff_E_out_28_address0;
output   buff_E_out_28_ce0;
input  [31:0] buff_E_out_28_q0;
output  [6:0] buff_E_out_29_address0;
output   buff_E_out_29_ce0;
input  [31:0] buff_E_out_29_q0;
output  [6:0] buff_E_out_30_address0;
output   buff_E_out_30_ce0;
input  [31:0] buff_E_out_30_q0;
output  [6:0] buff_E_out_31_address0;
output   buff_E_out_31_ce0;
input  [31:0] buff_E_out_31_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln50_fu_648_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    E_out_0_blk_n;
wire    ap_block_pp0_stage0;
reg    E_out_1_blk_n;
reg    E_out_2_blk_n;
reg    E_out_3_blk_n;
reg    E_out_4_blk_n;
reg    E_out_5_blk_n;
reg    E_out_6_blk_n;
reg    E_out_7_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln50_fu_701_p1;
reg   [1:0] trunc_ln50_reg_1026;
wire   [31:0] tmp_2_fu_785_p11;
reg   [31:0] tmp_2_reg_1198;
wire   [31:0] tmp_3_fu_808_p11;
reg   [31:0] tmp_3_reg_1203;
wire   [31:0] tmp_4_fu_831_p11;
reg   [31:0] tmp_4_reg_1208;
wire   [31:0] tmp_5_fu_854_p11;
reg   [31:0] tmp_5_reg_1213;
wire   [31:0] tmp_6_fu_877_p11;
reg   [31:0] tmp_6_reg_1218;
wire   [31:0] tmp_7_fu_900_p11;
reg   [31:0] tmp_7_reg_1223;
wire   [31:0] tmp_8_fu_923_p11;
reg   [31:0] tmp_8_reg_1228;
wire   [31:0] tmp_9_fu_946_p11;
reg   [31:0] tmp_9_reg_1233;
wire   [63:0] zext_ln52_fu_733_p1;
reg   [6:0] j_fu_146;
wire   [6:0] add_ln51_fu_769_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_150;
wire   [6:0] select_ln50_fu_693_p3;
reg   [9:0] indvar_flatten37_fu_154;
wire   [9:0] add_ln50_1_fu_654_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten37_load;
wire   [31:0] bitcast_ln52_fu_969_p1;
reg    ap_block_pp0_stage0_01001;
reg    E_out_0_write_local;
wire   [31:0] bitcast_ln52_1_fu_973_p1;
reg    E_out_1_write_local;
wire   [31:0] bitcast_ln52_2_fu_977_p1;
reg    E_out_2_write_local;
wire   [31:0] bitcast_ln52_3_fu_981_p1;
reg    E_out_3_write_local;
wire   [31:0] bitcast_ln52_4_fu_985_p1;
reg    E_out_4_write_local;
wire   [31:0] bitcast_ln52_5_fu_989_p1;
reg    E_out_5_write_local;
wire   [31:0] bitcast_ln52_6_fu_993_p1;
reg    E_out_6_write_local;
wire   [31:0] bitcast_ln52_7_fu_997_p1;
reg    E_out_7_write_local;
reg    buff_E_out_ce0_local;
reg    buff_E_out_1_ce0_local;
reg    buff_E_out_2_ce0_local;
reg    buff_E_out_3_ce0_local;
reg    buff_E_out_4_ce0_local;
reg    buff_E_out_5_ce0_local;
reg    buff_E_out_6_ce0_local;
reg    buff_E_out_7_ce0_local;
reg    buff_E_out_8_ce0_local;
reg    buff_E_out_9_ce0_local;
reg    buff_E_out_10_ce0_local;
reg    buff_E_out_11_ce0_local;
reg    buff_E_out_12_ce0_local;
reg    buff_E_out_13_ce0_local;
reg    buff_E_out_14_ce0_local;
reg    buff_E_out_15_ce0_local;
reg    buff_E_out_16_ce0_local;
reg    buff_E_out_17_ce0_local;
reg    buff_E_out_18_ce0_local;
reg    buff_E_out_19_ce0_local;
reg    buff_E_out_20_ce0_local;
reg    buff_E_out_21_ce0_local;
reg    buff_E_out_22_ce0_local;
reg    buff_E_out_23_ce0_local;
reg    buff_E_out_24_ce0_local;
reg    buff_E_out_25_ce0_local;
reg    buff_E_out_26_ce0_local;
reg    buff_E_out_27_ce0_local;
reg    buff_E_out_28_ce0_local;
reg    buff_E_out_29_ce0_local;
reg    buff_E_out_30_ce0_local;
reg    buff_E_out_31_ce0_local;
wire   [0:0] tmp_fu_677_p3;
wire   [6:0] add_ln50_fu_671_p2;
wire   [6:0] select_ln6_fu_685_p3;
wire   [3:0] tmp_s_fu_715_p4;
wire   [2:0] lshr_ln6_8_fu_705_p4;
wire   [6:0] tmp_1_fu_725_p3;
wire   [31:0] tmp_2_fu_785_p9;
wire   [31:0] tmp_3_fu_808_p9;
wire   [31:0] tmp_4_fu_831_p9;
wire   [31:0] tmp_5_fu_854_p9;
wire   [31:0] tmp_6_fu_877_p9;
wire   [31:0] tmp_7_fu_900_p9;
wire   [31:0] tmp_8_fu_923_p9;
wire   [31:0] tmp_9_fu_946_p9;
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
wire   [1:0] tmp_2_fu_785_p1;
wire   [1:0] tmp_2_fu_785_p3;
wire  signed [1:0] tmp_2_fu_785_p5;
wire  signed [1:0] tmp_2_fu_785_p7;
wire   [1:0] tmp_3_fu_808_p1;
wire   [1:0] tmp_3_fu_808_p3;
wire  signed [1:0] tmp_3_fu_808_p5;
wire  signed [1:0] tmp_3_fu_808_p7;
wire   [1:0] tmp_4_fu_831_p1;
wire   [1:0] tmp_4_fu_831_p3;
wire  signed [1:0] tmp_4_fu_831_p5;
wire  signed [1:0] tmp_4_fu_831_p7;
wire   [1:0] tmp_5_fu_854_p1;
wire   [1:0] tmp_5_fu_854_p3;
wire  signed [1:0] tmp_5_fu_854_p5;
wire  signed [1:0] tmp_5_fu_854_p7;
wire   [1:0] tmp_6_fu_877_p1;
wire   [1:0] tmp_6_fu_877_p3;
wire  signed [1:0] tmp_6_fu_877_p5;
wire  signed [1:0] tmp_6_fu_877_p7;
wire   [1:0] tmp_7_fu_900_p1;
wire   [1:0] tmp_7_fu_900_p3;
wire  signed [1:0] tmp_7_fu_900_p5;
wire  signed [1:0] tmp_7_fu_900_p7;
wire   [1:0] tmp_8_fu_923_p1;
wire   [1:0] tmp_8_fu_923_p3;
wire  signed [1:0] tmp_8_fu_923_p5;
wire  signed [1:0] tmp_8_fu_923_p7;
wire   [1:0] tmp_9_fu_946_p1;
wire   [1:0] tmp_9_fu_946_p3;
wire  signed [1:0] tmp_9_fu_946_p5;
wire  signed [1:0] tmp_9_fu_946_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_fu_146 = 7'd0;
#0 i_fu_150 = 7'd0;
#0 indvar_flatten37_fu_154 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1678(.din0(buff_E_out_q0),.din1(buff_E_out_1_q0),.din2(buff_E_out_2_q0),.din3(buff_E_out_3_q0),.def(tmp_2_fu_785_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_2_fu_785_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1679(.din0(buff_E_out_4_q0),.din1(buff_E_out_5_q0),.din2(buff_E_out_6_q0),.din3(buff_E_out_7_q0),.def(tmp_3_fu_808_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_3_fu_808_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1680(.din0(buff_E_out_8_q0),.din1(buff_E_out_9_q0),.din2(buff_E_out_10_q0),.din3(buff_E_out_11_q0),.def(tmp_4_fu_831_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_4_fu_831_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1681(.din0(buff_E_out_12_q0),.din1(buff_E_out_13_q0),.din2(buff_E_out_14_q0),.din3(buff_E_out_15_q0),.def(tmp_5_fu_854_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_5_fu_854_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1682(.din0(buff_E_out_16_q0),.din1(buff_E_out_17_q0),.din2(buff_E_out_18_q0),.din3(buff_E_out_19_q0),.def(tmp_6_fu_877_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_6_fu_877_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1683(.din0(buff_E_out_20_q0),.din1(buff_E_out_21_q0),.din2(buff_E_out_22_q0),.din3(buff_E_out_23_q0),.def(tmp_7_fu_900_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_7_fu_900_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1684(.din0(buff_E_out_24_q0),.din1(buff_E_out_25_q0),.din2(buff_E_out_26_q0),.din3(buff_E_out_27_q0),.def(tmp_8_fu_923_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_8_fu_923_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1685(.din0(buff_E_out_28_q0),.din1(buff_E_out_29_q0),.din2(buff_E_out_30_q0),.din3(buff_E_out_31_q0),.def(tmp_9_fu_946_p9),.sel(trunc_ln50_reg_1026),.dout(tmp_9_fu_946_p11));
k2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_150 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_150 <= select_ln50_fu_693_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln50_fu_648_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten37_fu_154 <= add_ln50_1_fu_654_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten37_fu_154 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_146 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_146 <= add_ln51_fu_769_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln50_reg_1026 <= trunc_ln50_fu_701_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_2_reg_1198 <= tmp_2_fu_785_p11;
        tmp_3_reg_1203 <= tmp_3_fu_808_p11;
        tmp_4_reg_1208 <= tmp_4_fu_831_p11;
        tmp_5_reg_1213 <= tmp_5_fu_854_p11;
        tmp_6_reg_1218 <= tmp_6_fu_877_p11;
        tmp_7_reg_1223 <= tmp_7_fu_900_p11;
        tmp_8_reg_1228 <= tmp_8_fu_923_p11;
        tmp_9_reg_1233 <= tmp_9_fu_946_p11;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_0_blk_n = E_out_0_full_n;
    end else begin
        E_out_0_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_0_write_local = 1'b1;
    end else begin
        E_out_0_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_1_blk_n = E_out_1_full_n;
    end else begin
        E_out_1_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_1_write_local = 1'b1;
    end else begin
        E_out_1_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_2_blk_n = E_out_2_full_n;
    end else begin
        E_out_2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_2_write_local = 1'b1;
    end else begin
        E_out_2_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_3_blk_n = E_out_3_full_n;
    end else begin
        E_out_3_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_3_write_local = 1'b1;
    end else begin
        E_out_3_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_4_blk_n = E_out_4_full_n;
    end else begin
        E_out_4_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_4_write_local = 1'b1;
    end else begin
        E_out_4_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_5_blk_n = E_out_5_full_n;
    end else begin
        E_out_5_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_5_write_local = 1'b1;
    end else begin
        E_out_5_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_6_blk_n = E_out_6_full_n;
    end else begin
        E_out_6_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_6_write_local = 1'b1;
    end else begin
        E_out_6_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_7_blk_n = E_out_7_full_n;
    end else begin
        E_out_7_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_7_write_local = 1'b1;
    end else begin
        E_out_7_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln50_fu_648_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten37_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten37_load = indvar_flatten37_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_10_ce0_local = 1'b1;
    end else begin
        buff_E_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_11_ce0_local = 1'b1;
    end else begin
        buff_E_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_12_ce0_local = 1'b1;
    end else begin
        buff_E_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_13_ce0_local = 1'b1;
    end else begin
        buff_E_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_14_ce0_local = 1'b1;
    end else begin
        buff_E_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_15_ce0_local = 1'b1;
    end else begin
        buff_E_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_16_ce0_local = 1'b1;
    end else begin
        buff_E_out_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_17_ce0_local = 1'b1;
    end else begin
        buff_E_out_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_18_ce0_local = 1'b1;
    end else begin
        buff_E_out_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_19_ce0_local = 1'b1;
    end else begin
        buff_E_out_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_1_ce0_local = 1'b1;
    end else begin
        buff_E_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_20_ce0_local = 1'b1;
    end else begin
        buff_E_out_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_21_ce0_local = 1'b1;
    end else begin
        buff_E_out_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_22_ce0_local = 1'b1;
    end else begin
        buff_E_out_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_23_ce0_local = 1'b1;
    end else begin
        buff_E_out_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_24_ce0_local = 1'b1;
    end else begin
        buff_E_out_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_25_ce0_local = 1'b1;
    end else begin
        buff_E_out_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_26_ce0_local = 1'b1;
    end else begin
        buff_E_out_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_27_ce0_local = 1'b1;
    end else begin
        buff_E_out_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_28_ce0_local = 1'b1;
    end else begin
        buff_E_out_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_29_ce0_local = 1'b1;
    end else begin
        buff_E_out_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_2_ce0_local = 1'b1;
    end else begin
        buff_E_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_30_ce0_local = 1'b1;
    end else begin
        buff_E_out_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_31_ce0_local = 1'b1;
    end else begin
        buff_E_out_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_3_ce0_local = 1'b1;
    end else begin
        buff_E_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_4_ce0_local = 1'b1;
    end else begin
        buff_E_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_5_ce0_local = 1'b1;
    end else begin
        buff_E_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_6_ce0_local = 1'b1;
    end else begin
        buff_E_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_7_ce0_local = 1'b1;
    end else begin
        buff_E_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_8_ce0_local = 1'b1;
    end else begin
        buff_E_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_9_ce0_local = 1'b1;
    end else begin
        buff_E_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_ce0_local = 1'b1;
    end else begin
        buff_E_out_ce0_local = 1'b0;
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
assign E_out_0_din = bitcast_ln52_fu_969_p1;
assign E_out_0_write = E_out_0_write_local;
assign E_out_1_din = bitcast_ln52_1_fu_973_p1;
assign E_out_1_write = E_out_1_write_local;
assign E_out_2_din = bitcast_ln52_2_fu_977_p1;
assign E_out_2_write = E_out_2_write_local;
assign E_out_3_din = bitcast_ln52_3_fu_981_p1;
assign E_out_3_write = E_out_3_write_local;
assign E_out_4_din = bitcast_ln52_4_fu_985_p1;
assign E_out_4_write = E_out_4_write_local;
assign E_out_5_din = bitcast_ln52_5_fu_989_p1;
assign E_out_5_write = E_out_5_write_local;
assign E_out_6_din = bitcast_ln52_6_fu_993_p1;
assign E_out_6_write = E_out_6_write_local;
assign E_out_7_din = bitcast_ln52_7_fu_997_p1;
assign E_out_7_write = E_out_7_write_local;
assign add_ln50_1_fu_654_p2 = (ap_sig_allocacmp_indvar_flatten37_load + 10'd1);
assign add_ln50_fu_671_p2 = (i_fu_150 + 7'd1);
assign add_ln51_fu_769_p2 = (select_ln6_fu_685_p3 + 7'd8);
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
    ap_block_state4_pp0_stage0_iter3 = ((1'b0 == E_out_7_full_n) | (1'b0 == E_out_6_full_n) | (1'b0 == E_out_5_full_n) | (1'b0 == E_out_4_full_n) | (1'b0 == E_out_3_full_n) | (1'b0 == E_out_2_full_n) | (1'b0 == E_out_1_full_n) | (1'b0 == E_out_0_full_n));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln52_1_fu_973_p1 = tmp_3_reg_1203;
assign bitcast_ln52_2_fu_977_p1 = tmp_4_reg_1208;
assign bitcast_ln52_3_fu_981_p1 = tmp_5_reg_1213;
assign bitcast_ln52_4_fu_985_p1 = tmp_6_reg_1218;
assign bitcast_ln52_5_fu_989_p1 = tmp_7_reg_1223;
assign bitcast_ln52_6_fu_993_p1 = tmp_8_reg_1228;
assign bitcast_ln52_7_fu_997_p1 = tmp_9_reg_1233;
assign bitcast_ln52_fu_969_p1 = tmp_2_reg_1198;
assign buff_E_out_10_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_10_ce0 = buff_E_out_10_ce0_local;
assign buff_E_out_11_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_11_ce0 = buff_E_out_11_ce0_local;
assign buff_E_out_12_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_12_ce0 = buff_E_out_12_ce0_local;
assign buff_E_out_13_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_13_ce0 = buff_E_out_13_ce0_local;
assign buff_E_out_14_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_14_ce0 = buff_E_out_14_ce0_local;
assign buff_E_out_15_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_15_ce0 = buff_E_out_15_ce0_local;
assign buff_E_out_16_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_16_ce0 = buff_E_out_16_ce0_local;
assign buff_E_out_17_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_17_ce0 = buff_E_out_17_ce0_local;
assign buff_E_out_18_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_18_ce0 = buff_E_out_18_ce0_local;
assign buff_E_out_19_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_19_ce0 = buff_E_out_19_ce0_local;
assign buff_E_out_1_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_1_ce0 = buff_E_out_1_ce0_local;
assign buff_E_out_20_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_20_ce0 = buff_E_out_20_ce0_local;
assign buff_E_out_21_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_21_ce0 = buff_E_out_21_ce0_local;
assign buff_E_out_22_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_22_ce0 = buff_E_out_22_ce0_local;
assign buff_E_out_23_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_23_ce0 = buff_E_out_23_ce0_local;
assign buff_E_out_24_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_24_ce0 = buff_E_out_24_ce0_local;
assign buff_E_out_25_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_25_ce0 = buff_E_out_25_ce0_local;
assign buff_E_out_26_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_26_ce0 = buff_E_out_26_ce0_local;
assign buff_E_out_27_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_27_ce0 = buff_E_out_27_ce0_local;
assign buff_E_out_28_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_28_ce0 = buff_E_out_28_ce0_local;
assign buff_E_out_29_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_29_ce0 = buff_E_out_29_ce0_local;
assign buff_E_out_2_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_2_ce0 = buff_E_out_2_ce0_local;
assign buff_E_out_30_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_30_ce0 = buff_E_out_30_ce0_local;
assign buff_E_out_31_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_31_ce0 = buff_E_out_31_ce0_local;
assign buff_E_out_3_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_3_ce0 = buff_E_out_3_ce0_local;
assign buff_E_out_4_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_4_ce0 = buff_E_out_4_ce0_local;
assign buff_E_out_5_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_5_ce0 = buff_E_out_5_ce0_local;
assign buff_E_out_6_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_6_ce0 = buff_E_out_6_ce0_local;
assign buff_E_out_7_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_7_ce0 = buff_E_out_7_ce0_local;
assign buff_E_out_8_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_8_ce0 = buff_E_out_8_ce0_local;
assign buff_E_out_9_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_9_ce0 = buff_E_out_9_ce0_local;
assign buff_E_out_address0 = zext_ln52_fu_733_p1;
assign buff_E_out_ce0 = buff_E_out_ce0_local;
assign icmp_ln50_fu_648_p2 = ((ap_sig_allocacmp_indvar_flatten37_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln6_8_fu_705_p4 = {{select_ln6_fu_685_p3[5:3]}};
assign select_ln50_fu_693_p3 = ((tmp_fu_677_p3[0:0] == 1'b1) ? add_ln50_fu_671_p2 : i_fu_150);
assign select_ln6_fu_685_p3 = ((tmp_fu_677_p3[0:0] == 1'b1) ? 7'd0 : j_fu_146);
assign tmp_1_fu_725_p3 = {{tmp_s_fu_715_p4}, {lshr_ln6_8_fu_705_p4}};
assign tmp_2_fu_785_p9 = 'bx;
assign tmp_3_fu_808_p9 = 'bx;
assign tmp_4_fu_831_p9 = 'bx;
assign tmp_5_fu_854_p9 = 'bx;
assign tmp_6_fu_877_p9 = 'bx;
assign tmp_7_fu_900_p9 = 'bx;
assign tmp_8_fu_923_p9 = 'bx;
assign tmp_9_fu_946_p9 = 'bx;
assign tmp_fu_677_p3 = j_fu_146[32'd6];
assign tmp_s_fu_715_p4 = {{select_ln50_fu_693_p3[5:2]}};
assign trunc_ln50_fu_701_p1 = select_ln50_fu_693_p3[1:0];
assign zext_ln52_fu_733_p1 = tmp_1_fu_725_p3;
endmodule 
