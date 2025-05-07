module forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20828_1_proc32_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln20828,mul_ln20832,v16140_address0,v16140_ce0,v16140_we0,v16140_d0,v16140_1_address0,v16140_1_ce0,v16140_1_we0,v16140_1_d0,v16140_2_address0,v16140_2_ce0,v16140_2_we0,v16140_2_d0,v16140_3_address0,v16140_3_ce0,v16140_3_we0,v16140_3_d0,v16140_4_address0,v16140_4_ce0,v16140_4_we0,v16140_4_d0,v16140_5_address0,v16140_5_ce0,v16140_5_we0,v16140_5_d0,v16140_6_address0,v16140_6_ce0,v16140_6_we0,v16140_6_d0,v16140_7_address0,v16140_7_ce0,v16140_7_we0,v16140_7_d0,urem_ln20939,urem_ln20936,v16143_0_0_address0,v16143_0_0_ce0,v16143_0_0_q0,v16143_0_1_address0,v16143_0_1_ce0,v16143_0_1_q0,v16143_0_2_address0,v16143_0_2_ce0,v16143_0_2_q0,v16143_0_3_address0,v16143_0_3_ce0,v16143_0_3_q0,v16143_1_0_address0,v16143_1_0_ce0,v16143_1_0_q0,v16143_1_1_address0,v16143_1_1_ce0,v16143_1_1_q0,v16143_1_2_address0,v16143_1_2_ce0,v16143_1_2_q0,v16143_1_3_address0,v16143_1_3_ce0,v16143_1_3_q0,empty); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] zext_ln20828;
input  [7:0] mul_ln20832;
output  [6:0] v16140_address0;
output   v16140_ce0;
output   v16140_we0;
output  [7:0] v16140_d0;
output  [6:0] v16140_1_address0;
output   v16140_1_ce0;
output   v16140_1_we0;
output  [7:0] v16140_1_d0;
output  [6:0] v16140_2_address0;
output   v16140_2_ce0;
output   v16140_2_we0;
output  [7:0] v16140_2_d0;
output  [6:0] v16140_3_address0;
output   v16140_3_ce0;
output   v16140_3_we0;
output  [7:0] v16140_3_d0;
output  [6:0] v16140_4_address0;
output   v16140_4_ce0;
output   v16140_4_we0;
output  [7:0] v16140_4_d0;
output  [6:0] v16140_5_address0;
output   v16140_5_ce0;
output   v16140_5_we0;
output  [7:0] v16140_5_d0;
output  [6:0] v16140_6_address0;
output   v16140_6_ce0;
output   v16140_6_we0;
output  [7:0] v16140_6_d0;
output  [6:0] v16140_7_address0;
output   v16140_7_ce0;
output   v16140_7_we0;
output  [7:0] v16140_7_d0;
input  [1:0] urem_ln20939;
input  [2:0] urem_ln20936;
output  [14:0] v16143_0_0_address0;
output   v16143_0_0_ce0;
input  [7:0] v16143_0_0_q0;
output  [14:0] v16143_0_1_address0;
output   v16143_0_1_ce0;
input  [7:0] v16143_0_1_q0;
output  [14:0] v16143_0_2_address0;
output   v16143_0_2_ce0;
input  [7:0] v16143_0_2_q0;
output  [14:0] v16143_0_3_address0;
output   v16143_0_3_ce0;
input  [7:0] v16143_0_3_q0;
output  [14:0] v16143_1_0_address0;
output   v16143_1_0_ce0;
input  [7:0] v16143_1_0_q0;
output  [14:0] v16143_1_1_address0;
output   v16143_1_1_ce0;
input  [7:0] v16143_1_1_q0;
output  [14:0] v16143_1_2_address0;
output   v16143_1_2_ce0;
input  [7:0] v16143_1_2_q0;
output  [14:0] v16143_1_3_address0;
output   v16143_1_3_ce0;
input  [7:0] v16143_1_3_q0;
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
wire   [0:0] icmp_ln20828_fu_1218_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] tmp_reg_1621;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] mul_ln20832_cast1_fu_1054_p1;
reg   [9:0] mul_ln20832_cast1_reg_1639;
wire   [0:0] empty_260_fu_1118_p1;
reg   [0:0] empty_260_reg_1644;
reg   [0:0] empty_260_reg_1644_pp0_iter1_reg;
wire   [8:0] add_ln20840_fu_1136_p2;
reg   [8:0] add_ln20840_reg_1656;
reg   [8:0] tmp_34_reg_1662;
reg   [2:0] lshr_ln_reg_1667;
reg   [2:0] lshr_ln_reg_1667_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_1667_pp0_iter2_reg;
reg   [3:0] tmp_35_reg_1674;
reg   [3:0] tmp_35_reg_1674_pp0_iter1_reg;
reg   [3:0] tmp_35_reg_1674_pp0_iter2_reg;
wire   [1:0] or_ln20831_fu_1186_p2;
reg   [1:0] or_ln20831_reg_1679;
wire   [0:0] xor_ln20829_fu_1212_p2;
reg   [0:0] xor_ln20829_reg_1684;
reg   [0:0] icmp_ln20828_reg_1689;
wire   [7:0] select_ln20832_fu_1526_p3;
reg   [7:0] select_ln20832_reg_2013;
wire   [7:0] select_ln20834_fu_1533_p3;
reg   [7:0] select_ln20834_reg_2018;
wire   [7:0] select_ln20836_fu_1540_p3;
reg   [7:0] select_ln20836_reg_2023;
wire   [7:0] select_ln20838_fu_1547_p3;
reg   [7:0] select_ln20838_reg_2028;
wire   [7:0] select_ln20840_fu_1554_p3;
reg   [7:0] select_ln20840_reg_2033;
wire   [7:0] select_ln20842_fu_1561_p3;
reg   [7:0] select_ln20842_reg_2038;
wire   [7:0] select_ln20844_fu_1568_p3;
reg   [7:0] select_ln20844_reg_2043;
wire   [7:0] select_ln20846_fu_1575_p3;
reg   [7:0] select_ln20846_reg_2048;
reg   [0:0] ap_phi_mux_icmp_ln20829441_phi_fu_859_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln20834_1_fu_1324_p1;
wire   [63:0] zext_ln20842_fu_1342_p1;
wire   [63:0] zext_ln20832_fu_1384_p1;
wire   [63:0] zext_ln20840_2_fu_1402_p1;
wire   [63:0] zext_ln20836_1_fu_1440_p1;
wire   [63:0] zext_ln20844_fu_1458_p1;
wire   [63:0] zext_ln20838_1_fu_1496_p1;
wire   [63:0] zext_ln20846_1_fu_1514_p1;
wire   [63:0] zext_ln20846_fu_1588_p1;
reg   [6:0] indvar_flatten438_fu_158;
wire   [6:0] add_ln20828_1_fu_1198_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten438_load;
reg   [5:0] v16093439_fu_162;
wire   [5:0] v16093_fu_1100_p3;
reg   [5:0] ap_sig_allocacmp_v16093439_load;
reg   [5:0] v16094440_fu_166;
wire   [5:0] v16094_fu_1192_p2;
reg   [5:0] ap_sig_allocacmp_v16094440_load;
reg    v16143_0_0_ce0_local;
reg   [14:0] v16143_0_0_address0_local;
reg    v16143_0_1_ce0_local;
reg   [14:0] v16143_0_1_address0_local;
reg    v16143_0_2_ce0_local;
reg   [14:0] v16143_0_2_address0_local;
reg    v16143_0_3_ce0_local;
reg   [14:0] v16143_0_3_address0_local;
reg    v16143_1_0_ce0_local;
reg   [14:0] v16143_1_0_address0_local;
reg    v16143_1_1_ce0_local;
reg   [14:0] v16143_1_1_address0_local;
reg    v16143_1_2_ce0_local;
reg   [14:0] v16143_1_2_address0_local;
reg    v16143_1_3_ce0_local;
reg   [14:0] v16143_1_3_address0_local;
reg    v16140_7_we0_local;
reg    v16140_7_ce0_local;
reg    v16140_6_we0_local;
reg    v16140_6_ce0_local;
reg    v16140_5_we0_local;
reg    v16140_5_ce0_local;
reg    v16140_4_we0_local;
reg    v16140_4_ce0_local;
reg    v16140_3_we0_local;
reg    v16140_3_ce0_local;
reg    v16140_2_we0_local;
reg    v16140_2_ce0_local;
reg    v16140_1_we0_local;
reg    v16140_1_ce0_local;
reg    v16140_we0_local;
reg    v16140_ce0_local;
wire   [7:0] grp_fu_866_p9;
wire   [7:0] grp_fu_889_p9;
wire   [7:0] grp_fu_912_p9;
wire   [7:0] grp_fu_935_p9;
wire   [7:0] grp_fu_958_p9;
wire   [7:0] grp_fu_981_p9;
wire   [7:0] grp_fu_1004_p9;
wire   [7:0] grp_fu_1027_p9;
wire   [5:0] add_ln20828_fu_1086_p2;
wire   [8:0] zext_ln20828_cast_fu_1050_p1;
wire   [8:0] zext_ln20828_1_fu_1108_p1;
wire   [8:0] empty_259_fu_1112_p2;
wire   [7:0] tmp_s_fu_1122_p4;
wire   [8:0] mul_ln20832_cast_fu_1058_p1;
wire   [8:0] zext_ln20840_fu_1132_p1;
wire   [9:0] p_cast5_i_fu_1142_p1;
wire   [9:0] empty_261_fu_1146_p2;
wire   [5:0] select_ln20828_fu_1092_p3;
wire   [1:0] trunc_ln20831_fu_1182_p1;
wire   [0:0] tmp_182_fu_1204_p3;
wire   [11:0] tmp_179_fu_1246_p3;
wire   [14:0] p_shl31_fu_1239_p3;
wire   [14:0] zext_ln20840_1_fu_1253_p1;
wire   [9:0] zext_ln20832_1_fu_1263_p1;
wire   [9:0] add_ln20832_fu_1266_p2;
wire   [8:0] trunc_ln20832_fu_1271_p1;
wire   [12:0] tmp_180_fu_1275_p3;
wire   [14:0] tmp_181_fu_1283_p3;
wire   [14:0] zext_ln20832_2_fu_1291_p1;
wire   [5:0] lshr_ln26_fu_1308_p3;
wire   [14:0] sub_ln20829_fu_1295_p2;
wire   [14:0] zext_ln20834_fu_1314_p1;
wire   [14:0] add_ln20834_fu_1318_p2;
wire   [14:0] sub_ln20840_fu_1257_p2;
wire   [14:0] add_ln20842_fu_1336_p2;
wire   [7:0] or_ln20831_1_fu_1301_p4;
wire   [8:0] zext_ln20831_fu_1354_p1;
wire   [8:0] add_ln20831_fu_1358_p2;
wire   [6:0] trunc_ln_fu_1364_p4;
wire  signed [14:0] sext_ln20832_fu_1374_p1;
wire   [14:0] add_ln20832_1_fu_1378_p2;
wire   [14:0] add_ln20840_1_fu_1396_p2;
wire   [7:0] add_ln20835_fu_1414_p2;
wire   [5:0] lshr_ln27_fu_1420_p4;
wire   [14:0] zext_ln20836_fu_1430_p1;
wire   [14:0] add_ln20836_fu_1434_p2;
wire   [14:0] add_ln20844_fu_1452_p2;
wire   [7:0] add_ln20837_fu_1470_p2;
wire   [5:0] lshr_ln28_fu_1476_p4;
wire   [14:0] zext_ln20838_fu_1486_p1;
wire   [14:0] add_ln20838_fu_1490_p2;
wire   [14:0] add_ln20846_fu_1508_p2;
wire   [7:0] grp_fu_866_p11;
wire   [7:0] grp_fu_889_p11;
wire   [7:0] grp_fu_912_p11;
wire   [7:0] grp_fu_935_p11;
wire   [7:0] grp_fu_958_p11;
wire   [7:0] grp_fu_981_p11;
wire   [7:0] grp_fu_1004_p11;
wire   [7:0] grp_fu_1027_p11;
wire   [6:0] tmp_36_fu_1582_p3;
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
reg    ap_condition_956;
reg    ap_condition_358;
wire   [1:0] grp_fu_866_p1;
wire  signed [1:0] grp_fu_866_p3;
wire  signed [1:0] grp_fu_866_p5;
wire   [1:0] grp_fu_866_p7;
wire   [1:0] grp_fu_889_p1;
wire  signed [1:0] grp_fu_889_p3;
wire  signed [1:0] grp_fu_889_p5;
wire   [1:0] grp_fu_889_p7;
wire   [1:0] grp_fu_912_p1;
wire   [1:0] grp_fu_912_p3;
wire  signed [1:0] grp_fu_912_p5;
wire  signed [1:0] grp_fu_912_p7;
wire   [1:0] grp_fu_935_p1;
wire   [1:0] grp_fu_935_p3;
wire  signed [1:0] grp_fu_935_p5;
wire  signed [1:0] grp_fu_935_p7;
wire  signed [1:0] grp_fu_958_p1;
wire   [1:0] grp_fu_958_p3;
wire   [1:0] grp_fu_958_p5;
wire  signed [1:0] grp_fu_958_p7;
wire  signed [1:0] grp_fu_981_p1;
wire   [1:0] grp_fu_981_p3;
wire   [1:0] grp_fu_981_p5;
wire  signed [1:0] grp_fu_981_p7;
wire  signed [1:0] grp_fu_1004_p1;
wire  signed [1:0] grp_fu_1004_p3;
wire   [1:0] grp_fu_1004_p5;
wire   [1:0] grp_fu_1004_p7;
wire  signed [1:0] grp_fu_1027_p1;
wire  signed [1:0] grp_fu_1027_p3;
wire   [1:0] grp_fu_1027_p5;
wire   [1:0] grp_fu_1027_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten438_fu_158 = 7'd0;
#0 v16093439_fu_162 = 6'd0;
#0 v16094440_fu_166 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U77(.din0(v16143_0_0_q0),.din1(v16143_0_1_q0),.din2(v16143_0_2_q0),.din3(v16143_0_3_q0),.def(grp_fu_866_p9),.sel(empty),.dout(grp_fu_866_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U78(.din0(v16143_1_0_q0),.din1(v16143_1_1_q0),.din2(v16143_1_2_q0),.din3(v16143_1_3_q0),.def(grp_fu_889_p9),.sel(empty),.dout(grp_fu_889_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U79(.din0(v16143_0_0_q0),.din1(v16143_0_1_q0),.din2(v16143_0_2_q0),.din3(v16143_0_3_q0),.def(grp_fu_912_p9),.sel(empty),.dout(grp_fu_912_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U80(.din0(v16143_1_0_q0),.din1(v16143_1_1_q0),.din2(v16143_1_2_q0),.din3(v16143_1_3_q0),.def(grp_fu_935_p9),.sel(empty),.dout(grp_fu_935_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U81(.din0(v16143_0_0_q0),.din1(v16143_0_1_q0),.din2(v16143_0_2_q0),.din3(v16143_0_3_q0),.def(grp_fu_958_p9),.sel(empty),.dout(grp_fu_958_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U82(.din0(v16143_1_0_q0),.din1(v16143_1_1_q0),.din2(v16143_1_2_q0),.din3(v16143_1_3_q0),.def(grp_fu_981_p9),.sel(empty),.dout(grp_fu_981_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U83(.din0(v16143_0_0_q0),.din1(v16143_0_1_q0),.din2(v16143_0_2_q0),.din3(v16143_0_3_q0),.def(grp_fu_1004_p9),.sel(empty),.dout(grp_fu_1004_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U84(.din0(v16143_1_0_q0),.din1(v16143_1_1_q0),.din2(v16143_1_2_q0),.din3(v16143_1_3_q0),.def(grp_fu_1027_p9),.sel(empty),.dout(grp_fu_1027_p11));
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
            indvar_flatten438_fu_158 <= add_ln20828_1_fu_1198_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten438_fu_158 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v16093439_fu_162 <= v16093_fu_1100_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v16093439_fu_162 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v16094440_fu_166 <= v16094_fu_1192_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v16094440_fu_166 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln20840_reg_1656 <= add_ln20840_fu_1136_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_260_reg_1644 <= empty_260_fu_1118_p1;
        empty_260_reg_1644_pp0_iter1_reg <= empty_260_reg_1644;
        icmp_ln20828_reg_1689 <= icmp_ln20828_fu_1218_p2;
        lshr_ln_reg_1667 <= {{select_ln20828_fu_1092_p3[4:2]}};
        lshr_ln_reg_1667_pp0_iter1_reg <= lshr_ln_reg_1667;
        mul_ln20832_cast1_reg_1639[7 : 0] <= mul_ln20832_cast1_fu_1054_p1[7 : 0];
        or_ln20831_reg_1679 <= or_ln20831_fu_1186_p2;
        tmp_34_reg_1662 <= {{empty_261_fu_1146_p2[9:1]}};
        tmp_35_reg_1674 <= {{v16093_fu_1100_p3[4:1]}};
        tmp_35_reg_1674_pp0_iter1_reg <= tmp_35_reg_1674;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln_reg_1667_pp0_iter2_reg <= lshr_ln_reg_1667_pp0_iter1_reg;
        select_ln20832_reg_2013 <= select_ln20832_fu_1526_p3;
        select_ln20834_reg_2018 <= select_ln20834_fu_1533_p3;
        select_ln20836_reg_2023 <= select_ln20836_fu_1540_p3;
        select_ln20838_reg_2028 <= select_ln20838_fu_1547_p3;
        select_ln20840_reg_2033 <= select_ln20840_fu_1554_p3;
        select_ln20842_reg_2038 <= select_ln20842_fu_1561_p3;
        select_ln20844_reg_2043 <= select_ln20844_fu_1568_p3;
        select_ln20846_reg_2048 <= select_ln20846_fu_1575_p3;
        tmp_35_reg_1674_pp0_iter2_reg <= tmp_35_reg_1674_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln20829_reg_1684 <= xor_ln20829_fu_1212_p2;
    end
