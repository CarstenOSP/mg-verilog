
module forward_dataflow_in_loop_VITIS_LOOP_11582_1_Loop_VITIS_LOOP_11265_1_proc22_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln11585,mul5_i588,mul_ln11269,v8997_address0,v8997_ce0,v8997_we0,v8997_d0,v8997_1_address0,v8997_1_ce0,v8997_1_we0,v8997_1_d0,v8997_2_address0,v8997_2_ce0,v8997_2_we0,v8997_2_d0,v8997_3_address0,v8997_3_ce0,v8997_3_we0,v8997_3_d0,thr_add,v9000_0_0_address0,v9000_0_0_ce0,v9000_0_0_q0,v9000_0_1_address0,v9000_0_1_ce0,v9000_0_1_q0,v9000_0_2_address0,v9000_0_2_ce0,v9000_0_2_q0,v9000_0_3_address0,v9000_0_3_ce0,v9000_0_3_q0,v9000_1_0_address0,v9000_1_0_ce0,v9000_1_0_q0,v9000_1_1_address0,v9000_1_1_ce0,v9000_1_1_q0,v9000_1_2_address0,v9000_1_2_ce0,v9000_1_2_q0,v9000_1_3_address0,v9000_1_3_ce0,v9000_1_3_q0,v9000_2_0_address0,v9000_2_0_ce0,v9000_2_0_q0,v9000_2_1_address0,v9000_2_1_ce0,v9000_2_1_q0,v9000_2_2_address0,v9000_2_2_ce0,v9000_2_2_q0,v9000_2_3_address0,v9000_2_3_ce0,v9000_2_3_q0,v9000_3_0_address0,v9000_3_0_ce0,v9000_3_0_q0,v9000_3_1_address0,v9000_3_1_ce0,v9000_3_1_q0,v9000_3_2_address0,v9000_3_2_ce0,v9000_3_2_q0,v9000_3_3_address0,v9000_3_3_ce0,v9000_3_3_q0,empty_79,empty);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] zext_ln11585;
input  [7:0] mul5_i588;
input  [6:0] mul_ln11269;
output  [6:0] v8997_address0;
output   v8997_ce0;
output   v8997_we0;
output  [7:0] v8997_d0;
output  [6:0] v8997_1_address0;
output   v8997_1_ce0;
output   v8997_1_we0;
output  [7:0] v8997_1_d0;
output  [6:0] v8997_2_address0;
output   v8997_2_ce0;
output   v8997_2_we0;
output  [7:0] v8997_2_d0;
output  [6:0] v8997_3_address0;
output   v8997_3_ce0;
output   v8997_3_we0;
output  [7:0] v8997_3_d0;
input  [7:0] thr_add;
output  [13:0] v9000_0_0_address0;
output   v9000_0_0_ce0;
input  [7:0] v9000_0_0_q0;
output  [13:0] v9000_0_1_address0;
output   v9000_0_1_ce0;
input  [7:0] v9000_0_1_q0;
output  [13:0] v9000_0_2_address0;
output   v9000_0_2_ce0;
input  [7:0] v9000_0_2_q0;
output  [13:0] v9000_0_3_address0;
output   v9000_0_3_ce0;
input  [7:0] v9000_0_3_q0;
output  [13:0] v9000_1_0_address0;
output   v9000_1_0_ce0;
input  [7:0] v9000_1_0_q0;
output  [13:0] v9000_1_1_address0;
output   v9000_1_1_ce0;
input  [7:0] v9000_1_1_q0;
output  [13:0] v9000_1_2_address0;
output   v9000_1_2_ce0;
input  [7:0] v9000_1_2_q0;
output  [13:0] v9000_1_3_address0;
output   v9000_1_3_ce0;
input  [7:0] v9000_1_3_q0;
output  [13:0] v9000_2_0_address0;
output   v9000_2_0_ce0;
input  [7:0] v9000_2_0_q0;
output  [13:0] v9000_2_1_address0;
output   v9000_2_1_ce0;
input  [7:0] v9000_2_1_q0;
output  [13:0] v9000_2_2_address0;
output   v9000_2_2_ce0;
input  [7:0] v9000_2_2_q0;
output  [13:0] v9000_2_3_address0;
output   v9000_2_3_ce0;
input  [7:0] v9000_2_3_q0;
output  [13:0] v9000_3_0_address0;
output   v9000_3_0_ce0;
input  [7:0] v9000_3_0_q0;
output  [13:0] v9000_3_1_address0;
output   v9000_3_1_ce0;
input  [7:0] v9000_3_1_q0;
output  [13:0] v9000_3_2_address0;
output   v9000_3_2_ce0;
input  [7:0] v9000_3_2_q0;
output  [13:0] v9000_3_3_address0;
output   v9000_3_3_ce0;
input  [7:0] v9000_3_3_q0;
input  [1:0] empty_79;
input  [1:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11265_fu_1202_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] tmp_230_reg_1595;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_231_reg_1603;
wire   [7:0] mul_ln11269_cast1_fu_1046_p1;
reg   [7:0] mul_ln11269_cast1_reg_1620;
wire   [8:0] mul_ln11269_cast_fu_1050_p1;
reg   [8:0] mul_ln11269_cast_reg_1625;
wire   [4:0] select_ln11265_fu_1084_p3;
reg   [4:0] select_ln11265_reg_1630;
reg   [6:0] p_cast_reg_1640;
reg   [5:0] tmp_109_reg_1645;
reg   [3:0] lshr_ln21_reg_1650;
reg   [3:0] lshr_ln21_reg_1650_pp0_iter1_reg;
wire   [0:0] icmp_ln11266_fu_1196_p2;
reg   [0:0] icmp_ln11266_reg_1655;
reg   [0:0] icmp_ln11265_reg_1660;
wire   [7:0] tmp_717_i_fu_1466_p11;
reg   [7:0] tmp_717_i_reg_1989;
wire   [7:0] tmp_722_i_fu_1489_p11;
reg   [7:0] tmp_722_i_reg_1994;
wire   [7:0] tmp_727_i_fu_1512_p11;
reg   [7:0] tmp_727_i_reg_1999;
wire   [7:0] tmp_732_i_fu_1535_p11;
reg   [7:0] tmp_732_i_reg_2004;
reg   [0:0] ap_phi_mux_icmp_ln11266417_phi_fu_851_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11269_fu_1345_p1;
wire   [63:0] zext_ln11273_2_fu_1371_p1;
wire   [63:0] zext_ln11271_1_fu_1417_p1;
wire   [63:0] zext_ln11275_2_fu_1443_p1;
wire   [63:0] zext_ln11275_1_fu_1558_p1;
reg   [6:0] indvar_flatten414_fu_156;
wire   [6:0] add_ln11265_1_fu_1190_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten414_load;
reg   [4:0] v8842415_fu_160;
wire   [4:0] v8842_fu_1092_p3;
reg   [4:0] ap_sig_allocacmp_v8842415_load;
reg   [4:0] v8843416_fu_164;
wire   [4:0] v8843_fu_1184_p2;
reg   [4:0] ap_sig_allocacmp_v8843416_load;
reg    v9000_0_0_ce0_local;
reg   [13:0] v9000_0_0_address0_local;
reg    v9000_0_1_ce0_local;
reg   [13:0] v9000_0_1_address0_local;
reg    v9000_0_2_ce0_local;
reg   [13:0] v9000_0_2_address0_local;
reg    v9000_0_3_ce0_local;
reg   [13:0] v9000_0_3_address0_local;
reg    v9000_1_0_ce0_local;
reg   [13:0] v9000_1_0_address0_local;
reg    v9000_1_1_ce0_local;
reg   [13:0] v9000_1_1_address0_local;
reg    v9000_1_2_ce0_local;
reg   [13:0] v9000_1_2_address0_local;
reg    v9000_1_3_ce0_local;
reg   [13:0] v9000_1_3_address0_local;
reg    v9000_2_0_ce0_local;
reg   [13:0] v9000_2_0_address0_local;
reg    v9000_2_1_ce0_local;
reg   [13:0] v9000_2_1_address0_local;
reg    v9000_2_2_ce0_local;
reg   [13:0] v9000_2_2_address0_local;
reg    v9000_2_3_ce0_local;
reg   [13:0] v9000_2_3_address0_local;
reg    v9000_3_0_ce0_local;
reg   [13:0] v9000_3_0_address0_local;
reg    v9000_3_1_ce0_local;
reg   [13:0] v9000_3_1_address0_local;
reg    v9000_3_2_ce0_local;
reg   [13:0] v9000_3_2_address0_local;
reg    v9000_3_3_ce0_local;
reg   [13:0] v9000_3_3_address0_local;
reg    v8997_3_we0_local;
reg    v8997_3_ce0_local;
reg    v8997_2_we0_local;
reg    v8997_2_ce0_local;
reg    v8997_1_we0_local;
reg    v8997_1_ce0_local;
reg    v8997_we0_local;
reg    v8997_ce0_local;
wire   [7:0] grp_fu_858_p9;
wire   [7:0] grp_fu_881_p9;
wire   [7:0] grp_fu_904_p9;
wire   [7:0] grp_fu_927_p9;
wire   [7:0] grp_fu_950_p9;
wire   [7:0] grp_fu_973_p9;
wire   [7:0] grp_fu_996_p9;
wire   [7:0] grp_fu_1019_p9;
wire   [4:0] add_ln11265_fu_1078_p2;
wire   [3:0] lshr_ln_fu_1100_p4;
wire   [5:0] tmp_s_fu_1114_p3;
wire   [5:0] zext_ln11585_cast_fu_1042_p1;
wire   [5:0] tmp_fu_1122_p2;
wire   [7:0] tmp_cast_fu_1128_p1;
wire   [7:0] empty_228_fu_1132_p2;
wire   [8:0] p_cast5_i_fu_1138_p1;
wire   [8:0] empty_229_fu_1142_p2;
wire   [7:0] empty_230_fu_1158_p2;
wire  signed [7:0] sext_ln11269_fu_1223_p1;
wire   [8:0] zext_ln11269_1_fu_1226_p1;
wire   [8:0] add_ln11269_fu_1230_p2;
wire   [7:0] trunc_ln11269_fu_1235_p1;
wire   [11:0] tmp_232_fu_1239_p3;
wire   [13:0] tmp_233_fu_1247_p3;
wire   [13:0] zext_ln11269_2_fu_1255_p1;
wire   [7:0] zext_ln11273_fu_1265_p1;
wire   [7:0] add_ln11273_fu_1268_p2;
wire   [10:0] tmp_234_fu_1281_p3;
wire   [13:0] p_shl_fu_1273_p3;
wire   [13:0] zext_ln11273_1_fu_1289_p1;
wire   [5:0] shl_ln_fu_1299_p3;
wire   [7:0] zext_ln11268_fu_1306_p1;
wire   [7:0] add_ln11268_fu_1310_p2;
wire   [8:0] zext_ln11268_1_fu_1315_p1;
wire   [8:0] add_ln11268_1_fu_1319_p2;
wire   [6:0] trunc_ln_fu_1325_p4;
wire   [13:0] sub_ln11269_fu_1259_p2;
wire  signed [13:0] sext_ln11269_1_fu_1335_p1;
wire   [13:0] add_ln11269_1_fu_1339_p2;
wire   [13:0] sub_ln11273_fu_1293_p2;
wire   [13:0] add_ln11273_1_fu_1365_p2;
wire   [7:0] add_ln11270_fu_1391_p2;
wire   [5:0] lshr_ln22_fu_1397_p4;
wire   [13:0] zext_ln11271_fu_1407_p1;
wire   [13:0] add_ln11271_fu_1411_p2;
wire   [13:0] add_ln11275_1_fu_1437_p2;
wire   [7:0] grp_fu_858_p11;
wire   [7:0] grp_fu_881_p11;
wire   [7:0] grp_fu_904_p11;
wire   [7:0] grp_fu_927_p11;
wire   [7:0] tmp_717_i_fu_1466_p9;
wire   [7:0] grp_fu_950_p11;
wire   [7:0] grp_fu_973_p11;
wire   [7:0] grp_fu_996_p11;
wire   [7:0] grp_fu_1019_p11;
wire   [7:0] tmp_722_i_fu_1489_p9;
wire   [7:0] tmp_727_i_fu_1512_p9;
wire   [7:0] tmp_732_i_fu_1535_p9;
wire   [6:0] grp_fu_1565_p3;
wire   [3:0] grp_fu_1565_p0;
wire   [3:0] grp_fu_1565_p1;
wire   [3:0] grp_fu_1565_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [6:0] grp_fu_1565_p00;
wire   [6:0] grp_fu_1565_p20;
reg    ap_condition_966;
reg    ap_condition_371;
wire   [1:0] grp_fu_858_p1;
wire  signed [1:0] grp_fu_858_p3;
wire  signed [1:0] grp_fu_858_p5;
wire   [1:0] grp_fu_858_p7;
wire   [1:0] grp_fu_881_p1;
wire  signed [1:0] grp_fu_881_p3;
wire  signed [1:0] grp_fu_881_p5;
wire   [1:0] grp_fu_881_p7;
wire   [1:0] grp_fu_904_p1;
wire  signed [1:0] grp_fu_904_p3;
wire  signed [1:0] grp_fu_904_p5;
wire   [1:0] grp_fu_904_p7;
wire   [1:0] grp_fu_927_p1;
wire  signed [1:0] grp_fu_927_p3;
wire  signed [1:0] grp_fu_927_p5;
wire   [1:0] grp_fu_927_p7;
wire  signed [1:0] grp_fu_950_p1;
wire   [1:0] grp_fu_950_p3;
wire   [1:0] grp_fu_950_p5;
wire  signed [1:0] grp_fu_950_p7;
wire  signed [1:0] grp_fu_973_p1;
wire   [1:0] grp_fu_973_p3;
wire   [1:0] grp_fu_973_p5;
wire  signed [1:0] grp_fu_973_p7;
wire  signed [1:0] grp_fu_996_p1;
wire   [1:0] grp_fu_996_p3;
wire   [1:0] grp_fu_996_p5;
wire  signed [1:0] grp_fu_996_p7;
wire  signed [1:0] grp_fu_1019_p1;
wire   [1:0] grp_fu_1019_p3;
wire   [1:0] grp_fu_1019_p5;
wire  signed [1:0] grp_fu_1019_p7;
wire   [1:0] tmp_717_i_fu_1466_p1;
wire  signed [1:0] tmp_717_i_fu_1466_p3;
wire  signed [1:0] tmp_717_i_fu_1466_p5;
wire   [1:0] tmp_717_i_fu_1466_p7;
wire   [1:0] tmp_722_i_fu_1489_p1;
wire  signed [1:0] tmp_722_i_fu_1489_p3;
wire  signed [1:0] tmp_722_i_fu_1489_p5;
wire   [1:0] tmp_722_i_fu_1489_p7;
wire  signed [1:0] tmp_727_i_fu_1512_p1;
wire   [1:0] tmp_727_i_fu_1512_p3;
wire   [1:0] tmp_727_i_fu_1512_p5;
wire  signed [1:0] tmp_727_i_fu_1512_p7;
wire  signed [1:0] tmp_732_i_fu_1535_p1;
wire   [1:0] tmp_732_i_fu_1535_p3;
wire   [1:0] tmp_732_i_fu_1535_p5;
wire  signed [1:0] tmp_732_i_fu_1535_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten414_fu_156 = 7'd0;
#0 v8842415_fu_160 = 5'd0;
#0 v8843416_fu_164 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U567(.din0(v9000_0_0_q0),.din1(v9000_0_1_q0),.din2(v9000_0_2_q0),.din3(v9000_0_3_q0),.def(grp_fu_858_p9),.sel(empty_79),.dout(grp_fu_858_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U568(.din0(v9000_1_0_q0),.din1(v9000_1_1_q0),.din2(v9000_1_2_q0),.din3(v9000_1_3_q0),.def(grp_fu_881_p9),.sel(empty_79),.dout(grp_fu_881_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U569(.din0(v9000_2_0_q0),.din1(v9000_2_1_q0),.din2(v9000_2_2_q0),.din3(v9000_2_3_q0),.def(grp_fu_904_p9),.sel(empty_79),.dout(grp_fu_904_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U570(.din0(v9000_3_0_q0),.din1(v9000_3_1_q0),.din2(v9000_3_2_q0),.din3(v9000_3_3_q0),.def(grp_fu_927_p9),.sel(empty_79),.dout(grp_fu_927_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U571(.din0(v9000_0_0_q0),.din1(v9000_0_1_q0),.din2(v9000_0_2_q0),.din3(v9000_0_3_q0),.def(grp_fu_950_p9),.sel(empty_79),.dout(grp_fu_950_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U572(.din0(v9000_1_0_q0),.din1(v9000_1_1_q0),.din2(v9000_1_2_q0),.din3(v9000_1_3_q0),.def(grp_fu_973_p9),.sel(empty_79),.dout(grp_fu_973_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U573(.din0(v9000_2_0_q0),.din1(v9000_2_1_q0),.din2(v9000_2_2_q0),.din3(v9000_2_3_q0),.def(grp_fu_996_p9),.sel(empty_79),.dout(grp_fu_996_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U574(.din0(v9000_3_0_q0),.din1(v9000_3_1_q0),.din2(v9000_3_2_q0),.din3(v9000_3_3_q0),.def(grp_fu_1019_p9),.sel(empty_79),.dout(grp_fu_1019_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U575(.din0(grp_fu_858_p11),.din1(grp_fu_881_p11),.din2(grp_fu_904_p11),.din3(grp_fu_927_p11),.def(tmp_717_i_fu_1466_p9),.sel(empty),.dout(tmp_717_i_fu_1466_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U576(.din0(grp_fu_950_p11),.din1(grp_fu_973_p11),.din2(grp_fu_996_p11),.din3(grp_fu_1019_p11),.def(tmp_722_i_fu_1489_p9),.sel(empty),.dout(tmp_722_i_fu_1489_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U577(.din0(grp_fu_858_p11),.din1(grp_fu_881_p11),.din2(grp_fu_904_p11),.din3(grp_fu_927_p11),.def(tmp_727_i_fu_1512_p9),.sel(empty),.dout(tmp_727_i_fu_1512_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U578(.din0(grp_fu_950_p11),.din1(grp_fu_973_p11),.din2(grp_fu_996_p11),.din3(grp_fu_1019_p11),.def(tmp_732_i_fu_1535_p9),.sel(empty),.dout(tmp_732_i_fu_1535_p11));
forward_mac_muladd_4ns_4ns_4ns_7_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 4 ),.din1_WIDTH( 4 ),.din2_WIDTH( 4 ),.dout_WIDTH( 7 ))
mac_muladd_4ns_4ns_4ns_7_4_1_U579(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1565_p0),.din1(grp_fu_1565_p1),.din2(grp_fu_1565_p2),.ce(1'b1),.dout(grp_fu_1565_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten414_fu_156 <= add_ln11265_1_fu_1190_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten414_fu_156 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v8842415_fu_160 <= v8842_fu_1092_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v8842415_fu_160 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v8843416_fu_164 <= v8843_fu_1184_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v8843416_fu_164 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11265_reg_1660 <= icmp_ln11265_fu_1202_p2;
        lshr_ln21_reg_1650 <= {{select_ln11265_fu_1084_p3[4:1]}};
        lshr_ln21_reg_1650_pp0_iter1_reg <= lshr_ln21_reg_1650;
        mul_ln11269_cast1_reg_1620[6 : 0] <= mul_ln11269_cast1_fu_1046_p1[6 : 0];
        mul_ln11269_cast_reg_1625[6 : 0] <= mul_ln11269_cast_fu_1050_p1[6 : 0];
        p_cast_reg_1640 <= {{empty_229_fu_1142_p2[8:2]}};
        select_ln11265_reg_1630 <= select_ln11265_fu_1084_p3;
        tmp_109_reg_1645 <= {{empty_230_fu_1158_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln11266_reg_1655 <= icmp_ln11266_fu_1196_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_717_i_reg_1989 <= tmp_717_i_fu_1466_p11;
        tmp_722_i_reg_1994 <= tmp_722_i_fu_1489_p11;
        tmp_727_i_reg_1999 <= tmp_727_i_fu_1512_p11;
        tmp_732_i_reg_2004 <= tmp_732_i_fu_1535_p11;
    end
end
always @ (*) begin
    if (((icmp_ln11265_fu_1202_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_966)) begin
            ap_phi_mux_icmp_ln11266417_phi_fu_851_p4 = icmp_ln11266_reg_1655;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln11266417_phi_fu_851_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln11266417_phi_fu_851_p4 = icmp_ln11266_reg_1655;
        end
    end else begin
        ap_phi_mux_icmp_ln11266417_phi_fu_851_p4 = icmp_ln11266_reg_1655;
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
        ap_sig_allocacmp_indvar_flatten414_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten414_load = indvar_flatten414_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8842415_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v8842415_load = v8842415_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8843416_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v8843416_load = v8843416_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_1_ce0_local = 1'b1;
    end else begin
        v8997_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_1_we0_local = 1'b1;
    end else begin
        v8997_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_2_ce0_local = 1'b1;
    end else begin
        v8997_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_2_we0_local = 1'b1;
    end else begin
        v8997_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_3_ce0_local = 1'b1;
    end else begin
        v8997_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_3_we0_local = 1'b1;
    end else begin
        v8997_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_ce0_local = 1'b1;
    end else begin
        v8997_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8997_we0_local = 1'b1;
    end else begin
        v8997_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_0_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_0_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_0_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_0_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_0_0_address0_local = 'bx;
        end
    end else begin
        v9000_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_0_0_ce0_local = 1'b1;
    end else begin
        v9000_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_1_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_1_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_1_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_1_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_0_1_address0_local = 'bx;
        end
    end else begin
        v9000_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_0_1_ce0_local = 1'b1;
    end else begin
        v9000_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_2_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_2_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_2_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_2_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_0_2_address0_local = 'bx;
        end
    end else begin
        v9000_0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_0_2_ce0_local = 1'b1;
    end else begin
        v9000_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_3_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_0_3_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_3_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_0_3_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_0_3_address0_local = 'bx;
        end
    end else begin
        v9000_0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_0_3_ce0_local = 1'b1;
    end else begin
        v9000_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_0_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_0_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_0_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_0_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_1_0_address0_local = 'bx;
        end
    end else begin
        v9000_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_1_0_ce0_local = 1'b1;
    end else begin
        v9000_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_1_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_1_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_1_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_1_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_1_1_address0_local = 'bx;
        end
    end else begin
        v9000_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_1_1_ce0_local = 1'b1;
    end else begin
        v9000_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_2_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_2_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_2_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_2_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_1_2_address0_local = 'bx;
        end
    end else begin
        v9000_1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_1_2_ce0_local = 1'b1;
    end else begin
        v9000_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_3_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_1_3_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_3_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_1_3_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_1_3_address0_local = 'bx;
        end
    end else begin
        v9000_1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_1_3_ce0_local = 1'b1;
    end else begin
        v9000_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_0_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_0_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_0_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_0_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_2_0_address0_local = 'bx;
        end
    end else begin
        v9000_2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_2_0_ce0_local = 1'b1;
    end else begin
        v9000_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_1_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_1_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_1_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_1_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_2_1_address0_local = 'bx;
        end
    end else begin
        v9000_2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_2_1_ce0_local = 1'b1;
    end else begin
        v9000_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_2_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_2_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_2_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_2_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_2_2_address0_local = 'bx;
        end
    end else begin
        v9000_2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_2_2_ce0_local = 1'b1;
    end else begin
        v9000_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_3_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1))) begin
            v9000_2_3_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_3_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3))) begin
            v9000_2_3_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_2_3_address0_local = 'bx;
        end
    end else begin
        v9000_2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd1)))) begin
        v9000_2_3_ce0_local = 1'b1;
    end else begin
        v9000_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_0_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_0_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_0_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_0_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_3_0_address0_local = 'bx;
        end
    end else begin
        v9000_3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_3_0_ce0_local = 1'b1;
    end else begin
        v9000_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_1_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_1_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_1_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_1_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_3_1_address0_local = 'bx;
        end
    end else begin
        v9000_3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_3_1_ce0_local = 1'b1;
    end else begin
        v9000_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_2_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_2_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_2_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_2_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_3_2_address0_local = 'bx;
        end
    end else begin
        v9000_3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd3) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd1) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_3_2_ce0_local = 1'b1;
    end else begin
        v9000_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_371)) begin
        if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_3_address0_local = zext_ln11275_2_fu_1443_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2))) begin
            v9000_3_3_address0_local = zext_ln11273_2_fu_1371_p1;
        end else if (((tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_3_address0_local = zext_ln11271_1_fu_1417_p1;
        end else if (((tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0))) begin
            v9000_3_3_address0_local = zext_ln11269_fu_1345_p1;
        end else begin
            v9000_3_3_address0_local = 'bx;
        end
    end else begin
        v9000_3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd0) & (tmp_230_reg_1595 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_231_reg_1603 == 2'd2) & (tmp_230_reg_1595 == 2'd2)))) begin
        v9000_3_3_ce0_local = 1'b1;
    end else begin
        v9000_3_3_ce0_local = 1'b0;
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
assign add_ln11265_1_fu_1190_p2 = (ap_sig_allocacmp_indvar_flatten414_load + 7'd1);
assign add_ln11265_fu_1078_p2 = (ap_sig_allocacmp_v8842415_load + 5'd2);
assign add_ln11268_1_fu_1319_p2 = ($signed(zext_ln11268_1_fu_1315_p1) + $signed(9'd511));
assign add_ln11268_fu_1310_p2 = (thr_add + zext_ln11268_fu_1306_p1);
assign add_ln11269_1_fu_1339_p2 = ($signed(sub_ln11269_fu_1259_p2) + $signed(sext_ln11269_1_fu_1335_p1));
assign add_ln11269_fu_1230_p2 = (mul_ln11269_cast_reg_1625 + zext_ln11269_1_fu_1226_p1);
assign add_ln11270_fu_1391_p2 = (add_ln11268_fu_1310_p2 + 8'd1);
assign add_ln11271_fu_1411_p2 = (sub_ln11269_fu_1259_p2 + zext_ln11271_fu_1407_p1);
assign add_ln11273_1_fu_1365_p2 = ($signed(sub_ln11273_fu_1293_p2) + $signed(sext_ln11269_1_fu_1335_p1));
assign add_ln11273_fu_1268_p2 = (mul_ln11269_cast1_reg_1620 + zext_ln11273_fu_1265_p1);
assign add_ln11275_1_fu_1437_p2 = (sub_ln11273_fu_1293_p2 + zext_ln11271_fu_1407_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_371 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_966 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11265_reg_1660 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_228_fu_1132_p2 = (tmp_cast_fu_1128_p1 + mul5_i588);
assign empty_229_fu_1142_p2 = ($signed(p_cast5_i_fu_1138_p1) + $signed(9'd511));
assign empty_230_fu_1158_p2 = (empty_228_fu_1132_p2 + 8'd1);
assign grp_fu_1019_p9 = 'bx;
assign grp_fu_1565_p0 = grp_fu_1565_p00;
assign grp_fu_1565_p00 = lshr_ln_fu_1100_p4;
assign grp_fu_1565_p1 = 7'd11;
assign grp_fu_1565_p2 = grp_fu_1565_p20;
assign grp_fu_1565_p20 = lshr_ln21_reg_1650_pp0_iter1_reg;
assign grp_fu_858_p9 = 'bx;
assign grp_fu_881_p9 = 'bx;
assign grp_fu_904_p9 = 'bx;
assign grp_fu_927_p9 = 'bx;
assign grp_fu_950_p9 = 'bx;
assign grp_fu_973_p9 = 'bx;
assign grp_fu_996_p9 = 'bx;
assign icmp_ln11265_fu_1202_p2 = ((ap_sig_allocacmp_indvar_flatten414_load == 7'd120) ? 1'b1 : 1'b0);
assign icmp_ln11266_fu_1196_p2 = ((v8843_fu_1184_p2 < 5'd22) ? 1'b1 : 1'b0);
assign lshr_ln22_fu_1397_p4 = {{add_ln11270_fu_1391_p2[7:2]}};
assign lshr_ln_fu_1100_p4 = {{v8842_fu_1092_p3[4:1]}};
assign mul_ln11269_cast1_fu_1046_p1 = mul_ln11269;
assign mul_ln11269_cast_fu_1050_p1 = mul_ln11269;
assign p_cast5_i_fu_1138_p1 = empty_228_fu_1132_p2;
assign p_shl_fu_1273_p3 = {{add_ln11273_fu_1268_p2}, {6'd0}};
assign select_ln11265_fu_1084_p3 = ((ap_phi_mux_icmp_ln11266417_phi_fu_851_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v8843416_load : 5'd0);
assign sext_ln11269_1_fu_1335_p1 = $signed(trunc_ln_fu_1325_p4);
assign sext_ln11269_fu_1223_p1 = $signed(p_cast_reg_1640);
assign shl_ln_fu_1299_p3 = {{select_ln11265_reg_1630}, {1'd0}};
assign sub_ln11269_fu_1259_p2 = (tmp_233_fu_1247_p3 - zext_ln11269_2_fu_1255_p1);
assign sub_ln11273_fu_1293_p2 = (p_shl_fu_1273_p3 - zext_ln11273_1_fu_1289_p1);
assign tmp_230_reg_1595 = empty;
assign tmp_231_reg_1603 = empty_79;
assign tmp_232_fu_1239_p3 = {{add_ln11269_fu_1230_p2}, {3'd0}};
assign tmp_233_fu_1247_p3 = {{trunc_ln11269_fu_1235_p1}, {6'd0}};
assign tmp_234_fu_1281_p3 = {{add_ln11273_fu_1268_p2}, {3'd0}};
assign tmp_717_i_fu_1466_p9 = 'bx;
assign tmp_722_i_fu_1489_p9 = 'bx;
assign tmp_727_i_fu_1512_p9 = 'bx;
assign tmp_732_i_fu_1535_p9 = 'bx;
assign tmp_cast_fu_1128_p1 = tmp_fu_1122_p2;
assign tmp_fu_1122_p2 = (tmp_s_fu_1114_p3 + zext_ln11585_cast_fu_1042_p1);
assign tmp_s_fu_1114_p3 = {{v8842_fu_1092_p3}, {1'd0}};
assign trunc_ln11269_fu_1235_p1 = add_ln11269_fu_1230_p2[7:0];
assign trunc_ln_fu_1325_p4 = {{add_ln11268_1_fu_1319_p2[8:2]}};
assign v8842_fu_1092_p3 = ((ap_phi_mux_icmp_ln11266417_phi_fu_851_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v8842415_load : add_ln11265_fu_1078_p2);
assign v8843_fu_1184_p2 = (select_ln11265_fu_1084_p3 + 5'd2);
assign v8997_1_address0 = zext_ln11275_1_fu_1558_p1;
assign v8997_1_ce0 = v8997_1_ce0_local;
assign v8997_1_d0 = tmp_727_i_reg_1999;
assign v8997_1_we0 = v8997_1_we0_local;
assign v8997_2_address0 = zext_ln11275_1_fu_1558_p1;
assign v8997_2_ce0 = v8997_2_ce0_local;
assign v8997_2_d0 = tmp_722_i_reg_1994;
assign v8997_2_we0 = v8997_2_we0_local;
assign v8997_3_address0 = zext_ln11275_1_fu_1558_p1;
assign v8997_3_ce0 = v8997_3_ce0_local;
assign v8997_3_d0 = tmp_717_i_reg_1989;
assign v8997_3_we0 = v8997_3_we0_local;
assign v8997_address0 = zext_ln11275_1_fu_1558_p1;
assign v8997_ce0 = v8997_ce0_local;
assign v8997_d0 = tmp_732_i_reg_2004;
assign v8997_we0 = v8997_we0_local;
assign v9000_0_0_address0 = v9000_0_0_address0_local;
assign v9000_0_0_ce0 = v9000_0_0_ce0_local;
assign v9000_0_1_address0 = v9000_0_1_address0_local;
assign v9000_0_1_ce0 = v9000_0_1_ce0_local;
assign v9000_0_2_address0 = v9000_0_2_address0_local;
assign v9000_0_2_ce0 = v9000_0_2_ce0_local;
assign v9000_0_3_address0 = v9000_0_3_address0_local;
assign v9000_0_3_ce0 = v9000_0_3_ce0_local;
assign v9000_1_0_address0 = v9000_1_0_address0_local;
assign v9000_1_0_ce0 = v9000_1_0_ce0_local;
assign v9000_1_1_address0 = v9000_1_1_address0_local;
assign v9000_1_1_ce0 = v9000_1_1_ce0_local;
assign v9000_1_2_address0 = v9000_1_2_address0_local;
assign v9000_1_2_ce0 = v9000_1_2_ce0_local;
assign v9000_1_3_address0 = v9000_1_3_address0_local;
assign v9000_1_3_ce0 = v9000_1_3_ce0_local;
assign v9000_2_0_address0 = v9000_2_0_address0_local;
assign v9000_2_0_ce0 = v9000_2_0_ce0_local;
assign v9000_2_1_address0 = v9000_2_1_address0_local;
assign v9000_2_1_ce0 = v9000_2_1_ce0_local;
assign v9000_2_2_address0 = v9000_2_2_address0_local;
assign v9000_2_2_ce0 = v9000_2_2_ce0_local;
assign v9000_2_3_address0 = v9000_2_3_address0_local;
assign v9000_2_3_ce0 = v9000_2_3_ce0_local;
assign v9000_3_0_address0 = v9000_3_0_address0_local;
assign v9000_3_0_ce0 = v9000_3_0_ce0_local;
assign v9000_3_1_address0 = v9000_3_1_address0_local;
assign v9000_3_1_ce0 = v9000_3_1_ce0_local;
assign v9000_3_2_address0 = v9000_3_2_address0_local;
assign v9000_3_2_ce0 = v9000_3_2_ce0_local;
assign v9000_3_3_address0 = v9000_3_3_address0_local;
assign v9000_3_3_ce0 = v9000_3_3_ce0_local;
assign zext_ln11268_1_fu_1315_p1 = add_ln11268_fu_1310_p2;
assign zext_ln11268_fu_1306_p1 = shl_ln_fu_1299_p3;
assign zext_ln11269_1_fu_1226_p1 = $unsigned(sext_ln11269_fu_1223_p1);
assign zext_ln11269_2_fu_1255_p1 = tmp_232_fu_1239_p3;
assign zext_ln11269_fu_1345_p1 = add_ln11269_1_fu_1339_p2;
assign zext_ln11271_1_fu_1417_p1 = add_ln11271_fu_1411_p2;
assign zext_ln11271_fu_1407_p1 = lshr_ln22_fu_1397_p4;
assign zext_ln11273_1_fu_1289_p1 = tmp_234_fu_1281_p3;
assign zext_ln11273_2_fu_1371_p1 = add_ln11273_1_fu_1365_p2;
assign zext_ln11273_fu_1265_p1 = tmp_109_reg_1645;
assign zext_ln11275_1_fu_1558_p1 = grp_fu_1565_p3;
assign zext_ln11275_2_fu_1443_p1 = add_ln11275_1_fu_1437_p2;
assign zext_ln11585_cast_fu_1042_p1 = zext_ln11585;
always @ (posedge ap_clk) begin
    mul_ln11269_cast1_reg_1620[7] <= 1'b0;
    mul_ln11269_cast_reg_1625[8:7] <= 2'b00;
end
endmodule 