end
always @ (*) begin
    if (((icmp_ln20828_fu_1218_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_956)) begin
            ap_phi_mux_icmp_ln20829441_phi_fu_859_p4 = xor_ln20829_reg_1684;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20829441_phi_fu_859_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln20829441_phi_fu_859_p4 = xor_ln20829_reg_1684;
        end
    end else begin
        ap_phi_mux_icmp_ln20829441_phi_fu_859_p4 = xor_ln20829_reg_1684;
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
        ap_sig_allocacmp_indvar_flatten438_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten438_load = indvar_flatten438_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v16093439_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v16093439_load = v16093439_fu_162;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v16094440_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v16094440_load = v16094440_fu_166;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_1_ce0_local = 1'b1;
    end else begin
        v16140_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_1_we0_local = 1'b1;
    end else begin
        v16140_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_2_ce0_local = 1'b1;
    end else begin
        v16140_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_2_we0_local = 1'b1;
    end else begin
        v16140_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_3_ce0_local = 1'b1;
    end else begin
        v16140_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_3_we0_local = 1'b1;
    end else begin
        v16140_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_4_ce0_local = 1'b1;
    end else begin
        v16140_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_4_we0_local = 1'b1;
    end else begin
        v16140_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_5_ce0_local = 1'b1;
    end else begin
        v16140_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_5_we0_local = 1'b1;
    end else begin
        v16140_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_6_ce0_local = 1'b1;
    end else begin
        v16140_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_6_we0_local = 1'b1;
    end else begin
        v16140_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_7_ce0_local = 1'b1;
    end else begin
        v16140_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_7_we0_local = 1'b1;
    end else begin
        v16140_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_ce0_local = 1'b1;
    end else begin
        v16140_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16140_we0_local = 1'b1;
    end else begin
        v16140_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_0_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_0_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_0_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_0_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_0_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_0_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_0_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_0_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_0_0_address0_local = 'bx;
        end
    end else begin
        v16143_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_0_0_ce0_local = 1'b1;
    end else begin
        v16143_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_1_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_1_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_1_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_1_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_1_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_1_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_1_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_1_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_0_1_address0_local = 'bx;
        end
    end else begin
        v16143_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_0_1_ce0_local = 1'b1;
    end else begin
        v16143_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_2_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_2_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_2_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_2_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_2_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_2_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_2_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_2_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_0_2_address0_local = 'bx;
        end
    end else begin
        v16143_0_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_0_2_ce0_local = 1'b1;
    end else begin
        v16143_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_3_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_3_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_3_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_3_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_0_3_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_0_3_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_0_3_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_0_3_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_0_3_address0_local = 'bx;
        end
    end else begin
        v16143_0_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_0_3_ce0_local = 1'b1;
    end else begin
        v16143_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_0_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_0_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_0_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_0_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_0_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_0_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_0_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_0_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_1_0_address0_local = 'bx;
        end
    end else begin
        v16143_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_1_0_ce0_local = 1'b1;
    end else begin
        v16143_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_1_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_1_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_1_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_1_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_1_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_1_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_1_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_1_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_1_1_address0_local = 'bx;
        end
    end else begin
        v16143_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_1_1_ce0_local = 1'b1;
    end else begin
        v16143_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_2_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_2_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_2_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_2_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_2_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_2_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_2_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_2_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_1_2_address0_local = 'bx;
        end
    end else begin
        v16143_1_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_1_2_ce0_local = 1'b1;
    end else begin
        v16143_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_358)) begin
        if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_3_address0_local = zext_ln20846_1_fu_1514_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_3_address0_local = zext_ln20844_fu_1458_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_3_address0_local = zext_ln20842_fu_1342_p1;
        end else if (((empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_3_address0_local = zext_ln20840_2_fu_1402_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1))) begin
            v16143_1_3_address0_local = zext_ln20838_1_fu_1496_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2))) begin
            v16143_1_3_address0_local = zext_ln20836_1_fu_1440_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3))) begin
            v16143_1_3_address0_local = zext_ln20834_1_fu_1324_p1;
        end else if (((empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0))) begin
            v16143_1_3_address0_local = zext_ln20832_fu_1384_p1;
        end else begin
            v16143_1_3_address0_local = 'bx;
        end
    end else begin
        v16143_1_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd0) & (tmp_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_260_reg_1644 == 1'd1) & (tmp_reg_1621 == 2'd0)))) begin
        v16143_1_3_ce0_local = 1'b1;
    end else begin
        v16143_1_3_ce0_local = 1'b0;
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
assign add_ln20828_1_fu_1198_p2 = (ap_sig_allocacmp_indvar_flatten438_load + 7'd1);
assign add_ln20828_fu_1086_p2 = (ap_sig_allocacmp_v16093439_load + 6'd2);
assign add_ln20831_fu_1358_p2 = ($signed(zext_ln20831_fu_1354_p1) + $signed(9'd511));
assign add_ln20832_1_fu_1378_p2 = ($signed(sub_ln20829_fu_1295_p2) + $signed(sext_ln20832_fu_1374_p1));
assign add_ln20832_fu_1266_p2 = (mul_ln20832_cast1_reg_1639 + zext_ln20832_1_fu_1263_p1);
assign add_ln20834_fu_1318_p2 = (sub_ln20829_fu_1295_p2 + zext_ln20834_fu_1314_p1);
assign add_ln20835_fu_1414_p2 = (or_ln20831_1_fu_1301_p4 + 8'd1);
assign add_ln20836_fu_1434_p2 = (sub_ln20829_fu_1295_p2 + zext_ln20836_fu_1430_p1);
assign add_ln20837_fu_1470_p2 = (or_ln20831_1_fu_1301_p4 + 8'd2);
assign add_ln20838_fu_1490_p2 = (sub_ln20829_fu_1295_p2 + zext_ln20838_fu_1486_p1);
assign add_ln20840_1_fu_1396_p2 = ($signed(sub_ln20840_fu_1257_p2) + $signed(sext_ln20832_fu_1374_p1));
assign add_ln20840_fu_1136_p2 = (mul_ln20832_cast_fu_1058_p1 + zext_ln20840_fu_1132_p1);
assign add_ln20842_fu_1336_p2 = (sub_ln20840_fu_1257_p2 + zext_ln20834_fu_1314_p1);
assign add_ln20844_fu_1452_p2 = (sub_ln20840_fu_1257_p2 + zext_ln20836_fu_1430_p1);
assign add_ln20846_fu_1508_p2 = (sub_ln20840_fu_1257_p2 + zext_ln20838_fu_1486_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_358 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_956 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln20828_reg_1689 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_259_fu_1112_p2 = (zext_ln20828_cast_fu_1050_p1 + zext_ln20828_1_fu_1108_p1);
assign empty_260_fu_1118_p1 = empty_259_fu_1112_p2[0:0];
assign empty_261_fu_1146_p2 = ($signed(p_cast5_i_fu_1142_p1) + $signed(10'd1023));
assign grp_fu_1004_p9 = 'bx;
assign grp_fu_1027_p9 = 'bx;
assign grp_fu_866_p9 = 'bx;
assign grp_fu_889_p9 = 'bx;
assign grp_fu_912_p9 = 'bx;
assign grp_fu_935_p9 = 'bx;
assign grp_fu_958_p9 = 'bx;
assign grp_fu_981_p9 = 'bx;
assign icmp_ln20828_fu_1218_p2 = ((ap_sig_allocacmp_indvar_flatten438_load == 7'd127) ? 1'b1 : 1'b0);
assign lshr_ln26_fu_1308_p3 = {{urem_ln20936}, {lshr_ln_reg_1667}};
assign lshr_ln27_fu_1420_p4 = {{add_ln20835_fu_1414_p2[7:2]}};
assign lshr_ln28_fu_1476_p4 = {{add_ln20837_fu_1470_p2[7:2]}};
assign mul_ln20832_cast1_fu_1054_p1 = mul_ln20832;
assign mul_ln20832_cast_fu_1058_p1 = mul_ln20832;
assign or_ln20831_1_fu_1301_p4 = {{{urem_ln20936}, {lshr_ln_reg_1667}}, {or_ln20831_reg_1679}};
assign or_ln20831_fu_1186_p2 = (urem_ln20939 | trunc_ln20831_fu_1182_p1);
assign p_cast5_i_fu_1142_p1 = empty_259_fu_1112_p2;
assign p_shl31_fu_1239_p3 = {{add_ln20840_reg_1656}, {6'd0}};
assign select_ln20828_fu_1092_p3 = ((ap_phi_mux_icmp_ln20829441_phi_fu_859_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v16094440_load : 6'd0);
assign select_ln20832_fu_1526_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_866_p11 : grp_fu_889_p11);
assign select_ln20834_fu_1533_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_912_p11 : grp_fu_935_p11);
assign select_ln20836_fu_1540_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_958_p11 : grp_fu_981_p11);
assign select_ln20838_fu_1547_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_1004_p11 : grp_fu_1027_p11);
assign select_ln20840_fu_1554_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_889_p11 : grp_fu_866_p11);
assign select_ln20842_fu_1561_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_935_p11 : grp_fu_912_p11);
assign select_ln20844_fu_1568_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_981_p11 : grp_fu_958_p11);
assign select_ln20846_fu_1575_p3 = ((empty_260_reg_1644_pp0_iter1_reg[0:0] == 1'b1) ? grp_fu_1027_p11 : grp_fu_1004_p11);
assign sext_ln20832_fu_1374_p1 = $signed(trunc_ln_fu_1364_p4);
assign sub_ln20829_fu_1295_p2 = (tmp_181_fu_1283_p3 - zext_ln20832_2_fu_1291_p1);
assign sub_ln20840_fu_1257_p2 = (p_shl31_fu_1239_p3 - zext_ln20840_1_fu_1253_p1);
assign tmp_179_fu_1246_p3 = {{add_ln20840_reg_1656}, {3'd0}};
assign tmp_180_fu_1275_p3 = {{add_ln20832_fu_1266_p2}, {3'd0}};
assign tmp_181_fu_1283_p3 = {{trunc_ln20832_fu_1271_p1}, {6'd0}};
assign tmp_182_fu_1204_p3 = v16094_fu_1192_p2[32'd5];
assign tmp_36_fu_1582_p3 = {{tmp_35_reg_1674_pp0_iter2_reg}, {lshr_ln_reg_1667_pp0_iter2_reg}};
assign tmp_reg_1621 = empty;
assign tmp_s_fu_1122_p4 = {{empty_259_fu_1112_p2[8:1]}};
assign trunc_ln20831_fu_1182_p1 = select_ln20828_fu_1092_p3[1:0];
assign trunc_ln20832_fu_1271_p1 = add_ln20832_fu_1266_p2[8:0];
assign trunc_ln_fu_1364_p4 = {{add_ln20831_fu_1358_p2[8:2]}};
assign v16093_fu_1100_p3 = ((ap_phi_mux_icmp_ln20829441_phi_fu_859_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v16093439_load : add_ln20828_fu_1086_p2);
assign v16094_fu_1192_p2 = (select_ln20828_fu_1092_p3 + 6'd4);
assign v16140_1_address0 = zext_ln20846_fu_1588_p1;
assign v16140_1_ce0 = v16140_1_ce0_local;
assign v16140_1_d0 = select_ln20844_reg_2043;
assign v16140_1_we0 = v16140_1_we0_local;
assign v16140_2_address0 = zext_ln20846_fu_1588_p1;
assign v16140_2_ce0 = v16140_2_ce0_local;
assign v16140_2_d0 = select_ln20842_reg_2038;
assign v16140_2_we0 = v16140_2_we0_local;
assign v16140_3_address0 = zext_ln20846_fu_1588_p1;
assign v16140_3_ce0 = v16140_3_ce0_local;
assign v16140_3_d0 = select_ln20840_reg_2033;
assign v16140_3_we0 = v16140_3_we0_local;
assign v16140_4_address0 = zext_ln20846_fu_1588_p1;
assign v16140_4_ce0 = v16140_4_ce0_local;
assign v16140_4_d0 = select_ln20838_reg_2028;
assign v16140_4_we0 = v16140_4_we0_local;
assign v16140_5_address0 = zext_ln20846_fu_1588_p1;
assign v16140_5_ce0 = v16140_5_ce0_local;
assign v16140_5_d0 = select_ln20836_reg_2023;
assign v16140_5_we0 = v16140_5_we0_local;
assign v16140_6_address0 = zext_ln20846_fu_1588_p1;
assign v16140_6_ce0 = v16140_6_ce0_local;
assign v16140_6_d0 = select_ln20834_reg_2018;
assign v16140_6_we0 = v16140_6_we0_local;
assign v16140_7_address0 = zext_ln20846_fu_1588_p1;
assign v16140_7_ce0 = v16140_7_ce0_local;
assign v16140_7_d0 = select_ln20832_reg_2013;
assign v16140_7_we0 = v16140_7_we0_local;
assign v16140_address0 = zext_ln20846_fu_1588_p1;
assign v16140_ce0 = v16140_ce0_local;
assign v16140_d0 = select_ln20846_reg_2048;
assign v16140_we0 = v16140_we0_local;
assign v16143_0_0_address0 = v16143_0_0_address0_local;
assign v16143_0_0_ce0 = v16143_0_0_ce0_local;
assign v16143_0_1_address0 = v16143_0_1_address0_local;
assign v16143_0_1_ce0 = v16143_0_1_ce0_local;
assign v16143_0_2_address0 = v16143_0_2_address0_local;
assign v16143_0_2_ce0 = v16143_0_2_ce0_local;
assign v16143_0_3_address0 = v16143_0_3_address0_local;
assign v16143_0_3_ce0 = v16143_0_3_ce0_local;
assign v16143_1_0_address0 = v16143_1_0_address0_local;
assign v16143_1_0_ce0 = v16143_1_0_ce0_local;
assign v16143_1_1_address0 = v16143_1_1_address0_local;
assign v16143_1_1_ce0 = v16143_1_1_ce0_local;
assign v16143_1_2_address0 = v16143_1_2_address0_local;
assign v16143_1_2_ce0 = v16143_1_2_ce0_local;
assign v16143_1_3_address0 = v16143_1_3_address0_local;
assign v16143_1_3_ce0 = v16143_1_3_ce0_local;
assign xor_ln20829_fu_1212_p2 = (tmp_182_fu_1204_p3 ^ 1'd1);
assign zext_ln20828_1_fu_1108_p1 = v16093_fu_1100_p3;
assign zext_ln20828_cast_fu_1050_p1 = zext_ln20828;
assign zext_ln20831_fu_1354_p1 = or_ln20831_1_fu_1301_p4;
assign zext_ln20832_1_fu_1263_p1 = tmp_34_reg_1662;
assign zext_ln20832_2_fu_1291_p1 = tmp_180_fu_1275_p3;
assign zext_ln20832_fu_1384_p1 = add_ln20832_1_fu_1378_p2;
assign zext_ln20834_1_fu_1324_p1 = add_ln20834_fu_1318_p2;
assign zext_ln20834_fu_1314_p1 = lshr_ln26_fu_1308_p3;
assign zext_ln20836_1_fu_1440_p1 = add_ln20836_fu_1434_p2;
assign zext_ln20836_fu_1430_p1 = lshr_ln27_fu_1420_p4;
assign zext_ln20838_1_fu_1496_p1 = add_ln20838_fu_1490_p2;
assign zext_ln20838_fu_1486_p1 = lshr_ln28_fu_1476_p4;
assign zext_ln20840_1_fu_1253_p1 = tmp_179_fu_1246_p3;
assign zext_ln20840_2_fu_1402_p1 = add_ln20840_1_fu_1396_p2;
assign zext_ln20840_fu_1132_p1 = tmp_s_fu_1122_p4;
assign zext_ln20842_fu_1342_p1 = add_ln20842_fu_1336_p2;
assign zext_ln20844_fu_1458_p1 = add_ln20844_fu_1452_p2;
assign zext_ln20846_1_fu_1514_p1 = add_ln20846_fu_1508_p2;
assign zext_ln20846_fu_1588_p1 = tmp_36_fu_1582_p3;
always @ (posedge ap_clk) begin
    mul_ln20832_cast1_reg_1639[9:8] <= 2'b00;
end
endmodule 